@interface STAllowanceListController
- (STAllowanceListController)init;
- (id)_allAllowancesEnabled:(id)enabled;
- (id)_informativeTextWithDevices:(id)devices hasWatchOSDevices:(BOOL)sDevices;
- (id)_specifierForAllowance:(id)allowance;
- (id)_subtitleTextForAllowance:(id)allowance;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_adjustCellHeightForAllowanceSpecifier:(id)specifier;
- (void)_allowancesDidChange;
- (void)_devicesDidChange:(id)change coordinator:(id)coordinator;
- (void)_didFetchAppInfo:(id)info;
- (void)_hasWatchOSDevicesDidChange:(BOOL)change coordinator:(id)coordinator;
- (void)_reloadInformativeTextGroupSpecifierIfNeeded:(id)needed;
- (void)_setAllAllowancesEnabled:(id)enabled specifier:(id)specifier;
- (void)_showAllowanceDetailController:(id)controller;
- (void)_showConfirmDeletionView:(id)view;
- (void)addAllowance:(id)allowance;
- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance;
- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance;
- (void)confirmDeletion:(id)deletion;
- (void)dealloc;
- (void)deleteAllowance:(id)allowance;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)showStoreDemoAlert;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STAllowanceListController

- (STAllowanceListController)init
{
  v6.receiver = self;
  v6.super_class = STAllowanceListController;
  v2 = [(STPINListViewController *)&v6 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"AppLimitsSpecifierName" value:&stru_28766E5A8 table:0];
    [(STAllowanceListController *)v2 setTitle:v4];
  }

  return v2;
}

- (void)dealloc
{
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" context:"STAllowanceObservationContext"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevices" context:"STAllowanceObservationContext"];
  [(STRootViewModelCoordinator *)self->_coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"STAllowanceObservationContext"];
  v3.receiver = self;
  v3.super_class = STAllowanceListController;
  [(STListViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STAllowanceListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/APP_LIMITS"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"AppLimitsSpecifierName" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STAllowanceListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STAllowanceListController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" context:"STAllowanceObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.hasWatchOSDevices" context:"STAllowanceObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"usageDetailsCoordinator.devices" context:"STAllowanceObservationContext"];
  coordinator = self->_coordinator;
  self->_coordinator = coordinatorCopy;
  v6 = coordinatorCopy;

  [(STRootViewModelCoordinator *)v6 addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier" options:0 context:"STAllowanceObservationContext"];
  [(STRootViewModelCoordinator *)v6 addObserver:self forKeyPath:@"viewModel.hasWatchOSDevices" options:1 context:"STAllowanceObservationContext"];
  [(STRootViewModelCoordinator *)v6 addObserver:self forKeyPath:@"usageDetailsCoordinator.devices" options:1 context:"STAllowanceObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == "STAllowanceObservationContext")
  {
    if (![pathCopy isEqualToString:@"timeAllowancesCoordinator.viewModel.allowancesByIdentifier"])
    {
      if ([pathCopy isEqualToString:@"viewModel.hasWatchOSDevices"])
      {
        v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null = [MEMORY[0x277CBEB68] null];

        if (v13 == null)
        {

          v13 = 0;
        }

        -[STAllowanceListController _hasWatchOSDevicesDidChange:coordinator:](self, "_hasWatchOSDevicesDidChange:coordinator:", [v13 BOOLValue], objectCopy);
      }

      else
      {
        if (![pathCopy isEqualToString:@"usageDetailsCoordinator.devices"])
        {
          goto LABEL_3;
        }

        v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        null2 = [MEMORY[0x277CBEB68] null];

        if (v13 == null2)
        {

          v13 = 0;
        }

        [(STAllowanceListController *)self _devicesDidChange:v13 coordinator:objectCopy];
      }

      goto LABEL_3;
    }

    if ([(STAllowanceListController *)self isViewLoaded])
    {
      [(STAllowanceListController *)self _allowancesDidChange];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STAllowanceListController;
    [(STListViewController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_3:
}

- (void)_allowancesDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  [(STAllowanceListController *)self reloadSpecifiers];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allowanceSpecifiers = [(STAllowanceListController *)self allowanceSpecifiers];
  v4 = [allowanceSpecifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allowanceSpecifiers);
        }

        [(STAllowanceListController *)self _adjustCellHeightForAllowanceSpecifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allowanceSpecifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_hasWatchOSDevicesDidChange:(BOOL)change coordinator:(id)coordinator
{
  changeCopy = change;
  coordinatorCopy = coordinator;
  if ([(STAllowanceListController *)self isViewLoaded])
  {
    usageDetailsCoordinator = [coordinatorCopy usageDetailsCoordinator];
    devices = [usageDetailsCoordinator devices];
    v8 = [(STAllowanceListController *)self _informativeTextWithDevices:devices hasWatchOSDevices:changeCopy];

    [(STAllowanceListController *)self _reloadInformativeTextGroupSpecifierIfNeeded:v8];
  }
}

- (void)_devicesDidChange:(id)change coordinator:(id)coordinator
{
  changeCopy = change;
  coordinatorCopy = coordinator;
  if ([(STAllowanceListController *)self isViewLoaded])
  {
    viewModel = [coordinatorCopy viewModel];
    v8 = -[STAllowanceListController _informativeTextWithDevices:hasWatchOSDevices:](self, "_informativeTextWithDevices:hasWatchOSDevices:", changeCopy, [viewModel hasWatchOSDevices]);

    [(STAllowanceListController *)self _reloadInformativeTextGroupSpecifierIfNeeded:v8];
  }
}

- (void)_reloadInformativeTextGroupSpecifierIfNeeded:(id)needed
{
  neededCopy = needed;
  informativeTextGroupSpecifier = [(STAllowanceListController *)self informativeTextGroupSpecifier];
  v5 = *MEMORY[0x277D3FF88];
  v6 = [informativeTextGroupSpecifier objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  if (([v6 isEqualToString:neededCopy] & 1) == 0)
  {
    [informativeTextGroupSpecifier setObject:neededCopy forKeyedSubscript:v5];
    [(STAllowanceListController *)self reloadSpecifier:informativeTextGroupSpecifier animated:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allowanceSpecifiers = [(STAllowanceListController *)self allowanceSpecifiers];
  v6 = [allowanceSpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allowanceSpecifiers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [(STAllowanceListController *)self reloadSpecifier:v10 animated:0];
        [(STAllowanceListController *)self _adjustCellHeightForAllowanceSpecifier:v10];
      }

      v7 = [allowanceSpecifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STAllowanceListController.viewWillAppear", buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = STAllowanceListController;
  [(STAllowanceListController *)&v11 viewWillAppear:appearCopy];
}

- (void)_adjustCellHeightForAllowanceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40160]];
  v5 = +[STScreenTimeSettingsUIBundle bundle];
  v6 = [v5 localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];

  if ([v4 isEqualToString:v6])
  {
    [(STAllowanceListController *)self reloadSpecifier:specifierCopy animated:0];
  }
}

- (id)specifiers
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v50 = *MEMORY[0x277D3FC48];
    v54 = objc_opt_new();
    st_emptyGroupSpecifier = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    coordinator = [(STAllowanceListController *)self coordinator];
    usageDetailsCoordinator = [coordinator usageDetailsCoordinator];
    devices = [usageDetailsCoordinator devices];
    viewModel = [coordinator viewModel];
    v7 = -[STAllowanceListController _informativeTextWithDevices:hasWatchOSDevices:](self, "_informativeTextWithDevices:hasWatchOSDevices:", devices, [viewModel hasWatchOSDevices]);
    [st_emptyGroupSpecifier setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(STAllowanceListController *)self setInformativeTextGroupSpecifier:st_emptyGroupSpecifier];
    [v54 addObject:st_emptyGroupSpecifier];
    st_emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
    v53 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = MEMORY[0x277D3FAD8];
    v9 = [v53 localizedStringForKey:@"AddLimitSpecifierName" value:&stru_28766E5A8 table:0];
    v56 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:objc_opt_class()];

    [v56 setButtonAction:sel_addAllowance_];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *MEMORY[0x277D400B8];
    [v56 setObject:v11 forKeyedSubscript:*MEMORY[0x277D400B8]];

    v13 = *MEMORY[0x277D401C0];
    [v56 setObject:&unk_28769CF38 forKeyedSubscript:*MEMORY[0x277D401C0]];
    [v56 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      [v56 setButtonAction:sel_showStoreDemoAlert];
    }

    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel2 = [timeAllowancesCoordinator viewModel];
    allowancesByIdentifier = [viewModel2 allowancesByIdentifier];

    if ([allowancesByIdentifier count])
    {
      v16 = MEMORY[0x277D3FAD8];
      v17 = [v53 localizedStringForKey:@"EnableAllAppLimitsSpecifierName" value:&stru_28766E5A8 table:0];
      v48 = [v16 preferenceSpecifierNamed:v17 target:self set:sel__setAllAllowancesEnabled_specifier_ get:sel__allAllowancesEnabled_ detail:0 cell:6 edit:objc_opt_class()];

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v48 setObject:v19 forKeyedSubscript:v12];

      [v48 setObject:&unk_28769CF38 forKeyedSubscript:v13];
      v20 = MEMORY[0x277CBEC38];
      [v48 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
      [v48 setObject:v20 forKeyedSubscript:0x287675A48];
      [(STAllowanceListController *)self setEnableAllAllowancesSpecifier:v48];
      [v54 addObject:v48];
      coordinator2 = [(STAllowanceListController *)self coordinator];
      timeAllowancesCoordinator2 = [coordinator2 timeAllowancesCoordinator];
      viewModel3 = [timeAllowancesCoordinator2 viewModel];
      allAllowancesEnabled = [viewModel3 allAllowancesEnabled];

      if (allAllowancesEnabled)
      {
        st_emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] st_emptyGroupSpecifier];
        [v54 addObject:st_emptyGroupSpecifier3];

        v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(allowancesByIdentifier, "count")}];
        v69 = 0;
        v70 = &v69;
        v71 = 0x3032000000;
        v72 = __Block_byref_object_copy_;
        v73 = __Block_byref_object_dispose_;
        v74 = 0;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __39__STAllowanceListController_specifiers__block_invoke;
        v65[3] = &unk_279B7CB58;
        v65[4] = self;
        v27 = v26;
        v66 = v27;
        v47 = v54;
        v67 = v47;
        v68 = &v69;
        [allowancesByIdentifier enumerateKeysAndObjectsUsingBlock:v65];
        [(STAllowanceListController *)self setAllowanceSpecifiers:v27];
        v46 = v27;
        mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
        [(STAllowanceListController *)self allowanceSpecifiersByBundleIdentifier];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v29 = v62 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
        if (v30)
        {
          v31 = *v62;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v62 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v61 + 1) + 8 * i);
              v34 = [v70[5] objectForKeyedSubscript:v33];
              v35 = v34 == 0;

              if (v35)
              {
                [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:v33];
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
          }

          while (v30);
        }

        [(STAllowanceListController *)self setAllowanceSpecifiersByBundleIdentifier:v70[5]];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v36 = v70[5];
        v37 = [v36 countByEnumeratingWithState:&v57 objects:v75 count:16];
        if (v37)
        {
          v38 = *v58;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v58 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = *(*(&v57 + 1) + 8 * j);
              v41 = [v29 objectForKeyedSubscript:v40];
              v42 = v41 == 0;

              if (v42)
              {
                [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFetchAppInfo_ bundleIdentifier:v40];
              }
            }

            v37 = [v36 countByEnumeratingWithState:&v57 objects:v75 count:16];
          }

          while (v37);
        }

        [v47 addObject:st_emptyGroupSpecifier2];
        [v47 addObject:v56];

        _Block_object_dispose(&v69, 8);
      }

      v43 = v54;
    }

    else
    {
      v43 = v54;
      [v54 addObject:st_emptyGroupSpecifier2];
      [v54 addObject:v56];
    }

    v44 = *(&self->super.super.super.super.super.super.super.isa + v50);
    *(&self->super.super.super.super.super.super.super.isa + v50) = v43;

    v3 = *(&self->super.super.super.super.super.super.super.isa + v50);
  }

  return v3;
}

void __39__STAllowanceListController_specifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) _specifierForAllowance:v4];
  [*(a1 + 40) addObject:v5];
  [*(a1 + 48) addObject:v5];
  v6 = [v4 bundleIdentifiers];
  if ([v6 count])
  {
    v18 = v4;
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v15];
          if (v16)
          {
            v17 = v16;
            [v16 addObject:v5];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v5, 0}];
            [*(*(*(a1 + 56) + 8) + 40) setObject:v17 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = v18;
  }
}

- (id)_informativeTextWithDevices:(id)devices hasWatchOSDevices:(BOOL)sDevices
{
  sDevicesCopy = sDevices;
  devicesCopy = devices;
  v6 = devicesCopy;
  if (sDevicesCopy && [devicesCopy count])
  {
    v7 = +[STScreenTimeSettingsUIBundle bundle];
    v8 = [v7 localizedStringForKey:@"AppLimitsFooterFormat" value:&stru_28766E5A8 table:0];

    v9 = [v6 valueForKeyPath:@"name"];
    v10 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v9];
    v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, v10];
  }

  else
  {
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v11 = [v8 localizedStringForKey:@"AppLimitsFooterText" value:&stru_28766E5A8 table:0];
  }

  return v11;
}

- (void)_setAllAllowancesEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  coordinator = [(STAllowanceListController *)self coordinator];
  if ([coordinator isPasscodeEnabled] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__STAllowanceListController__setAllAllowancesEnabled_specifier___block_invoke_81;
    v10[3] = &unk_279B7CBA0;
    v12 = bOOLValue;
    v10[4] = self;
    v11 = &__block_literal_global;
    [(STPINListViewController *)self showPINSheet:specifierCopy completion:v10];
  }

  else
  {
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    [timeAllowancesCoordinator saveAllAllowancesEnabled:bOOLValue completionHandler:&__block_literal_global];
  }
}

void __64__STAllowanceListController__setAllAllowancesEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __64__STAllowanceListController__setAllAllowancesEnabled_specifier___block_invoke_cold_1();
    }
  }
}

void __64__STAllowanceListController__setAllAllowancesEnabled_specifier___block_invoke_81(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [*(a1 + 32) coordinator];
    v4 = [v5 timeAllowancesCoordinator];
    [v4 saveAllAllowancesEnabled:*(a1 + 48) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = [*(a1 + 32) enableAllAllowancesSpecifier];
    [v2 reloadSpecifier:? animated:?];
  }
}

- (id)_allAllowancesEnabled:(id)enabled
{
  coordinator = [(STAllowanceListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  viewModel = [timeAllowancesCoordinator viewModel];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(viewModel, "allAllowancesEnabled")}];

  return v6;
}

- (id)_specifierForAllowance:(id)allowance
{
  v4 = MEMORY[0x277D4B928];
  allowanceCopy = allowance;
  categoryIdentifiers = [allowanceCopy categoryIdentifiers];
  bundleIdentifiers = [allowanceCopy bundleIdentifiers];
  webDomains = [allowanceCopy webDomains];
  v9 = [v4 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers webDomains:webDomains];

  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
  identifier = [allowanceCopy identifier];
  [v10 setUserInfo:identifier];

  [v10 setControllerLoadAction:sel__showAllowanceDetailController_];
  [v10 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v12 = [(STAllowanceListController *)self _subtitleTextForAllowance:allowanceCopy];
  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40160]];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v10 setObject:&unk_28769CF38 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  timeByDay = [allowanceCopy timeByDay];

  if (timeByDay)
  {
    v16 = +[STScreenTimeSettingsUIBundle bundle];
    v17 = [v16 localizedStringForKey:@"AllowanceCustomScheduleDetailText" value:&stru_28766E5A8 table:0];
    [v10 setObject:v17 forKeyedSubscript:0x287678E68];

    [v10 setObject:&unk_28769CF50 forKeyedSubscript:0x287678E88];
  }

  return v10;
}

- (id)_subtitleTextForAllowance:(id)allowance
{
  allowanceCopy = allowance;
  if ([allowanceCopy allowanceEnabled])
  {
    scheduleText = [allowanceCopy scheduleText];
  }

  else
  {
    v5 = +[STScreenTimeSettingsUIBundle bundle];
    scheduleText = [v5 localizedStringForKey:@"AppLimitOff" value:&stru_28766E5A8 table:0];
  }

  return scheduleText;
}

- (void)_showAllowanceDetailController:(id)controller
{
  controllerCopy = controller;
  if (![(STAllowanceListController *)self shouldShowConfirmDeletionAlert])
  {
    coordinator = [(STAllowanceListController *)self coordinator];
    v5 = [[STAllowanceDetailListController alloc] initWithCoordinator:coordinator];
    userInfo = [controllerCopy userInfo];
    timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
    viewModel = [timeAllowancesCoordinator viewModel];
    allowancesByIdentifier = [viewModel allowancesByIdentifier];
    v10 = [allowancesByIdentifier objectForKeyedSubscript:userInfo];
    [(STAllowanceDetailListController *)v5 setAllowance:v10];

    [(STAllowanceDetailListController *)v5 setDelegate:self];
    [(STAllowanceDetailListController *)v5 setParentController:self];
    rootController = [(STAllowanceListController *)self rootController];
    [(STAllowanceDetailListController *)v5 setRootController:rootController];

    [(STAllowanceDetailListController *)v5 setSpecifier:controllerCopy];
    [(STAllowanceListController *)self showController:v5 animate:1];
  }
}

- (void)addAllowance:(id)allowance
{
  allowanceCopy = allowance;
  v5 = MEMORY[0x277CBEBF8];
  [allowanceCopy setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:0x28766E8C8];
  [allowanceCopy setObject:v5 forKeyedSubscript:0x28766E8E8];
  [allowanceCopy setObject:v5 forKeyedSubscript:0x28766E908];
  coordinator = [(STAllowanceListController *)self coordinator];
  [allowanceCopy setObject:coordinator forKeyedSubscript:0x287675C48];

  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 localizedStringForKey:@"AllowanceNextBarButtonItemTitle" value:&stru_28766E5A8 table:0];

  [allowanceCopy setObject:v8 forKeyedSubscript:0x28766E928];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __42__STAllowanceListController_addAllowance___block_invoke;
  v19 = &unk_279B7C948;
  selfCopy = self;
  v21 = allowanceCopy;
  v9 = allowanceCopy;
  v10 = _Block_copy(&v16);
  v11 = _Block_copy(v10);
  [v9 setObject:v11 forKeyedSubscript:{0x28766E948, v16, v17, v18, v19, selfCopy}];

  v12 = objc_opt_new();
  [v12 setParentController:self];
  rootController = [(STAllowanceListController *)self rootController];
  [v12 setRootController:rootController];

  [v12 setSpecifier:v9];
  v14 = objc_opt_new();
  [v14 setParentController:v12];
  rootController2 = [v12 rootController];
  [v14 setRootController:rootController2];

  [v14 setSpecifier:v9];
  [v12 showController:v14];
  [(STAllowanceListController *)self showController:v12];
}

void __42__STAllowanceListController_addAllowance___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v16 = objc_opt_new();
  [v16 setBundleIdentifiers:v11];

  [v16 setWebDomains:v10];
  [v16 setCategoryIdentifiers:v9];

  v13 = [*(a1 + 32) coordinator];
  [v16 setBehaviorType:{objc_msgSend(v13, "isPasscodeEnabled")}];
  v14 = [[STAllowanceDetailListController alloc] initWithCoordinator:v13];
  [(STAllowanceDetailListController *)v14 setDelegate:*(a1 + 32)];
  [(STAllowanceDetailListController *)v14 setAllowance:v16];
  [(STAllowanceDetailListController *)v14 setIsSetupController:1];
  [(STAllowanceDetailListController *)v14 setUseBackButton:1];
  [(STAllowanceDetailListController *)v14 setCreatingNewAllowance:1];
  [(STAllowanceDetailListController *)v14 setParentController:v12];
  v15 = [v12 rootController];
  [(STAllowanceDetailListController *)v14 setRootController:v15];

  [(STAllowanceDetailListController *)v14 setSpecifier:*(a1 + 40)];
  [v12 showController:v14 animate:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STAllowanceListController *)self specifierAtIndexPath:pathCopy];
  if (v8)
  {
    allowanceSpecifiers = [(STAllowanceListController *)self allowanceSpecifiers];
    v10 = [allowanceSpecifiers containsObject:v8];

    if (v10)
    {
      [(STAllowanceListController *)self setShouldShowConfirmDeletionAlert:0];
    }
  }

  v11.receiver = self;
  v11.super_class = STAllowanceListController;
  [(STPINListViewController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(STAllowanceListController *)self specifierAtIndexPath:path];
  if (v5 && (-[STAllowanceListController allowanceSpecifiers](self, "allowanceSpecifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v5], v6, v7))
  {
    v8 = 1;
    [(STAllowanceListController *)self setShouldShowConfirmDeletionAlert:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = [(STAllowanceListController *)self indexForIndexPath:path];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v7];
    v9 = v8;
    if (style == 1)
    {
      v10 = v8;
      v8 = [(STAllowanceListController *)self confirmDeletion:v8];
      v9 = v10;
    }

    MEMORY[0x2821F96F8](v8, v9);
  }
}

- (void)confirmDeletion:(id)deletion
{
  deletionCopy = deletion;
  coordinator = [(STAllowanceListController *)self coordinator];
  if ([coordinator isPasscodeEnabled] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__STAllowanceListController_confirmDeletion___block_invoke;
    v6[3] = &unk_279B7CA40;
    v6[4] = self;
    v7 = deletionCopy;
    [(STPINListViewController *)self showPINSheet:v7 completion:v6];
  }

  else
  {
    [(STAllowanceListController *)self _showConfirmDeletionView:deletionCopy];
  }
}

uint64_t __45__STAllowanceListController_confirmDeletion___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _showConfirmDeletionView:*(result + 40)];
  }

  return result;
}

- (void)_showConfirmDeletionView:(id)view
{
  v16[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = objc_opt_new();
  v6 = +[STScreenTimeSettingsUIBundle bundle];
  v15[0] = *MEMORY[0x277D3FE98];
  v7 = [v6 localizedStringForKey:@"AllowanceDeleteSpecifierName" value:&stru_28766E5A8 table:0];
  v16[0] = v7;
  v15[1] = *MEMORY[0x277D3FE90];
  v8 = [v6 localizedStringForKey:@"AllowanceDeletionPrompt" value:&stru_28766E5A8 table:0];
  v16[1] = v8;
  v15[2] = *MEMORY[0x277D3FE88];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v10 = @"ConfirmationTitleDelete";
  }

  else
  {
    v10 = @"AllowanceDeleteSpecifierName";
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_28766E5A8 table:0];
  v16[2] = v11;
  v15[3] = *MEMORY[0x277D3FE78];
  v12 = [v6 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v16[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v5 setupWithDictionary:v13];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FE80]];
  userInfo = [viewCopy userInfo];

  [v5 setUserInfo:userInfo];
  [v5 setTarget:self];
  [v5 setConfirmationAction:sel_deleteAllowance_];
  [(STAllowanceListController *)self showConfirmationViewForSpecifier:v5];
  [(STAllowanceListController *)self setShouldShowConfirmDeletionAlert:0];
}

- (void)deleteAllowance:(id)allowance
{
  allowanceCopy = allowance;
  coordinator = [(STAllowanceListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];

  userInfo = [allowanceCopy userInfo];

  viewModel = [timeAllowancesCoordinator viewModel];
  allowancesByIdentifier = [viewModel allowancesByIdentifier];
  v10 = [allowancesByIdentifier objectForKeyedSubscript:userInfo];

  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__STAllowanceListController_deleteAllowance___block_invoke;
    v11[3] = &unk_279B7CBC8;
    v11[4] = self;
    v12 = userInfo;
    [timeAllowancesCoordinator deleteAllowance:v10 completionHandler:v11];
  }
}

void __45__STAllowanceListController_deleteAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __45__STAllowanceListController_deleteAllowance___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) removeSpecifierID:*(a1 + 40) animated:1];
}

- (void)allowanceDetailController:(id)controller didSaveAllowance:(id)allowance
{
  controllerCopy = controller;
  allowanceCopy = allowance;
  coordinator = [(STAllowanceListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__STAllowanceListController_allowanceDetailController_didSaveAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v12 = controllerCopy;
  selfCopy = self;
  v10 = controllerCopy;
  [timeAllowancesCoordinator saveAllowance:allowanceCopy completionHandler:v11];
}

void __72__STAllowanceListController_allowanceDetailController_didSaveAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __72__STAllowanceListController_allowanceDetailController_didSaveAllowance___block_invoke_cold_1();
    }
  }

  if ([*(a1 + 32) isSetupController])
  {
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }

  v5 = [*(a1 + 32) specifier];
  [v5 removePropertyForKey:0x28766E948];
}

- (void)allowanceDetailController:(id)controller didDeleteAllowance:(id)allowance
{
  controllerCopy = controller;
  allowanceCopy = allowance;
  coordinator = [(STAllowanceListController *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__STAllowanceListController_allowanceDetailController_didDeleteAllowance___block_invoke;
  v11[3] = &unk_279B7CBC8;
  v11[4] = self;
  v12 = controllerCopy;
  v10 = controllerCopy;
  [timeAllowancesCoordinator deleteAllowance:allowanceCopy completionHandler:v11];
}

void __74__STAllowanceListController_allowanceDetailController_didDeleteAllowance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog persistence];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __45__STAllowanceListController_deleteAllowance___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) popViewControllerAnimated:1];
  v5 = [*(a1 + 40) specifier];
  [v5 removePropertyForKey:0x28766E948];
}

- (void)_didFetchAppInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  userInfo = [info userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4BC40]];

  allowanceSpecifiersByBundleIdentifier = [(STAllowanceListController *)self allowanceSpecifiersByBundleIdentifier];
  v25 = v5;
  bundleIdentifier = [v5 bundleIdentifier];
  v8 = [allowanceSpecifiersByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v27 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        userInfo2 = [v12 userInfo];
        if (!userInfo2)
        {
          [(STAllowanceListController *)a2 _didFetchAppInfo:v12];
        }

        coordinator = [(STAllowanceListController *)self coordinator];
        timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
        viewModel = [timeAllowancesCoordinator viewModel];
        allowancesByIdentifier = [viewModel allowancesByIdentifier];
        v18 = [allowancesByIdentifier objectForKeyedSubscript:userInfo2];

        v19 = MEMORY[0x277D4B928];
        categoryIdentifiers = [v18 categoryIdentifiers];
        bundleIdentifiers = [v18 bundleIdentifiers];
        webDomains = [v18 webDomains];
        v23 = [v19 displayNameForUsageLimitWithCategoryIdentifiers:categoryIdentifiers bundleIdentifiers:bundleIdentifiers webDomains:webDomains];
        [v12 setName:v23];

        if ([(STAllowanceListController *)self containsSpecifier:v12])
        {
          [(STAllowanceListController *)self reloadSpecifier:v12];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)showStoreDemoAlert
{
  alertControllerForFeatureNotAvailable = [MEMORY[0x277D75110] alertControllerForFeatureNotAvailable];
  [(STAllowanceListController *)self presentViewController:alertControllerForFeatureNotAvailable animated:1 completion:0];
}

- (void)_didFetchAppInfo:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STAllowanceListController.m" lineNumber:542 description:{@"Unexpected allowance specifier without an identifier: %@", a3}];
}

@end