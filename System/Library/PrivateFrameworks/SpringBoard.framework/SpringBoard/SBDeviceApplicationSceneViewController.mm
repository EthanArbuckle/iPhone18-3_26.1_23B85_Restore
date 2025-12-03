@interface SBDeviceApplicationSceneViewController
- (BOOL)_activeOverlaysWantResignActiveAssertion;
- (BOOL)_isApplicationStatusBarHidden;
- (BOOL)_shouldSuppressHomeGrabber;
- (BOOL)_statusBarHasMatchMoveAnimation;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)overlayViewProviderIsHostedInNonrotatingWindow:(id)window;
- (BOOL)overlayViewProviderIsHostedInSecureWindow:(id)window;
- (BOOL)sceneResizesHostedContext;
- (SBApplicationSceneBackgroundView)backgroundView;
- (SBDeviceApplicationSceneViewController)initWithSceneHandle:(id)handle;
- (SBDeviceApplicationSceneViewControllerDelegate)delegate;
- (SBHomeGrabberView)homeGrabberView;
- (id)animationFactoryForImplicitTransitionFromMode:(int64_t)mode toMode:(int64_t)toMode defaultFactory:(id)factory;
- (id)backgroundActivitiesToSuppress;
- (id)currentStatusBarStyleAttributes;
- (id)hostWindowForOverlayViewProvider:(id)provider;
- (id)initialTraitsParticipantForOverlayViewProvider:(id)provider;
- (id)prepareForContentRotation;
- (id)statusBar:(id)bar effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)identifiers;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level;
- (id)statusBarAssertionWithStatusBarSettings:(id)settings atLevel:(unint64_t)level;
- (id)windowSceneForOverlayViewProvider:(id)provider;
- (int64_t)_currentStatusBarStyle;
- (int64_t)_currentStatusBarStyleForPartWithIdentifier:(id)identifier;
- (int64_t)_effectiveStyleForPartIdentifier:(id)identifier;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation;
- (int64_t)leadingStatusBarStyle;
- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)style;
- (int64_t)trailingStatusBarStyle;
- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (void)_addStatusBarMatchMoveAnimationForView:(id)view;
- (void)_applyBackgroundActivitiesToSuppress:(id)suppress toSceneWithIdentifier:(id)identifier;
- (void)_configureForCurrentSecureDisplayState;
- (void)_configureForSecureDisplay:(BOOL)display;
- (void)_configureStatusBarWithCurrentStyleRequest;
- (void)_createSceneOverlayViewProvidersIfNecessary;
- (void)_createStatusBar;
- (void)_deactivateOverlay:(id)overlay forViewProvider:(id)provider;
- (void)_destroySceneOverlayViewProviders;
- (void)_layoutStatusBar;
- (void)_recalculateResignActiveAssertionForActiveOverlays;
- (void)_relinquishResignActiveAssertion;
- (void)_removeStatusBar;
- (void)_removeStatusBarMatchMoveAnimation;
- (void)_setRealStatusBarStyleDelegate:(id)delegate;
- (void)_setStatusBarAssertions:(id)assertions;
- (void)_setStatusBarStyle:(int64_t)style;
- (void)_setStatusBarStyle:(int64_t)style forPartWithIdentifier:(id)identifier;
- (void)_setupStatusBarStylesFromSceneHandle:(id)handle;
- (void)_statusBarDoubleTapTop:(id)top;
- (void)_statusBarTapped:(id)tapped type:(int64_t)type;
- (void)_updateSceneFullyOccludedState:(id)state fullyOccluded:(BOOL)occluded;
- (void)_updateStatusBarAppearanceForOverlayProvider:(id)provider;
- (void)_updateStatusBarState;
- (void)_updateWindowControlsAdaptiveStyle;
- (void)activateOverlayForViewProvider:(id)provider;
- (void)beginMaskingForReason:(int64_t)reason continuation:(id)continuation scene:(id)scene;
- (void)containerDidUpdateTraitsParticipant:(id)participant;
- (void)deactivateOverlayForViewProvider:(id)provider;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)invalidate;
- (void)invalidateMasking:(id)masking;
- (void)overlayViewProviderNeedsStatusBarAppearanceUpdate:(id)update;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didMoveFromSceneManager:(id)manager;
- (void)sceneView:(id)view changedPreferredStatusBarStyleTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier;
- (void)setBackgroundView:(id)view;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setHomeGrabberDisplayMode:(int64_t)mode;
- (void)setRendersWhileLocked:(BOOL)locked;
- (void)setSceneFlattenMode:(id)mode;
- (void)setSceneFullyOccluded:(BOOL)occluded;
- (void)setSceneMinificationFilter:(id)filter;
- (void)setSceneRendersAsynchronously:(BOOL)asynchronously;
- (void)setSceneResizesHostedContext:(BOOL)context;
- (void)statusBarAssertionDidInvalidate:(id)invalidate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation;
- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated;
@end

@implementation SBDeviceApplicationSceneViewController

- (BOOL)_shouldSuppressHomeGrabber
{
  homeGrabberDisplayMode = self->_homeGrabberDisplayMode;
  if (!homeGrabberDisplayMode)
  {
    isEnabled = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings isEnabled];
    homeGrabberDisplayMode = 1;
    if (isEnabled)
    {
      homeGrabberDisplayMode = 2;
    }
  }

  return homeGrabberDisplayMode == 1;
}

- (SBApplicationSceneBackgroundView)backgroundView
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  backgroundView = [_sceneView backgroundView];

  return backgroundView;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v7 viewDidLoad];
  [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView setDelegate:self];
  sceneMinificationFilter = [(SBDeviceApplicationSceneViewController *)self sceneMinificationFilter];
  [_sceneView setMinificationFilter:sceneMinificationFilter];

  [_sceneView setRendersAsynchronously:{-[SBDeviceApplicationSceneViewController sceneRendersAsynchronously](self, "sceneRendersAsynchronously")}];
  [_sceneView setAsynchronousOpaque:1];
  [(SBDeviceApplicationSceneViewController *)self _updateSceneFullyOccludedState:_sceneView fullyOccluded:[(SBDeviceApplicationSceneViewController *)self sceneFullyOccluded]];
  sceneFlattenMode = [(SBDeviceApplicationSceneViewController *)self sceneFlattenMode];
  [_sceneView setFlattenMode:sceneFlattenMode];

  if (self->_statusBarAssertions || self->_shouldDrawStatusBarInsideSceneView)
  {
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }

  if (![(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber])
  {
    homeGrabberPillSettings = [(SBDeviceApplicationSceneViewController *)self homeGrabberPillSettings];
    [_sceneView createHomeGrabberViewIfNecessaryWithSettings:homeGrabberPillSettings];
  }
}

- (void)_createStatusBar
{
  v54 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v48 = sceneIdentifier;
  v9 = [v6 stringWithFormat:@"%@ - %@", v8, sceneIdentifier];

  v49 = _windowScene;
  statusBarManager = [_windowScene statusBarManager];
  reusePool = [statusBarManager reusePool];

  objc_storeWeak(&self->_statusBarReusePool, reusePool);
  v47 = reusePool;
  v12 = [reusePool getReusableStatusBarWithReason:v9];
  statusBar = self->_statusBar;
  self->_statusBar = v12;

  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  if (_underlyingStatusBarViewIfAvailable)
  {
    sceneHandle2 = [(SBSceneViewController *)self sceneHandle];
    breadcrumbProvider = [sceneHandle2 breadcrumbProvider];

    if ([breadcrumbProvider hasAssistantBreadcrumb])
    {
      actionGestureRecognizer = [_underlyingStatusBarViewIfAvailable actionGestureRecognizer];
      v18 = SBLogSiri();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v51 = v19;
        v52 = 2114;
        v53 = actionGestureRecognizer;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating status bar with Assistant breadcrumb; breadcrumb gesture recognizer=%{public}@", buf, 0x16u);
      }

      v20 = +[SBAssistantController sharedInstance];
      [v20 statusBarActionGestureRecognizerDidChange:actionGestureRecognizer];
    }
  }

  actionGestureRecognizer2 = [_underlyingStatusBarViewIfAvailable actionGestureRecognizer];
  v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarDoubleTapTop_];
  doubleTapTopGestureRecognizer = self->_doubleTapTopGestureRecognizer;
  self->_doubleTapTopGestureRecognizer = v22;

  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer requireGestureRecognizerToFail:actionGestureRecognizer2];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelaysTouchesBegan:0];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelaysTouchesEnded:0];
  [_underlyingStatusBarViewIfAvailable addGestureRecognizer:self->_doubleTapTopGestureRecognizer];
  v24 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarScrollToTop_];
  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = v24;

  [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer requireGestureRecognizerToFail:actionGestureRecognizer2];
  [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer setDelegate:self];
  [_underlyingStatusBarViewIfAvailable addGestureRecognizer:self->_scrollToTopGestureRecognizer];
  v26 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v26 isInternalInstall];

  if (isInternalInstall)
  {
    v28 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarShowDebug_];
    showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
    self->_showDebugGestureRecognizer = v28;

    [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer requireGestureRecognizerToFail:actionGestureRecognizer2];
    [_underlyingStatusBarViewIfAvailable addGestureRecognizer:self->_showDebugGestureRecognizer];
  }

  layer = [(UIStatusBar *)self->_statusBar layer];
  [layer setHitTestsAsOpaque:1];

  [(SBDeviceApplicationSceneViewController *)self _setupStatusBarStylesFromSceneHandle:sceneHandle];
  [(UIStatusBar *)self->_statusBar requestResolvedStyle:0];
  [(UIStatusBar *)self->_statusBar setStyleDelegate:self];
  [(UIStatusBar *)self->_statusBar setLegibilityStyle:0];
  [(UIStatusBar *)self->_statusBar setForegroundColor:0];
  v31 = +[SBMedusaDomain rootSettings];
  if ([v31 statusBarDebugBackgroundColorsEnabled])
  {
    v32 = self->_statusBar;
    cyanColor = [MEMORY[0x277D75348] cyanColor];
    v34 = [cyanColor colorWithAlphaComponent:0.4];
    [(UIStatusBar *)v32 setBackgroundColor:v34];
  }

  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  [statusBarStateProvider addStatusBarObserver:self];

  breadcrumbProvider2 = [sceneHandle breadcrumbProvider];
  [breadcrumbProvider2 addObserver:self];

  statusBarStateProvider2 = [sceneHandle statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider2 backgroundActivitiesToSuppress];

  sceneIdentifier2 = [sceneHandle sceneIdentifier];
  [(SBDeviceApplicationSceneViewController *)self _applyBackgroundActivitiesToSuppress:backgroundActivitiesToSuppress toSceneWithIdentifier:sceneIdentifier2];

  view = [(SBDeviceApplicationSceneViewController *)self view];
  v41 = objc_alloc(MEMORY[0x277D65F80]);
  [view bounds];
  v42 = [v41 initWithFrame:?];
  statusBarWrapperView = self->_statusBarWrapperView;
  self->_statusBarWrapperView = v42;

  v44 = objc_alloc(MEMORY[0x277CF0D78]);
  [view bounds];
  v45 = [v44 initWithFrame:?];
  statusBarTransformView = self->_statusBarTransformView;
  self->_statusBarTransformView = v45;

  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setAutoresizingMask:18];
  [(UIView *)self->_statusBarWrapperView addSubview:self->_statusBar];
  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView addContentView:self->_statusBarWrapperView];
  [view addSubview:self->_statusBarTransformView];
}

- (BOOL)_isApplicationStatusBarHidden
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  statusBarHidden = [statusBarStateProvider statusBarHidden];

  return statusBarHidden;
}

- (void)_layoutStatusBar
{
  if (self->_statusBar)
  {
    view = [(SBDeviceApplicationSceneViewController *)self view];
    sceneHandle = [(SBSceneViewController *)self sceneHandle];
    application = [sceneHandle application];
    styleRequest = [(UIStatusBar *)self->_statusBar styleRequest];
    v46 = view;
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    statusBarOrientation = [sceneHandle statusBarOrientation];
    statusBarOrientation2 = statusBarOrientation;
    if (([application isMedusaCapable] & 1) == 0)
    {
      statusBarStateProvider = [sceneHandle statusBarStateProvider];
      statusBarOrientation2 = [statusBarStateProvider statusBarOrientation];
    }

    if (([sceneHandle isEffectivelyForeground] & 1) == 0)
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      statusBarOrientation = [_sceneView orientation];
    }

    if ((statusBarOrientation2 - 3) < 2 != (statusBarOrientation - 3) < 2)
    {
      v19 = v14;
    }

    else
    {
      v19 = v12;
    }

    [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(styleRequest orientation:{"style"), statusBarOrientation2}];
    v21 = v20;
    displayIdentity = [sceneHandle displayIdentity];
    currentConfiguration = [displayIdentity currentConfiguration];
    classicAppNonFullScreenWithHomeAffordance = [application classicAppNonFullScreenWithHomeAffordance];
    v44 = displayIdentity;
    if ([displayIdentity isMainRootDisplay])
    {
      if (classicAppNonFullScreenWithHomeAffordance)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([application classicAppPhoneAppRunningOnPad] & 1) == 0)
        {
          [SBUIController statusBarFrameForDeviceApplicationSceneHandle:sceneHandle displayConfiguration:currentConfiguration interfaceOrientation:statusBarOrientation2 statusBarStyleRequest:styleRequest withinBounds:0 inReferenceSpace:v8, v10, v12, v14];
          v8 = v26;
          v10 = v27;
          v19 = v28;
          v21 = v29;
        }
      }
    }

    v30 = statusBarOrientation2;
    v43 = +[SBMedusaDomain rootSettings];
    v45 = statusBarOrientation;
    v31 = styleRequest;
    v32 = application;
    if ([v43 statusBarDebugOffsettingEnabled])
    {
      v49.origin.x = v8;
      v49.origin.y = v10;
      v49.size.width = v19;
      v49.size.height = v21;
      CGRectGetHeight(v49);
    }

    _windowScene = [sceneHandle _windowScene];
    switcherController = [_windowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (isFlexibleWindowingEnabled)
    {
      memset(&v48, 0, 32);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v38 = WeakRetained;
      v39 = v31;
      if (WeakRetained)
      {
        [WeakRetained windowControlsLayoutForApplicationSceneViewController:self];
      }

      else
      {
        memset(&v48, 0, 32);
      }

      if (*&v48.a == 3 && ([sceneHandle statusBarParts] & 3) != 0)
      {
        [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      }
    }

    else
    {
      v39 = v31;
    }

    statusBar = self->_statusBar;
    SBRectWithSize();
    [(UIStatusBar *)statusBar setBounds:?];
    v41 = self->_statusBar;
    UIRectGetCenter();
    [(UIStatusBar *)v41 setCenter:?];
    if ((BSFloatIsOne() & 1) == 0)
    {
      v42 = self->_statusBar;
      CGAffineTransformMakeScale(&v48, 1.0, 1.0);
      [(UIStatusBar *)v42 setTransform:&v48];
    }

    [(UIStatusBar *)self->_statusBar setAutoresizingMask:34];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setContentOrientation:v30];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setContainerOrientation:v45];
    [(UIStatusBar *)self->_statusBar requestResolvedStyle:[(UIStatusBar *)self->_statusBar currentResolvedStyle]];
  }
}

- (void)_configureForCurrentSecureDisplayState
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  secureDisplayStateProvider = [_windowScene secureDisplayStateProvider];
  -[SBDeviceApplicationSceneViewController _configureForSecureDisplay:](self, "_configureForSecureDisplay:", [secureDisplayStateProvider isInSecureDisplayMode]);
}

- (void)_updateStatusBarState
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
  {
    if ([(NSHashTable *)self->_statusBarAssertions count]|| self->_shouldDrawStatusBarInsideSceneView)
    {
      allObjects = [(NSHashTable *)self->_statusBarAssertions allObjects];
      v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_144];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v28;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v27 + 1) + 8 * i);
            settings = [v11 settings];

            if (settings)
            {
              settings2 = [v11 settings];
              v14 = settings2;
              if (v8)
              {
                [v8 applySettings:settings2];
              }

              else
              {
                v8 = [settings2 mutableCopy];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      if (!self->_statusBar)
      {
        [(SBDeviceApplicationSceneViewController *)self _createStatusBar];
      }

      [(SBDeviceApplicationSceneViewController *)self _configureStatusBarWithCurrentStyleRequest];
      if (!self->_statusBar)
      {
        goto LABEL_33;
      }

      if (v8)
      {
        alpha = [v8 alpha];
        if (!alpha)
        {
          v18 = 1.0;
          goto LABEL_30;
        }

        alpha2 = [v8 alpha];
        [alpha2 floatValue];
        v18 = v17;
      }

      else
      {
        alpha = [(SBSceneViewController *)self sceneHandle];
        alpha2 = [alpha statusBarStateProvider];
        [alpha2 statusBarAlpha];
        v18 = v19;
      }

LABEL_30:
      _isApplicationStatusBarHidden = [(SBDeviceApplicationSceneViewController *)self _isApplicationStatusBarHidden];
      v24 = 0.0;
      if (!_isApplicationStatusBarHidden)
      {
        v24 = v18;
      }

      [(UIStatusBar *)self->_statusBar setAlpha:v24];
      [v8 setAlpha:&unk_283370BC8];
LABEL_33:
      [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:v8];
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [_sceneView setForcesStatusBarHidden:1];

      [(SBDeviceApplicationSceneViewController *)self _updateWindowControlsAdaptiveStyle];
      return;
    }

    [(SBDeviceApplicationSceneViewController *)self _removeStatusBar];
    [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:0];
    _sceneView2 = [(SBSceneViewController *)self _sceneView];
    [_sceneView2 setForcesStatusBarHidden:0];

    sceneHandle = [(SBSceneViewController *)self sceneHandle];
    statusBarStateProvider = [sceneHandle statusBarStateProvider];
    [statusBarStateProvider removeStatusBarObserver:self];

    breadcrumbProvider = [sceneHandle breadcrumbProvider];
    [breadcrumbProvider removeObserver:self];
  }
}

- (void)_configureStatusBarWithCurrentStyleRequest
{
  if (self->_statusBar)
  {
    sceneHandle = [(SBSceneViewController *)self sceneHandle];
    overrideStatusBarStyle = [(SBApplicationSceneViewController *)self overrideStatusBarStyle];
    if (overrideStatusBarStyle == -1)
    {
      [sceneHandle currentEffectiveStatusBarStyleRequest];
    }

    else
    {
      [sceneHandle statusBarEffectiveStyleRequestWithStyle:_SBStatusBarStyleFromLegacyStyle(overrideStatusBarStyle)];
    }
    v5 = ;
    [(UIStatusBar *)self->_statusBar setStyleRequest:v5];
    [(UIStatusBar *)self->_statusBar setHidden:[(SBDeviceApplicationSceneViewController *)self _isApplicationStatusBarHidden]];
    statusBarParts = [sceneHandle statusBarParts];
    [(UIStatusBar *)self->_statusBar sb_setEnabledStatusBarPartIdentifiersForStatusBarParts:statusBarParts];
    if (_UISolariumEnabled())
    {
      [(UIStatusBar *)self->_statusBar bs_setHitTestingDisabled:statusBarParts == 0];
    }

    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    [sceneHandle statusBarAvoidanceFrame];
    [statusBarManager setAvoidanceFrame:@"SBDeviceApplicationSceneViewController" reason:self->_statusBar statusBar:0 animationSettings:?];

    breadcrumbProvider = [sceneHandle breadcrumbProvider];
    v10 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke;
    v16[3] = &unk_2783A8ED8;
    v16[4] = self;
    v11 = breadcrumbProvider;
    v17 = v11;
    v12 = sceneHandle;
    v18 = v12;
    [v10 performWithoutAnimation:v16];
    if ([(_SBStatusBarChanges *)self->_statusBarChanges statusBarStyleChanged])
    {
      [(SBDeviceApplicationSceneViewController *)self _setStatusBarStyle:[(_SBStatusBarChanges *)self->_statusBarChanges statusBarStyle]];
    }

    if ([(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartStyleChanged])
    {
      statusBarPartStyle = [(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartStyle];
      statusBarPartIdentifier = [(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartIdentifier];
      [(SBDeviceApplicationSceneViewController *)self _setStatusBarStyle:statusBarPartStyle forPartWithIdentifier:statusBarPartIdentifier];
    }

    [(_SBStatusBarChanges *)self->_statusBarChanges invalidate];
    recordingIndicatorManager = [_sbWindowScene recordingIndicatorManager];
    [recordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
    [(SBDeviceApplicationSceneViewController *)self _layoutStatusBar];
  }
}

void __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1136) statusBar];
  if ([*(a1 + 40) hasBreadcrumb])
  {
    v3 = [*(a1 + 48) overlayStatusBarData];
    [v2 setOverlayData:v3];

    v4 = *(*(a1 + 32) + 1136);
    v5 = MEMORY[0x277D76290];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke_2;
    v7[3] = &unk_2783B2BF8;
    v8 = *(a1 + 40);
    v6 = [v5 actionWithBlock:v7];
    [v4 setAction:v6 forPartWithIdentifier:*MEMORY[0x277D775A0]];
  }

  else
  {
    [v2 setOverlayData:0];
    [*(*(a1 + 32) + 1136) setAction:0 forPartWithIdentifier:*MEMORY[0x277D775A0]];
  }
}

- (void)_createSceneOverlayViewProvidersIfNecessary
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_overlayViewProviders)
  {
    return;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  overlayViewProviders = self->_overlayViewProviders;
  self->_overlayViewProviders = v3;

  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  v6 = [[SBDeviceApplicationScreenTimeLockoutViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v6];
  v7 = [[SBDeviceApplicationRemoteTransientOverlayViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self handlesSceneBackedRemoteTransientOverlaysOnly:0];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v7];
  v8 = [[SBDeviceApplicationRemoteTransientOverlayViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self handlesSceneBackedRemoteTransientOverlaysOnly:1];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v8];
  v9 = [[SBDeviceApplicationAppClipOverlayViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v9];
  v10 = [[SBDeviceApplicationAppProtectionSceneOverlayViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v10];
  v11 = [(SBDeviceApplicationSceneOverlayViewProvider *)[SBDeviceApplicationMomentsUIViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v11];
  v21 = v7;
  v22 = v6;
  v20 = v8;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ([MEMORY[0x277D75658] usesInputSystemUI])
    {
      v14 = [(SBDeviceApplicationSceneOverlayViewProvider *)[SBDeviceApplicationInputUIViewProvider alloc] initWithSceneHandle:sceneHandle delegate:self];
      [(NSMutableArray *)self->_overlayViewProviders addObject:v14];
    }

    goto LABEL_8;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    goto LABEL_6;
  }

LABEL_8:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_overlayViewProviders;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v23 + 1) + 8 * v19++) noteDisplayModeChange:{-[SBSceneViewController displayMode](self, "displayMode")}];
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneViewController;
  [(SBDeviceApplicationSceneViewController *)&v3 viewDidLayoutSubviews];
  [(SBDeviceApplicationSceneViewController *)self _layoutStatusBar];
}

- (void)_removeStatusBar
{
  view = [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer view];
  [view removeGestureRecognizer:self->_scrollToTopGestureRecognizer];

  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = 0;

  view2 = [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer view];
  [view2 removeGestureRecognizer:self->_showDebugGestureRecognizer];

  showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
  self->_showDebugGestureRecognizer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_statusBarReusePool);
  [WeakRetained recycleStatusBar:self->_statusBar];

  statusBar = self->_statusBar;
  self->_statusBar = 0;

  objc_storeWeak(&self->_statusBarReusePool, 0);
  [(UIView *)self->_statusBarWrapperView removeFromSuperview];
  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView removeFromSuperview];
  statusBarWrapperView = self->_statusBarWrapperView;
  self->_statusBarWrapperView = 0;

  statusBarTransformView = self->_statusBarTransformView;
  self->_statusBarTransformView = 0;
}

- (int64_t)_currentStatusBarStyle
{
  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  v3 = _underlyingStatusBarViewIfAvailable;
  if (_underlyingStatusBarViewIfAvailable)
  {
    style = [_underlyingStatusBarViewIfAvailable style];
  }

  else
  {
    style = 0;
  }

  return style;
}

- (SBDeviceApplicationSceneViewController)initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBDeviceApplicationSceneViewController *)a2 initWithSceneHandle:handleCopy];
  }

  v13.receiver = self;
  v13.super_class = SBDeviceApplicationSceneViewController;
  v6 = [(SBApplicationSceneViewController *)&v13 initWithSceneHandle:handleCopy];
  if (v6)
  {
    [handleCopy setShouldApplyAppProtectionSceneSettings:1];
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v6->_homeGrabberSettings;
    v6->_homeGrabberSettings = rootSettings;

    objc_storeStrong(&v6->_sceneFlattenMode, *MEMORY[0x277CDA9E8]);
    v6->_sceneFullyOccluded = [handleCopy sceneFullyOccluded];
    v9 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v6->_switcherSettings;
    v6->_switcherSettings = v9;

    [handleCopy addObserver:v6];
    [(SBDeviceApplicationSceneViewController *)v6 _setRealStatusBarStyleDelegate:SBApp];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__willEnableSecureDisplay name:*MEMORY[0x277D66028] object:0];
    [defaultCenter addObserver:v6 selector:sel__didDisableSecureDisplay name:*MEMORY[0x277D66020] object:0];
  }

  return v6;
}

- (void)dealloc
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  [sceneHandle removeObserver:self];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  [statusBarStateProvider removeStatusBarObserver:self];

  breadcrumbProvider = [sceneHandle breadcrumbProvider];
  [breadcrumbProvider removeObserver:self];

  [(SBDeviceApplicationSceneViewController *)self _removeStatusBar];
  [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v6 dealloc];
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v4 invalidate];
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  [sceneHandle removeObserver:self];

  [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneViewController;
  [(SBDeviceApplicationSceneViewController *)&v5 didMoveToParentViewController:?];
  if (controller)
  {
    [(SBDeviceApplicationSceneViewController *)self _createSceneOverlayViewProvidersIfNecessary];
  }

  else
  {
    [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  }
}

- (void)setHomeGrabberDisplayMode:(int64_t)mode
{
  if (self->_homeGrabberDisplayMode != mode)
  {
    _shouldSuppressHomeGrabber = [(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber];
    self->_homeGrabberDisplayMode = mode;
    _shouldSuppressHomeGrabber2 = [(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber];
    if (_shouldSuppressHomeGrabber != _shouldSuppressHomeGrabber2)
    {
      v7 = _shouldSuppressHomeGrabber2;
      _sceneView = [(SBSceneViewController *)self _sceneView];
      if (v7)
      {
        [_sceneView tearDownHomeGrabberView];
      }

      else
      {
        homeGrabberPillSettings = [(SBDeviceApplicationSceneViewController *)self homeGrabberPillSettings];
        [_sceneView createHomeGrabberViewIfNecessaryWithSettings:homeGrabberPillSettings];
      }
    }
  }
}

- (SBHomeGrabberView)homeGrabberView
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  homeGrabberView = [_sceneView homeGrabberView];

  return homeGrabberView;
}

- (void)setRendersWhileLocked:(BOOL)locked
{
  if (self->_rendersWhileLocked != locked)
  {
    self->_rendersWhileLocked = locked;
    [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
  }
}

- (void)setSceneMinificationFilter:(id)filter
{
  filterCopy = filter;
  sceneMinificationFilter = self->_sceneMinificationFilter;
  if (sceneMinificationFilter != filterCopy)
  {
    v11 = filterCopy;
    v6 = [(NSString *)sceneMinificationFilter isEqual:filterCopy];
    filterCopy = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v11 copy];
      v8 = self->_sceneMinificationFilter;
      self->_sceneMinificationFilter = v7;

      isViewLoaded = [(SBDeviceApplicationSceneViewController *)self isViewLoaded];
      filterCopy = v11;
      if (isViewLoaded)
      {
        _sceneView = [(SBSceneViewController *)self _sceneView];
        [_sceneView setMinificationFilter:self->_sceneMinificationFilter];

        filterCopy = v11;
      }
    }
  }
}

- (void)setSceneRendersAsynchronously:(BOOL)asynchronously
{
  if (self->_sceneRendersAsynchronously != asynchronously)
  {
    self->_sceneRendersAsynchronously = asynchronously;
    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [_sceneView setRendersAsynchronously:self->_sceneRendersAsynchronously];
    }
  }
}

- (BOOL)sceneResizesHostedContext
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  resizesHostedContext = [_sceneView resizesHostedContext];

  return resizesHostedContext;
}

- (void)setSceneResizesHostedContext:(BOOL)context
{
  contextCopy = context;
  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView setResizesHostedContext:contextCopy];
}

- (void)setSceneFullyOccluded:(BOOL)occluded
{
  if (self->_sceneFullyOccluded != occluded)
  {
    occludedCopy = occluded;
    self->_sceneFullyOccluded = occluded;
    sceneHandle = [(SBSceneViewController *)self sceneHandle];
    [sceneHandle setSceneFullyOccluded:occludedCopy];

    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [(SBDeviceApplicationSceneViewController *)self _updateSceneFullyOccludedState:_sceneView fullyOccluded:self->_sceneFullyOccluded];
    }
  }
}

- (void)setSceneFlattenMode:(id)mode
{
  modeCopy = mode;
  v9 = modeCopy;
  if (!modeCopy)
  {
    [(SBDeviceApplicationSceneViewController *)a2 setSceneFlattenMode:?];
    modeCopy = 0;
  }

  if (![(NSString *)self->_sceneFlattenMode isEqualToString:modeCopy])
  {
    v6 = [v9 copy];
    sceneFlattenMode = self->_sceneFlattenMode;
    self->_sceneFlattenMode = v6;

    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      _sceneView = [(SBSceneViewController *)self _sceneView];
      [_sceneView setFlattenMode:self->_sceneFlattenMode];
    }
  }
}

- (void)_setStatusBarAssertions:(id)assertions
{
  assertionsCopy = assertions;
  if (self->_statusBarAssertions != assertionsCopy)
  {
    v7 = assertionsCopy;
    objc_storeStrong(&self->_statusBarAssertions, assertions);
    isViewLoaded = [(SBDeviceApplicationSceneViewController *)self isViewLoaded];
    assertionsCopy = v7;
    if (isViewLoaded)
    {
      [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
      assertionsCopy = v7;
    }
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView setBackgroundView:viewCopy];
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level
{
  hiddenCopy = hidden;
  v7 = objc_alloc_init(SBMutableStatusBarSettings);
  v8 = 1.0;
  if (hiddenCopy)
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [(SBMutableStatusBarSettings *)v7 setAlpha:v9];

  v10 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v7 atLevel:level];

  return v10;
}

- (id)statusBarAssertionWithStatusBarSettings:(id)settings atLevel:(unint64_t)level
{
  settingsCopy = settings;
  if (!self->_statusBarAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    statusBarAssertions = self->_statusBarAssertions;
    self->_statusBarAssertions = weakObjectsHashTable;
  }

  v9 = [[SBSceneViewStatusBarAssertion alloc] initWithStatusBarSettings:settingsCopy nubViewHidden:0x7FFFFFFFFFFFFFFFLL atLevel:level];
  [(SBSceneViewStatusBarAssertion *)v9 addObserver:self];
  [(NSHashTable *)self->_statusBarAssertions addObject:v9];
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];

  return v9;
}

- (void)statusBarAssertionDidInvalidate:(id)invalidate
{
  [(NSHashTable *)self->_statusBarAssertions removeObject:invalidate];

  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
}

uint64_t __63__SBDeviceApplicationSceneViewController__updateStatusBarState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "level")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 level];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)activateOverlayForViewProvider:(id)provider
{
  providerCopy = provider;
  overlayViewController = [providerCopy overlayViewController];
  parentViewController = [overlayViewController parentViewController];

  if (!parentViewController)
  {
    activeOverlayViewProviders = self->_activeOverlayViewProviders;
    if (!activeOverlayViewProviders)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_activeOverlayViewProviders;
      self->_activeOverlayViewProviders = v7;

      activeOverlayViewProviders = self->_activeOverlayViewProviders;
    }

    [(NSMutableArray *)activeOverlayViewProviders addObject:providerCopy];
    _sceneView = [(SBSceneViewController *)self _sceneView];
    overlayView = [overlayViewController overlayView];
    v11 = [(NSMutableArray *)self->_overlayViewProviders containsObject:providerCopy];
    [overlayViewController beginAppearanceTransition:1 animated:v11];
    [(SBDeviceApplicationSceneViewController *)self addChildViewController:overlayViewController];
    [_sceneView addOverlayView:overlayView withPriority:{objc_msgSend(providerCopy, "priority")}];
    [overlayViewController didMoveToParentViewController:self];
    [overlayViewController endAppearanceTransition];
    [providerCopy showContentWithAnimation:v11 completionHandler:0];
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarAppearanceForOverlayProvider:providerCopy];
    [(SBDeviceApplicationSceneViewController *)self _recalculateResignActiveAssertionForActiveOverlays];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
  }
}

- (void)deactivateOverlayForViewProvider:(id)provider
{
  providerCopy = provider;
  if ([(NSMutableArray *)self->_activeOverlayViewProviders containsObject:providerCopy])
  {
    overlayViewController = [providerCopy overlayViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__SBDeviceApplicationSceneViewController_deactivateOverlayForViewProvider___block_invoke;
    v7[3] = &unk_2783A8ED8;
    v7[4] = self;
    v8 = overlayViewController;
    v9 = providerCopy;
    v6 = overlayViewController;
    [v9 hideContentWithAnimation:1 completionHandler:v7];
  }
}

- (void)_deactivateOverlay:(id)overlay forViewProvider:(id)provider
{
  activeOverlayViewProviders = self->_activeOverlayViewProviders;
  providerCopy = provider;
  overlayCopy = overlay;
  lastObject = [(NSMutableArray *)activeOverlayViewProviders lastObject];
  [overlayCopy beginAppearanceTransition:0 animated:0];
  [overlayCopy willMoveToParentViewController:0];
  _sceneView = [(SBSceneViewController *)self _sceneView];
  overlayView = [overlayCopy overlayView];
  [_sceneView removeOverlayView:overlayView withPriority:{objc_msgSend(providerCopy, "priority")}];

  [overlayCopy removeFromParentViewController];
  [overlayCopy endAppearanceTransition];

  [(NSMutableArray *)self->_activeOverlayViewProviders removeObject:providerCopy];
  if ([(NSMutableArray *)self->_activeOverlayViewProviders count])
  {
    if (![lastObject affectsStatusBarPresentation])
    {
      goto LABEL_7;
    }

    v11 = objc_alloc_init(SBMutableStatusBarSettings);
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lastObject, "prefersStatusBarHidden") ^ 1}];
    [(SBMutableStatusBarSettings *)v11 setAlpha:v12];

    -[SBMutableStatusBarSettings setStyle:](v11, "setStyle:", [lastObject preferredStatusBarStyle]);
    [(SBSceneViewStatusBarAssertion *)self->_activeOverlayStatusBarAssertion setSettings:v11];
  }

  else
  {
    v13 = self->_activeOverlayViewProviders;
    self->_activeOverlayViewProviders = 0;

    activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
    if (!activeOverlayStatusBarAssertion)
    {
      goto LABEL_7;
    }

    [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion invalidate];
    v11 = self->_activeOverlayStatusBarAssertion;
    self->_activeOverlayStatusBarAssertion = 0;
  }

LABEL_7:
  [(SBDeviceApplicationSceneViewController *)self _recalculateResignActiveAssertionForActiveOverlays];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (BOOL)overlayViewProviderIsHostedInNonrotatingWindow:(id)window
{
  delegate = [(SBDeviceApplicationSceneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate applicationSceneViewControllerIsInNonrotatingWindow:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)windowSceneForOverlayViewProvider:(id)provider
{
  windowSceneManager = [SBApp windowSceneManager];
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  v6 = [windowSceneManager windowSceneForSceneHandle:sceneHandle];

  return v6;
}

- (BOOL)overlayViewProviderIsHostedInSecureWindow:(id)window
{
  view = [(SBDeviceApplicationSceneViewController *)self view];
  window = [view window];
  _isSecure = [objc_opt_class() _isSecure];

  return _isSecure;
}

- (id)hostWindowForOverlayViewProvider:(id)provider
{
  view = [(SBDeviceApplicationSceneViewController *)self view];
  window = [view window];

  return window;
}

- (id)initialTraitsParticipantForOverlayViewProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsParticipantForOverlayContainer);

  return WeakRetained;
}

- (void)overlayViewProviderNeedsStatusBarAppearanceUpdate:(id)update
{
  updateCopy = update;
  if ([(NSMutableArray *)self->_activeOverlayViewProviders containsObject:?])
  {
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarAppearanceForOverlayProvider:updateCopy];
  }
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v16 setDisplayMode:mode animationFactory:factory completion:completion];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_overlayViewProviders;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) noteDisplayModeChange:{mode, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)animationFactoryForImplicitTransitionFromMode:(int64_t)mode toMode:(int64_t)toMode defaultFactory:(id)factory
{
  factoryCopy = factory;
  if (toMode == 4 && (-[SBSceneViewController sceneHandle](self, "sceneHandle"), v8 = objc_claimAutoreleasedReturnValue(), [v8 application], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "info"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "shouldSkipCrossfadeToLive"), v10, v9, v8, (v11 & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = factoryCopy;
  }

  return v12;
}

- (void)sceneView:(id)view changedPreferredStatusBarStyleTo:(int64_t)to
{
  viewCopy = view;
  placeholderStatusBarAssertion = self->_placeholderStatusBarAssertion;
  if (to == -1)
  {
    [(SBSceneViewStatusBarAssertion *)placeholderStatusBarAssertion invalidate];
    v10 = self->_placeholderStatusBarAssertion;
    self->_placeholderStatusBarAssertion = 0;
  }

  else if (placeholderStatusBarAssertion)
  {
    settings = [(SBSceneViewStatusBarAssertion *)placeholderStatusBarAssertion settings];
    style = [settings style];

    if (style == to)
    {
      goto LABEL_8;
    }

    settings2 = [(SBSceneViewStatusBarAssertion *)self->_placeholderStatusBarAssertion settings];
    v10 = [settings2 mutableCopy];

    [(SBMutableStatusBarSettings *)v10 setStyle:to];
    [(SBSceneViewStatusBarAssertion *)self->_placeholderStatusBarAssertion setSettings:v10];
  }

  else
  {
    v10 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v10 setStyle:to];
    v11 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v10 atLevel:0];
    v12 = self->_placeholderStatusBarAssertion;
    self->_placeholderStatusBarAssertion = v11;
  }

LABEL_8:
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  sceneCopy = scene;
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  [sceneCopy _setSceneMaskingDelegate:self];
}

- (void)sceneHandle:(id)handle didMoveFromSceneManager:(id)manager
{
  [(SBDeviceApplicationSceneViewController *)self _configureStatusBarWithCurrentStyleRequest:handle];

  [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to
{
  _currentStatusBarStyle = [(SBDeviceApplicationSceneViewController *)self _currentStatusBarStyle];
  activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
  if (activeOverlayStatusBarAssertion)
  {
    settings = [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion settings];
    to = _SBStatusBarStyleFromLegacyStyle([settings style]);
  }

  if (_currentStatusBarStyle != to)
  {
    statusBarChanges = self->_statusBarChanges;
    if (!statusBarChanges)
    {
      v10 = objc_opt_new();
      v11 = self->_statusBarChanges;
      self->_statusBarChanges = v10;

      statusBarChanges = self->_statusBarChanges;
    }

    [(_SBStatusBarChanges *)statusBarChanges setStatusBarStyle:to];

    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  v7 = [(SBDeviceApplicationSceneViewController *)self _currentStatusBarStyleForPartWithIdentifier:?];
  activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
  if (activeOverlayStatusBarAssertion)
  {
    settings = [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion settings];
    to = _SBStatusBarStyleFromLegacyStyle([settings style]);
  }

  if (v7 != to)
  {
    statusBarChanges = self->_statusBarChanges;
    if (!statusBarChanges)
    {
      v11 = objc_opt_new();
      v12 = self->_statusBarChanges;
      self->_statusBarChanges = v11;

      statusBarChanges = self->_statusBarChanges;
    }

    [(_SBStatusBarChanges *)statusBarChanges setStatusBarPartStyle:to forPartWithIdentifier:withIdentifierCopy];
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation
{
  toCopy = to;
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self didUpdateStatusBarHidden:toCopy withAnimation:animation];
}

- (void)beginMaskingForReason:(int64_t)reason continuation:(id)continuation scene:(id)scene
{
  if (reason == 1)
  {
    continuationCopy = continuation;
    _sceneView = [(SBSceneViewController *)self _sceneView];
    [_sceneView enableTransitionOverlay:1];
    continuationCopy[2](continuationCopy, 0);
  }
}

- (void)invalidateMasking:(id)masking
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView enableTransitionOverlay:0];
}

- (int64_t)leadingStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _effectiveStyleForPartIdentifier:*MEMORY[0x277D775D0]];

  return _SBStatusBarLegacyStyleFromStyle(v2);
}

- (int64_t)trailingStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _effectiveStyleForPartIdentifier:*MEMORY[0x277D775E0]];

  return _SBStatusBarLegacyStyleFromStyle(v2);
}

- (id)backgroundActivitiesToSuppress
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (id)currentStatusBarStyleAttributes
{
  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  if (objc_opt_respondsToSelector())
  {
    styleAttributes = [_underlyingStatusBarViewIfAvailable styleAttributes];
  }

  else
  {
    styleAttributes = 0;
  }

  return styleAttributes;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation
{
  if ([(NSMutableArray *)self->_activeOverlayViewProviders count])
  {
    lastObject = [(NSMutableArray *)self->_activeOverlayViewProviders lastObject];
    orientation = [lastObject bestHomeAffordanceOrientationForOrientation:orientation];
  }

  return orientation;
}

- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  if ([sceneHandle wantsDeviceOrientationEventsEnabled] && !-[SBDeviceApplicationSceneViewController _statusBarHasMatchMoveAnimation](self, "_statusBarHasMatchMoveAnimation"))
  {

    if (animatedCopy)
    {
      [(SBDeviceApplicationSceneViewController *)self _addStatusBarMatchMoveAnimationForView:viewCopy];
    }
  }

  else
  {
  }

  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView willRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation alongsideContainerView:viewCopy animated:animatedCopy];

  sceneHandle2 = [(SBSceneViewController *)self sceneHandle];
  application = [sceneHandle2 application];
  if ([application classicAppPhoneAppRunningOnPad])
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (isChamoisOrFlexibleWindowing)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = self->_activeOverlayViewProviders;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v24 + 1) + 8 * v23++) willDoBoundsPreservingRotationFromInterfaceOrientation:orientation toInterfaceOrientation:{interfaceOrientation, v24}];
          }

          while (v21 != v23);
          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }

  else
  {
  }
}

- (id)prepareForContentRotation
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  prepareForContentRotation = [_sceneView prepareForContentRotation];

  return prepareForContentRotation;
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  v6 = [(SBSceneViewController *)self sceneHandle:orientation];
  if ([v6 wantsDeviceOrientationEventsEnabled])
  {
    _statusBarHasMatchMoveAnimation = [(SBDeviceApplicationSceneViewController *)self _statusBarHasMatchMoveAnimation];

    if (_statusBarHasMatchMoveAnimation)
    {

      [(SBDeviceApplicationSceneViewController *)self _removeStatusBarMatchMoveAnimation];
    }
  }

  else
  {
  }
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation
{
  _sceneView = [(SBSceneViewController *)self _sceneView];
  [_sceneView willRotateFromInterfaceOrientation:orientation toInterfaceOrientation:orientation alongsideContainerView:0 animated:0];
}

- (void)containerDidUpdateTraitsParticipant:(id)participant
{
  v15 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  objc_storeWeak(&self->_traitsParticipantForOverlayContainer, participantCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_activeOverlayViewProviders;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) containerDidUpdateTraitsParticipant:{participantCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  overridesCopy = overrides;
  if (*&self->_conformanceFlags)
  {
    overridesCopy = [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate statusBar:bar effectiveStyleOverridesForRequestedStyle:style overrides:overrides];
  }

  v7 = [(SBSceneViewController *)self sceneHandle:bar];
  statusBarStateProvider = [v7 statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider backgroundActivitiesToSuppress];

  v10 = STUIStyleOverridesForBackgroundActivityIdentifiers();
  return overridesCopy & ~v10;
}

- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)style
{
  if ((*&self->_conformanceFlags & 4) != 0)
  {
    return [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate overriddenRequestedStyleFromStyle:style];
  }

  else
  {
    return style;
  }
}

- (id)statusBar:(id)bar effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)identifiers
{
  barCopy = bar;
  identifiersCopy = identifiers;
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider backgroundActivitiesToSuppress];

  v11 = identifiersCopy;
  if ((*&self->_conformanceFlags & 2) != 0)
  {
    v11 = [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate statusBar:barCopy effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:identifiersCopy];
  }

  v12 = [v11 mutableCopy];
  [v12 minusSet:backgroundActivitiesToSuppress];

  return v12;
}

- (void)_destroySceneOverlayViewProviders
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSMutableArray *)self->_activeOverlayViewProviders copy];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBDeviceApplicationSceneViewController *)self deactivateOverlayForViewProvider:*(*(&v19 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_activeOverlayViewProviders removeAllObjects];
  activeOverlayViewProviders = self->_activeOverlayViewProviders;
  self->_activeOverlayViewProviders = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_overlayViewProviders;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_overlayViewProviders removeAllObjects];
  overlayViewProviders = self->_overlayViewProviders;
  self->_overlayViewProviders = 0;
}

- (void)_updateStatusBarAppearanceForOverlayProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy affectsStatusBarPresentation])
  {
    v4 = objc_alloc_init(SBMutableStatusBarSettings);
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(providerCopy, "prefersStatusBarHidden") ^ 1}];
    [(SBMutableStatusBarSettings *)v4 setAlpha:v5];

    -[SBMutableStatusBarSettings setStyle:](v4, "setStyle:", [providerCopy preferredStatusBarStyle]);
    activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
    if (activeOverlayStatusBarAssertion)
    {
      [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion setSettings:v4];
    }

    else
    {
      v7 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v4 atLevel:1];
      v8 = self->_activeOverlayStatusBarAssertion;
      self->_activeOverlayStatusBarAssertion = v7;
    }
  }
}

- (void)_recalculateResignActiveAssertionForActiveOverlays
{
  _activeOverlaysWantResignActiveAssertion = [(SBDeviceApplicationSceneViewController *)self _activeOverlaysWantResignActiveAssertion];
  resignActiveAssertion = self->_resignActiveAssertion;
  if (_activeOverlaysWantResignActiveAssertion)
  {
    if (!resignActiveAssertion)
    {
      objc_initWeak(&location, self);
      v5 = +[SBSceneManagerCoordinator sharedInstance];
      sceneDeactivationManager = [v5 sceneDeactivationManager];
      v7 = [sceneDeactivationManager newAssertionWithReason:7];
      v8 = self->_resignActiveAssertion;
      self->_resignActiveAssertion = v7;

      v9 = self->_resignActiveAssertion;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __92__SBDeviceApplicationSceneViewController__recalculateResignActiveAssertionForActiveOverlays__block_invoke;
      v10[3] = &unk_2783B52B8;
      objc_copyWeak(&v11, &location);
      [(UIApplicationSceneDeactivationAssertion *)v9 acquireWithPredicate:v10 transitionContext:0];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else if (resignActiveAssertion)
  {

    [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  }
}

uint64_t __92__SBDeviceApplicationSceneViewController__recalculateResignActiveAssertionForActiveOverlays__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 identifier];

  v6 = [WeakRetained sceneHandle];
  v7 = [v6 sceneIdentifier];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (void)_relinquishResignActiveAssertion
{
  [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  resignActiveAssertion = self->_resignActiveAssertion;
  self->_resignActiveAssertion = 0;
}

- (BOOL)_activeOverlaysWantResignActiveAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_activeOverlayViewProviders;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) wantsResignActiveAssertion])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_setupStatusBarStylesFromSceneHandle:(id)handle
{
  handleCopy = handle;
  sceneIfExists = [handleCopy sceneIfExists];
  if (sceneIfExists)
  {
    statusBarStateProvider = [handleCopy statusBarStateProvider];
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:](self, "_setStatusBarStyle:", [statusBarStateProvider statusBarStyle]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [statusBarStateProvider statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775D0]], *MEMORY[0x277D775D0]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [statusBarStateProvider statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775B0]], *MEMORY[0x277D775B0]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [statusBarStateProvider statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775E0]], *MEMORY[0x277D775E0]);
  }
}

- (void)_setRealStatusBarStyleDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_realStatusBarStyleDelegate != delegateCopy)
  {
    v9 = delegateCopy;
    objc_storeStrong(&self->_realStatusBarStyleDelegate, delegate);
    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFB | v6;
    v7 = (objc_opt_respondsToSelector() & 1) == 0;
    delegateCopy = v9;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFD | v8;
  }
}

- (void)_applyBackgroundActivitiesToSuppress:(id)suppress toSceneWithIdentifier:(id)identifier
{
  statusBar = self->_statusBar;
  if (statusBar)
  {
    v5 = [(UIStatusBar *)self->_statusBar currentResolvedStyle:suppress];

    [(UIStatusBar *)statusBar requestResolvedStyle:v5];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_doubleTapTopGestureRecognizer != begin)
  {
    return 1;
  }

  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (*&self->_scrollToTopGestureRecognizer == __PAIR128__(gestureRecognizerCopy, recognizerCopy))
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
  }

  else
  {
    isChamoisOrFlexibleWindowing = 0;
  }

  return isChamoisOrFlexibleWindowing;
}

- (void)_statusBarDoubleTapTop:(id)top
{
  topCopy = top;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self statusBarDoubleTapped:topCopy];
}

- (void)_statusBarTapped:(id)tapped type:(int64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = self->_overlayViewProviders;
  v8 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(WeakRetained);
      }

      if ([*(*(&v12 + 1) + 8 * v11) handledStatusBarTap:tappedCopy type:{type, v12}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(NSMutableArray *)WeakRetained applicationSceneViewController:self statusBarTapped:tappedCopy tapActionType:type];
  }
}

- (void)_setStatusBarStyle:(int64_t)style
{
  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  [_underlyingStatusBarViewIfAvailable setStyle:style];
}

- (int64_t)_currentStatusBarStyleForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  v6 = _underlyingStatusBarViewIfAvailable;
  if (_underlyingStatusBarViewIfAvailable)
  {
    v7 = [_underlyingStatusBarViewIfAvailable styleForPartWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setStatusBarStyle:(int64_t)style forPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _underlyingStatusBarViewIfAvailable = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  [_underlyingStatusBarViewIfAvailable setStyle:style forPartWithIdentifier:identifierCopy];
}

- (BOOL)_statusBarHasMatchMoveAnimation
{
  layer = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  v3 = [layer animationForKey:@"RotationMatchMoveAnimation"];
  v4 = v3 != 0;

  return v4;
}

- (void)_addStatusBarMatchMoveAnimationForView:(id)view
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD9EE8];
  viewCopy = view;
  animation = [v4 animation];
  layer = [viewCopy layer];

  [animation setSourceLayer:layer];
  [animation setDuration:INFINITY];
  [animation setFillMode:*MEMORY[0x277CDA230]];
  [animation setRemovedOnCompletion:0];
  [animation setAppliesX:0];
  [animation setAppliesY:0];
  [animation setAppliesScale:1];
  [animation setUsesNormalizedCoordinates:1];
  v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
  v14[0] = v8;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
  v14[1] = v9;
  v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
  v14[2] = v10;
  v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
  v14[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [animation setSourcePoints:v12];

  layer2 = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  [layer2 addAnimation:animation forKey:@"RotationMatchMoveAnimation"];
}

- (void)_removeStatusBarMatchMoveAnimation
{
  layer = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  [layer removeAnimationForKey:@"RotationMatchMoveAnimation"];
}

- (int64_t)_effectiveStyleForPartIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];

  statusBarStyle = [statusBarStateProvider statusBarStyle];
  statusBarPartStyles = [statusBarStateProvider statusBarPartStyles];
  v9 = [statusBarPartStyles objectForKey:identifierCopy];

  if (v9)
  {
    integerValue = [v9 integerValue];
    if (integerValue != 4)
    {
      statusBarStyle = integerValue;
    }
  }

  return statusBarStyle;
}

- (void)_updateSceneFullyOccludedState:(id)state fullyOccluded:(BOOL)occluded
{
  occludedCopy = occluded;
  stateCopy = state;
  windowingSettings = [(SBAppSwitcherSettings *)self->_switcherSettings windowingSettings];
  updateWindowLayerFullOcclusion = [windowingSettings updateWindowLayerFullOcclusion];

  if (updateWindowLayerFullOcclusion)
  {
    [stateCopy setFullyOccluded:occludedCopy];
  }
}

- (void)_updateWindowControlsAdaptiveStyle
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];

  statusBarPartStyles = [statusBarStateProvider statusBarPartStyles];
  v5 = [statusBarPartStyles objectForKey:@"trafficLightPartIdentifier"];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
    if (integerValue == 1)
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_19;
    }

    if (integerValue == 2)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_19;
    }
  }

  statusBarStyle = [statusBarStateProvider statusBarStyle];
  if (statusBarStyle > 3)
  {
    if (statusBarStyle != 4)
    {
      v8 = statusBarStyle == 64 || statusBarStyle == 128;
      if (statusBarStyle == 64)
      {
        v9 = 2;
      }

      else
      {
        v9 = statusBarStyle == 128;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!statusBarStyle)
  {
LABEL_18:
    v9 = 0;
    v8 = 1;
    goto LABEL_19;
  }

  v8 = 0;
  if (statusBarStyle == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = statusBarStyle == 2;
  }

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self didRequestWindowControlsAdaptiveStyle:v9 adaptive:v8];
}

- (void)_configureForSecureDisplay:(BOOL)display
{
  displayCopy = display;
  v35 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  secureDisplayStateProvider = [_windowScene secureDisplayStateProvider];
  supportsSecureDisplayMode = [secureDisplayStateProvider supportsSecureDisplayMode];

  v9 = supportsSecureDisplayMode & displayCopy;
  if (v9 != 1 || [(SBDeviceApplicationSceneViewController *)self rendersWhileLocked])
  {
    [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];
    liveContentDisableAssertion = self->_liveContentDisableAssertion;
    self->_liveContentDisableAssertion = 0;
LABEL_4:

    goto LABEL_5;
  }

  if (!self->_liveContentDisableAssertion)
  {
    liveContentDisableAssertion = [(SBSceneViewController *)self _sceneView];
    v23 = [liveContentDisableAssertion acquireLiveContentDisableAssertionForReason:@"Secure Rendering Enabled"];
    v24 = self->_liveContentDisableAssertion;
    self->_liveContentDisableAssertion = v23;

    goto LABEL_4;
  }

LABEL_5:
  if (v9 != [(SBDeviceApplicationSceneViewController *)self rendersWhileLocked])
  {
    _sceneView = [(SBSceneViewController *)self _sceneView];
    effectiveDisplayMode = [_sceneView effectiveDisplayMode];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = self->_overlayViewProviders;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v29 + 1) + 8 * v17++) noteDisplayModeChange:effectiveDisplayMode];
        }

        while (v15 != v17);
        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(NSMutableArray *)self->_activeOverlayViewProviders copy];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * v22++) configureForSecureDisplay:v9];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (SBDeviceApplicationSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSceneHandle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewController.m" lineNumber:159 description:{@"SceneHandle must be of type SBDeviceApplicationSceneHandle, but was: %@", a3}];
}

- (void)setSceneFlattenMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewController.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"sceneFlattenMode"}];
}

@end