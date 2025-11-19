@interface ICSAppsSyncingToDriveSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSAppsSyncingToDriveSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_specifiersForAppsSyncingToDrive;
- (id)account;
- (void)_fetchServerApps;
- (void)_reloadSpecifier;
- (void)setDelegate:(id)a3;
@end

@implementation ICSAppsSyncingToDriveSpecifierProvider

- (ICSAppsSyncingToDriveSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = ICSAppsSyncingToDriveSpecifierProvider;
  v9 = [(ICSAppsSyncingToDriveSpecifierProvider *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    v11 = objc_alloc(MEMORY[0x277D7F338]);
    v12 = [(AIDAAccountManager *)v10->_accountManager accounts];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v14 = [v11 initWithAccount:v13];
    datacontroller = v10->_datacontroller;
    v10->_datacontroller = v14;

    v16 = [[ICSUbiquitySpecifierProvider alloc] initWithAccountManager:v10->_accountManager];
    ubiquitySpecifierProvider = v10->_ubiquitySpecifierProvider;
    v10->_ubiquitySpecifierProvider = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    serverApps = v10->_serverApps;
    v10->_serverApps = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    appsSyncingToDriveBundleIDs = v10->_appsSyncingToDriveBundleIDs;
    v10->_appsSyncingToDriveBundleIDs = v20;

    objc_storeWeak(&v10->_listController, v8);
    v10->_isAppsSyncToDriveRequestInProgress = 0;
  }

  return v10;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  v3 = [(ICSAppsSyncingToDriveSpecifierProvider *)self _specifiersForAppsSyncingToDrive];
  specifiers = self->_specifiers;
  self->_specifiers = v3;

  v5 = self->_specifiers;

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_delegate, v5);
  [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider setDelegate:v5];

  [(ICSAppsSyncingToDriveSpecifierProvider *)self _fetchServerApps];
}

- (id)_specifiersForAppsSyncingToDrive
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableSet *)self->_appsSyncingToDriveBundleIDs count])
  {
    v4 = [(ICSUbiquitySpecifierProvider *)self->_ubiquitySpecifierProvider specifiers];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __74__ICSAppsSyncingToDriveSpecifierProvider__specifiersForAppsSyncingToDrive__block_invoke;
    v10 = &unk_27A666120;
    v11 = self;
    v12 = v3;
    [v4 enumerateObjectsUsingBlock:&v7];
  }

  v5 = [v3 copy];

  return v5;
}

void __74__ICSAppsSyncingToDriveSpecifierProvider__specifiersForAppsSyncingToDrive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6 = v3;
  v5 = [v3 identifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)_reloadSpecifier
{
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:0];
}

- (void)_fetchServerApps
{
  [(NSMutableSet *)self->_serverApps removeAllObjects];
  self->_isAppsSyncToDriveRequestInProgress = 1;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  v4 = [(ICSAppsSyncingToDriveSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke;
  v6[3] = &unk_27A6661C0;
  v6[4] = self;
  [v5 fetchAppsSyncingToiCloudDriveWithCompletion:v6];
}

void __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 48) removeAllObjects];
  *(*(a1 + 32) + 56) = 0;
  v7 = LogSubsystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Apps Syncing To Drive : %@", buf, 0xCu);
    }

    v9 = [v5 apps];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_53;
    v14[3] = &unk_27A666148;
    v14[4] = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v14];

    v10 = [*(*(a1 + 32) + 24) specifiers];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_55;
    v13[3] = &unk_27A666170;
    v13[4] = *(a1 + 32);
    [v10 enumerateObjectsUsingBlock:v13];

    [*(*(a1 + 32) + 48) intersectSet:*(*(a1 + 32) + 40)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_2;
    block[3] = &unk_27A666198;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_53(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 label];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "App from server %@", &v11, 0xCu);
  }

  v6 = *(*(a1 + 32) + 40);
  v7 = [v3 containerID];
  [v6 addObject:v7];

  v8 = *(*(a1 + 32) + 40);
  v9 = [v3 bundleIds];
  [v8 addObjectsFromArray:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_55(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__ICSAppsSyncingToDriveSpecifierProvider__fetchServerApps__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Apps Syncing To Drive error : %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end