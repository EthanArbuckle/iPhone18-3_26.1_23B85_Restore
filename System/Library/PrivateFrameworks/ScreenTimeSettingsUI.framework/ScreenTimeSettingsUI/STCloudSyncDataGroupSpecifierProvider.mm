@interface STCloudSyncDataGroupSpecifierProvider
- (STCloudSyncDataGroupSpecifierProvider)init;
- (id)cloudSyncData:(id)data;
- (void)_updateEnabledValue;
- (void)changeCloudSyncData:(BOOL)data;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performHSA2RepairIfNeeded:(id)needed;
- (void)presentHSA2RepairUI:(id)i;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCloudSyncData:(id)data specifier:(id)specifier;
- (void)setCoordinator:(id)coordinator;
- (void)setScreenTimeSyncing:(BOOL)syncing;
@end

@implementation STCloudSyncDataGroupSpecifierProvider

- (STCloudSyncDataGroupSpecifierProvider)init
{
  v17.receiver = self;
  v17.super_class = STCloudSyncDataGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"CloudSyncDataFooterText" value:&stru_28766E5A8 table:0];
    groupSpecifier = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [groupSpecifier setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v7 = [v4 localizedStringForKey:@"CloudSyncDataSpecifierName" value:&stru_28766E5A8 table:0];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v3 set:sel_setCloudSyncData_specifier_ get:sel_cloudSyncData_ detail:0 cell:6 edit:0];
    [v8 setEditPaneClass:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D400B8]];

    [v8 setObject:&unk_28769D070 forKeyedSubscript:*MEMORY[0x277D401C0]];
    v11 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
    [v8 setObject:v11 forKeyedSubscript:0x287675A48];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    toggleCloudSyncDataSpecifier = v3->_toggleCloudSyncDataSpecifier;
    v3->_toggleCloudSyncDataSpecifier = v8;
    v13 = v8;

    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [mutableSpecifiers addObject:v13];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];

    [mEMORY[0x277D262A0] registerObserver:v3];
    [(STCloudSyncDataGroupSpecifierProvider *)v3 _updateEnabledValue];
  }

  return v3;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canToggleCloudSyncData" context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canToggleCloudSyncData" options:4 context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" options:4 context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == "STCloudSyncDataGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([pathCopy isEqualToString:@"viewModel.canToggleCloudSyncData"])
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v12 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
      viewModel = [coordinator viewModel];
      v15 = [viewModel canToggleCloudSyncData] ^ 1;
      if (v12 == 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:v16];
    }

    else
    {
      [(STRootGroupSpecifierProvider *)self coordinator];

      if (![pathCopy isEqualToString:@"viewModel.isCloudSyncEnabled"])
      {
        goto LABEL_11;
      }

      coordinator = [(STGroupSpecifierProvider *)self groupSpecifier];
      [(STGroupSpecifierProvider *)self reloadSpecifier:coordinator animated:1];
    }

    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STCloudSyncDataGroupSpecifierProvider *)&v17 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_11:
}

- (void)setCloudSyncData:(id)data specifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  if ([coordinator isPasscodeEnabled] && (objc_msgSend(coordinator, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__STCloudSyncDataGroupSpecifierProvider_setCloudSyncData_specifier___block_invoke;
    v9[3] = &unk_279B7CA40;
    v9[4] = self;
    v10 = dataCopy;
    [(STGroupSpecifierProvider *)self showPINSheet:specifierCopy completion:v9];
  }

  else
  {
    -[STCloudSyncDataGroupSpecifierProvider changeCloudSyncData:](self, "changeCloudSyncData:", [dataCopy BOOLValue]);
  }
}

void __68__STCloudSyncDataGroupSpecifierProvider_setCloudSyncData_specifier___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [v2 changeCloudSyncData:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
    v4 = [*(a1 + 32) coordinator];
    [v4 setHasAlreadyEnteredPINForSession:0];
  }

  else
  {
    v4 = [*(a1 + 32) toggleCloudSyncDataSpecifier];
    [v2 reloadSpecifier:? animated:?];
  }
}

- (void)changeCloudSyncData:(BOOL)data
{
  if (data)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __61__STCloudSyncDataGroupSpecifierProvider_changeCloudSyncData___block_invoke;
    v4[3] = &unk_279B7D090;
    v4[4] = self;
    v5 = 1;
    [(STCloudSyncDataGroupSpecifierProvider *)self performHSA2RepairIfNeeded:v4];
  }

  else
  {

    [(STCloudSyncDataGroupSpecifierProvider *)self setScreenTimeSyncing:?];
  }
}

void __61__STCloudSyncDataGroupSpecifierProvider_changeCloudSyncData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [*(a1 + 32) toggleCloudSyncDataSpecifier];
    [v2 reloadSpecifier:v5 animated:1];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 setScreenTimeSyncing:v3];
  }
}

- (void)setScreenTimeSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator setScreenTimeSyncingEnabled:syncingCopy completionHandler:&__block_literal_global_3];
}

void __62__STCloudSyncDataGroupSpecifierProvider_setScreenTimeSyncing___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __62__STCloudSyncDataGroupSpecifierProvider_setScreenTimeSyncing___block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)performHSA2RepairIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = MEMORY[0x277CBC218];
  remotemanagement_mirroringContainerIdentifier = [MEMORY[0x277CBC218] remotemanagement_mirroringContainerIdentifier];
  v7 = [v5 containerWithIdentifier:remotemanagement_mirroringContainerIdentifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__STCloudSyncDataGroupSpecifierProvider_performHSA2RepairIfNeeded___block_invoke;
  v9[3] = &unk_279B7D0B8;
  v9[4] = self;
  v10 = neededCopy;
  v8 = neededCopy;
  [v7 accountInfoWithCompletionHandler:v9];
}

void __67__STCloudSyncDataGroupSpecifierProvider_performHSA2RepairIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STUILog persistence];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __67__STCloudSyncDataGroupSpecifierProvider_performHSA2RepairIfNeeded___block_invoke_cold_1(v5, v6);
    }
  }

  else if ([a2 supportsDeviceToDeviceEncryption])
  {
    v7 = +[STUILog persistence];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_INFO, "Not performing HSA2 repair because device is already ready", v10, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v6[2].isa)(v6, 0);
      }

      else
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __STUICallCompletionHandlerOnMainThread_block_invoke;
        v10[3] = &unk_279B7D130;
        v9 = v6;
        v11 = 0;
        v12 = v9;
        dispatch_async(MEMORY[0x277D85CD0], v10);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = _Block_copy(*(a1 + 40));
    [v8 performSelectorOnMainThread:sel_presentHSA2RepairUI_ withObject:v6 waitUntilDone:0];
  }
}

- (void)presentHSA2RepairUI:(id)i
{
  iCopy = i;
  v5 = objc_opt_new();
  aida_accountForPrimaryiCloudAccount = [v5 aida_accountForPrimaryiCloudAccount];
  aa_altDSID = [aida_accountForPrimaryiCloudAccount aa_altDSID];

  v8 = [objc_alloc(MEMORY[0x277CFDAE8]) initWithAltDSID:aa_altDSID];
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = [v9 localizedStringForKey:@"CloudSyncDataFeatureName" value:&stru_28766E5A8 table:0];
  [v8 setFeatureName:v10];

  v11 = [[STSpinnerViewController alloc] initWithNibName:0 bundle:0];
  v12 = +[STUILog persistence];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, v12, OS_LOG_TYPE_DEFAULT, "Performing HSA2 repair", buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke;
  v16[3] = &unk_279B7D108;
  v17 = v8;
  v18 = v11;
  selfCopy = self;
  v20 = iCopy;
  v13 = iCopy;
  v14 = v11;
  v15 = v8;
  [(STGroupSpecifierProvider *)self presentViewController:v14 animated:1 completion:v16];
}

void __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentingViewController:*(a1 + 40)];
  v2 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:*(a1 + 32)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke_2;
  v5[3] = &unk_279B7D0E0;
  v4 = *(a1 + 40);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 56);
  [v2 performDeviceToDeviceEncryptionStateRepairWithCompletion:v5];
}

void __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) dismissViewControllerAnimated:1];
  if (v4)
  {
    v5 = +[STUILog persistence];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke_2_cold_1(v4, v5);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)cloudSyncData:(id)data
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(viewModel, "isCloudSyncEnabled")}];

  return v6;
}

- (void)_updateEnabledValue
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  toggleCloudSyncDataSpecifier = [(STCloudSyncDataGroupSpecifierProvider *)self toggleCloudSyncDataSpecifier];
  [toggleCloudSyncDataSpecifier setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  [(STCloudSyncDataGroupSpecifierProvider *)self _updateEnabledValue:notification];
  toggleCloudSyncDataSpecifier = [(STCloudSyncDataGroupSpecifierProvider *)self toggleCloudSyncDataSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:toggleCloudSyncDataSpecifier animated:1];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v9 = [viewModel canToggleCloudSyncData] ^ 1;
  if (v7 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v10];
}

void __62__STCloudSyncDataGroupSpecifierProvider_setScreenTimeSyncing___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to toggle screen time syncing: %{public}@", &v2, 0xCu);
}

void __67__STCloudSyncDataGroupSpecifierProvider_performHSA2RepairIfNeeded___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch CloudKit account: %{public}@", &v2, 0xCu);
}

void __61__STCloudSyncDataGroupSpecifierProvider_presentHSA2RepairUI___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to perform HSA2 repair: %{public}@", &v2, 0xCu);
}

@end