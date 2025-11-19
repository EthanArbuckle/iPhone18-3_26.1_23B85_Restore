@interface PSUICellularDataSpecifier
- (PSListController)hostController;
- (PSUICellularDataListItemsController)detailController;
- (PSUICellularDataSpecifier)initWithHostController:(id)a3;
- (PSUICellularDataSpecifier)initWithHostController:(id)a3 simStatusCache:(id)a4 planManagerCache:(id)a5 callCache:(id)a6 dataCache:(id)a7 wifiState:(id)a8;
- (id)_isCellularDataEnabled:(id)a3;
- (id)callEndConfirmationSpecifier;
- (id)isCellularDataEnabled:(id)a3;
- (id)planItemForListItem:(id)a3;
- (id)subscriptionContextForListItem:(id)a3;
- (void)_acceptedDataSwitch:(id)a3;
- (void)_setCellularDataEnabled:(id)a3 specifier:(id)a4;
- (void)_setCellularDataSwitch:(id)a3;
- (void)acceptedDataSwitch:(id)a3;
- (void)canceledDataSwitch:(id)a3;
- (void)setAirplaneMode:(BOOL)a3;
- (void)setCellularDataEnabled:(id)a3 specifier:(id)a4;
- (void)updateCachedState;
@end

@implementation PSUICellularDataSpecifier

- (PSUICellularDataSpecifier)initWithHostController:(id)a3
{
  v4 = MEMORY[0x277D4D868];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  v8 = +[PSUICoreTelephonyCallCache sharedInstance];
  v9 = +[PSUICoreTelephonyDataCache sharedInstance];
  v10 = +[PSUIDeviceWiFiState sharedInstance];
  v11 = [(PSUICellularDataSpecifier *)self initWithHostController:v5 simStatusCache:v6 planManagerCache:v7 callCache:v8 dataCache:v9 wifiState:v10];

  return v11;
}

- (PSUICellularDataSpecifier)initWithHostController:(id)a3 simStatusCache:(id)a4 planManagerCache:(id)a5 callCache:(id)a6 dataCache:(id)a7 wifiState:(id)a8
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
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
    objc_storeWeak(&v19->_hostController, v26);
    objc_storeStrong(&v19->_simStatusCache, a4);
    objc_storeStrong(&v19->_planManagerCache, a5);
    objc_storeStrong(&v19->_dataCache, a7);
    objc_storeStrong(&v19->_callCache, a6);
    objc_storeStrong(&v19->_wifiState, a8);
    [(PSUICellularDataSpecifier *)v19 setAirplaneMode:[(PSUICoreTelephonyDataCache *)v19->_dataCache isAirplaneModeEnabled]];
    [(PSUICellularDataSpecifier *)v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F8]];
    [(PSUICellularDataSpecifier *)v19 updateCachedState];
  }

  return v19;
}

- (void)updateCachedState
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  cachedPlanItems = self->_cachedPlanItems;
  self->_cachedPlanItems = v3;

  v5 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
      v11 = [v10 objectAtIndexedSubscript:v7];

      v9 |= [v11 isSimHidden];
      v8 += [v11 isSimPresent];

      ++v7;
      v12 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
      v13 = [v12 count];
    }

    while (v13 > v7);
    v14 = (v8 > 1) & v9;
  }

  else
  {
    v14 = 0;
  }

  self->_isMSOActive = v14;
  v15 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
    v17 = [v16 count];
    v18 = [(NSArray *)self->_cachedPlanItems count];
    *buf = 134218240;
    *v73 = v17;
    *&v73[8] = 2048;
    *&v73[10] = v18;
    _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%lu subscription context(s) and %lu plan item(s)", buf, 0x16u);
  }

  v19 = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  if ([v19 count] < 2)
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

  v27 = [MEMORY[0x277CBEB68] null];
  [v71 addObject:v27];

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
        v34 = [v32 userLabel];
        v35 = [v34 label];
        v36 = [v33 stringWithFormat:@"%@", v35];
        [v70 addObject:v36];

        v37 = MEMORY[0x277CCACA8];
        v38 = [v32 userLabel];
        v39 = [v38 label];
        v40 = [v37 stringWithFormat:@"%@", v39];
        [v22 addObject:v40];

        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
        [v71 addObject:v41];

        v42 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v32 userLabel];
          v44 = [v43 label];
          *buf = 138412546;
          *v73 = v44;
          *&v73[8] = 1024;
          *&v73[10] = v30;
          _os_log_impl(&dword_2658DE000, v42, OS_LOG_TYPE_DEFAULT, "Adding plan item %@ with value %d", buf, 0x12u);
        }
      }

      else
      {
        v42 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v32 userLabel];
          v46 = [v45 label];
          *buf = 67109378;
          *v73 = v30;
          *&v73[4] = 2112;
          *&v73[6] = v46;
          _os_log_impl(&dword_2658DE000, v42, OS_LOG_TYPE_DEFAULT, "Plan item %d (%@) is not selected", buf, 0x12u);
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

  v47 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v47, OS_LOG_TYPE_DEFAULT, "Adding additional plans", buf, 2u);
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
        v59 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v62 = [v49 userLabel];
          v63 = [v62 label];
          v64 = [v49 isSelected];
          v65 = [v49 isSelectable];
          *buf = 67109890;
          *v73 = v48;
          *&v73[4] = 2112;
          *&v73[6] = v63;
          *&v73[14] = 1024;
          *&v73[16] = v64;
          v74 = 1024;
          v75 = v65;
          _os_log_impl(&dword_2658DE000, v59, OS_LOG_TYPE_DEFAULT, "Plan item %d (%@) is selected (%d) or not selectable (%d)", buf, 0x1Eu);
        }
      }

      else
      {
        v50 = MEMORY[0x277CCACA8];
        v51 = [v49 userLabel];
        v52 = [v51 label];
        v53 = [v50 stringWithFormat:@"%@", v52];
        [v70 addObject:v53];

        v54 = MEMORY[0x277CCACA8];
        v55 = [v49 userLabel];
        v56 = [v55 label];
        v57 = [v54 stringWithFormat:@"%@", v56];
        [v22 addObject:v57];

        v58 = [MEMORY[0x277CCABB0] numberWithInteger:v48];
        [v71 addObject:v58];

        v59 = [(PSUICellularDataSpecifier *)self getLogger];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [v49 userLabel];
          v61 = [v60 label];
          *buf = v68;
          *v73 = v61;
          *&v73[8] = 1024;
          *&v73[10] = v48;
          _os_log_impl(&dword_2658DE000, v59, OS_LOG_TYPE_DEFAULT, "Adding plan item %@ with value %d", buf, 0x12u);
        }

        v31 = v69;
      }

      ++v48;
    }

    while ([(NSArray *)v28 count]> v48);
  }

LABEL_35:
  v66 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v73 = v31;
    _os_log_impl(&dword_2658DE000, v66, OS_LOG_TYPE_DEFAULT, "%d lines turned on", buf, 8u);
  }

  [(PSUICellularDataSpecifier *)self setValues:v71 titles:v70 shortTitles:v22];
LABEL_38:
  v67 = *MEMORY[0x277D85DE8];
}

- (void)setAirplaneMode:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "OFF";
    if (v3)
    {
      v6 = "ON";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Airplane mode is %s", &v8, 0xCu);
  }

  if (v3)
  {
    [(PSUICellularDataSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    [(PSUICellularDataSpecifier *)self removePropertyForKey:*MEMORY[0x277D3FF38]];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)isCellularDataEnabled:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled];
  v5 = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  v6 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "OFF";
    if (v4)
    {
      v8 = "ON";
    }

    else
    {
      v8 = "OFF";
    }

    if (v5)
    {
      v7 = "ON";
    }

    v12 = 136315394;
    v13 = v8;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Cellular data %s airplane mode %s", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v4 && !v5];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCellularDataEnabled:(id)a3 specifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 BOOLValue];
    v8 = @"OFF";
    if (v7)
    {
      v8 = @"ON";
    }

    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set cellular data switch to %@", &v13, 0xCu);
  }

  v9 = [v5 BOOLValue];
  if (v9 != [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled])
  {
    if ((v9 & 1) != 0 || ![(PSUICoreTelephonyCallCache *)self->_callCache isAnyVOIPCallActive])
    {
      [(PSUICellularDataSpecifier *)self setCellularDataSwitch:v9];
    }

    else
    {
      v10 = [(PSUICellularDataSpecifier *)self callEndConfirmationSpecifier];
      [v10 setConfirmationAction:sel_acceptedDataSwitch_];
      [v10 setProperty:v5 forKey:@"newValue"];
      WeakRetained = objc_loadWeakRetained(&self->_hostController);
      [WeakRetained showConfirmationViewForSpecifier:v10];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)acceptedDataSwitch:(id)a3
{
  v4 = a3;
  v5 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "User confirmed cellular data switch action", v8, 2u);
  }

  v6 = [v4 propertyForKey:@"newValue"];

  v7 = [v6 BOOLValue];
  [(PSUICellularDataSpecifier *)self setCellularDataSwitch:v7];
}

- (id)_isCellularDataEnabled:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled];
  v6 = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  v7 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "OFF";
    if (v5)
    {
      v9 = "ON";
    }

    else
    {
      v9 = "OFF";
    }

    if (v6)
    {
      v8 = "ON";
    }

    v19 = 136315394;
    v20 = v9;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Cellular data %s airplane mode %s", &v19, 0x16u);
  }

  if (v6 || !v5)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v11 = self->_cachedPlanItems;
    if ([(NSArray *)v11 count])
    {
      v12 = 0;
      v10 = 0;
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

          v10 = v16;
        }

        ++v12;
      }

      while ([(NSArray *)v11 count]> v12);
      if (v13 && self->_isMSOActive)
      {
        v13 = v13;

        v10 = v13;
      }
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_setCellularDataEnabled:(id)a3 specifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set cellular data switch to %@", &v13, 0xCu);
  }

  if (self->_isMSOActive)
  {
    v7 = [(PSUICellularDataSpecifier *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "MSO active, ignore cellular data switch", &v13, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  v8 = [MEMORY[0x277CBEB68] null];
  v9 = [v8 isEqual:v5];

  if (!v9)
  {
    v10 = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [v5 integerValue]);
    if (-[PSUICoreTelephonyDataCache isCellularDataEnabled](self->_dataCache, "isCellularDataEnabled") && [v10 isActiveDataPlan])
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
    [(PSUICellularDataSpecifier *)self _setCellularDataSwitch:v5];
    goto LABEL_20;
  }

  if (![(PSUICoreTelephonyDataCache *)self->_dataCache isCellularDataEnabled])
  {
    v7 = [(PSUICellularDataSpecifier *)self getLogger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_debug_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEBUG, "Cellular data is already off", &v13, 2u);
    }

    goto LABEL_19;
  }

  if (![(PSUICoreTelephonyCallCache *)self->_callCache isAnyVOIPCallActive])
  {
    goto LABEL_16;
  }

  v10 = [(PSUICellularDataSpecifier *)self callEndConfirmationSpecifier];
  [v10 setConfirmationAction:sel__acceptedDataSwitch_];
  [v10 setProperty:v5 forKey:@"newValue"];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained showConfirmationViewForSpecifier:v10];
LABEL_14:

LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_acceptedDataSwitch:(id)a3
{
  v4 = a3;
  v5 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "User confirmed cellular data switch action", v7, 2u);
  }

  v6 = [v4 propertyForKey:@"newValue"];

  [(PSUICellularDataSpecifier *)self _setCellularDataSwitch:v6];
}

- (void)_setCellularDataSwitch:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Setting cellular data switch to %@", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB68] null];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    [(PSUICoreTelephonyDataCache *)self->_dataCache setCellularDataEnabled:0];
  }

  else
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_cachedPlanItems, "objectAtIndexedSubscript:", [v4 integerValue]);
    [(PSUICoreTelephonyDataCache *)self->_dataCache setCellularDataEnabled:1];
    [(PSUICellularPlanManagerCache *)self->_planManagerCache setSelectedPlanItemForData:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)planItemForListItem:(id)a3
{
  v4 = a3;
  if ([v4 cellType] != 3)
  {
    goto LABEL_5;
  }

  v5 = [v4 values];
  v6 = [v5 firstObject];
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) != 0 || ([v4 values], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v9, -[NSArray count](self->_cachedPlanItems, "count") <= v11))
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

- (id)subscriptionContextForListItem:(id)a3
{
  v4 = [(PSUICellularDataSpecifier *)self planItemForListItem:a3];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache subscriptionContextForPlanItem:v4 cachedSubscriptionContexts:0];

  return v5;
}

- (id)callEndConfirmationSpecifier
{
  v3 = [(PSUIDeviceWiFiState *)self->_wifiState isConnectedOverWiFi];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"CELLULAR_DATA_ON_FACETIME_WIFI_WARNING_DISABLE";
  }

  else
  {
    v6 = @"CELLULAR_DATA_ON_FACETIME_WARNING_DISABLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_287733598 table:@"Cellular"];

  v8 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:&stru_287733598 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ON_CALL_CANCEL" value:&stru_287733598 table:@"Cellular"];
  [v9 setObject:v11 forKey:*MEMORY[0x277D3FE78]];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ON_CALL_OK_DISABLE" value:&stru_287733598 table:@"Cellular"];
  [v9 setObject:v13 forKey:*MEMORY[0x277D3FE88]];

  [v9 setObject:v7 forKey:*MEMORY[0x277D3FE90]];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISABLE_CELLULAR_DATA" value:&stru_287733598 table:@"Cellular"];
  [v9 setObject:v15 forKey:*MEMORY[0x277D3FE98]];

  [v8 setupWithDictionary:v9];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setProperty:v16 forKey:*MEMORY[0x277D3FE80]];

  [v8 setConfirmationCancelAction:sel_canceledDataSwitch_];

  return v8;
}

- (void)canceledDataSwitch:(id)a3
{
  v4 = [(PSUICellularDataSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled cellular data switch action", v8, 2u);
  }

  v5 = [(PSUICellularDataSpecifier *)self detailController];

  if (v5)
  {
    v6 = [(PSUICellularDataSpecifier *)self detailController];
    [v6 reloadSpecifiers];
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