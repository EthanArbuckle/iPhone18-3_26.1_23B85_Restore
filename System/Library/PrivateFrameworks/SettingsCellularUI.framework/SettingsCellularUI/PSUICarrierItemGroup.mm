@interface PSUICarrierItemGroup
- (BOOL)hasCarrierItems;
- (BOOL)isCellNetworkSearchAuthorized;
- (PSListController)listController;
- (PSUICarrierItemGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUICarrierItemGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager ctPlanManager:(id)planManager showCarrierItems:(BOOL)items;
- (id)addCellularPlanSpecifier;
- (id)specifiers;
- (id)specifiersForCarrierItems;
- (void)_addLocationFooterIfNecessary;
- (void)_handleAddCarrierItem:(id)item specifier:(id)specifier;
- (void)carrierItemOptionPressed:(id)pressed;
- (void)carrierItemPressed:(id)pressed;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)turnOnLocationServicesPressed:(id)pressed;
@end

@implementation PSUICarrierItemGroup

- (PSUICarrierItemGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [(PSUICarrierItemGroup *)self initWithListController:controllerCopy groupSpecifier:specifierCopy planManager:v8 ctPlanManager:mEMORY[0x277CF96D8] showCarrierItems:1];

  return v10;
}

- (PSUICarrierItemGroup)initWithListController:(id)controller groupSpecifier:(id)specifier planManager:(id)manager ctPlanManager:(id)planManager showCarrierItems:(BOOL)items
{
  controllerCopy = controller;
  specifierCopy = specifier;
  managerCopy = manager;
  planManagerCopy = planManager;
  v20.receiver = self;
  v20.super_class = PSUICarrierItemGroup;
  v16 = [(PSUICarrierItemGroup *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_listController, controllerCopy);
    objc_storeStrong(&v17->_groupSpecifier, specifier);
    objc_storeStrong(&v17->_cellularPlanManagerCache, manager);
    objc_storeStrong(&v17->_ctCellularPlanManager, planManager);
    v17->_showCarrierItems = items;
    flow = v17->_flow;
    v17->_flow = 0;
  }

  return v17;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_showCarrierItems)
  {
    specifiersForCarrierItems = [(PSUICarrierItemGroup *)self specifiersForCarrierItems];
    [v3 addObjectsFromArray:specifiersForCarrierItems];

    if ([v3 count])
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"CELLULAR_CHOOSE_NETWORK" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)self->_groupSpecifier setName:v6];

      groupSpecifier = self->_groupSpecifier;
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"CELLULAR_SETUP_DATA_COLLECTION_DISCLOSURE" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)groupSpecifier setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
    }

    if (![v3 count])
    {
      [(PSUICarrierItemGroup *)self _addLocationFooterIfNecessary];
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache isActivationCodeFlowSupported])
    {
      addCellularPlanSpecifier = [(PSUICarrierItemGroup *)self addCellularPlanSpecifier];
      if (addCellularPlanSpecifier)
      {
        [v3 addObject:addCellularPlanSpecifier];
      }
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifiersForCarrierItems2 = [(PSUICarrierItemGroup *)self specifiersForCarrierItems];
    [v11 addObjectsFromArray:specifiersForCarrierItems2];

    if ([getCLLocationManagerClass_2() locationServicesEnabled])
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"CARRIER_ITEM_FOOTER" value:&stru_287733598 table:@"Cellular"];

      isCarrierItemBeingFetched = [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache isCarrierItemBeingFetched];
      v16 = MEMORY[0x277D3FAD8];
      if (isCarrierItemBeingFetched)
      {
        v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_287733598 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        [v17 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      }

      else
      {
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"CARRIER_ITEM" value:&stru_287733598 table:@"Cellular"];
        v17 = [v16 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

        if (![v11 count])
        {
          getLogger = [(PSUICarrierItemGroup *)self getLogger];
          if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "No carrier item(s) is available in this location", v28, 2u);
          }

          [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
          v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = [v25 localizedStringForKey:@"NO_CARRIER_ITEM_FOOTER" value:&stru_287733598 table:@"Cellular"];

          v14 = v26;
        }
      }

      [(PSSpecifier *)self->_groupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      getLogger2 = [(PSUICarrierItemGroup *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Location Services is off", buf, 2u);
      }

      v19 = MEMORY[0x277D3FAD8];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"CARRIER_ITEM" value:&stru_287733598 table:@"Cellular"];
      v17 = [v19 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      [(PSUICarrierItemGroup *)self _addLocationFooterIfNecessary];
    }

    [v3 addObject:v17];
    [v17 setButtonAction:sel_carrierItemOptionPressed_];
  }

  return v3;
}

- (id)addCellularPlanSpecifier
{
  hasCarrierItems = [(PSUICarrierItemGroup *)self hasCarrierItems];
  if (!hasCarrierItems)
  {
    p_addCellularPlanSpecifierStandard = &self->_addCellularPlanSpecifierStandard;
    addCellularPlanSpecifierStandard = self->_addCellularPlanSpecifierStandard;
    if (!addCellularPlanSpecifierStandard)
    {
LABEL_6:
      v6 = [PSUIAddCellularPlanSpecifier alloc];
      WeakRetained = objc_loadWeakRetained(&self->_listController);
      v8 = [(PSUIAddCellularPlanSpecifier *)v6 initWithHostController:WeakRetained isEmbeddedInCarrierList:hasCarrierItems];
      v9 = *p_addCellularPlanSpecifierStandard;
      *p_addCellularPlanSpecifierStandard = v8;

      addCellularPlanSpecifierStandard = *p_addCellularPlanSpecifierStandard;
    }

LABEL_7:
    v10 = addCellularPlanSpecifierStandard;
    goto LABEL_9;
  }

  if (self->_showCarrierItems)
  {
    p_addCellularPlanSpecifierStandard = &self->_addCellularPlanSpecifierEmbedded;
    addCellularPlanSpecifierStandard = self->_addCellularPlanSpecifierEmbedded;
    if (!addCellularPlanSpecifierStandard)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)hasCarrierItems
{
  if (![(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache isCarrierItemFlowSupported])
  {
    return 0;
  }

  carrierItems = [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache carrierItems];
  v4 = [carrierItems count] != 0;

  return v4;
}

- (id)specifiersForCarrierItems
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache isCarrierItemFlowSupported])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache carrierItems];
    v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = MEMORY[0x277D3FAD8];
          name = [v10 name];
          v13 = [v11 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setButtonAction:sel_carrierItemPressed_];
          [v13 setUserInfo:v10];
          [v3 addObject:v13];
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    getLogger = [(PSUICarrierItemGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Carrier Group specifiers:  %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)carrierItemPressed:(id)pressed
{
  v32 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  userInfo = [pressedCopy userInfo];
  getLogger = [(PSUICarrierItemGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = userInfo;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  warningText = [userInfo warningText];
  if (warningText && (v8 = warningText, [userInfo warningText], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v10))
  {
    v11 = MEMORY[0x277D75110];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CARRIER_LOCK_WARNING_TITLE" value:&stru_287733598 table:@"Cellular"];
    warningText2 = [userInfo warningText];
    plan = [v11 alertControllerWithTitle:v13 message:warningText2 preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CONTINUE" value:&stru_287733598 table:@"Cellular"];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __43__PSUICarrierItemGroup_carrierItemPressed___block_invoke;
    v27[3] = &unk_279BAAC40;
    v27[4] = self;
    v28 = userInfo;
    v29 = pressedCopy;
    v19 = [v16 actionWithTitle:v18 style:0 handler:v27];

    [plan addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__PSUICarrierItemGroup_carrierItemPressed___block_invoke_63;
    v26[3] = &unk_279BA9E70;
    v26[4] = self;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v26];

    [plan addAction:v23];
    listController = [(PSUICarrierItemGroup *)self listController];
    [listController presentViewController:plan animated:1 completion:0];
  }

  else
  {
    plan = [userInfo plan];
    [(PSUICarrierItemGroup *)self _handleAddCarrierItem:plan specifier:pressedCopy];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __43__PSUICarrierItemGroup_carrierItemPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "continue pressed", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) plan];
  [v3 _handleAddCarrierItem:v4 specifier:*(a1 + 48)];
}

void __43__PSUICarrierItemGroup_carrierItemPressed___block_invoke_63(uint64_t a1)
{
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "cancel pressed", v2, 2u);
  }
}

- (void)_handleAddCarrierItem:(id)item specifier:(id)specifier
{
  v29[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = MEMORY[0x277D750E8];
  specifierCopy = specifier;
  v9 = [[v7 alloc] initWithActivityIndicatorStyle:100];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  [v10 setAccessoryView:v9];
  [v9 startAnimating];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  view = [WeakRetained view];
  [view setUserInteractionEnabled:0];

  v28[0] = *MEMORY[0x277D49548];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:17];
  v28[1] = *MEMORY[0x277D49580];
  v29[0] = v13;
  v29[1] = itemCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  getLogger = [(PSUICarrierItemGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v14;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "launching flow with options: %@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D49530] flowWithOptions:v14];
  flow = self->_flow;
  self->_flow = v16;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v18 = self->_flow;
  v19 = objc_loadWeakRetained(&self->_listController);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__PSUICarrierItemGroup__handleAddCarrierItem_specifier___block_invoke;
  v23[3] = &unk_279BAAC68;
  v23[4] = self;
  v24 = v9;
  v25 = v10;
  v20 = v10;
  v21 = v9;
  [(TSSIMSetupFlow *)v18 showFirstViewControllerWithHostController:v19 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __56__PSUICarrierItemGroup__handleAddCarrierItem_specifier___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__PSUICarrierItemGroup__handleAddCarrierItem_specifier___block_invoke_2;
  v2[3] = &unk_279BA9F18;
  objc_copyWeak(&v5, &location);
  v3 = a1[5];
  v4 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__PSUICarrierItemGroup__handleAddCarrierItem_specifier___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 8);
    v4 = [v3 view];
    [v4 setUserInteractionEnabled:1];

    [a1[4] stopAnimating];
    [a1[5] setAccessoryView:0];
    WeakRetained = v5;
  }
}

- (void)_addLocationFooterIfNecessary
{
  v3 = _os_feature_enabled_impl();
  locationServicesEnabled = [getCLLocationManagerClass_2() locationServicesEnabled];
  if (locationServicesEnabled && [(PSUICarrierItemGroup *)self isCellNetworkSearchAuthorized])
  {
    groupSpecifier = +[PSUICellularPlanManagerCache sharedInstance];
    if ([groupSpecifier isActivationCodeFlowSupported])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice sf_isChinaRegionCellularDevice])
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        sf_isiPad = [currentDevice2 sf_isiPad];

        if (!sf_isiPad)
        {
          return;
        }

        groupSpecifier = [(PSUICarrierItemGroup *)self groupSpecifier];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"CELLULAR_SETUP_DATA_COLLECTION_DISCLOSURE" value:&stru_287733598 table:@"Cellular"];
        [groupSpecifier setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
      }

      else
      {
      }
    }
  }

  else
  {
    getLogger = [(PSUICarrierItemGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Cellular: Location Services off", buf, 2u);
    }

    if (locationServicesEnabled)
    {
      v11 = @"prefs:root=Privacy&path=LOCATION/SYSTEM_SERVICES";
    }

    else
    {
      v11 = @"prefs:root=Privacy&path=LOCATION";
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_HYPERLINK_SUBSTRING" value:&stru_287733598 table:@"Cellular"];

    if (v3)
    {
      v14 = @"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_NEW_UI_%@";
    }

    else
    {
      v14 = @"TURN_ON_LOCATION_SERVICES_FAUX_CARD_SCANNER_FOOTER_%@";
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v14 value:&stru_287733598 table:@"Cellular"];
    v18 = [v15 stringWithFormat:v17, v13];

    groupSpecifier2 = [(PSUICarrierItemGroup *)self groupSpecifier];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [groupSpecifier2 setProperty:v21 forKey:*MEMORY[0x277D3FF48]];

    groupSpecifier3 = [(PSUICarrierItemGroup *)self groupSpecifier];
    [groupSpecifier3 setProperty:v18 forKey:*MEMORY[0x277D3FF70]];

    groupSpecifier4 = [(PSUICarrierItemGroup *)self groupSpecifier];
    v34.location = [v18 rangeOfString:v13];
    v24 = NSStringFromRange(v34);
    [groupSpecifier4 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

    groupSpecifier5 = [(PSUICarrierItemGroup *)self groupSpecifier];
    v26 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    [groupSpecifier5 setProperty:v26 forKey:*MEMORY[0x277D3FF78]];

    groupSpecifier6 = [(PSUICarrierItemGroup *)self groupSpecifier];
    v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [groupSpecifier6 setProperty:v28 forKey:*MEMORY[0x277D3FF68]];

    groupSpecifier7 = [(PSUICarrierItemGroup *)self groupSpecifier];
    [groupSpecifier7 setProperty:@"turnOnLocationServicesPressed:" forKey:*MEMORY[0x277D3FF50]];

    groupSpecifier8 = [(PSUICarrierItemGroup *)self groupSpecifier];
    [groupSpecifier8 setProperty:v18 forKey:*MEMORY[0x277D3FF88]];
  }
}

- (void)turnOnLocationServicesPressed:(id)pressed
{
  v16 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  getLogger = [(PSUICarrierItemGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    v13 = [pressedCopy URL];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "%@", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  isInModalPresentation = [WeakRetained isInModalPresentation];

  if (isInModalPresentation)
  {
    v8 = objc_loadWeakRetained(&self->_listController);
    navigationController = [v8 navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = [pressedCopy URL];
  [defaultWorkspace openSensitiveURL:v11 withOptions:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PSUICarrierItemGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BAAA18;
  objc_copyWeak(v5, &location);
  v5[1] = completed;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __46__PSUICarrierItemGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    WeakRetained[5] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
    if (*(a1 + 40) != 1)
    {
      v4 = objc_loadWeakRetained(v5 + 8);
      [v4 dismissViewControllerAnimated:1 completion:0];

      WeakRetained = v5;
    }
  }
}

- (void)carrierItemOptionPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  isInModalPresentation = [WeakRetained isInModalPresentation];

  if (isInModalPresentation)
  {
    v9 = [[PSUICarrierListController alloc] initWithOptions:0 showCarrierItemGroup:1];
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 showController:v9 animate:1];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D757A0]);
    v8 = [[PSUICarrierListController alloc] initWithOptions:0 showCarrierItemGroup:1];
    v9 = [v7 initWithRootViewController:v8];

    [(PSUICarrierListController *)v9 setModalPresentationStyle:2];
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 presentViewController:v9 animated:1 completion:0];
  }
}

- (BOOL)isCellNetworkSearchAuthorized
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getCLCopyAppsUsingLocationSymbolLoc_ptr_2;
  v12 = getCLCopyAppsUsingLocationSymbolLoc_ptr_2;
  if (!getCLCopyAppsUsingLocationSymbolLoc_ptr_2)
  {
    v3 = CoreLocationLibrary_2();
    v10[3] = dlsym(v3, "CLCopyAppsUsingLocation");
    getCLCopyAppsUsingLocationSymbolLoc_ptr_2 = v10[3];
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v4 = v2();
  v5 = [v4 objectForKey:@"/System/Library/Frameworks/CoreTelephony.framework"];
  v6 = [getCLLocationManagerClass_2() isEntityAuthorizedForLocationDictionary:v5];

  return v6;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end