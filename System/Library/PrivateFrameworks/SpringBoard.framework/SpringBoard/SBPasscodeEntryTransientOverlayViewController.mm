@interface SBPasscodeEntryTransientOverlayViewController
- (BOOL)shouldAutorotate;
- (SBPasscodeEntryTransientOverlayViewController)initWithAuthenticationController:(id)a3;
- (SBPasscodeEntryTransientOverlayViewControllerDelegate)delegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptUnlock:(id)a3 passcode:(id)a4;
- (void)_passcodeLockViewPasscodeEntered:(id)a3 authenticationType:(unint64_t)a4;
- (void)_updatePrototypeSettings;
- (void)handleFailedAuthenticationRequest:(id)a3 error:(id)a4;
- (void)handleSuccessfulAuthenticationRequest:(id)a3;
- (void)handleWillShowKeyboard:(BOOL)a3;
- (void)passcodeLockViewCancelButtonPressed:(id)a3;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3;
- (void)passcodeLockViewPasscodeDidChange:(id)a3;
- (void)setShowEmergencyCallButton:(BOOL)a3;
- (void)setUnlockDestination:(id)a3;
- (void)setUseBiometricPresentation:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBPasscodeEntryTransientOverlayViewController

- (SBPasscodeEntryTransientOverlayViewController)initWithAuthenticationController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBPasscodeEntryTransientOverlayViewController;
  v6 = [(SBTransientOverlayViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationController, a3);
    v7->_intent = 2;
    v7->_overridePresentationOrientation = 0;
    v9.receiver = v7;
    v9.super_class = SBPasscodeEntryTransientOverlayViewController;
    v7->_dismissesSiriForPresentation = [(SBTransientOverlayViewController *)&v9 dismissesSiriForPresentation];
  }

  return v7;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6.receiver = self;
    v6.super_class = SBPasscodeEntryTransientOverlayViewController;
    return [(SBTransientOverlayViewController *)&v6 preferredInterfaceOrientationForPresentation];
  }

  else if (self->_overridePresentationOrientation <= 1uLL)
  {
    return 1;
  }

  else
  {
    return self->_overridePresentationOrientation;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7.receiver = self;
    v7.super_class = SBPasscodeEntryTransientOverlayViewController;
    return [(SBTransientOverlayViewController *)&v7 supportedInterfaceOrientations];
  }

  else
  {
    overridePresentationOrientation = self->_overridePresentationOrientation;
    if (overridePresentationOrientation)
    {
      if (overridePresentationOrientation <= 2)
      {
        return 2;
      }

      else
      {
        return 24;
      }
    }

    else
    {
      return 2;
    }
  }
}

- (BOOL)shouldAutorotate
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBPasscodeEntryTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v6 shouldAutorotate];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryTransientOverlayViewControllerDidDisappear:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidLayoutSubviews];
  passcodeView = self->_passcodeView;
  v4 = [(SBTransientOverlayViewController *)self contentView];
  [v4 bounds];
  [(SBUIPasscodeViewWithLockScreenStyle *)passcodeView setFrame:?];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v23 viewDidLoad];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [v3 bounds];
  v8 = [[SBUIPasscodeViewWithLockScreenStyle alloc] initWithFrame:1 includeBlur:&__block_literal_global_219 passcodeViewGenerator:v4, v5, v6, v7];
  passcodeView = self->_passcodeView;
  self->_passcodeView = v8;

  v10 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  [v10 setDelegate:self];
  [v10 setShowsEmergencyCallButton:self->_showEmergencyCallButton];
  [v10 setUnlockDestination:self->_unlockDestination];
  [v10 setUsesBiometricPresentation:self->_useBiometricPresentation];
  [v10 setShowsProudLock:SBSIsSystemApertureAvailable() ^ 1];
  if ([v10 supportsPoseidonCoaching])
  {
    v11 = objc_alloc_init(MEMORY[0x277D02C58]);
    poseidonViewController = self->_poseidonViewController;
    self->_poseidonViewController = v11;

    v13 = self->_poseidonViewController;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __60__SBPasscodeEntryTransientOverlayViewController_viewDidLoad__block_invoke_2;
    v20 = &unk_2783A9460;
    v21 = v10;
    v22 = self;
    [(SBPasscodeEntryTransientOverlayViewController *)self bs_addChildViewController:v13 animated:0 transitionBlock:&v17];
  }

  [v3 addSubview:{self->_passcodeView, v17, v18, v19, v20}];
  v14 = [MEMORY[0x277D02C20] rootSettings];
  v15 = [v14 pearlSettings];
  pearlSettings = self->_pearlSettings;
  self->_pearlSettings = v15;

  [(CSLockScreenPearlSettings *)self->_pearlSettings addKeyObserver:self];
  [(SBPasscodeEntryTransientOverlayViewController *)self _updatePrototypeSettings];
}

void __60__SBPasscodeEntryTransientOverlayViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 1456);
  v8 = a2;
  v5 = [v4 view];
  [v3 setPoseidonContainerView:v5];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 1456) poseidonContainerViewController];
  [v6 setPoseidonContainerViewController:v7];

  v8[2]();
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBPasscodeEntryTransientOverlayViewController *)&v11 viewWillAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:self])
  {
    v5 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [v5 noteFaceHasBeenOccluded];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:self])
  {
    v6 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [v6 noteBottomFaceHasBeenOccluded];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained passcodeEntryTransientOverlayViewControllerStatusText];
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained passcodeEntryTransientOverlayViewControllerStatusSubtitleText];
  }

  else
  {
    v8 = 0;
  }

  if (v7 | v8)
  {
    v9 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [v9 updateStatusText:v7 subtitle:v8 animated:0];
  }

  v10 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  [v10 becomeFirstResponder];
}

- (int)_preferredStatusBarVisibility
{
  if ([*MEMORY[0x277D76620] activeInterfaceOrientation] != 1)
  {
    return 0;
  }

  v3 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  v4 = [v3 coachingActive];

  return v4 & 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  v9 = [v8 supportsPoseidonCoaching];

  if (v9 && self->_keyboardVisible)
  {
    v10 = SBFWindowForViewControllerTransition();
    v11 = (([v10 _toWindowOrientation] - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0;
    v12 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
    [v12 showCoaching:v11];
  }
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:v4 timingFunction:0.4];
    v6 = [v5 mutableCopy];

    v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v6 setPreferredFrameRateRange:{*&v13.minimum, *&v13.maximum, *&v13.preferred}];
    [v6 setHighFrameRateReason:1114126];
    v7 = MEMORY[0x277CF0D38];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v11[3] = &unk_2783A92D8;
    v11[4] = *(a1 + 32);
    v12 = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v9[3] = &unk_2783A8BF0;
    v9[4] = *(a1 + 32);
    v10 = v12;
    [v7 animateWithSettings:v6 actions:v11 completion:v9];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 1440) passcodeView];
    [v8 resignFirstResponder];

    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

uint64_t __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1440) setBlurEnabled:0];
  v2 = [*(*(a1 + 32) + 1440) passcodeView];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);

  return [v3 performAlongsideTransitions];
}

uint64_t __98__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1440) passcodeView];
  [v2 resignFirstResponder];

  v3 = *(a1 + 40);

  return [v3 completeTransition:1];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v13[3] = &unk_2783A8C18;
    v13[4] = *(a1 + 32);
    [MEMORY[0x277D75D18] performWithoutAnimation:v13];
    v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:v4 timingFunction:0.4];
    v6 = [v5 mutableCopy];

    v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v6 setPreferredFrameRateRange:{*&v14.minimum, *&v14.maximum, *&v14.preferred}];
    [v6 setHighFrameRateReason:1114126];
    v7 = MEMORY[0x277CF0D38];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v11[3] = &unk_2783A92D8;
    v11[4] = *(a1 + 32);
    v12 = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v9[3] = &unk_2783A8BF0;
    v9[4] = *(a1 + 32);
    v10 = v12;
    [v7 animateWithSettings:v6 actions:v11 completion:v9];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 1440) passcodeView];
    [v8 becomeFirstResponder];

    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

void __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1440) setBlurEnabled:0];
  v2 = [*(*(a1 + 32) + 1440) passcodeView];
  [v2 setAlpha:0.0];
}

uint64_t __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1440) setBlurEnabled:1];
  v2 = [*(*(a1 + 32) + 1440) passcodeView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 performAlongsideTransitions];
}

uint64_t __101__SBPasscodeEntryTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1440) passcodeView];
  [v2 becomeFirstResponder];

  v3 = *(a1 + 40);

  return [v3 completeTransition:1];
}

- (void)handleSuccessfulAuthenticationRequest:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeRequester);
  [WeakRetained resetForSuccess];

  self->_attemptingUnlock = 0;

  objc_storeWeak(&self->_passcodeRequester, 0);
}

- (void)handleFailedAuthenticationRequest:(id)a3 error:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeRequester);
  [WeakRetained resetForFailedPasscode];

  self->_attemptingUnlock = 0;

  objc_storeWeak(&self->_passcodeRequester, 0);
}

- (void)handleWillShowKeyboard:(BOOL)a3
{
  if (self->_keyboardVisible != a3)
  {
    self->_keyboardVisible = a3;
  }

  if (a3)
  {
    v4 = [(SBPasscodeEntryTransientOverlayViewController *)self interfaceOrientation];
    if (v4 == 4 || v4 == 2)
    {
      v5 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
      [v5 showCoaching:0];
    }
  }
}

- (void)passcodeLockViewPasscodeDidChange:(id)a3
{
  v4 = a3;
  [(SBTransientOverlayViewController *)self setNeedsIdleTimerReset];
  v5 = [v4 passcode];

  v6 = [v5 length];
  authenticationController = self->_authenticationController;
  if (v6)
  {

    [(SBFUserAuthenticationController *)authenticationController notePasscodeEntryBegan];
  }

  else
  {

    [(SBFUserAuthenticationController *)authenticationController notePasscodeEntryCancelled];
  }
}

- (void)passcodeLockViewCancelButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryTransientOverlayViewControllerRequestsDismissal:self];
  }
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:self];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_pearlSettings == a3)
  {
    [(SBPasscodeEntryTransientOverlayViewController *)self _updatePrototypeSettings];
  }
}

- (void)setShowEmergencyCallButton:(BOOL)a3
{
  if (self->_showEmergencyCallButton != a3)
  {
    self->_showEmergencyCallButton = a3;
    v4 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [v4 setShowsEmergencyCallButton:self->_showEmergencyCallButton];
  }
}

- (void)setUnlockDestination:(id)a3
{
  v4 = a3;
  unlockDestination = self->_unlockDestination;
  if (unlockDestination != v4)
  {
    v10 = v4;
    v6 = [(NSString *)unlockDestination isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_unlockDestination;
      self->_unlockDestination = v7;

      v9 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
      [v9 setUnlockDestination:self->_unlockDestination];

      v4 = v10;
    }
  }
}

- (void)setUseBiometricPresentation:(BOOL)a3
{
  if (self->_useBiometricPresentation != a3)
  {
    self->_useBiometricPresentation = a3;
    v4 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [v4 setUsesBiometricPresentation:self->_useBiometricPresentation];
  }
}

- (void)_attemptUnlock:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v7 length];
  [(SBFUserAuthenticationController *)self->_authenticationController addAsFirstResponder:self];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewController:self authenticatePasscode:v7])
  {
    [(SBFUserAuthenticationController *)self->_authenticationController removeResponder:self];
  }

  else
  {
    [(SBFUserAuthenticationController *)self->_authenticationController removeResponder:self];
    v10 = objc_alloc(MEMORY[0x277D65DF0]);
    if (v9)
    {
      v11 = [v10 initForPasscode:v7 source:0];
    }

    else
    {
      v11 = [v10 initForBiometricAuthenticationWithSource:0];
    }

    v12 = v11;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke;
    v27[3] = &unk_2783A92D8;
    v13 = v6;
    v28 = v13;
    v29 = self;
    v14 = MEMORY[0x223D6F7F0](v27);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke_2;
    v24[3] = &unk_2783A92D8;
    v25 = v13;
    v26 = self;
    v15 = MEMORY[0x223D6F7F0](v24);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke_3;
    v22 = &unk_2783A9FC8;
    v23 = v15;
    v16 = v15;
    v17 = MEMORY[0x223D6F7F0](&v19);
    v18 = [MEMORY[0x277D65FA8] responderWithSuccessHandler:v14 failureHandler:v17 invalidHandler:{v16, v19, v20, v21, v22}];
    [(SBFUserAuthenticationController *)self->_authenticationController processAuthenticationRequest:v12 responder:v18];
  }
}

uint64_t __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) resetForSuccess];
  *(*(a1 + 40) + 1416) = 0;
  return result;
}

uint64_t __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) resetForFailedPasscode];
  *(*(a1 + 40) + 1416) = 0;
  return result;
}

- (void)_passcodeLockViewPasscodeEntered:(id)a3 authenticationType:(unint64_t)a4
{
  v6 = a3;
  if (!self->_attemptingUnlock)
  {
    self->_attemptingUnlock = 1;
    v7 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__SBPasscodeEntryTransientOverlayViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke;
    block[3] = &unk_2783AB2A8;
    v11 = a4;
    v9 = v6;
    v10 = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }
}

void __101__SBPasscodeEntryTransientOverlayViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) passcode];
  }

  else
  {
    v2 = 0;
  }

  objc_storeWeak((*(a1 + 40) + 1432), *(a1 + 32));
  [*(a1 + 40) _attemptUnlock:*(a1 + 32) passcode:v2];
}

- (void)_updatePrototypeSettings
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  pearlSettings = self->_pearlSettings;
  if (pearlSettings)
  {
    [(CSLockScreenPearlSettings *)pearlSettings proudLockControllerViewControllerConfiguration];
  }

  v4 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  [v4 setProudLockConfiguration:v5];
}

- (SBPasscodeEntryTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end