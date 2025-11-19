@interface ICQInternetPrivacySpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_handleQuotaJourneyURL:(id)a3;
- (BOOL)_shouldShowInternetPrivacySpecifier;
- (BOOL)handleURL:(id)a3;
- (ICQInternetPrivacySpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)account;
- (id)makeDefaultInternetPrivacySpecifier;
- (void)_configureInternetPrivacySpecifier:(id)a3;
- (void)_controllerLoadAction;
- (void)_fetchStatusWithCompletion:(id)a3;
- (void)_internetPrivacySpecifierLoadJourney:(id)a3;
- (void)_internetPrivacySpecifierWasTapped:(id)a3;
- (void)_presentLearnMoreSubscriberPage;
- (void)_registerForNSPDarwinNotification;
- (void)_reloadSpecifiers;
- (void)_setupWithAltDSID:(id)a3;
- (void)_unregisterForNSPDarwinNotification;
- (void)dealloc;
- (void)reloadQuotaInfo;
- (void)reloadSpecifer:(id)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQInternetPrivacySpecifierProvider

- (ICQInternetPrivacySpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ICQInternetPrivacySpecifierProvider;
  v6 = [(ICQInternetPrivacySpecifierProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
    v8 = [(AIDAAccountManager *)v7->_accountManager accounts];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

    if ([v9 aa_isAccountClass:*MEMORY[0x277CEC688]])
    {
      v10 = [v9 aa_altDSID];
      [(ICQInternetPrivacySpecifierProvider *)v7 _setupWithAltDSID:v10];
    }

    else
    {
      v10 = _ICQGetLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICQInternetPrivacySpecifierProvider initWithAccountManager:v10];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if (self->_observationToken)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self->_observationToken];
  }

  [(ICQInternetPrivacySpecifierProvider *)self _unregisterForNSPDarwinNotification];
  v5.receiver = self;
  v5.super_class = ICQInternetPrivacySpecifierProvider;
  [(ICQInternetPrivacySpecifierProvider *)&v5 dealloc];
}

- (id)account
{
  v2 = [(ICQInternetPrivacySpecifierProvider *)self accountManager];
  v3 = [v2 accounts];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v4;
}

- (void)reloadSpecifer:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Should reload specifer for new Internet Privacy status.", v5, 2u);
  }

  [(ICQInternetPrivacySpecifierProvider *)self _fetchStatus];
}

- (NSArray)specifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICQInternetPrivacySpecifierProvider *)self internetPrivacyAvailability];
    if (v4 - 1 > 2)
    {
      v5 = @"Unknown";
    }

    else
    {
      v5 = off_27A65AE00[v4 - 1];
    }

    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Internet Privacy country availability: %@", buf, 0xCu);
  }

  if (!self->_specifiers)
  {
    v10 = [(ICQInternetPrivacySpecifierProvider *)self internetPrivacySpecifier];
    if (v10)
    {
      v11 = v10;
      v12 = [(ICQInternetPrivacySpecifierProvider *)self _shouldShowInternetPrivacySpecifier];

      if (v12)
      {
        v13 = [(ICQInternetPrivacySpecifierProvider *)self internetPrivacySpecifier];
        v16 = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        specifiers = self->_specifiers;
        self->_specifiers = v14;
      }
    }
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_specifiers;
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacySpecifierProvider returning specifiers %@", buf, 0xCu);
  }

  v8 = self->_specifiers;

  return v8;
}

- (void)_reloadSpecifiers
{
  v4 = [(NSArray *)self->_specifiers copy];
  [(ICQInternetPrivacySpecifierProvider *)self setSpecifiers:0];
  v3 = [(ICQInternetPrivacySpecifierProvider *)self delegate];
  [v3 reloadSpecifiersForProvider:self oldSpecifiers:v4 animated:1];
}

- (void)reloadQuotaInfo
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Refreshing quota storage info.", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"QuotaDidChange" object:0];
}

- (void)_setupWithAltDSID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(ICQInternetPrivacyViewModel);
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  self->_internetPrivacyAvailability = 0;
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  self->_hasProfileRestriction = [v7 isCloudPrivateRelayAllowed] ^ 1;

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = @"networking.privacy.subscriber";
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Loading internet privacy service availability for %{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 bundleIdentifier];

  v11 = [(ICQInternetPrivacySpecifierProvider *)self makeDefaultInternetPrivacySpecifier];
  [(ICQInternetPrivacySpecifierProvider *)self setInternetPrivacySpecifier:v11];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke;
  v17[3] = &unk_27A65AD68;
  v17[4] = self;
  [MEMORY[0x277CFB450] requestGeoClassificationForFeatureID:@"networking.privacy.subscriber" bundleID:v10 altDSID:v4 ignoreCache:0 completion:v17];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_reloadSpecifer_ name:@"PorcupineStatusDidChange" object:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_reloadSpecifer_ name:*MEMORY[0x277D25CA0] object:0];

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke_2;
  v16[3] = &unk_27A65A820;
  v16[4] = self;
  v14 = [MEMORY[0x277CFB450] registerForFeatureChangeNotificationsUsingBlock:v16];
  observationToken = self->_observationToken;
  self->_observationToken = v14;

  [(ICQInternetPrivacySpecifierProvider *)self _registerForNSPDarwinNotification];
  objc_destroyWeak(buf);
}

void __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 - 1) > 2)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_27A65AE00[a2 - 1];
    }

    v9 = [v6 localizedDescription];
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Received status %@, error: %@", buf, 0x16u);
  }

  [*(a1 + 32) setInternetPrivacyAvailability:a2];
  v10 = *(a1 + 32);
  v11 = v10[9] == 2;
  v12 = [v10 viewModel];
  [v12 setServiceIsLimited:v11];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke_44;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  [*(a1 + 32) _fetchStatus];
}

uint64_t __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke_44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 internetPrivacySpecifier];
  [v2 _configureInternetPrivacySpecifier:v3];

  v4 = *(a1 + 32);

  return [v4 _reloadSpecifiers];
}

uint64_t __57__ICQInternetPrivacySpecifierProvider__setupWithAltDSID___block_invoke_2(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "received feature change notification; reloading internet privacy specifiers", v4, 2u);
  }

  return [*(a1 + 32) _fetchStatusWithCompletion:0];
}

- (void)_presentLearnMoreSubscriberPage
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"com.apple.icloud.privaterelay.learnmoresubscriber";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Presenting sheet with identifier %@", &v8, 0xCu);
  }

  v4 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v5 = [ICQInternetPrivacySheetPresenter presenterWithIdentifier:@"com.apple.icloud.privaterelay.learnmoresubscriber" viewModel:v4];

  v6 = [(ICQInternetPrivacySpecifierProvider *)self delegate];
  v7 = [v6 navigationController];

  [v5 setPresentingViewController:v7];
  [v5 present];
}

- (id)makeDefaultInternetPrivacySpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v5 = [v4 switchTitle];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__valueForInternetPrivacySpecifier_ detail:objc_opt_class() cell:-1 edit:0];

  [v6 setIdentifier:@"INTERNET_PRIVACY"];
  v7 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PrivateRelayIcon"];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FFC0]];

  [v6 setControllerLoadAction:sel__controllerLoadAction];

  return v6;
}

- (void)_controllerLoadAction
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__ICQInternetPrivacySpecifierProvider__controllerLoadAction__block_invoke;
  v2[3] = &unk_27A65A820;
  v2[4] = self;
  [(ICQInternetPrivacySpecifierProvider *)self _fetchStatusWithCompletion:v2];
}

void __60__ICQInternetPrivacySpecifierProvider__controllerLoadAction__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) viewModel];
    v4 = [v3 proxyUserTierDescription];
    v5 = [*(a1 + 32) viewModel];
    v6 = [v5 proxyAccountTypeDescription];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "tap action: got user tier: %@, account type: %@", &v12, 0x16u);
  }

  v7 = [*(a1 + 32) viewModel];
  v8 = [v7 proxyAccountType];

  if (v8 == 2)
  {
    v11 = *(a1 + 32);
    v10 = [v11 internetPrivacySpecifier];
    [v11 _internetPrivacySpecifierWasTapped:v10];
  }

  else if (v8 == 1)
  {
    v9 = *(a1 + 32);
    v10 = [v9 internetPrivacySpecifier];
    [v9 _internetPrivacySpecifierLoadJourney:v10];
  }

  else
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "in waiting state ... not doing anything", &v12, 2u);
    }
  }
}

- (void)_configureInternetPrivacySpecifier:(id)a3
{
  v9 = a3;
  v4 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v5 = [v4 switchTitle];
  [v9 setName:v5];

  v6 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v7 = [v6 status];

  if (v7 == 7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 2;
  }

  [v9 setCellType:v8];
}

- (void)_fetchStatusWithCompletion:(id)a3
{
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v5 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v6 = [v5 status];

  v14[3] = v6;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "fetching bannerModels from viewModel", buf, 2u);
  }

  v8 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ICQInternetPrivacySpecifierProvider__fetchStatusWithCompletion___block_invoke;
  v10[3] = &unk_27A65ADB8;
  v10[4] = self;
  v12 = v14;
  v9 = v4;
  v11 = v9;
  [v8 fetchBannerModels:v10];

  _Block_object_dispose(v14, 8);
}

void __66__ICQInternetPrivacySpecifierProvider__fetchStatusWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICQInternetPrivacySpecifierProvider__fetchStatusWithCompletion___block_invoke_2;
  block[3] = &unk_27A65AD90;
  block[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__ICQInternetPrivacySpecifierProvider__fetchStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 status];

  v4 = [*(a1 + 32) viewModel];
  v5 = [v4 status];
  v6 = *(*(*(a1 + 48) + 8) + 24);

  v7 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 == v6;
  }

  if (v9)
  {
    if (v8)
    {
      v15 = [*(a1 + 32) viewModel];
      v16 = [v15 statusDescription];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Skipping Internet Privacy specifier reload in iCloud. Status hasn't changed: %@", &v18, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v10 = [*(a1 + 32) viewModel];
      v11 = [v10 statusDescription];
      v12 = ICQInternetPrivacyViewModelStatusDescription(*(*(*(a1 + 48) + 8) + 24));
      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Configuring and reloading Internet Privacy specifier in iCloud. New status: %@, old status: %@", &v18, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = [v13 internetPrivacySpecifier];
    [v13 _configureInternetPrivacySpecifier:v14];

    [*(a1 + 32) _reloadSpecifiers];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_internetPrivacySpecifierWasTapped:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [ICQInternetPrivacyViewController alloc];
  v5 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
  v6 = [(ICQInternetPrivacySpecifierProvider *)self accountManager];
  v7 = [(ICQInternetPrivacyViewController *)v4 initWithViewModel:v5 accountManager:v6];
  internetPrivacyController = self->_internetPrivacyController;
  self->_internetPrivacyController = v7;

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ICQInternetPrivacySpecifierProvider *)self viewModel];
    v11 = [v10 serviceIsLimited];
    v12 = @"NO";
    if (v11)
    {
      v12 = @"YES";
    }

    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "_internetPrivacySpecifierWasTapped country limited %@", &v14, 0xCu);
  }

  v13 = [(ICQInternetPrivacySpecifierProvider *)self delegate];
  [v13 specifierProvider:self showViewController:self->_internetPrivacyController];
}

- (void)_internetPrivacySpecifierLoadJourney:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Not a private relay subscriber. Presenting journey flow", buf, 2u);
  }

  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ICQInternetPrivacySpecifierProvider__internetPrivacySpecifierLoadJourney___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(v5, block);
}

void __76__ICQInternetPrivacySpecifierProvider__internetPrivacySpecifierLoadJourney___block_invoke(uint64_t a1)
{
  v2 = [ICQUpgradeFlowManager alloc];
  v3 = [(ICQUpgradeFlowManager *)v2 initWithJourneyId:*MEMORY[0x277D7F2B8]];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__ICQInternetPrivacySpecifierProvider__internetPrivacySpecifierLoadJourney___block_invoke_2;
  v6[3] = &unk_27A65A708;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __76__ICQInternetPrivacySpecifierProvider__internetPrivacySpecifierLoadJourney___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setDelegate:*(a1 + 40)];
    [*(a1 + 32) beginJourney];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 setFlowManager:v4];
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__ICQInternetPrivacySpecifierProvider__internetPrivacySpecifierLoadJourney___block_invoke_2_cold_1(v5);
    }
  }
}

- (BOOL)_shouldShowInternetPrivacySpecifier
{
  v2 = [(ICQInternetPrivacySpecifierProvider *)self hasProfileRestriction];
  if (v2)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Hiding Private Relay because [MCProfileConnection sharedConnection] isCloudPrivateRelayAllowed] is NO (Private Relay has a profile restriction)", v5, 2u);
    }
  }

  return !v2;
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacySpecifierProvider upgradeFlowManagerDidCancel:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Freshmint %s", &v5, 0xCu);
  }

  [(ICQInternetPrivacySpecifierProvider *)self reloadSpecifer:0];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacySpecifierProvider upgradeFlowManagerDidComplete:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Freshmint %s", &v5, 0xCu);
  }

  [(ICQInternetPrivacySpecifierProvider *)self reloadSpecifer:0];
  [(ICQInternetPrivacySpecifierProvider *)self reloadQuotaInfo];
}

- (BOOL)handleURL:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"path"];
  if ([v5 containsString:@"INTERNET_PRIVACY"])
  {
    v6 = [(ICQInternetPrivacySpecifierProvider *)self _handleQuotaJourneyURL:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_handleQuotaJourneyURL:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"learnMore"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke;
    v18[3] = &unk_27A65A820;
    v18[4] = self;
    [(ICQInternetPrivacySpecifierProvider *)self _fetchStatusWithCompletion:v18];
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"showNotice"];
    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"showNotice"];
      v9 = [v8 BOOLValue];

      v10 = @"false";
      if (v9)
      {
        v10 = @"true";
      }

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"showNotice=%@", v10];
      v12 = _ICQGetLogSystem();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v14 = *MEMORY[0x277D7F2B8];
      if (v13)
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Launching quota journey with id: %@", buf, 0xCu);
      }

      v19 = v11;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_87;
      v17[3] = &unk_27A65ADE0;
      v17[4] = self;
      [ICQUpgradeFlowManager flowManagerWithJourneyId:v14 params:v15 completion:v17];
    }

    else
    {
      [(ICQInternetPrivacySpecifierProvider *)self _controllerLoadAction];
    }
  }

  return 1;
}

void __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 proxyAccountType];

  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v5 = [v4 internetPrivacySpecifier];
    [v4 _internetPrivacySpecifierLoadJourney:v5];
  }

  else
  {

    [v4 _presentLearnMoreSubscriberPage];
  }
}

void __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setFlowManager:v5];
    [v5 setDelegate:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_2;
    block[3] = &unk_27A65A820;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7 = v9;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_87_cold_1(v6, v7);
    }
  }
}

- (void)_registerForNSPDarwinNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.networkserviceproxy.privacy-proxy-configuration-changed";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Registering for darwin notification %@", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleNSPDarwinNotification, @"com.apple.networkserviceproxy.privacy-proxy-configuration-changed", 0, 1028);
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.networkserviceproxy.privacy-proxy-service-status-changed";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Registering for darwin notification %@", &v6, 0xCu);
  }

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleNSPDarwinNotification, @"com.apple.networkserviceproxy.privacy-proxy-service-status-changed", 0, 1028);
}

- (void)_unregisterForNSPDarwinNotification
{
  v8 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.networkserviceproxy.privacy-proxy-configuration-changed";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "unregistering for darwin notification %@", &v6, 0xCu);
  }

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.networkserviceproxy.privacy-proxy-configuration-changed", 0);
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"com.apple.networkserviceproxy.privacy-proxy-service-status-changed";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "unregistering for darwin notification %@", &v6, 0xCu);
  }

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.networkserviceproxy.privacy-proxy-service-status-changed", 0);
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_87_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Failed to lauch journey: %@", &v2, 0xCu);
}

@end