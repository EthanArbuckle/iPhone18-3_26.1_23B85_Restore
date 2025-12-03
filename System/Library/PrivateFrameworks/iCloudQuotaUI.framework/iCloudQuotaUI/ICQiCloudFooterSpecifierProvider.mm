@interface ICQiCloudFooterSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQiCloudFooterSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_buildSubscriptionSpecifiers;
- (id)_buildiCloudPlusSpecifiers;
- (id)_stringForSpecifier:(id)specifier;
- (id)account;
- (void)_beginLoadingSpecifier:(id)specifier;
- (void)_fetchStorageSummary;
- (void)_finishLoadingSpecifier;
- (void)_handleICQLink:(id)link forSpecifier:(id)specifier;
- (void)_launchFamilyUsageFlowWithURL:(id)l;
- (void)_launchFlowForSpecifier:(id)specifier;
- (void)_launchLegacyPurchaseFlow;
- (void)_launchUpgradeFlowWithICQLink:(id)link;
- (void)_launchUpgradeFlowWithURL:(id)l;
- (void)_postQuotaDidChangeNotification;
- (void)_reloadSpecifiers;
- (void)_setupSpecifier:(id)specifier;
- (void)_startFamilySharing;
- (void)dealloc;
- (void)loadFailed:(id)failed withError:(id)error;
- (void)loadFinished:(id)finished;
- (void)loadStarted:(id)started;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICQiCloudFooterSpecifierProvider

- (ICQiCloudFooterSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = ICQiCloudFooterSpecifierProvider;
  v9 = [(ICQiCloudFooterSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
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
  [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate cleanupLoader];
  [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setDelegate:0];
  activeSpecifier = self->_activeSpecifier;
  self->_activeSpecifier = 0;

  v4.receiver = self;
  v4.super_class = ICQiCloudFooterSpecifierProvider;
  [(ICQiCloudFooterSpecifierProvider *)&v4 dealloc];
}

- (NSArray)specifiers
{
  account = [(ICQiCloudFooterSpecifierProvider *)self account];
  v4 = [account aa_isAccountClass:*MEMORY[0x277CEC688]];

  if (v4)
  {
    specifiers = self->_specifiers;
    if (!specifiers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v6 addObject:emptyGroupSpecifier];

      _buildSubscriptionSpecifiers = [(ICQiCloudFooterSpecifierProvider *)self _buildSubscriptionSpecifiers];
      [v6 addObjectsFromArray:_buildSubscriptionSpecifiers];

      v9 = [v6 copy];
      v10 = self->_specifiers;
      self->_specifiers = v9;

      specifiers = self->_specifiers;
    }

    v11 = specifiers;
  }

  else
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQiCloudFooterSpecifierProvider specifiers];
    }

    v11 = 0;
  }

  return v11;
}

- (id)_buildSubscriptionSpecifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQiCloudFooterSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:account];

  cachedStorageSummary = [v5 cachedStorageSummary];
  storageSummary = self->_storageSummary;
  self->_storageSummary = cachedStorageSummary;

  subscriptionInfo = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
  specifiersInfo = [subscriptionInfo specifiersInfo];

  if (specifiersInfo)
  {
    account2 = [(ICQiCloudFooterSpecifierProvider *)self account];
    aa_isManagedAppleID = [account2 aa_isManagedAppleID];

    if (aa_isManagedAppleID)
    {
      specifiersInfo2 = _ICQGetLogSystem();
      if (os_log_type_enabled(specifiersInfo2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, specifiersInfo2, OS_LOG_TYPE_DEFAULT, "Subscription specifiers are not displayed for MAID accounts.", buf, 2u);
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      subscriptionInfo2 = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
      specifiersInfo2 = [subscriptionInfo2 specifiersInfo];

      v14 = [specifiersInfo2 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v34 = v5;
        v16 = *v40;
        v37 = *MEMORY[0x277D3FFB8];
        v36 = *MEMORY[0x277D40170];
        v35 = *MEMORY[0x277D40160];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(specifiersInfo2);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            identifier = [v18 identifier];
            v20 = [identifier isEqualToString:@"ICLOUD_PLUS_INFO"];

            if (v20)
            {
              _buildiCloudPlusSpecifiers = [(ICQiCloudFooterSpecifierProvider *)self _buildiCloudPlusSpecifiers];
              [v38 addObjectsFromArray:_buildiCloudPlusSpecifiers];
            }

            else
            {
              v22 = MEMORY[0x277D3FAD8];
              title = [v18 title];
              _buildiCloudPlusSpecifiers = [v22 preferenceSpecifierNamed:title target:self set:0 get:sel__stringForSpecifier_ detail:0 cell:2 edit:0];

              identifier2 = [v18 identifier];
              [_buildiCloudPlusSpecifiers setObject:identifier2 forKeyedSubscript:v37];

              actionURL = [v18 actionURL];
              [_buildiCloudPlusSpecifiers setObject:actionURL forKeyedSubscript:@"ICQUISpecifierKeyServerUIURL"];

              icqLink = [v18 icqLink];
              [_buildiCloudPlusSpecifiers setObject:icqLink forKeyedSubscript:@"ICQUISpecifierKeyICQLink"];

              title2 = [v18 title];
              [_buildiCloudPlusSpecifiers setObject:title2 forKeyedSubscript:v36];

              subTitle = [v18 subTitle];
              [_buildiCloudPlusSpecifiers setObject:subTitle forKeyedSubscript:v35];

              type = [v18 type];
              [_buildiCloudPlusSpecifiers setObject:type forKeyedSubscript:@"SPECIFIER_TYPE"];

              iconURL = [v18 iconURL];
              v31 = [_ICQUIHelperFunctions scaledImageURL:iconURL];
              [_buildiCloudPlusSpecifiers setObject:v31 forKeyedSubscript:@"ICON_URL"];

              [_buildiCloudPlusSpecifiers setControllerLoadAction:sel__launchFlowForSpecifier_];
              [(ICQiCloudFooterSpecifierProvider *)self _setupSpecifier:_buildiCloudPlusSpecifiers];
              [v38 addObject:_buildiCloudPlusSpecifiers];
            }
          }

          v15 = [specifiersInfo2 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v15);
        v5 = v34;
      }
    }
  }

  else
  {
    specifiersInfo2 = _ICQGetLogSystem();
    if (os_log_type_enabled(specifiersInfo2, OS_LOG_TYPE_ERROR))
    {
      [ICQiCloudFooterSpecifierProvider _buildSubscriptionSpecifiers];
    }
  }

  v32 = [v38 copy];

  return v32;
}

- (void)_setupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v3 = [specifierCopy objectForKeyedSubscript:@"SPECIFIER_TYPE"];
  if ([v3 isEqualToString:@"LINK_CELL"])
  {
    [specifierCopy setCellType:13];
    [specifierCopy setButtonAction:sel__launchFlowForSpecifier_];
  }

  else if ([v3 isEqualToString:@"SUBTITLE_CELL"])
  {
    [specifierCopy setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  }

  else
  {
    [v3 isEqualToString:@"DETAIL_LABEL_CELL"];
  }

  v4 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  if ([v4 isEqualToString:@"STORAGE_UPGRADE"])
  {
    v5 = objc_opt_class();
    v6 = MEMORY[0x277D3FE58];
LABEL_10:
    [specifierCopy setObject:v5 forKeyedSubscript:*v6];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"MANAGE_PLAN"])
  {
    [specifierCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v5 = *MEMORY[0x277D3FD38];
    v6 = MEMORY[0x277D3FFD8];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"ICLOUD_PLUS_INFO"])
  {
    v7 = [specifierCopy objectForKeyedSubscript:@"ICON_URL"];
    if (v7)
    {
      [specifierCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      v8 = MEMORY[0x277D40030];
LABEL_20:
      [specifierCopy setObject:v7 forKeyedSubscript:*v8];
    }
  }

  else
  {
    if (![v4 isEqualToString:@"FAMILY_USAGE"])
    {
      goto LABEL_11;
    }

    v9 = MEMORY[0x277D755B8];
    v10 = MEMORY[0x277CCA8D8];
    getFACircleStateControllerClass();
    v11 = [v10 bundleForClass:objc_opt_class()];
    v7 = [v9 imageNamed:@"family" inBundle:v11];

    if (v7)
    {
      v8 = MEMORY[0x277D3FFC0];
      goto LABEL_20;
    }
  }

LABEL_11:
}

- (id)_buildiCloudPlusSpecifiers
{
  storageSummary = self->_storageSummary;
  if (storageSummary && (-[ICQCloudStorageSummary subscriptionInfo](storageSummary, "subscriptionInfo"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isiCloudPlusSubscriber], v4, (v5 & 1) == 0))
  {
    icloudPlusSpecifierProvider = self->_icloudPlusSpecifierProvider;
    if (!icloudPlusSpecifierProvider)
    {
      v8 = [[ICQUIiCloudPlusSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
      v9 = self->_icloudPlusSpecifierProvider;
      self->_icloudPlusSpecifierProvider = v8;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(AAUISpecifierProvider *)self->_icloudPlusSpecifierProvider setDelegate:WeakRetained];

      icloudPlusSpecifierProvider = self->_icloudPlusSpecifierProvider;
    }

    specifiers = [(AAUISpecifierProvider *)icloudPlusSpecifierProvider specifiers];
  }

  else
  {
    specifiers = MEMORY[0x277CBEBF8];
  }

  return specifiers;
}

- (id)_stringForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy objectForKeyedSubscript:@"SPECIFIER_TYPE"];
  if ([v4 isEqualToString:@"DETAIL_LABEL_CELL"])
  {
    v5 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_launchFlowForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQiCloudFooterSpecifierProvider *)self _beginLoadingSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"ICQUISpecifierKeyICQLink"];
  if (!v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "No icqLink found, falling back to old identifier/url based handling.", v16, 2u);
    }

    v7 = [specifierCopy objectForKeyedSubscript:@"ICQUISpecifierKeyServerUIURL"];
    identifier = [specifierCopy identifier];
    if ([identifier isEqualToString:@"STORAGE_UPGRADE"])
    {

      goto LABEL_8;
    }

    identifier2 = [specifierCopy identifier];
    v10 = [identifier2 isEqualToString:@"MANAGE_PLAN"];

    if (v10)
    {
LABEL_8:
      if (v7)
      {
        [(ICQiCloudFooterSpecifierProvider *)self _launchUpgradeFlowWithURL:v7];
      }

      else
      {
        [(ICQiCloudFooterSpecifierProvider *)self _launchLegacyPurchaseFlow];
      }

      goto LABEL_21;
    }

    identifier3 = [specifierCopy identifier];
    v12 = [identifier3 isEqualToString:@"FAMILY_SHARING"];

    if (v12)
    {
      [(ICQiCloudFooterSpecifierProvider *)self _startFamilySharing];
LABEL_21:

      goto LABEL_22;
    }

    identifier4 = [specifierCopy identifier];
    v14 = [identifier4 isEqualToString:@"FAMILY_USAGE"];

    if (v14)
    {
      if (v7)
      {
        [(ICQiCloudFooterSpecifierProvider *)self _launchFamilyUsageFlowWithURL:v7];
        goto LABEL_21;
      }

      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICQiCloudFooterSpecifierProvider _launchFlowForSpecifier:];
      }
    }

    else
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICQiCloudFooterSpecifierProvider _launchFlowForSpecifier:specifierCopy];
      }
    }

    [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
    goto LABEL_21;
  }

  [(ICQiCloudFooterSpecifierProvider *)self _handleICQLink:v5 forSpecifier:specifierCopy];
LABEL_22:
}

- (void)_handleICQLink:(id)link forSpecifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  specifierCopy = specifier;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = linkCopy;
    v14 = 2112;
    v15 = specifierCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Handling ICQLink: %@ forSpecifier: %@", &v12, 0x16u);
  }

  action = [linkCopy action];
  if (action > 118)
  {
    if ((action - 120) >= 2)
    {
      if (action == 119)
      {
        [(ICQiCloudFooterSpecifierProvider *)self _launchLegacyPurchaseFlow];
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_9:
    [(ICQiCloudFooterSpecifierProvider *)self _launchUpgradeFlowWithICQLink:linkCopy];
    goto LABEL_17;
  }

  switch(action)
  {
    case 'n':
      actionURL = [linkCopy actionURL];
      [(ICQiCloudFooterSpecifierProvider *)self _launchFamilyUsageFlowWithURL:actionURL];

      goto LABEL_17;
    case 'o':
      [(ICQiCloudFooterSpecifierProvider *)self _startFamilySharing];
      goto LABEL_17;
    case 'v':
      goto LABEL_9;
  }

LABEL_13:
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ICQiCloudFooterSpecifierProvider _handleICQLink:forSpecifier:];
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
LABEL_17:
}

- (void)_launchUpgradeFlowWithURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (self->_upgradeFlowManager)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQiCloudFooterSpecifierProvider _launchUpgradeFlowWithURL:];
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D7F388]);
    [v5 _updateRequestedServerUIURLWithURL:lCopy];
    v6 = [[ICQUpgradeFlowManager alloc] initWithOffer:v5];
    upgradeFlowManager = self->_upgradeFlowManager;
    self->_upgradeFlowManager = v6;

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = lCopy;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with url: %@", &v9, 0xCu);
    }

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager _beginRemoteFlowWithURL:lCopy];
  }
}

- (void)_launchUpgradeFlowWithICQLink:(id)link
{
  v13 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  if (self->_upgradeFlowManager)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQiCloudFooterSpecifierProvider _launchUpgradeFlowWithURL:];
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D7F388]);
    v6 = [[ICQUpgradeFlowManager alloc] initWithOffer:v5];
    upgradeFlowManager = self->_upgradeFlowManager;
    self->_upgradeFlowManager = v6;

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = linkCopy;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with icqLink: %@", &v11, 0xCu);
    }

    v9 = self->_upgradeFlowManager;
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [(ICQUpgradeFlowManager *)v9 beginRemoteUpgradeFlowWithICQLink:linkCopy presenter:WeakRetained];
  }
}

- (void)_startFamilySharing
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Launching start family sharing flow.", buf, 2u);
  }

  location = 0;
  p_location = &location;
  v26 = 0x2050000000;
  v4 = getFACircleContextClass_softClass_1;
  v27 = getFACircleContextClass_softClass_1;
  if (!getFACircleContextClass_softClass_1)
  {
    *buf = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getFACircleContextClass_block_invoke_1;
    v21 = &unk_27A65A9F8;
    v22 = &location;
    __getFACircleContextClass_block_invoke_1(buf);
    v4 = p_location[3];
  }

  v5 = v4;
  _Block_object_dispose(&location, 8);
  v6 = [v4 alloc];
  location = 0;
  p_location = &location;
  v26 = 0x2020000000;
  v7 = getFACircleEventTypeInitiateSymbolLoc_ptr_1;
  v27 = getFACircleEventTypeInitiateSymbolLoc_ptr_1;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_1)
  {
    *buf = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_1;
    v21 = &unk_27A65A9F8;
    v22 = &location;
    v8 = FamilyCircleUILibrary_1();
    v9 = dlsym(v8, "FACircleEventTypeInitiate");
    *(v22[1] + 3) = v9;
    getFACircleEventTypeInitiateSymbolLoc_ptr_1 = *(v22[1] + 3);
    v7 = p_location[3];
  }

  _Block_object_dispose(&location, 8);
  if (!v7)
  {
    v15 = [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
    _Block_object_dispose(&location, 8);
    _Unwind_Resume(v15);
  }

  v10 = [v6 initWithEventType:*v7];
  [v10 setClientName:@"iCloudStorage"];
  objc_initWeak(&location, self);
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v11 = objc_alloc(getFACircleStateControllerClass());
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  navigationController = [WeakRetained navigationController];
  v23 = [v11 initWithPresenter:navigationController];

  v14 = *(v19 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__ICQiCloudFooterSpecifierProvider__startFamilySharing__block_invoke;
  v16[3] = &unk_27A65C138;
  objc_copyWeak(&v17, &location);
  v16[4] = buf;
  [v14 performWithContext:v10 completion:v16];
  objc_destroyWeak(&v17);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

void __55__ICQiCloudFooterSpecifierProvider__startFamilySharing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _finishLoadingSpecifier];
    v6 = [v3 error];

    if (v6)
    {
      v7 = _ICQGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __55__ICQiCloudFooterSpecifierProvider__startFamilySharing__block_invoke_cold_1(v3);
      }
    }

    else
    {
      [v5 _fetchStorageSummary];
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

- (void)_launchFamilyUsageFlowWithURL:(id)l
{
  lCopy = l;
  ruiDelegate = self->_ruiDelegate;
  v12 = lCopy;
  if (!ruiDelegate)
  {
    v6 = [ICQPreferencesRemoteUIDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    navigationController = [WeakRetained navigationController];
    account = [(ICQiCloudFooterSpecifierProvider *)self account];
    v10 = [(ICQPreferencesRemoteUIDelegate *)v6 initWithNavigationController:navigationController initialAction:0 account:account];
    v11 = self->_ruiDelegate;
    self->_ruiDelegate = v10;

    [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setDelegate:self];
    lCopy = v12;
    ruiDelegate = self->_ruiDelegate;
  }

  [(ICQPreferencesRemoteUIDelegate *)ruiDelegate loadURL:lCopy postBody:0 additionalHeaders:0];
}

- (void)_launchLegacyPurchaseFlow
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Launching legacy purchase flow.", buf, 2u);
  }

  objc_initWeak(buf, self);
  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
  }

  v5 = objc_alloc_init(ICQUILegacyPurchaseFlowController);
  legacyPurchaseFlowController = self->_legacyPurchaseFlowController;
  self->_legacyPurchaseFlowController = v5;

  v7 = self->_legacyPurchaseFlowController;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v9 = *MEMORY[0x277D3FD40];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ICQiCloudFooterSpecifierProvider__launchLegacyPurchaseFlow__block_invoke;
  v10[3] = &unk_27A65C160;
  objc_copyWeak(&v11, buf);
  [(ICQUILegacyPurchaseFlowController *)v7 beginFlowWithPresenter:WeakRetained action:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __61__ICQiCloudFooterSpecifierProvider__launchLegacyPurchaseFlow__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _ICQGetLogSystem();
  WeakRetained = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_275623000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Legacy purchase flow completed successfully! Reloading specifiers.", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _postQuotaDidChangeNotification];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __61__ICQiCloudFooterSpecifierProvider__launchLegacyPurchaseFlow__block_invoke_cold_1();
  }
}

- (void)_fetchStorageSummary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQiCloudFooterSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:account];

  [v8[5] setShouldIgnoreCache:1];
  v5 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ICQiCloudFooterSpecifierProvider__fetchStorageSummary__block_invoke;
  v6[3] = &unk_27A65AAC8;
  v6[4] = self;
  v6[5] = &v7;
  [v5 fetchStorageSummaryWithCompletion:v6];
  _Block_object_dispose(&v7, 8);
}

void __56__ICQiCloudFooterSpecifierProvider__fetchStorageSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v5;
  v9 = v5;

  if (v6)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__ICQiCloudFooterSpecifierProvider__fetchStorageSummary__block_invoke_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICQiCloudFooterSpecifierProvider__fetchStorageSummary__block_invoke_96;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (void)_reloadSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;
  v4 = specifiers;

  [(AAUISpecifierProvider *)self->_icloudPlusSpecifierProvider setSpecifiers:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v4 animated:0];
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v6, 2u);
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed successfully.", v6, 2u);
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;

  [(ICQiCloudFooterSpecifierProvider *)self _postQuotaDidChangeNotification];
}

- (void)_postQuotaDidChangeNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ICQiCloudFooterSpecifierProvider _postQuotaDidChangeNotification]";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "%s refreshing quota storage info", &v4, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"QuotaDidChange" object:0];
}

- (void)loadFailed:(id)failed withError:(id)error
{
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQiCloudFooterSpecifierProvider loadFailed:withError:];
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
}

- (void)loadFinished:(id)finished
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "DelayedPushDelegate Loading finished", v5, 2u);
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
}

- (void)loadStarted:(id)started
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "DelayedPushDelegate Loading started.", v4, 2u);
  }
}

- (void)_finishLoadingSpecifier
{
  if (self->_activeSpecifier)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ICQiCloudFooterSpecifierProvider__finishLoadingSpecifier__block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__ICQiCloudFooterSpecifierProvider__finishLoadingSpecifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(*(a1 + 32) + 72)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;
}

- (void)_beginLoadingSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  activeSpecifier = self->_activeSpecifier;
  self->_activeSpecifier = specifierCopy;
  v6 = specifierCopy;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self willBeginLoadingSpecifier:v6];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_launchFlowForSpecifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_launchFlowForSpecifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleICQLink:forSpecifier:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __55__ICQiCloudFooterSpecifierProvider__startFamilySharing__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __61__ICQiCloudFooterSpecifierProvider__launchLegacyPurchaseFlow__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__ICQiCloudFooterSpecifierProvider__fetchStorageSummary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)loadFailed:withError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end