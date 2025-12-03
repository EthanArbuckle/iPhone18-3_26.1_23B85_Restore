@interface ICSHeaderSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICSHeaderSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_valueForStorageGraphSpecifier:(id)specifier;
- (id)account;
- (void)_fetchStorageSummary:(id)summary completion:(id)completion;
- (void)_finishLoadingActiveSpecifier;
- (void)_reloadStorageSpecifiers;
- (void)_startObservingQuotaChangeNotifications;
- (void)_stopObservingQuotaChangeNotifications;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation ICSHeaderSpecifierProvider

- (ICSHeaderSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = ICSHeaderSpecifierProvider;
  v9 = [(ICSHeaderSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
    [(ICSHeaderSpecifierProvider *)v10 _startObservingQuotaChangeNotifications];
  }

  return v10;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)dealloc
{
  [(ICSHeaderSpecifierProvider *)self _stopObservingQuotaChangeNotifications];
  v3.receiver = self;
  v3.super_class = ICSHeaderSpecifierProvider;
  [(ICSHeaderSpecifierProvider *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&self->_delegate, delegateCopy);
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
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:emptyGroupSpecifier];

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

- (id)_valueForStorageGraphSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277CEC9E8]];
  bOOLValue = [v5 BOOLValue];

  v7 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277CEC9F0]];
  bOOLValue2 = [v7 BOOLValue];

  homeDataModel = self->_homeDataModel;
  if (homeDataModel || (bOOLValue & 1) != 0 || (bOOLValue2 & 1) != 0)
  {
    if (homeDataModel)
    {
      headerCard = [(ICSHomeDataModel *)homeDataModel headerCard];
      storageSummary = [headerCard storageSummary];
      subscriptionLabel = [storageSummary subscriptionLabel];
      [specifierCopy setObject:subscriptionLabel forKeyedSubscript:*MEMORY[0x277D40170]];

      v13 = MEMORY[0x277CCABB0];
      headerCard2 = [(ICSHomeDataModel *)self->_homeDataModel headerCard];
      storageSummary2 = [headerCard2 storageSummary];
      v16 = [v13 numberWithUnsignedLongLong:{objc_msgSend(storageSummary2, "totalStorageInBytes")}];
      [specifierCopy setObject:v16 forKeyedSubscript:*MEMORY[0x277CEC9D0]];

      v17 = MEMORY[0x277CCABB0];
      headerCard3 = [(ICSHomeDataModel *)self->_homeDataModel headerCard];
      storageSummary3 = [headerCard3 storageSummary];
      v20 = [v17 numberWithUnsignedLongLong:{objc_msgSend(storageSummary3, "usedStorageInBytes")}];
      [specifierCopy setObject:v20 forKeyedSubscript:*MEMORY[0x277CEC9E0]];
    }
  }

  else
  {
    [(ICSHeaderSpecifierProvider *)self _fetchStorageSummary:specifierCopy];
  }

  return 0;
}

- (void)_fetchStorageSummary:(id)summary completion:(id)completion
{
  summaryCopy = summary;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEC9E8];
  v9 = [summaryCopy objectForKeyedSubscript:*MEMORY[0x277CEC9E8]];
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

  v10 = [summaryCopy objectForKeyedSubscript:*MEMORY[0x277CEC9F0]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_4;
  }

  if (summaryCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained specifierProvider:self willBeginLoadingSpecifier:summaryCopy];

    [summaryCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v14 = [ICSHomeDataController alloc];
  account = [(ICSHeaderSpecifierProvider *)self account];
  v28 = [(ICSHomeDataController *)v14 initWithAccount:account];

  v16 = *(v24 + 5);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ICSHeaderSpecifierProvider__fetchStorageSummary_completion___block_invoke;
  v17[3] = &unk_27A666538;
  objc_copyWeak(&v22, &location);
  v21 = buf;
  v18 = summaryCopy;
  selfCopy = self;
  v20 = completionCopy;
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
    delegate = [(ICSHeaderSpecifierProvider *)self delegate];
    identifier = [(PSSpecifier *)self->_storageGraphSpecifier identifier];
    [delegate reloadSpecifierForProvider:self identifier:identifier];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__ICSHeaderSpecifierProvider__startObservingQuotaChangeNotifications__block_invoke;
    v7[3] = &unk_27A666378;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:@"QuotaDidChange" object:0 queue:mainQueue usingBlock:v7];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_quotaChangeNotificationObserver];

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