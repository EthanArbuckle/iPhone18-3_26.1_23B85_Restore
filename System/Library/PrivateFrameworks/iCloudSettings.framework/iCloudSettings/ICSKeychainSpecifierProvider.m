@interface ICSKeychainSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSKeychainSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)_keychainSyncStateForSpecifier:(id)a3;
- (id)_specifierForKeychainSync;
- (id)account;
- (void)_keychainSyncStateDidChange;
- (void)_refreshKeychainState;
- (void)_registerForKeychainSyncStatusChangeNotification;
- (void)dealloc;
@end

@implementation ICSKeychainSpecifierProvider

- (ICSKeychainSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSKeychainSpecifierProvider;
  v6 = [(ICSKeychainSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
    v7->_keychainStatus = 0;
    v7->_keychainStatusFetchInProgress = 0;
    [(ICSKeychainSpecifierProvider *)v7 _registerForKeychainSyncStatusChangeNotification];
  }

  return v7;
}

- (void)dealloc
{
  [(ICSKeychainSpecifierProvider *)self _stopListeningForKeychainSyncStatusChangeNotification];
  v3.receiver = self;
  v3.super_class = ICSKeychainSpecifierProvider;
  [(ICSKeychainSpecifierProvider *)&v3 dealloc];
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [(ICSKeychainSpecifierProvider *)self _specifierForKeychainSync];
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

- (id)_specifierForKeychainSync
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E40]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"KEYCHAIN_SPECIFIER_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
    v5 = [v6 preferenceSpecifierNamed:v8 target:self set:0 get:sel__keychainSyncStateForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v5 setObject:@"com.apple.Passwords" forKeyedSubscript:*MEMORY[0x277D40008]];
    v9 = *MEMORY[0x277CB89C0];
    [v5 setObject:*MEMORY[0x277CB89C0] forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v5 setObject:v9 forKeyedSubscript:@"com.apple.accountsui.dataclass"];
  }

  return v5;
}

- (id)_keychainSyncStateForSpecifier:(id)a3
{
  v5 = a3;
  keychainStatus = self->_keychainStatus;
  if (keychainStatus == 2)
  {
    v7 = @"ON";
  }

  else if (keychainStatus == 1)
  {
    v7 = @"OFF";
  }

  else
  {
    if (keychainStatus)
    {
      goto LABEL_8;
    }

    [(ICSKeychainSpecifierProvider *)self _refreshKeychainState];
    v7 = @"LOADING_CELL";
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v8 localizedStringForKey:v7 value:&stru_288487370 table:@"Localizable-AppleID"];

LABEL_8:

  return v3;
}

- (void)_refreshKeychainState
{
  if (self->_keychainStatusFetchInProgress)
  {
    v2 = LogSubsystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Keychain status fetch is already in progress. Bailing!", buf, 2u);
    }
  }

  else
  {
    self->_keychainStatusFetchInProgress = 1;
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ICSKeychainSpecifierProvider__refreshKeychainState__block_invoke;
    block[3] = &unk_27A666198;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __53__ICSKeychainSpecifierProvider__refreshKeychainState__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ICSKeychainSyncController isKeychainSyncEnabled];
  *(*(a1 + 32) + 24) = 0;
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v2;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "isKeychainSyncEnabled: %d", buf, 8u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v2)
  {
    if (v5 != 2)
    {
      v6 = 2;
LABEL_8:
      *(v4 + 16) = v6;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__ICSKeychainSpecifierProvider__refreshKeychainState__block_invoke_79;
      block[3] = &unk_27A666198;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (v5 != 1)
  {
    v6 = 1;
    goto LABEL_8;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __53__ICSKeychainSpecifierProvider__refreshKeychainState__block_invoke_79(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  v4 = MEMORY[0x277CB89C0];
  if (v3)
  {
    v5 = *MEMORY[0x277CB89C0];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Reloading specifier with ID: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v8 reloadSpecifierForProvider:*(a1 + 32) identifier:*v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerForKeychainSyncStatusChangeNotification
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277CDBDA0];
  v4 = dispatch_get_global_queue(2, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke;
  handler[3] = &unk_27A6666B0;
  objc_copyWeak(&v12, &location);
  notify_register_dispatch(v3, &self->_keychainSyncNotificationToken, v4, handler);

  v5 = *MEMORY[0x277CDBE68];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke_2;
  v9[3] = &unk_27A6666B0;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v5, &self->_keychainSyncNotificationToken, v4, v9);

  v6 = *MEMORY[0x277CDBE78];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke_3;
  v7[3] = &unk_27A6666B0;
  objc_copyWeak(&v8, &location);
  notify_register_dispatch(v6, &self->_keychainSyncNotificationToken, v4, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStateDidChange];
}

void __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStateDidChange];
}

void __80__ICSKeychainSpecifierProvider__registerForKeychainSyncStatusChangeNotification__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStateDidChange];
}

- (void)_keychainSyncStateDidChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%@ received keychain sync state change notification.", &v7, 0xCu);
  }

  [(ICSKeychainSpecifierProvider *)self _refreshKeychainState];
  v6 = *MEMORY[0x277D85DE8];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end