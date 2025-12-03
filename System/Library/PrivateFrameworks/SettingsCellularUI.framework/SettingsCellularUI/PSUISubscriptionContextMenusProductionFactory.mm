@interface PSUISubscriptionContextMenusProductionFactory
- (PSListController)hostController;
- (PSSpecifier)groupSpecifier;
- (PSSpecifier)parentSpecifier;
- (PSUISubscriptionContextMenusProductionFactory)initWithHostController:(id)controller parentSpecifier:(id)specifier groupSpecifier:(id)groupSpecifier popViewControllerOnPlanRemoval:(BOOL)removal;
- (id)createCallingSubgroup;
- (id)createCarrierSpaceSubgroup;
- (id)createDataModeSubgroupWithContext:(id)context;
- (id)createMyNumberSubgroup;
- (id)createNetworkSelectionSubgroup;
- (id)createNetworkSettingsSubgroup;
- (id)createRoamingSpecifiersSubgroupWithServiceDescriptor:(id)descriptor;
- (id)createSatelliteSubgroupWithContext:(id)context isActiveDataPlan:(BOOL)plan planReference:(id)reference;
- (id)createSimSubgroup;
@end

@implementation PSUISubscriptionContextMenusProductionFactory

- (PSUISubscriptionContextMenusProductionFactory)initWithHostController:(id)controller parentSpecifier:(id)specifier groupSpecifier:(id)groupSpecifier popViewControllerOnPlanRemoval:(BOOL)removal
{
  controllerCopy = controller;
  specifierCopy = specifier;
  groupSpecifierCopy = groupSpecifier;
  v16.receiver = self;
  v16.super_class = PSUISubscriptionContextMenusProductionFactory;
  v13 = [(PSUISubscriptionContextMenusProductionFactory *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_hostController, controllerCopy);
    objc_storeWeak(&v14->_parentSpecifier, specifierCopy);
    objc_storeWeak(&v14->_groupSpecifier, groupSpecifierCopy);
    v14->_popViewControllerOnPlanRemoval = removal;
  }

  return v14;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (id)createCallingSubgroup
{
  v3 = [PSUICallingSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = [(PSUICallingSubgroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6];

  return v7;
}

- (id)createCarrierSpaceSubgroup
{
  v3 = [PSUICarrierSpaceGroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = objc_alloc(MEMORY[0x277CC37B0]);
  v8 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"carrier_space"];
  v9 = [v7 initWithQueue:v8];
  v10 = [(PSUICarrierSpaceGroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6 ctClient:v9];

  return v10;
}

- (id)createNetworkSelectionSubgroup
{
  v3 = [PSUINetworkSelectionSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = [(PSUINetworkSelectionSubgroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6];

  return v7;
}

- (id)createMyNumberSubgroup
{
  v3 = [PSUIMyNumberSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = [(PSUIMyNumberSubgroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6];

  return v7;
}

- (id)createNetworkSettingsSubgroup
{
  v3 = [PSUINetworkSettingsSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = [(PSUINetworkSettingsSubgroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6];

  return v7;
}

- (id)createSimSubgroup
{
  v3 = [PSUISIMSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v5 = objc_loadWeakRetained(&self->_groupSpecifier);
  v6 = objc_loadWeakRetained(&self->_parentSpecifier);
  v7 = [(PSUISIMSubgroup *)v3 initWithListController:WeakRetained groupSpecifier:v5 parentSpecifier:v6];

  return v7;
}

- (id)createDataModeSubgroupWithContext:(id)context
{
  contextCopy = context;
  v5 = [PSUIDataModeSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v7 = objc_loadWeakRetained(&self->_parentSpecifier);
  v8 = +[PSUICoreTelephonyDataCache sharedInstance];
  v9 = +[PSUICoreTelephonyRadioCache sharedInstance];
  v10 = objc_alloc(MEMORY[0x277CC37B0]);
  v11 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"data_mode"];
  v12 = [v10 initWithQueue:v11];
  v13 = [(PSUIDataModeSubgroup *)v5 initWithHostController:WeakRetained parentSpecifier:v7 dataCache:v8 radioCache:v9 context:contextCopy ctClient:v12];

  return v13;
}

- (id)createRoamingSpecifiersSubgroupWithServiceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [PSUIRoamingSpecifiersSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  v7 = +[PSUICoreTelephonyDataCache sharedInstance];
  v8 = [(PSUIRoamingSpecifiersSubgroup *)v5 initWithListController:WeakRetained dataCache:v7 serviceDescriptor:descriptorCopy];

  return v8;
}

- (id)createSatelliteSubgroupWithContext:(id)context isActiveDataPlan:(BOOL)plan planReference:(id)reference
{
  planCopy = plan;
  referenceCopy = reference;
  contextCopy = context;
  v10 = [PSUISatelliteSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  if (planCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  v13 = [(PSUISatelliteSubgroup *)v10 initWithHostController:WeakRetained context:contextCopy planReference:referenceCopy mode:v12];

  return v13;
}

@end