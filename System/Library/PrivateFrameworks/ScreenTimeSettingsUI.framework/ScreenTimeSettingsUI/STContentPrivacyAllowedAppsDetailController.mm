@interface STContentPrivacyAllowedAppsDetailController
- (STContentPrivacyAllowedAppsDetailController)init;
- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5;
- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5 iconAppBundleID:(id)a6;
- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5 iconUTTypeID:(id)a6;
- (id)getItemSpecifierValue:(id)a3;
- (id)nameForInstalledSystemApp:(id)a3;
- (id)specifiers;
- (void)_addBlacklistAppSpecifier:(id)a3 bundleID:(id)a4;
- (void)_addBooleanAppSpecifier:(id)a3 configuration:(id)a4 key:(id)a5 bundleID:(id)a6;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4;
@end

@implementation STContentPrivacyAllowedAppsDetailController

- (STContentPrivacyAllowedAppsDetailController)init
{
  v7.receiver = self;
  v7.super_class = STContentPrivacyAllowedAppsDetailController;
  v2 = [(STContentPrivacyAllowedAppsDetailController *)&v7 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"AADC_AllowedAppsAndFeaturesSpecifierName" value:&stru_28766E5A8 table:v3];
    [(STContentPrivacyAllowedAppsDetailController *)v2 setTitle:v5];
  }

  return v2;
}

- (id)specifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  v4 = [v3 contentPrivacyCoordinator];
  v5 = [v4 viewModel];
  v6 = [v5 isLoaded];

  if (v6)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AADC_AllowedAppsAndFeaturesSpecifierHeader"];
    v11 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v12 = [v7 localizedStringForKey:v10 value:&stru_28766E5A8 table:v11];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v8 addObject:v9];
    v13 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:v13];

    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.mobilemail"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowSafari" bundleID:@"com.apple.mobilesafari"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowVideoConferencing" bundleID:@"com.apple.facetime"];
    v14 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v15 = [v7 localizedStringForKey:@"SharePlaySpecifierName" value:&stru_28766E5A8 table:v14];
    v16 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:@"legacy.restrictions.apps" key:@"allowGroupActivity" fallbackLabel:v15 iconUTTypeID:@"com.apple.graphic-icon.shareplay"];
    [v8 addObject:v16];

    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"system.camera" key:@"allowCamera" bundleID:@"com.apple.camera"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.Passbook"];
    v17 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:@"system.airdrop" key:@"allowAirDrop" fallbackLabel:0 iconUTTypeID:@"com.apple.graphic-icon.airdrop"];
    [v8 addObject:v17];

    v18 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:@"system.carplay" key:@"allowVehicleUI" fallbackLabel:0 iconUTTypeID:@"com.apple.graphic-icon.carplay"];
    [v8 addObject:v18];

    v19 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:v19];

    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowiTunes" bundleID:@"com.apple.MobileStore"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"media.settings" key:@"allowBookstore" bundleID:@"com.apple.iBooks"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowPodcasts" bundleID:@"com.apple.podcasts"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowNews" bundleID:@"com.apple.news"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.Health"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.Fitness"];
    v20 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
    v21 = [v20 contentPrivacyCoordinator];
    LOBYTE(v14) = [v21 areRestrictionsEditable];

    if ((v14 & 1) == 0)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v8;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v35;
        v26 = *MEMORY[0x277D3FF38];
        v27 = MEMORY[0x277CBEC28];
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v34 + 1) + 8 * i) setObject:v27 forKeyedSubscript:{v26, v34}];
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v24);
      }
    }

    v29 = [v8 copy];
    v30 = *MEMORY[0x277D3FC48];
    v31 = *(&self->super.super.super.super.super.isa + v30);
    *(&self->super.super.super.super.super.isa + v30) = v29;

    v32 = *(&self->super.super.super.super.super.isa + v30);
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  return v32;
}

- (id)getItemSpecifierValue:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:0x287672648];
  v6 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  v7 = [v6 contentPrivacyCoordinator];
  v8 = [v7 viewModel];

  v9 = [v5 restrictionType];
  v10 = [v8 valuesByRestriction];
  v11 = [v10 objectForKeyedSubscript:v5];
  v12 = v11;
  if (v9 == 2)
  {

    v13 = [v4 objectForKeyedSubscript:0x287672668];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "containsObject:", v13) ^ 1}];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if (v11)
  {
    v14 = v11;
    v13 = v14;
    v12 = v10;
    goto LABEL_5;
  }

  v15 = [v8 defaultValueForRestriction:v5];
  v13 = 0;
  v12 = v10;
LABEL_6:

  return v15;
}

- (void)setItemSpecifierValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:0x287672648];
  v9 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  v10 = [v9 contentPrivacyCoordinator];

  v11 = [v10 viewModel];
  v12 = v6;
  v13 = v12;
  if ([v8 restrictionType] == 2)
  {
    v14 = [v11 valuesByRestriction];
    v15 = [v14 objectForKeyedSubscript:v8];
    v16 = v15;
    v17 = MEMORY[0x277CBEBF8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v7 objectForKeyedSubscript:0x287672668];
    v20 = [MEMORY[0x277CBEB58] setWithArray:v18];

    if ([v12 BOOLValue])
    {
      [v20 removeObject:v19];
    }

    else
    {
      [v20 addObject:v19];
    }

    v21 = [v20 allObjects];
    v13 = [v21 sortedArrayUsingSelector:sel_compare_];
  }

  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__STContentPrivacyAllowedAppsDetailController_setItemSpecifierValue_specifier___block_invoke;
    v27[3] = &unk_279B7D2E8;
    v28 = v10;
    v29 = v13;
    v30 = v8;
    v31 = self;
    v32 = v7;
    v22 = v7;
    [(PSListController *)self st_showPINSheetWithCompletion:v27];

    v23 = v28;
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__STContentPrivacyAllowedAppsDetailController_setItemSpecifierValue_specifier___block_invoke_3;
    v25[3] = &unk_279B7CBC8;
    v25[4] = self;
    v26 = v7;
    v24 = v7;
    [v10 saveRestrictionValue:v13 forItem:v8 completionHandler:v25];
    v23 = v26;
  }
}

void __79__STContentPrivacyAllowedAppsDetailController_setItemSpecifierValue_specifier___block_invoke(void *a1, int a2)
{
  if (a2)
  {
    v2 = a1[4];
    v3 = a1[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__STContentPrivacyAllowedAppsDetailController_setItemSpecifierValue_specifier___block_invoke_2;
    v6[3] = &unk_279B7CBC8;
    v4 = a1[6];
    v5 = a1[8];
    v6[4] = a1[7];
    v7 = v5;
    [v2 saveRestrictionValue:v3 forItem:v4 completionHandler:v6];
  }
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5 iconUTTypeID:(id)a6
{
  v10 = a6;
  v11 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:a3 key:a4 fallbackLabel:a5];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FFD8]];

  return v11;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5 iconAppBundleID:(id)a6
{
  v10 = a6;
  v11 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:a3 key:a4 fallbackLabel:a5];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D40008]];

  return v11;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)a3 key:(id)a4 fallbackLabel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  v12 = [v11 contentPrivacyCoordinator];
  v13 = [v12 viewModel];
  v14 = [v13 visibleRestrictionWithConfiguration:v10 key:v9];

  v15 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v16 = +[STScreenTimeSettingsUIBundle bundle];
  v17 = [v14 uiLabel];
  v27 = v8;
  if ([v17 length])
  {
    v18 = [v16 localizedStringForKey:v17 value:&stru_28766E5A8 table:v15];
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:0 cell:6 edit:0];
  v21 = MEMORY[0x277CCABB0];
  v22 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  v23 = [v22 contentPrivacyCoordinator];
  v24 = [v23 viewModel];
  v25 = [v21 numberWithBool:{objc_msgSend(v24, "restrictionsEnabled")}];
  [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v20 setObject:v14 forKeyedSubscript:0x287672648];

  return v20;
}

- (id)nameForInstalledSystemApp:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D4B8C0] sharedCache];
  v5 = [v4 appInfoForBundleIdentifier:v3 localOnly:1];

  if ([v5 source] == 2)
  {
    v6 = [v5 displayName];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "System app %@ is not installed, not showing restriction switch", &v8, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_addBooleanAppSpecifier:(id)a3 configuration:(id)a4 key:(id)a5 bundleID:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(STContentPrivacyAllowedAppsDetailController *)self nameForInstalledSystemApp:v12];
  if (v13)
  {
    v14 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:v10 key:v11 fallbackLabel:v13 iconAppBundleID:v12];
    [v15 addObject:v14];
  }
}

- (void)_addBlacklistAppSpecifier:(id)a3 bundleID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(STContentPrivacyAllowedAppsDetailController *)self nameForInstalledSystemApp:v6];
  if (v7)
  {
    v8 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:@"legacy.restrictions.apps" key:@"blacklistedAppBundleIDs" fallbackLabel:v7 iconAppBundleID:v6];
    [v8 setObject:v6 forKeyedSubscript:0x287672668];
    [v9 addObject:v8];
  }
}

- (void)dealloc
{
  v3 = [(STRootViewModelCoordinator *)self->_coordinator contentPrivacyCoordinator];
  [v3 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"AllowedAppsViewModelLoadedContext"];

  v4.receiver = self;
  v4.super_class = STContentPrivacyAllowedAppsDetailController;
  [(STContentPrivacyAllowedAppsDetailController *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v5 = a3;
  coordinator = self->_coordinator;
  if (coordinator != v5)
  {
    v9 = v5;
    v7 = [(STRootViewModelCoordinator *)coordinator contentPrivacyCoordinator];
    [v7 removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"AllowedAppsViewModelLoadedContext"];

    objc_storeStrong(&self->_coordinator, a3);
    v8 = [(STRootViewModelCoordinator *)self->_coordinator contentPrivacyCoordinator];
    [v8 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"AllowedAppsViewModelLoadedContext"];

    v5 = v9;
  }

  MEMORY[0x2821F96F8](coordinator, v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"AllowedAppsViewModelLoadedContext")
  {
    v7 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator:a3];
    v8 = [v7 contentPrivacyCoordinator];
    v9 = [v8 viewModel];
    v10 = [v9 isLoaded];

    if (v10)
    {

      [(STContentPrivacyAllowedAppsDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STContentPrivacyAllowedAppsDetailController;
    [(STContentPrivacyAllowedAppsDetailController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)didCancelEnteringPIN
{
  [(PSListController *)self st_didCancelEnteringPIN];

  [(STContentPrivacyAllowedAppsDetailController *)self reloadSpecifiers];
}

@end