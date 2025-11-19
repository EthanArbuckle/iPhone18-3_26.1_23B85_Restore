@interface PSUIPendingInstallPlanGroup
- (PSListController)listController;
- (PSUIPendingInstallPlanGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (PSUIPendingInstallPlanGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 planManager:(id)a5;
- (id)specifiers;
- (id)specifiersForPendingInstallPlans;
- (void)pendingInstallPlanPressed:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUIPendingInstallPlanGroup

- (PSUIPendingInstallPlanGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = [(PSUIPendingInstallPlanGroup *)self initWithListController:v7 groupSpecifier:v6 planManager:v8];

  return v9;
}

- (PSUIPendingInstallPlanGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 planManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PSUIPendingInstallPlanGroup;
  v11 = [(PSUIPendingInstallPlanGroup *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_listController, v8);
    objc_storeStrong(&v12->_groupSpecifier, a4);
    objc_storeStrong(&v12->_cellularPlanManager, a5);
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
  v4 = [(PSUIPendingInstallPlanGroup *)self specifiersForPendingInstallPlans];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)specifiersForPendingInstallPlans
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager pendingInstallPlans];
    v7 = [v6 plans];

    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndex:v8];
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"PENDING_INSTALL_NAME_%@" value:&stru_287733598 table:@"Cellular"];
        v13 = [v9 carrierName];
        v14 = [v10 stringWithFormat:v12, v13];

        v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v15 setProperty:v9 forKey:@"plan"];
        [v15 setButtonAction:sel_pendingInstallPlanPressed_];
        [v3 addObject:v15];

        ++v8;
      }

      while ([v7 count] > v8);
    }

    v16 = [(PSUIPendingInstallPlanGroup *)self getLogger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "Pending install group specifiers: %@", buf, 0xCu);
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

- (void)pendingInstallPlanPressed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUIPendingInstallPlanGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = [v4 propertyForKey:@"plan"];
  coreTelephonyClient = self->_coreTelephonyClient;
  v8 = [v6 plan];
  v9 = [v6 carrierName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PSUIPendingInstallPlanGroup_pendingInstallPlanPressed___block_invoke;
  v14[3] = &unk_279BAA628;
  v14[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient startPendingPlanInstallationForPlan:v8 carrierName:v9 completionHandler:v14];

  v10 = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager planItems];
  v11 = [v10 count];

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

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(PSUIPendingInstallPlanGroup *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[PSUIPendingInstallPlanGroup simSetupFlowCompleted:]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
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