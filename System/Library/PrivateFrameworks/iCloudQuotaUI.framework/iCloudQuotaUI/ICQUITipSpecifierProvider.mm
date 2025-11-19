@interface ICQUITipSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_tipArrowConfigurationIsEligibleForDisplay:(id)a3;
- (ICQUITipSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4 sectionAnchorIdentifier:(id)a5 showUpwardPointingTips:(BOOL)a6;
- (NSArray)specifiers;
- (id)_tipSpecifiers;
- (id)_valueForSpecifier:(id)a3;
- (id)account;
- (id)tipForManageStorageFromAttributes:(id)a3 rows:(id)a4 viewController:(id)a5 remoteUIDelegate:(id)a6;
- (void)_cleanUpSyncWithiCloudFooterIfApplicable;
- (void)_dismissPressed;
- (void)_fetchAndDisplayTipIfNotYetDismissed;
- (void)_fetchTip:(id)a3;
- (void)_getEligibleTipFromTips:(id)a3 completion:(id)a4;
- (void)_launchLegacyRemoteUIWithURL:(id)a3;
- (void)_launchLiftUIWithURL:(id)a3;
- (void)_launchRemoteUIWithURL:(id)a3 forDataclasses:(id)a4;
- (void)_launchUpgradeFlowWithAction:(int64_t)a3 andURL:(id)a4;
- (void)_launchUpgradeFlowWithActionString:(id)a3 andURL:(id)a4;
- (void)_openExternalLink:(id)a3;
- (void)_openLiftUILink:(id)a3;
- (void)_openRemoteUILink:(id)a3 forDataclasses:(id)a4;
- (void)_reloadSpecifiers;
- (void)_removeVisibleTip;
- (void)_tipDisplayed;
- (void)_updateSyncWithiCloudFooterIfApplicable;
- (void)dealloc;
- (void)liftUIPresenterDidCancel:(id)a3;
- (void)liftUIPresenterDidComplete:(id)a3;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)loadStarted:(id)a3;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQUITipSpecifierProvider

- (ICQUITipSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4 sectionAnchorIdentifier:(id)a5 showUpwardPointingTips:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ICQUITipSpecifierProvider;
  v14 = [(ICQUITipSpecifierProvider *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accountManager, a3);
    objc_storeWeak(&v15->_listController, v12);
    v15->_showUpwardPointingTips = a6;
    objc_storeStrong(&v15->_anchorIdentifier, a5);
    v15->_hasDismissedTip = 0;
    v15->_tipRequestState = 0;
  }

  return v15;
}

- (void)dealloc
{
  manageStorageTipController = self->_manageStorageTipController;
  if (manageStorageTipController)
  {
    [(AMSUIBubbleTipViewController *)manageStorageTipController removeFromParentViewController];
    [(AMSUIBubbleTipViewController *)self->_manageStorageTipController setDelegate:0];
    v4 = self->_manageStorageTipController;
    self->_manageStorageTipController = 0;
  }

  v5.receiver = self;
  v5.super_class = ICQUITipSpecifierProvider;
  [(ICQUITipSpecifierProvider *)&v5 dealloc];
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
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
    tipRequestState = self->_tipRequestState;
    switch(tipRequestState)
    {
      case 2:
        if (self->_viewModel)
        {
          v8 = [(ICQUITipSpecifierProvider *)self _tipSpecifiers];

          v5 = v8;
        }

        self->_tipRequestState = 0;
        break;
      case 1:
        v7 = _ICQGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Tip request is already in progress. Bailing!", v12, 2u);
        }

        break;
      case 0:
        [(ICQUITipSpecifierProvider *)self _fetchAndDisplayTipIfNotYetDismissed];
        break;
    }

    v9 = [v5 copy];
    v10 = self->_specifiers;
    self->_specifiers = v9;

    v3 = self->_specifiers;
  }

  return v3;
}

- (id)_tipSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TIP_GROUP"];
  v5 = [(ICQUIInlineTipViewModel *)self->_viewModel tipArrow];
  v6 = [v5 arrowDirection];

  if (v6)
  {
    v7 = [(ICQUIInlineTipViewModel *)self->_viewModel tipArrow];
    v8 = [v7 arrowDirection];

    if (v8 == 1)
    {
      v9 = @"DOWN";
    }

    else
    {
      v9 = @"NONE";
    }
  }

  else
  {
    v9 = @"UP";
  }

  [v4 setObject:v9 forKeyedSubscript:@"TIP_ORIENTATION"];
  [v4 setObject:&unk_288479CF0 forKeyedSubscript:*MEMORY[0x277D3FF40]];
  [v3 addObject:v4];
  v10 = MEMORY[0x277D3FAD8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"TIP_HOST" value:&stru_28844FC60 table:@"Localizable"];
  v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:sel__valueForSpecifier_ detail:0 cell:-1 edit:0];

  [v13 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  v14 = objc_alloc(MEMORY[0x277CEE8A0]);
  v15 = [(ICQUIInlineTipViewModel *)self->_viewModel request];
  v16 = [v14 initWithRequest:v15];
  inlineTipController = self->_inlineTipController;
  self->_inlineTipController = v16;

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained addChildViewController:self->_inlineTipController];

  v19 = [(ICQUIInlineTipViewModel *)self->_viewModel tipArrow];
  [(AMSUIBubbleTipViewController *)self->_inlineTipController setInlineAnchorInfo:v19];

  [(AMSUIBubbleTipViewController *)self->_inlineTipController setDelegate:self];
  v20 = [(AMSUIBubbleTipViewController *)self->_inlineTipController view];
  [v13 setObject:v20 forKeyedSubscript:@"ICQUITipView"];

  [v3 addObject:v13];

  return v3;
}

- (void)_fetchAndDisplayTipIfNotYetDismissed
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_hasDismissedTip)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      anchorIdentifier = self->_anchorIdentifier;
      v5 = @"NO";
      if (self->_showUpwardPointingTips)
      {
        v5 = @"YES";
      }

      *buf = 138412546;
      v9 = anchorIdentifier;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Will not fetch tips for ICQUITipSpecifierProvider with _anchorIdentifier (%@) and _showUpwardPointingTips (%@), has already been dismissed.", buf, 0x16u);
    }

    self->_tipRequestState = 2;
  }

  else
  {
    self->_tipRequestState = 1;
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__ICQUITipSpecifierProvider__fetchAndDisplayTipIfNotYetDismissed__block_invoke;
    v6[3] = &unk_27A65C8E0;
    objc_copyWeak(&v7, buf);
    [(ICQUITipSpecifierProvider *)self _fetchTip:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __65__ICQUITipSpecifierProvider__fetchAndDisplayTipIfNotYetDismissed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ICQUITipSpecifierProvider__fetchAndDisplayTipIfNotYetDismissed__block_invoke_2;
  v5[3] = &unk_27A65C718;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __65__ICQUITipSpecifierProvider__fetchAndDisplayTipIfNotYetDismissed__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained viewModel];
    if (v4)
    {
      v5 = *(a1 + 32);

      if (!v5)
      {
        [v3 setHasDismissedTip:1];
      }
    }

    v3[11] = 2;
    [v3 setViewModel:*(a1 + 32)];
    [v3 _reloadSpecifiers];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "ICQUITipSpecifierProvider was deallocated before the fetchTips request finished.", v7, 2u);
    }
  }
}

- (void)_fetchTip:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    anchorIdentifier = self->_anchorIdentifier;
    v7 = @"false";
    if (self->_showUpwardPointingTips)
    {
      v7 = @"true";
    }

    *buf = 138412546;
    *&buf[4] = anchorIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Fetching tips for ICQUITipSpecifierProvider with _anchorIdentifier (%@) and _showUpwardPointingTips (%@)", buf, 0x16u);
  }

  if (self->_anchorIdentifier)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__14;
    v24 = __Block_byref_object_dispose__14;
    v8 = objc_alloc(MEMORY[0x277D7F338]);
    v9 = [(ICQUITipSpecifierProvider *)self account];
    v25 = [v8 initWithAccount:v9];

    if (self->_hasDismissedTip)
    {
      [*(*&buf[8] + 40) setShouldIgnoreCache:1];
    }

    objc_initWeak(&location, self);
    v10 = self->_anchorIdentifier;
    showUpwardPointingTips = self->_showUpwardPointingTips;
    v12 = *(*&buf[8] + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__ICQUITipSpecifierProvider__fetchTip___block_invoke;
    v15[3] = &unk_27A65C930;
    v17 = v4;
    v18 = buf;
    objc_copyWeak(&v19, &location);
    v13 = v10;
    v16 = v13;
    v20 = showUpwardPointingTips;
    [v12 fetchStorageSummaryWithCompletion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _fetchTip:];
    }

    (*(v4 + 2))(v4, 0);
  }
}

void __39__ICQUITipSpecifierProvider__fetchTip___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__ICQUITipSpecifierProvider__fetchTip___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v11 = [v5 tips];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__ICQUITipSpecifierProvider__fetchTip___block_invoke_94;
    v12[3] = &unk_27A65C908;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    v13 = *(a1 + 32);
    v17 = *(a1 + 64);
    v14 = *(a1 + 40);
    [WeakRetained _getEligibleTipFromTips:v11 completion:v12];

    objc_destroyWeak(&v16);
  }
}

void __39__ICQUITipSpecifierProvider__fetchTip___block_invoke_94(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "ICQUITipSpecifierProvider was deallocated before _getEligibleTipFromTips completion.", &v17, 2u);
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    [WeakRetained _updateSyncWithiCloudFooterIfApplicable];
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = @"NO";
      if (*(a1 + 64))
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Specifier provider found no eligible tip for display in section (%@) with isUpwardPointingTip (%@)", &v17, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
LABEL_14:
    v16 = *(*(a1 + 48) + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = 0;
    goto LABEL_15;
  }

  [WeakRetained _cleanUpSyncWithiCloudFooterIfApplicable];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v3 arrowConfiguration];
    v17 = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Specifier provider found eligible tip for display in section (%@) with arrow configuration (%@): %@", &v17, 0x20u);
  }

  v9 = [[ICQUIInlineTipViewModel alloc] initWithInlineTip:v3];
  (*(*(a1 + 40) + 16))();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

LABEL_15:
}

- (void)_getEligibleTipFromTips:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D7F3A8];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [(ICQUITipSpecifierProvider *)self account];
  v11 = [v9 initWithAccount:v10];

  v12 = [ICQUIEligibleTipPicker alloc];
  v13 = [(ICQUITipSpecifierProvider *)self account];
  v14 = [(ICQUIEligibleTipPicker *)v12 initWithAccount:v13 planRecommendation:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__ICQUITipSpecifierProvider__getEligibleTipFromTips_completion___block_invoke;
  v16[3] = &unk_27A65C958;
  v16[4] = self;
  v17 = v6;
  v15 = v6;
  [(ICQUIEligibleTipPicker *)v14 getFirstEligibleTipFromTips:v8 completion:v16];
}

void __64__ICQUITipSpecifierProvider__getEligibleTipFromTips_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 anchor];
    if ([v4 isEqualToString:*(*(a1 + 32) + 72)])
    {
      v5 = *(a1 + 32);
      v6 = [v8 arrowConfiguration];
      LOBYTE(v5) = [v5 _tipArrowConfigurationIsEligibleForDisplay:v6];

      if (v5)
      {
        v7 = *(*(a1 + 40) + 16);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v7 = *(*(a1 + 40) + 16);
LABEL_7:
  v7();
}

- (BOOL)_tipArrowConfigurationIsEligibleForDisplay:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D7F368] upwardArrowConfigurationStrings];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    showUpwardPointingTips = self->_showUpwardPointingTips;
  }

  else
  {
    v8 = [MEMORY[0x277D7F368] downwardArrowConfigurationStrings];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      showUpwardPointingTips = !self->_showUpwardPointingTips;
    }

    else
    {
      v10 = _ICQGetLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICQUITipSpecifierProvider _tipArrowConfigurationIsEligibleForDisplay:];
      }

      showUpwardPointingTips = 0;
    }
  }

  return showUpwardPointingTips;
}

- (void)_reloadSpecifiers
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
}

- (id)_valueForSpecifier:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Value for tip specifier", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICQUITipSpecifierProvider__valueForSpecifier___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  if (_valueForSpecifier__onceToken != -1)
  {
    dispatch_once(&_valueForSpecifier__onceToken, block);
  }

  return 0;
}

- (void)_tipDisplayed
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__ICQUITipSpecifierProvider__tipDisplayed__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__ICQUITipSpecifierProvider__tipDisplayed__block_invoke_cold_1();
    }
  }
}

- (void)_removeVisibleTip
{
  viewModel = self->_viewModel;
  if (viewModel)
  {
    self->_viewModel = 0;

    specifiers = self->_specifiers;
    self->_specifiers = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICQUITipSpecifierProvider__removeVisibleTip__block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __46__ICQUITipSpecifierProvider__removeVisibleTip__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained removeChildViewController:*(*(a1 + 32) + 24)];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v3 removeSpecifierID:@"TIP_GROUP"];
}

- (void)_dismissPressed
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__ICQUITipSpecifierProvider__dismissPressed__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__ICQUITipSpecifierProvider__dismissPressed__block_invoke_cold_1();
    }
  }
}

- (void)_openExternalLink:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(ICQUIInlineTipViewModel *)self->_viewModel request];
      v8 = [v7 title];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Opening external link %@ from tip with title: %@", &v9, 0x16u);
    }

    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v6 openSensitiveURL:v4 withOptions:0];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ICQUITipSpecifierProvider _openExternalLink:];
  }
}

- (void)_openRemoteUILink:(id)a3 forDataclasses:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ICQUIInlineTipViewModel *)self->_viewModel request];
      v11 = [v10 title];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Opening RemoteUI link %@ from tip with title: %@", &v12, 0x16u);
    }

    [(ICQUITipSpecifierProvider *)self _launchRemoteUIWithURL:v6 forDataclasses:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _openRemoteUILink:forDataclasses:];
    }
  }
}

- (void)_openLiftUILink:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(ICQUIInlineTipViewModel *)self->_viewModel request];
      v8 = [v7 title];
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Opening LiftUI link %@ from tip with title: %@", &v9, 0x16u);
    }

    [(ICQUITipSpecifierProvider *)self _launchLiftUIWithURL:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _openLiftUILink:];
    }
  }
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v10 = *MEMORY[0x277D85DE8];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11.width = width;
    v11.height = height;
    v7 = NSStringFromCGSize(v11);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "AMSUIViewController didUpdateSize to %@", &v8, 0xCu);
  }
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "AMSUIViewController didSelectDialogAction for %@", buf, 0xCu);
  }

  v7 = [v5 selectedActionIdentifier];
  v8 = [v5 originalRequest];
  v9 = [v8 locateActionWithIdentifier:v7];

  v10 = [v9 deepLink];
  v11 = [v9 userInfo];
  v51 = [v11 objectForKeyedSubscript:@"actionName"];
  v12 = [v11 objectForKeyedSubscript:@"isTurnOnApps"];
  v13 = [v12 BOOLValue];

  v50 = v11;
  if (v13)
  {
    v47 = v9;
    v48 = v7;
    v49 = v5;
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Handling turn on apps request, appending count to URL", buf, 2u);
    }

    v15 = [v11 objectForKeyedSubscript:@"excludeApps"];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    v17 = self;
    v18 = [(ICQUITipSpecifierProvider *)self account];
    v19 = [ICQUIDataclassHelper dataclassesToEnableForAccount:v18 excludedApps:v16];

    v20 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v10 resolvingAgainstBaseURL:0];
    v21 = [v20 queryItems];
    v22 = v10;
    v23 = objc_alloc(MEMORY[0x277CCAD18]);
    v24 = v19;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    v26 = [v25 stringValue];
    v27 = [v23 initWithName:@"appCount" value:v26];
    v28 = [v21 arrayByAddingObject:v27];
    [v20 setQueryItems:v28];

    v10 = [v20 URL];

    v7 = v48;
    v5 = v49;
    v9 = v47;
  }

  else
  {
    v17 = self;
    v24 = 0;
  }

  v29 = _ICQGetLogSystem();
  v30 = v51;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v10 absoluteString];
    *buf = 138412546;
    v53 = v51;
    v54 = 2112;
    v55 = v31;
    _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "Handling select action with identifier (%@) with deep link (%@).", buf, 0x16u);
  }

  v32 = v17;
  if (![v51 isEqualToString:*MEMORY[0x277CEE180]])
  {
    v33 = v50;
    if ([v51 isEqualToString:@"OPEN_EXT_LINK"])
    {
      if (v24)
      {
        v34 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        [ICQUITipSpecifierProvider messageViewController:didSelectActionWithDialogResult:];
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v36 = v10;
    if ([v51 isEqualToString:@"LAUNCH_REMOTE_UI"])
    {
      v37 = [v50 objectForKeyedSubscript:@"id"];
      v38 = [v37 isEqualToString:*MEMORY[0x277D7F318]];

      if (!v38)
      {
        v10 = v36;
        [(ICQUITipSpecifierProvider *)v32 _openRemoteUILink:v36 forDataclasses:v24];
LABEL_38:
        v30 = v51;
        goto LABEL_39;
      }

      v39 = [v50 objectForKeyedSubscript:@"isManageStorageTip"];

      v40 = [v9 deepLink];
      if (v39)
      {
        [(ICQUITipSpecifierProvider *)v32 _launchLegacyRemoteUIWithURL:v40];
LABEL_37:

        v10 = v36;
        goto LABEL_38;
      }
    }

    else
    {
      if (![v51 isEqualToString:@"LAUNCH_LIFT_UI"])
      {
        if ([v51 isEqualToString:@"UPGRADE_ICLOUD_STORAGE_DIRECT_TO_OSLO"])
        {
          v44 = [v9 deepLink];
          [(ICQUITipSpecifierProvider *)v32 _launchUpgradeFlowWithAction:118 andURL:v44];

          v30 = v51;
          goto LABEL_39;
        }

        if (_ICQActionForString())
        {
          v45 = _ICQGetLogSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275623000, v45, OS_LOG_TYPE_DEFAULT, "No special  handling for action identifier, launching upgrade flow", buf, 2u);
          }

          v35 = [v9 deepLink];
          v30 = v51;
          [(ICQUITipSpecifierProvider *)v32 _launchUpgradeFlowWithActionString:v51 andURL:v35];
          goto LABEL_21;
        }

        v30 = v51;
        if (!v10)
        {
          goto LABEL_39;
        }

        v46 = _ICQGetLogSystem();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v46, OS_LOG_TYPE_DEFAULT, "No action identifier included in action, opening as external link.", buf, 2u);
        }

        if (v24)
        {
          v34 = _ICQGetLogSystem();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_20:
        v35 = [v9 deepLink];
        [(ICQUITipSpecifierProvider *)v32 _openExternalLink:v35];
LABEL_21:

        goto LABEL_39;
      }

      if (v24)
      {
        v41 = _ICQGetLogSystem();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [ICQUITipSpecifierProvider messageViewController:didSelectActionWithDialogResult:];
        }
      }

      v42 = [v50 objectForKeyedSubscript:@"id"];
      v43 = [v42 isEqualToString:*MEMORY[0x277D7F318]];

      v40 = [v9 deepLink];
      if (!v43)
      {
        [(ICQUITipSpecifierProvider *)v32 _openLiftUILink:v40];
        goto LABEL_37;
      }
    }

    [(ICQUITipSpecifierProvider *)v32 _launchUpgradeFlowWithActionString:v51 andURL:v40];

    v10 = v36;
    v30 = v51;
    goto LABEL_39;
  }

  [(ICQUITipSpecifierProvider *)v17 _dismissPressed];
  v33 = v50;
LABEL_39:
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ICQUITipSpecifierProvider messageViewController:didFailWithError:];
  }
}

- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "AMSUIViewController finished loading request %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ICQUITipSpecifierProvider_messageViewController_didLoadDialogRequest___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_launchLiftUIWithURL:(id)a3
{
  v4 = a3;
  if (self->_liftUIPresenter)
  {
    p_super = _ICQGetLogSystem();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _launchLiftUIWithURL:];
    }

LABEL_8:

    goto LABEL_9;
  }

  v6 = [ICQLiftUIPresenter alloc];
  v7 = [(ICQUITipSpecifierProvider *)self account];
  v8 = [(ICQLiftUIPresenter *)v6 initWithURL:v4 account:v7 data:0];
  liftUIPresenter = self->_liftUIPresenter;
  self->_liftUIPresenter = v8;

  [(ICQLiftUIPresenter *)self->_liftUIPresenter setDelegate:self];
  v10 = self->_liftUIPresenter;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v12 = [WeakRetained navigationController];
  LOBYTE(v10) = [(ICQLiftUIPresenter *)v10 pushInNavigationController:v12 animated:1];

  if ((v10 & 1) == 0)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _launchLiftUIWithURL:];
    }

    p_super = &self->_liftUIPresenter->super;
    self->_liftUIPresenter = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_launchRemoteUIWithURL:(id)a3 forDataclasses:(id)a4
{
  v6 = a4;
  v12 = a3;
  v7 = [ICQUIRemoteUIPresenter alloc];
  v8 = [(ICQUITipSpecifierProvider *)self account];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v10 = [(ICQUIRemoteUIPresenter *)v7 initWithAccount:v8 presenter:WeakRetained];
  ruiFlowManager = self->_ruiFlowManager;
  self->_ruiFlowManager = v10;

  [(ICQUIRemoteUIPresenter *)self->_ruiFlowManager setDelegate:self];
  [(ICQUIRemoteUIPresenter *)self->_ruiFlowManager setDataclasses:v6];

  [(ICQUIRemoteUIPresenter *)self->_ruiFlowManager beginRUIFlowWithURL:v12];
}

- (void)_launchLegacyRemoteUIWithURL:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_legacyRemoteUIDelegate);

  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "legacyRemoteUIDelegate used to launch url: %@", &v8, 0xCu);
    }

    v7 = objc_loadWeakRetained(&self->_legacyRemoteUIDelegate);
    [v7 loadURL:v4 postBody:0 additionalHeaders:0];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQUITipSpecifierProvider _launchLegacyRemoteUIWithURL:];
  }
}

- (void)_launchUpgradeFlowWithActionString:(id)a3 andURL:(id)a4
{
  v5 = a4;
  [(ICQUITipSpecifierProvider *)self _launchUpgradeFlowWithAction:_ICQActionForString() andURL:v5];
}

- (void)_launchUpgradeFlowWithAction:(int64_t)a3 andURL:(id)a4
{
  v6 = a4;
  if (self->_upgradeFlowManager)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _launchUpgradeFlowWithAction:andURL:];
    }
  }

  else
  {
    v8 = objc_alloc_init(ICQUpgradeFlowManager);
    upgradeFlowManager = self->_upgradeFlowManager;
    self->_upgradeFlowManager = v8;

    [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
    if (v6)
    {
      v10 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:a3 url:v6];
      v11 = self->_upgradeFlowManager;
      WeakRetained = objc_loadWeakRetained(&self->_listController);
      [(ICQUpgradeFlowManager *)v11 beginRemoteUpgradeFlowWithICQLink:v10 presenter:WeakRetained];
    }

    else
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "URL is nil. Launching fallback upgrade flow.", v14, 2u);
      }

      [(ICQUpgradeFlowManager *)self->_upgradeFlowManager _beginRemoteFlowWithURL:0];
    }
  }
}

- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "RUI flow completed with success: %d, error: %@", v9, 0x12u);
  }

  if (!v7)
  {
    [(ICQUITipSpecifierProvider *)self _removeVisibleTip];
  }
}

- (void)liftUIPresenterDidComplete:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "LiftUI flow completed", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v6 = [WeakRetained navigationController];
  v7 = [v6 popViewControllerAnimated:1];

  [(ICQUITipSpecifierProvider *)self _removeVisibleTip];
  liftUIPresenter = self->_liftUIPresenter;
  self->_liftUIPresenter = 0;
}

- (void)liftUIPresenterDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "LiftUI flow cancelled", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v6 = [WeakRetained navigationController];
  v7 = [v6 popViewControllerAnimated:1];

  liftUIPresenter = self->_liftUIPresenter;
  self->_liftUIPresenter = 0;
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  v4 = a4;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ICQUITipSpecifierProvider loadFailed:withError:];
  }
}

- (void)loadFinished:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "DelayedPushDelegate for ICQ Tip Loading finished", v4, 2u);
  }
}

- (void)loadStarted:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "DelayedPushDelegate for ICQ Tip Loading started", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v6, 2u);
  }

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

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;

  [(ICQUITipSpecifierProvider *)self _removeVisibleTip];
}

- (void)_updateSyncWithiCloudFooterIfApplicable
{
  v11 = [(ICQUITipSpecifierProvider *)self account];
  if ([v11 aa_isCloudSubscriber] && self->_anchorIdentifier == *MEMORY[0x277D7F310])
  {
    hasDismissedTip = self->_hasDismissedTip;

    if (!hasDismissedTip)
    {
      v4 = [(ICQUITipSpecifierProvider *)self account];
      v5 = [ICQUIDataclassHelper dataclassesToEnableForAccount:v4 excludedApps:MEMORY[0x277CBEBF8]];

      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
      }

      if ([v5 count] < 2)
      {
        v8 = @" ";
      }

      else
      {
        v7 = [(ICQUITipSpecifierProvider *)self account];
        v8 = [ICQUIDataclassHelper footerTextForSyncWithiCloudSpecifiersFromDataclasses:v5 forAccount:v7];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__ICQUITipSpecifierProvider__updateSyncWithiCloudFooterIfApplicable__block_invoke;
      block[3] = &unk_27A65B108;
      block[4] = self;
      v13 = v5;
      v14 = v8;
      v9 = v8;
      v10 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
  }
}

void __68__ICQUITipSpecifierProvider__updateSyncWithiCloudFooterIfApplicable__block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v3 = [WeakRetained specifierForID:@"SYNC WITH ICLOUD"];

  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = a1[5];
      v7 = 138412290;
      v8 = v6;
    }

    [v3 setObject:a1[6] forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  else
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "DataclassesGroupSpecifier not found. Cannot update footer for disabled dataclasses.", &v7, 2u);
    }
  }
}

- (void)_cleanUpSyncWithiCloudFooterIfApplicable
{
  if (self->_anchorIdentifier == *MEMORY[0x277D7F310])
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__ICQUITipSpecifierProvider__cleanUpSyncWithiCloudFooterIfApplicable__block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__ICQUITipSpecifierProvider__cleanUpSyncWithiCloudFooterIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = [WeakRetained specifierForID:@"SYNC WITH ICLOUD"];

  v3 = *MEMORY[0x277D3FF88];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];

  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v7 = 0;
    }

    [v2 setObject:0 forKeyedSubscript:v3];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
    }
  }
}

- (id)tipForManageStorageFromAttributes:(id)a3 rows:(id)a4 viewController:(id)a5 remoteUIDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10 && v13)
  {
    objc_storeWeak(&self->_legacyRemoteUIDelegate, v13);
    v15 = [[ICQUIManageStorageTipViewModel alloc] initWithSectionAttributes:v10 rows:v11];
    v16 = objc_alloc_init(ICQUIInlineTipRow);
    [(RUITableViewRow *)v16 setDelegate:self];
    manageStorageTipController = self->_manageStorageTipController;
    if (!manageStorageTipController)
    {
      v18 = objc_alloc(MEMORY[0x277CEE8A0]);
      v19 = [(ICQUIManageStorageTipViewModel *)v15 request];
      v20 = [v18 initWithRequest:v19];
      v21 = self->_manageStorageTipController;
      self->_manageStorageTipController = v20;

      manageStorageTipController = self->_manageStorageTipController;
    }

    [v12 addChildViewController:manageStorageTipController];
    v22 = [(AMSUIBubbleTipViewController *)self->_manageStorageTipController view];
    [(ICQUIInlineTipRow *)v16 setTipView:v22];

    [(AMSUIBubbleTipViewController *)self->_manageStorageTipController setDelegate:self];
  }

  else
  {
    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider tipForManageStorageFromAttributes:rows:viewController:remoteUIDelegate:];
    }

    v16 = 0;
  }

  return v16;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_tipArrowConfigurationIsEligibleForDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __42__ICQUITipSpecifierProvider__tipDisplayed__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__ICQUITipSpecifierProvider__dismissPressed__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_openExternalLink:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openRemoteUILink:forDataclasses:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openLiftUILink:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)messageViewController:didSelectActionWithDialogResult:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)messageViewController:didSelectActionWithDialogResult:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)messageViewController:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_launchLiftUIWithURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_launchLiftUIWithURL:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_launchLegacyRemoteUIWithURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_launchUpgradeFlowWithAction:andURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadFailed:withError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)tipForManageStorageFromAttributes:rows:viewController:remoteUIDelegate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_275623000, v1, OS_LOG_TYPE_ERROR, "Incomplete parameters passed. Bailing! Attributes: %@ RUIDelegate: %@", v2, 0x16u);
}

@end