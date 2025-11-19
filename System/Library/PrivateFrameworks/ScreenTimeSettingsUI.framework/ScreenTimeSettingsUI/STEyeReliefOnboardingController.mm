@interface STEyeReliefOnboardingController
- (BOOL)validatePIN:(id)a3 forPINController:(id)a4;
- (STEyeReliefOnboardingController)initWithCoordinator:(id)a3;
- (id)_createEyeReliefEDUController;
- (id)_createInitialViewControllerWithCoordinator:(id)a3;
- (id)_createPINController;
- (id)_createSecondaryWelcomeController;
- (void)_cancelOnboarding;
- (void)_continueButtonPressed;
- (void)_dismissOnboardingAndEnable;
- (void)_handleResponse:(int64_t)a3;
- (void)_presentationControllerDidDismiss:(id)a3;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)play;
- (void)presentOverViewController:(id)a3 completionHandler:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation STEyeReliefOnboardingController

- (STEyeReliefOnboardingController)initWithCoordinator:(id)a3
{
  v5 = a3;
  v6 = [(STEyeReliefOnboardingController *)self _createInitialViewControllerWithCoordinator:v5];
  v14.receiver = self;
  v14.super_class = STEyeReliefOnboardingController;
  v7 = [(STEyeReliefOnboardingController *)&v14 initWithRootViewController:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_coordinator, a3);
    v9 = objc_alloc_init(_TtC20ScreenTimeSettingsUI19STEyeReliefMicaView);
    micaView = v8->_micaView;
    v8->_micaView = v9;

    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (!v12)
    {
      [(OBNavigationController *)v8 setSupportedInterfaceOrientations:2];
    }

    [(STEyeReliefOnboardingController *)v8 setModalPresentationStyle:2];
  }

  return v8;
}

- (void)presentOverViewController:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = _Block_copy(a4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  [v8 presentViewController:self animated:1 completion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = STEyeReliefOnboardingController;
  [(STEyeReliefOnboardingController *)&v6 viewDidAppear:a3];
  v4 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];

  if (v4)
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
  v3 = [(STEyeReliefOnboardingController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    v5 = 0.901960784;
  }

  else
  {
    v5 = 0.196078431;
  }

  v6 = [MEMORY[0x277D75348] colorWithRed:v5 green:v5 blue:v5 alpha:1.0];
  v7 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
  v8 = [v7 contentView];
  [v8 setBackgroundColor:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STEyeReliefOnboardingController.viewDidLayoutSubviews", v9, 2u);
  }
}

- (void)_presentationControllerDidDismiss:(id)a3
{
  v4.receiver = self;
  v4.super_class = STEyeReliefOnboardingController;
  [(STEyeReliefOnboardingController *)&v4 _presentationControllerDidDismiss:a3];
  [(STEyeReliefOnboardingController *)self _handleResponse:0];
}

- (void)play
{
  v3 = [(STEyeReliefOnboardingController *)self micaView];
  v4 = [v3 superview];

  if (!v4)
  {
    v23 = objc_opt_new();
    [v23 setType:*MEMORY[0x277CDA928]];
    [v23 setDuration:0.5];
    v5 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    v6 = [v5 contentView];
    v7 = [v6 layer];
    [v7 addAnimation:v23 forKey:0];

    v8 = [(STEyeReliefOnboardingController *)self micaView];
    [v8 setAutoresizingMask:18];

    v9 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    v10 = [v9 contentView];
    v11 = [(STEyeReliefOnboardingController *)self micaView];
    [v10 addSubview:v11];

    v12 = [(STEyeReliefOnboardingController *)self primaryWelcomeViewController];
    v13 = [v12 contentView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(STEyeReliefOnboardingController *)self micaView];
    [v22 setFrame:{v15, v17, v19, v21}];
  }
}

- (id)_createInitialViewControllerWithCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];
  v6 = [v5 me];

  if ([v6 hasPasscode] && (objc_msgSend(v4, "hasAlreadyEnteredPINForSession") & 1) == 0)
  {
    v7 = [(STEyeReliefOnboardingController *)self _createPINController];
  }

  else
  {
    v7 = [(STEyeReliefOnboardingController *)self _createEyeReliefEDUController];
  }

  v8 = v7;

  return v8;
}

- (id)_createEyeReliefEDUController
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v15 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureTitle" value:&stru_28766E5A8 table:0];
  v4 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureDetailText" value:&stru_28766E5A8 table:0];
  v5 = [[STHeroWelcomeController alloc] initWithTitle:v15 detailText:v4 topInset:0.0];
  v6 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureButtonTrayCaption" value:&stru_28766E5A8 table:0];
  v7 = [(STHeroWelcomeController *)v5 buttonTray];
  [v7 setCaptionText:v6];

  v8 = [MEMORY[0x277D37618] boldButton];
  v9 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureContinueButton" value:&stru_28766E5A8 table:0];
  [v8 setTitle:v9 forState:0];
  [v8 addTarget:self action:sel__continueButtonPressed forControlEvents:64];
  v10 = [(STHeroWelcomeController *)v5 buttonTray];
  [v10 addButton:v8];

  v11 = [MEMORY[0x277D37650] linkButton];
  v12 = [v3 localizedStringForKey:@"ScreenDistanceEDUFeatureNotNowButton" value:&stru_28766E5A8 table:0];
  [v11 setTitle:v12 forState:0];
  [v11 addTarget:self action:sel__cancelOnboarding forControlEvents:64];
  v13 = [(STHeroWelcomeController *)v5 buttonTray];
  [v13 addButton:v11];

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

- (void)_handleResponse:(int64_t)a3
{
  v5 = [(STEyeReliefOnboardingController *)self completionHandler];
  if (v5)
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
    v7 = v5;

    v7[2](v7, a3);
    v5 = v7;
  }
}

- (void)_continueButtonPressed
{
  v3 = [(STEyeReliefOnboardingController *)self _createSecondaryWelcomeController];
  [(STEyeReliefOnboardingController *)self setSecondaryWelcomeViewController:v3];

  v4 = [(STEyeReliefOnboardingController *)self secondaryWelcomeViewController];
  [(OBNavigationController *)self pushViewController:v4 animated:1];
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

- (BOOL)validatePIN:(id)a3 forPINController:(id)a4
{
  v5 = a3;
  v6 = [(STEyeReliefOnboardingController *)self coordinator];
  v7 = [v6 validatePIN:v5];

  return v7;
}

- (void)didAcceptEnteredPIN
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(STEyeReliefOnboardingController *)self coordinator];
  [v3 setHasAlreadyEnteredPINForSession:1];

  v4 = [(STEyeReliefOnboardingController *)self _createEyeReliefEDUController];
  v5 = [v4 view];
  [v5 bounds];
  [(STEyeReliefOnboardingController *)self setPreferredContentSize:v6, v7];

  v11[0] = v4;
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