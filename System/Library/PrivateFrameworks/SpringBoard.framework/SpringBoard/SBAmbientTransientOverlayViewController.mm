@interface SBAmbientTransientOverlayViewController
- (BOOL)_canAddPrimaryActivityItem;
- (BOOL)_canAddSecondaryActivityItem:(id)item;
- (BOOL)_isShowingFullActivityOverlay;
- (BOOL)_isShowingFullActivityOverlayForItem:(id)item;
- (BOOL)_itemIsFirstPartyActivity:(id)activity;
- (BOOL)_shouldDisableIdleTimer;
- (BOOL)activityAmbientViewControllerCanBeginFullOverlayDismissGesture:(id)gesture;
- (BOOL)ambientViewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier;
- (BOOL)ambientViewController:(id)controller wantsBiometricAuthenticationBlockedForDeepUserInteraction:(BOOL)interaction;
- (BOOL)ambientViewControllerIsAuthenticated:(id)authenticated;
- (BOOL)isForegroundActive;
- (SBAmbientTransientOverlayViewController)init;
- (SBAmbientTransientOverlayViewControllerDelegate)delegate;
- (id)_newBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting parentView:(id)view;
- (id)_newContentBlurMaterialViewWithInitialWeighting:(double)weighting parentView:(id)view;
- (id)ambientDefaultsForAmbientViewController:(id)controller;
- (id)ambientViewControllerRequestsConnectedChargerId:(id)id;
- (id)associatedBundleIdentifiersToSuppressInSystemAperture;
- (id)associatedSceneIdentifiersToSuppressInSystemAperture;
- (id)defaultWidgetDescriptorStacksForAmbientViewController:(id)controller;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)widgetHostManagerForAmbientViewController:(id)controller;
- (int64_t)idleTimerDuration;
- (int64_t)idleTimerMode;
- (int64_t)idleWarnMode;
- (void)_addActivityViewControllerWithPrimaryItem:(id)item withOverlayMode:(int64_t)mode completion:(id)completion;
- (void)_addNewPrimaryActivityWithItem:(id)item forOngoingActivity:(BOOL)activity;
- (void)_addProudLockViewControllerIfNecessary;
- (void)_animateDismissalOfActivityView:(id)view withCompletion:(id)completion;
- (void)_animatePresentationOfActivityView:(id)view;
- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_clearContentBlurMaterialViewIfNecessary;
- (void)_configureActivityViewBlurMaterialWithInitialWeighting:(double)weighting parentView:(id)view;
- (void)_configureBlurMaterialView:(id)view withParentView:(id)parentView;
- (void)_configureTransitionAnimationBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting;
- (void)_configureTransitionAnimationContentBlurMaterialViewWithInitialWeighting:(double)weighting;
- (void)_decrementActivityPresentationAnimationCountAndPerformAnimationCleanUpIfNecessaryForActivityView:(id)view withCompletion:(id)completion;
- (void)_decrementTransitionAnimationCountAndPerformAnimationCleanUpIfNecessary;
- (void)_dismissActivityViewController;
- (void)_registerForFirstPresentationStateChange;
- (void)_removeActivityViewBlurMaterialView;
- (void)_removeBackgroundBlurMaterialView;
- (void)_removeContentBlurMaterialView;
- (void)_removeProudLockViewController;
- (void)_requestZStackParticipantPreferencesUpdate;
- (void)_setActivityViewHidden:(BOOL)hidden;
- (void)_setProudLockAuthenticated:(BOOL)authenticated;
- (void)_setupAmbientDefaults;
- (void)_stopAlertingForActivityIdentifier:(id)identifier;
- (void)addActivityItem:(id)item forOngoingActivity:(BOOL)activity;
- (void)ambientViewController:(id)controller didSetBiometricAuthenticationDisabled:(BOOL)disabled;
- (void)ambientViewController:(id)controller didSetInlineAuthenticationViewVisible:(BOOL)visible;
- (void)ambientViewController:(id)controller didUpdateActiveConfiguration:(id)configuration withMetadata:(id)metadata;
- (void)ambientViewController:(id)controller isTransitioningSettled:(BOOL)settled;
- (void)ambientViewController:(id)controller requestsUnlock:(id)unlock withCompletion:(id)completion;
- (void)ambientViewControllerWillBeginConfiguration:(id)configuration;
- (void)ambientViewControllerWillEndConfiguration:(id)configuration;
- (void)attemptUnlockForSender:(id)sender forBioUnlock:(BOOL)unlock completion:(id)completion;
- (void)dealloc;
- (void)dismissAmbientActivityAlert:(id)alert;
- (void)invalidate;
- (void)loadView;
- (void)onboardingViewController:(id)controller requestsDismissalWithUserIntent:(BOOL)intent;
- (void)presentAmbientActivityAlert:(id)alert;
- (void)removeActivityItem:(id)item;
- (void)setAmbientIdleTimerBehaviorProvider:(id)provider;
- (void)setDelegate:(id)delegate;
- (void)setNeedsIdleTimerReset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBAmbientTransientOverlayViewController

- (SBAmbientTransientOverlayViewController)init
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBAmbientTransientOverlayViewController;
  v2 = [(SBAmbientTransientOverlayViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBActivityAmbientObserver);
    ambientActivityObserver = v2->_ambientActivityObserver;
    v2->_ambientActivityObserver = v3;

    v5 = +[SBActivityManager sharedInstance];
    activityManager = v2->_activityManager;
    v2->_activityManager = v5;

    [(SBActivityAmbientObserver *)v2->_ambientActivityObserver setDelegate:v2];
    [(SBActivityManager *)v2->_activityManager addObserver:v2->_ambientActivityObserver];
    [(SBActivityManager *)v2->_activityManager setEnvironment:1];
    mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
    [mEMORY[0x277D65ED8] addObserver:v2];
    [(SBTransientOverlayViewController *)v2 setPresentationAllowsHomeGrabberAutoHide:1];
    v8 = objc_opt_self();
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [(SBAmbientTransientOverlayViewController *)v2 registerForTraitChanges:v9 withAction:sel__backlightLuminanceDidChange_previousTraitCollection_];

    [(SBAmbientTransientOverlayViewController *)v2 setOverrideUserInterfaceStyle:2];
  }

  return v2;
}

- (void)dealloc
{
  [(SBAmbientTransientOverlayViewController *)self invalidate];
  [(BSInvalidatable *)self->_lockElementBloomSuppressionAssertion invalidate];
  [(SBActivityAlert *)self->_activeAlert stopAlerting];
  activeAlert = self->_activeAlert;
  self->_activeAlert = 0;

  v4.receiver = self;
  v4.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 dealloc];
}

- (void)setAmbientIdleTimerBehaviorProvider:(id)provider
{
  objc_storeStrong(&self->_ambientIdleTimerBehaviorProvider, provider);
  idleTimerCoordinator = [(SBTransientOverlayViewController *)self idleTimerCoordinator];
  v4 = [idleTimerCoordinator idleTimerProvider:self didProposeBehavior:self forReason:@"SBAmbientTransientOverlayViewController"];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBAmbientTransientOverlayViewController *)self _setupAmbientDefaults];
    v5 = obj;
  }
}

- (BOOL)isForegroundActive
{
  selfCopy = self;
  transientOverlayDelegate = [(SBTransientOverlayViewController *)self transientOverlayDelegate];
  LOBYTE(selfCopy) = [transientOverlayDelegate transientOverlayViewControllerIsForegroundActive:selfCopy];

  return selfCopy;
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = SBAmbientTransientOverlayViewController;
  [(SBAmbientTransientOverlayViewController *)&v9 loadView];
  view = [(SBAmbientTransientOverlayViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  if (v5 < v7)
  {
    view2 = [(SBAmbientTransientOverlayViewController *)self view];
    [view2 setFrame:{0.0, 0.0, v7, v5}];
  }
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v23 viewDidLoad];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView setAccessibilityIdentifier:@"sb-ambient-transient-overlay-view"];
  v4 = objc_alloc_init(MEMORY[0x277CEA600]);
  ambientViewController = self->_ambientViewController;
  self->_ambientViewController = v4;

  [(AMUIAmbientViewController *)self->_ambientViewController setDelegate:self];
  v6 = self->_ambientViewController;
  v7 = objc_opt_new();
  [(AMUIAmbientViewController *)v6 setDateProvider:v7];

  v8 = self->_ambientViewController;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__SBAmbientTransientOverlayViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_2783A9460;
  v21[4] = self;
  v9 = contentView;
  v22 = v9;
  [(SBAmbientTransientOverlayViewController *)self bs_addChildViewController:v8 withSuperview:v9 animated:0 transitionBlock:v21];
  if ([(SBAmbientTransientOverlayViewController *)self _isFirstPresentation])
  {
    v10 = objc_alloc_init(MEMORY[0x277CEA610]);
    onboardingViewController = self->_onboardingViewController;
    self->_onboardingViewController = v10;

    [(AMUIOnboardingViewController *)self->_onboardingViewController setDelegate:self];
    [(AMUIOnboardingViewController *)self->_onboardingViewController setAmbientDefaults:self->_ambientDefaults];
    v12 = self->_onboardingViewController;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__SBAmbientTransientOverlayViewController_viewDidLoad__block_invoke_2;
    v18 = &unk_2783A9460;
    selfCopy = self;
    v13 = v9;
    v20 = v13;
    [(SBAmbientTransientOverlayViewController *)self bs_addChildViewController:v12 withSuperview:v13 animated:0 transitionBlock:&v15];
    v14 = [(AMUIOnboardingViewController *)self->_onboardingViewController view:v15];
    [v13 bringSubviewToFront:v14];
  }

  [(SBActivityAmbientObserver *)self->_ambientActivityObserver addOverlaysForOngoingActivitiesIfNecessary];
}

void __54__SBAmbientTransientOverlayViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1416);
  v4 = a2;
  v5 = [v3 view];
  [*(a1 + 40) bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  v4[2](v4);
}

void __54__SBAmbientTransientOverlayViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1512);
  v4 = a2;
  v5 = [v3 view];
  [*(a1 + 40) bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  v4[2](v4);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBAmbientTransientOverlayViewController;
  [(SBAmbientTransientOverlayViewController *)&v6 viewWillAppear:?];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidAppear:?];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self viewDidAppear:appearCopy];

  if (([(AMUIAmbientViewController *)self->_ambientViewController bs_isAppearingOrAppeared]& 1) == 0)
  {
    [(AMUIAmbientViewController *)self->_ambientViewController bs_endAppearanceTransition:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBAmbientTransientOverlayViewController;
  [(SBAmbientTransientOverlayViewController *)&v6 viewWillDisappear:?];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v6 viewDidDisappear:?];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v14 viewDidLayoutSubviews];
  view = [(SBAmbientTransientOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  UIRectGetCenter();
  v9 = v8;
  v11 = v10;
  v12 = hypot(v5, v7);
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView setBounds:{0.0, 0.0, v12, v12}];
  [backgroundView setCenter:{v9, v11}];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBAmbientTransientOverlayViewController;
  windowCopy = window;
  [(SBTransientOverlayViewController *)&v6 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [windowCopy setClipsToBounds:{0, v6.receiver, v6.super_class}];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  contentView = [(SBTransientOverlayViewController *)self contentView];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v9[3] = &unk_2783C1188;
  v10 = contentView;
  v11 = backgroundView;
  selfCopy = self;
  v6 = backgroundView;
  v7 = contentView;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v9];

  return v3;
}

void __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v4 = MEMORY[0x277D75D18];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v36[3] = &unk_2783A8ED8;
    v37 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v38 = v5;
    v39 = v6;
    [v4 performWithoutAnimation:v36];
    v7 = a1[6];
    if (v7[189])
    {
      [v7[189] performPresentationAnimation];
      v7 = a1[6];
    }

    [v7 _incrementTransitionAnimationCount];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v34[3] = &unk_2783A8C18;
    v35 = a1[6];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_4;
    v33[3] = &unk_2783A9398;
    v33[4] = v35;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:2 delay:v34 options:v33 mass:1.9 stiffness:0.0 damping:25.0 initialVelocity:600.0 animations:500.0 completion:0.0];
    [a1[6] _incrementTransitionAnimationCount];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5;
    v31[3] = &unk_2783A8C18;
    v32 = a1[6];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_6;
    v30[3] = &unk_2783A9398;
    v30[4] = v32;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:2 delay:v31 options:v30 mass:1.0 stiffness:0.0 damping:5.0 initialVelocity:467.2 animations:104.72 completion:0.0];
    [a1[6] _incrementTransitionAnimationCount];
    v8 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_7;
    v28[3] = &unk_2783A8C18;
    v29 = a1[4];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_8;
    v27[3] = &unk_2783A9398;
    v27[4] = a1[6];
    [v8 _animateUsingSpringWithDuration:2 delay:v28 options:v27 mass:1.5 stiffness:0.0 damping:2.0 initialVelocity:78.9568 animations:50.0 completion:0.0];
    [a1[6] _incrementTransitionAnimationCount];
    v9 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_9;
    v23[3] = &unk_2783A8ED8;
    v24 = a1[4];
    v25 = a1[5];
    v26 = v3;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_10;
    v20 = &unk_2783A8BF0;
    v10 = v26;
    v11 = a1[6];
    v21 = v10;
    v22 = v11;
    [v9 _animateUsingSpringWithDuration:2 delay:v23 options:&v17 mass:2.3 stiffness:0.0 damping:30.0 initialVelocity:500.0 animations:500.0 completion:0.0];
    v12 = a1[6];
    v13 = v12[187];
    if (v13)
    {
      v14 = [v13 view];
      [v12 _animatePresentationOfActivityView:v14];
    }
  }

  else
  {
    [a1[4] setAlpha:1.0];
    [a1[5] setAlpha:1.0];
    v15 = a1[5];
    v16 = [MEMORY[0x277D75348] blackColor];
    [v15 setBackgroundColor:v16];

    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
  }
}

void __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v6, 1.3, 1.3);
  [v2 setTransform:&v6];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [*(a1 + 48) _configureTransitionAnimationBackgroundBlurMaterialViewWithInitialWeighting:0.0];
  [*(a1 + 48) _configureTransitionAnimationContentBlurMaterialViewWithInitialWeighting:1.0];
  v5 = [*(a1 + 32) layer];
  [v5 setAllowsGroupOpacity:1];

  *(*(a1 + 48) + 1488) = 1;
}

uint64_t __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[181];
  v3 = [v1 _isPresentingOnboardingView];
  v4 = 0.3;
  if (!v3)
  {
    v4 = 0.0;
  }

  return [v2 setWeighting:v4];
}

uint64_t __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277D75348] systemBlackColor];
  [v2 setBackgroundColor:v3];

  v4 = *(a1 + 48);

  return [v4 performAlongsideTransitions];
}

uint64_t __95__SBAmbientTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = *(a1 + 40);

  return [v2 _decrementTransitionAnimationCountAndPerformAnimationCleanUpIfNecessary];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  contentView = [(SBTransientOverlayViewController *)self contentView];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [(AMUIAmbientViewController *)self->_ambientViewController setNotificationCount:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v9[3] = &unk_2783C1188;
  v9[4] = self;
  v10 = contentView;
  v11 = backgroundView;
  v6 = backgroundView;
  v7 = contentView;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v9];

  return v3;
}

void __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v4 = MEMORY[0x277D75D18];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
    v33[3] = &unk_2783A8ED8;
    v5 = a1[5];
    v33[4] = a1[4];
    v34 = v5;
    v35 = a1[6];
    [v4 performWithoutAnimation:v33];
    [a1[4] _incrementTransitionAnimationCount];
    v6 = MEMORY[0x277D75D18];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
    v31[3] = &unk_2783A8C18;
    v32 = a1[5];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_4;
    v30[3] = &unk_2783A9398;
    v30[4] = a1[4];
    [v6 _animateUsingSpringWithDuration:2 delay:v31 options:v30 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
    [a1[4] _incrementTransitionAnimationCount];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_5;
    v28[3] = &unk_2783A8C18;
    v29 = a1[4];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_6;
    v27[3] = &unk_2783A9398;
    v27[4] = v29;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:2 delay:v28 options:v27 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
    [a1[4] _incrementTransitionAnimationCount];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_7;
    v25[3] = &unk_2783A8C18;
    v26 = a1[4];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_8;
    v24[3] = &unk_2783A9398;
    v24[4] = v26;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:2 delay:v25 options:v24 mass:1.0 stiffness:0.0 damping:5.0 initialVelocity:467.2 animations:104.72 completion:0.0];
    [a1[4] _incrementTransitionAnimationCount];
    v7 = MEMORY[0x277D75D18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_9;
    v21[3] = &unk_2783A92D8;
    v22 = a1[5];
    v23 = v3;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_10;
    v18[3] = &unk_2783A8BF0;
    v8 = v23;
    v9 = a1[4];
    v19 = v8;
    v20 = v9;
    [v7 _animateUsingSpringWithDuration:2 delay:v21 options:v18 mass:1.5 stiffness:0.0 damping:2.0 initialVelocity:78.9568 animations:50.0 completion:0.0];
    v10 = a1[4];
    v11 = v10[187];
    if (v11)
    {
      v12 = [v11 view];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_11;
      v17[3] = &unk_2783A8C18;
      v17[4] = a1[4];
      [v10 _animateDismissalOfActivityView:v12 withCompletion:v17];

      v10 = a1[4];
    }

    v13 = v10[189];
    if (v13)
    {
      [v13 performDismissalAnimation];
    }
  }

  else
  {
    [a1[5] setAlpha:0.0];
    [a1[6] setAlpha:0.0];
    v14 = a1[6];
    v15 = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:v15];

    [v3 performAlongsideTransitions];
    [v3 completeTransition:1];
    v16 = a1[4];
    if (v16[187])
    {
      [v16 _dismissActivityViewController];
    }
  }
}

void __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureTransitionAnimationBackgroundBlurMaterialViewWithInitialWeighting:1.0];
  [*(a1 + 32) _configureTransitionAnimationContentBlurMaterialViewWithInitialWeighting:0.0];
  v2 = [*(a1 + 40) layer];
  [v2 setAllowsGroupOpacity:1];

  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];
}

uint64_t __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 1.3, 1.3);
  [v2 setTransform:&v4];
  return [*(a1 + 40) performAlongsideTransitions];
}

uint64_t __92__SBAmbientTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = *(a1 + 40);

  return [v2 _decrementTransitionAnimationCountAndPerformAnimationCleanUpIfNecessary];
}

- (id)associatedBundleIdentifiersToSuppressInSystemAperture
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  primaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController primaryActivityItem];
  descriptor = [primaryActivityItem descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  if (platterTargetBundleIdentifier)
  {
    [v3 addObject:platterTargetBundleIdentifier];
  }

  secondaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController secondaryActivityItem];
  descriptor2 = [secondaryActivityItem descriptor];
  platterTargetBundleIdentifier2 = [descriptor2 platterTargetBundleIdentifier];

  if (platterTargetBundleIdentifier2)
  {
    [v3 addObject:platterTargetBundleIdentifier2];
  }

  return v3;
}

- (id)associatedSceneIdentifiersToSuppressInSystemAperture
{
  v3 = [MEMORY[0x277CBEB98] set];
  primaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController primaryActivityItem];
  descriptor = [primaryActivityItem descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  secondaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController secondaryActivityItem];
  descriptor2 = [secondaryActivityItem descriptor];
  platterTargetBundleIdentifier2 = [descriptor2 platterTargetBundleIdentifier];

  if (([platterTargetBundleIdentifier isEqualToString:@"com.apple.InCallService"] & 1) != 0 || objc_msgSend(platterTargetBundleIdentifier2, "isEqualToString:", @"com.apple.InCallService"))
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = [@"SBAmbientFullScreenPresentationInCallSceneIdentifier" copy];
    v12 = [v10 setWithObject:v11];

    v3 = v12;
  }

  return v3;
}

- (void)setNeedsIdleTimerReset
{
  v4.receiver = self;
  v4.super_class = SBAmbientTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 setNeedsIdleTimerReset];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self didUpdatedWantsIdleTimerDisabled:{-[SBAmbientTransientOverlayViewController wantsIdleTimerDisabled](self, "wantsIdleTimerDisabled")}];
}

- (int64_t)idleTimerMode
{
  if ([(SBAmbientTransientOverlayViewController *)self _shouldDisableIdleTimer])
  {
    return 3;
  }

  ambientIdleTimerBehaviorProvider = self->_ambientIdleTimerBehaviorProvider;

  return [(SBFIdleTimerBehaviorProviding *)ambientIdleTimerBehaviorProvider idleTimerMode];
}

- (int64_t)idleTimerDuration
{
  if ([(SBAmbientTransientOverlayViewController *)self _shouldDisableIdleTimer])
  {
    return 18;
  }

  ambientIdleTimerBehaviorProvider = self->_ambientIdleTimerBehaviorProvider;

  return [(SBFIdleTimerBehaviorProviding *)ambientIdleTimerBehaviorProvider idleTimerDuration];
}

- (int64_t)idleWarnMode
{
  if ([(SBAmbientTransientOverlayViewController *)self _shouldDisableIdleTimer])
  {
    return 1;
  }

  ambientIdleTimerBehaviorProvider = self->_ambientIdleTimerBehaviorProvider;

  return [(SBFIdleTimerBehaviorProviding *)ambientIdleTimerBehaviorProvider idleWarnMode];
}

- (void)addActivityItem:(id)item forOngoingActivity:(BOOL)activity
{
  activityCopy = activity;
  itemCopy = item;
  if ([(SBAmbientTransientOverlayViewController *)self _canAddPrimaryActivityItem])
  {
    [(SBAmbientTransientOverlayViewController *)self _addNewPrimaryActivityWithItem:itemCopy forOngoingActivity:activityCopy];
  }

  else if ([(SBAmbientTransientOverlayViewController *)self _canAddSecondaryActivityItem:itemCopy])
  {
    [(SBActivityAmbientViewController *)self->_activityViewController addOverlayForSecondaryActivityItem:itemCopy];
  }

  else
  {
    [(SBActivityAmbientObserver *)self->_ambientActivityObserver addPendingItem:itemCopy];
  }

  [(SBAmbientTransientOverlayViewController *)self _requestZStackParticipantPreferencesUpdate];
}

- (void)removeActivityItem:(id)item
{
  activityViewController = self->_activityViewController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBAmbientTransientOverlayViewController_removeActivityItem___block_invoke;
  v7[3] = &unk_2783A8C18;
  v7[4] = self;
  itemCopy = item;
  [(SBActivityAmbientViewController *)activityViewController removeOverlayForActivityItem:itemCopy withCompletion:v7];
  [(SBAmbientTransientOverlayViewController *)self _requestZStackParticipantPreferencesUpdate];
  identifier = [itemCopy identifier];

  [(SBAmbientTransientOverlayViewController *)self _stopAlertingForActivityIdentifier:identifier];
}

void __62__SBAmbientTransientOverlayViewController_removeActivityItem___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1496) primaryActivityItem];
  if (v2 || ([*(*(a1 + 32) + 1496) secondaryActivityItem], (v2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(*(a1 + 32) + 1424), "nextPendingItem"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (([*(*(a1 + 32) + 1496) isTransitioning] & 1) == 0)
  {
    v3 = *(a1 + 32);

    [v3 _dismissActivityViewController];
  }
}

- (void)presentAmbientActivityAlert:(id)alert
{
  alertCopy = alert;
  v3 = alertCopy;
  BSDispatchMain();
}

void __71__SBAmbientTransientOverlayViewController_presentAmbientActivityAlert___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canPresentInEnvironment:1 alertType:3])
  {
    v2 = [*(a1 + 32) item];
    objc_initWeak(&location, *(a1 + 40));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__SBAmbientTransientOverlayViewController_presentAmbientActivityAlert___block_invoke_2;
    v5[3] = &unk_2783A9CE8;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 32);
    v3 = MEMORY[0x223D6F7F0](v5);
    v4 = *(a1 + 40);
    if (v4[187])
    {
      [v4[187] alertActivityItem:v2 withAlertBlock:v3];
    }

    else
    {
      [v4 _addActivityViewControllerWithPrimaryItem:v2 withOverlayMode:0 completion:v3];
    }

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __71__SBAmbientTransientOverlayViewController_presentAmbientActivityAlert___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) options];
  v3 = [v2 presentationOptions];

  if (v3)
  {
    v4 = [v3 interrupting];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) alertWithScreenOn:1 playSound:v4];
  objc_storeStrong(WeakRetained + 193, *(a1 + 32));
}

- (void)dismissAmbientActivityAlert:(id)alert
{
  alertCopy = alert;
  v3 = alertCopy;
  BSDispatchMain();
}

void __71__SBAmbientTransientOverlayViewController_dismissAmbientActivityAlert___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) item];
  v3 = *(a1 + 40);
  v4 = [v2 identifier];
  [v3 _stopAlertingForActivityIdentifier:v4];

  if (([*(a1 + 40) _isShowingFullActivityOverlayForItem:v2] & 1) == 0)
  {
    v6 = SBLogAmbientPresentation();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v7 = [v2 identifier];
    *buf = 138412290;
    v12 = v7;
    v8 = "[ActivityID: %@], Activity is not shown as a full overlay, no alert to dismiss";
    goto LABEL_7;
  }

  if ([*(a1 + 32) canPresentInEnvironment:1 alertType:3])
  {
    v5 = *(*(a1 + 40) + 1496);
    if (v5)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __71__SBAmbientTransientOverlayViewController_dismissAmbientActivityAlert___block_invoke_51;
      v9[3] = &unk_2783A8C18;
      v10 = v2;
      [v5 alertDidDismissForActivityItem:v10 completion:v9];
      v6 = v10;
LABEL_8:

      goto LABEL_9;
    }

    v6 = SBLogAmbientPresentation();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v7 = [v2 identifier];
    *buf = 138412290;
    v12 = v7;
    v8 = "[ActivityID: %@], No view controller found to dismiss from ambient presentation.";
LABEL_7:
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);

    goto LABEL_8;
  }

LABEL_9:
}

void __71__SBAmbientTransientOverlayViewController_dismissAmbientActivityAlert___block_invoke_51(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[ActivityID: %@], Activity alert is dismissed from ambient presentation.", &v4, 0xCu);
  }
}

- (BOOL)activityAmbientViewControllerCanBeginFullOverlayDismissGesture:(id)gesture
{
  selfCopy = self;
  transientOverlayDelegate = [(SBTransientOverlayViewController *)self transientOverlayDelegate];
  LOBYTE(selfCopy) = [transientOverlayDelegate transientOverlayViewControllerIsForegroundActive:selfCopy];

  return selfCopy;
}

- (BOOL)_canAddPrimaryActivityItem
{
  primaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController primaryActivityItem];
  v3 = primaryActivityItem == 0;

  return v3;
}

- (BOOL)_canAddSecondaryActivityItem:(id)item
{
  itemCopy = item;
  secondaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController secondaryActivityItem];
  overlayMode = [(SBActivityAmbientViewController *)self->_activityViewController overlayMode];
  if (secondaryActivityItem)
  {
    v7 = 0;
  }

  else
  {
    v8 = overlayMode == 0;
    descriptor = [itemCopy descriptor];
    platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

    primaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController primaryActivityItem];
    descriptor2 = [primaryActivityItem descriptor];
    platterTargetBundleIdentifier2 = [descriptor2 platterTargetBundleIdentifier];
    v14 = [platterTargetBundleIdentifier2 isEqualToString:platterTargetBundleIdentifier];

    v7 = v8 & ~v14;
  }

  return v7;
}

- (void)_addNewPrimaryActivityWithItem:(id)item forOngoingActivity:(BOOL)activity
{
  activityCopy = activity;
  itemCopy = item;
  [(SBAmbientTransientOverlayViewController *)self _addActivityViewControllerWithPrimaryItem:itemCopy withOverlayMode:[(SBAmbientTransientOverlayViewController *)self _itemIsFirstPartyActivity:itemCopy]^ 1 | activityCopy completion:0];
}

- (void)_addActivityViewControllerWithPrimaryItem:(id)item withOverlayMode:(int64_t)mode completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  activityViewController = self->_activityViewController;
  if (activityViewController)
  {
    [(SBActivityAmbientViewController *)activityViewController addOverlayForPrimaryActivityItem:itemCopy withOverlayMode:mode];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v11 = [[SBActivityAmbientViewController alloc] initWithPrimaryActivityItem:itemCopy overlayMode:mode];
    [(SBActivityAmbientViewController *)v11 setDelegate:self];
    objc_storeStrong(&self->_activityViewController, v11);
    if ([(SBAmbientTransientOverlayViewController *)self isConfiguringUIVisible])
    {
      view = [(SBActivityAmbientViewController *)v11 view];
      [view setAlpha:0.0];
    }

    contentView = [(SBTransientOverlayViewController *)self contentView];
    v14 = self->_activityViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __112__SBAmbientTransientOverlayViewController__addActivityViewControllerWithPrimaryItem_withOverlayMode_completion___block_invoke;
    v16[3] = &unk_2783A9460;
    v16[4] = self;
    v17 = contentView;
    v15 = contentView;
    [(SBAmbientTransientOverlayViewController *)self bs_addChildViewController:v14 withSuperview:v15 animated:1 transitionBlock:v16];
  }
}

void __112__SBAmbientTransientOverlayViewController__addActivityViewControllerWithPrimaryItem_withOverlayMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 1496) view];
  [*(a1 + 40) bounds];
  [v3 setFrame:?];
  [v3 setAutoresizingMask:18];
  [*(a1 + 40) bringSubviewToFront:v3];
  if (v4)
  {
    v4[2]();
  }
}

- (BOOL)_itemIsFirstPartyActivity:(id)activity
{
  descriptor = [activity descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v5 = +[SBActivityManager sharedInstance];
  firstPartyActivityGroupingIdentifiers = [v5 firstPartyActivityGroupingIdentifiers];
  v7 = [firstPartyActivityGroupingIdentifiers containsObject:platterTargetBundleIdentifier];

  return v7;
}

- (void)_stopAlertingForActivityIdentifier:(id)identifier
{
  activeAlert = self->_activeAlert;
  identifierCopy = identifier;
  item = [(SBActivityAlert *)activeAlert item];
  identifier = [item identifier];
  v8 = [identifier isEqualToString:identifierCopy];

  if (v8)
  {
    [(SBActivityAlert *)self->_activeAlert stopAlerting];
    v9 = self->_activeAlert;
    self->_activeAlert = 0;
  }
}

- (BOOL)ambientViewControllerIsAuthenticated:(id)authenticated
{
  authenticationController = [SBApp authenticationController];
  isAuthenticated = [authenticationController isAuthenticated];

  return isAuthenticated;
}

- (void)ambientViewController:(id)controller isTransitioningSettled:(BOOL)settled
{
  if (self->_isPerformingPresentationAnimation && !settled)
  {
    backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [backgroundView setBackgroundColor:blackColor];
  }
}

- (id)ambientViewControllerRequestsConnectedChargerId:(id)id
{
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  v5 = [delegate ambientTransientOverlayViewControllerRequestsConnectedChargerId:self];

  return v5;
}

- (void)ambientViewController:(id)controller requestsUnlock:(id)unlock withCompletion:(id)completion
{
  completionCopy = completion;
  unlockCopy = unlock;
  v11 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v11 setSource:13];
  [(SBLockScreenUnlockRequest *)v11 setIntent:2];
  name = [unlockCopy name];
  [(SBLockScreenUnlockRequest *)v11 setName:name];

  [(SBLockScreenUnlockRequest *)v11 setWantsBiometricPresentation:1];
  [(SBLockScreenUnlockRequest *)v11 setConfirmedNotInPocket:1];
  unlockDestination = [unlockCopy unlockDestination];

  [(SBLockScreenUnlockRequest *)v11 setUnlockDestination:unlockDestination];
  v10 = +[SBLockScreenManager sharedInstance];
  [v10 unlockWithRequest:v11 completion:completionCopy];
}

- (void)ambientViewControllerWillBeginConfiguration:(id)configuration
{
  [(SBAmbientTransientOverlayViewController *)self setConfiguringUIVisible:1];
  [(SBAmbientTransientOverlayViewController *)self setNeedsIdleTimerReset];
  [(SBAmbientTransientOverlayViewController *)self _setActivityViewHidden:1];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewControllerWillBeginConfiguration:self];
}

- (void)ambientViewControllerWillEndConfiguration:(id)configuration
{
  [(SBAmbientTransientOverlayViewController *)self setConfiguringUIVisible:0];
  [(SBAmbientTransientOverlayViewController *)self setNeedsIdleTimerReset];
  [(SBAmbientTransientOverlayViewController *)self _setActivityViewHidden:0];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewControllerWillEndConfiguration:self];
}

- (id)widgetHostManagerForAmbientViewController:(id)controller
{
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  v5 = [delegate widgetHostManagerForAmbientTransientOverlayViewController:self];

  return v5;
}

- (id)ambientDefaultsForAmbientViewController:(id)controller
{
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  v5 = [delegate ambientDefaultsForAmbientTransientOverlayViewController:self];

  return v5;
}

- (id)defaultWidgetDescriptorStacksForAmbientViewController:(id)controller
{
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  v5 = [delegate defaultWidgetDescriptorStacksForAmbientTransientOverlayViewController:self];

  return v5;
}

- (void)ambientViewController:(id)controller didSetInlineAuthenticationViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(SBAmbientTransientOverlayViewController *)self _setActivityViewHidden:visible];
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self didSetInlineAuthenticationViewVisible:visibleCopy];
}

- (BOOL)ambientViewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SBIconController sharedIconRepository];
  v6 = [v5 isApplicationIconVisibleForBundleIdentifier:identifierCopy];

  return v6;
}

- (void)ambientViewController:(id)controller didSetBiometricAuthenticationDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  controllerCopy = controller;
  lockElementBloomSuppressionAssertion = self->_lockElementBloomSuppressionAssertion;
  if (disabledCopy)
  {
    if (lockElementBloomSuppressionAssertion)
    {
      goto LABEL_6;
    }

    v11 = controllerCopy;
    v8 = +[SBLockScreenManager sharedInstance];
    v9 = [v8 acquireSystemApertureLockElementBloomSuppressionAssertionWithReason:@"Domino inline biometric auth disabled"];
    v10 = self->_lockElementBloomSuppressionAssertion;
    self->_lockElementBloomSuppressionAssertion = v9;
  }

  else
  {
    v11 = controllerCopy;
    [(BSInvalidatable *)lockElementBloomSuppressionAssertion invalidate];
    v8 = self->_lockElementBloomSuppressionAssertion;
    self->_lockElementBloomSuppressionAssertion = 0;
  }

  controllerCopy = v11;
LABEL_6:
}

- (BOOL)ambientViewController:(id)controller wantsBiometricAuthenticationBlockedForDeepUserInteraction:(BOOL)interaction
{
  if (interaction)
  {
    return 0;
  }

  v5 = +[SBLockScreenManager sharedInstance];
  biometricAuthenticationCoordinator = [v5 biometricAuthenticationCoordinator];
  isAutoUnlockingDisabled = [biometricAuthenticationCoordinator isAutoUnlockingDisabled];

  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  LOBYTE(biometricAuthenticationCoordinator) = [mEMORY[0x277D67C98] hasPearlSupport];

  return isAutoUnlockingDisabled & biometricAuthenticationCoordinator;
}

- (void)attemptUnlockForSender:(id)sender forBioUnlock:(BOOL)unlock completion:(id)completion
{
  senderCopy = sender;
  completionCopy = completion;
  if (unlock)
  {
    passcode = 0;
  }

  else
  {
    passcode = [senderCopy passcode];
  }

  v10 = +[SBLockScreenManager sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SBAmbientTransientOverlayViewController_attemptUnlockForSender_forBioUnlock_completion___block_invoke;
  v13[3] = &unk_2783AE668;
  v14 = senderCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = senderCopy;
  [v10 attemptUnlockWithPasscode:passcode finishUIUnlock:0 completion:v13];
}

uint64_t __90__SBAmbientTransientOverlayViewController_attemptUnlockForSender_forBioUnlock_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 resetForSuccess];
  }

  else
  {
    [v4 resetForFailedPasscode];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)ambientViewController:(id)controller didUpdateActiveConfiguration:(id)configuration withMetadata:(id)metadata
{
  metadataCopy = metadata;
  configurationCopy = configuration;
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  [delegate ambientTransientOverlayViewController:self didUpdateActiveConfiguration:configurationCopy withMetadata:metadataCopy];
}

- (void)onboardingViewController:(id)controller requestsDismissalWithUserIntent:(BOOL)intent
{
  if (self->_onboardingViewController)
  {
    [(SBAmbientTransientOverlayViewController *)self bs_removeChildViewController:controller, intent];
    onboardingViewController = self->_onboardingViewController;
    self->_onboardingViewController = 0;
  }
}

- (void)invalidate
{
  v3 = +[SBActivityManager sharedInstance];
  [v3 removeObserver:self->_ambientActivityObserver];

  [(SBActivityManager *)self->_activityManager setEnvironment:0];
  defaultObserver = self->_defaultObserver;
  if (defaultObserver)
  {
    [(BSDefaultObserver *)defaultObserver invalidate];
    v5 = self->_defaultObserver;
    self->_defaultObserver = 0;
  }

  activityViewController = self->_activityViewController;
  if (activityViewController)
  {
    [(SBActivityAmbientViewController *)activityViewController invalidate];
    v7 = self->_activityViewController;
    self->_activityViewController = 0;
  }

  ambientDefaults = self->_ambientDefaults;
  self->_ambientDefaults = 0;

  ambientActivityObserver = self->_ambientActivityObserver;
  self->_ambientActivityObserver = 0;

  activityManager = self->_activityManager;
  self->_activityManager = 0;
}

- (void)_dismissActivityViewController
{
  if (self->_activityViewController)
  {
    [(SBAmbientTransientOverlayViewController *)self bs_removeChildViewController:?];
    [(SBActivityAmbientViewController *)self->_activityViewController invalidate];
    activityViewController = self->_activityViewController;
    self->_activityViewController = 0;
  }
}

- (BOOL)_isShowingFullActivityOverlay
{
  primaryActivityItem = [(SBActivityAmbientViewController *)self->_activityViewController primaryActivityItem];
  if (primaryActivityItem)
  {
    v4 = [(SBActivityAmbientViewController *)self->_activityViewController overlayMode]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isShowingFullActivityOverlayForItem:(id)item
{
  activityViewController = self->_activityViewController;
  itemCopy = item;
  primaryActivityItem = [(SBActivityAmbientViewController *)activityViewController primaryActivityItem];

  v7 = primaryActivityItem == itemCopy && [(SBAmbientTransientOverlayViewController *)self _isShowingFullActivityOverlay];
  return v7;
}

- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  collectionCopy = collection;
  v8 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = MEMORY[0x277CCABB0];
    traitCollection = [changeCopy traitCollection];
    v11 = [v9 numberWithInteger:{objc_msgSend(traitCollection, "_backlightLuminance")}];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(collectionCopy, "_backlightLuminance")}];
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Backlight trait changed. New luminance: %@ old: %@", buf, 0x16u);
  }

  traitCollection2 = [changeCopy traitCollection];
  _backlightLuminance = [traitCollection2 _backlightLuminance];

  if (_backlightLuminance)
  {
    if (![collectionCopy _backlightLuminance])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__SBAmbientTransientOverlayViewController__backlightLuminanceDidChange_previousTraitCollection___block_invoke_2;
      v16[3] = &unk_2783A8C18;
      v16[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v16];
      v15 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
      [v15 resetIdleTimerForReason:@"Ambient Screen On"];
    }
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __96__SBAmbientTransientOverlayViewController__backlightLuminanceDidChange_previousTraitCollection___block_invoke;
    v17[3] = &unk_2783A9398;
    v17[4] = self;
    [MEMORY[0x277CF0D38] addAlongsideAnimations:0 completion:v17];
  }
}

uint64_t __96__SBAmbientTransientOverlayViewController__backlightLuminanceDidChange_previousTraitCollection___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1416) bs_endAppearanceTransition:0];
  }

  return result;
}

uint64_t __96__SBAmbientTransientOverlayViewController__backlightLuminanceDidChange_previousTraitCollection___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1416) _appearState];
  if (result != 1)
  {
    v3 = *(*(a1 + 32) + 1416);

    return [v3 bs_endAppearanceTransition:1];
  }

  return result;
}

- (void)_requestZStackParticipantPreferencesUpdate
{
  transientOverlayDelegate = [(SBTransientOverlayViewController *)self transientOverlayDelegate];
  [transientOverlayDelegate transientOverlayViewController:self requestZStackParticipantPreferencesUpdateWithReason:@"Ambient Activities Updated"];
}

- (BOOL)_shouldDisableIdleTimer
{
  if ([(SBAmbientTransientOverlayViewController *)self isConfiguringUIVisible])
  {
    return 1;
  }

  activityViewController = self->_activityViewController;

  return [(SBActivityAmbientViewController *)activityViewController wantsIdleTimerDisabled];
}

- (void)_registerForFirstPresentationStateChange
{
  if ([(SBAmbientTransientOverlayViewController *)self _isFirstPresentation])
  {
    objc_initWeak(&location, self);
    ambientDefaults = self->_ambientDefaults;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"firstPresentation"];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SBAmbientTransientOverlayViewController__registerForFirstPresentationStateChange__block_invoke;
    v9[3] = &unk_2783A8C68;
    objc_copyWeak(&v10, &location);
    v7 = [(AMAmbientDefaults *)ambientDefaults observeDefault:v4 onQueue:v5 withBlock:v9];
    defaultObserver = self->_defaultObserver;
    self->_defaultObserver = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __83__SBAmbientTransientOverlayViewController__registerForFirstPresentationStateChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _isFirstPresentation];
    v2 = v4;
    if ((v3 & 1) == 0)
    {
      [v4 _clearContentBlurMaterialViewIfNecessary];
      v2 = v4;
    }
  }
}

- (void)_clearContentBlurMaterialViewIfNecessary
{
  if (self->_contentBlurMaterialView)
  {
    [(SBAmbientTransientOverlayViewController *)self _incrementTransitionAnimationCount];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __83__SBAmbientTransientOverlayViewController__clearContentBlurMaterialViewIfNecessary__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __83__SBAmbientTransientOverlayViewController__clearContentBlurMaterialViewIfNecessary__block_invoke_2;
    v3[3] = &unk_2783A9398;
    v3[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:2 delay:v4 options:v3 mass:1.5 stiffness:0.0 damping:3.0 initialVelocity:200.0 animations:45.0 completion:0.0];
  }
}

- (void)_setActivityViewHidden:(BOOL)hidden
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SBAmbientTransientOverlayViewController__setActivityViewHidden___block_invoke;
  v3[3] = &unk_2783A9F58;
  hiddenCopy = hidden;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

void __66__SBAmbientTransientOverlayViewController__setActivityViewHidden___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(*(a1 + 32) + 1496) view];
  [v2 setAlpha:v1];
}

- (void)_setupAmbientDefaults
{
  delegate = [(SBAmbientTransientOverlayViewController *)self delegate];
  v4 = [delegate ambientDefaultsForAmbientTransientOverlayViewController:self];
  ambientDefaults = self->_ambientDefaults;
  self->_ambientDefaults = v4;

  [(SBAmbientTransientOverlayViewController *)self _registerForFirstPresentationStateChange];
}

- (void)_addProudLockViewControllerIfNecessary
{
  if (!self->_proudLockViewController)
  {
    [(SBActivityAmbientViewController *)self->_activityViewController setCompactOverlayHidden:1];
    v3 = objc_alloc_init(SBAmbientProudLockViewController);
    proudLockViewController = self->_proudLockViewController;
    self->_proudLockViewController = v3;

    v5 = self->_proudLockViewController;
    contentView = [(SBTransientOverlayViewController *)self contentView];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__SBAmbientTransientOverlayViewController__addProudLockViewControllerIfNecessary__block_invoke;
    v7[3] = &unk_2783AA930;
    v7[4] = self;
    [(SBAmbientTransientOverlayViewController *)self bs_addChildViewController:v5 withSuperview:contentView animated:0 transitionBlock:v7];
  }
}

void __81__SBAmbientTransientOverlayViewController__addProudLockViewControllerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1528);
  v4 = a2;
  v5 = [v3 view];
  v6 = [*(a1 + 32) contentView];
  [v6 bounds];
  [v5 setFrame:?];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];

  v8 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBAmbientTransientOverlayViewController__addProudLockViewControllerIfNecessary__block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
  v4[2](v4);
}

uint64_t __81__SBAmbientTransientOverlayViewController__addProudLockViewControllerIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D65ED8] sharedInstance];
  v3 = [v2 state];
  v4 = [v3 isEffectivelyLocked];

  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 _setProudLockAuthenticated:0];
  }

  else
  {

    return [v5 _removeProudLockViewController];
  }
}

- (void)_setProudLockAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  objc_initWeak(&location, self);
  proudLockViewController = self->_proudLockViewController;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SBAmbientTransientOverlayViewController__setProudLockAuthenticated___block_invoke;
  v6[3] = &unk_2783A8C68;
  objc_copyWeak(&v7, &location);
  [(SBAmbientProudLockViewController *)proudLockViewController setAuthenticated:authenticatedCopy completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__SBAmbientTransientOverlayViewController__setProudLockAuthenticated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeProudLockViewController];
}

- (void)_removeProudLockViewController
{
  if (self->_proudLockViewController)
  {
    [(SBAmbientTransientOverlayViewController *)self bs_removeChildViewController:?];
    proudLockViewController = self->_proudLockViewController;
    self->_proudLockViewController = 0;

    activityViewController = self->_activityViewController;

    [(SBActivityAmbientViewController *)activityViewController setCompactOverlayHidden:0];
  }
}

- (id)_newContentBlurMaterialViewWithInitialWeighting:(double)weighting parentView:(id)view
{
  v6 = MEMORY[0x277D26718];
  v7 = MEMORY[0x277CCA8D8];
  viewCopy = view;
  v9 = [v7 bundleForClass:objc_opt_class()];
  v10 = [v6 materialViewWithRecipeNamed:@"ambientContentOverlay" inBundle:v9 options:0 initialWeighting:0 scaleAdjustment:weighting];

  [v10 setZoomEnabled:{-[SBAmbientTransientOverlayViewController _isPresentingOnboardingView](self, "_isPresentingOnboardingView")}];
  [(SBAmbientTransientOverlayViewController *)self _configureBlurMaterialView:v10 withParentView:viewCopy];

  return v10;
}

- (id)_newBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting parentView:(id)view
{
  v6 = MEMORY[0x277D26718];
  viewCopy = view;
  v8 = SBHBundle();
  v9 = [v6 materialViewWithRecipeNamed:@"homeScreenOverlay" inBundle:v8 options:0 initialWeighting:&__block_literal_global_381 scaleAdjustment:weighting];

  [(SBAmbientTransientOverlayViewController *)self _configureBlurMaterialView:v9 withParentView:viewCopy];
  return v9;
}

- (void)_configureBlurMaterialView:(id)view withParentView:(id)parentView
{
  parentViewCopy = parentView;
  viewCopy = view;
  [parentViewCopy addSubview:viewCopy];
  [parentViewCopy bringSubviewToFront:viewCopy];
  [parentViewCopy bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [viewCopy setFrame:{v7, v9, v11, v13}];
  [viewCopy setAutoresizingMask:18];
}

- (void)_configureTransitionAnimationBackgroundBlurMaterialViewWithInitialWeighting:(double)weighting
{
  if (!self->_backgroundBlurMaterialView)
  {
    backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
    v5 = [(SBAmbientTransientOverlayViewController *)self _newBackgroundBlurMaterialViewWithInitialWeighting:backgroundView parentView:weighting];
    backgroundBlurMaterialView = self->_backgroundBlurMaterialView;
    self->_backgroundBlurMaterialView = v5;
  }
}

- (void)_removeBackgroundBlurMaterialView
{
  backgroundBlurMaterialView = self->_backgroundBlurMaterialView;
  if (backgroundBlurMaterialView)
  {
    [(MTMaterialView *)backgroundBlurMaterialView removeFromSuperview];
    v4 = self->_backgroundBlurMaterialView;
    self->_backgroundBlurMaterialView = 0;
  }
}

- (void)_configureTransitionAnimationContentBlurMaterialViewWithInitialWeighting:(double)weighting
{
  if (!self->_contentBlurMaterialView)
  {
    contentView = [(SBTransientOverlayViewController *)self contentView];
    v6 = [(SBAmbientTransientOverlayViewController *)self _newContentBlurMaterialViewWithInitialWeighting:contentView parentView:weighting];
    contentBlurMaterialView = self->_contentBlurMaterialView;
    self->_contentBlurMaterialView = v6;

    if (self->_onboardingViewController)
    {
      contentView2 = [(SBTransientOverlayViewController *)self contentView];
      view = [(AMUIOnboardingViewController *)self->_onboardingViewController view];
      [contentView2 bringSubviewToFront:view];
    }
  }
}

- (void)_removeContentBlurMaterialView
{
  contentBlurMaterialView = self->_contentBlurMaterialView;
  if (contentBlurMaterialView)
  {
    [(MTMaterialView *)contentBlurMaterialView removeFromSuperview];
    v4 = self->_contentBlurMaterialView;
    self->_contentBlurMaterialView = 0;
  }
}

- (void)_decrementTransitionAnimationCountAndPerformAnimationCleanUpIfNecessary
{
  transitionAnimationCount = self->_transitionAnimationCount;
  if (transitionAnimationCount)
  {
    v4 = transitionAnimationCount - 1;
    self->_transitionAnimationCount = v4;
    if (!v4)
    {
      [(SBAmbientTransientOverlayViewController *)self _removeBackgroundBlurMaterialView];
      if (![(SBAmbientTransientOverlayViewController *)self _isPresentingOnboardingView])
      {
        [(SBAmbientTransientOverlayViewController *)self _removeContentBlurMaterialView];
      }

      contentView = [(SBTransientOverlayViewController *)self contentView];
      layer = [contentView layer];
      [layer setAllowsGroupOpacity:0];
    }
  }
}

- (void)_configureActivityViewBlurMaterialWithInitialWeighting:(double)weighting parentView:(id)view
{
  if (!self->_activityBlurMaterialView)
  {
    v5 = [(SBAmbientTransientOverlayViewController *)self _newContentBlurMaterialViewWithInitialWeighting:view parentView:weighting];
    activityBlurMaterialView = self->_activityBlurMaterialView;
    self->_activityBlurMaterialView = v5;
  }
}

- (void)_removeActivityViewBlurMaterialView
{
  activityBlurMaterialView = self->_activityBlurMaterialView;
  if (activityBlurMaterialView)
  {
    [(MTMaterialView *)activityBlurMaterialView removeFromSuperview];
    v4 = self->_activityBlurMaterialView;
    self->_activityBlurMaterialView = 0;
  }
}

- (void)_animatePresentationOfActivityView:(id)view
{
  viewCopy = view;
  v5 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke;
  v24[3] = &unk_2783A92D8;
  v6 = viewCopy;
  v25 = v6;
  selfCopy = self;
  [v5 performWithoutAnimation:v24];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v7 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_2;
  v23[3] = &unk_2783A8C18;
  v23[4] = self;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_3;
  v21[3] = &unk_2783A8BF0;
  v21[4] = self;
  v8 = v6;
  v22 = v8;
  [v7 _animateUsingSpringWithDuration:2 delay:v23 options:v21 mass:1.0 stiffness:0.0 damping:5.0 initialVelocity:467.2 animations:104.72 completion:0.0];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v9 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_4;
  v19[3] = &unk_2783A8C18;
  v20 = v8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_5;
  v17[3] = &unk_2783A8BF0;
  v17[4] = self;
  v10 = v20;
  v18 = v10;
  [v9 _animateUsingSpringWithDuration:2 delay:v19 options:v17 mass:1.5 stiffness:0.0 damping:2.0 initialVelocity:78.9568 animations:50.0 completion:0.0];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v11 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_6;
  v15[3] = &unk_2783A8C18;
  v16 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_7;
  v13[3] = &unk_2783A8BF0;
  v13[4] = self;
  v14 = v16;
  v12 = v16;
  [v11 _animateUsingSpringWithDuration:2 delay:v15 options:v13 mass:2.3 stiffness:0.0 damping:30.0 initialVelocity:500.0 animations:500.0 completion:0.0];
}

void __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 1.3, 1.3);
  [v2 setTransform:&v4];
  [*(a1 + 40) _configureActivityViewBlurMaterialWithInitialWeighting:*(a1 + 32) parentView:1.0];
  v3 = [*(a1 + 32) layer];
  [v3 setAllowsGroupOpacity:1];
}

uint64_t __78__SBAmbientTransientOverlayViewController__animatePresentationOfActivityView___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)_animateDismissalOfActivityView:(id)view withCompletion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = MEMORY[0x277D75D18];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke;
  v33[3] = &unk_2783A92D8;
  v9 = viewCopy;
  v34 = v9;
  selfCopy = self;
  [v8 performWithoutAnimation:v33];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v10 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_2;
  v31[3] = &unk_2783A8C18;
  v32 = v9;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_3;
  v28[3] = &unk_2783AE5A0;
  v28[4] = self;
  v11 = v32;
  v29 = v11;
  v12 = completionCopy;
  v30 = v12;
  [v10 _animateUsingSpringWithDuration:2 delay:v31 options:v28 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v13 = MEMORY[0x277D75D18];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_4;
  v27[3] = &unk_2783A8C18;
  v27[4] = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_5;
  v24[3] = &unk_2783AE5A0;
  v24[4] = self;
  v14 = v11;
  v25 = v14;
  v15 = v12;
  v26 = v15;
  [v13 _animateUsingSpringWithDuration:2 delay:v27 options:v24 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  [(SBAmbientTransientOverlayViewController *)self _incrementActivityPresentationAnimationCount];
  v16 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_6;
  v22[3] = &unk_2783A8C18;
  v23 = v14;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_7;
  v19[3] = &unk_2783AE5A0;
  v19[4] = self;
  v20 = v23;
  v21 = v15;
  v17 = v15;
  v18 = v23;
  [v16 _animateUsingSpringWithDuration:2 delay:v22 options:v19 mass:1.5 stiffness:0.0 damping:2.0 initialVelocity:78.9568 animations:50.0 completion:0.0];
}

void __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) _configureActivityViewBlurMaterialWithInitialWeighting:*(a1 + 32) parentView:0.0];
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:1];
}

uint64_t __90__SBAmbientTransientOverlayViewController__animateDismissalOfActivityView_withCompletion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 1.3, 1.3);
  return [v1 setTransform:&v3];
}

- (void)_decrementActivityPresentationAnimationCountAndPerformAnimationCleanUpIfNecessaryForActivityView:(id)view withCompletion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  activityPresentationAnimationCount = self->_activityPresentationAnimationCount;
  if (activityPresentationAnimationCount)
  {
    v8 = activityPresentationAnimationCount - 1;
    self->_activityPresentationAnimationCount = v8;
    if (!v8)
    {
      [(SBAmbientTransientOverlayViewController *)self _removeActivityViewBlurMaterialView];
      layer = [viewCopy layer];
      [layer setAllowsGroupOpacity:0];

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

- (SBAmbientTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end