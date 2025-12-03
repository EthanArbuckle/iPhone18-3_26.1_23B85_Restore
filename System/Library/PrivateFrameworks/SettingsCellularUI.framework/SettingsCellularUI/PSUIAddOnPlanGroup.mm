@interface PSUIAddOnPlanGroup
- (BOOL)_shouldShowWiFiOffFooter;
- (PSListController)listController;
- (PSUIAddOnPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUIAddOnPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager ctPlanManager:(id)planManager showAddOnPlans:(BOOL)plans;
- (id)specifiers;
- (id)specifiersForRemotePlans:(BOOL)plans;
- (void)_addOnPlanOptionPressed:(id)pressed;
- (void)_addWiFiOffFooter;
- (void)_handleAddButtonTapped:(id)tapped;
- (void)_handleAddRemotePlan:(id)plan;
- (void)_turnOnWifiPressed:(id)pressed;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation PSUIAddOnPlanGroup

- (PSUIAddOnPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [(PSUIAddOnPlanGroup *)self initWithListController:controllerCopy groupSpecifier:specifierCopy planManager:v8 ctPlanManager:mEMORY[0x277CF96D8] showAddOnPlans:1];

  return v10;
}

- (PSUIAddOnPlanGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager ctPlanManager:(id)planManager showAddOnPlans:(BOOL)plans
{
  controllerCopy = controller;
  specifierCopy = specifier;
  managerCopy = manager;
  planManagerCopy = planManager;
  v22.receiver = self;
  v22.super_class = PSUIAddOnPlanGroup;
  v16 = [(PSUIAddOnPlanGroup *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_listController, controllerCopy);
    objc_storeStrong(&v17->_groupSpecifier, specifier);
    objc_storeStrong(&v17->_cellularPlanManager, manager);
    objc_storeStrong(&v17->_ctCellularPlanManager, planManager);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    remotePlansSpecifiers = v17->_remotePlansSpecifiers;
    v17->_remotePlansSpecifiers = v18;

    v17->_showAddOnPlans = plans;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v17 selector:sel__handleAddButtonTapped_ name:0x287739578 object:0];

  return v17;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = _os_feature_enabled_impl();
  if (self->_showAddOnPlans)
  {
    v5 = v4;
    v6 = [(PSUIAddOnPlanGroup *)self specifiersForRemotePlans:1];
    [v3 addObjectsFromArray:v6];

    if ([v3 count])
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"ADD_ON_PLAN_CHOOSE_NETWORK" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)self->_groupSpecifier setName:v8];

      if ([(PSUICellularPlanManagerCache *)self->_cellularPlanManager remoteListFetchCompleted])
      {
        groupSpecifier = self->_groupSpecifier;
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = v10;
        if (v5)
        {
          v12 = @"ADD_ON_PLAN_FOOTER_NEW";
        }

        else
        {
          v12 = @"ADD_ON_PLAN_FOOTER";
        }

        v24 = [v10 localizedStringForKey:v12 value:&stru_287733598 table:@"Cellular"];
        [(PSSpecifier *)groupSpecifier setProperty:v24 forKey:*MEMORY[0x277D3FF88]];
      }
    }
  }

  else
  {
    v13 = MEMORY[0x277D3FAD8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ADD_ON_PLAN" value:&stru_287733598 table:@"Cellular"];
    v16 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v16 setButtonAction:sel__addOnPlanOptionPressed_];
    [v3 addObject:v16];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(PSUIAddOnPlanGroup *)self specifiersForRemotePlans:0];
    [v17 addObjectsFromArray:v18];

    if ([(PSUIAddOnPlanGroup *)self _shouldShowWiFiOffFooter])
    {
      getLogger = [(PSUIAddOnPlanGroup *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "WiFi/Cellular is off while iCloud signed in", buf, 2u);
      }

      [v16 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      [(PSUIAddOnPlanGroup *)self _addWiFiOffFooter];
    }

    else if ([v17 count])
    {
      v20 = self->_groupSpecifier;
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"ADD_ON_PLAN_FOOTER_NEW" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)v20 setProperty:v22 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      getLogger2 = [(PSUIAddOnPlanGroup *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "No add-on plan(s) is available", v26, 2u);
      }

      [v3 removeAllObjects];
    }
  }

  return v3;
}

- (id)specifiersForRemotePlans:(BOOL)plans
{
  plansCopy = plans;
  v27 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if ((sf_isiPad & 1) == 0)
  {
    v22 = self->_remotePlansSpecifiers;
LABEL_21:
    v21 = v22;
    goto LABEL_22;
  }

  isCarrierItemFlowSupported = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager isCarrierItemFlowSupported];
  remotePlansSpecifiers = self->_remotePlansSpecifiers;
  if (!isCarrierItemFlowSupported)
  {
    v22 = remotePlansSpecifiers;
    goto LABEL_21;
  }

  [(NSMutableArray *)remotePlansSpecifiers removeAllObjects];
  if (plansCopy && !self->_showAddOnPlans && ![(PSUICellularPlanManagerCache *)self->_cellularPlanManager remoteListFetchCompleted])
  {
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:15 edit:0];
    [(NSMutableArray *)self->_remotePlansSpecifiers addObject:v9];
  }

  remotePlans = [(PSUICellularPlanManagerCache *)self->_cellularPlanManager remotePlans];
  plans = [remotePlans plans];

  if ([plans count])
  {
    v12 = 0;
    v13 = *MEMORY[0x277D3FE58];
    do
    {
      v14 = [plans objectAtIndex:v12];
      getLogger = [(PSUIAddOnPlanGroup *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "remote plan: %@", buf, 0xCu);
      }

      if ([(NSMutableArray *)v14 attributes]== 8)
      {
        carrierName = [(NSMutableArray *)v14 carrierName];
        carrierName = self->_carrierName;
        self->_carrierName = carrierName;

        getLogger2 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
        [getLogger2 setProperty:objc_opt_class() forKey:v13];
        [getLogger2 setUserInfo:v14];
        [(NSMutableArray *)self->_remotePlansSpecifiers addObject:getLogger2];
      }

      else
      {
        getLogger2 = [(PSUIAddOnPlanGroup *)self getLogger];
        if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "plan not addon type, skipping...", buf, 2u);
        }
      }

      ++v12;
    }

    while ([plans count] > v12);
  }

  getLogger3 = [(PSUIAddOnPlanGroup *)self getLogger];
  if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_remotePlansSpecifiers;
    *buf = 138412290;
    v26 = v20;
    _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "specifiers:  %@", buf, 0xCu);
  }

  v21 = self->_remotePlansSpecifiers;
LABEL_22:
  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_handleAddButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    object = [tappedCopy object];
    userInfo = [object userInfo];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ADD_ON_PLAN_ALERT_BODY_%@" value:? table:?];
    carrierName = [userInfo carrierName];
    v28 = [v7 stringWithFormat:v9, carrierName];

    v11 = MEMORY[0x277D75110];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ADD_ON_PLAN_ALERT_TITILE" value:&stru_287733598 table:@"Cellular"];
    v14 = [v11 alertControllerWithTitle:v13 message:v28 preferredStyle:1];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"NOT_ALLOW_BUTTON" value:&stru_287733598 table:@"Cellular"];
    v18 = [v15 actionWithTitle:v17 style:1 handler:&__block_literal_global_21];

    [v14 addAction:v18];
    v19 = MEMORY[0x277D750F8];
    getLogger = userInfo;
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"OK_BUTTON" value:&stru_287733598 table:@"Cellular"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__PSUIAddOnPlanGroup__handleAddButtonTapped___block_invoke_2;
    v29[3] = &unk_279BAA160;
    v29[4] = self;
    v30 = object;
    v23 = object;
    v24 = [v19 actionWithTitle:v22 style:0 handler:v29];

    [v14 addAction:v24];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    getLogger = [(PSUIAddOnPlanGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_FAULT, "Invalid action", buf, 2u);
    }
  }
}

- (void)_handleAddRemotePlan:(id)plan
{
  v40 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  view = [WeakRetained view];
  [view setUserInteractionEnabled:0];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v8 = [planCopy propertyForKey:*MEMORY[0x277D40148]];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  contentView = [v8 contentView];
  subviews = [contentView subviews];

  v11 = [subviews countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(subviews);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 setHidden:1];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [subviews countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v12);
  }

  accessoryView = [v8 accessoryView];
  [v8 setAccessoryView:v7];
  [v7 startAnimating];
  v37[0] = *MEMORY[0x277D49548];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:17];
  v38[0] = v17;
  v37[1] = *MEMORY[0x277D49580];
  userInfo = [planCopy userInfo];
  plan = [userInfo plan];
  v38[1] = plan;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

  v21 = [MEMORY[0x277D49530] flowWithOptions:v20];
  flow = self->_flow;
  self->_flow = v21;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v23 = self->_flow;
  v24 = objc_loadWeakRetained(&self->_listController);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__PSUIAddOnPlanGroup__handleAddRemotePlan___block_invoke;
  v29[3] = &unk_279BAA9F0;
  v29[4] = self;
  v30 = v7;
  v31 = v8;
  v32 = accessoryView;
  v25 = accessoryView;
  v26 = v8;
  v27 = v7;
  [(TSSIMSetupFlow *)v23 showFirstViewControllerWithHostController:v24 completion:v29];

  v28 = *MEMORY[0x277D85DE8];
}

void __43__PSUIAddOnPlanGroup__handleAddRemotePlan___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSUIAddOnPlanGroup__handleAddRemotePlan___block_invoke_2;
  block[3] = &unk_279BAA9C8;
  objc_copyWeak(&v6, &location);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__PSUIAddOnPlanGroup__handleAddRemotePlan___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 7);
    v4 = [v3 view];
    [v4 setUserInteractionEnabled:1];

    [*(a1 + 32) stopAnimating];
    [*(a1 + 40) setAccessoryView:*(a1 + 48)];
    WeakRetained = v5;
  }
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PSUIAddOnPlanGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BAAA18;
  objc_copyWeak(v5, &location);
  v5[1] = completed;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __44__PSUIAddOnPlanGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    WeakRetained[8] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
    if (*(a1 + 40) != 1)
    {
      v4 = [v5 listController];
      [v4 dismissViewControllerAnimated:1 completion:0];

      WeakRetained = v5;
    }
  }
}

- (void)_addOnPlanOptionPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  isInModalPresentation = [WeakRetained isInModalPresentation];

  if (isInModalPresentation)
  {
    v9 = [[PSUICarrierListController alloc] initWithOptions:1 showCarrierItemGroup:0];
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 showController:v9 animate:1];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D757A0]);
    v8 = [[PSUICarrierListController alloc] initWithOptions:1 showCarrierItemGroup:0];
    v9 = [v7 initWithRootViewController:v8];

    [(PSUICarrierListController *)v9 setModalPresentationStyle:2];
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 presentViewController:v9 animated:1 completion:0];
  }
}

- (BOOL)_shouldShowWiFiOffFooter
{
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  if ([v2 isSingleActivationCodeFlowSupported])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice sf_isiPad])
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
      if (aa_primaryAppleAccount)
      {
        v7 = +[PSUIDeviceWiFiState sharedInstance];
        if ([v7 isConnectedOverWiFi])
        {
          LOBYTE(v3) = 0;
        }

        else
        {
          v8 = +[PSUIDeviceCellularState sharedInstance];
          v3 = [v8 isConnectedOverCellular] ^ 1;
        }
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_addWiFiOffFooter
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v3 localizedStringForKey:@"TURN_ON_WIFI_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TURN_ON_WIFI_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
  v7 = [v4 stringWithFormat:v6, v25];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"TURN_ON_WLAN_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"TURN_ON_WLAN_FAUX_CARD_SCANNER_FOOTER_%@" value:&stru_287733598 table:@"Cellular"];
    v15 = [v12 stringWithFormat:v14, v11];

    v7 = v15;
    v25 = v11;
  }

  groupSpecifier = self->_groupSpecifier;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [(PSSpecifier *)groupSpecifier setProperty:v18 forKey:*MEMORY[0x277D3FF48]];

  [(PSSpecifier *)self->_groupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
  v19 = self->_groupSpecifier;
  v27.location = [v7 rangeOfString:v25];
  v20 = NSStringFromRange(v27);
  [(PSSpecifier *)v19 setProperty:v20 forKey:*MEMORY[0x277D3FF58]];

  v21 = self->_groupSpecifier;
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [(PSSpecifier *)v21 setProperty:v22 forKey:*MEMORY[0x277D3FF78]];

  v23 = self->_groupSpecifier;
  v24 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [(PSSpecifier *)v23 setProperty:v24 forKey:*MEMORY[0x277D3FF68]];

  [(PSSpecifier *)self->_groupSpecifier setProperty:@"_turnOnWifiPressed:" forKey:*MEMORY[0x277D3FF50]];
}

- (void)_turnOnWifiPressed:(id)pressed
{
  v3 = MEMORY[0x277CC1E80];
  pressedCopy = pressed;
  defaultWorkspace = [v3 defaultWorkspace];
  v5 = [pressedCopy URL];

  [defaultWorkspace openSensitiveURL:v5 withOptions:0];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end