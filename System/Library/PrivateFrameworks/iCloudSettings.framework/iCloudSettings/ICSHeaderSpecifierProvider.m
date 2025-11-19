@interface ICSHeaderSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSHeaderSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_valueForStorageGraphSpecifier:(id)a3;
- (id)account;
- (void)_fetchStorageSummary:(id)a3 completion:(id)a4;
- (void)_finishLoadingActiveSpecifier;
- (void)_reloadStorageSpecifiers;
- (void)_startObservingQuotaChangeNotifications;
- (void)_stopObservingQuotaChangeNotifications;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation ICSHeaderSpecifierProvider

- (ICSHeaderSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICSHeaderSpecifierProvider;
  v9 = [(ICSHeaderSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_listController, v8);
    [(ICSHeaderSpecifierProvider *)v10 _startObservingQuotaChangeNotifications];
  }

  return v10;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)dealloc
{
  [(ICSHeaderSpecifierProvider *)self _stopObservingQuotaChangeNotifications];
  v3.receiver = self;
  v3.super_class = ICSHeaderSpecifierProvider;
  [(ICSHeaderSpecifierProvider *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&self->_delegate, v4);
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (specifiers)
  {
    v3 = specifiers;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:v6];

    if (!self->_storageGraphSpecifier)
    {
      v7 = MEMORY[0x277D3FAD8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"ICLOUD_TITLE" value:&stru_288487370 table:@"CloudGroup"];
      v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel__valueForStorageGraphSpecifier_ detail:0 cell:-1 edit:0];
      storageGraphSpecifier = self->_storageGraphSpecifier;
      self->_storageGraphSpecifier = v10;

      [(PSSpecifier *)self->_storageGraphSpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_homeDataModel != 0];
    [(PSSpecifier *)self->_storageGraphSpecifier setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [(PSSpecifier *)self->_storageGraphSpecifier setIdentifier:@"iCloudStorageBarGraph"];
    [v5 addObject:self->_storageGraphSpecifier];
    v13 = [v5 copy];
    v14 = self->_specifiers;
    self->_specifiers = v13;

    v3 = self->_specifiers;
  }

  return v3;
}

- (id)_valueForStorageGraphSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC9E8]];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC9F0]];
  v8 = [v7 BOOLValue];

  homeDataModel = self->_homeDataModel;
  if (homeDataModel || (v6 & 1) != 0 || (v8 & 1) != 0)
  {
    if (homeDataModel)
    {
      v10 = [(ICSHomeDataModel *)homeDataModel headerCard];
      v11 = [v10 storageSummary];
      v12 = [v11 subscriptionLabel];
      [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40170]];

      v13 = MEMORY[0x277CCABB0];
      v14 = [(ICSHomeDataModel *)self->_homeDataModel headerCard];
      v15 = [v14 storageSummary];
      v16 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v15, "totalStorageInBytes")}];
      [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x277CEC9D0]];

      v17 = MEMORY[0x277CCABB0];
      v18 = [(ICSHomeDataModel *)self->_homeDataModel headerCard];
      v19 = [v18 storageSummary];
      v20 = [v17 numberWithUnsignedLongLong:{objc_msgSend(v19, "usedStorageInBytes")}];
      [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277CEC9E0]];
    }
  }

  else
  {
    [(ICSHeaderSpecifierProvider *)self _fetchStorageSummary:v4];
  }

  return 0;
}

- (void)_fetchStorageSummary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEC9E8];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEC9E8]];
  if ([v9 BOOLValue])
  {

LABEL_4:
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Already fetching cloud storage summary. Bailing.", buf, 2u);
    }

    goto LABEL_10;
  }

  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEC9F0]];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained specifierProvider:self willBeginLoadingSpecifier:v6];

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v14 = [ICSHomeDataController alloc];
  v15 = [(ICSHeaderSpecifierProvider *)self account];
  v28 = [(ICSHomeDataController *)v14 initWithAccount:v15];

  v16 = *(v24 + 5);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke;
  v17[3] = &unk_27A666538;
  objc_copyWeak(&v22, &location);
  v21 = buf;
  v18 = v6;
  v19 = self;
  v20 = v7;
  [v16 fetchiCloudHomeDataModelAllowingCache:1 completion:v17];

  objc_destroyWeak(&v22);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
LABEL_10:
}

void __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke_59;
    block[3] = &unk_27A666510;
    block[4] = WeakRetained;
    v17 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v18 = v9;
    v19 = v10;
    v20 = v6;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v21 = v11;
    v22 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke_cold_1(v13);
    }

    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }
}

void __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke_59(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CEC9E8]];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained specifierProvider:*(a1 + 56) didFinishLoadingSpecifier:*(a1 + 48)];
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 48);
    v5 = *MEMORY[0x277CEC9F0];
    v6 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = LogSubsystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke_59_cold_1(a1, v7);
    }

    v4 = *(a1 + 48);
    v5 = *MEMORY[0x277CEC9F0];
    v6 = MEMORY[0x277CBEC38];
  }

  [v4 setObject:v6 forKeyedSubscript:v5];
  [*(a1 + 56) _reloadStorageSpecifiers];
  v8 = *(a1 + 72);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 64));
  }

  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

- (void)_reloadStorageSpecifiers
{
  if (self->_storageGraphSpecifier)
  {
    v4 = [(ICSHeaderSpecifierProvider *)self delegate];
    v3 = [(PSSpecifier *)self->_storageGraphSpecifier identifier];
    [v4 reloadSpecifierForProvider:self identifier:v3];
  }
}

- (void)_finishLoadingActiveSpecifier
{
  if (self->_activeSpecifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained specifierProvider:self didFinishLoadingSpecifier:self->_activeSpecifier];

    activeSpecifier = self->_activeSpecifier;
    self->_activeSpecifier = 0;
  }
}

- (void)_startObservingQuotaChangeNotifications
{
  if (!self->_quotaChangeNotificationObserver)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__ICSHeaderSpecifierProvider__startObservingQuotaChangeNotifications__block_invoke;
    v7[3] = &unk_27A666378;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:@"QuotaDidChange" object:0 queue:v4 usingBlock:v7];
    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __69__ICSHeaderSpecifierProvider__startObservingQuotaChangeNotifications__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"QuotaDidChange";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchStorageSummary:0];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingQuotaChangeNotifications
{
  if (self->_quotaChangeNotificationObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_quotaChangeNotificationObserver];

    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = 0;
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke_59_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch iCloudHome data w/ error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end