@interface TUIKTPaneViewController
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (TUIKTPaneViewController)initWithAccountManager:(id)a3 optInManager:(id)a4;
- (id)_appleAccount;
- (id)_authController;
- (id)_createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8;
- (id)_getDeviceVerificationEnabledForSpecifier:(id)a3;
- (id)_grandSlamAccount;
- (id)_grandSlamSigner;
- (id)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 preparation:(id)a5 completion:(id)a6;
- (id)_messagesSettingsSpecifier;
- (id)_optInSpecifier;
- (id)_reportToAppleSpecifier;
- (id)_resetButtonSpecifier;
- (id)_resetButtonSpecifierGroup;
- (id)_tapToRadarSpecifier;
- (id)_topGroupSpecifier;
- (id)_topGroupSpecifierWithError;
- (id)_turnOffButtonSpecifier;
- (id)_updateAppleIDSpecifier;
- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (id)specifiers;
- (int64_t)_optInTableCellType;
- (void)_addHeadersToRequest:(id)a3;
- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)a3;
- (void)_authController;
- (void)_beginObservingTransparencyStatusChangedNotification;
- (void)_cancelButtonForRemoteObjectModelWasTapped:(id)a3;
- (void)_changeOptInState:(id)a3 requestedOptInChange:(unint64_t)a4;
- (void)_checkKTStatus:(BOOL)a3;
- (void)_disableCellForSpecifier:(id)a3 showSpinner:(BOOL)a4;
- (void)_dismissPendingAlert;
- (void)_enableCellForSpecifier:(id)a3 hideSpinner:(BOOL)a4;
- (void)_getServerUILoadDelegateWithCompletion:(id)a3;
- (void)_handleLaunchURL;
- (void)_handleObjectModelChangeForController:(id)a3 objectModel:(id)a4 isModal:(BOOL)a5;
- (void)_learnMoreTapped;
- (void)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 specifier:(id)a5;
- (void)_maybeRefreshMonitorStateInBackground;
- (void)_openMessagesSettings;
- (void)_openReportToApple;
- (void)_openTapToRadar;
- (void)_provideNavigationDonations;
- (void)_resetButtonPressed:(id)a3;
- (void)_setDeviceVerificationEnabled:(id)a3 withSpecifier:(id)a4;
- (void)_setFooterTextWithLinkForSpecifier:(id)a3 footerText:(id)a4 linkText:(id)a5 actionMethodName:(id)a6 target:(id)a7;
- (void)_setupUIStateCDPError:(id)a3;
- (void)_setupUIStateCDPWaiting:(id)a3;
- (void)_setupUIStateDeviceError:(id)a3;
- (void)_setupUIStateIDSDisabled:(id)a3;
- (void)_setupUIStateNoError:(id)a3;
- (void)_setupUIStateNoIDSAppleID:(id)a3;
- (void)_setupUIStateOptInPendingCDPError:(id)a3;
- (void)_setupUIStateOptInPendingCDPWaiting:(id)a3;
- (void)_setupUIStateOtherError:(id)a3;
- (void)_setupUIStateTemporaryError:(id)a3;
- (void)_setupUIStateTreeReset:(id)a3;
- (void)_showOptOutConfirmationAlertWithCompletion:(id)a3;
- (void)_showResetConfirmationAlertWithCompletion:(id)a3;
- (void)_startSpinnerForSpecifier:(id)a3;
- (void)_stopObservingTransparencyStatusChangedNotification;
- (void)_stopSpinnerForSpecifier:(id)a3;
- (void)_transparencyStatusChangedNotificationHandler:(id)a3;
- (void)_turnOffButtonPressed:(id)a3;
- (void)_updateAppleID;
- (void)_updateAppleIDButtonPressed;
- (void)_updateTopGroupSpecifierFooter:(BOOL)a3;
- (void)activeConnectionChanged;
- (void)dealloc;
- (void)dismissRemoteUIForViewController;
- (void)optInFlowResultWithStateUpdate;
- (void)presentOptInNavigationController;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4;
- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4;
- (void)specifiers;
- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation TUIKTPaneViewController

- (TUIKTPaneViewController)initWithAccountManager:(id)a3 optInManager:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController initWithAccountManager:optInManager:];
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v27 = "[TUIKTPaneViewController initWithAccountManager:optInManager:]";
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = self;
    _os_log_debug_impl(&dword_26F50B000, v9, OS_LOG_TYPE_DEBUG, "%s accountManager = %{public}@, optInManager = %{public}@ on %{public}@", buf, 0x2Au);
  }

  v25.receiver = self;
  v25.super_class = TUIKTPaneViewController;
  v10 = [(TUIKTPaneViewController *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accountManager, a3);
    objc_storeStrong(&v11->_optInManager, a4);
    v12 = objc_alloc(MEMORY[0x277D73568]);
    v13 = [v12 initWithApplication:*MEMORY[0x277D735B0]];
    keyTransparencyStatus = v11->_keyTransparencyStatus;
    v11->_keyTransparencyStatus = v13;

    v15 = [TUIAppleAccountManager alloc];
    v16 = [(TUIKTPaneViewController *)v11 _accountStore];
    v17 = [(TUIAppleAccountManager *)v15 initWithAccountStore:v16];
    appleAccountManager = v11->_appleAccountManager;
    v11->_appleAccountManager = v17;

    v19 = objc_opt_new();
    networkMonitor = v11->_networkMonitor;
    v11->_networkMonitor = v19;

    [(TUINetworkMonitor *)v11->_networkMonitor setDelegate:v11];
    [(TUINetworkMonitor *)v11->_networkMonitor setUpNetworkPathMonitor];
    v21 = objc_opt_new();
    stateManager = v11->_stateManager;
    v11->_stateManager = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __63__TUIKTPaneViewController_initWithAccountManager_optInManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __34__TUIKTPaneViewController_dealloc__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__TUIKTPaneViewController_viewWillAppear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)viewDidLoad
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __38__TUIKTPaneViewController_viewDidLoad__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __38__TUIKTPaneViewController_viewDidLoad__block_invoke_59(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x277D757A0]);
    [WeakRetained setOptInNavigationController:v2];

    v3 = [WeakRetained optInNavigationController];
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = -2;
    }

    [v3 setModalPresentationStyle:v6];

    v7 = [TUIOptInFlowControllerImpl alloc];
    v8 = [WeakRetained optInNavigationController];
    v9 = [WeakRetained accountManager];
    v10 = [WeakRetained stateManager];
    v11 = [(TUIOptInFlowControllerImpl *)v7 initWithPresentingNavigationController:v8 parentViewController:WeakRetained accountManager:v9 stateManager:v10];
    [WeakRetained setOptInFlowController:v11];

    v12 = [WeakRetained optInFlowController];
    [v12 setDelegate:WeakRetained];

    [WeakRetained _checkKTStatus:1];
    [WeakRetained _beginObservingTransparencyStatusChangedNotification];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __38__TUIKTPaneViewController_viewDidLoad__block_invoke_59_cold_1();
    }

    v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[TUIKTPaneViewController viewDidLoad]_block_invoke";
      _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __38__TUIKTPaneViewController_viewDidLoad__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__TUIKTPaneViewController_viewDidAppear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__TUIKTPaneViewController_viewDidAppear___block_invoke_68()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_provideNavigationDonations
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TUIKTPaneViewController__provideNavigationDonations__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__TUIKTPaneViewController__provideNavigationDonations__block_invoke_86()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__TUIKTPaneViewController_viewWillDisappear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__TUIKTPaneViewController_viewDidDisappear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUIKTPaneViewController;
  [(TUIKTPaneViewController *)&v6 willMoveToParentViewController:a3];
  v4 = [(AAUIRemoteUIController *)self->_activeRemoteUIController loader];
  [v4 cancel];

  [(AAUIRemoteUIController *)self->_activeRemoteUIController setNavigationController:0];
  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = 0;
}

- (void)_setupUIStateNoError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateNoError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateNoError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifier];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTStateManager *)self->_stateManager optIn];
  accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  if (v7 == 1)
  {
    if (!accountKeySpecifierProvider)
    {
      v9 = objc_opt_new();
      v10 = self->_accountKeySpecifierProvider;
      self->_accountKeySpecifierProvider = v9;

      [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider setDelegate:self];
      accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
    }

    [accountKeySpecifierProvider refreshSelfAccountKey];
    accountKeySpecifierProvider = [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider specifiers];
    [v4 addObjectsFromArray:accountKeySpecifierProvider];
  }

  else
  {
    self->_accountKeySpecifierProvider = 0;
  }
}

uint64_t __48__TUIKTPaneViewController__setupUIStateNoError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateNoIDSAppleID:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateNoIDSAppleID:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateNoIDSAppleID:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTPaneViewController *)self _messagesSettingsSpecifier];
  [v4 addObject:v7];

  v8 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
  [v4 addObject:v8];

  v9 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
  [v4 addObject:v9];
}

uint64_t __53__TUIKTPaneViewController__setupUIStateNoIDSAppleID___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateCDPWaiting:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateCDPWaiting:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateCDPWaiting:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTPaneViewController *)self _resetButtonSpecifierGroup];
  [v4 addObject:v7];

  v8 = [(TUIKTPaneViewController *)self _resetButtonSpecifier];
  [v4 addObject:v8];
}

uint64_t __51__TUIKTPaneViewController__setupUIStateCDPWaiting___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateDeviceError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateDeviceError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateDeviceError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  topGroupSpecifier = self->_topGroupSpecifier;
  self->_topGroupSpecifier = v5;

  [v4 addObject:self->_topGroupSpecifier];
  v7 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v7];

  if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
  {
    v8 = [(TUIKTPaneViewController *)self _reportToAppleSpecifier];
    [v4 addObject:v8];
  }

  v9 = [[TUIDeviceSpecifierProvider alloc] initWithAccountManager:self->_accountManager stateManager:self->_stateManager];
  deviceSpecifierProvider = self->_deviceSpecifierProvider;
  self->_deviceSpecifierProvider = v9;

  [(TUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider setDelegate:self];
  v11 = [(TUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider specifiers];
  [v4 addObjectsFromArray:v11];

  accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  if (!accountKeySpecifierProvider)
  {
    v13 = objc_opt_new();
    v14 = self->_accountKeySpecifierProvider;
    self->_accountKeySpecifierProvider = v13;

    [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider setDelegate:self];
    accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  }

  v15 = [(TUIAccountKeySpecifierProvider *)accountKeySpecifierProvider specifiers];
  [v4 addObjectsFromArray:v15];

  v16 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
  [v4 addObject:v16];

  v17 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
  [v4 addObject:v17];
}

uint64_t __52__TUIKTPaneViewController__setupUIStateDeviceError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateOtherError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateOtherError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateOtherError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
  {
    v7 = [(TUIKTPaneViewController *)self _reportToAppleSpecifier];
    [v4 addObject:v7];
  }

  if ([MEMORY[0x277CE4560] isInternalBuild])
  {
    v8 = [(TUIKTPaneViewController *)self _tapToRadarSpecifier];
    [v4 addObject:v8];
  }

  v9 = [(TUIKTPaneViewController *)self _resetButtonSpecifierGroup];
  [v4 addObject:v9];

  v10 = [(TUIKTPaneViewController *)self _resetButtonSpecifier];
  [v4 addObject:v10];

  accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  if (!accountKeySpecifierProvider)
  {
    v12 = objc_opt_new();
    v13 = self->_accountKeySpecifierProvider;
    self->_accountKeySpecifierProvider = v12;

    [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider setDelegate:self];
    accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  }

  v14 = [(TUIAccountKeySpecifierProvider *)accountKeySpecifierProvider specifiers];
  [v4 addObjectsFromArray:v14];

  v15 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
  [v4 addObject:v15];

  v16 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
  [v4 addObject:v16];
}

uint64_t __51__TUIKTPaneViewController__setupUIStateOtherError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateCDPError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateCDPError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateCDPError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTPaneViewController *)self _updateAppleIDSpecifier];
  [v4 addObject:v7];

  v8 = [(TUIKTPaneViewController *)self _resetButtonSpecifierGroup];
  [v4 addObject:v8];

  v9 = [(TUIKTPaneViewController *)self _resetButtonSpecifier];
  [v4 addObject:v9];
}

uint64_t __49__TUIKTPaneViewController__setupUIStateCDPError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateTemporaryError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateTemporaryError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateTemporaryError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
  {
    v7 = [(TUIKTPaneViewController *)self _reportToAppleSpecifier];
    [v4 addObject:v7];
  }

  accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  if (!accountKeySpecifierProvider)
  {
    v9 = objc_opt_new();
    v10 = self->_accountKeySpecifierProvider;
    self->_accountKeySpecifierProvider = v9;

    [(TUIAccountKeySpecifierProvider *)self->_accountKeySpecifierProvider setDelegate:self];
    accountKeySpecifierProvider = self->_accountKeySpecifierProvider;
  }

  v11 = [(TUIAccountKeySpecifierProvider *)accountKeySpecifierProvider specifiers];
  [v4 addObjectsFromArray:v11];

  v12 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
  [v4 addObject:v12];

  v13 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
  [v4 addObject:v13];
}

uint64_t __55__TUIKTPaneViewController__setupUIStateTemporaryError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateTreeReset:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateTreeReset:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateTreeReset:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
  {
    v7 = [(TUIKTPaneViewController *)self _reportToAppleSpecifier];
    [v4 addObject:v7];
  }

  v8 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
  [v4 addObject:v8];

  v9 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
  [v4 addObject:v9];
}

uint64_t __50__TUIKTPaneViewController__setupUIStateTreeReset___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateOptInPendingCDPError:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateOptInPendingCDPError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateOptInPendingCDPError:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTPaneViewController *)self _updateAppleIDSpecifier];
  [v4 addObject:v7];
}

uint64_t __61__TUIKTPaneViewController__setupUIStateOptInPendingCDPError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateOptInPendingCDPWaiting:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateOptInPendingCDPWaiting:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateOptInPendingCDPWaiting:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];
}

uint64_t __63__TUIKTPaneViewController__setupUIStateOptInPendingCDPWaiting___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setupUIStateIDSDisabled:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setupUIStateIDSDisabled:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _setupUIStateIDSDisabled:];
  }

  v5 = [(TUIKTPaneViewController *)self _topGroupSpecifierWithError];
  [v4 addObject:v5];

  v6 = [(TUIKTPaneViewController *)self _optInSpecifier];
  [v4 addObject:v6];

  v7 = [(TUIKTPaneViewController *)self stateManager];
  v8 = [v7 optIn];

  if (v8 == 1)
  {
    v9 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifierGroup];
    [v4 addObject:v9];

    v10 = [(TUIKTPaneViewController *)self _turnOffButtonSpecifier];
    [v4 addObject:v10];
  }
}

uint64_t __52__TUIKTPaneViewController__setupUIStateIDSDisabled___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)specifiers
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController specifiers];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTPaneViewController *)self specifiers];
  }

  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [(TUIKTStateManager *)self->_stateManager state];
    if (v7 > 5)
    {
      if (v7 <= 8)
      {
        if (v7 == 6)
        {
          [(TUIKTPaneViewController *)self _setupUIStateCDPWaiting:v6];
        }

        else if (v7 == 7)
        {
          [(TUIKTPaneViewController *)self _setupUIStateOtherError:v6];
        }

        else
        {
          [(TUIKTPaneViewController *)self _setupUIStateTemporaryError:v6];
        }

        goto LABEL_10;
      }

      if (v7 <= 10)
      {
        if (v7 == 9)
        {
          [(TUIKTPaneViewController *)self _setupUIStateTreeReset:v6];
        }

        else
        {
          [(TUIKTPaneViewController *)self _setupUIStateOptInPendingCDPError:v6];
        }

        goto LABEL_10;
      }

      if (v7 == 11)
      {
        [(TUIKTPaneViewController *)self _setupUIStateOptInPendingCDPWaiting:v6];
        goto LABEL_10;
      }

      if (v7 == 12)
      {
        [(TUIKTPaneViewController *)self _setupUIStateIDSDisabled:v6];
        goto LABEL_10;
      }
    }

    else
    {
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          [(TUIKTPaneViewController *)self _setupUIStateNoIDSAppleID:v6];
        }

        else if (v7 == 4)
        {
          [(TUIKTPaneViewController *)self _setupUIStateDeviceError:v6];
        }

        else
        {
          [(TUIKTPaneViewController *)self _setupUIStateCDPError:v6];
        }

        goto LABEL_10;
      }

      if ((v7 + 1) < 4)
      {
        goto LABEL_9;
      }
    }

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController specifiers];
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      [(TUIKTPaneViewController *)&self->_stateManager specifiers];
    }

LABEL_9:
    [(TUIKTPaneViewController *)self _setupUIStateNoError:v6];
LABEL_10:
    v8 = [v6 copy];
    v9 = *(&self->super.super.super.super.super.isa + v4);
    *(&self->super.super.super.super.super.isa + v4) = v8;

    [(TUIKTPaneViewController *)self _handleLaunchURL];
    v5 = *(&self->super.super.super.super.super.isa + v4);
  }

  return v5;
}

uint64_t __37__TUIKTPaneViewController_specifiers__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __37__TUIKTPaneViewController_specifiers__block_invoke_128()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_topGroupSpecifier
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DEVICE_VERIFICATION_SPECIFIER_FOOTER" value:&stru_287F92480 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v7 = [(TUIKTPaneViewController *)self _createGroupSpecifierWithIdentifier:@"TUI_PANE_TOP_GROUP" title:0 footerText:v4 linkText:v6 actionMethodName:@"_learnMoreTapped" target:self];

  return v7;
}

- (id)_topGroupSpecifierWithError
{
  v3 = [(TUIKTStateManager *)self->_stateManager isCDPErrorState];
  v4 = [(TUIKTStateManager *)self->_stateManager state];
  if (v3)
  {
    if (v4 == 6 || [(TUIKTStateManager *)self->_stateManager state]== 11)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"DEVICE_VERIFICATION_SPECIFIER_FOOTER";
    }

    else
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"UPDATE_APPLE_ID_FOOTER";
    }

    goto LABEL_10;
  }

  if (v4 == 8)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v8 = @"TEMPORARY_ERROR_FOOTER";
  }

  else if ([(TUIKTStateManager *)self->_stateManager state]== 9)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v8 = @"TREE_RESET_FOOTER";
  }

  else
  {
    if ([(TUIKTStateManager *)self->_stateManager state]== 4 && [(TUIKTStateManager *)self->_stateManager expectedResolutionDays])
    {
      v10 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v6 localizedStringForKey:@"TRANSPARENCY_PANE_TOP_SPECIFIER_FOOTER_WITH_DAYS" value:&stru_287F92480 table:@"Localizable"];
      v9 = [v10 localizedStringWithFormat:v11, -[TUIKTStateManager expectedResolutionDays](self->_stateManager, "expectedResolutionDays")];

      goto LABEL_18;
    }

    if ([(TUIKTStateManager *)self->_stateManager state]== 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v8 = @"MISSING_APPLEID_OPTIN_ERROR_DETAIL";
    }

    else
    {
      v18 = [(TUIKTStateManager *)self->_stateManager state];
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      if (v18 == 12)
      {
        v7 = @"IDS_KT_DISABLED_DETAIL";
LABEL_10:
        v9 = [v5 localizedStringForKey:v7 value:&stru_287F92480 table:@"Localizable"];
        goto LABEL_18;
      }

      v8 = @"TRANSPARENCY_PANE_TOP_SPECIFIER_FOOTER";
    }
  }

  v9 = [v5 localizedStringForKey:v8 value:&stru_287F92480 table:@"Localizable"];

  if (![TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
  {
    goto LABEL_19;
  }

  v12 = [v9 stringByAppendingString:@" "];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v6 localizedStringForKey:@"REPORT_TO_APPLE_FOOTER" value:&stru_287F92480 table:@"Localizable"];
  v9 = [v12 stringByAppendingString:v13];

LABEL_18:
LABEL_19:
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v16 = [(TUIKTPaneViewController *)self _createGroupSpecifierWithIdentifier:@"TUI_PANE_TOP_GROUP" title:0 footerText:v9 linkText:v15 actionMethodName:@"_learnMoreTapped" target:self];

  return v16;
}

- (void)_learnMoreTapped
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213465"];
  [*MEMORY[0x277D76620] openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)_optInSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DEVICE_VERIFICATION_OPTIN_SPECIFIER_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel__setDeviceVerificationEnabled_withSpecifier_ get:sel__getDeviceVerificationEnabledForSpecifier_ detail:0 cell:-[TUIKTPaneViewController _optInTableCellType](self edit:{"_optInTableCellType"), 0}];

  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if ([(TUIKTPaneViewController *)self _shouldShowErrorUI])
  {
    v7 = [(TUIKTStateManager *)self->_stateManager stateLabel];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D40160]];

    if ([(TUIKTStateManager *)self->_stateManager state]== 6 || [(TUIKTStateManager *)self->_stateManager state]== 11)
    {
      v8 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v6 setProperty:v8 forKey:*MEMORY[0x277D40158]];
    }

    [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  return v6;
}

- (int64_t)_optInTableCellType
{
  if ([(TUIKTPaneViewController *)self _shouldShowErrorUI])
  {
    return -1;
  }

  result = [(TUIKTStateManager *)self->_stateManager state];
  if (result == -1)
  {
    return result;
  }

  if ([(TUIKTStateManager *)self->_stateManager isVerifyCDPRunning])
  {
    return -1;
  }

  if ([(TUIKTStateManager *)self->_stateManager optIn]== 2)
  {
    return -1;
  }

  return 6;
}

- (id)_getDeviceVerificationEnabledForSpecifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _getDeviceVerificationEnabledForSpecifier:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTPaneViewController *)self _getDeviceVerificationEnabledForSpecifier:v5];
  }

  if ([(TUIKTPaneViewController *)self _shouldShowErrorUI])
  {
    v6 = &stru_287F92480;
    goto LABEL_15;
  }

  if ([(TUIKTStateManager *)self->_stateManager state]== -1 || [(TUIKTStateManager *)self->_stateManager isVerifyCDPRunning])
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _getDeviceVerificationEnabledForSpecifier:];
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *v17 = 138543362;
    *&v17[4] = self;
    v8 = "%{public}@ adding spinner to specifier...";
LABEL_13:
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_INFO, v8, v17, 0xCu);
LABEL_14:
    [(TUIKTPaneViewController *)self _startSpinnerForSpecifier:v4, *v17];
    v6 = MEMORY[0x277CBEC28];
    goto LABEL_15;
  }

  if ([(TUIKTStateManager *)self->_stateManager optIn]== 2)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _getDeviceVerificationEnabledForSpecifier:];
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (!os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *v17 = 138543362;
    *&v17[4] = self;
    v8 = "%{public}@ cached opt in state is not available, adding spinner to specifier...";
    goto LABEL_13;
  }

  v11 = [v4 propertyForKey:*MEMORY[0x277D40148]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 control];
    [v12 setIsAccessibilityElement:1];
    [v12 setAccessibilityIdentifier:@"OptIn Switch"];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TUIKTStateManager optIn](self->_stateManager, "optIn")}];
    v14 = [v13 stringValue];
    [v12 setAccessibilityValue:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasActiveConnection];
    [v4 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];

    v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[TUIKTStateManager optIn](self->_stateManager, "optIn") == 1}];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _getDeviceVerificationEnabledForSpecifier:];
    }

    v16 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      [(TUIKTPaneViewController *)self _getDeviceVerificationEnabledForSpecifier:v11, v16];
    }

    v6 = &stru_287F92480;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __69__TUIKTPaneViewController__getDeviceVerificationEnabledForSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __69__TUIKTPaneViewController__getDeviceVerificationEnabledForSpecifier___block_invoke_183()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __69__TUIKTPaneViewController__getDeviceVerificationEnabledForSpecifier___block_invoke_186()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __69__TUIKTPaneViewController__getDeviceVerificationEnabledForSpecifier___block_invoke_190()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_updateAppleIDSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"UPDATE_APPLE_ID_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
  appleIDSpecifier = self->_appleIDSpecifier;
  self->_appleIDSpecifier = v6;

  [(PSSpecifier *)self->_appleIDSpecifier setButtonAction:sel__updateAppleIDButtonPressed];
  v8 = self->_appleIDSpecifier;

  return v8;
}

- (void)_updateAppleIDButtonPressed
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TUIKTPaneViewController__updateAppleIDButtonPressed__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dismissRemoteUIForViewController
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ dismissing CDP repair UI", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_203(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_206;
    v5[3] = &unk_279DDABC8;
    v5[4] = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_203_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[TUIKTPaneViewController dismissRemoteUIForViewController]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_206(uint64_t a1)
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_206_cold_1();
  }

  v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_206_cold_2(a1, v2);
  }
}

uint64_t __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_2_207()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_updateAppleID
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __41__TUIKTPaneViewController__updateAppleID__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __41__TUIKTPaneViewController__updateAppleID__block_invoke_215(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __41__TUIKTPaneViewController__updateAppleID__block_invoke_215_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "[TUIKTPaneViewController _updateAppleID]_block_invoke_2";
      v15 = 1024;
      v16 = a2;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = WeakRetained;
      _os_log_debug_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "%s isVerified = %d, error = %{public}@ on %{public}@", buf, 0x26u);
      if (a2)
      {
LABEL_6:
        if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
        {
          v10 = [WeakRetained optInManager];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __41__TUIKTPaneViewController__updateAppleID__block_invoke_221;
          v12[3] = &unk_279DDAFE0;
          v12[4] = WeakRetained;
          [v10 waitForIDSRegistration:1 complete:v12];

          goto LABEL_13;
        }
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v8 = [WeakRetained stateManager];
    [v8 setIsVerifyCDPRunning:0];

    [WeakRetained dismissRemoteUIForViewController];
    [WeakRetained _checkKTStatus:0];
    goto LABEL_13;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __41__TUIKTPaneViewController__updateAppleID__block_invoke_215_cold_2();
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = "[TUIKTPaneViewController _updateAppleID]_block_invoke";
    _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __41__TUIKTPaneViewController__updateAppleID__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__TUIKTPaneViewController__updateAppleID__block_invoke_218()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __41__TUIKTPaneViewController__updateAppleID__block_invoke_221(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __41__TUIKTPaneViewController__updateAppleID__block_invoke_221_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "waitForIDSRegistration error after verifying CDP %{public}@", &v10, 0xCu);
    }

    v5 = [*(a1 + 32) optInFlowController];
    v6 = [*(a1 + 32) presentedViewController];
    [v5 _showErrorAlertWithError:v3 presentingViewController:v6];

    v7 = [*(a1 + 32) stateManager];
    [v7 setIsVerifyCDPRunning:0];
  }

  else
  {
    v8 = [*(a1 + 32) stateManager];
    [v8 setIsVerifyCDPRunning:0];

    [*(a1 + 32) dismissRemoteUIForViewController];
  }

  [*(a1 + 32) _checkKTStatus:0];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __41__TUIKTPaneViewController__updateAppleID__block_invoke_2_222()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_messagesSettingsSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MESSAGES_SETTINGS_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:sel__openMessagesSettings];

  return v6;
}

- (void)_openMessagesSettings
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __48__TUIKTPaneViewController__openMessagesSettings__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __48__TUIKTPaneViewController__openMessagesSettings__block_invoke_234(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
    [v2 openSensitiveURL:v3 withOptions:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __48__TUIKTPaneViewController__openMessagesSettings__block_invoke_234_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIKTPaneViewController _openMessagesSettings]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __48__TUIKTPaneViewController__openMessagesSettings__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_reportToAppleSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REPORT_TO_APPLE" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:sel__openReportToApple];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TUIKTPaneViewController _reportableFailureFound](self, "_reportableFailureFound")}];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF38]];

  return v6;
}

- (id)_tapToRadarSpecifier
{
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"[INTERNAL] File a Tap-to-Radar..." target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v2 setButtonAction:sel__openTapToRadar];
  [v2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v2;
}

- (id)_resetButtonSpecifierGroup
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"RESET_CONTACT_KEY_VERIFICATION" name:0];
  v4 = [(TUIKTStateManager *)self->_stateManager state];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4 == 7)
  {
    v7 = @"RESET_CONTACT_KEY_VERIFICATION_ISSUE_FOOTER";
  }

  else
  {
    v7 = @"RESET_CONTACT_KEY_VERIFICATION_FOOTER";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287F92480 table:@"Localizable"];
  [v3 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

  return v3;
}

- (id)_resetButtonSpecifier
{
  v3 = [(TUIKTStateManager *)self->_stateManager state];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RESET_CONTACT_KEY_VERIFICATION_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  if (v3 == 7)
  {
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v7 setButtonAction:sel__resetButtonPressed_];
  }

  else
  {
    v7 = [v4 deleteButtonSpecifierWithName:v6 target:self action:sel__resetButtonPressed_];

    [v7 setProperty:@"RESET_CONTACT_KEY_VERIFICATION_BUTTON" forKey:*MEMORY[0x277D3FFB8]];
  }

  v8 = MEMORY[0x277CBEC38];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

  return v7;
}

- (void)_resetButtonPressed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _resetButtonPressed:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TUIKTPaneViewController _resetButtonPressed:]";
    v13 = 2114;
    v14 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_264;
  v8[3] = &unk_279DDA9E8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__TUIKTPaneViewController__resetButtonPressed___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_264(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained stateManager];
    v5 = [v4 state];

    if (v5 == 7)
    {
      [v3 _changeOptInState:*(a1 + 32) requestedOptInChange:2];
    }

    else
    {
      objc_initWeak(buf, v3);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_267;
      v8[3] = &unk_279DDB030;
      objc_copyWeak(&v10, buf);
      v9 = *(a1 + 32);
      [v3 _showResetConfirmationAlertWithCompletion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_264_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[TUIKTPaneViewController _resetButtonPressed:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_267(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained _changeOptInState:*(a1 + 32) requestedOptInChange:0];
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_267_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[TUIKTPaneViewController _resetButtonPressed:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__TUIKTPaneViewController__resetButtonPressed___block_invoke_2_268()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_changeOptInState:(id)a3 requestedOptInChange:(unint64_t)a4
{
  v6 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _changeOptInState:requestedOptInChange:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTPaneViewController *)v7 _changeOptInState:a4 requestedOptInChange:self];
  }

  [(TUIKTPaneViewController *)self _disableCellForSpecifier:v6 showSpinner:1];
  v8 = [(TUIKTPaneViewController *)self appleIDSpecifier];
  [(TUIKTPaneViewController *)self _disableCellForSpecifier:v8 showSpinner:0];

  objc_initWeak(&location, self);
  v9 = [(TUIKTPaneViewController *)self optInManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_274;
  v11[3] = &unk_279DDB058;
  objc_copyWeak(&v13, &location);
  v10 = v6;
  v12 = v10;
  [v9 changeOptInState:a4 detailedCompletionBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_274(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_274_cold_1();
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      *location = 136316162;
      *&location[4] = "[TUIKTPaneViewController _changeOptInState:requestedOptInChange:]_block_invoke_2";
      v17 = 1024;
      v18 = a2;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = WeakRetained;
      _os_log_debug_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "%s changeOptInState result = %d, loggableDatas = %{public}@, error = %{public}@ on %{public}@", location, 0x30u);
    }

    objc_initWeak(location, WeakRetained);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_280;
    v13[3] = &unk_279DDA9E8;
    objc_copyWeak(&v15, location);
    v14 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_274_cold_2();
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *location = 136315138;
      *&location[4] = "[TUIKTPaneViewController _changeOptInState:requestedOptInChange:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v11, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", location, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_277()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_280(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _enableCellForSpecifier:*(a1 + 32) hideSpinner:1];
    v4 = [v3 appleIDSpecifier];
    [v3 _enableCellForSpecifier:v4 hideSpinner:0];

    [v3 _checkKTStatus:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_280_cold_1();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[TUIKTPaneViewController _changeOptInState:requestedOptInChange:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __66__TUIKTPaneViewController__changeOptInState_requestedOptInChange___block_invoke_2_281()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_turnOffButtonSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"TURN_OFF" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 deleteButtonSpecifierWithName:v5 target:self action:sel__turnOffButtonPressed_];

  [v6 setProperty:@"TURN_OFF_BUTTON" forKey:*MEMORY[0x277D3FFB8]];

  return v6;
}

- (void)_turnOffButtonPressed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _turnOffButtonPressed:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TUIKTPaneViewController _turnOffButtonPressed:]";
    v13 = 2114;
    v14 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_298;
  v8[3] = &unk_279DDA9E8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_298(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_301;
    v6[3] = &unk_279DDB080;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    [v3 _showOptOutConfirmationAlertWithCompletion:v6];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_298_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[TUIKTPaneViewController _turnOffButtonPressed:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIKTPaneViewController__turnOffButtonPressed___block_invoke_301(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _disableCellForSpecifier:*(a1 + 40) showSpinner:1];
    v3 = [*(a1 + 32) optInFlowController];
    [v3 beginOptOutFlow];
  }
}

- (void)_beginObservingTransparencyStatusChangedNotification
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __79__TUIKTPaneViewController__beginObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_stopObservingTransparencyStatusChangedNotification
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __78__TUIKTPaneViewController__stopObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_transparencyStatusChangedNotificationHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _transparencyStatusChangedNotificationHandler:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[TUIKTPaneViewController _transparencyStatusChangedNotificationHandler:]";
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %{public}@", buf, 0x20u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D735B8]];

  if (v7)
  {
    if (self->_alert)
    {
      [(TUIKTPaneViewController *)self _dismissPendingAlert];
    }

    else
    {
      [(TUIOptInFlowControllerImpl *)self->_optInFlowController dismissPendingPopupUI];
    }
  }

  [(TUIKTPaneViewController *)self _checkKTStatus:0];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TUIKTPaneViewController__transparencyStatusChangedNotificationHandler___block_invoke_311;
  block[3] = &unk_279DDAB28;
  objc_copyWeak(&v10, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __73__TUIKTPaneViewController__transparencyStatusChangedNotificationHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __73__TUIKTPaneViewController__transparencyStatusChangedNotificationHandler___block_invoke_311(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained accountKeySpecifierProvider];
    [v3 refreshSelfAccountKey];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __73__TUIKTPaneViewController__transparencyStatusChangedNotificationHandler___block_invoke_311_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIKTPaneViewController _transparencyStatusChangedNotificationHandler:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __73__TUIKTPaneViewController__transparencyStatusChangedNotificationHandler___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_disableCellForSpecifier:(id)a3 showSpinner:(BOOL)a4
{
  v4 = a4;
  v5 = *MEMORY[0x277D3FF38];
  v6 = a3;
  [v6 setProperty:MEMORY[0x277CBEC28] forKey:v5];
  v8 = [v6 propertyForKey:*MEMORY[0x277D40148]];

  [v8 setCellEnabled:0];
  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [v8 setAccessoryView:v7];
  }

  [v8 setNeedsDisplay];
}

- (void)_enableCellForSpecifier:(id)a3 hideSpinner:(BOOL)a4
{
  v4 = a4;
  v5 = *MEMORY[0x277D40148];
  v6 = a3;
  v7 = [v6 propertyForKey:v5];
  v9 = v7;
  if (v4)
  {
    v8 = [v7 accessoryView];
    [v8 stopAnimating];

    v7 = v9;
  }

  [v7 setCellEnabled:1];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
}

- (void)_checkKTStatus:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _checkKTStatus:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TUIKTPaneViewController _checkKTStatus:]";
    v13 = 2114;
    v14 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s getting CKV status on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_get_global_queue(33, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__TUIKTPaneViewController__checkKTStatus___block_invoke_317;
  v8[3] = &unk_279DDB0A8;
  objc_copyWeak(&v9, buf);
  v10 = a3;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __42__TUIKTPaneViewController__checkKTStatus___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __42__TUIKTPaneViewController__checkKTStatus___block_invoke_317(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D73568]);
    v4 = [v3 initWithApplication:*MEMORY[0x277D735B0]];
    v15 = 0;
    v5 = [v4 status:&v15];
    v6 = v15;
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __42__TUIKTPaneViewController__checkKTStatus___block_invoke_317_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = "[TUIKTPaneViewController _checkKTStatus:]_block_invoke_2";
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = WeakRetained;
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%s got CKV status = %{public}@, error = %{public}@ on %{public}@", buf, 0x2Au);
    }

    objc_initWeak(buf, WeakRetained);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__TUIKTPaneViewController__checkKTStatus___block_invoke_323;
    v11[3] = &unk_279DDAC68;
    objc_copyWeak(&v13, buf);
    v12 = v5;
    v14 = *(a1 + 40);
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __42__TUIKTPaneViewController__checkKTStatus___block_invoke_317_cold_2();
    }

    v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[TUIKTPaneViewController _checkKTStatus:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__TUIKTPaneViewController__checkKTStatus___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__TUIKTPaneViewController__checkKTStatus___block_invoke_320()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __42__TUIKTPaneViewController__checkKTStatus___block_invoke_323(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained stateManager];
    [v4 updateStateWithKTStatusResult:*(a1 + 32)];

    if (*(a1 + 48) == 1)
    {
      v5 = [v3 stateManager];
      v6 = [v5 shouldMaybeUpdateMonitor];

      if (v6)
      {
        if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
        {
          __42__TUIKTPaneViewController__checkKTStatus___block_invoke_323_cold_1();
        }

        v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
        if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = v3;
          _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ forcing a refresh on because of failure at initial load", &v10, 0xCu);
        }

        [v3 _maybeRefreshMonitorStateInBackground];
      }
    }

    [v3 reloadSpecifiers];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __42__TUIKTPaneViewController__checkKTStatus___block_invoke_323_cold_2();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[TUIKTPaneViewController _checkKTStatus:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __42__TUIKTPaneViewController__checkKTStatus___block_invoke_2_324()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__TUIKTPaneViewController__checkKTStatus___block_invoke_327()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_maybeRefreshMonitorStateInBackground
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_331);
}

void __64__TUIKTPaneViewController__maybeRefreshMonitorStateInBackground__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D73598]);
  [v0 maybeUpdateMonitorState];
}

- (void)_setDeviceVerificationEnabled:(id)a3 withSpecifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setDeviceVerificationEnabled:withSpecifier:];
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTPaneViewController *)self _setDeviceVerificationEnabled:v8 withSpecifier:v6];
  }

  if ([(TUIKTStateManager *)self->_stateManager optIn]!= 2)
  {
    objc_initWeak(buf, self);
    if (-[TUIKTStateManager optIn](self->_stateManager, "optIn") || ![v6 BOOLValue])
    {
      if (-[TUIKTStateManager optIn](self->_stateManager, "optIn") != 1 || ([v6 BOOLValue] & 1) != 0)
      {
        goto LABEL_17;
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_341;
      v12[3] = &unk_279DDA9E8;
      v10 = &v14;
      objc_copyWeak(&v14, buf);
      v13 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_338;
      block[3] = &unk_279DDAB28;
      v10 = &v16;
      objc_copyWeak(&v16, buf);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(v10);
LABEL_17:
    objc_destroyWeak(buf);
    goto LABEL_18;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _setDeviceVerificationEnabled:withSpecifier:];
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ cached opt in state is not available, aborting attempt to change opt in state...", buf, 0xCu);
  }

LABEL_18:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_335()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_338(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained optInNavigationController];
    [v2 presentViewController:v3 animated:1 completion:0];

    v4 = [v2 optInFlowController];
    [v4 beginOptInFlow];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_338_cold_1();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[TUIKTPaneViewController _setDeviceVerificationEnabled:withSpecifier:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_341(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_345;
    v5[3] = &unk_279DDB080;
    v6 = *(a1 + 32);
    v7 = WeakRetained;
    [WeakRetained _showOptOutConfirmationAlertWithCompletion:v5];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_341_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[TUIKTPaneViewController _setDeviceVerificationEnabled:withSpecifier:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_2_342()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_345(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) propertyForKey:*MEMORY[0x277D40148]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      [v4 setLoading:1];
      v5 = [*(a1 + 40) optInFlowController];
      [v5 beginOptOutFlow];
    }

    else
    {
      [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_345_cold_1();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_345_cold_2(a1);
    }
  }
}

uint64_t __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_2_346()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_openReportToApple
{
  v3 = [TUIKTReportToAppleContext alloc];
  if ([(TUIKTPaneViewController *)self _reportableFailureFound])
  {
    v4 = [(TUIKTStateManager *)self->_stateManager firstRecentFailedEventId];
    [(TUIKTReportToAppleContext *)v3 setFailingValidation:v4];
  }

  v5 = [[TUIKTReportToAppleViewController alloc] initWithContext:v3 staticIdentityManager:0];
  reportToAppleViewController = self->_reportToAppleViewController;
  self->_reportToAppleViewController = v5;

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TUIKTPaneViewController__openReportToApple__block_invoke;
  v7[3] = &unk_279DDAB28;
  objc_copyWeak(&v8, &location);
  dispatch_async(MEMORY[0x277D85CD0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __45__TUIKTPaneViewController__openReportToApple__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D757A0]);
    v3 = [WeakRetained reportToAppleViewController];
    v4 = [v2 initWithRootViewController:v3];
    [WeakRetained setReportNavigationController:v4];

    v5 = [WeakRetained reportNavigationController];
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = -2;
    }

    [v5 setModalPresentationStyle:v8];

    v9 = [WeakRetained reportNavigationController];
    [WeakRetained presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __45__TUIKTPaneViewController__openReportToApple__block_invoke_cold_1();
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[TUIKTPaneViewController _openReportToApple]_block_invoke";
      _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __45__TUIKTPaneViewController__openReportToApple__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_openTapToRadar
{
  if ([MEMORY[0x277CE4560] isInternalBuild])
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _openTapToRadar];
    }

    v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_26F50B000, v2, OS_LOG_TYPE_DEBUG, "User tapped on 'File a Tap-to-Radar'... Attempting to open Tap-to-Radar.", buf, 2u);
    }

    v3 = *MEMORY[0x277D735B0];
    v4 = [objc_alloc(MEMORY[0x277D73570]) initWithApplication:v3];
    v5 = dispatch_semaphore_create(0);
    v6 = [MEMORY[0x277CBEB18] array];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__TUIKTPaneViewController__openTapToRadar__block_invoke_356;
    v14[3] = &unk_279DDB0D0;
    v7 = v6;
    v15 = v7;
    v8 = v5;
    v16 = v8;
    [v4 copyDeviceStatus:v3 complete:v14];
    v9 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = @"tap-to-radar://new?componentid=986752&ComponentName=Transparency&ComponentVersion=all";
    }

    else
    {
      v11 = [v7 componentsJoinedByString:{@", "}];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@=%@", @"tap-to-radar://new?componentid=986752&ComponentName=Transparency&ComponentVersion=all", @"DeviceIDs", v11];
    }

    v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v13 openSensitiveURL:v12 withOptions:0];
  }
}

uint64_t __42__TUIKTPaneViewController__openTapToRadar__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __42__TUIKTPaneViewController__openTapToRadar__block_invoke_356(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) idms];
        v9 = [v8 pushToken];

        if (v9)
        {
          [*(a1 + 32) addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_showOptOutConfirmationAlertWithCompletion:(id)a3
{
  v22 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _showOptOutConfirmationAlertWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _showOptOutConfirmationAlertWithCompletion:];
  }

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TURN_OFF_ALERT_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TURN_OFF_ALERT_MESSAGE" value:&stru_287F92480 table:@"Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  alert = self->_alert;
  self->_alert = v9;

  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TURN_OFF_ALERT_TURN_OFF_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__TUIKTPaneViewController__showOptOutConfirmationAlertWithCompletion___block_invoke_380;
  v25[3] = &unk_279DDB0F8;
  v25[4] = self;
  v14 = v22;
  v26 = v14;
  v15 = [v11 actionWithTitle:v13 style:1 handler:v25];

  v16 = [MEMORY[0x277D75348] systemRedColor];
  [v15 _setTitleTextColor:v16];

  [(UIAlertController *)self->_alert addAction:v15];
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"TURN_OFF_ALERT_KEEP_USING_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__TUIKTPaneViewController__showOptOutConfirmationAlertWithCompletion___block_invoke_2;
  v23[3] = &unk_279DDB0F8;
  v23[4] = self;
  v24 = v14;
  v20 = v14;
  v21 = [v17 actionWithTitle:v19 style:0 handler:v23];

  [(UIAlertController *)self->_alert addAction:v21];
  [(UIAlertController *)self->_alert setPreferredAction:v21];
  [(TUIKTPaneViewController *)self presentViewController:self->_alert animated:1 completion:0];
}

uint64_t __70__TUIKTPaneViewController__showOptOutConfirmationAlertWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIKTPaneViewController__showOptOutConfirmationAlertWithCompletion___block_invoke_380(uint64_t a1)
{
  [*(a1 + 32) setAlert:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __70__TUIKTPaneViewController__showOptOutConfirmationAlertWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlert:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_showResetConfirmationAlertWithCompletion:(id)a3
{
  v22 = a3;
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RESET_CONTACT_KEY_VERIFICATION_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RESET_CONTACT_KEY_VERIFICATION_MESSAGE" value:&stru_287F92480 table:@"Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  alert = self->_alert;
  self->_alert = v9;

  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"RESET_CONTACT_KEY_VERIFICATION_RESET_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__TUIKTPaneViewController__showResetConfirmationAlertWithCompletion___block_invoke;
  v25[3] = &unk_279DDB0F8;
  v25[4] = self;
  v14 = v22;
  v26 = v14;
  v15 = [v11 actionWithTitle:v13 style:1 handler:v25];

  v16 = [MEMORY[0x277D75348] systemRedColor];
  [v15 _setTitleTextColor:v16];

  [(UIAlertController *)self->_alert addAction:v15];
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"RESET_CONTACT_KEY_VERIFICATION_KEEP_USING_BUTTON" value:&stru_287F92480 table:@"Localizable"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__TUIKTPaneViewController__showResetConfirmationAlertWithCompletion___block_invoke_2;
  v23[3] = &unk_279DDB0F8;
  v23[4] = self;
  v24 = v14;
  v20 = v14;
  v21 = [v17 actionWithTitle:v19 style:0 handler:v23];

  [(UIAlertController *)self->_alert addAction:v21];
  [(UIAlertController *)self->_alert setPreferredAction:v21];
  [(TUIKTPaneViewController *)self presentViewController:self->_alert animated:1 completion:0];
}

uint64_t __69__TUIKTPaneViewController__showResetConfirmationAlertWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlert:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__TUIKTPaneViewController__showResetConfirmationAlertWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlert:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8
{
  v14 = MEMORY[0x277D3FAD8];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = [v14 groupSpecifierWithID:a3 name:a4];
  [(TUIKTPaneViewController *)self _setFooterTextWithLinkForSpecifier:v19 footerText:v18 linkText:v17 actionMethodName:v16 target:v15];

  return v19;
}

- (void)_setFooterTextWithLinkForSpecifier:(id)a3 footerText:(id)a4 linkText:(id)a5 actionMethodName:(id)a6 target:(id)a7
{
  v11 = MEMORY[0x277CCACA8];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v23 = [v11 stringWithFormat:@"%@ %@", a4, v14];
  [v15 setProperty:v23 forKey:*MEMORY[0x277D3FF88]];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v15 setProperty:v17 forKey:*MEMORY[0x277D3FF48]];

  [v15 setProperty:v23 forKey:*MEMORY[0x277D3FF70]];
  v18 = [v23 rangeOfString:v14];
  v20 = v19;

  v25.location = v18;
  v25.length = v20;
  v21 = NSStringFromRange(v25);
  [v15 setProperty:v21 forKey:*MEMORY[0x277D3FF58]];

  v22 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v12];

  [v15 setProperty:v22 forKey:*MEMORY[0x277D3FF68]];
  [v15 setProperty:v13 forKey:*MEMORY[0x277D3FF50]];
}

- (void)_startSpinnerForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:*MEMORY[0x277D40148]];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 startAnimating];
  [v4 setAccessoryView:v3];
}

- (void)_stopSpinnerForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40148]];
  [v3 setAccessoryView:0];
}

- (void)_dismissPendingAlert
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke;
  v2[3] = &unk_279DDAB28;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained alert];

    if (v3)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
      {
        __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_cold_1();
      }

      v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
      {
        __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_cold_2(v4, v2);
      }

      v5 = [v2 alert];
      [v5 dismissViewControllerAnimated:1 completion:0];

      [v2 setAlert:0];
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_cold_3();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[TUIKTPaneViewController _dismissPendingAlert]_block_invoke";
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_404()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_handleLaunchURL
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1464);
  v5 = 136315650;
  v6 = "[TUIKTPaneViewController _handleLaunchURL]";
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = a1;
  OUTLINED_FUNCTION_5_0(&dword_26F50B000, a2, a3, "%s %{public}@ on %{public}@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIKTPaneViewController__handleLaunchURL__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_409(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained handleURLResourceDictionary];
    v4 = [v3 objectForKeyedSubscript:@"id"];

    if (v4)
    {
      if ([v4 isEqualToString:@"STATUS"])
      {
        [v2 setHandleURLResourceDictionary:0];
      }

      if ([v4 isEqualToString:@"PUBLIC_VERIFICATION_CODE"])
      {
        v5 = [v2 accountKeySpecifierProvider];

        if (v5)
        {
          [v2 setHandleURLResourceDictionary:0];
          v6 = [v2 accountKeySpecifierProvider];
          [v6 setIsExpanded:1];
        }
      }
    }

    else
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
      {
        __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_409_cold_1();
      }

      v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
      {
        __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_409_cold_2(v8, v2);
      }

      v9 = [v2 appleIDSpecifier];

      if (v9)
      {
        [v2 setHandleURLResourceDictionary:0];
        [v2 _updateAppleID];
      }
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_409_cold_3();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[TUIKTPaneViewController _handleLaunchURL]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_421()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)presentOptInNavigationController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __59__TUIKTPaneViewController_presentOptInNavigationController__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __59__TUIKTPaneViewController_presentOptInNavigationController__block_invoke_426(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained optInNavigationController];
    [v2 presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __59__TUIKTPaneViewController_presentOptInNavigationController__block_invoke_426_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIKTPaneViewController presentOptInNavigationController]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __59__TUIKTPaneViewController_presentOptInNavigationController__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)optInFlowResultWithStateUpdate
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController optInFlowResultWithStateUpdate];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_DEFAULT, &unk_26F552F31, buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_431;
  block[3] = &unk_279DDAB28;
  objc_copyWeak(&v5, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

uint64_t __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_431(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _checkKTStatus:0];
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_431_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_INFO, "Attempting to reload specifiers in transparency pane...", &v6, 2u);
    }

    [v2 reloadSpecifiers];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_431_cold_2();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIKTPaneViewController optInFlowResultWithStateUpdate]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __57__TUIKTPaneViewController_optInFlowResultWithStateUpdate__block_invoke_434()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TUIKTPaneViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(TUIKTPaneViewController *)self showViewController:v6 sender:v7];
  }
}

- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController specifierProvider:willBeginLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:willBeginLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __71__TUIKTPaneViewController_specifierProvider_willBeginLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController specifierProvider:didFinishLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:didFinishLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __71__TUIKTPaneViewController_specifierProvider_didFinishLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __78__TUIKTPaneViewController_reloadSpecifiersForProvider_oldSpecifiers_animated___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController validateDataclassAccessForProvider:specifier:completion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController validateDataclassAccessForProvider:specifier:completion:];
  }
}

uint64_t __83__TUIKTPaneViewController_validateDataclassAccessForProvider_specifier_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 specifier:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_deviceDetailsButtonSpecifier)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _loadRemoteRequest:withIdentifier:specifier:];
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "[TUIKTPaneViewController _loadRemoteRequest:withIdentifier:specifier:]";
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = self;
      _os_log_debug_impl(&dword_26F50B000, v11, OS_LOG_TYPE_DEBUG, "%s another request is runnning, ignoring request = %{public}@, identifier = %{public}@ on %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    objc_storeStrong(&self->_deviceDetailsButtonSpecifier, a5);
    [(TUIKTPaneViewController *)self _startSpinnerForSpecifier:v10];
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_specifier___block_invoke_447;
    v15[3] = &unk_279DDB120;
    objc_copyWeak(&v16, buf);
    v12 = [(TUIKTPaneViewController *)self _loadRemoteRequest:v8 withIdentifier:v9 preparation:0 completion:v15];
    activeRemoteUIController = self->_activeRemoteUIController;
    self->_activeRemoteUIController = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_specifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_specifier___block_invoke_447(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained deviceDetailsButtonSpecifier];
    [v2 _stopSpinnerForSpecifier:v3];

    [v2 setDeviceDetailsButtonSpecifier:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __71__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_specifier___block_invoke_447_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIKTPaneViewController _loadRemoteRequest:withIdentifier:specifier:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_specifier___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 preparation:(id)a5 completion:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _loadRemoteRequest:withIdentifier:preparation:completion:];
  }

  v14 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[TUIKTPaneViewController _loadRemoteRequest:withIdentifier:preparation:completion:]";
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = self;
    _os_log_debug_impl(&dword_26F50B000, v14, OS_LOG_TYPE_DEBUG, "%s request = %{public}@, identifier = %{public}@ on %{public}@", buf, 0x2Au);
  }

  v15 = [objc_alloc(MEMORY[0x277CECAB8]) initWithIdentifier:v11];
  [v15 setDelegate:self];
  v16 = [(TUIKTPaneViewController *)self navigationController];
  [v15 setNavigationController:v16];

  if (v12)
  {
    v12[2](v12, v15);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_453;
  v24[3] = &unk_279DDB198;
  v27 = v13;
  v17 = v15;
  v25 = v17;
  v26 = v10;
  v18 = v10;
  v19 = v13;
  [(TUIKTPaneViewController *)self _getServerUILoadDelegateWithCompletion:v24];
  v20 = v26;
  v21 = v17;

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_453(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_2;
    v10[3] = &unk_279DDB170;
    v11 = v7;
    v12 = *(a1 + 48);
    [v11 loadRequest:v8 completion:v10];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

void __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_2_cold_1();
  }

  v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v17 = v7;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEBUG, "%@ done loading request with success %d. Error: %@", buf, 0x1Cu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_456;
  v11[3] = &unk_279DDB148;
  v8 = *(a1 + 40);
  v15 = a2;
  v14 = v8;
  v12 = v5;
  v13 = *(a1 + 32);
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_3()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __84__TUIKTPaneViewController__loadRemoteRequest_withIdentifier_preparation_completion___block_invoke_456(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:createPageWithName:attributes:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController remoteUIController:createPageWithName:attributes:];
  }

  v10 = objc_alloc_init(MEMORY[0x277CECAB0]);
  [v10 setHidesBottomBarWhenPushed:1];

  return v10;
}

uint64_t __76__TUIKTPaneViewController_remoteUIController_createPageWithName_attributes___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:didRefreshObjectModel:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController remoteUIController:didRefreshObjectModel:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TUIKTPaneViewController *)self _handleObjectModelChangeForController:v6 objectModel:v7 isModal:0];
  }
}

uint64_t __68__TUIKTPaneViewController_remoteUIController_didRefreshObjectModel___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __77__TUIKTPaneViewController_remoteUIController_willPresentObjectModel_modally___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:shouldLoadRequest:redirectResponse:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController remoteUIController:shouldLoadRequest:redirectResponse:];
  }

  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:v10];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"fmip1", @"prefs", @"itms", 0}];
  v12 = [v9 URL];
  v13 = [v12 scheme];
  v14 = [v11 containsObject:v13];

  if (v14)
  {
    v15 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v16 = [v9 URL];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__TUIKTPaneViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke_477;
    v18[3] = &unk_279DDB1C0;
    v19 = v9;
    [v15 openURL:v16 configuration:0 completionHandler:v18];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TUIKTPaneViewController *)self _attemptUpdateAuthControllerWithActionableResponse:v10];
    }

    [(TUIKTPaneViewController *)self _addHeadersToRequest:v9];
  }

  return v14 ^ 1;
}

uint64_t __81__TUIKTPaneViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __81__TUIKTPaneViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke_477(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __81__TUIKTPaneViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke_477_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 URL];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "TUIKTPaneViewController shouldLoadRequest failed to open URL: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __81__TUIKTPaneViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:];
  }

  v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *location = 136316162;
    *&location[4] = "[TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:]";
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = self;
    _os_log_debug_impl(&dword_26F50B000, v11, OS_LOG_TYPE_DEBUG, "%s controller = %{public}@, error = %{public}@, request = %{public}@ on %{public}@", location, 0x34u);
  }

  if ([TUIUtils isAuthError:v9])
  {
    objc_initWeak(location, self);
    v12 = [(TUIKTPaneViewController *)self appleAccountManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_484;
    v14[3] = &unk_279DDB1E8;
    objc_copyWeak(&v17, location);
    v15 = v8;
    v16 = v10;
    [v12 silentRenewAppleAccountWithCompletionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_484(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_484_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_484_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v15 = "[TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke_2";
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s device details remote UI: silent renew result = %ld, error = %{public}@ on %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, WeakRetained);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_490;
  v12[3] = &unk_279DDB120;
  objc_copyWeak(&v13, buf);
  [v10 loadRequest:v9 completion:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_487()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_490(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_490_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", &v10, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_490_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315906;
    v11 = "[TUIKTPaneViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke_2";
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s device details remote UI: retry loadRequest result = %d, error = %{public}@ on %{public}@", &v10, 0x26u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_2_491()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke_494()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:didReceiveHTTPResponse:forRequest:];
  }

  v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136316162;
    v14 = "[TUIKTPaneViewController remoteUIController:didReceiveHTTPResponse:forRequest:]";
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = self;
    _os_log_debug_impl(&dword_26F50B000, v11, OS_LOG_TYPE_DEBUG, "%s controller = %{public}@, response = %{public}@, request = %{public}@ on %{public}@", &v13, 0x34u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTPaneViewController_remoteUIController_didReceiveHTTPResponse_forRequest___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_handleObjectModelChangeForController:(id)a3 objectModel:(id)a4 isModal:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _handleObjectModelChangeForController:objectModel:isModal:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    v21 = v10;
    v22 = [v9 identifier];
    *location = 136315906;
    *&location[4] = "[TUIKTPaneViewController _handleObjectModelChangeForController:objectModel:isModal:]";
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v22;
    v31 = 2114;
    v32 = self;
    _os_log_debug_impl(&dword_26F50B000, v21, OS_LOG_TYPE_DEBUG, "%s controller = %{public}@, model: %{public}@ on %{public}@", location, 0x2Au);
  }

  objc_storeStrong(&self->_currentObjectModel, a4);
  v11 = [v9 defaultPages];
  v12 = [v11 firstObject];
  v13 = [v12 navigationItem];

  v14 = [v13 leftBarButtonItems];
  LODWORD(v12) = [v14 count] == 0;

  if (v12)
  {
    if (v5)
    {
      v16 = objc_alloc(MEMORY[0x277D751E0]);
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287F92480 table:@"Localizable"];
      v19 = [v16 initWithTitle:v18 style:0 target:self action:sel__cancelButtonForRemoteObjectModelWasTapped_];
      [v13 setLeftBarButtonItem:v19];
    }
  }

  else
  {
    objc_initWeak(location, v8);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __85__TUIKTPaneViewController__handleObjectModelChangeForController_objectModel_isModal___block_invoke_508;
    v23[3] = &unk_279DDB210;
    objc_copyWeak(&v24, location);
    v15 = *MEMORY[0x277CEFEC0];
    v25 = v5;
    [v8 setHandlerForButtonName:v15 handler:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __85__TUIKTPaneViewController__handleObjectModelChangeForController_objectModel_isModal___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __85__TUIKTPaneViewController__handleObjectModelChangeForController_objectModel_isModal___block_invoke_508(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFEE8]];
    v8 = [v7 isEqualToString:*MEMORY[0x277CEFEC8]];

    if (v8)
    {
      if (*(a1 + 40) == 1)
      {
        v9 = [WeakRetained dismissObjectModelsAnimated:1 completion:0];
      }

      else
      {
        if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
        {
          __85__TUIKTPaneViewController__handleObjectModelChangeForController_objectModel_isModal___block_invoke_508_cold_1();
        }

        v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
        if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "Cancel action received for a non-modal flow", v11, 2u);
        }
      }
    }
  }
}

uint64_t __85__TUIKTPaneViewController__handleObjectModelChangeForController_objectModel_isModal___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v7 = a3;
  v8 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController remoteUIController:didReceiveObjectModel:actionSignal:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController remoteUIController:didReceiveObjectModel:actionSignal:];
  }

  v9 = [v8 clientInfo];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:*MEMORY[0x277D46250]];
    if ([v11 isEqualToString:@"update:trustedDevicesSummary"])
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
      {
        [TUIKTPaneViewController remoteUIController:didReceiveObjectModel:actionSignal:];
      }

      v12 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(&dword_26F50B000, v12, OS_LOG_TYPE_DEBUG, "Server request client to update trusted devices list", v13, 2u);
      }

      [(TUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider refreshDeviceList];
    }
  }
}

uint64_t __81__TUIKTPaneViewController_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __81__TUIKTPaneViewController_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke_517()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_cancelButtonForRemoteObjectModelWasTapped:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _cancelButtonForRemoteObjectModelWasTapped:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _cancelButtonForRemoteObjectModelWasTapped:];
  }

  v5 = [(AAUIRemoteUIController *)self->_activeRemoteUIController dismissObjectModelsAnimated:1 completion:0];
}

uint64_t __70__TUIKTPaneViewController__cancelButtonForRemoteObjectModelWasTapped___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_addHeadersToRequest:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _addHeadersToRequest:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _addHeadersToRequest:];
  }

  v5 = [(TUIKTPaneViewController *)self _grandSlamAccount];
  v6 = [(TUIKTPaneViewController *)self _accountStore];
  v7 = [v6 credentialForAccount:v5 serviceID:*MEMORY[0x277CEC6E8]];

  v8 = [v7 token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate setServiceToken:v8];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate signRequest:v4];
  v9 = [v5 aida_dsid];
  [v4 aa_addDeviceProvisioningInfoHeadersWithDSID:v9];

  [v4 aa_addAppProvidedContext:@"transparency"];
}

uint64_t __48__TUIKTPaneViewController__addHeadersToRequest___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_authController
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _authController];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _authController];
  }

  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF0178]);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

uint64_t __42__TUIKTPaneViewController__authController__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _attemptUpdateAuthControllerWithActionableResponse:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _attemptUpdateAuthControllerWithActionableResponse:];
  }

  if ([(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate isResponseActionable:v4])
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _attemptUpdateAuthControllerWithActionableResponse:];
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "Final Apple ID settings UI server response! Informing AuthKit...", buf, 2u);
    }

    v6 = [(TUIKTPaneViewController *)self _grandSlamAccount];
    v7 = objc_alloc_init(MEMORY[0x277CF0170]);
    v8 = [v6 aida_alternateDSID];
    [v7 setAltDSID:v8];

    [v7 setAnticipateEscrowAttempt:1];
    v9 = [v6 username];
    [v7 setUsername:v9];

    v10 = dispatch_semaphore_create(0);
    v11 = [(TUIKTPaneViewController *)self _authController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_536;
    v13[3] = &unk_279DDB238;
    v14 = v10;
    v12 = v10;
    [v11 updateStateWithExternalAuthenticationResponse:v4 forContext:v7 completion:v13];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_532()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_536(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_536_cold_2();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      v7 = "Successfully passed on auth response to AuthKit.";
      v8 = v6;
      v9 = 2;
LABEL_10:
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, v7, &v12, v9);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_536_cold_1();
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      v7 = "Failed to inform AuthKit of auth response! Error: %@.";
      v8 = v10;
      v9 = 12;
      goto LABEL_10;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __78__TUIKTPaneViewController__attemptUpdateAuthControllerWithActionableResponse___block_invoke_539()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_getServerUILoadDelegateWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_serverUILoadDelegate)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _getServerUILoadDelegateWithCompletion:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      [TUIKTPaneViewController _getServerUILoadDelegateWithCompletion:];
      if (!v4)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v4)
    {
LABEL_6:
      v4[2](v4, self->_serverUILoadDelegate, 0);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      [TUIKTPaneViewController _getServerUILoadDelegateWithCompletion:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      [TUIKTPaneViewController _getServerUILoadDelegateWithCompletion:];
    }

    v5 = [(TUIKTPaneViewController *)self _grandSlamAccount];
    v6 = objc_alloc_init(MEMORY[0x277CF0170]);
    v7 = [v5 aida_alternateDSID];
    [v6 setAltDSID:v7];

    [v6 setAnticipateEscrowAttempt:1];
    v8 = [(TUIKTPaneViewController *)self _authController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_547;
    v9[3] = &unk_279DDB288;
    v9[4] = self;
    v10 = v4;
    [v8 getServerUILoadDelegateWithContext:v6 completion:v9];
  }

LABEL_12:
}

uint64_t __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_544()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_547(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
    {
      __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_547_cold_1();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
    {
      __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_547_cold_2(v6, a1);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_550;
  v11[3] = &unk_279DDB260;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_550(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[5] + 1544), v2);
  }

  result = a1[7];
  if (result)
  {
    v4 = a1[4];
    v5 = a1[6];
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (id)_appleAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    v4 = [(TUIKTPaneViewController *)self _appleAccount];

    if (v4)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
      {
        [TUIKTPaneViewController _grandSlamAccount];
      }

      v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "Fetching grandslam account from apple account", buf, 2u);
      }

      v6 = [(TUIKTPaneViewController *)self _accountStore];
      v7 = [(TUIKTPaneViewController *)self _appleAccount];
      v8 = [v6 aida_accountForiCloudAccount:v7];
      v9 = self->_grandSlamAccount;
      self->_grandSlamAccount = v8;
    }

    grandSlamAccount = self->_grandSlamAccount;
    if (!grandSlamAccount)
    {
      if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
      {
        [TUIKTPaneViewController _grandSlamAccount];
      }

      v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
      if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "Could not fetch GrandSlam Account, we're destined for failure!", v12, 2u);
      }

      grandSlamAccount = self->_grandSlamAccount;
    }
  }

  return grandSlamAccount;
}

uint64_t __44__TUIKTPaneViewController__grandSlamAccount__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__TUIKTPaneViewController__grandSlamAccount__block_invoke_553()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x277CEC808]);
    v5 = [(TUIKTPaneViewController *)self _accountStore];
    v6 = [(TUIKTPaneViewController *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:v5 grandSlamAccount:v6 appTokenID:*MEMORY[0x277CEC6F0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (void)_updateTopGroupSpecifierFooter:(BOOL)a3
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    [TUIKTPaneViewController _updateTopGroupSpecifierFooter:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTPaneViewController _updateTopGroupSpecifierFooter:];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TUIKTPaneViewController__updateTopGroupSpecifierFooter___block_invoke_559;
  block[3] = &unk_279DDB0A8;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __58__TUIKTPaneViewController__updateTopGroupSpecifierFooter___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __58__TUIKTPaneViewController__updateTopGroupSpecifierFooter___block_invoke_559(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained stateManager];
    if ([v4 state] == 4)
    {
      v5 = [v3 stateManager];
      v6 = [v5 expectedResolutionDays];

      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"TRANSPARENCY_PANE_TOP_SPECIFIER_FOOTER_WITH_DAYS" value:&stru_287F92480 table:@"Localizable"];
        v10 = [v3 stateManager];
        v11 = [v7 localizedStringWithFormat:v9, objc_msgSend(v10, "expectedResolutionDays")];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"TRANSPARENCY_PANE_TOP_SPECIFIER_FOOTER" value:&stru_287F92480 table:@"Localizable"];

    if (![TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
    {
LABEL_13:
      v15 = [v3 topGroupSpecifier];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
      [v3 _setFooterTextWithLinkForSpecifier:v15 footerText:v14 linkText:v17 actionMethodName:@"_learnMoreTapped" target:v3];

      v18 = [v3 topGroupSpecifier];
      [v3 reloadSpecifier:v18 animated:*(a1 + 40)];

      goto LABEL_14;
    }

    v10 = [v14 stringByAppendingString:@" "];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"REPORT_TO_APPLE_FOOTER" value:&stru_287F92480 table:@"Localizable"];
    v11 = [v10 stringByAppendingString:v9];
LABEL_12:
    v14 = v11;

    goto LABEL_13;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_14 != -1)
  {
    __58__TUIKTPaneViewController__updateTopGroupSpecifierFooter___block_invoke_559_cold_1();
  }

  v12 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v21 = "[TUIKTPaneViewController _updateTopGroupSpecifierFooter:]_block_invoke";
    _os_log_impl(&dword_26F50B000, v12, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __58__TUIKTPaneViewController__updateTopGroupSpecifierFooter___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)activeConnectionChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __50__TUIKTPaneViewController_activeConnectionChanged__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_14 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)viewWillAppear:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateNoError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateNoIDSAppleID:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateCDPWaiting:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateDeviceError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateOtherError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateCDPError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateTemporaryError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateTreeReset:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateOptInPendingCDPError:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateOptInPendingCDPWaiting:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupUIStateIDSDisabled:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)specifiers
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v7 = 136315650;
  v8 = "[TUIKTPaneViewController specifiers]";
  v9 = 2048;
  v10 = [v4 state];
  v11 = 2114;
  v12 = a3;
  _os_log_error_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s unexpected UI state (%ld) on %{public}@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getDeviceVerificationEnabledForSpecifier:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1608);
  v4 = a2;
  v5 = [v3 stateDescription];
  [*(a1 + 1608) isVerifyCDPRunning];
  v9[0] = 136315906;
  OUTLINED_FUNCTION_1_1();
  v10 = v5;
  v11 = 1024;
  v12 = v6;
  v13 = v7;
  v14 = a1;
  _os_log_debug_impl(&dword_26F50B000, v4, OS_LOG_TYPE_DEBUG, "%s %{public}@, isVerifyCDPRunning = %d on %{public}@", v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getDeviceVerificationEnabledForSpecifier:(NSObject *)a3 .cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6_0(&dword_26F50B000, a2, a3, "%{public}@ trying update the switch cell that is not there, %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __59__TUIKTPaneViewController_dismissRemoteUIForViewController__block_invoke_206_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ CDP repair UI dismissed", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_changeOptInState:(uint64_t)a3 requestedOptInChange:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInteger:a2];
  v11[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v12 = v8;
  v13 = a3;
  OUTLINED_FUNCTION_5_0(&dword_26F50B000, v6, v9, "%s requestedOptInChange = %{public}@ on %{public}@", v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setDeviceVerificationEnabled:(uint64_t)a3 withSpecifier:.cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 1608);
  v6 = a2;
  v7 = [v5 stateDescription];
  [*(a1 + 1608) isVerifyCDPRunning];
  v11[0] = 136316162;
  OUTLINED_FUNCTION_1_1();
  v12 = v7;
  v13 = v8;
  v14 = a3;
  v15 = 1024;
  v16 = v9;
  v17 = v8;
  v18 = a1;
  _os_log_debug_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEBUG, "%s %{public}@, enabled: %{public}@, isVerifyCDPRunning = %d on %{public}@", v11, 0x30u);

  v10 = *MEMORY[0x277D85DE8];
}

void __71__TUIKTPaneViewController__setDeviceVerificationEnabled_withSpecifier___block_invoke_345_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v5 = 138543618;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_0(&dword_26F50B000, v2, v3, "%{public}@ trying update the switch cell that is not there, %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_showOptOutConfirmationAlertWithCompletion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__TUIKTPaneViewController__dismissPendingAlert__block_invoke_cold_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 alert];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v9 = v5;
  v10 = a2;
  OUTLINED_FUNCTION_5_0(&dword_26F50B000, v3, v6, "%s alert = %{public}@ on %{public}@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __43__TUIKTPaneViewController__handleLaunchURL__block_invoke_409_cold_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 appleIDSpecifier];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v9 = v5;
  v10 = a2;
  OUTLINED_FUNCTION_5_0(&dword_26F50B000, v3, v6, "%s appleIDSpecifier = %{public}@ on %{public}@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reloadSpecifiersForProvider:oldSpecifiers:animated:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateDataclassAccessForProvider:specifier:completion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s not implemented on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:createPageWithName:attributes:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:didRefreshObjectModel:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:willPresentObjectModel:modally:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:shouldLoadRequest:redirectResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:didReceiveObjectModel:actionSignal:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cancelButtonForRemoteObjectModelWasTapped:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addHeadersToRequest:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_attemptUpdateAuthControllerWithActionableResponse:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getServerUILoadDelegateWithCompletion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s AKAppleIDServerResourceLoadDelegate cache available on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getServerUILoadDelegateWithCompletion:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s Starting to fetch AKAppleIDServerResourceLoadDelegate on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__TUIKTPaneViewController__getServerUILoadDelegateWithCompletion___block_invoke_547_cold_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateTopGroupSpecifierFooter:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end