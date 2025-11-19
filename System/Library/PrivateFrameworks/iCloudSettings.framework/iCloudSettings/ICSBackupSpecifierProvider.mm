@interface ICSBackupSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ACAccount)account;
- (BOOL)_shouldShowBackupSpecifier;
- (ICSBackupSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_dataclassState:(id)a3;
- (id)_iCloudBackupSpecifier;
- (id)_loadSpecifierProviderWithClassName:(id)a3 inBundle:(id)a4;
- (void)_backupSpecifierWasTapped:(id)a3;
- (void)_showBackupController:(id)a3;
@end

@implementation ICSBackupSpecifierProvider

- (ICSBackupSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICSBackupSpecifierProvider;
  v9 = [(ICSBackupSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_listController, v8);
  }

  return v10;
}

- (NSArray)specifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [(ICSBackupSpecifierProvider *)self _iCloudBackupSpecifier];
    v5 = v4;
    if (v4)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = self->_specifiers;
      self->_specifiers = v6;
    }

    specifiers = self->_specifiers;
  }

  v8 = *MEMORY[0x277D85DE8];

  return specifiers;
}

- (ACAccount)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (id)_iCloudBackupSpecifier
{
  if ([(ICSBackupSpecifierProvider *)self _shouldShowBackupSpecifier])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ICLOUD_BACKUP_SPECIFIER_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
    v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__dataclassState_ detail:0 cell:2 edit:0];

    [v6 setControllerLoadAction:sel__backupSpecifierWasTapped_];
    [v6 setObject:@"BACKUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v7 = [ICSDefaultIconLoader tableIconWithType:0];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BACKUP_CELL_LABEL" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v6 setName:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowBackupSpecifier
{
  v3 = [(ICSBackupSpecifierProvider *)self account];
  v4 = [v3 aa_isAccountClass:*MEMORY[0x277CEC678]];

  if (v4)
  {
    return 0;
  }

  v6 = [(ICSBackupSpecifierProvider *)self account];
  v7 = [v6 isProvisionedForDataclass:*MEMORY[0x277CB8920]];

  return v7;
}

- (id)_dataclassState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 specifierProvider:self isDataclassAvailableForSpecifier:v4];

    if (v8)
    {
      v9 = [(ICSBackupSpecifierProvider *)self account];
      v10 = [v9 isEnabledForDataclass:*MEMORY[0x277CB8920]];

      if (v10)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"ON";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = LogSubsystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ICSPhotoStreamSpecifierProvider *)&self->_delegate _isPhotoStreamEnabled:v14];
    }
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = v11;
  v13 = @"OFF";
LABEL_9:
  v15 = [v11 localizedStringForKey:v13 value:&stru_288487370 table:@"Localizable-AppleID"];

  return v15;
}

- (void)_backupSpecifierWasTapped:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__ICSBackupSpecifierProvider__backupSpecifierWasTapped___block_invoke;
    v8[3] = &unk_27A666A38;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v7 validateDataclassAccessForProvider:self specifier:v9 completion:v8];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

void __56__ICSBackupSpecifierProvider__backupSpecifierWasTapped___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = WeakRetained;
    [WeakRetained _showBackupController:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (void)_showBackupController:(id)a3
{
  v11 = a3;
  v4 = objc_alloc(MEMORY[0x277D7F470]);
  v5 = [(ICSBackupSpecifierProvider *)self account];
  v6 = [v4 initWithAccount:v5];

  if (v6)
  {
    [v6 setSpecifier:v11];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [v6 setParentController:WeakRetained];

    v8 = objc_loadWeakRetained(&self->_listController);
    v9 = [v8 rootController];
    [v6 setRootController:v9];

    v10 = objc_loadWeakRetained(&self->_listController);
    [v10 showController:v6 animate:1];
  }
}

- (id)_loadSpecifierProviderWithClassName:(id)a3 inBundle:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = NSClassFromString(v6);
  if ([(objc_class *)v8 conformsToProtocol:&unk_2884BC2B8])
  {
    v9 = [[v8 alloc] initWithAccountManager:self->_accountManager];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [v9 setDelegate:WeakRetained];
  }

  else
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543874;
      v15 = self;
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&dword_275819000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load %{public}@ from bundle: %{public}@", &v14, 0x20u);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end