@interface SBDashBoardHostedAppViewController
- (BOOL)_shouldDelayDeactivationUntilAfterDisappearance;
- (BOOL)_shouldInvalidateUponDeactivation;
- (BOOL)appViewControllerIsInNonRotatingWindow:(id)a3;
- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)a3;
- (BOOL)appViewControllerShouldHideHomeGrabberView:(id)a3;
- (BOOL)appViewControllerShouldReactivateApplicationOnDestruction:(id)a3;
- (BOOL)handleEvent:(id)a3;
- (CSAppHostContextProviding)hostContextProvider;
- (SBDashBoardHostedAppViewController)initWithApplicationSceneEntity:(id)a3;
- (SBDashBoardHostedAppViewControllerDelegate)delegate;
- (id)_deviceApplicationSceneHandle;
- (id)_newDisplayLayoutElement;
- (id)appearanceIdentifier;
- (id)statusBarDescribers;
- (int64_t)containerInterfaceOrientation;
- (void)_addStatusBarViewIfNeeded;
- (void)_beginShowingStatusBarView;
- (void)_deactivateIfAppropriateForReason:(id)a3;
- (void)_setMode:(int64_t)a3 fromClient:(BOOL)a4 forReason:(id)a5;
- (void)_setResignActiveAssertionEnabled:(BOOL)a3;
- (void)_updateDisplayLayoutElementForActivation:(id)a3;
- (void)_updateStatusBarContainerOrientation;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)appViewController:(id)a3 didTransitionFromMode:(int64_t)a4 toMode:(int64_t)a5;
- (void)appViewControllerDidDeactivateApplication:(id)a3;
- (void)appViewControllerDidFailToActivateApplication:(id)a3;
- (void)appViewControllerWillActivateApplication:(id)a3;
- (void)applicationSceneHandle:(id)a3 appendToSceneSettings:(id)a4 fromRequestContext:(id)a5 entity:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeSceneInterfaceOrientationTo:(int64_t)a4;
- (void)setInterfaceOrientationLocked:(BOOL)a3;
- (void)setOverrideIdleWarnMode:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SBDashBoardHostedAppViewController

- (CSAppHostContextProviding)hostContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_hostContextProvider);

  return WeakRetained;
}

- (id)statusBarDescribers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_statusBarObserverProxy;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (SBDashBoardHostedAppViewController)initWithApplicationSceneEntity:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  NSClassFromString(&cfstr_Sbapplications_8.isa);
  if (!v5)
  {
    [SBDashBoardHostedAppViewController initWithApplicationSceneEntity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBDashBoardHostedAppViewController initWithApplicationSceneEntity:a2];
  }

  v28.receiver = self;
  v28.super_class = SBDashBoardHostedAppViewController;
  v6 = [(SBDashBoardHostedAppViewController *)&v28 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CF0C00] builderWithObject:v6];
    v8 = SBLogDashBoardHostedAppViewController();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __69__SBDashBoardHostedAppViewController_initWithApplicationSceneEntity___block_invoke;
      v25 = &unk_2783A92D8;
      v26 = v7;
      v27 = v5;
      v10 = [v26 modifyProem:&v22];
    }

    v11 = [v5 sceneHandle];
    [v11 addSceneUpdateContributer:v6];

    v12 = [v7 build];
    cachedBasicPublicDescription = v6->_cachedBasicPublicDescription;
    v6->_cachedBasicPublicDescription = v12;

    v14 = [SBAppViewController alloc];
    v15 = [(SBDashBoardHostedAppViewController *)v6 appearanceIdentifier];
    v16 = [(SBAppViewController *)v14 initWithIdentifier:v15 andApplicationSceneEntity:v5];
    appViewController = v6->_appViewController;
    v6->_appViewController = v16;

    [(SBAppViewController *)v6->_appViewController setAutomatesLifecycle:0];
    [(SBAppViewController *)v6->_appViewController setIgnoresOcclusions:1];
    [(SBAppViewController *)v6->_appViewController setDelegate:v6];
    [(SBAppViewController *)v6->_appViewController setApplicationSceneStatusBarDelegate:v6];
    v18 = [(SBDashBoardHostedAppViewController *)v6 applicationSceneHandle];
    [v18 addObserver:v6];

    v6->_providesIdleTimerDuration = 1;
    v19 = SBLogDashBoardHostedAppViewController();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v6->_cachedBasicPublicDescription;
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "<%{public}@> created", buf, 0xCu);
    }
  }

  return v6;
}

void __69__SBDashBoardHostedAppViewController_initWithApplicationSceneEntity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) application];
  v2 = [v3 bundleIdentifier];
  [v1 appendString:v2 withName:@"bundleIdentifier"];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v8 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "<%{public}@> dealloc", buf, 0xCu);
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector removeAllObservers];
  v5 = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
  [v5 removeObserver:self];

  [(SBDashBoardHostedAppViewController *)self invalidate];
  v6.receiver = self;
  v6.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v6 dealloc];
}

- (void)setInterfaceOrientationLocked:(BOOL)a3
{
  v3 = a3;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp") & 1) == 0 && (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheetCamera") & 1) == 0 && self->_interfaceOrientationLocked != v3)
  {
    self->_interfaceOrientationLocked = v3;
    if ([(SBDashBoardHostedAppViewController *)self _appearState]== 2)
    {
      if (self->_interfaceOrientationLocked)
      {
        v5 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBDashBoardHostedApp"];
        deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
        self->_deferOrientationUpdatesAssertion = v5;
      }

      else
      {
        [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
        deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
        self->_deferOrientationUpdatesAssertion = 0;
      }
    }
  }
}

- (void)setOverrideIdleWarnMode:(int64_t)a3
{
  if (self->_overrideIdleWarnMode != a3)
  {
    self->_overrideIdleWarnMode = a3;
    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v12 = [MEMORY[0x277D0AAD8] sharedInstance];
    v3 = +[SBSceneManagerCoordinator secureMainDisplaySceneManager];
    v4 = [(SBDashBoardHostedAppViewController *)self appView];
    v5 = [v4 application];
    v6 = [v3 sceneIdentityForApplication:v5];
    v7 = [v6 identifier];

    [(SBFAuthenticationAssertion *)self->_authenticationAssertion invalidate];
    [(SBAppViewController *)self->_appViewController invalidate];
    [(SBDashBoardHostedAppViewController *)self _setResignActiveAssertionEnabled:0];
    self->_invalidated = 1;
    v8 = [v12 sceneWithIdentifier:v7];
    v9 = v8;
    if (v8)
    {
      [v8 invalidate:0];
    }

    v10 = [(SBDashBoardHostedAppViewController *)self invalidationHandler];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
  appViewController = self->_appViewController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SBDashBoardHostedAppViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_2783AA930;
  v4[4] = self;
  [(SBDashBoardHostedAppViewController *)self bs_addChildViewController:appViewController animated:0 transitionBlock:v4];
  [(SBDashBoardHostedAppViewController *)self _addStatusBarViewIfNeeded];
}

void __49__SBDashBoardHostedAppViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1088);
  v4 = a2;
  v6 = [v3 view];
  v5 = [*(a1 + 32) viewIfLoaded];
  [v5 bounds];
  [v6 setFrame:?];

  [v6 setAutoresizingMask:18];
  v4[2](v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v12 viewWillAppear:a3];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v14 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> viewWillAppear", buf, 0xCu);
  }

  if (!self->_authenticationAssertion)
  {
    v6 = [SBApp authenticationController];
    v7 = [(SBDashBoardHostedAppViewController *)self appearanceIdentifier];
    v8 = [v6 createKeybagUnlockAssertionWithReason:v7];
    authenticationAssertion = self->_authenticationAssertion;
    self->_authenticationAssertion = v8;

    [(SBFAuthenticationAssertion *)self->_authenticationAssertion activate];
  }

  if (self->_interfaceOrientationLocked)
  {
    v10 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBDashBoardHostedApp"];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = v10;
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = SBDashBoardHostedAppViewController;
  [(SBDashBoardHostedAppViewController *)&v6 viewIsAppearing:a3];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v8 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> viewIsAppearing", buf, 0xCu);
  }

  [(SBDashBoardHostedAppViewController *)self _setMode:2 fromClient:0 forReason:@"viewIsAppearing"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetExternalViewControllerBase *)&v14 viewDidAppear:a3];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v16 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> viewDidAppear", buf, 0xCu);
  }

  v6 = [(SBDashBoardHostedAppViewController *)self hostedAppSceneHandle];
  v7 = [v6 sceneIfExists];

  if (v7)
  {
    v8 = [v7 uiClientSettings];
    v9 = [v8 idleTimerDisabled];

    if (self->_wantsIdleTimerDisabled != v9)
    {
      self->_wantsIdleTimerDisabled = v9;
      [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
    }
  }

  [(SBDashBoardHostedAppViewController *)self _setMode:2 fromClient:0 forReason:@"viewDidAppear"];
  v10 = +[SBKeyboardFocusCoordinator sharedInstance];
  v11 = [(SBDashBoardHostedAppViewController *)self _appViewController];
  v12 = [v11 _sbWindowScene];
  v13 = +[SBKeyboardFocusArbitrationReason dsahBoardAppViewControllerDidAppear];
  [v10 requestArbitrationForSBWindowScene:v12 forReason:v13];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetExternalViewControllerBase *)&v6 viewWillDisappear:a3];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v8 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> viewWillDisappear", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v14 viewDidDisappear:a3];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    *buf = 138543362;
    v16 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> viewDidDisappear", buf, 0xCu);
  }

  if (self->_interfaceOrientationLocked)
  {
    [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = 0;
  }

  v7 = [(SBDashBoardHostedAppViewController *)self _shouldDelayDeactivationUntilAfterDisappearance];
  self->_waitingToDeactivateAfterDisappearance = v7;
  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__SBDashBoardHostedAppViewController_viewDidDisappear___block_invoke;
    v13[3] = &unk_2783A8C18;
    v13[4] = self;
    [MEMORY[0x277CD9FF0] bs_performAfterSynchronizedCommit:v13];
  }

  else
  {
    [(SBDashBoardHostedAppViewController *)self _deactivateIfAppropriateForReason:@"viewDidDisappear"];
  }

  [(SBFAuthenticationAssertion *)self->_authenticationAssertion invalidate];
  authenticationAssertion = self->_authenticationAssertion;
  self->_authenticationAssertion = 0;

  v9 = +[SBKeyboardFocusCoordinator sharedInstance];
  v10 = [(SBDashBoardHostedAppViewController *)self _appViewController];
  v11 = [v10 _sbWindowScene];
  v12 = +[SBKeyboardFocusArbitrationReason dsahBoardAppViewControllerDidDisappear];
  [v9 requestArbitrationForSBWindowScene:v11 forReason:v12];
}

void __55__SBDashBoardHostedAppViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SBDashBoardHostedAppViewController_viewDidDisappear___block_invoke_2;
  v2[3] = &unk_2783A8C18;
  v2[4] = *(a1 + 32);
  v1 = MEMORY[0x223D6F7F0](v2);
  v1[2]();
}

uint64_t __55__SBDashBoardHostedAppViewController_viewDidDisappear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 _isInAWindow];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _setResignActiveAssertionEnabled:0];
  }

  *(*(a1 + 32) + 1130) = 0;
  v4 = *(a1 + 32);

  return [v4 _deactivateIfAppropriateForReason:@"after viewDidDisappear"];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = SBDashBoardHostedAppViewController;
  [(SBDashBoardHostedAppViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (!a3)
  {
    [(SBDashBoardHostedAppViewController *)self _setResignActiveAssertionEnabled:0];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDashBoardHostedAppViewController;
  [(SBDashBoardHostedAppViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(SBDashBoardHostedAppViewController *)self _setResignActiveAssertionEnabled:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBDashBoardHostedAppViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 _roleHint];
  v11 = SBTraitsArbiterOrientationActuationEnabledForRole(v10);

  if ((v11 & 1) == 0)
  {
    v12 = [(SBDashBoardHostedAppViewController *)self hostedAppSceneHandle];
    v13 = [v12 wantsDeviceOrientationEventsEnabled];

    if (v13)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __89__SBDashBoardHostedAppViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v14[3] = &unk_2783A9488;
      v14[4] = self;
      [v7 animateAlongsideTransition:v14 completion:0];
    }
  }
}

- (void)aggregateAppearance:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBDashBoardHostedAppViewController;
  v3 = a3;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateAppearance:v3];
  v4 = objc_opt_new();
  v5 = [v4 priority:{10, v7.receiver, v7.super_class}];
  v6 = [v5 fakeStatusBar:1];
  [v3 addComponent:v6];
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBDashBoardHostedAppViewController;
  [(CSCoverSheetViewControllerBase *)&v13 aggregateBehavior:v4];
  v5 = +[SBSecureAppManager sharedInstance];
  v6 = [v5 secureAppAction];
  v7 = [v6 isInProcessAction];

  if ((v7 & 1) != 0 || (+[SBThermalController sharedInstance](SBThermalController, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 level], v8, (v9 & 0xFFFFFFFFFFFFFFFELL) != 2))
  {
    if (self->_wantsIdleTimerDisabled)
    {
      v12 = 1;
      v10 = 18;
      v11 = 3;
    }

    else
    {
      if (!self->_providesIdleTimerDuration)
      {
        goto LABEL_9;
      }

      v12 = 2;
      v10 = 16;
      v11 = 1;
    }
  }

  else
  {
    v10 = 12;
    v11 = 1;
    v12 = 1;
  }

  [v4 setIdleTimerMode:v11];
  [v4 setIdleTimerDuration:v10];
  [v4 setIdleWarnMode:v12];
LABEL_9:
  if (self->_overrideIdleWarnMode)
  {
    [v4 setIdleWarnMode:?];
  }

  [v4 setNotificationBehavior:2];
}

- (id)_newDisplayLayoutElement
{
  v2 = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
  v3 = [v2 application];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v4];
    [v5 setFillsDisplayBounds:1];
    [v5 setLayoutRole:6];
    [v5 setUIApplicationElement:1];
    [v5 setBundleIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDisplayLayoutElementForActivation:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDashBoardHostedAppViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 _updateDisplayLayoutElementForActivation:v4];
  [v4 sb_setTransitioning:{(-[SBDashBoardHostedAppViewController _appearState](self, "_appearState", v5.receiver, v5.super_class) & 0xFFFFFFFD) == 1}];
}

- (id)appearanceIdentifier
{
  v6.receiver = self;
  v6.super_class = SBDashBoardHostedAppViewController;
  v3 = [(CSCoverSheetViewControllerBase *)&v6 appearanceIdentifier];
  cachedBasicPublicDescription = self->_cachedBasicPublicDescription;

  return cachedBasicPublicDescription;
}

- (BOOL)handleEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBDashBoardHostedAppViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v16, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 11)
    {
      if ([(CSCoverSheetExternalViewControllerBase *)self isExternalToDashBoard])
      {
LABEL_21:
        v5 = 0;
        goto LABEL_22;
      }

      v13 = SBLogDashBoardHostedAppViewController();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
        *buf = 138543362;
        v18 = cachedBasicPublicDescription;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "<%{public}@> didBecomeActive", buf, 0xCu);
      }

      v11 = self;
      v12 = 0;
    }

    else
    {
      if (v6 != 10)
      {
        if (v6 == 9 && ![(CSCoverSheetExternalViewControllerBase *)self isExternalToDashBoard])
        {
          v7 = SBLogDashBoardHostedAppViewController();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v8 = self->_cachedBasicPublicDescription;
            *buf = 138543362;
            v18 = v8;
            _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "<%{public}@> didDeactivate", buf, 0xCu);
          }

          [(SBDashBoardHostedAppViewController *)self _setResignActiveAssertionEnabled:0];
          [(SBDashBoardHostedAppViewController *)self _setMode:0 fromClient:0 forReason:@"DashBoard deactivated"];
        }

        goto LABEL_21;
      }

      if ([(CSCoverSheetExternalViewControllerBase *)self isExternalToDashBoard])
      {
        goto LABEL_21;
      }

      v9 = SBLogDashBoardHostedAppViewController();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = self->_cachedBasicPublicDescription;
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "<%{public}@> didResignActive", buf, 0xCu);
      }

      if ([(CSCoverSheetViewControllerBase *)self isDisappeared])
      {
        goto LABEL_21;
      }

      v11 = self;
      v12 = 1;
    }

    [(SBDashBoardHostedAppViewController *)v11 _setResignActiveAssertionEnabled:v12];
    goto LABEL_21;
  }

  v5 = [v4 isConsumable];
LABEL_22:

  return v5;
}

- (void)appViewControllerWillActivateApplication:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    v12 = 138543362;
    v13 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> willActivateApplication", &v12, 0xCu);
  }

  if (!self->_authenticationAssertion)
  {
    v6 = SBLogDashBoardHostedAppViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_cachedBasicPublicDescription;
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "<%{public}@> taking authentication sustain assertion", &v12, 0xCu);
    }

    v8 = [SBApp authenticationController];
    v9 = [(SBDashBoardHostedAppViewController *)self appearanceIdentifier];
    v10 = [v8 createKeybagUnlockAssertionWithReason:v9];
    authenticationAssertion = self->_authenticationAssertion;
    self->_authenticationAssertion = v10;

    [(SBFAuthenticationAssertion *)self->_authenticationAssertion activate];
  }

  self->_intentToTransitionFromSecureAppToFull = 0;
  [(SBDashBoardHostedAppViewController *)self _beginShowingStatusBarView];
}

- (void)appViewControllerDidDeactivateApplication:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    v9 = 138543362;
    v10 = cachedBasicPublicDescription;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "<%{public}@> didDeactivateApplication", &v9, 0xCu);
  }

  if (self->_authenticationAssertion)
  {
    v6 = SBLogDashBoardHostedAppViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_cachedBasicPublicDescription;
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "<%{public}@> releasing authentication sustain assertion", &v9, 0xCu);
    }

    [(SBFAuthenticationAssertion *)self->_authenticationAssertion invalidate];
    authenticationAssertion = self->_authenticationAssertion;
    self->_authenticationAssertion = 0;
  }

  [(SBDashBoardHostedAppViewController *)self _endShowingStatusBarView];
}

- (void)appViewController:(id)a3 didTransitionFromMode:(int64_t)a4 toMode:(int64_t)a5
{
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior:a3];

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SBWorkspace mainWorkspace];
  v6 = [v5 createRequestWithOptions:0];

  [v6 finalize];
  v7 = [v6 applicationContext];
  v8 = [v7 applicationSceneEntities];

  v9 = [v4 sceneHandle];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) sceneHandle];
        v16 = SBDashBoardSceneHandleEqualToSceneHandle(v9, v15);

        if (v16)
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  if ([v9 isSecure])
  {
    v17 &= !self->_intentToTransitionFromSecureAppToFull;
  }

  return v17;
}

- (BOOL)appViewControllerShouldReactivateApplicationOnDestruction:(id)a3
{
  v3 = [(SBDashBoardHostedAppViewController *)self hostContextProvider];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 hostedAppShouldReactivateUponDestruction];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)appViewControllerShouldHideHomeGrabberView:(id)a3
{
  v3 = [(SBDashBoardHostedAppViewController *)self hostContextProvider];
  v4 = [v3 hostedAppShouldHideHomeGrabberView];

  return v4;
}

- (BOOL)appViewControllerIsInNonRotatingWindow:(id)a3
{
  if (__sb__runningInSpringBoard())
  {
    v3 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v4 userInterfaceIdiom] == 1;
  }

  return !v3;
}

- (void)appViewControllerDidFailToActivateApplication:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dashBoardHostedAppViewControllerDidFailToActivateApplication:self];
  }
}

- (void)applicationSceneHandle:(id)a3 appendToSceneSettings:(id)a4 fromRequestContext:(id)a5 entity:(id)a6
{
  v8 = a4;
  v7 = [(SBDashBoardHostedAppViewController *)self hostContextProvider];
  if (objc_opt_respondsToSelector())
  {
    [v7 appendToHostedAppSceneSettings:v8];
  }
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];
  if (v8)
  {
    appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
    if (!appClientSettingsDiffInspector)
    {
      v11 = objc_alloc_init(MEMORY[0x277D75160]);
      v12 = self->_appClientSettingsDiffInspector;
      self->_appClientSettingsDiffInspector = v11;

      objc_initWeak(&location, self);
      v13 = self->_appClientSettingsDiffInspector;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __74__SBDashBoardHostedAppViewController_sceneHandle_didUpdateClientSettings___block_invoke;
      v17 = &unk_2783AC8A0;
      objc_copyWeak(&v18, &location);
      [(UIApplicationSceneClientSettingsDiffInspector *)v13 observeIdleTimerDisabledWithBlock:&v14];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
    }

    [v8 evaluateWithInspector:appClientSettingsDiffInspector context:{v9, v14, v15, v16, v17}];
  }
}

void __74__SBDashBoardHostedAppViewController_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained applicationSceneHandle];
    v3 = [v2 scene];
    v4 = [v3 uiClientSettings];
    v5[1129] = [v4 idleTimerDisabled];

    [v5 rebuildBehavior];
    WeakRetained = v5;
  }
}

- (void)_setMode:(int64_t)a3 fromClient:(BOOL)a4 forReason:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if ([(SBDashBoardHostedAppViewController *)self mode]== a3)
  {
    goto LABEL_15;
  }

  v9 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
    v11 = NSStringFromSBAppViewControllerMode(a3);
    v12 = NSStringFromBOOL();
    v20 = 138544130;
    v21 = cachedBasicPublicDescription;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "<%{public}@> mode change request to %{public}@ (fromClient: %{public}@) for reason: %@", &v20, 0x2Au);
  }

  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v14 = [WeakRetained dashBoardHostedAppViewController:self shouldTransitionToMode:a3];

      if ((v14 & 1) == 0)
      {
        v15 = SBLogDashBoardHostedAppViewController();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = self->_cachedBasicPublicDescription;
          v20 = 138543362;
          v21 = v16;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "<%{public}@> mode change request vetoed by delegate", &v20, 0xCu);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v17 = SBLogDashBoardHostedAppViewController();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = self->_cachedBasicPublicDescription;
    v19 = NSStringFromSBAppViewControllerMode(a3);
    v20 = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "<%{public}@> mode changed to %{public}@", &v20, 0x16u);
  }

  [(SBAppViewController *)self->_appViewController setRequestedMode:a3];
  if (a3 == 2)
  {
    [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:1 immediately:1];
  }

LABEL_15:
}

- (void)_setResignActiveAssertionEnabled:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  resignActiveAssertion = self->_resignActiveAssertion;
  if (a3)
  {
    if (!resignActiveAssertion)
    {
      v5 = SBLogDashBoardHostedAppViewController();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        cachedBasicPublicDescription = self->_cachedBasicPublicDescription;
        *buf = 138543362;
        v18 = cachedBasicPublicDescription;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@> taking resign active assertion", buf, 0xCu);
      }

      v7 = +[SBSceneManagerCoordinator sharedInstance];
      v8 = [v7 sceneDeactivationManager];
      v9 = [v8 newAssertionWithReason:7];
      v10 = self->_resignActiveAssertion;
      self->_resignActiveAssertion = v9;

      objc_initWeak(buf, self);
      v11 = self->_resignActiveAssertion;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__SBDashBoardHostedAppViewController__setResignActiveAssertionEnabled___block_invoke;
      v15[3] = &unk_2783B52B8;
      objc_copyWeak(&v16, buf);
      [(UIApplicationSceneDeactivationAssertion *)v11 acquireWithPredicate:v15 transitionContext:0];
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }

  else if (resignActiveAssertion)
  {
    v12 = SBLogDashBoardHostedAppViewController();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_cachedBasicPublicDescription;
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "<%{public}@> releasing resign active assertion", buf, 0xCu);
    }

    [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
    v14 = self->_resignActiveAssertion;
    self->_resignActiveAssertion = 0;

    [(SBDashBoardHostedAppViewController *)self _deactivateIfAppropriateForReason:@"resign active released"];
  }
}

uint64_t __71__SBDashBoardHostedAppViewController__setResignActiveAssertionEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained applicationSceneHandle];
  v6 = [v5 sceneIdentifier];
  v7 = [v3 identifier];

  v8 = [v6 isEqualToString:v7];
  return v8;
}

- (void)_deactivateIfAppropriateForReason:(id)a3
{
  v4 = a3;
  if ([(CSCoverSheetViewControllerBase *)self isDisappeared]&& !self->_resignActiveAssertion && !self->_waitingToDeactivateAfterDisappearance)
  {
    if ([(SBDashBoardHostedAppViewController *)self mode])
    {
      [(SBDashBoardHostedAppViewController *)self _setMode:1 fromClient:0 forReason:v4];
    }

    if ([(SBDashBoardHostedAppViewController *)self _shouldInvalidateUponDeactivation]&& [(SBDashBoardHostedAppViewController *)self mode]!= 2)
    {
      [(SBDashBoardHostedAppViewController *)self invalidate];
    }
  }
}

- (BOOL)_shouldDelayDeactivationUntilAfterDisappearance
{
  v2 = [(SBDashBoardHostedAppViewController *)self hostContextProvider];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 hostedAppShouldDeactivateAfterDisappearance];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldInvalidateUponDeactivation
{
  v2 = [(SBDashBoardHostedAppViewController *)self hostContextProvider];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 hostedAppShouldInvalidateUponDeactivation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)sceneWithIdentifier:(id)a3 didChangeSceneInterfaceOrientationTo:(int64_t)a4
{
  v5 = [(SBDashBoardHostedAppViewController *)self view:a3];
  v6 = [v5 window];
  v7 = [v6 _roleHint];
  v8 = SBTraitsArbiterOrientationActuationEnabledForRole(v7);

  if ((v8 & 1) == 0)
  {
    v9 = self->_statusBarObserverProxy;
    if (v9)
    {
      v13 = v9;
      v10 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)v9 statusBarOrientation];
      v9 = v13;
      if (v10)
      {
        v11 = [(SBDashBoardHostedAppViewController *)self _deviceApplicationSceneHandle];
        v12 = [v11 wantsDeviceOrientationEventsEnabled];

        v9 = v13;
        if (v12)
        {
          [(SBDashBoardHostedAppViewController *)self _updateStatusBarContainerOrientation];
          [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView layoutStatusBarForSpringBoardRotationToOrientation:v10];
          v9 = v13;
        }
      }
    }
  }
}

- (id)_deviceApplicationSceneHandle
{
  v3 = objc_opt_class();
  v4 = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
  v5 = SBSafeCast(v3, v4);

  return v5;
}

- (int64_t)containerInterfaceOrientation
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 lockScreenEnvironment];
  v5 = [v4 rootViewController];
  if ([v5 shouldAutorotate])
  {
    v6 = [(SBDashBoardHostedAppViewController *)self statusBarOrientation];
  }

  else
  {
    v6 = [SBApp activeInterfaceOrientation];
  }

  v7 = v6;

  return v7;
}

- (void)_addStatusBarViewIfNeeded
{
  v3 = [(SBDashBoardHostedAppViewController *)self _deviceApplicationSceneHandle];
  if (self->_statusBarView)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v26 = v3;
    v5 = [(SBDashBoardHostedAppViewController *)self view];
    v6 = [SBMainDisplaySceneLayoutStatusBarView alloc];
    [v5 bounds];
    v7 = [(SBMainDisplaySceneLayoutStatusBarView *)v6 initWithFrame:?];
    statusBarView = self->_statusBarView;
    self->_statusBarView = v7;

    v9 = self->_statusBarView;
    v10 = [MEMORY[0x277D75348] redColor];
    v11 = [v10 colorWithAlphaComponent:0.4];
    [(SBMainDisplaySceneLayoutStatusBarView *)v9 _setDebugBackgroundColor:v11];

    [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView setDataSource:self];
    v12 = [(SBDeviceApplicationSceneStatusBarStateProxy *)[_SBDashBoardHostedAppStatusBarStateProxy alloc] initWithDeviceApplicationSceneHandle:v26];
    statusBarObserverProxy = self->_statusBarObserverProxy;
    self->_statusBarObserverProxy = v12;

    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self->_statusBarObserverProxy addStatusBarObserver:self->_statusBarView];
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self->_statusBarObserverProxy addStatusBarObserver:self];
    [(_SBDashBoardHostedAppStatusBarStateProxy *)self->_statusBarObserverProxy setHostedAppVCBackReference:self];
    [v5 addSubview:self->_statusBarView];
    v14 = [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView leftAnchor];
    v15 = [v5 leftAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView rightAnchor];
    v18 = [v5 rightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView topAnchor];
    v21 = [v5 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView bottomAnchor];
    v24 = [v5 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v3 = v26;
  }
}

- (void)_updateStatusBarContainerOrientation
{
  v3 = [(SBDashBoardHostedAppViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _roleHint];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

  if ((v6 & 1) == 0)
  {
    statusBarView = self->_statusBarView;
    v8 = [(SBDashBoardHostedAppViewController *)self containerInterfaceOrientation];

    [(SBMainDisplaySceneLayoutStatusBarView *)statusBarView setContainerOrientation:v8];
  }
}

- (void)_beginShowingStatusBarView
{
  [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView beginRequiringStatusBarForReason:@"SBDashBoardHostedApp"];
  [(SBMainDisplaySceneLayoutStatusBarView *)self->_statusBarView applyStatusBarStylesForDescriber:self->_statusBarObserverProxy];
  statusBarView = self->_statusBarView;
  v4 = [(SBDashBoardHostedAppViewController *)self containerInterfaceOrientation];

  [(SBMainDisplaySceneLayoutStatusBarView *)statusBarView setContainerOrientation:v4];
}

- (SBDashBoardHostedAppViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithApplicationSceneEntity:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:SBApplicationSceneEntityClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBDashBoardHostedAppViewController.m";
    v9 = 1024;
    v10 = 102;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithApplicationSceneEntity:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBDashBoardHostedAppViewController.m";
    v9 = 1024;
    v10 = 102;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end