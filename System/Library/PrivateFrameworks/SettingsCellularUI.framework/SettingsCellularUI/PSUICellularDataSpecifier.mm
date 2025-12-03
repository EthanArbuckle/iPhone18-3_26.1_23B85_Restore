@interface PSUICellularDataSpecifier
- (PSListController)hostController;
- (PSUICellularDataListItemsController)detailController;
- (PSUICellularDataSpecifier)initWithHostController:(id)controller;
- (PSUICellularDataSpecifier)initWithHostController:(id)controller simStatusCache:(id)cache planManagerCache:(id)managerCache callCache:(id)callCache dataCache:(id)dataCache wifiState:(id)state;
- (id)_isCellularDataEnabled:(id)enabled;
- (id)callEndConfirmationSpecifier;
- (id)isCellularDataEnabled:(id)enabled;
- (id)planItemForListItem:(id)item;
- (id)subscriptionContextForListItem:(id)item;
- (void)_acceptedDataSwitch:(id)switch;
- (void)_setCellularDataEnabled:(id)enabled specifier:(id)specifier;
- (void)_setCellularDataSwitch:(id)switch;
- (void)acceptedDataSwitch:(id)switch;
- (void)canceledDataSwitch:(id)switch;
- (void)setAirplaneMode:(BOOL)mode;
- (void)setCellularDataEnabled:(id)enabled specifier:(id)specifier;
- (void)updateCachedState;
@end

@implementation PSUICellularDataSpecifier

- (PSUICellularDataSpecifier)initWithHostController:(id)controller
{
  v4 = MEMORY[0x277D4D868];
  controllerCopy = controller;
  sharedInstance = [v4 sharedInstance];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  v8 = +[PSUICoreTelephonyCallCache sharedInstance];
  v9 = +[PSUICoreTelephonyDataCache sharedInstance];
  v10 = +[PSUIDeviceWiFiState sharedInstance];
  v11 = [(PSUICellularDataSpecifier *)self initWithHostController:controllerCopy simStatusCache:sharedInstance planManagerCache:v7 callCache:v8 dataCache:v9 wifiState:v10];

  return v11;
}

- (PSUICellularDataSpecifier)initWithHostController:(id)controller simStatusCache:(id)cache planManagerCache:(id)managerCache callCache:(id)callCache dataCache:(id)dataCache wifiState:(id)state
{
  controllerCopy = controller;
  cacheCopy = cache;
  managerCacheCopy = managerCache;
  callCacheCopy = callCache;
  dataCacheCopy = dataCache;
  stateCopy = state;
  v14 = +[SettingsCellularUtils isUIDualSIM];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"MOBILE_DATA_SETTINGS" value:&stru_287733598 table:@"Cellular"];
  if (v14)
  {
    v17 = objc_opt_class();
    v28.receiver = self;
    v28.super_class = PSUICellularDataSpecifier;
    v18 = [(PSUICellularDataSpecifier *)&v28 initWithName:v16 target:self set:sel_setCellularDataEnabled_specifier_ get:sel_isCellularDataEnabled_ detail:v17 cell:6 edit:0];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = PSUICellularDataSpecifier;
    v18 = [(PSUICellularDataSpecifier *)&v27 initWithName:v16 target:self set:sel_setCellularDataEnabled_specifier_ get:sel_isCellularDataEnabled_ detail:0 cell:3 edit:0];
  }

  v19 = v18;

  if (v19)
  {
    [(PSUICellularDataSpecifier *)v19 setIdentifier:@"MOBILE_DATA_SETTINGS"];
    objc_storeWeak(&v19->_hostController, controllerCopy);
    objc_storeStrong(&v19->_simStatusCache, cache);
    objc_storeStrong(&v19->_planManagerCache, managerCache);
    objc_storeStrong(&v19->_dataCache, dataCache);
    objc_storeStrong(&v19->_callCache, callCache);
    objc_storeStrong(&v19->_wifiState, state);
    [(PSUICellularDataSpecifier *)v19 setAirplaneMode:[(PSUICoreTelephonyDataCache *)v19->_dataCache isAirplaneModeEnabled]];
    [(PSUICellularDataSpecifier *)v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F8]];
    [(PSUICellularDataSpecifier *)v19 updateCachedState];
  }

  return v19;
}

- (void)updateCachedState
{
  v76 = *MEMORY[0x277D85DE8];
  planItems = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  cachedPlanItems = self->_cachedPlanItems;
  self->_cachedPlanItems = planItems;

  subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v6 = [subscriptionContexts count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      subscriptionContexts2 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
      v11 = [subscriptionContexts2 objectAtIndexedSubscript:v7];

      v9 |= [v11 isSimHidden];
      v8 += [v11 isSimPresent];

      ++v7;
      subscriptionContexts3 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
      v13 = [subscriptionContexts3 count];
    }

    while (v13 > v7);
    v14 = (v8 > 1) & v9;
  }

  else
  {
    v14 = 0;
  }

  self->_isMSOActive = v14;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    subscriptionContexts4 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
    v17 = [subscriptionContexts4 count];
    v18 = [(NSArray *)self->_cachedPlanItems count];
    *buf = 134218240;
    *v73 = v17;
    *&v73[8] = 2048;
    *&v73[10] = v18;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%lu subscription context(s) and %lu plan item(s)", buf, 0x16u);
  }

  subscriptionContexts5 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  if ([subscriptionContexts5 count] < 2)
  {

    goto LABEL_21;
  }

  v20 = [(NSArray *)self->_cachedPlanItems count];

  if (v20 < 2)
  {
LABEL_21:
    [(PSUICellularDataSpecifier *)self setCellType:6];
    *(&self->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_isCellularDataEnabled_;
    *(&self->super.super.isa + *MEMORY[0x277D3FCB0]) = sel_setCellularDataEnabled_specifier_;
    goto LABEL_38;
  }

  [(PSUICellularDataSpecifier *)self setCellType:2];
  *(&self->super.super.isa + *MEMORY[0x277D3FCA8]) = sel__isCellularDataEnabled_;
  *(&self->super.super.isa + *MEMORY[0x277D3FCB0]) = sel__setCellularDataEnabled_specifier_;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v71 = objc_opt_new();
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"OFF" value:&stru_287733598 table:@"Cellular"];
  v70 = v21;
  [v21 addObject:v24];

  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"OFF" value:&stru_287733598 table:@"Cellular"];
  [v22 addObject:v26];

  null = [MEMORY[0x277CBEB68] null];
  [v71 addObject:null];

  v28 = self->_cachedPlanItems;
  v29 = &unk_265974000;
  if ([(NSArray *)v28 count])
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = [(NSArray *)v28 objectAtIndexedSubscript:v30];
      if ([v32 isSelected])
      {
        ++v31;
        v33 = MEMORY[0x277CCACA8];
        userLabel = [v32 userLabel];
        label = [userLabel label];
        v36 = [v33 stringWithFormat:@"%@", label];
        [v70 addObject:v36];

        v37 = MEMORY[0x277CCACA8];
        userLabel2 = [v32 userLabel];
        label2 = [userLabel2 label];
        v40 = [v37 stringWithFormat:@"%@", label2];
        [v22 addObject:v40];

        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
        [v71 addObject:v41];

        getLogger2 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
        {
          userLabel3 = [v32 userLabel];
          label3 = [userLabel3 label];
          *buf = 138412546;
          *v73 = label3;
          *&v73[8] = 1024;
          *&v73[10] = v30;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Adding plan item %@ with value %d", buf, 0x12u);
        }
      }

      else
      {
        getLogger2 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
        {
          userLabel4 = [v32 userLabel];
          label4 = [userLabel4 label];
          *buf = 67109378;
          *v73 = v30;
          *&v73[4] = 2112;
          *&v73[6] = label4;
          _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Plan item %d (%@) is not selected", buf, 0x12u);
        }
      }

      ++v30;
    }

    while ([(NSArray *)v28 count]> v30);
    v29 = &unk_265974000;
    if (v31 >= 2)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v31 = 0;
  }

  getLogger3 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "Adding additional plans", buf, 2u);
  }

  if ([(NSArray *)v28 count])
  {
    v48 = 0;
    v68 = v29[74];
    v69 = v31;
    do
    {
      v49 = [(NSArray *)v28 objectAtIndexedSubscript:v48];
      if (([v49 isSelected] & 1) != 0 || (objc_msgSend(v49, "isSelectable") & 1) == 0)
      {
        getLogger4 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
        {
          userLabel5 = [v49 userLabel];
          label5 = [userLabel5 label];
          isSelected = [v49 isSelected];
          isSelectable = [v49 isSelectable];
          *buf = 67109890;
          *v73 = v48;
          *&v73[4] = 2112;
          *&v73[6] = label5;
          *&v73[14] = 1024;
          *&v73[16] = isSelected;
          v74 = 1024;
          v75 = isSelectable;
          _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "Plan item %d (%@) is selected (%d) or not selectable (%d)", buf, 0x1Eu);
        }
      }

      else
      {
        v50 = MEMORY[0x277CCACA8];
        userLabel6 = [v49 userLabel];
        label6 = [userLabel6 label];
        v53 = [v50 stringWithFormat:@"%@", label6];
        [v70 addObject:v53];

        v54 = MEMORY[0x277CCACA8];
        userLabel7 = [v49 userLabel];
        label7 = [userLabel7 label];
        v57 = [v54 stringWithFormat:@"%@", label7];
        [v22 addObject:v57];

        v58 = [MEMORY[0x277CCABB0] numberWithInteger:v48];
        [v71 addObject:v58];

        getLogger4 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
        {
          userLabel8 = [v49 userLabel];
          label8 = [userLabel8 label];
          *buf = v68;
          *v73 = label8;
          *&v73[8] = 1024;
          *&v73[10] = v48;
          _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "Adding plan item %@ with value %d", buf, 0x12u);
        }

        v31 = v69;
      }

      ++v48;
    }

    while ([(NSArray *)v28 count]> v48);
  }

LABEL_35:
  getLogger5 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v73 = v31;
    _os_log_impl(&dword_2658DE000, getLogger5, OS_LOG_TYPE_DEFAULT, "%d lines turned on", buf, 8u);
  }

  [(PSUICellularDataSpecifier *)self setValues:v71 titles:v70 shortTitles:v22];
LABEL_38:
  v67 = *MEMORY[0x277D85DE8];
}

- (void)setAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "OFF";
    if (modeCopy)
    {
      v6 = "ON";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Airplane mode is %s", &v8, 0xCu);
  }

  if (modeCopy)
  {
    [(PSUICellularDataSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    [(PSUICellularDataSpecifier *)self removePropertyForKey:*MEMORY[0x277D3FF38]];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)isCellularDataEnabled:(id)enabled
{
  v16 = *MEMORY[0x277D85DE8];
  isCellularDataEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled];
  isAirplaneModeEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "OFF";
    if (isCellularDataEnabled)
    {
      v8 = "ON";
    }

    else
    {
      v8 = "OFF";
    }

    if (isAirplaneModeEnabled)
    {
      v7 = "ON";
    }

    v12 = 136315394;
    v13 = v8;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Cellular data %s airplane mode %s", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:isCellularDataEnabled && !isAirplaneModeEnabled];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCellularDataEnabled:(id)enabled specifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"OFF";
    if (bOOLValue)
    {
      v8 = @"ON";
    }

    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Attempting to set cellular data switch to %@", &v13, 0xCu);
  }

  bOOLValue2 = [enabledCopy BOOLValue];
  if (bOOLValue2 != [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled])
  {
    if ((bOOLValue2 & 1) != 0 || ![(PSUICoreTelephonyCallCache *)self->_callCache isAnyVOIPCallActive])
    {
      [(PSUICellularDataSpecifier *)self setCellularDataSwitch:bOOLValue2];
    }

    else
    {
      callEndConfirmationSpecifier = [(PSUICellularDataSpecifier *)self callEndConfirmationSpecifier];
      [callEndConfirmationSpecifier setConfirmationAction:sel_acceptedDataSwitch_];
      [callEndConfirmationSpecifier setProperty:enabledCopy forKey:@"newValue"];
      WeakRetained = objc_loadWeakRetained(&self->_hostController);
      [WeakRetained showConfirmationViewForSpecifier:callEndConfirmationSpecifier];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)acceptedDataSwitch:(id)switch
{
  switchCopy = switch;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "User confirmed cellular data switch action", v8, 2u);
  }

  v6 = [switchCopy propertyForKey:@"newValue"];

  bOOLValue = [v6 BOOLValue];
  [(PSUICellularDataSpecifier *)self setCellularDataSwitch:bOOLValue];
}

- (id)_isCellularDataEnabled:(id)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  isCellularDataEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled];
  isAirplaneModeEnabled = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "OFF";
    if (isCellularDataEnabled)
    {
      v9 = "ON";
    }

    else
    {
      v9 = "OFF";
    }

    if (isAirplaneModeEnabled)
    {
      v8 = "ON";
    }

    v19 = 136315394;
    v20 = v9;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Cellular data %s airplane mode %s", &v19, 0x16u);
  }

  if (isAirplaneModeEnabled || !isCellularDataEnabled)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v11 = self->_cachedPlanItems;
    if ([(NSArray *)v11 count])
    {
      v12 = 0;
      null = 0;
      v13 = 0;
      do
      {
        v14 = [(NSArray *)v11 objectAtIndexedSubscript:v12];
        if ([v14 isSelected])
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];

          v13 = v15;
        }

        if ([v14 isActiveDataPlan])
        {
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];

          null = v16;
        }

        ++v12;
      }

      while ([(NSArray *)v11 count]> v12);
      if (v13 && self->_isMSOActive)
      {
        v13 = v13;

        null = v13;
      }
    }

    else
    {
      v13 = 0;
      null = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return null;
}

- (void)_setCellularDataEnabled:(id)enabled specifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = enabledCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Attempting to set cellular data switch to %@", &v13, 0xCu);
  }

  if (self->_isMSOActive)
  {
    getLogger2 = [(PSUICellularDataSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "MSO active, ignore cellular data switch", &v13, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  null = [MEMORY[0x277CBEB68] null];
  v9 = [null isEqual:enabledCopy];

  if (!v9)
  {
    callEndConfirmationSpecifier = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [enabledCopy integerValue]);
    if (-[PSUICoreTelephonyDataCache isCellularDataEnabled](self->_dataCache, "isCellularDataEnabled") && [callEndConfirmationSpecifier isActiveDataPlan])
    {
      WeakRetained = [(PSUICellularDataSpecifier *)self getLogger];
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_DEBUG, "Cellular data is already on and plan is already the active data plan", &v13, 2u);
      }

      goto LABEL_14;
    }

LABEL_16:
    [(PSUICellularDataSpecifier *)self _setCellularDataSwitch:enabledCopy];
    goto LABEL_20;
  }

  if (![(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled])
  {
    getLogger2 = [(PSUICellularDataSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Cellular data is already off", &v13, 2u);
    }

    goto LABEL_19;
  }

  if (![(PSUICoreTelephonyCallCache *)self->_callCache isAnyVOIPCallActive])
  {
    goto LABEL_16;
  }

  callEndConfirmationSpecifier = [(PSUICellularDataSpecifier *)self callEndConfirmationSpecifier];
  [callEndConfirmationSpecifier setConfirmationAction:sel__acceptedDataSwitch_];
  [callEndConfirmationSpecifier setProperty:enabledCopy forKey:@"newValue"];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained showConfirmationViewForSpecifier:callEndConfirmationSpecifier];
LABEL_14:

LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_acceptedDataSwitch:(id)switch
{
  switchCopy = switch;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "User confirmed cellular data switch action", v7, 2u);
  }

  v6 = [switchCopy propertyForKey:@"newValue"];

  [(PSUICellularDataSpecifier *)self _setCellularDataSwitch:v6];
}

- (void)_setCellularDataSwitch:(id)switch
{
  v12 = *MEMORY[0x277D85DE8];
  switchCopy = switch;
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = switchCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Setting cellular data switch to %@", &v10, 0xCu);
  }

  null = [MEMORY[0x277CBEB68] null];
  v7 = [null isEqual:switchCopy];

  if (v7)
  {
    [(PSUICoreTelephonyDataCache *)self->_dataCache setCellularDataEnabled:0];
  }

  else
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [switchCopy integerValue]);
    [(PSUICoreTelephonyDataCache *)self->_dataCache setCellularDataEnabled:1];
    [(PSUICellularPlanManagerCache *)self->_planManagerCache setSelectedPlanItemForData:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)planItemForListItem:(id)item
{
  itemCopy = item;
  if ([itemCopy cellType] != 3)
  {
    goto LABEL_5;
  }

  values = [itemCopy values];
  firstObject = [values firstObject];
  null = [MEMORY[0x277CBEB68] null];
  v8 = [firstObject isEqual:null];

  if ((v8 & 1) != 0 || ([itemCopy values], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v9, -[NSArray count](self->_cachedPlanItems, "count") <= v11))
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->_cachedPlanItems objectAtIndexedSubscript:v11];
  }

  return v12;
}

- (id)subscriptionContextForListItem:(id)item
{
  v4 = [(PSUICellularDataSpecifier *)self planItemForListItem:item];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v4 cachedSubscriptionContexts:0];

  return v5;
}

- (id)callEndConfirmationSpecifier
{
  isConnectedOverWiFi = [(PSUIDeviceWiFiState *)self->_wifiState isConnectedOverWiFi];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (isConnectedOverWiFi)
  {
    v6 = @"CELLULAR_DATA_ON_FACETIME_WIFI_WARNING_DISABLE";
  }

  else
  {
    v6 = @"CELLULAR_DATA_ON_FACETIME_WARNING_DISABLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_287733598 table:@"Cellular"];

  v8 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:&stru_287733598 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ON_CALL_CANCEL" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v11 forKey:*MEMORY[0x277D3FE78]];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ON_CALL_OK_DISABLE" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v13 forKey:*MEMORY[0x277D3FE88]];

  [dictionary setObject:v7 forKey:*MEMORY[0x277D3FE90]];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISABLE_CELLULAR_DATA" value:&stru_287733598 table:@"Cellular"];
  [dictionary setObject:v15 forKey:*MEMORY[0x277D3FE98]];

  [v8 setupWithDictionary:dictionary];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setProperty:v16 forKey:*MEMORY[0x277D3FE80]];

  [v8 setConfirmationCancelAction:sel_canceledDataSwitch_];

  return v8;
}

- (void)canceledDataSwitch:(id)switch
{
  getLogger = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "User cancelled cellular data switch action", v8, 2u);
  }

  detailController = [(PSUICellularDataSpecifier *)self detailController];

  if (detailController)
  {
    detailController2 = [(PSUICellularDataSpecifier *)self detailController];
    [detailController2 reloadSpecifiers];
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained reloadSpecifierID:@"MOBILE_DATA_SETTINGS" animated:1];
}

- (PSUICellularDataListItemsController)detailController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailController);

  return WeakRetained;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end