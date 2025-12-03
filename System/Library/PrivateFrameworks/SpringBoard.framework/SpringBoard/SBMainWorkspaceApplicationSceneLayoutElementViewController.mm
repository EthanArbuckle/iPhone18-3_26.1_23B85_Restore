@interface SBMainWorkspaceApplicationSceneLayoutElementViewController
- (BOOL)_shouldDisplayLayoutElementBecomeActive;
- (BOOL)isBlurred;
- (NSString)description;
- (SBApplicationSceneBackgroundView)backgroundView;
- (SBHomeGrabberView)homeGrabberView;
- (SBMainWorkspaceApplicationSceneLayoutElementViewController)initWithDisplayIdentity:(id)identity;
- (double)blurViewIconScale;
- (double)currentStatusBarHeight;
- (id)_applicationSceneViewController;
- (id)_applicationSceneViewControllerForSceneHandle:(id)handle;
- (id)_deviceApplicationSceneViewController;
- (id)_deviceApplicationSceneViewController:(id)controller;
- (id)_medusaDecoratedVC;
- (id)_medusaDecoratedVC:(id)c;
- (id)backgroundActivitiesToSuppress;
- (id)containerViewForBlurContentView;
- (id)currentStatusBarStyleAttributes;
- (id)prepareForContentRotation;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level;
- (int64_t)_overrideStatusBarOrientationGivenFallbackOrientation:(int64_t)orientation;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation;
- (int64_t)homeGrabberDisplayMode;
- (int64_t)leadingStatusBarStyle;
- (int64_t)trailingStatusBarStyle;
- (unint64_t)supportedContentInterfaceOrientations;
- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)reason;
- (void)_configureViewController:(id)controller;
- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)reason;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)prepareForReuse;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)setBackgroundView:(id)view;
- (void)setBlurViewIconScale:(double)scale;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setDarkenViewAlpha:(double)alpha;
- (void)setDropInteraction:(id)interaction;
- (void)setHomeGrabberDisplayMode:(int64_t)mode;
- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion;
- (void)setMaskDisplayCorners:(BOOL)corners forReason:(id)reason;
- (void)setNubViewHidden:(BOOL)hidden;
- (void)setNubViewHighlighted:(BOOL)highlighted;
- (void)setShadowOffset:(double)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation;
- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated;
@end

@implementation SBMainWorkspaceApplicationSceneLayoutElementViewController

- (SBMainWorkspaceApplicationSceneLayoutElementViewController)initWithDisplayIdentity:(id)identity
{
  v10.receiver = self;
  v10.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  v3 = [(SBAppContainerViewController *)&v10 initWithDisplayIdentity:identity];
  v4 = v3;
  if (v3)
  {
    v3->_nubViewHidden = 1;
    v3->_nubViewHighlighted = 0;
    v3->_shadowOpacity = 0.0;
    v3->_shadowOffset = 0.0;
    v5 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:SBScreenDisplayCornerRadius()];
    cornerRadiusConfiguration = v4->_cornerRadiusConfiguration;
    v4->_cornerRadiusConfiguration = v5;

    v4->_clipsToBounds = 1;
    v4->_darkenViewAlpha = 0.0;
    v7 = [MEMORY[0x277CBEB58] set];
    maskDisplayCornersReasons = v4->_maskDisplayCornersReasons;
    v4->_maskDisplayCornersReasons = v7;
  }

  return v4;
}

- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion
{
  enabledCopy = enabled;
  beganCopy = began;
  completionCopy = completion;
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_applicationSceneViewController setLiveContentBlurEnabled:enabledCopy duration:beganCopy blurDelay:completionCopy iconViewScale:duration began:delay completion:scale];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (double)blurViewIconScale
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  v3 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [_applicationSceneViewController blurViewIconScale];
    v3 = v4;
  }

  return v3;
}

- (void)setBlurViewIconScale:(double)scale
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_applicationSceneViewController setBlurViewIconScale:scale];
  }
}

- (BOOL)isBlurred
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isBlurred = [_applicationSceneViewController isBlurred];
  }

  else
  {
    isBlurred = 0;
  }

  return isBlurred;
}

- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)reason
{
  reasonCopy = reason;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  [_medusaDecoratedVC _beginRequiringSceneViewMatchMoveAnimationForReason:reasonCopy];
}

- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)reason
{
  reasonCopy = reason;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  [_medusaDecoratedVC _endRequiringSceneViewMatchMoveAnimationForReason:reasonCopy];
}

- (NSString)description
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  v4 = @"NO";
  if ((objc_opt_isKindOfClass() & 1) != 0 && [_applicationSceneViewController isBlurred])
  {
    v4 = @"YES";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  sceneHandle = [(SBAppContainerViewController *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  _applicationSceneViewController2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v11 = [v5 stringWithFormat:@"<%@:%p (%@) - %@ - blurred=%@>", v7, self, sceneIdentifier, _applicationSceneViewController2, v4];

  return v11;
}

- (void)setClipsToBounds:(BOOL)bounds
{
  if (self->_clipsToBounds != bounds)
  {
    self->_clipsToBounds = bounds;
  }
}

- (void)setDarkenViewAlpha:(double)alpha
{
  if (self->_darkenViewAlpha != alpha)
  {
    self->_darkenViewAlpha = alpha;
    _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [_medusaDecoratedVC setDarkenViewAlpha:alpha];
  }
}

- (void)setDropInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (self->_dropInteraction != interactionCopy)
  {
    v7 = interactionCopy;
    objc_storeStrong(&self->_dropInteraction, interaction);
    _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [_medusaDecoratedVC setDropInteraction:v7];

    interactionCopy = v7;
  }
}

- (void)setHomeGrabberDisplayMode:(int64_t)mode
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController setHomeGrabberDisplayMode:mode];
}

- (int64_t)homeGrabberDisplayMode
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  homeGrabberDisplayMode = [_applicationSceneViewController homeGrabberDisplayMode];

  return homeGrabberDisplayMode;
}

- (id)prepareForContentRotation
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  prepareForContentRotation = [_applicationSceneViewController prepareForContentRotation];

  return prepareForContentRotation;
}

- (void)setShadowOpacity:(double)opacity
{
  if (self->_shadowOpacity != opacity)
  {
    self->_shadowOpacity = opacity;
  }
}

- (void)setShadowOffset:(double)offset
{
  if (self->_shadowOffset != offset)
  {
    self->_shadowOffset = offset;
  }
}

- (void)setCornerRadiusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(BSCornerRadiusConfiguration *)self->_cornerRadiusConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [configurationCopy copy];
    cornerRadiusConfiguration = self->_cornerRadiusConfiguration;
    self->_cornerRadiusConfiguration = v4;
  }
}

- (void)setMaskDisplayCorners:(BOOL)corners forReason:(id)reason
{
  maskDisplayCornersReasons = self->_maskDisplayCornersReasons;
  if (corners)
  {
    [(NSMutableSet *)maskDisplayCornersReasons addObject:reason];
  }

  else
  {
    [(NSMutableSet *)maskDisplayCornersReasons removeObject:reason];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  coordinatorCopy = coordinator;
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController:v9.receiver];
  [v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
}

- (int64_t)_overrideStatusBarOrientationGivenFallbackOrientation:(int64_t)orientation
{
  sceneHandle = [(SBAppContainerViewController *)self sceneHandle];
  currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];
  if (currentInterfaceOrientation)
  {
    v7 = currentInterfaceOrientation;
    contentWrapperInterfaceOrientation = [(SBLayoutElementViewController *)self contentWrapperInterfaceOrientation];
    if (v7 != contentWrapperInterfaceOrientation)
    {
      v9 = contentWrapperInterfaceOrientation;
      if (![sceneHandle isEffectivelyForeground])
      {
        v7 = v9;
      }
    }
  }

  else
  {
    v7 = [sceneHandle activationInterfaceOrientationForOrientation:orientation];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  [(SBAppContainerViewController *)&v4 prepareForReuse];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setNubViewHidden:1];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setNubViewHighlighted:0];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setShadowOpacity:0.0];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setShadowOffset:0.0];
  v3 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:SBScreenDisplayCornerRadius()];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setCornerRadiusConfiguration:v3];

  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setClipsToBounds:1];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setDarkenViewAlpha:0.0];
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self setDropInteraction:0];
  [(NSMutableSet *)self->_maskDisplayCornersReasons removeAllObjects];
}

- (unint64_t)supportedContentInterfaceOrientations
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  supportedContentInterfaceOrientations = [(SBLayoutElementViewController *)&v7 supportedContentInterfaceOrientations];
  sceneHandle = [(SBAppContainerViewController *)self sceneHandle];
  v5 = sceneHandle;
  if (sceneHandle)
  {
    supportedContentInterfaceOrientations = [sceneHandle _mainSceneSupportedInterfaceOrientations];
  }

  return supportedContentInterfaceOrientations;
}

- (BOOL)_shouldDisplayLayoutElementBecomeActive
{
  v37 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBAppContainerViewController *)self sceneHandle];
  v4 = sceneHandle;
  if (sceneHandle)
  {
    sceneIfExists = [sceneHandle sceneIfExists];
    if (sceneIfExists && ![v4 isEffectivelyForeground])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      v7 = [v6 isSuspendedUnderLock] ^ 1;
    }

    v14 = SBLogAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      layoutElement = [(SBLayoutElementViewController *)self layoutElement];
      uniqueIdentifier = [layoutElement uniqueIdentifier];
      v18 = NSStringFromBOOL();
      [v4 isEffectivelyForeground];
      v19 = NSStringFromBOOL();
      v20 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      [v20 isSuspendedUnderLock];
      v21 = NSStringFromBOOL();
      sceneIfExists2 = [v4 sceneIfExists];
      *buf = 138544642;
      v26 = v16;
      v27 = 2114;
      v28 = uniqueIdentifier;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = sceneIfExists2;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ shouldDisplayLayoutElementBecomeActive=%{public}@ because isEffectivelyForeground=%{public}@ isSuspendedUnderLock=%{public}@ sceneIfExists=%{public}@", buf, 0x3Eu);
    }

    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "sceneHandle=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      layoutElement2 = [(SBLayoutElementViewController *)self layoutElement];
      uniqueIdentifier2 = [layoutElement2 uniqueIdentifier];
      layoutState = [(SBLayoutElementViewController *)self layoutState];
      *buf = 138543874;
      v26 = v10;
      v27 = 2114;
      v28 = uniqueIdentifier2;
      v29 = 2114;
      v30 = layoutState;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ shouldDisplayLayoutElementBecomeActive=NO because there is no scene handle. layout state %{public}@", buf, 0x20u);
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_applicationSceneViewController
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  _applicationSceneViewController = [(SBAppContainerViewController *)&v4 _applicationSceneViewController];

  return _applicationSceneViewController;
}

- (id)_applicationSceneViewControllerForSceneHandle:(id)handle
{
  handleCopy = handle;
  if (([handleCopy isDeviceApplicationSceneHandle] & 1) == 0)
  {
    [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)a2 _applicationSceneViewControllerForSceneHandle:?];
  }

  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v7 = _applicationSceneViewController;
  if (_applicationSceneViewController)
  {
    v8 = _applicationSceneViewController;
  }

  else
  {
    _sbWindowScene = [(SBLayoutElementViewController *)self _sbWindowScene];
    supportsMultitasking = [_sbWindowScene supportsMultitasking];

    if (supportsMultitasking)
    {
      layoutElement = [(SBLayoutElementViewController *)self layoutElement];
      layoutRole = [layoutElement layoutRole];

      v8 = [[SBMedusaDecoratedDeviceApplicationSceneViewController alloc] initWithDeviceApplicationSceneHandle:handleCopy layoutRole:layoutRole];
    }

    else
    {
      v8 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:handleCopy];
    }
  }

  v13 = v8;

  return v13;
}

- (void)_configureViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  controllerCopy = controller;
  [(SBAppContainerViewController *)&v8 _configureViewController:controllerCopy];
  v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC:controllerCopy, v8.receiver, v8.super_class];

  if (v5)
  {
    [v5 setNubViewHidden:{-[SBMainWorkspaceApplicationSceneLayoutElementViewController isNubViewHidden](self, "isNubViewHidden")}];
    [v5 setNubViewHighlighted:{-[SBMainWorkspaceApplicationSceneLayoutElementViewController isNubViewHighlighted](self, "isNubViewHighlighted")}];
    [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self darkenViewAlpha];
    [v5 setDarkenViewAlpha:?];
    dropInteraction = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self dropInteraction];
    [v5 setDropInteraction:dropInteraction];

    layoutElement = [(SBLayoutElementViewController *)self layoutElement];
    [v5 setLayoutRole:objc_msgSend(layoutElement spaceConfiguration:"layoutRole") floatingConfiguration:0 sizingPolicy:{0, 0}];
  }
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  [(SBAppContainerViewController *)&v5 sceneHandle:handle didCreateScene:scene];
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementVisibility];
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level
{
  hiddenCopy = hidden;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  v10 = _medusaDecoratedVC;
  if (_medusaDecoratedVC)
  {
    v11 = [_medusaDecoratedVC statusBarAssertionWithStatusBarHidden:hiddenCopy nubViewHidden:viewHidden atLevel:level];
  }

  else
  {
    _deviceApplicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
    v13 = _deviceApplicationSceneViewController;
    if (_deviceApplicationSceneViewController)
    {
      v11 = [_deviceApplicationSceneViewController statusBarAssertionWithStatusBarHidden:hiddenCopy atLevel:level];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)setNubViewHidden:(BOOL)hidden
{
  if (self->_nubViewHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_nubViewHidden = hidden;
    _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [_medusaDecoratedVC setNubViewHidden:hiddenCopy];
  }
}

- (void)setNubViewHighlighted:(BOOL)highlighted
{
  if (self->_nubViewHighlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_nubViewHighlighted = highlighted;
    _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [_medusaDecoratedVC setNubViewHighlighted:highlightedCopy];
  }
}

- (SBHomeGrabberView)homeGrabberView
{
  _deviceApplicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
  homeGrabberView = [_deviceApplicationSceneViewController homeGrabberView];
  v5 = homeGrabberView;
  if (homeGrabberView)
  {
    homeGrabberView2 = homeGrabberView;
  }

  else
  {
    _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    homeGrabberView2 = [_medusaDecoratedVC homeGrabberView];
  }

  return homeGrabberView2;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation
{
  _deviceApplicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
  v5 = [_deviceApplicationSceneViewController bestHomeAffordanceOrientationForOrientation:orientation];

  return v5;
}

- (SBApplicationSceneBackgroundView)backgroundView
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  backgroundView = [_applicationSceneViewController backgroundView];

  return backgroundView;
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController setBackgroundView:viewCopy];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [_medusaDecoratedVC layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [_medusaDecoratedVC layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [_medusaDecoratedVC layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
  }
}

- (id)containerViewForBlurContentView
{
  _medusaDecoratedVC = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  _blurViewContainerView = [_medusaDecoratedVC _blurViewContainerView];

  return _blurViewContainerView;
}

- (id)_medusaDecoratedVC
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC:_applicationSceneViewController];

  return v4;
}

- (id)_medusaDecoratedVC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_deviceApplicationSceneViewController
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController:_applicationSceneViewController];

  return v4;
}

- (id)_deviceApplicationSceneViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = controllerCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)leadingStatusBarStyle
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  leadingStatusBarStyle = [_applicationSceneViewController leadingStatusBarStyle];

  return leadingStatusBarStyle;
}

- (int64_t)trailingStatusBarStyle
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  trailingStatusBarStyle = [_applicationSceneViewController trailingStatusBarStyle];

  return trailingStatusBarStyle;
}

- (id)backgroundActivitiesToSuppress
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  backgroundActivitiesToSuppress = [_applicationSceneViewController backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (double)currentStatusBarHeight
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController currentStatusBarHeight];
  v4 = v3;

  return v4;
}

- (id)currentStatusBarStyleAttributes
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  currentStatusBarStyleAttributes = [_applicationSceneViewController currentStatusBarStyleAttributes];

  return currentStatusBarStyleAttributes;
}

- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController willRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation alongsideContainerView:viewCopy animated:animatedCopy];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController didRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation];
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation
{
  _applicationSceneViewController = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [_applicationSceneViewController willPerformNonAnimatedTransitionToInterfaceOrientation:orientation];
}

- (void)_applicationSceneViewControllerForSceneHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainWorkspaceApplicationSceneLayoutElementViewController.m" lineNumber:337 description:@"This class cannot work with anything other than a SBDeviceApplicationSceneHandle."];
}

@end