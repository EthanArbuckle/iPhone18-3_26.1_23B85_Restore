@interface PSUIPendingInstallPlanGroup
- (PSListController)listController;
- (PSUIPendingInstallPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUIPendingInstallPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager;
- (id)specifiers;
- (id)specifiersForPendingInstallPlans;
- (void)pendingInstallPlanPressed:(id)pressed;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation PSUIPendingInstallPlanGroup

- (PSUIPendingInstallPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = [(PSUIPendingInstallPlanGroup *)self initWithListController:controllerCopy groupSpecifier:specifierCopy planManager:v8];

  return v9;
}

- (PSUIPendingInstallPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager
{
  controllerCopy = controller;
  specifierCopy = specifier;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PSUIPendingInstallPlanGroup;
  v11 = [(PSUIPendingInstallPlanGroup *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_listController, controllerCopy);
    objc_storeStrong(&v12->_groupSpecifier, specifier);
    objc_storeStrong(&v12->_cellularPlanManager, manager);
    v13 = objc_alloc(MEMORY[0x277CC37B0]);
    v14 = [v13 initWithQueue:MEMORY[0x277D85CD0]];
    coreTelephonyClient = v12->_coreTelephonyClient;
    v12->_coreTelephonyClient = v14;

    [(CoreTelephonyClient *)v12->_coreTelephonyClient setDelegate:v12];
  }

  return v12;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  specifiersForPendingInstallPlans = [(PSUIPendingInstallPlanGroup *)self specifiersForPendingInstallPlans];
  [v3 addObjectsFromArray:specifiersForPendingInstallPlans];

  return v3;
}

- (id)specifiersForPendingInstallPlans
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    pendingInstallPlans = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager pendingInstallPlans];
    plans = [pendingInstallPlans plans];

    if ([plans count])
    {
      v8 = 0;
      do
      {
        v9 = [plans objectAtIndex:v8];
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"PENDING_INSTALL_NAME_%@" value:&stru_287733598 table:@"Cellular"];
        carrierName = [v9 carrierName];
        v14 = [v10 stringWithFormat:v12, carrierName];

        v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v15 setProperty:v9 forKey:@"plan"];
        [v15 setButtonAction:sel_pendingInstallPlanPressed_];
        [v3 addObject:v15];

        ++v8;
      }

      while ([plans count] > v8);
    }

    getLogger = [(PSUIPendingInstallPlanGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Pending install group specifiers: %@", buf, 0xCu);
    }
  }

  if ([v3 count])
  {
    groupSpecifier = self->_groupSpecifier;
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"PENDING_INSTALL_FOOTER" value:&stru_287733598 table:@"Cellular"];
    v21 = [v18 stringWithFormat:v20];
    [(PSSpecifier *)groupSpecifier setProperty:v21 forKey:*MEMORY[0x277D3FF88]];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)pendingInstallPlanPressed:(id)pressed
{
  v17 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  getLogger = [(PSUIPendingInstallPlanGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = pressedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = [pressedCopy propertyForKey:@"plan"];
  coreTelephonyClient = self->_coreTelephonyClient;
  plan = [v6 plan];
  carrierName = [v6 carrierName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PSUIPendingInstallPlanGroup_pendingInstallPlanPressed___block_invoke;
  v14[3] = &unk_279BAA628;
  v14[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient startPendingPlanInstallationForPlan:plan carrierName:carrierName completionHandler:v14];

  planItems = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager planItems];
  v11 = [planItems count];

  if (v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__PSUIPendingInstallPlanGroup_pendingInstallPlanPressed___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v6 = v2;
    v7 = v3;
    v4 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2658DE000, v4, OS_LOG_TYPE_ERROR, "Failed to install pending plan", v5, 2u);
    }
  }
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIPendingInstallPlanGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[PSUIPendingInstallPlanGroup simSetupFlowCompleted:]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSUIPendingInstallPlanGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9EA0;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PSUIPendingInstallPlanGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
    v4 = WeakRetained;

    v3 = objc_loadWeakRetained(v4 + 5);
    [v3 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v4;
  }
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end