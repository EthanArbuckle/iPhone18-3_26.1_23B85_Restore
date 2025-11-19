@interface ICQiCloudFooterSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQiCloudFooterSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_buildSubscriptionSpecifiers;
- (id)_buildiCloudPlusSpecifiers;
- (id)_stringForSpecifier:(id)a3;
- (id)account;
- (void)_beginLoadingSpecifier:(id)a3;
- (void)_fetchStorageSummary;
- (void)_finishLoadingSpecifier;
- (void)_handleICQLink:(id)a3 forSpecifier:(id)a4;
- (void)_launchFamilyUsageFlowWithURL:(id)a3;
- (void)_launchFlowForSpecifier:(id)a3;
- (void)_launchLegacyPurchaseFlow;
- (void)_launchUpgradeFlowWithICQLink:(id)a3;
- (void)_launchUpgradeFlowWithURL:(id)a3;
- (void)_postQuotaDidChangeNotification;
- (void)_reloadSpecifiers;
- (void)_setupSpecifier:(id)a3;
- (void)_startFamilySharing;
- (void)dealloc;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)loadStarted:(id)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQiCloudFooterSpecifierProvider

- (ICQiCloudFooterSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQiCloudFooterSpecifierProvider;
  v9 = [(ICQiCloudFooterSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeWeak(&v10->_listController, v8);
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
  v3 = [(ICQiCloudFooterSpecifierProvider *)self account];
  v4 = [v3 aa_isAccountClass:*MEMORY[0x277CEC688]];

  if (v4)
  {
    specifiers = self->_specifiers;
    if (!specifiers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v6 addObject:v7];

      v8 = [(ICQiCloudFooterSpecifierProvider *)self _buildSubscriptionSpecifiers];
      [v6 addObjectsFromArray:v8];

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
  v4 = [(ICQiCloudFooterSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:v4];

  v6 = [v5 cachedStorageSummary];
  storageSummary = self->_storageSummary;
  self->_storageSummary = v6;

  v8 = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
  v9 = [v8 specifiersInfo];

  if (v9)
  {
    v10 = [(ICQiCloudFooterSpecifierProvider *)self account];
    v11 = [v10 aa_isManagedAppleID];

    if (v11)
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Subscription specifiers are not displayed for MAID accounts.", buf, 2u);
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
      v12 = [v13 specifiersInfo];

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            v19 = [v18 identifier];
            v20 = [v19 isEqualToString:@"ICLOUD_PLUS_INFO"];

            if (v20)
            {
              v21 = [(ICQiCloudFooterSpecifierProvider *)self _buildiCloudPlusSpecifiers];
              [v38 addObjectsFromArray:v21];
            }

            else
            {
              v22 = MEMORY[0x277D3FAD8];
              v23 = [v18 title];
              v21 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:sel__stringForSpecifier_ detail:0 cell:2 edit:0];

              v24 = [v18 identifier];
              [v21 setObject:v24 forKeyedSubscript:v37];

              v25 = [v18 actionURL];
              [v21 setObject:v25 forKeyedSubscript:@"ICQUISpecifierKeyServerUIURL"];

              v26 = [v18 icqLink];
              [v21 setObject:v26 forKeyedSubscript:@"ICQUISpecifierKeyICQLink"];

              v27 = [v18 title];
              [v21 setObject:v27 forKeyedSubscript:v36];

              v28 = [v18 subTitle];
              [v21 setObject:v28 forKeyedSubscript:v35];

              v29 = [v18 type];
              [v21 setObject:v29 forKeyedSubscript:@"SPECIFIER_TYPE"];

              v30 = [v18 iconURL];
              v31 = [_ICQUIHelperFunctions scaledImageURL:v30];
              [v21 setObject:v31 forKeyedSubscript:@"ICON_URL"];

              [v21 setControllerLoadAction:sel__launchFlowForSpecifier_];
              [(ICQiCloudFooterSpecifierProvider *)self _setupSpecifier:v21];
              [v38 addObject:v21];
            }
          }

          v15 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v15);
        v5 = v34;
      }
    }
  }

  else
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQiCloudFooterSpecifierProvider _buildSubscriptionSpecifiers];
    }
  }

  v32 = [v38 copy];

  return v32;
}

- (void)_setupSpecifier:(id)a3
{
  v12 = a3;
  v3 = [v12 objectForKeyedSubscript:@"SPECIFIER_TYPE"];
  if ([v3 isEqualToString:@"LINK_CELL"])
  {
    [v12 setCellType:13];
    [v12 setButtonAction:sel__launchFlowForSpecifier_];
  }

  else if ([v3 isEqualToString:@"SUBTITLE_CELL"])
  {
    [v12 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  }

  else
  {
    [v3 isEqualToString:@"DETAIL_LABEL_CELL"];
  }

  v4 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  if ([v4 isEqualToString:@"STORAGE_UPGRADE"])
  {
    v5 = objc_opt_class();
    v6 = MEMORY[0x277D3FE58];
LABEL_10:
    [v12 setObject:v5 forKeyedSubscript:*v6];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"MANAGE_PLAN"])
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    v5 = *MEMORY[0x277D3FD38];
    v6 = MEMORY[0x277D3FFD8];
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"ICLOUD_PLUS_INFO"])
  {
    v7 = [v12 objectForKeyedSubscript:@"ICON_URL"];
    if (v7)
    {
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      v8 = MEMORY[0x277D40030];
LABEL_20:
      [v12 setObject:v7 forKeyedSubscript:*v8];
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

    v6 = [(AAUISpecifierProvider *)icloudPlusSpecifierProvider specifiers];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)_stringForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"SPECIFIER_TYPE"];
  if ([v4 isEqualToString:@"DETAIL_LABEL_CELL"])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_launchFlowForSpecifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQiCloudFooterSpecifierProvider *)self _beginLoadingSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"ICQUISpecifierKeyICQLink"];
  if (!v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "No icqLink found, falling back to old identifier/url based handling.", v16, 2u);
    }

    v7 = [v4 objectForKeyedSubscript:@"ICQUISpecifierKeyServerUIURL"];
    v8 = [v4 identifier];
    if ([v8 isEqualToString:@"STORAGE_UPGRADE"])
    {

      goto LABEL_8;
    }

    v9 = [v4 identifier];
    v10 = [v9 isEqualToString:@"MANAGE_PLAN"];

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

    v11 = [v4 identifier];
    v12 = [v11 isEqualToString:@"FAMILY_SHARING"];

    if (v12)
    {
      [(ICQiCloudFooterSpecifierProvider *)self _startFamilySharing];
LABEL_21:

      goto LABEL_22;
    }

    v13 = [v4 identifier];
    v14 = [v13 isEqualToString:@"FAMILY_USAGE"];

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
        [ICQiCloudFooterSpecifierProvider _launchFlowForSpecifier:v4];
      }
    }

    [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
    goto LABEL_21;
  }

  [(ICQiCloudFooterSpecifierProvider *)self _handleICQLink:v5 forSpecifier:v4];
LABEL_22:
}

- (void)_handleICQLink:(id)a3 forSpecifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Handling ICQLink: %@ forSpecifier: %@", &v12, 0x16u);
  }

  v9 = [v6 action];
  if (v9 > 118)
  {
    if ((v9 - 120) >= 2)
    {
      if (v9 == 119)
      {
        [(ICQiCloudFooterSpecifierProvider *)self _launchLegacyPurchaseFlow];
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_9:
    [(ICQiCloudFooterSpecifierProvider *)self _launchUpgradeFlowWithICQLink:v6];
    goto LABEL_17;
  }

  switch(v9)
  {
    case 'n':
      v10 = [v6 actionURL];
      [(ICQiCloudFooterSpecifierProvider *)self _launchFamilyUsageFlowWithURL:v10];

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

- (void)_launchUpgradeFlowWithURL:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    [v5 _updateRequestedServerUIURLWithURL:v4];
    v6 = [[ICQUpgradeFlowManager alloc] initWithOffer:v5];
    upgradeFlowManager = self->_upgradeFlowManager;
    self->_upgradeFlowManager = v6;

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with url: %@", &v9, 0xCu);
    }

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager _beginRemoteFlowWithURL:v4];
  }
}

- (void)_launchUpgradeFlowWithICQLink:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v12 = v4;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with icqLink: %@", &v11, 0xCu);
    }

    v9 = self->_upgradeFlowManager;
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [(ICQUpgradeFlowManager *)v9 beginRemoteUpgradeFlowWithICQLink:v4 presenter:WeakRetained];
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
  v13 = [WeakRetained navigationController];
  v23 = [v11 initWithPresenter:v13];

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

- (void)_launchFamilyUsageFlowWithURL:(id)a3
{
  v4 = a3;
  ruiDelegate = self->_ruiDelegate;
  v12 = v4;
  if (!ruiDelegate)
  {
    v6 = [ICQPreferencesRemoteUIDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v8 = [WeakRetained navigationController];
    v9 = [(ICQiCloudFooterSpecifierProvider *)self account];
    v10 = [(ICQPreferencesRemoteUIDelegate *)v6 initWithNavigationController:v8 initialAction:0 account:v9];
    v11 = self->_ruiDelegate;
    self->_ruiDelegate = v10;

    [(ICQPreferencesRemoteUIDelegate *)self->_ruiDelegate setDelegate:self];
    v4 = v12;
    ruiDelegate = self->_ruiDelegate;
  }

  [(ICQPreferencesRemoteUIDelegate *)ruiDelegate loadURL:v4 postBody:0 additionalHeaders:0];
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
  v4 = [(ICQiCloudFooterSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:v4];

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

- (void)upgradeFlowManagerDidCancel:(id)a3
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

- (void)upgradeFlowManagerDidComplete:(id)a3
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

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"QuotaDidChange" object:0];
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQiCloudFooterSpecifierProvider loadFailed:withError:];
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
}

- (void)loadFinished:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "DelayedPushDelegate Loading finished", v5, 2u);
  }

  [(ICQiCloudFooterSpecifierProvider *)self _finishLoadingSpecifier];
}

- (void)loadStarted:(id)a3
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

- (void)_beginLoadingSpecifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  activeSpecifier = self->_activeSpecifier;
  self->_activeSpecifier = v4;
  v6 = v4;

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