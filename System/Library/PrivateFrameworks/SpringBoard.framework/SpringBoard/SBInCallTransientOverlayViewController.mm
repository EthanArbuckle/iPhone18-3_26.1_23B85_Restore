@interface SBInCallTransientOverlayViewController
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldDisableBanners;
- (BOOL)supportsAlwaysOnDisplay;
- (SBInCallTransientOverlayViewController)initWithSceneHandle:(id)handle shouldPreferContinuityDisplay:(BOOL)display;
- (SBInCallTransientOverlayViewControllerDelegate)delegate;
- (id)_inCallSceneClientSettingsDiffInspector;
- (id)associatedBundleIdentifiersToSuppressInSystemAperture;
- (id)associatedSceneIdentifiersToSuppressInSystemAperture;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)hostedSceneIdentityTokens;
- (id)keyboardFocusTarget;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)preferredBackgroundActivitiesToSuppress;
- (id)preferredDisplayLayoutElementIdentifier;
- (id)sceneDeactivationPredicate;
- (id)succinctDescriptionBuilder;
- (int)serviceProcessIdentifier;
- (int64_t)preferredLockedGestureDismissalStyle;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredUnlockedGestureDismissalStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_registerForAmbientPresentationTraitChange;
- (void)dealloc;
- (void)handleGestureDismissal;
- (void)invalidate;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setIdleTimerCoordinator:(id)coordinator;
- (void)setShouldIgnoreHomeIndicatorAutoHiddenClientSettings:(BOOL)settings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBInCallTransientOverlayViewController

- (SBInCallTransientOverlayViewController)initWithSceneHandle:(id)handle shouldPreferContinuityDisplay:(BOOL)display
{
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = SBInCallTransientOverlayViewController;
  v8 = [(SBTransientOverlayViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sceneHandle, handle);
    v9->_preferContinuityDisplay = display;
    [(SBDeviceApplicationSceneHandle *)v9->_sceneHandle addObserver:v9];
    statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)v9->_sceneHandle statusBarStateProvider];
    [statusBarStateProvider addStatusBarObserver:v9];

    v11 = +[SBInCallDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v11;

    v13 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v9];
    idleTimerCoordinatorHelper = v9->_idleTimerCoordinatorHelper;
    v9->_idleTimerCoordinatorHelper = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_setNeedsGestureDismissalStyleUpdate name:*MEMORY[0x277D6F018] object:0];
  }

  return v9;
}

- (void)dealloc
{
  if ([(SBInCallTransientOverlayViewController *)self isViewLoaded])
  {
    [(SBInCallTransientOverlayViewController *)self bs_removeChildViewController:self->_sceneViewController];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6F018] object:0];

  v4.receiver = self;
  v4.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 dealloc];
}

- (id)hostedSceneIdentityTokens
{
  v7[1] = *MEMORY[0x277D85DE8];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v3 = sceneIfExists;
  if (sceneIfExists)
  {
    identityToken = [sceneIfExists identityToken];
    v7[0] = identityToken;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)serviceProcessIdentifier
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientProcess = [sceneIfExists clientProcess];
  v4 = [clientProcess pid];

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  v3 = _SBStatusBarLegacyStyleFromStyle([statusBarStateProvider statusBarStyle]);

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  if ([statusBarStateProvider statusBarHidden])
  {
    v3 = 1;
  }

  else
  {
    [statusBarStateProvider statusBarAlpha];
    v3 = BSFloatLessThanOrEqualToFloat();
  }

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = objc_opt_class();
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v6 = SBSafeCast(v3, clientSettings);

  if (v6)
  {
    supportedInterfaceOrientations = [v6 supportedInterfaceOrientations];
    if (!supportedInterfaceOrientations)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        supportedInterfaceOrientations = 30;
      }

      else
      {
        supportedInterfaceOrientations = 1 << [v6 interfaceOrientation];
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBInCallTransientOverlayViewController;
    supportedInterfaceOrientations = [(SBTransientOverlayViewController *)&v11 supportedInterfaceOrientations];
  }

  return supportedInterfaceOrientations;
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v16 viewDidLayoutSubviews];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [view setFrame:{v5, v7, v9, v11}];

  containerOrientation = [(SBTransientOverlayViewController *)self containerOrientation];
  [(SBSceneViewController *)self->_sceneViewController setContentReferenceSize:containerOrientation withContentOrientation:containerOrientation andContainerOrientation:v9, v11];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  existingSceneBackgroundView = self->_existingSceneBackgroundView;
  [backgroundView bounds];
  [(SBApplicationSceneBackgroundView *)existingSceneBackgroundView setFrame:?];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v20 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  newSceneViewController = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle newSceneViewController];
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = newSceneViewController;

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setRendersWhileLocked:1];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setHomeGrabberDisplayMode:1];
  [(SBInCallTransientOverlayViewController *)self addChildViewController:self->_sceneViewController];
  [contentView bounds];
  v7 = v6;
  v9 = v8;
  containerOrientation = [(SBTransientOverlayViewController *)self containerOrientation];
  [(SBSceneViewController *)self->_sceneViewController setContentReferenceSize:containerOrientation withContentOrientation:containerOrientation andContainerOrientation:v7, v9];
  view = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [contentView addSubview:view];

  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  backgroundView2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController backgroundView];
  existingSceneBackgroundView = self->_existingSceneBackgroundView;
  self->_existingSceneBackgroundView = backgroundView2;

  v15 = [_SBInCallProxySceneBackgroundView alloc];
  [(SBApplicationSceneBackgroundView *)self->_existingSceneBackgroundView frame];
  v16 = [(_SBInCallProxySceneBackgroundView *)v15 initWithFrame:self->_existingSceneBackgroundView proxyTarget:?];
  proxySceneBackgroundView = self->_proxySceneBackgroundView;
  self->_proxySceneBackgroundView = v16;

  v18 = self->_proxySceneBackgroundView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(_SBInCallProxySceneBackgroundView *)v18 setBackgroundColor:clearColor];

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setBackgroundView:self->_proxySceneBackgroundView];
  [backgroundView addSubview:self->_existingSceneBackgroundView];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setDisplayMode:4 animationFactory:0 completion:0];
  [(SBInCallTransientOverlayViewController *)self _registerForAmbientPresentationTraitChange];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBInCallTransientOverlayViewController;
  [(SBInCallTransientOverlayViewController *)&v6 viewWillAppear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallTransientOverlayViewController:self willAppearAnimated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v8 viewDidAppear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallTransientOverlayViewController:self didAppearAnimated:appearCopy];

  view = [(SBInCallTransientOverlayViewController *)self view];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.025 alpha:1.0];
  [view setBackgroundColor:v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBInCallTransientOverlayViewController;
  [(SBInCallTransientOverlayViewController *)&v6 viewWillDisappear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallTransientOverlayViewController:self willDisappearAnimated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidDisappear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallTransientOverlayViewController:self didDisappearAnimated:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SBInCallTransientOverlayViewController;
  coordinatorCopy = coordinator;
  [(SBTransientOverlayViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__SBInCallTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A9488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __93__SBInCallTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75D18] _currentAnimationSettings];
  [v4 inCallTransientOverlayViewController:v2 viewWillTransitionSizeWithAnimationSettings:v3];
}

- (id)sceneDeactivationPredicate
{
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
  v3 = sceneIdentifier;
  if (sceneIdentifier)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__SBInCallTransientOverlayViewController_sceneDeactivationPredicate__block_invoke;
    v6[3] = &unk_2783ADD00;
    v7 = sceneIdentifier;
    v4 = MEMORY[0x223D6F7F0](v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __68__SBInCallTransientOverlayViewController_sceneDeactivationPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)handleGestureDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallTransientOverlayViewControllerRequestsDismissal:self];
}

- (int64_t)preferredLockedGestureDismissalStyle
{
  if ([(SBInCallTransientOverlayViewController *)self prefersHomeIndicatorAutoHidden])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (int64_t)preferredUnlockedGestureDismissalStyle
{
  if ([(SBInCallTransientOverlayViewController *)self prefersHomeIndicatorAutoHidden])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)setShouldIgnoreHomeIndicatorAutoHiddenClientSettings:(BOOL)settings
{
  if (self->_shouldIgnoreHomeIndicatorAutoHiddenClientSettings != settings)
  {
    self->_shouldIgnoreHomeIndicatorAutoHiddenClientSettings = settings;
    [(SBTransientOverlayViewController *)self setNeedsGestureDismissalStyleUpdate];
  }
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  [mEMORY[0x277D6EDF8] currentCalls];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEmergency])
        {

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (self->_shouldAlwaysPreventHomeGestureDismissal)
  {
    transientOverlayHomeIndicatorAutoHidden = 1;
  }

  else
  {
LABEL_12:
    if (self->_shouldIgnoreHomeIndicatorAutoHiddenClientSettings)
    {
      transientOverlayHomeIndicatorAutoHidden = 0;
    }

    else
    {
      sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
      clientSettings = [sceneIfExists clientSettings];
      transientOverlayHomeIndicatorAutoHidden = [clientSettings transientOverlayHomeIndicatorAutoHidden];
    }
  }

  return transientOverlayHomeIndicatorAutoHidden;
}

- (BOOL)handleHomeButtonPress
{
  preferredLockedGestureDismissalStyle = [(SBInCallTransientOverlayViewController *)self preferredLockedGestureDismissalStyle];
  WeakRetained = SBLogInCallPresentation();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (preferredLockedGestureDismissalStyle)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_DEFAULT, "SBInCallTransientOverlayViewController is consuming home button press to dismiss overlay", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained inCallTransientOverlayViewControllerRequestsDismissal:self];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_DEFAULT, "SBInCallTransientOverlayViewController is consuming home button press to prevent dismissal", buf, 2u);
  }

  return 1;
}

- (BOOL)handleVolumeUpButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes]& 2) != 0)
  {
    sceneHandle = self->_sceneHandle;

    return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBInCallTransientOverlayViewController;
    return [(SBTransientOverlayViewController *)&v5 handleVolumeUpButtonPress];
  }
}

- (BOOL)handleVolumeDownButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes]& 4) != 0)
  {
    sceneHandle = self->_sceneHandle;

    return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:2];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBInCallTransientOverlayViewController;
    return [(SBTransientOverlayViewController *)&v5 handleVolumeDownButtonPress];
  }
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  preferredHardwareButtonEventTypes = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes];
  if (!pressCopy)
  {
    if ((preferredHardwareButtonEventTypes & 8) != 0)
    {
      sceneHandle = self->_sceneHandle;
      v7 = 3;
      goto LABEL_7;
    }

LABEL_5:
    v9.receiver = self;
    v9.super_class = SBInCallTransientOverlayViewController;
    return [(SBTransientOverlayViewController *)&v9 handleHeadsetButtonPress:pressCopy];
  }

  if ((preferredHardwareButtonEventTypes & 0x10) == 0)
  {
    goto LABEL_5;
  }

  sceneHandle = self->_sceneHandle;
  v7 = 4;
LABEL_7:

  return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:v7];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isAnimated];
  v5 = [*(*(a1 + 32) + 1448) view];
  v6 = v5;
  if (v4)
  {
    v7 = [*(*(a1 + 32) + 1456) transientOverlayFadeOutSettings];
    v21 = 0;
    v22 = 0;
    [v7 dampingRatio];
    [v7 response];
    convertDampingRatioAndResponseToTensionAndFriction();
    v8 = MEMORY[0x277CF0D38];
    v9 = [MEMORY[0x277CF0CF0] settingsWithMass:1.0 stiffness:0.0 damping:0.0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v19[3] = &unk_2783A8C18;
    v10 = v3;
    v20 = v10;
    [v8 animateWithSettings:v9 actions:v19];

    v11 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v16[3] = &unk_2783A92D8;
    v12 = v6;
    v13 = *(a1 + 32);
    v17 = v12;
    v18 = v13;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4;
    v14[3] = &unk_2783AE4B8;
    v15 = v10;
    [v11 sb_animateWithSettings:v7 mode:3 animations:v16 completion:v14];
  }

  else
  {
    [v5 setAlpha:0.0];
    [*(*(a1 + 32) + 1416) setAlpha:0.0];
    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

uint64_t __91__SBInCallTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 1416);

  return [v2 setAlpha:0.0];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) loadViewIfNeeded];
  v4 = [v3 isAnimated];
  v5 = [*(*(a1 + 32) + 1448) view];
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v26[3] = &unk_2783A92D8;
    v8 = v5;
    v9 = *(a1 + 32);
    v27 = v8;
    v28 = v9;
    [v7 _performWithoutRetargetingAnimations:v26];
    v10 = [*(*(a1 + 32) + 1456) transientOverlayFadeInSettings];
    v11 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v23[3] = &unk_2783A92D8;
    v12 = v8;
    v13 = *(a1 + 32);
    v24 = v12;
    v25 = v13;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v21[3] = &unk_2783AE4B8;
    v14 = v3;
    v22 = v14;
    [v11 sb_animateWithSettings:v10 mode:3 animations:v23 completion:v21];
    v19 = 0;
    v20 = 0;
    [v10 dampingRatio];
    [v10 response];
    convertDampingRatioAndResponseToTensionAndFriction();
    v15 = MEMORY[0x277CF0D38];
    v16 = [MEMORY[0x277CF0CF0] settingsWithMass:1.0 stiffness:0.0 damping:0.0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5;
    v17[3] = &unk_2783A8C18;
    v18 = v14;
    [v15 animateWithSettings:v16 actions:v17];
  }

  else
  {
    [v5 setAlpha:1.0];
    [*(*(a1 + 32) + 1416) setAlpha:1.0];
    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

uint64_t __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 1416);

  return [v2 setAlpha:0.0];
}

uint64_t __94__SBInCallTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 1416);

  return [v2 setAlpha:1.0];
}

- (id)preferredDisplayLayoutElementIdentifier
{
  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

- (id)preferredBackgroundActivitiesToSuppress
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (void)setContainerOrientation:(int64_t)orientation
{
  containerOrientation = [(SBTransientOverlayViewController *)self containerOrientation];
  v10.receiver = self;
  v10.super_class = SBInCallTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v10 setContainerOrientation:orientation];
  if (containerOrientation != [(SBTransientOverlayViewController *)self containerOrientation])
  {
    sceneViewController = self->_sceneViewController;
    contentView = [(SBTransientOverlayViewController *)self contentView];
    [contentView bounds];
    [(SBSceneViewController *)sceneViewController setContentReferenceSize:orientation withContentOrientation:orientation andContainerOrientation:v8, v9];
  }
}

- (void)setIdleTimerCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SBInCallTransientOverlayViewController;
  coordinatorCopy = coordinator;
  [(SBTransientOverlayViewController *)&v5 setIdleTimerCoordinator:coordinatorCopy];
  [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper setTargetCoordinator:coordinatorCopy, v5.receiver, v5.super_class];
}

- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string
{
  sceneHandle = self->_sceneHandle;
  stringCopy = string;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)sceneHandle sceneIfExists];
  identityToken = [sceneIfExists identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  v8 = [stringRepresentation isEqualToString:stringCopy];

  return v8;
}

- (id)keyboardFocusTarget
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v3 = [SBKeyboardFocusTarget targetForFBScene:sceneIfExists];

  return v3;
}

- (BOOL)shouldDisableBanners
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained inCallTransientOverlayViewControllerShouldPreventBannerPresentations:selfCopy];

  return selfCopy;
}

- (BOOL)supportsAlwaysOnDisplay
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained inCallTransientOverlayViewControllerShouldSupportAlwaysOnDisplay:selfCopy];

  return selfCopy;
}

- (id)associatedBundleIdentifiersToSuppressInSystemAperture
{
  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)associatedSceneIdentifiersToSuppressInSystemAperture
{
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
  if (sceneIdentifier)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObject:sceneIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = SBInCallTransientOverlayViewController;
  succinctDescriptionBuilder = [(SBTransientOverlayViewController *)&v6 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendObject:self->_sceneViewController withName:@"sceneViewController" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (void)invalidate
{
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController invalidate];
  [(_SBInCallProxySceneBackgroundView *)self->_proxySceneBackgroundView setProxyTarget:0];
  [(SBSUIInCallSceneClientSettingsDiffInspector *)self->_inCallSceneClientSettingsDiffInspector removeAllObservers];
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  [statusBarStateProvider removeStatusBarObserver:self];

  sceneHandle = self->_sceneHandle;

  [(SBDeviceApplicationSceneHandle *)sceneHandle removeObserver:self];
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  v4 = objc_opt_class();
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v7 = SBSafeCast(v4, clientSettings);

  if ([v7 idleTimerDisabled])
  {
    v8 = +[SBIdleTimerBehavior disabledBehavior];
  }

  else
  {
    v9 = objc_opt_class();
    sceneIfExists2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    settings = [sceneIfExists2 settings];
    v12 = SBSafeCast(v9, settings);

    if ([v7 prefersLockedIdleDurationOnCoversheet])
    {
      if ([v12 isBeingShownAboveCoverSheet])
      {
        v13 = 1;
      }

      else
      {
        v13 = 16;
      }
    }

    else
    {
      v13 = 16;
    }

    v8 = [SBIdleTimerBehavior behaviorWithDuration:v13 mode:1 warnMode:2];
  }

  return v8;
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  _inCallSceneClientSettingsDiffInspector = [(SBInCallTransientOverlayViewController *)self _inCallSceneClientSettingsDiffInspector];
  [_inCallSceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:0];
}

- (id)_inCallSceneClientSettingsDiffInspector
{
  inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  if (!inCallSceneClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D67BB0]);
    v5 = self->_inCallSceneClientSettingsDiffInspector;
    self->_inCallSceneClientSettingsDiffInspector = v4;

    objc_initWeak(&location, self);
    v6 = self->_inCallSceneClientSettingsDiffInspector;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SBInCallTransientOverlayViewController__inCallSceneClientSettingsDiffInspector__block_invoke;
    v11[3] = &unk_2783AC8A0;
    objc_copyWeak(&v12, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v6 observeTransientOverlayHomeIndicatorAutoHiddenWithBlock:v11];
    v7 = self->_inCallSceneClientSettingsDiffInspector;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__SBInCallTransientOverlayViewController__inCallSceneClientSettingsDiffInspector__block_invoke_2;
    v9[3] = &unk_2783AC8A0;
    objc_copyWeak(&v10, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v7 observePrefersLockedIdleDurationOnCoversheet:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  }

  return inCallSceneClientSettingsDiffInspector;
}

void __81__SBInCallTransientOverlayViewController__inCallSceneClientSettingsDiffInspector__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsGestureDismissalStyleUpdate];
}

void __81__SBInCallTransientOverlayViewController__inCallSceneClientSettingsDiffInspector__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsIdleTimerReset];
}

- (void)_registerForAmbientPresentationTraitChange
{
  v15[2] = *MEMORY[0x277D85DE8];
  delegate = [(SBInCallTransientOverlayViewController *)self delegate];
  objc_initWeak(&location, delegate);

  v4 = objc_loadWeakRetained(&location);
  traitCollection = [(SBInCallTransientOverlayViewController *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];
  traitCollection2 = [(SBInCallTransientOverlayViewController *)self traitCollection];
  [v4 inCallTransientOverlayViewControllerDidUpdateAmbientPresentationIsAmbientPresented:isAmbientPresented ambientDisplayStyle:{objc_msgSend(traitCollection2, "ambientDisplayStyle")}];

  v8 = objc_opt_self();
  v15[0] = v8;
  v9 = objc_opt_self();
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SBInCallTransientOverlayViewController__registerForAmbientPresentationTraitChange__block_invoke;
  v12[3] = &unk_2783B5968;
  objc_copyWeak(&v13, &location);
  v11 = [(SBInCallTransientOverlayViewController *)self registerForTraitChanges:v10 withHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __84__SBInCallTransientOverlayViewController__registerForAmbientPresentationTraitChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 traitCollection];
  v7 = [v6 isAmbientPresented];

  LODWORD(v6) = [v11 isAmbientPresented];
  v8 = [v5 traitCollection];

  v9 = [v8 ambientDisplayStyle];
  if (v7 != v6 || v9 != [v11 ambientDisplayStyle])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained inCallTransientOverlayViewControllerDidUpdateAmbientPresentationIsAmbientPresented:v7 ambientDisplayStyle:v9];
  }
}

- (SBInCallTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end