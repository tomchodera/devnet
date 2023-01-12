terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "Terraform-RG" {
  name     = "TestRG"
  location = "North Central US"
  tags = {
    environment = "dev"
  }
}

resource "azurerm_network_security_rule" "Test_NSG_Rule" {
    access = "allow"
    direction = "inbound"
    name = "Test_to_Other_Test"
    
}