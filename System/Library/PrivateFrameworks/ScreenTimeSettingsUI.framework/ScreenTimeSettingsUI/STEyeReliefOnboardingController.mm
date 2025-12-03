@interface STEyeReliefOnboardingController
- (BOOL)validatePIN:(id)n forPINController:(id)controller;
- (STEyeReliefOnboardingController)initWithCoordinator:(id)coordinator;
- (id)_createEyeReliefEDUController;
- (id)_createInitialViewControllerWithCoordinator:(id)coordinator;
- (id)_createPINController;
- (id)_createSecondaryWelcomeController;
- (void)_cancelOnboarding;
- (void)_continueButtonPressed;
- (void)_dismissOnboardingAndEnable;
- (void)_handleResponse:(int64_t)response;
- (void)_presentationControllerDidDismiss:(id)dismiss;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)play;
- (void)presentOverViewController:(id)controller completionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
@end

@implementation STEyeReliefOnboardingController

- (STEyeReliefOnboardingController)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v6 = [(STEyeReliefOnboardingController *)self _createInitialViewControllerWithCoordinator:coordinatorCopy];
  v14.receiver = self;
  v14.super_class = STEyeReliefOnboardingController;
  v7 = [(STEyeReliefOnboardingController *)&v14 initWithRootViewController:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_coordinator, coordinator);
    v9 = objc_alloc_init(_TtC20ScreenTimeSettingsUI19STEyeReliefMicaView);
    micaView = v8->_micaView;
    v8->_micaView = v9;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [(OBNavigationController *)v8 setSupportedInterfaceOrientations:2];
    }

    [(STEyeReliefOnboardingController *)v8 setModalPresentationStyle:2];
  }

  return v8;
}

- (void)presentOverViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  v6 = _Block_copy(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  [controllerCopy presentViewController:self animated:1 completion:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = STEyeReliefOnboardingController;
  [(STEyeReliefOnboardingController *)&v6 viewDidAppear:appear];
  primaryWelcomeViewController = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];

  if (primaryWelcomeViewController)
  {
    [(STEyeReliefOnboardingController *)self play];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STEyeReliefOnboardingController.viewDidAppear", v5, 2u);
  }
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = STEyeReliefOnboardingController;
  [(STEyeReliefOnboardingController *)&v10 viewDidLayoutSubviews];
  traitCollection = [(STEyeReliefOnboardingController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v5 = 0.901960784;
  }

  else
  {
    v5 = 0.196078431;
  }

  v6 = [MEMORY[0x277D75348] colorWithRed:v5 green:v5 blue:v5 alpha:1.0];
  primaryWelcomeViewController = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
  contentView = [primaryWelcomeViewController contentView];
  [contentView setBackgroundColor:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STEyeReliefOnboardingController.viewDidLayoutSubviews", v9, 2u);
  }
}

- (void)_presentationControllerDidDismiss:(id)dismiss
{
  v4.receiver = self;
  v4.super_class = STEyeReliefOnboardingController;
  [(STEyeReliefOnboardingController *)&v4 _presentationControllerDidDismiss:dismiss];
  [(STEyeReliefOnboardingController *)self _handleResponse:0];
}

- (void)play
{
  micaView = [(STEyeReliefOnboardingController *)self micaView];
  superview = [micaView superview];

  if (!superview)
  {
    v23 = objc_opt_new();
    [v23 setType:*MEMORY[0x277CDA928]];
    [v23 setDuration:0.5];
    primaryWelcomeViewController = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    contentView = [primaryWelcomeViewController contentView];
    layer = [contentView layer];
    [layer addAnimation:v23 forKey:0];

    micaView2 = [(STEyeReliefOnboardingController *)self micaView];
    [micaView2 setAutoresizingMask:18];

    primaryWelcomeViewController2 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    contentView2 = [primaryWelcomeViewController2 contentView];
    micaView3 = [(STEyeReliefOnboardingController *)self micaView];
    [contentView2 addSubview:micaView3];

    primaryWelcomeViewController3 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    contentView3 = [primaryWelcomeViewController3 contentView];
    [contentView3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    micaView4 = [(STEyeReliefOnboardingController *)self micaView];
    [micaView4 setFrame:{v15, v17, v19, v21}];
  }
}

- (id)_createInitialViewControllerWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewModel = [coordinatorCopy viewModel];
  v6 = [viewModel me];

  if ([v6 hasPasscode] && (objc_msgSend(coordinatorCopy, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    _createPINController = [(STEyeReliefOnboardingController *)self _createPINController];
  }

  else
  {
    _createPINController = [(STEyeReliefOnboardingController *)self _createEyeReliefEDUController];
  }

  v8 = _createPINController;

  return v8;
}

- (id)_createEyeReliefEDUController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureTitle" value:&stru_28766E5A8 table:0];
  v4 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureDetailText" value:&stru_28766E5A8 table:0];
  v5 = [[STHeroWelcomeController alloc] initWithTitle:v15 detailText:v4 topInset:0.0];
  v6 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureButtonTrayCaption" value:&stru_28766E5A8 table:0];
  buttonTray = [(STHeroWelcomeController *)v5 buttonTray];
  [buttonTray setCaptionText:v6];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v9 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureContinueButton" value:&stru_28766E5A8 table:0];
  [boldButton setTitle:v9 forState:0];
  [boldButton addTarget:self action:sel__continueButtonPressed forControlEvents:64];
  buttonTray2 = [(STHeroWelcomeController *)v5 buttonTray];
  [buttonTray2 addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v12 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureNotNowButton" value:&stru_28766E5A8 table:0];
  [linkButton setTitle:v12 forState:0];
  [linkButton addTarget:self action:sel__cancelOnboarding forControlEvents:64];
  buttonTray3 = [(STHeroWelcomeController *)v5 buttonTray];
  [buttonTray3 addButton:linkButton];

  [(STEyeReliefOnboardingController *)self setPrimaryWelcomeViewController:v5];

  return v5;
}

- (id)_createSecondaryWelcomeController
{
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __68__STEyeReliefOnboardingController__createSecondaryWelcomeController__block_invoke;
  v9 = &unk_279B7CDA8;
  objc_copyWeak(&v10, &location);
  v2 = _Block_copy(&v6);
  v3 = [STEyeReliefIntroHowItWorksViewController alloc];
  v4 = [(STEyeReliefIntroHowItWorksViewController *)v3 initForChecklistFlow:0 withCompletionHandler:v2, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

void __68__STEyeReliefOnboardingController__createSecondaryWelcomeController__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _dismissOnboardingAndEnable];
  }

  else
  {
    [WeakRetained _cancelOnboarding];
  }
}

- (void)_handleResponse:(int64_t)response
{
  completionHandler = [(STEyeReliefOnboardingController *)self completionHandler];
  if (completionHandler)
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
    v7 = completionHandler;

    v7[2](v7, response);
    completionHandler = v7;
  }
}

- (void)_continueButtonPressed
{
  _createSecondaryWelcomeController = [(STEyeReliefOnboardingController *)self _createSecondaryWelcomeController];
  [(STEyeReliefOnboardingController *)self setSecondaryWelcomeViewController:_createSecondaryWelcomeController];

  secondaryWelcomeViewController = [(STEyeReliefOnboardingController *)self secondaryWelcomeViewController];
  [(OBNavigationController *)self pushViewController:secondaryWelcomeViewController animated:1];
}

- (void)_dismissOnboardingAndEnable
{
  [(STEyeReliefOnboardingController *)self _handleResponse:2];

  [(STEyeReliefOnboardingController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_1];
}

- (void)_cancelOnboarding
{
  [(STEyeReliefOnboardingController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_61];

  [(STEyeReliefOnboardingController *)self _handleResponse:0];
}

- (BOOL)validatePIN:(id)n forPINController:(id)controller
{
  nCopy = n;
  coordinator = [(STEyeReliefOnboardingController *)self coordinator];
  v7 = [coordinator validatePIN:nCopy];

  return v7;
}

- (void)didAcceptEnteredPIN
{
  v11[1] = *MEMORY[0x277D85DE8];
  coordinator = [(STEyeReliefOnboardingController *)self coordinator];
  [coordinator setHasAlreadyEnteredPINForSession:1];

  _createEyeReliefEDUController = [(STEyeReliefOnboardingController *)self _createEyeReliefEDUController];
  view = [_createEyeReliefEDUController view];
  [view bounds];
  [(STEyeReliefOnboardingController *)self setPreferredContentSize:v6, v7];

  v11[0] = _createEyeReliefEDUController;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(STEyeReliefOnboardingController *)self setViewControllers:v8 animated:0];

  v9 = dispatch_time(0, 750000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STEyeReliefOnboardingController_didAcceptEnteredPIN__block_invoke;
  block[3] = &unk_279B7C998;
  block[4] = self;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

- (void)didCancelEnteringPIN
{
  [(STEyeReliefOnboardingController *)self _handleResponse:0];

  [(STEyeReliefOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_createPINController
{
  v3 = objc_opt_new();
  [v3 setPinDelegate:self];
  [v3 setMode:3];

  return v3;
}

@end