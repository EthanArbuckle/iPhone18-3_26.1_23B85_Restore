@interface PSUINetworkSettingsSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUINetworkSettingsSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (PSUINetworkSettingsSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4 parentSpecifier:(id)a5;
- (id)specifiers;
@end

@implementation PSUINetworkSettingsSubgroup

- (PSUINetworkSettingsSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4 parentSpecifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PSUINetworkSettingsSubgroup;
  v9 = [(PSUINetworkSettingsSubgroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, v7);
    objc_storeWeak(&v10->_parentSpecifier, v8);
  }

  return v10;
}

- (PSUINetworkSettingsSubgroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v37[1] = *MEMORY[0x277D85DE8];
  v31 = objc_opt_new();
  v3 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v3;

  v5 = [MEMORY[0x277D4D868] sharedInstance];
  v6 = [(PSUIVoiceAndDataSpecifier *)v5 subscriptionContexts];
  if ([v6 count] <= 1)
  {
  }

  else
  {
    v30 = +[PSUICellularPlanManagerCache sharedInstance];
    v7 = [v30 planItems];
    v8 = [v7 count];
    v9 = +[PSUICellularPlanManagerCache sharedInstance];
    v10 = [v9 danglingPlanItems];
    v11 = [v10 count] + v8;
    v12 = +[PSUICellularPlanManagerCache sharedInstance];
    v13 = [v12 plansPendingTransfer];
    v14 = v11 + [v13 count];

    if (v14 < 2)
    {
      goto LABEL_7;
    }

    v15 = [PSUIVoiceAndDataSpecifier alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v17 = objc_loadWeakRetained(&self->_parentSpecifier);
    v18 = [v17 propertyForKey:*MEMORY[0x277D40128]];
    v5 = [(PSUIVoiceAndDataSpecifier *)v15 initWithHostController:WeakRetained subscriptionContext:v18 groupSpecifierToUpdateFooterFor:0];

    if (v5)
    {
      [v31 addObject:v5];
    }
  }

LABEL_7:
  v36 = *MEMORY[0x277D3FE08];
  v37[0] = @"EDGESettings";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v33 = v19;
  v34 = @"items";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v35 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v22 = objc_loadWeakRetained(&self->_parentSpecifier);
  v23 = objc_loadWeakRetained(&self->_listController);
  v24 = [v23 bundle];
  v25 = objc_loadWeakRetained(&self->_listController);
  v32 = 0;
  v26 = SpecifiersFromPlist();

  v27 = v32;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v27, &v32];
  [v31 addObjectsFromArray:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v31;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end