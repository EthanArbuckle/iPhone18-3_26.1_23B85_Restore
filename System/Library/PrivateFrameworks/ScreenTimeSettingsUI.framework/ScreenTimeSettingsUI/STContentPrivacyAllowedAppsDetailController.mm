@interface STContentPrivacyAllowedAppsDetailController
- (STContentPrivacyAllowedAppsDetailController)init;
- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label;
- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label iconAppBundleID:(id)d;
- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label iconUTTypeID:(id)d;
- (id)getItemSpecifierValue:(id)value;
- (id)nameForInstalledSystemApp:(id)app;
- (id)specifiers;
- (void)_addBlacklistAppSpecifier:(id)specifier bundleID:(id)d;
- (void)_addBooleanAppSpecifier:(id)specifier configuration:(id)configuration key:(id)key bundleID:(id)d;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setItemSpecifierValue:(id)value specifier:(id)specifier;
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
  coordinator = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLoaded = [viewModel isLoaded];

  if (isLoaded)
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = objc_opt_new();
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AADC_AllowedAppsAndFeaturesSpecifierHeader"];
    v11 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
    v12 = [v7 localizedStringForKey:v10 value:&stru_28766E5A8 table:v11];
    [st_emptyGroupSpecifier setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v8 addObject:st_emptyGroupSpecifier];
    st_emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:st_emptyGroupSpecifier2];

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

    st_emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    [v8 addObject:st_emptyGroupSpecifier3];

    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowiTunes" bundleID:@"com.apple.MobileStore"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"media.settings" key:@"allowBookstore" bundleID:@"com.apple.iBooks"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowPodcasts" bundleID:@"com.apple.podcasts"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBooleanAppSpecifier:v8 configuration:@"legacy.restrictions.apps" key:@"allowNews" bundleID:@"com.apple.news"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.Health"];
    [(STContentPrivacyAllowedAppsDetailController *)self _addBlacklistAppSpecifier:v8 bundleID:@"com.apple.Fitness"];
    coordinator2 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
    contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
    LOBYTE(v14) = [contentPrivacyCoordinator2 areRestrictionsEditable];

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

- (id)getItemSpecifierValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];

  restrictionType = [v5 restrictionType];
  valuesByRestriction = [viewModel valuesByRestriction];
  v11 = [valuesByRestriction objectForKeyedSubscript:v5];
  v12 = v11;
  if (restrictionType == 2)
  {

    v13 = [valueCopy objectForKeyedSubscript:0x287672668];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "containsObject:", v13) ^ 1}];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if (v11)
  {
    v14 = v11;
    v13 = v14;
    v12 = valuesByRestriction;
    goto LABEL_5;
  }

  v15 = [viewModel defaultValueForRestriction:v5];
  v13 = 0;
  v12 = valuesByRestriction;
LABEL_6:

  return v15;
}

- (void)setItemSpecifierValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v8 = [specifierCopy objectForKeyedSubscript:0x287672648];
  coordinator = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];

  viewModel = [contentPrivacyCoordinator viewModel];
  v12 = valueCopy;
  v13 = v12;
  if ([v8 restrictionType] == 2)
  {
    valuesByRestriction = [viewModel valuesByRestriction];
    v15 = [valuesByRestriction objectForKeyedSubscript:v8];
    v16 = v15;
    v17 = MEMORY[0x277CBEBF8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [specifierCopy objectForKeyedSubscript:0x287672668];
    v20 = [MEMORY[0x277CBEB58] setWithArray:v18];

    if ([v12 BOOLValue])
    {
      [v20 removeObject:v19];
    }

    else
    {
      [v20 addObject:v19];
    }

    allObjects = [v20 allObjects];
    v13 = [allObjects sortedArrayUsingSelector:sel_compare_];
  }

  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__STContentPrivacyAllowedAppsDetailController_setItemSpecifierValue_specifier___block_invoke;
    v27[3] = &unk_279B7D2E8;
    v28 = contentPrivacyCoordinator;
    v29 = v13;
    v30 = v8;
    selfCopy = self;
    v32 = specifierCopy;
    v22 = specifierCopy;
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
    v26 = specifierCopy;
    v24 = specifierCopy;
    [contentPrivacyCoordinator saveRestrictionValue:v13 forItem:v8 completionHandler:v25];
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

- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label iconUTTypeID:(id)d
{
  dCopy = d;
  v11 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:configuration key:key fallbackLabel:label];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v11 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3FFD8]];

  return v11;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label iconAppBundleID:(id)d
{
  dCopy = d;
  v11 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:configuration key:key fallbackLabel:label];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v11 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D40008]];

  return v11;
}

- (id)defaultSwitchSpecifierWithConfiguration:(id)configuration key:(id)key fallbackLabel:(id)label
{
  labelCopy = label;
  keyCopy = key;
  configurationCopy = configuration;
  coordinator = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  v14 = [viewModel visibleRestrictionWithConfiguration:configurationCopy key:keyCopy];

  v15 = +[STScreenTimeSettingsUIBundle restrictionsStringsTable];
  v16 = +[STScreenTimeSettingsUIBundle bundle];
  uiLabel = [v14 uiLabel];
  v27 = labelCopy;
  if ([uiLabel length])
  {
    v18 = [v16 localizedStringForKey:uiLabel value:&stru_28766E5A8 table:v15];
  }

  else
  {
    v18 = labelCopy;
  }

  v19 = v18;
  v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v18 target:self set:sel_setItemSpecifierValue_specifier_ get:sel_getItemSpecifierValue_ detail:0 cell:6 edit:0];
  v21 = MEMORY[0x277CCABB0];
  coordinator2 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator];
  contentPrivacyCoordinator2 = [coordinator2 contentPrivacyCoordinator];
  viewModel2 = [contentPrivacyCoordinator2 viewModel];
  v25 = [v21 numberWithBool:{objc_msgSend(viewModel2, "restrictionsEnabled")}];
  [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [v20 setObject:v14 forKeyedSubscript:0x287672648];

  return v20;
}

- (id)nameForInstalledSystemApp:(id)app
{
  v10 = *MEMORY[0x277D85DE8];
  appCopy = app;
  mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
  v5 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:appCopy localOnly:1];

  if ([v5 source] == 2)
  {
    displayName = [v5 displayName];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = appCopy;
      _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "System app %@ is not installed, not showing restriction switch", &v8, 0xCu);
    }

    displayName = 0;
  }

  return displayName;
}

- (void)_addBooleanAppSpecifier:(id)specifier configuration:(id)configuration key:(id)key bundleID:(id)d
{
  specifierCopy = specifier;
  configurationCopy = configuration;
  keyCopy = key;
  dCopy = d;
  v13 = [(STContentPrivacyAllowedAppsDetailController *)self nameForInstalledSystemApp:dCopy];
  if (v13)
  {
    v14 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:configurationCopy key:keyCopy fallbackLabel:v13 iconAppBundleID:dCopy];
    [specifierCopy addObject:v14];
  }
}

- (void)_addBlacklistAppSpecifier:(id)specifier bundleID:(id)d
{
  specifierCopy = specifier;
  dCopy = d;
  v7 = [(STContentPrivacyAllowedAppsDetailController *)self nameForInstalledSystemApp:dCopy];
  if (v7)
  {
    v8 = [(STContentPrivacyAllowedAppsDetailController *)self defaultSwitchSpecifierWithConfiguration:@"legacy.restrictions.apps" key:@"blacklistedAppBundleIDs" fallbackLabel:v7 iconAppBundleID:dCopy];
    [v8 setObject:dCopy forKeyedSubscript:0x287672668];
    [specifierCopy addObject:v8];
  }
}

- (void)dealloc
{
  contentPrivacyCoordinator = [(STRootViewModelCoordinator *)self->_coordinator contentPrivacyCoordinator];
  [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"AllowedAppsViewModelLoadedContext"];

  v4.receiver = self;
  v4.super_class = STContentPrivacyAllowedAppsDetailController;
  [(STContentPrivacyAllowedAppsDetailController *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = self->_coordinator;
  if (coordinator != coordinatorCopy)
  {
    v9 = coordinatorCopy;
    contentPrivacyCoordinator = [(STRootViewModelCoordinator *)coordinator contentPrivacyCoordinator];
    [contentPrivacyCoordinator removeObserver:self forKeyPath:@"viewModel.isLoaded" context:@"AllowedAppsViewModelLoadedContext"];

    objc_storeStrong(&self->_coordinator, coordinator);
    contentPrivacyCoordinator2 = [(STRootViewModelCoordinator *)self->_coordinator contentPrivacyCoordinator];
    [contentPrivacyCoordinator2 addObserver:self forKeyPath:@"viewModel.isLoaded" options:0 context:@"AllowedAppsViewModelLoadedContext"];

    coordinatorCopy = v9;
  }

  MEMORY[0x2821F96F8](coordinator, coordinatorCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"AllowedAppsViewModelLoadedContext")
  {
    v7 = [(STContentPrivacyAllowedAppsDetailController *)self coordinator:path];
    contentPrivacyCoordinator = [v7 contentPrivacyCoordinator];
    viewModel = [contentPrivacyCoordinator viewModel];
    isLoaded = [viewModel isLoaded];

    if (isLoaded)
    {

      [(STContentPrivacyAllowedAppsDetailController *)self reloadSpecifiers];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STContentPrivacyAllowedAppsDetailController;
    [(STContentPrivacyAllowedAppsDetailController *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)didCancelEnteringPIN
{
  [(PSListController *)self st_didCancelEnteringPIN];

  [(STContentPrivacyAllowedAppsDetailController *)self reloadSpecifiers];
}

@end