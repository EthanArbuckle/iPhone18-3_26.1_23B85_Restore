@interface VTUISiriDataSharingOptInPresenter
- (BOOL)shouldShowSiriDataSharingOptInView;
- (VTUISiriDataSharingOptInPresentationDelegate)presentationDelegate;
- (VTUISiriDataSharingOptInPresenter)init;
- (id)_modalViewControllerForViewStyle:(int64_t)style;
- (id)_proximityViewForFrame:(CGRect)frame;
- (id)dataSharingOptInTextWelcomeControllerForViewStyle:(int64_t)style;
- (id)dataSharingOptInViewForFrame:(CGRect)frame viewStyle:(int64_t)style;
- (void)_fetchSiriDataSharingEnabled;
- (void)_requestDismissal;
- (void)_setSiriDataSharingStatus:(int64_t)status forceDismissal:(BOOL)dismissal;
- (void)_userTappedDetailLinkText;
- (void)_userTappedDismissButtonFromProxCard;
- (void)_userTappedOptInToDataSharing;
- (void)_userTappedOptOutOfDataSharing;
- (void)didDismissFromViewController:(id)controller;
- (void)tearDownPresentedViews;
@end

@implementation VTUISiriDataSharingOptInPresenter

- (VTUISiriDataSharingOptInPresenter)init
{
  v8.receiver = self;
  v8.super_class = VTUISiriDataSharingOptInPresenter;
  v2 = [(VTUISiriDataSharingOptInPresenter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = dispatch_queue_create("com.apple.siri.amnesia", 0);
    settingsQueue = v2->_settingsQueue;
    v2->_settingsQueue = v5;

    v2->_sourceOfChange = 0;
    [(VTUISiriDataSharingOptInPresenter *)v2 _fetchSiriDataSharingEnabled];
  }

  return v2;
}

- (BOOL)shouldShowSiriDataSharingOptInView
{
  v11 = *MEMORY[0x277D85DE8];
  dataSharingOptInStatus = self->_dataSharingOptInStatus;
  v3 = dataSharingOptInStatus - 1;
  if ((dataSharingOptInStatus - 1) >= 3)
  {
    if (!dataSharingOptInStatus)
    {
      v6 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[VTUISiriDataSharingOptInPresenter shouldShowSiriDataSharingOptInView]";
        _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: VTUISiriDataSharingOptInView requested: User has not made a decision. Returning YES", &v9, 0xCu);
      }

      v3 = 1;
    }
  }

  else
  {
    v4 = VTUILogContextFacility;
    v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
    v3 = 0;
    if (v5)
    {
      v9 = 136315138;
      v10 = "[VTUISiriDataSharingOptInPresenter shouldShowSiriDataSharingOptInView]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: VTUISiriDataSharingOptInView requested: User has made a decision. Returning NO", &v9, 0xCu);
      v3 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (id)dataSharingOptInViewForFrame:(CGRect)frame viewStyle:(int64_t)style
{
  switch(style)
  {
    case 2:
      goto LABEL_4;
    case 1:
      view = [(VTUISiriDataSharingOptInPresenter *)self _proximityViewForFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
      break;
    case 0:
LABEL_4:
      v4 = [(VTUISiriDataSharingOptInPresenter *)self _modalViewControllerForViewStyle:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
      view = [v4 view];

      break;
    default:
      view = 0;
      break;
  }

  return view;
}

- (id)dataSharingOptInTextWelcomeControllerForViewStyle:(int64_t)style
{
  v5 = [(VTUISiriDataSharingOptInPresenter *)self _modalViewControllerForViewStyle:?];
  if (style == 2)
  {
    [(VTUISiriDataSharingOptInPresenter *)self setSourceOfChange:2];
  }

  return v5;
}

- (void)_fetchSiriDataSharingEnabled
{
  objc_initWeak(&location, self);
  settingsQueue = self->_settingsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke;
  v4[3] = &unk_279E541F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(settingsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke_2;
    v5[3] = &unk_279E54940;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 getSiriDataSharingOptInStatusWithCompletion:v5];
    objc_destroyWeak(&v6);
  }
}

void __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
    {
      __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v8;
        v11 = [v9 numberWithInteger:a3];
        v13 = 136315394;
        v14 = "[VTUISiriDataSharingOptInPresenter _fetchSiriDataSharingEnabled]_block_invoke";
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_2728BC000, v10, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Siri data sharing opt in fetch completed with state:%@", &v13, 0x16u);
      }

      v7[3] = a3;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setSiriDataSharingStatus:(int64_t)status forceDismissal:(BOOL)dismissal
{
  self->_dataSharingOptInStatus = status;
  objc_initWeak(&location, self);
  settingsQueue = self->_settingsQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke;
  v8[3] = &unk_279E54380;
  objc_copyWeak(v9, &location);
  v9[1] = status;
  dismissalCopy = dismissal;
  dispatch_async(settingsQueue, v8);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v4 numberWithInteger:v5];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "sourceOfChange")}];
      v9 = [WeakRetained reasonForChange];
      *buf = 136315906;
      v19 = "[VTUISiriDataSharingOptInPresenter _setSiriDataSharingStatus:forceDismissal:]_block_invoke";
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Setting data sharing status: %@ source: %@ reason: %@", buf, 0x2Au);
    }

    v10 = WeakRetained[1];
    v11 = *(a1 + 40);
    v12 = [WeakRetained sourceOfChange];
    v13 = [WeakRetained reasonForChange];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_5;
    v15[3] = &unk_279E54968;
    v16[1] = *(a1 + 40);
    v17 = *(a1 + 48);
    objc_copyWeak(v16, (a1 + 32));
    [v10 setSiriDataSharingOptInStatus:v11 propagateToHomeAccessories:1 source:v12 reason:v13 completion:v15];

    objc_destroyWeak(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
    {
      __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_5_cold_1(a1, v4, v3);
    }
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_6;
  v5[3] = &unk_279E54358;
  v7 = *(a1 + 48);
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
}

void __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 numberWithBool:v4];
    v9 = 136315394;
    v10 = "[VTUISiriDataSharingOptInPresenter _setSiriDataSharingStatus:forceDismissal:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Setting data sharing completed. Requesting dismissal:%@", &v9, 0x16u);
  }

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _requestDismissal];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_modalViewControllerForViewStyle:(int64_t)style
{
  v4 = [[VTUISiriDataSharingOptInViewController alloc] initWithViewStyle:style];
  v5 = +[MGWrapper sharedMGWrapper];
  isGMDevice = [v5 isGMDevice];

  v7 = +[MGWrapper sharedMGWrapper];
  isDeviceIPad = [v7 isDeviceIPad];

  if (isGMDevice)
  {
    v9 = @"DATA_SHARING_DETAIL_IPAD_GM";
  }

  else
  {
    v9 = @"DATA_SHARING_DETAIL_IPAD";
  }

  if ((isDeviceIPad & 1) == 0)
  {
    if (isGMDevice)
    {
      v10 = @"DATA_SHARING_DETAIL_IPHONE_GM";
    }

    else
    {
      v10 = @"DATA_SHARING_DETAIL_IPHONE";
    }

    v11 = +[MGWrapper sharedMGWrapper];
    isDeviceVision = [v11 isDeviceVision];

    if (isDeviceVision)
    {
      v9 = @"DATA_SHARING_DETAIL_VISION";
    }

    else
    {
      v9 = v10;
    }
  }

  headerView = [(VTUISiriDataSharingOptInViewController *)v4 headerView];
  v14 = +[VTUIStringsHelper sharedStringsHelper];
  v15 = [v14 uiLocalizedStringForKey:v9];
  [headerView setDetailText:v15];

  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  v17 = +[VTUIStringsHelper sharedStringsHelper];
  v18 = [v17 uiLocalizedStringForKey:@"DATA_SHARING_DETAIL_LINK"];
  [accessoryButton setTitle:v18 forState:0];

  [accessoryButton addTarget:self action:sel__userTappedDetailLinkText forControlEvents:64];
  headerView2 = [(VTUISiriDataSharingOptInViewController *)v4 headerView];
  [headerView2 addAccessoryButton:accessoryButton];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v21 = +[VTUIStringsHelper sharedStringsHelper];
  v22 = [v21 uiLocalizedStringForKey:@"DATA_SHARING_CONFIRMATION_BUTTON_TITLE"];
  [boldButton setTitle:v22 forState:0];

  [boldButton addTarget:self action:sel__userTappedOptInToDataSharing forControlEvents:64];
  buttonTray = [(VTUISiriDataSharingOptInViewController *)v4 buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v25 = +[VTUIStringsHelper sharedStringsHelper];
  v26 = [v25 uiLocalizedStringForKey:@"DATA_SHARING_DECLINE_BUTTON_TITLE"];
  [linkButton setTitle:v26 forState:0];

  [linkButton addTarget:self action:sel__userTappedOptOutOfDataSharing forControlEvents:64];
  buttonTray2 = [(VTUISiriDataSharingOptInViewController *)v4 buttonTray];
  [buttonTray2 addButton:linkButton];

  objc_storeStrong(&self->_currentWelcomeController, v4);
  [(VTUISiriDataSharingOptInViewController *)self->_currentWelcomeController setDelegate:self];

  return v4;
}

- (id)_proximityViewForFrame:(CGRect)frame
{
  v4 = [[VTUIProximityDataSharingOptInView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  currentProxView = self->_currentProxView;
  self->_currentProxView = v4;

  dismissButton = [(VTUIProximityDataSharingOptInView *)self->_currentProxView dismissButton];
  [dismissButton addTarget:self action:sel__userTappedDismissButtonFromProxCard forControlEvents:64];

  shareButton = [(VTUIProximityDataSharingOptInView *)self->_currentProxView shareButton];
  [shareButton addTarget:self action:sel__userTappedOptInToDataSharing forControlEvents:64];

  notNowButton = [(VTUIProximityDataSharingOptInView *)self->_currentProxView notNowButton];
  [notNowButton addTarget:self action:sel__userTappedOptOutOfDataSharing forControlEvents:64];

  aboutLink = [(VTUIProximityDataSharingOptInView *)self->_currentProxView aboutLink];
  [aboutLink addTarget:self action:sel__userTappedDetailLinkText forControlEvents:64];

  v10 = self->_currentProxView;

  return v10;
}

- (void)_userTappedDetailLinkText
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376D8]];
  v7 = v3;
  if (self->_currentWelcomeController)
  {
    [v3 setPresentingViewController:?];
    v3 = v7;
  }

  if (self->_currentProxView)
  {
    presentationDelegate = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v3 = v7;
    if (isKindOfClass)
    {
      presentationDelegate2 = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
      [v7 setPresentingViewController:presentationDelegate2];

      v3 = v7;
    }
  }

  [v3 present];
}

- (void)_userTappedOptInToDataSharing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUISiriDataSharingOptInPresenter _userTappedOptInToDataSharing]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: User has selected to share. Enabling..", &v5, 0xCu);
  }

  [(VTUISiriDataSharingOptInPresenter *)self _setSiriDataSharingStatus:1 forceDismissal:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_userTappedOptOutOfDataSharing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUISiriDataSharingOptInPresenter _userTappedOptOutOfDataSharing]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: User has selected not to share. Disabling..", &v5, 0xCu);
  }

  [(VTUISiriDataSharingOptInPresenter *)self _setSiriDataSharingStatus:2 forceDismissal:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_userTappedDismissButtonFromProxCard
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VTUISiriDataSharingOptInPresenter _userTappedDismissButtonFromProxCard]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: User tapped the delete button on the prox card.", &v8, 0xCu);
  }

  [(VTUISiriDataSharingOptInPresenter *)self _setSiriDataSharingStatus:3 forceDismissal:0];
  presentationDelegate = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presentationDelegate2 = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
    [presentationDelegate2 siriDataSharingOptInViewDismissButtonTappedFromPresenter:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_requestDismissal
{
  presentationDelegate = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
  [presentationDelegate siriDataSharingOptInRequestsDismissalFromPresenter:self];

  currentProxView = self->_currentProxView;
  self->_currentProxView = 0;

  currentWelcomeController = self->_currentWelcomeController;
  self->_currentWelcomeController = 0;
}

- (void)tearDownPresentedViews
{
  currentWelcomeController = self->_currentWelcomeController;
  if (currentWelcomeController)
  {
    [(VTUISiriDataSharingOptInViewController *)currentWelcomeController setDelegate:0];
    view = [(VTUISiriDataSharingOptInViewController *)self->_currentWelcomeController view];
    [view removeFromSuperview];

    v5 = self->_currentWelcomeController;
    self->_currentWelcomeController = 0;
  }

  currentProxView = self->_currentProxView;
  if (currentProxView)
  {
    [(VTUIProximityDataSharingOptInView *)currentProxView removeFromSuperview];
    v7 = self->_currentProxView;
    self->_currentProxView = 0;
  }
}

- (void)didDismissFromViewController:(id)controller
{
  controllerCopy = controller;
  if (!self->_dataSharingOptInStatus)
  {
    [(VTUISiriDataSharingOptInPresenter *)self _setSiriDataSharingStatus:3 forceDismissal:0];
  }

  presentationDelegate = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presentationDelegate2 = [(VTUISiriDataSharingOptInPresenter *)self presentationDelegate];
    [presentationDelegate2 siriDataSharingOptInViewControllerDidDismissFromPresenter:self];
  }
}

- (VTUISiriDataSharingOptInPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

void __65__VTUISiriDataSharingOptInPresenter__fetchSiriDataSharingEnabled__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2728BC000, v0, OS_LOG_TYPE_ERROR, "%s #SiriDataSharingOptIn: Siri data sharing opt in status fetch failed with error:%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __78__VTUISiriDataSharingOptInPresenter__setSiriDataSharingStatus_forceDismissal___block_invoke_5_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 numberWithInteger:v5];
  v10[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v11 = v8;
  v12 = a3;
  _os_log_error_impl(&dword_2728BC000, v6, OS_LOG_TYPE_ERROR, "%s #SiriDataSharingOptIn: Setting data sharing status:%@ failed with error:%@", v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end