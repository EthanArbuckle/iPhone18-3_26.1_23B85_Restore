@interface ICQInternetPrivacyViewController
- (ICQInternetPrivacyDelegate)specifierDelegate;
- (ICQInternetPrivacyViewController)initWithViewModel:(id)a3 accountManager:(id)a4;
- (id)specifiers;
- (void)_setupNavigationBar;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)insertSpecifier:(id)a3 afterSpecifierNamed:(id)a4 animated:(BOOL)a5;
- (void)presentIncompatibleSitesHelp;
- (void)presentLearnMoreFrom:(id)a3;
- (void)presentSystemStatus;
- (void)reloadSpecifierForProvider:(id)a3 identifier:(id)a4;
- (void)reloadSpecifiersForProvider:(id)a3 oldSpecifiers:(id)a4 animated:(BOOL)a5;
- (void)showAlert:(id)a3;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)statusDidChange;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICQInternetPrivacyViewController

- (ICQInternetPrivacyViewController)initWithViewModel:(id)a3 accountManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICQInternetPrivacyViewController;
  v9 = [(ICQInternetPrivacyViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    v11 = [[ICQInternetPrivacyDetailSpecifierProvider alloc] initWithViewModel:v7 accountManager:v8];
    detailSpecifierProvider = v10->_detailSpecifierProvider;
    v10->_detailSpecifierProvider = v11;

    [(ICQInternetPrivacyDetailSpecifierProvider *)v10->_detailSpecifierProvider setDelegate:v10];
    [(ICQInternetPrivacyDetailSpecifierProvider *)v10->_detailSpecifierProvider setDetailDelegate:v10];
    [(ICQInternetPrivacyDetailSpecifierProvider *)v10->_detailSpecifierProvider setPresenter:v10];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICQInternetPrivacyViewController;
  [(ICQInternetPrivacyViewController *)&v4 viewWillAppear:a3];
  [(ICQInternetPrivacyViewController *)self _setupNavigationBar];
}

- (void)_setupNavigationBar
{
  v5 = [(ICQInternetPrivacyViewController *)self navigationItem];
  v3 = [(ICQInternetPrivacyViewController *)self viewModel];
  v4 = [v3 navTitle];
  [v5 setTitle:v4];
}

- (id)specifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyController is loading specifiers.", &v18, 2u);
    }

    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ICQInternetPrivacyViewController *)self viewModel];
      v7 = [v6 proxyUserTierDescription];
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "User tier %@", &v18, 0xCu);
    }

    v8 = [(ICQInternetPrivacyViewController *)self viewModel];
    v9 = [v8 proxyAccountType];

    if (v9 == 2)
    {
      v10 = [(ICQInternetPrivacyViewController *)self detailSpecifierProvider];
      v11 = [v10 specifiers];
      v12 = [v11 copy];
      v13 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v12;
    }
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(&self->super.super.super.super.super.isa + v3);
    v18 = 138412290;
    v19 = v15;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyController specifiers: returning %@", &v18, 0xCu);
  }

  v16 = *(&self->super.super.super.super.super.isa + v3);

  return v16;
}

- (void)reloadSpecifiersForProvider:(id)a3 oldSpecifiers:(id)a4 animated:(BOOL)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQInternetPrivacyViewController *)self reloadSpecifiers];
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQInternetPrivacyViewController *)self showController:v5 animate:1];
}

- (void)insertSpecifier:(id)a3 afterSpecifierNamed:(id)a4 animated:(BOOL)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ICQInternetPrivacyViewController *)self specifierForID:v8];
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Inserting new specifier %@ after %@", &v16, 0x16u);
  }

  if ([*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) containsObject:v7])
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v12 = "Did not insert new specifier because it's already present";
      v13 = v11;
      v14 = 2;
LABEL_8:
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  else
  {
    v15 = [(ICQInternetPrivacyViewController *)self specifierForID:v8];
    [(ICQInternetPrivacyViewController *)self insertSpecifier:v7 afterSpecifier:v15 animated:1];

    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      v12 = "Inserted new specifier %@";
      v13 = v11;
      v14 = 12;
      goto LABEL_8;
    }
  }
}

- (void)reloadSpecifierForProvider:(id)a3 identifier:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Reloading specifier with ID: %@", &v7, 0xCu);
  }

  [(ICQInternetPrivacyViewController *)self reloadSpecifierID:v5];
}

- (void)showAlert:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Showing an alert %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ICQInternetPrivacyViewController_showAlert___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __46__ICQInternetPrivacyViewController_showAlert___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)presentLearnMoreFrom:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Presenting sheet with identifier %@", &v8, 0xCu);
  }

  v6 = [(ICQInternetPrivacyViewController *)self viewModel];
  v7 = [ICQInternetPrivacySheetPresenter presenterWithIdentifier:v4 viewModel:v6];

  [v7 setPresentingViewController:self];
  [v7 present];
}

- (void)presentSystemStatus
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D7F370];
  v4 = *MEMORY[0x277D7F280];
  v5[0] = @"https://www.apple.com/support/systemstatus/";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 performAction:6 parameters:v3 options:0];
}

- (void)presentIncompatibleSitesHelp
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D7F370];
  v4 = *MEMORY[0x277D7F280];
  v5[0] = @"https://support.apple.com/ht213548?cid=mc-ols-icloud-article_ht213548-ios_ui-05232023";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 performAction:6 parameters:v3 options:0];
}

- (void)statusDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ICQInternetPrivacyViewController statusDidChange]";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"PorcupineStatusDidChange" object:0];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Handling deep link for private relay.", buf, 2u);
  }

  v9 = [v6 objectForKeyedSubscript:@"learnMore"];
  v10 = [v6 objectForKeyedSubscript:@"showNotice"];
  if (v9 && [v9 BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ICQInternetPrivacyViewController_handleURL_withCompletion___block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"showNotice"];
    v12 = [v11 BOOLValue];

    v13 = @"false";
    if (v12)
    {
      v13 = @"true";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"showNotice=%@", v13];
    v15 = _ICQGetLogSystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    v17 = *MEMORY[0x277D7F2B8];
    if (v16)
    {
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Launching quota journey with id: %@", buf, 0xCu);
    }

    v22 = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__ICQInternetPrivacyViewController_handleURL_withCompletion___block_invoke_68;
    v20[3] = &unk_27A65ADE0;
    v20[4] = self;
    [ICQUpgradeFlowManager flowManagerWithJourneyId:v17 params:v18 completion:v20];

    if (v7)
    {
LABEL_13:
      v7[2](v7);
    }
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "It's not a show notice or learn more url. Will take no further actions.", buf, 2u);
    }

    if (v7)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

void __61__ICQInternetPrivacyViewController_handleURL_withCompletion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 1456), a2);
    [v6 setDelegate:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ICQInternetPrivacyViewController_handleURL_withCompletion___block_invoke_2;
    block[3] = &unk_27A65A820;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = v10;
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__ICQInternetPrivacySpecifierProvider__handleQuotaJourneyURL___block_invoke_87_cold_1(v7, v8);
    }
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed.", v4, 2u);
  }
}

- (ICQInternetPrivacyDelegate)specifierDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_specifierDelegate);

  return WeakRetained;
}

@end