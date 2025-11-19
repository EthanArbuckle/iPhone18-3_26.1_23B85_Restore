@interface STCloudSyncDataGroupSpecifierProvider
- (STCloudSyncDataGroupSpecifierProvider)init;
- (id)cloudSyncData:(id)a3;
- (void)_updateEnabledValue;
- (void)changeCloudSyncData:(BOOL)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performHSA2RepairIfNeeded:(id)a3;
- (void)presentHSA2RepairUI:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCloudSyncData:(id)a3 specifier:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)setScreenTimeSyncing:(BOOL)a3;
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
    v6 = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

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

    v14 = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [v14 addObject:v13];
    v15 = [MEMORY[0x277D262A0] sharedConnection];

    [v15 registerObserver:v3];
    [(STCloudSyncDataGroupSpecifierProvider *)v3 _updateEnabledValue];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.canToggleCloudSyncData" context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.canToggleCloudSyncData" options:4 context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.isCloudSyncEnabled" options:4 context:"STCloudSyncDataGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 == "STCloudSyncDataGroupSpecifierProviderObservationContext")
  {
    [(STRootGroupSpecifierProvider *)self coordinator];

    if ([v10 isEqualToString:@"viewModel.canToggleCloudSyncData"])
    {
      v11 = [MEMORY[0x277D262A0] sharedConnection];
      v12 = [v11 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      v13 = [(STRootGroupSpecifierProvider *)self coordinator];
      v14 = [v13 viewModel];
      v15 = [v14 canToggleCloudSyncData] ^ 1;
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

      if (![v10 isEqualToString:@"viewModel.isCloudSyncEnabled"])
      {
        goto LABEL_11;
      }

      v13 = [(STGroupSpecifierProvider *)self groupSpecifier];
      [(STGroupSpecifierProvider *)self reloadSpecifier:v13 animated:1];
    }

    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = STCloudSyncDataGroupSpecifierProvider;
  [(STCloudSyncDataGroupSpecifierProvider *)&v17 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
LABEL_11:
}

- (void)setCloudSyncData:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STRootGroupSpecifierProvider *)self coordinator];
  if ([v8 isPasscodeEnabled] && (objc_msgSend(v8, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__STCloudSyncDataGroupSpecifierProvider_setCloudSyncData_specifier___block_invoke;
    v9[3] = &unk_279B7CA40;
    v9[4] = self;
    v10 = v6;
    [(STGroupSpecifierProvider *)self showPINSheet:v7 completion:v9];
  }

  else
  {
    -[STCloudSyncDataGroupSpecifierProvider changeCloudSyncData:](self, "changeCloudSyncData:", [v6 BOOLValue]);
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

- (void)changeCloudSyncData:(BOOL)a3
{
  if (a3)
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

- (void)setScreenTimeSyncing:(BOOL)a3
{
  v3 = a3;
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v4 setScreenTimeSyncingEnabled:v3 completionHandler:&__block_literal_global_3];
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

- (void)performHSA2RepairIfNeeded:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBC218];
  v6 = [MEMORY[0x277CBC218] remotemanagement_mirroringContainerIdentifier];
  v7 = [v5 containerWithIdentifier:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__STCloudSyncDataGroupSpecifierProvider_performHSA2RepairIfNeeded___block_invoke;
  v9[3] = &unk_279B7D0B8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
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

- (void)presentHSA2RepairUI:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 aida_accountForPrimaryiCloudAccount];
  v7 = [v6 aa_altDSID];

  v8 = [objc_alloc(MEMORY[0x277CFDAE8]) initWithAltDSID:v7];
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
  v19 = self;
  v20 = v4;
  v13 = v4;
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

- (id)cloudSyncData:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "isCloudSyncEnabled")}];

  return v6;
}

- (void)_updateEnabledValue
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v5 = [(STCloudSyncDataGroupSpecifierProvider *)self toggleCloudSyncDataSpecifier];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  [(STCloudSyncDataGroupSpecifierProvider *)self _updateEnabledValue:a3];
  v5 = [(STCloudSyncDataGroupSpecifierProvider *)self toggleCloudSyncDataSpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:v5 animated:1];

  v6 = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v11 = [(STRootGroupSpecifierProvider *)self coordinator];
  v8 = [v11 viewModel];
  v9 = [v8 canToggleCloudSyncData] ^ 1;
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