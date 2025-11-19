@interface TRINamespaceOptionalParams
- (TRINamespaceOptionalParams)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setUpgradeNCVs:(id)a3;
@end

@implementation TRINamespaceOptionalParams

- (TRINamespaceOptionalParams)init
{
  v3.receiver = self;
  v3.super_class = TRINamespaceOptionalParams;
  result = [(TRINamespaceOptionalParams *)&v3 init];
  if (result)
  {
    *&result->_cloudKitContainerId = 0x300000001;
    *&result->_expensiveNetworkingAllowed = 0;
    result->_availableToRootUser = 0;
  }

  return result;
}

- (void)setUpgradeNCVs:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = a3;
    v6 = [[v4 alloc] initWithSet:v5 copyItems:1];

    upgradeNCVs = self->_upgradeNCVs;
    self->_upgradeNCVs = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setFactorsURL:self->_factorsURL];
  [v4 setAppContainer:self->_appContainer];
  [v4 setUpgradeNCVs:self->_upgradeNCVs];
  [v4 setCloudKitContainerId:self->_cloudKitContainerId];
  [v4 setResourceAttributionIdentifier:self->_resourceAttributionIdentifier];
  [v4 setExpensiveNetworkingAllowed:self->_expensiveNetworkingAllowed];
  [v4 setEnableFetchDuringSetupAssistant:self->_enableFetchDuringSetupAssistant];
  [v4 setPurgeabilityLevel:self->_purgeabilityLevel];
  [v4 setAvailableToRootUser:self->_availableToRootUser];
  return v4;
}

@end