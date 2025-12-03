@interface ICQCloudStorageSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_handleManagedStorageURL:(id)l;
- (BOOL)handleURL:(id)l;
- (ICQCloudStorageSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_valueForStorageGraphSpecifier:(id)specifier;
- (id)account;
- (void)_createNativeManageStorageIfNeeded;
- (void)_enterManageStorage:(id)storage;
- (void)_fetchStorageSummary:(id)summary completion:(id)completion;
- (void)_finishLoadingActiveSpecifier;
- (void)_handleStorageUpgradeURL:(id)l;
- (void)_manageStorageSpecifierWasTapped:(id)tapped;
- (void)_reloadStorageSpecifiers;
- (void)_replaceRUISectionWithTipUIFromObjectModel:(id)model inPage:(id)page;
- (void)_startObservingQuotaChangeNotifications;
- (void)_stopObservingQuotaChangeNotifications;
- (void)dealloc;
- (void)loadFailed:(id)failed withError:(id)error;
- (void)loadFinished:(id)finished;
- (void)loadStarted:(id)started;
- (void)remoteUIDelegate:(id)delegate didCreatePage:(id)page inObjectModel:(id)model;
- (void)setDelegate:(id)delegate;
@end

@implementation ICQCloudStorageSpecifierProvider

- (ICQCloudStorageSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v14.receiver = self;
  v14.super_class = ICQCloudStorageSpecifierProvider;
  v9 = [(ICQCloudStorageSpecifierProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
    mEMORY[0x277D7F3D8] = [MEMORY[0x277D7F3D8] sharedFollowUpController];
    followUpController = v10->_followUpController;
    v10->_followUpController = mEMORY[0x277D7F3D8];

    [(ICQCloudStorageSpecifierProvider *)v10 _startObservingQuotaChangeNotifications];
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
  [(ICQCloudStorageSpecifierProvider *)self _stopObservingQuotaChangeNotifications];
  v3.receiver = self;
  v3.super_class = ICQCloudStorageSpecifierProvider;
  [(ICQCloudStorageSpecifierProvider *)&v3 dealloc];
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
    goto LABEL_13;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v5 addObject:emptyGroupSpecifier];

  if (!self->_storageGraphSpecifier)
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ICLOUD_TITLE" value:&stru_28844FC60 table:@"CloudGroup"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel__valueForStorageGraphSpecifier_ detail:0 cell:-1 edit:0];
    storageGraphSpecifier = self->_storageGraphSpecifier;
    self->_storageGraphSpecifier = v10;

    [(PSSpecifier *)self->_storageGraphSpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_storageSummary != 0];
  [(PSSpecifier *)self->_storageGraphSpecifier setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [(PSSpecifier *)self->_storageGraphSpecifier setIdentifier:@"iCloudStorageBarGraph"];
  [v5 addObject:self->_storageGraphSpecifier];
  if (self->_manageStorageSpecifier)
  {
    goto LABEL_11;
  }

  account = [(ICQCloudStorageSpecifierProvider *)self account];
  if ([account aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
  }

  else
  {
    account2 = [(ICQCloudStorageSpecifierProvider *)self account];
    aa_isManagedAppleID = [account2 aa_isManagedAppleID];

    if (!aa_isManagedAppleID)
    {
      goto LABEL_10;
    }
  }

  v16 = MEMORY[0x277D3FAD8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"ICLOUD_MANAGE_STORAGE" value:&stru_28844FC60 table:@"CloudGroup"];
  v19 = [v16 preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:1 edit:0];
  manageStorageSpecifier = self->_manageStorageSpecifier;
  self->_manageStorageSpecifier = v19;

  [(PSSpecifier *)self->_manageStorageSpecifier setIdentifier:@"STORAGE_AND_BACKUP"];
  [(PSSpecifier *)self->_manageStorageSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [(PSSpecifier *)self->_manageStorageSpecifier setControllerLoadAction:sel__manageStorageSpecifierWasTapped_];
LABEL_10:
  if (self->_manageStorageSpecifier)
  {
LABEL_11:
    [v5 addObject:?];
  }

  v21 = [v5 copy];
  v22 = self->_specifiers;
  self->_specifiers = v21;

  v3 = self->_specifiers;
LABEL_13:

  return v3;
}

- (id)_valueForStorageGraphSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277CEC9E8]];
  bOOLValue = [v5 BOOLValue];

  v7 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277CEC9F0]];
  bOOLValue2 = [v7 BOOLValue];

  storageSummary = self->_storageSummary;
  if (storageSummary || (bOOLValue & 1) != 0 || (bOOLValue2 & 1) != 0)
  {
    if (storageSummary)
    {
      displayLabel = [(ICQCloudStorageSummary *)storageSummary displayLabel];
      [specifierCopy setObject:displayLabel forKeyedSubscript:*MEMORY[0x277D40170]];

      manageStorageTitle = [(ICQCloudStorageSummary *)self->_storageSummary manageStorageTitle];
      [(PSSpecifier *)self->_manageStorageSpecifier setName:manageStorageTitle];

      totalStorage = [(ICQCloudStorageSummary *)self->_storageSummary totalStorage];
      [specifierCopy setObject:totalStorage forKeyedSubscript:*MEMORY[0x277CEC9D0]];

      freeStorage = [(ICQCloudStorageSummary *)self->_storageSummary freeStorage];
      [specifierCopy setObject:freeStorage forKeyedSubscript:*MEMORY[0x277CEC9C8]];

      usedStorage = [(ICQCloudStorageSummary *)self->_storageSummary usedStorage];
      [specifierCopy setObject:usedStorage forKeyedSubscript:*MEMORY[0x277CEC9E0]];

      icqui_AAUIiCloudMediaUsageInfo = [(ICQCloudStorageSummary *)self->_storageSummary icqui_AAUIiCloudMediaUsageInfo];
      [specifierCopy setObject:icqui_AAUIiCloudMediaUsageInfo forKeyedSubscript:*MEMORY[0x277CEC9D8]];
    }
  }

  else
  {
    [(ICQCloudStorageSpecifierProvider *)self _fetchStorageSummary:specifierCopy];
  }

  return 0;
}

- (void)_manageStorageSpecifierWasTapped:(id)tapped
{
  storageSummary = self->_storageSummary;
  tappedCopy = tapped;
  if (storageSummary)
  {
    [(ICQCloudStorageSpecifierProvider *)self _enterManageStorage:tappedCopy];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageSpecifierProvider _manageStorageSpecifierWasTapped:v6];
    }

    self->_delayedEnterManageStorage = 1;
    [(ICQCloudStorageSpecifierProvider *)self _fetchStorageSummary:tappedCopy];
  }
}

- (void)_enterManageStorage:(id)storage
{
  storageCopy = storage;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICQCloudStorageSpecifierProvider _enterManageStorage:v6];
  }

  if (self->_activeSpecifier)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Currently loading managed storage page. Bailing.", buf, 2u);
    }
  }

  else
  {
    v8 = [ICQPreferencesRemoteUIDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    navigationController = [WeakRetained navigationController];
    initialStorageFlowAction = self->_initialStorageFlowAction;
    account = [(ICQCloudStorageSpecifierProvider *)self account];
    v13 = [(ICQPreferencesRemoteUIDelegate *)v8 initWithNavigationController:navigationController initialAction:initialStorageFlowAction account:account];
    ruiDelegate = self->_ruiDelegate;
    self->_ruiDelegate = v13;

    [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setIsManageStorage:1];
    v15 = self->_initialStorageFlowAction;
    self->_initialStorageFlowAction = 0;

    [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setDelegate:self];
    if ([(ICQCloudStorageSummary *)self->_storageSummary shouldUseNativeManageStorage])
    {
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "Detected V2 Storage Summary API, will use native Manage Storage view", buf, 2u);
      }

      [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setNextSignpostId:@"MANAGE_DRILLDOWN"];
      [(ICQCloudStorageSpecifierProvider *)self _createNativeManageStorageIfNeeded];
      [(ICQUINativeManageStorageController *)self->_nativeManageStorage refreshAppList];
      delegate = [(ICQCloudStorageSpecifierProvider *)self delegate];
      [delegate specifierProvider:self showViewController:self->_nativeManageStorage];
    }

    else
    {
      [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setNextSignpostId:@"MANAGE"];
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 specifierProvider:self willBeginLoadingSpecifier:storageCopy];

      objc_storeStrong(&self->_activeSpecifier, storage);
      objc_initWeak(buf, self->_ruiDelegate);
      manageStorageURL = [(ICQCloudStorageSummary *)self->_storageSummary manageStorageURL];
      v20 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__ICQCloudStorageSpecifierProvider__enterManageStorage___block_invoke;
      block[3] = &unk_27A65C630;
      block[4] = self;
      objc_copyWeak(&v24, buf);
      v23 = manageStorageURL;
      v21 = manageStorageURL;
      dispatch_async(v20, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

void __56__ICQCloudStorageSpecifierProvider__enterManageStorage___block_invoke(id *a1)
{
  v2 = [a1[4] account];
  v3 = [ICQCloudStorageInfo backupInfoHeadersForAccount:v2];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICQCloudStorageSpecifierProvider__enterManageStorage___block_invoke_2;
  block[3] = &unk_27A65C608;
  objc_copyWeak(&v8, a1 + 6);
  v6 = a1[5];
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __56__ICQCloudStorageSpecifierProvider__enterManageStorage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained loadURL:*(a1 + 32) postBody:0 additionalHeaders:*(a1 + 40)];
}

- (void)_fetchStorageSummary:(id)summary completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Already fetching cloud storage summary. Bailing.", buf, 2u);
    }

    goto LABEL_12;
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

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v14 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQCloudStorageSpecifierProvider *)self account];
  v29 = [v14 initWithAccount:account];

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *v30 = 138412290;
    v31 = v17;
    v18 = v17;
    _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "%@: requesting storage summary.", v30, 0xCu);
  }

  v19 = *(v25 + 5);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__ICQCloudStorageSpecifierProvider__fetchStorageSummary_completion___block_invoke;
  v20[3] = &unk_27A65C680;
  v20[4] = self;
  v21 = summaryCopy;
  v22 = completionCopy;
  v23 = buf;
  [v19 fetchStorageSummaryWithCompletion:v20];

  _Block_object_dispose(buf, 8);
LABEL_12:
}

void __68__ICQCloudStorageSpecifierProvider__fetchStorageSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__ICQCloudStorageSpecifierProvider__fetchStorageSummary_completion___block_invoke_2;
  v11[3] = &unk_27A65C658;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = *(a1 + 48);
  v14 = v6;
  v15 = v8;
  v16 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __68__ICQCloudStorageSpecifierProvider__fetchStorageSummary_completion___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CEC9E8]];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    [WeakRetained specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 48)];
  }

  v4 = *(a1 + 48);
  v5 = *MEMORY[0x277CEC9F0];
  if (*(a1 + 40))
  {
    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v5];
    [*(a1 + 32) _reloadStorageSpecifiers];
    v6 = *(a1 + 32);
    if (*(v6 + 40) == 1)
    {
      *(v6 + 40) = 0;
      [*(a1 + 32) _enterManageStorage:*(a1 + 48)];
    }
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
    [*(a1 + 32) _reloadStorageSpecifiers];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40), *(a1 + 56));
  }

  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)_reloadStorageSpecifiers
{
  if (self->_storageGraphSpecifier)
  {
    delegate = [(ICQCloudStorageSpecifierProvider *)self delegate];
    identifier = [(PSSpecifier *)self->_storageGraphSpecifier identifier];
    [delegate reloadSpecifierForProvider:self identifier:identifier];
  }

  if (self->_manageStorageSpecifier)
  {
    delegate2 = [(ICQCloudStorageSpecifierProvider *)self delegate];
    identifier2 = [(PSSpecifier *)self->_manageStorageSpecifier identifier];
    [delegate2 reloadSpecifierForProvider:self identifier:identifier2];
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

- (void)loadStarted:(id)started
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Manage storage loading started.", v4, 2u);
  }
}

- (void)loadFinished:(id)finished
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Manage storage load finished with success.", v6, 2u);
  }

  [(ICQCloudStorageSpecifierProvider *)self _finishLoadingActiveSpecifier];
  nativeManageStorage = self->_nativeManageStorage;
  if (nativeManageStorage)
  {
    [(ICQUINativeManageStorageController *)nativeManageStorage stopActiveSpecifier];
  }
}

- (void)loadFailed:(id)failed withError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Manage storage load failed with error: %@", &v8, 0xCu);
  }

  [(ICQCloudStorageSpecifierProvider *)self _finishLoadingActiveSpecifier];
  nativeManageStorage = self->_nativeManageStorage;
  if (nativeManageStorage)
  {
    [(ICQUINativeManageStorageController *)nativeManageStorage stopActiveSpecifier];
  }
}

- (void)remoteUIDelegate:(id)delegate didCreatePage:(id)page inObjectModel:(id)model
{
  v26[2] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  modelCopy = model;
  if (([(ICQCloudStorageSummary *)self->_storageSummary shouldUseNativeManageStorage]& 1) == 0)
  {
    identifier = [modelCopy identifier];
    v10 = [identifier isEqualToString:@"iCloudManageStorage"];

    if (v10)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Manage storage rui page created. Injecting storage graph cell.", v24, 2u);
      }

      v12 = objc_alloc(MEMORY[0x277D46218]);
      tableViewOM = [pageCopy tableViewOM];
      v14 = [v12 initWithAttributes:0 parent:tableViewOM];

      clientInfo = [modelCopy clientInfo];
      v16 = [clientInfo objectForKeyedSubscript:@"storageGraphFooterText"];

      if (v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277D461C0]);
        [v17 setBody:v16];
        v25[0] = @"color";
        v25[1] = @"align";
        v26[0] = @"secondaryLabelColor";
        v26[1] = &stru_28844FC60;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
        [v17 setAttributes:v18];
        [v14 setFooter:v17];
      }

      v19 = [ICQCloudStorageGraphTableViewRow alloc];
      account = [(ICQCloudStorageSpecifierProvider *)self account];
      v21 = [(ICQCloudStorageGraphTableViewRow *)v19 initWithAccount:account];

      [(RUITableViewRow *)v21 setDelegate:self];
      [v14 addRow:v21];
      tableViewOM2 = [pageCopy tableViewOM];
      sections = [tableViewOM2 sections];
      [sections insertObject:v14 atIndex:0];
    }

    [(ICQCloudStorageSpecifierProvider *)self _replaceRUISectionWithTipUIFromObjectModel:modelCopy inPage:pageCopy];
  }
}

- (void)_replaceRUISectionWithTipUIFromObjectModel:(id)model inPage:(id)page
{
  pageCopy = page;
  v7 = [model subElementWithID:*MEMORY[0x277D7F318]];
  if (!v7)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Did not find section to replace with violation tip", buf, 2u);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Violation tip section found. Injecting client generated tip.", v27, 2u);
    }

    v9 = v7;
    if (!self->_tipSpecifierProvider)
    {
      v10 = [ICQUITipSpecifierProvider alloc];
      accountManager = self->_accountManager;
      WeakRetained = objc_loadWeakRetained(&self->_listController);
      v13 = [(ICQUITipSpecifierProvider *)v10 initWithAccountManager:accountManager presenter:WeakRetained sectionAnchorIdentifier:*MEMORY[0x277D7F2D0] showUpwardPointingTips:0];
      tipSpecifierProvider = self->_tipSpecifierProvider;
      self->_tipSpecifierProvider = v13;
    }

    v15 = objc_alloc(MEMORY[0x277D46218]);
    tableViewOM = [pageCopy tableViewOM];
    v17 = [v15 initWithAttributes:0 parent:tableViewOM];

    v18 = self->_tipSpecifierProvider;
    attributes = [v9 attributes];
    rows = [v9 rows];
    v21 = [(ICQUITipSpecifierProvider *)v18 tipForManageStorageFromAttributes:attributes rows:rows viewController:pageCopy remoteUIDelegate:self->_ruiDelegate];

    if (v21)
    {
      [v17 addRow:v21];
    }

    tableViewOM2 = [pageCopy tableViewOM];
    sections = [tableViewOM2 sections];
    v24 = [sections indexOfObject:v9];

    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      tableViewOM3 = [pageCopy tableViewOM];
      sections2 = [tableViewOM3 sections];
      [sections2 replaceObjectAtIndex:v24 withObject:v17];
    }

LABEL_14:
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
    v7[2] = __75__ICQCloudStorageSpecifierProvider__startObservingQuotaChangeNotifications__block_invoke;
    v7[3] = &unk_27A65ACB0;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:@"QuotaDidChange" object:0 queue:mainQueue usingBlock:v7];
    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75__ICQCloudStorageSpecifierProvider__startObservingQuotaChangeNotifications__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"QuotaDidChange";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchStorageSummary:0];
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

- (BOOL)handleURL:(id)l
{
  v4 = [(ICQCloudStorageSpecifierProvider *)self _handleManagedStorageURL:l];
  if (v4)
  {
    [(ICQCloudStorageSpecifierProvider *)self _manageStorageSpecifierWasTapped:self->_manageStorageSpecifier];
  }

  return v4;
}

- (BOOL)_handleManagedStorageURL:(id)l
{
  v39 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = lCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "resourceDictionary - %@", buf, 0xCu);
  }

  v6 = [lCopy objectForKeyedSubscript:@"path"];
  if (![v6 icqui_isChangeStoragePlanPath])
  {
    if ([v6 icqui_isDeviceOffersPath])
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        *buf = 138412290;
        v38 = v12;
        v13 = v12;
        _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "%@: Received a device offers url.", buf, 0xCu);
      }

      v10 = MEMORY[0x277D3FD48];
      goto LABEL_11;
    }

    if ([v6 icqui_isStorageUpgradePath])
    {
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        *buf = 138412290;
        v38 = v17;
        v18 = v17;
        _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "%@: Received a Freshmint storage upgrade url.", buf, 0xCu);
      }

      [(ICQCloudStorageSpecifierProvider *)self _handleStorageUpgradeURL:lCopy];
      goto LABEL_12;
    }

    if ([v6 icqui_isPhotosPath])
    {
      v19 = _ICQGetLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138412290;
        v38 = v20;
        v21 = v20;
        _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "%@: Received a launch photos storage action.", buf, 0xCu);
      }

      v10 = MEMORY[0x277D3FD60];
      goto LABEL_11;
    }

    if ([v6 icqui_isCurrentDeviceBackupPath])
    {
      v22 = _ICQGetLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138412290;
        v38 = v23;
        v24 = v23;
        _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "%@: Received current device backup action", buf, 0xCu);
      }

      v10 = MEMORY[0x277D3FD58];
      goto LABEL_11;
    }

    lastPathComponent = [v6 lastPathComponent];
    v26 = [lastPathComponent isEqualToString:@"MANAGE_STORAGE"];

    if (v26)
    {
      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        *buf = 138412290;
        v38 = v28;
        v29 = v28;
        v30 = "%@: Received manage storage url";
LABEL_35:
        _os_log_impl(&dword_275623000, v27, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
      }
    }

    else
    {
      lastPathComponent2 = [v6 lastPathComponent];
      v32 = [lastPathComponent2 isEqualToString:@"STORAGE_AND_BACKUP"];

      if (!v32)
      {
        if (![v6 containsString:@"LOCAL_BACKUP"])
        {
          v14 = 0;
          goto LABEL_13;
        }

        v27 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v34 = objc_opt_class();
        *buf = 138412290;
        v38 = v34;
        v29 = v34;
        v30 = "%@: Received local backup url";
        goto LABEL_35;
      }

      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *buf = 138412290;
        v38 = v33;
        v29 = v33;
        v30 = "%@: Received storage and backup url";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_12;
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138412290;
    v38 = v8;
    v9 = v8;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%@: Received a change storage plan url.", buf, 0xCu);
  }

  v10 = MEMORY[0x277D3FD40];
LABEL_11:
  objc_storeStrong(&self->_initialStorageFlowAction, *v10);
LABEL_12:
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__ICQCloudStorageSpecifierProvider__handleManagedStorageURL___block_invoke;
  v35[3] = &unk_27A65C6A8;
  v35[4] = self;
  v36 = lCopy;
  [(ICQCloudStorageSpecifierProvider *)self _fetchStorageSummary:0 completion:v35];

  v14 = 1;
LABEL_13:

  return v14;
}

uint64_t __61__ICQCloudStorageSpecifierProvider__handleManagedStorageURL___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldUseNativeManageStorage];
  if (result)
  {
    [*(a1 + 32) _createNativeManageStorageIfNeeded];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 96);

    return [v5 handleURL:v4 withCompletion:0];
  }

  return result;
}

- (void)_handleStorageUpgradeURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_initialStorageFlowAction, *MEMORY[0x277D3FD50]);
  v5 = [lCopy objectForKeyedSubscript:@"clearCFUForOfferType"];
  if ([v5 isEqualToString:@"device"])
  {
    v6 = 3;
LABEL_7:
    v7 = MEMORY[0x277D7F3D8];
    followUpController = self->_followUpController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__ICQCloudStorageSpecifierProvider__handleStorageUpgradeURL___block_invoke;
    v10[3] = &unk_27A65AFF0;
    v11 = v5;
    [v7 clearNotificationWithController:followUpController offerType:v6 completion:v10];
    v9 = v11;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"premium"])
  {
    v6 = 2;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"event"])
  {
    v6 = 5;
    goto LABEL_7;
  }

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ICQCloudStorageSpecifierProvider *)lCopy _handleStorageUpgradeURL:v9];
  }

LABEL_8:
}

void __61__ICQCloudStorageSpecifierProvider__handleStorageUpgradeURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__ICQCloudStorageSpecifierProvider__handleStorageUpgradeURL___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)_createNativeManageStorageIfNeeded
{
  if (!self->_nativeManageStorage)
  {
    v3 = [[ICQUINativeManageStorageController alloc] initWithAccountManager:self->_accountManager summary:self->_storageSummary ruiDelegate:self->_ruiDelegate];
    nativeManageStorage = self->_nativeManageStorage;
    self->_nativeManageStorage = v3;
  }

  [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setIsNativeManageStorage:1];
  ruiDelegate = self->_ruiDelegate;
  v6 = self->_nativeManageStorage;

  [(ICQUINativeManageStorageController *)v6 setRuiDelegate:ruiDelegate];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleStorageUpgradeURL:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 objectForKeyedSubscript:@"clearCFUForOfferType"];
  v4 = 138412546;
  v5 = @"clearCFUForOfferType";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Invalid value for query param: %@, value: %@", &v4, 0x16u);
}

void __61__ICQCloudStorageSpecifierProvider__handleStorageUpgradeURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Error clearing out CFU for offer type %@, error: %@", &v4, 0x16u);
}

@end