@interface SBPowerDownViewController
- (BOOL)handleLockButtonPress;
- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode;
- (SBPowerDownViewController)initWithWindowSceneManager:(id)manager;
- (SBPowerDownViewControllerDelegate)delegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)passcodeEntryTransientOverlayViewControllerStatusSubtitleText;
- (id)passcodeEntryTransientOverlayViewControllerStatusText;
- (void)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated;
- (void)didTapTemporarilyDisableFindMy;
- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal;
- (void)powerDownViewRequestCancel:(id)cancel;
- (void)powerDownViewRequestPowerDown:(id)down;
- (void)showPowerDownFindMyAlert;
- (void)showPowerDownFindMyAlertWithProceed:(id)proceed cancelCompletion:(id)completion;
- (void)userAcknowledgedFindMyInfo;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBPowerDownViewController

- (SBPowerDownViewController)initWithWindowSceneManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBPowerDownViewController;
  v6 = [(SBPowerDownViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowSceneManager, manager);
  }

  return v7;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBPowerDownViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidDisappear:disappear];
  delegate = [(SBPowerDownViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate powerDownViewControllerDidDisappear:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBPowerDownViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidLayoutSubviews];
  view = [(SBPowerDownViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SBPowerDownView *)self->_powerDownView setFrame:v5, v7, v9, v11];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = SBPowerDownViewController;
  [(SBTransientOverlayViewController *)&v16 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  v4 = +[SBWallpaperController sharedInstance];
  activeVariant = [v4 activeVariant];
  [v4 contrastForVariant:activeVariant];
  v7 = v6;
  v8 = MEMORY[0x277D76388];
  v9 = [v4 averageColorForVariant:activeVariant];
  v10 = [v4 legibilitySettingsForVariant:activeVariant];
  v11 = [v8 vibrantSettingsWithReferenceColor:v9 referenceContrast:v10 legibilitySettings:v7];

  v12 = [SBPowerDownView alloc];
  [contentView bounds];
  v13 = [(SBUIPowerDownView *)v12 initWithFrame:v11 vibrantSettings:?];
  powerDownView = self->_powerDownView;
  self->_powerDownView = v13;

  [(SBUIPowerDownView *)self->_powerDownView setDelegate:self];
  [contentView addSubview:self->_powerDownView];
  v15 = objc_alloc_init(MEMORY[0x277D49638]);
  [(SBPowerDownViewController *)self setBeaconManager:v15];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = SBPowerDownViewController;
  [(SBPowerDownViewController *)&v9 viewWillAppear:appear];
  captureButtonRestrictionCoordinator = [SBApp captureButtonRestrictionCoordinator];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [captureButtonRestrictionCoordinator inhibitCaptureButtonActionAssertionWithReason:v6];
  powerDownCaptureButtonSuppressionAssertion = self->_powerDownCaptureButtonSuppressionAssertion;
  self->_powerDownCaptureButtonSuppressionAssertion = v7;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBPowerDownViewController;
  [(SBPowerDownViewController *)&v5 viewWillDisappear:disappear];
  [(BSInvalidatable *)self->_powerDownCaptureButtonSuppressionAssertion invalidate];
  powerDownCaptureButtonSuppressionAssertion = self->_powerDownCaptureButtonSuppressionAssertion;
  self->_powerDownCaptureButtonSuppressionAssertion = 0;
}

- (void)powerDownViewRequestCancel:(id)cancel
{
  delegate = [(SBPowerDownViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate powerDownViewControllerRequestsDismissal:self];
  }
}

- (void)powerDownViewRequestPowerDown:(id)down
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SBPowerDownViewController_powerDownViewRequestPowerDown___block_invoke;
  v8[3] = &unk_2783A8C18;
  v8[4] = self;
  v4 = MEMORY[0x223D6F7F0](v8, a2, down);
  if ([(SBPowerDownViewController *)self userWantsFindMySuppressed])
  {
    beaconManager = [(SBPowerDownViewController *)self beaconManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__SBPowerDownViewController_powerDownViewRequestPowerDown___block_invoke_2;
    v6[3] = &unk_2783A9348;
    v7 = v4;
    [beaconManager setSuppressLPEMBeaconing:1 completion:v6];
  }

  else
  {
    v4[2](v4);
  }
}

void __59__SBPowerDownViewController_powerDownViewRequestPowerDown___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 powerDownViewControllerRequestsPowerDown:*(a1 + 32)];
  }
}

void __59__SBPowerDownViewController_powerDownViewRequestPowerDown___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBPowerDownViewController_powerDownViewRequestPowerDown___block_invoke_3;
  block[3] = &unk_2783A9348;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)showPowerDownFindMyAlertWithProceed:(id)proceed cancelCompletion:(id)completion
{
  proceedCopy = proceed;
  completionCopy = completion;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"POWER_DOWN_FIND_MY_TITLE"];
  v24 = [mainBundle localizedStringForKey:v9 value:&stru_283094718 table:@"SpringBoard"];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"POWER_DOWN_FIND_MY"];
  v12 = [mainBundle2 localizedStringForKey:v11 value:&stru_283094718 table:@"SpringBoard"];

  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [mainBundle3 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];

  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle4 localizedStringForKey:@"CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v24 message:v12 preferredStyle:1];
  v18 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__SBPowerDownViewController_showPowerDownFindMyAlertWithProceed_cancelCompletion___block_invoke;
  v27[3] = &unk_2783A9370;
  v27[4] = self;
  v28 = proceedCopy;
  v19 = proceedCopy;
  v20 = [v18 actionWithTitle:v14 style:0 handler:v27];
  [v17 addAction:v20];

  v21 = MEMORY[0x277D750F8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__SBPowerDownViewController_showPowerDownFindMyAlertWithProceed_cancelCompletion___block_invoke_3;
  v25[3] = &unk_2783A9370;
  v25[4] = self;
  v26 = completionCopy;
  v22 = completionCopy;
  v23 = [v21 actionWithTitle:v16 style:1 handler:v25];
  [v17 addAction:v23];

  [(SBPowerDownViewController *)self presentViewController:v17 animated:1 completion:0];
}

uint64_t __82__SBPowerDownViewController_showPowerDownFindMyAlertWithProceed_cancelCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) beaconManager];
  [v2 setUserHasAcknowledgedFindMy:1 completion:&__block_literal_global_6];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __82__SBPowerDownViewController_showPowerDownFindMyAlertWithProceed_cancelCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) beaconManager];
  [v2 setUserHasAcknowledgedFindMy:1 completion:&__block_literal_global_42];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)showPowerDownFindMyAlert
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"POWER_DOWN_FIND_MY_TITLE"];
  v5 = [mainBundle localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"POWER_DOWN_FIND_MY_DISABLE"];
  v8 = [mainBundle2 localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];

  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle3 localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_BUTTON" value:&stru_283094718 table:@"SpringBoard"];

  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle4 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v8 preferredStyle:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__SBPowerDownViewController_showPowerDownFindMyAlert__block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v14 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:v17];
  [v13 addAction:v14];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__SBPowerDownViewController_showPowerDownFindMyAlert__block_invoke_2;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v15 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v16];
  [v13 addAction:v15];

  [(SBPowerDownViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)userAcknowledgedFindMyInfo
{
  beaconManager = [(SBPowerDownViewController *)self beaconManager];
  [beaconManager setUserHasAcknowledgedFindMy:1 completion:&__block_literal_global_50];

  powerDownView = self->_powerDownView;

  [(SBUIPowerDownView *)powerDownView didAcknowledgeFindMyInfo];
}

- (void)didTapTemporarilyDisableFindMy
{
  [(SBPowerDownViewController *)self userAcknowledgedFindMyInfo];
  authenticationController = [SBApp authenticationController];
  hasPasscodeSet = [authenticationController hasPasscodeSet];

  if (hasPasscodeSet)
  {
    userAuthController = [(SBPowerDownViewController *)self userAuthController];

    if (!userAuthController)
    {
      authenticationController2 = [SBApp authenticationController];
      userAuthController = self->_userAuthController;
      self->_userAuthController = authenticationController2;

      lockOutController = [SBApp lockOutController];
      lockOutController = self->_lockOutController;
      self->_lockOutController = lockOutController;
    }

    v10 = [SBPasscodeEntryTransientOverlayViewController alloc];
    authenticationController3 = [SBApp authenticationController];
    v14 = [(SBPasscodeEntryTransientOverlayViewController *)v10 initWithAuthenticationController:authenticationController3];

    [(SBPowerDownViewController *)self setPasscodeEntryTransientOverlayViewController:v14];
    [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDelegate:self];
    v12 = +[SBWorkspace mainWorkspace];
    [v12 presentTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:1 completion:0];
  }

  else
  {
    [(SBPowerDownViewController *)self setUserWantsFindMySuppressed:1];
    powerDownView = self->_powerDownView;

    [(SBUIPowerDownView *)powerDownView didSuppressFindMy];
  }
}

- (void)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = +[SBWorkspace mainWorkspace];
  [v6 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:animatedCopy completion:0];

  passcodeEntryTransientOverlayViewController = self->_passcodeEntryTransientOverlayViewController;
  self->_passcodeEntryTransientOverlayViewController = 0;
}

- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__SBPowerDownViewController_passcodeEntryTransientOverlayViewController_authenticatePasscode___block_invoke;
  v10[3] = &unk_2783A9398;
  v10[4] = self;
  passcodeCopy = passcode;
  v6 = MEMORY[0x223D6F7F0](v10);
  v7 = [objc_alloc(MEMORY[0x277D65DF0]) initForPasscode:passcodeCopy source:0 handler:v6];

  userAuthController = [(SBPowerDownViewController *)self userAuthController];
  [userAuthController processAuthenticationRequest:v7];

  return 1;
}

uint64_t __94__SBPowerDownViewController_passcodeEntryTransientOverlayViewController_authenticatePasscode___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no";
    if (a2)
    {
      v5 = @"yes";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "PowerDownFindMy auth attempt succeeded: %@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (a2)
  {
    [v6 setUserWantsFindMySuppressed:1];
    [*(*(a1 + 32) + 1416) didSuppressFindMy];
  }

  else
  {
    result = [v6[186] isBlocked];
    if (!result)
    {
      return result;
    }
  }

  return [*(a1 + 32) _setPasscodeVisible:0 animated:1];
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal
{
  v4 = +[SBWorkspace mainWorkspace];
  [v4 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:1 completion:0];
}

- (id)passcodeEntryTransientOverlayViewControllerStatusText
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_PASSCODE_TITLE" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)passcodeEntryTransientOverlayViewControllerStatusSubtitleText
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"POWER_DOWN_FIND_MY_DISABLE_PASSCODE_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 performAlongsideTransitions];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *(*(a1 + 32) + 1416);
  v6 = [v3 isAnimated];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
  v28[3] = &unk_2783A8C18;
  v7 = v4;
  v29 = v7;
  [v5 hideAnimated:v6 completion:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = a1;
  obj = *(*(a1 + 32) + 1472);
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v13 = 0.0;
        if ([v3 isAnimated])
        {
          [*(*(v17 + 32) + 1416) showHideAnimationDuration];
          v13 = v14;
        }

        v15 = MEMORY[0x277D75D18];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
        v23[3] = &unk_2783A8C18;
        v23[4] = v12;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4;
        v21[3] = &unk_2783A8BF0;
        v21[4] = v12;
        v22 = v7;
        [v15 animateWithDuration:v23 animations:v21 completion:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5;
  block[3] = &unk_2783A92D8;
  block[4] = *(v17 + 32);
  v20 = v3;
  v16 = v3;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);
}

void __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __78__SBPowerDownViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 1472) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1472);
  *(v2 + 1472) = 0;

  v4 = *(a1 + 40);

  return [v4 completeTransition:1];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 performAlongsideTransitions];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *(*(a1 + 32) + 1416);
  v27 = v3;
  v6 = [v3 isAnimated];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
  v40[3] = &unk_2783A8C18;
  v7 = v4;
  v41 = v7;
  [v5 showAnimated:v6 completion:v40];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  obj = [*(*(a1 + 32) + 1456) connectedWindowScenes];
  v8 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v26 = v34;
    v11 = *MEMORY[0x277D772A8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if ([v13 isExternalDisplayWindowScene])
        {
          dispatch_group_enter(v7);
          v14 = [objc_alloc(MEMORY[0x277D65FD0]) initWithWindowScene:v13];
          [v14 setWindowLevel:v11];
          [v14 setHidden:0];
          [v14 setAlpha:0.0];
          v15 = *(*(a1 + 32) + 1416);
          [v14 bounds];
          v16 = [v15 createDimmingBackdropViewWithFrame:?];
          [v14 addSubview:v16];
          v17 = *(*(a1 + 32) + 1472);
          if (!v17)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v19 = *(a1 + 32);
            v20 = *(v19 + 1472);
            *(v19 + 1472) = v18;

            v17 = *(*(a1 + 32) + 1472);
          }

          [v17 addObject:v14];
          v21 = 0.0;
          if ([v27 isAnimated])
          {
            [*(*(a1 + 32) + 1416) showHideAnimationDuration];
            v21 = v22;
          }

          v23 = MEMORY[0x277D75D18];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v34[0] = __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
          v34[1] = &unk_2783A8C18;
          v35 = v14;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
          v31[3] = &unk_2783A9398;
          v32 = v7;
          v24 = v14;
          [v23 animateWithDuration:v33 animations:v31 completion:v21];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBPowerDownViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5;
  block[3] = &unk_2783A8C18;
  v30 = v27;
  v25 = v27;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);
}

- (BOOL)handleLockButtonPress
{
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  [mEMORY[0x277D67C98] _forceBioLockout];

  return 1;
}

- (SBPowerDownViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end