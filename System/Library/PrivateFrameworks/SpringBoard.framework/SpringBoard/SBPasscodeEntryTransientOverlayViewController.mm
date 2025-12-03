@interface SBPasscodeEntryTransientOverlayViewController
- (BOOL)shouldAutorotate;
- (SBPasscodeEntryTransientOverlayViewController)initWithAuthenticationController:(id)controller;
- (SBPasscodeEntryTransientOverlayViewControllerDelegate)delegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptUnlock:(id)unlock passcode:(id)passcode;
- (void)_passcodeLockViewPasscodeEntered:(id)entered authenticationType:(unint64_t)type;
- (void)_updatePrototypeSettings;
- (void)handleFailedAuthenticationRequest:(id)request error:(id)error;
- (void)handleSuccessfulAuthenticationRequest:(id)request;
- (void)handleWillShowKeyboard:(BOOL)keyboard;
- (void)passcodeLockViewCancelButtonPressed:(id)pressed;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed;
- (void)passcodeLockViewPasscodeDidChange:(id)change;
- (void)setShowEmergencyCallButton:(BOOL)button;
- (void)setUnlockDestination:(id)destination;
- (void)setUseBiometricPresentation:(BOOL)presentation;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBPasscodeEntryTransientOverlayViewController

- (SBPasscodeEntryTransientOverlayViewController)initWithAuthenticationController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBPasscodeEntryTransientOverlayViewController;
  v6 = [(SBTransientOverlayViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationController, controller);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBPasscodeEntryTransientOverlayViewController;
  return [(SBTransientOverlayViewController *)&v6 shouldAutorotate];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidDisappear:disappear];
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
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  [(SBUIPasscodeViewWithLockScreenStyle *)passcodeView setFrame:?];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v23 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v8 = [[SBUIPasscodeViewWithLockScreenStyle alloc] initWithFrame:1 includeBlur:&__block_literal_global_219 passcodeViewGenerator:v4, v5, v6, v7];
  passcodeView = self->_passcodeView;
  self->_passcodeView = v8;

  passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  [passcodeView setDelegate:self];
  [passcodeView setShowsEmergencyCallButton:self->_showEmergencyCallButton];
  [passcodeView setUnlockDestination:self->_unlockDestination];
  [passcodeView setUsesBiometricPresentation:self->_useBiometricPresentation];
  [passcodeView setShowsProudLock:SBSIsSystemApertureAvailable() ^ 1];
  if ([passcodeView supportsPoseidonCoaching])
  {
    v11 = objc_alloc_init(MEMORY[0x277D02C58]);
    poseidonViewController = self->_poseidonViewController;
    self->_poseidonViewController = v11;

    v13 = self->_poseidonViewController;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __60__SBPasscodeEntryTransientOverlayViewController_viewDidLoad__block_invoke_2;
    v20 = &unk_2783A9460;
    v21 = passcodeView;
    selfCopy = self;
    [(SBPasscodeEntryTransientOverlayViewController *)self bs_addChildViewController:v13 animated:0 transitionBlock:&v17];
  }

  [contentView addSubview:{self->_passcodeView, v17, v18, v19, v20}];
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  pearlSettings = [rootSettings pearlSettings];
  pearlSettings = self->_pearlSettings;
  self->_pearlSettings = pearlSettings;

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

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBPasscodeEntryTransientOverlayViewController *)&v11 viewWillAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:self])
  {
    passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [passcodeView noteFaceHasBeenOccluded];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:self])
  {
    passcodeView2 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [passcodeView2 noteBottomFaceHasBeenOccluded];
  }

  if (objc_opt_respondsToSelector())
  {
    passcodeEntryTransientOverlayViewControllerStatusText = [WeakRetained passcodeEntryTransientOverlayViewControllerStatusText];
  }

  else
  {
    passcodeEntryTransientOverlayViewControllerStatusText = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    passcodeEntryTransientOverlayViewControllerStatusSubtitleText = [WeakRetained passcodeEntryTransientOverlayViewControllerStatusSubtitleText];
  }

  else
  {
    passcodeEntryTransientOverlayViewControllerStatusSubtitleText = 0;
  }

  if (passcodeEntryTransientOverlayViewControllerStatusText | passcodeEntryTransientOverlayViewControllerStatusSubtitleText)
  {
    passcodeView3 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [passcodeView3 updateStatusText:passcodeEntryTransientOverlayViewControllerStatusText subtitle:passcodeEntryTransientOverlayViewControllerStatusSubtitleText animated:0];
  }

  passcodeView4 = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  [passcodeView4 becomeFirstResponder];
}

- (int)_preferredStatusBarVisibility
{
  if ([*MEMORY[0x277D76620] activeInterfaceOrientation] != 1)
  {
    return 0;
  }

  poseidonContainerViewController = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  coachingActive = [poseidonContainerViewController coachingActive];

  return coachingActive & 1;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = SBPasscodeEntryTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  supportsPoseidonCoaching = [passcodeView supportsPoseidonCoaching];

  if (supportsPoseidonCoaching && self->_keyboardVisible)
  {
    v10 = SBFWindowForViewControllerTransition();
    v11 = (([v10 _toWindowOrientation] - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0;
    poseidonContainerViewController = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
    [poseidonContainerViewController showCoaching:v11];
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

- (void)handleSuccessfulAuthenticationRequest:(id)request
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeRequester);
  [WeakRetained resetForSuccess];

  self->_attemptingUnlock = 0;

  objc_storeWeak(&self->_passcodeRequester, 0);
}

- (void)handleFailedAuthenticationRequest:(id)request error:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeRequester);
  [WeakRetained resetForFailedPasscode];

  self->_attemptingUnlock = 0;

  objc_storeWeak(&self->_passcodeRequester, 0);
}

- (void)handleWillShowKeyboard:(BOOL)keyboard
{
  if (self->_keyboardVisible != keyboard)
  {
    self->_keyboardVisible = keyboard;
  }

  if (keyboard)
  {
    interfaceOrientation = [(SBPasscodeEntryTransientOverlayViewController *)self interfaceOrientation];
    if (interfaceOrientation == 4 || interfaceOrientation == 2)
    {
      poseidonContainerViewController = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
      [poseidonContainerViewController showCoaching:0];
    }
  }
}

- (void)passcodeLockViewPasscodeDidChange:(id)change
{
  changeCopy = change;
  [(SBTransientOverlayViewController *)self setNeedsIdleTimerReset];
  passcode = [changeCopy passcode];

  v6 = [passcode length];
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

- (void)passcodeLockViewCancelButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryTransientOverlayViewControllerRequestsDismissal:self];
  }
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:self];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_pearlSettings == settings)
  {
    [(SBPasscodeEntryTransientOverlayViewController *)self _updatePrototypeSettings];
  }
}

- (void)setShowEmergencyCallButton:(BOOL)button
{
  if (self->_showEmergencyCallButton != button)
  {
    self->_showEmergencyCallButton = button;
    passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [passcodeView setShowsEmergencyCallButton:self->_showEmergencyCallButton];
  }
}

- (void)setUnlockDestination:(id)destination
{
  destinationCopy = destination;
  unlockDestination = self->_unlockDestination;
  if (unlockDestination != destinationCopy)
  {
    v10 = destinationCopy;
    v6 = [(NSString *)unlockDestination isEqualToString:destinationCopy];
    destinationCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_unlockDestination;
      self->_unlockDestination = v7;

      passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
      [passcodeView setUnlockDestination:self->_unlockDestination];

      destinationCopy = v10;
    }
  }
}

- (void)setUseBiometricPresentation:(BOOL)presentation
{
  if (self->_useBiometricPresentation != presentation)
  {
    self->_useBiometricPresentation = presentation;
    passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
    [passcodeView setUsesBiometricPresentation:self->_useBiometricPresentation];
  }
}

- (void)_attemptUnlock:(id)unlock passcode:(id)passcode
{
  unlockCopy = unlock;
  passcodeCopy = passcode;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [passcodeCopy length];
  [(SBFUserAuthenticationController *)self->_authenticationController addAsFirstResponder:self];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained passcodeEntryTransientOverlayViewController:self authenticatePasscode:passcodeCopy])
  {
    [(SBFUserAuthenticationController *)self->_authenticationController removeResponder:self];
  }

  else
  {
    [(SBFUserAuthenticationController *)self->_authenticationController removeResponder:self];
    v10 = objc_alloc(MEMORY[0x277D65DF0]);
    if (v9)
    {
      v11 = [v10 initForPasscode:passcodeCopy source:0];
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
    v13 = unlockCopy;
    v28 = v13;
    selfCopy = self;
    v14 = MEMORY[0x223D6F7F0](v27);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__SBPasscodeEntryTransientOverlayViewController__attemptUnlock_passcode___block_invoke_2;
    v24[3] = &unk_2783A92D8;
    v25 = v13;
    selfCopy2 = self;
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

- (void)_passcodeLockViewPasscodeEntered:(id)entered authenticationType:(unint64_t)type
{
  enteredCopy = entered;
  if (!self->_attemptingUnlock)
  {
    self->_attemptingUnlock = 1;
    v7 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__SBPasscodeEntryTransientOverlayViewController__passcodeLockViewPasscodeEntered_authenticationType___block_invoke;
    block[3] = &unk_2783AB2A8;
    typeCopy = type;
    v9 = enteredCopy;
    selfCopy = self;
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

  passcodeView = [(SBUIPasscodeViewWithLockScreenStyle *)self->_passcodeView passcodeView];
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  [passcodeView setProudLockConfiguration:v5];
}

- (SBPasscodeEntryTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end