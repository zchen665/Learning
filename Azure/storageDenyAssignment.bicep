param storageAccountName string = 'zchen1003'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
    sku: {
        name: 'Standard_LRS'
        tier: 'Standard'
    }
    name: storageAccountName
     kind: 'StorageV2'
     location: 'eastus'
  }


// New-AzResourceGroupDeploymentStack `
// -Name "test-dpstack" `
// -ResourceGroupName "zchen-General-Testing" `
// -TemplateFile "bcp.bicep" `
// -ActionOnUnmanage "detachAll" `
// -DenySettingsMode "denyDelete" `

az stack group create \
  --name 'test-dpstack' \
  --resource-group 'zchen-General-Testing' \
  --template-file 'bcp.bicep' \
  --action-on-unmanage 'detachAll' \
  --deny-settings-mode 'denyDelete' \


//  reference: https://luke.geek.nz/azure/existing-resource-deploymentstack/
