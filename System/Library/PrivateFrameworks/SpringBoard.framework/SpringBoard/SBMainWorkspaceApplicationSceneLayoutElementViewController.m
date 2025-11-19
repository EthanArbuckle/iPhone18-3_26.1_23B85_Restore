@interface SBMainWorkspaceApplicationSceneLayoutElementViewController
- (BOOL)_shouldDisplayLayoutElementBecomeActive;
- (BOOL)isBlurred;
- (NSString)description;
- (SBApplicationSceneBackgroundView)backgroundView;
- (SBHomeGrabberView)homeGrabberView;
- (SBMainWorkspaceApplicationSceneLayoutElementViewController)initWithDisplayIdentity:(id)a3;
- (double)blurViewIconScale;
- (double)currentStatusBarHeight;
- (id)_applicationSceneViewController;
- (id)_applicationSceneViewControllerForSceneHandle:(id)a3;
- (id)_deviceApplicationSceneViewController;
- (id)_deviceApplicationSceneViewController:(id)a3;
- (id)_medusaDecoratedVC;
- (id)_medusaDecoratedVC:(id)a3;
- (id)backgroundActivitiesToSuppress;
- (id)containerViewForBlurContentView;
- (id)currentStatusBarStyleAttributes;
- (id)prepareForContentRotation;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 nubViewHidden:(int64_t)a4 atLevel:(unint64_t)a5;
- (int64_t)_overrideStatusBarOrientationGivenFallbackOrientation:(int64_t)a3;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3;
- (int64_t)homeGrabberDisplayMode;
- (int64_t)leadingStatusBarStyle;
- (int64_t)trailingStatusBarStyle;
- (unint64_t)supportedContentInterfaceOrientations;
- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)a3;
- (void)_configureViewController:(id)a3;
- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)prepareForReuse;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)setBackgroundView:(id)a3;
- (void)setBlurViewIconScale:(double)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setDarkenViewAlpha:(double)a3;
- (void)setDropInteraction:(id)a3;
- (void)setHomeGrabberDisplayMode:(int64_t)a3;
- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8;
- (void)setMaskDisplayCorners:(BOOL)a3 forReason:(id)a4;
- (void)setNubViewHidden:(BOOL)a3;
- (void)setNubViewHighlighted:(BOOL)a3;
- (void)setShadowOffset:(double)a3;
- (void)setShadowOpacity:(double)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3;
- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6;
@end

@implementation SBMainWorkspaceApplicationSceneLayoutElementViewController

- (SBMainWorkspaceApplicationSceneLayoutElementViewController)initWithDisplayIdentity:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  v3 = [(SBAppContainerViewController *)&v10 initWithDisplayIdentity:a3];
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

- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8
{
  v12 = a3;
  v16 = a7;
  v14 = a8;
  v15 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 setLiveContentBlurEnabled:v12 duration:v16 blurDelay:v14 iconViewScale:a4 began:a5 completion:a6];
  }

  else if (v14)
  {
    v14[2](v14);
  }
}

- (double)blurViewIconScale
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  v3 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 blurViewIconScale];
    v3 = v4;
  }

  return v3;
}

- (void)setBlurViewIconScale:(double)a3
{
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setBlurViewIconScale:a3];
  }
}

- (BOOL)isBlurred
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isBlurred];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  [v5 _beginRequiringSceneViewMatchMoveAnimationForReason:v4];
}

- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  [v5 _endRequiringSceneViewMatchMoveAnimationForReason:v4];
}

- (NSString)description
{
  v3 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  objc_opt_class();
  v4 = @"NO";
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isBlurred])
  {
    v4 = @"YES";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(SBAppContainerViewController *)self sceneHandle];
  v9 = [v8 sceneIdentifier];
  v10 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v11 = [v5 stringWithFormat:@"<%@:%p (%@) - %@ - blurred=%@>", v7, self, v9, v10, v4];

  return v11;
}

- (void)setClipsToBounds:(BOOL)a3
{
  if (self->_clipsToBounds != a3)
  {
    self->_clipsToBounds = a3;
  }
}

- (void)setDarkenViewAlpha:(double)a3
{
  if (self->_darkenViewAlpha != a3)
  {
    self->_darkenViewAlpha = a3;
    v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [v4 setDarkenViewAlpha:a3];
  }
}

- (void)setDropInteraction:(id)a3
{
  v5 = a3;
  if (self->_dropInteraction != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_dropInteraction, a3);
    v6 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [v6 setDropInteraction:v7];

    v5 = v7;
  }
}

- (void)setHomeGrabberDisplayMode:(int64_t)a3
{
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v4 setHomeGrabberDisplayMode:a3];
}

- (int64_t)homeGrabberDisplayMode
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 homeGrabberDisplayMode];

  return v3;
}

- (id)prepareForContentRotation
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 prepareForContentRotation];

  return v3;
}

- (void)setShadowOpacity:(double)a3
{
  if (self->_shadowOpacity != a3)
  {
    self->_shadowOpacity = a3;
  }
}

- (void)setShadowOffset:(double)a3
{
  if (self->_shadowOffset != a3)
  {
    self->_shadowOffset = a3;
  }
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  v6 = a3;
  if (([(BSCornerRadiusConfiguration *)self->_cornerRadiusConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    cornerRadiusConfiguration = self->_cornerRadiusConfiguration;
    self->_cornerRadiusConfiguration = v4;
  }
}

- (void)setMaskDisplayCorners:(BOOL)a3 forReason:(id)a4
{
  maskDisplayCornersReasons = self->_maskDisplayCornersReasons;
  if (a3)
  {
    [(NSMutableSet *)maskDisplayCornersReasons addObject:a4];
  }

  else
  {
    [(NSMutableSet *)maskDisplayCornersReasons removeObject:a4];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  v7 = a4;
  [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController:v9.receiver];
  [v8 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];
}

- (int64_t)_overrideStatusBarOrientationGivenFallbackOrientation:(int64_t)a3
{
  v5 = [(SBAppContainerViewController *)self sceneHandle];
  v6 = [v5 currentInterfaceOrientation];
  if (v6)
  {
    v7 = v6;
    v8 = [(SBLayoutElementViewController *)self contentWrapperInterfaceOrientation];
    if (v7 != v8)
    {
      v9 = v8;
      if (![v5 isEffectivelyForeground])
      {
        v7 = v9;
      }
    }
  }

  else
  {
    v7 = [v5 activationInterfaceOrientationForOrientation:a3];
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
  v3 = [(SBLayoutElementViewController *)&v7 supportedContentInterfaceOrientations];
  v4 = [(SBAppContainerViewController *)self sceneHandle];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 _mainSceneSupportedInterfaceOrientations];
  }

  return v3;
}

- (BOOL)_shouldDisplayLayoutElementBecomeActive
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(SBAppContainerViewController *)self sceneHandle];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sceneIfExists];
    if (v5 && ![v4 isEffectivelyForeground])
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
      v24 = [(SBLayoutElementViewController *)self layoutElement];
      v17 = [v24 uniqueIdentifier];
      v18 = NSStringFromBOOL();
      [v4 isEffectivelyForeground];
      v19 = NSStringFromBOOL();
      v20 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      [v20 isSuspendedUnderLock];
      v21 = NSStringFromBOOL();
      v22 = [v4 sceneIfExists];
      *buf = 138544642;
      v26 = v16;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = v22;
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
      v11 = [(SBLayoutElementViewController *)self layoutElement];
      v12 = [v11 uniqueIdentifier];
      v13 = [(SBLayoutElementViewController *)self layoutState];
      *buf = 138543874;
      v26 = v10;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
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
  v2 = [(SBAppContainerViewController *)&v4 _applicationSceneViewController];

  return v2;
}

- (id)_applicationSceneViewControllerForSceneHandle:(id)a3
{
  v5 = a3;
  if (([v5 isDeviceApplicationSceneHandle] & 1) == 0)
  {
    [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)a2 _applicationSceneViewControllerForSceneHandle:?];
  }

  v6 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(SBLayoutElementViewController *)self _sbWindowScene];
    v10 = [v9 supportsMultitasking];

    if (v10)
    {
      v11 = [(SBLayoutElementViewController *)self layoutElement];
      v12 = [v11 layoutRole];

      v8 = [[SBMedusaDecoratedDeviceApplicationSceneViewController alloc] initWithDeviceApplicationSceneHandle:v5 layoutRole:v12];
    }

    else
    {
      v8 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:v5];
    }
  }

  v13 = v8;

  return v13;
}

- (void)_configureViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  v4 = a3;
  [(SBAppContainerViewController *)&v8 _configureViewController:v4];
  v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC:v4, v8.receiver, v8.super_class];

  if (v5)
  {
    [v5 setNubViewHidden:{-[SBMainWorkspaceApplicationSceneLayoutElementViewController isNubViewHidden](self, "isNubViewHidden")}];
    [v5 setNubViewHighlighted:{-[SBMainWorkspaceApplicationSceneLayoutElementViewController isNubViewHighlighted](self, "isNubViewHighlighted")}];
    [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self darkenViewAlpha];
    [v5 setDarkenViewAlpha:?];
    v6 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self dropInteraction];
    [v5 setDropInteraction:v6];

    v7 = [(SBLayoutElementViewController *)self layoutElement];
    [v5 setLayoutRole:objc_msgSend(v7 spaceConfiguration:"layoutRole") floatingConfiguration:0 sizingPolicy:{0, 0}];
  }
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBMainWorkspaceApplicationSceneLayoutElementViewController;
  [(SBAppContainerViewController *)&v5 sceneHandle:a3 didCreateScene:a4];
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementVisibility];
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 nubViewHidden:(int64_t)a4 atLevel:(unint64_t)a5
{
  v7 = a3;
  v9 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 statusBarAssertionWithStatusBarHidden:v7 nubViewHidden:a4 atLevel:a5];
  }

  else
  {
    v12 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
    v13 = v12;
    if (v12)
    {
      v11 = [v12 statusBarAssertionWithStatusBarHidden:v7 atLevel:a5];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)setNubViewHidden:(BOOL)a3
{
  if (self->_nubViewHidden != a3)
  {
    v4 = a3;
    self->_nubViewHidden = a3;
    v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [v5 setNubViewHidden:v4];
  }
}

- (void)setNubViewHighlighted:(BOOL)a3
{
  if (self->_nubViewHighlighted != a3)
  {
    v4 = a3;
    self->_nubViewHighlighted = a3;
    v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    [v5 setNubViewHighlighted:v4];
  }
}

- (SBHomeGrabberView)homeGrabberView
{
  v3 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
  v4 = [v3 homeGrabberView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
    v6 = [v7 homeGrabberView];
  }

  return v6;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3
{
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController];
  v5 = [v4 bestHomeAffordanceOrientationForOrientation:a3];

  return v5;
}

- (SBApplicationSceneBackgroundView)backgroundView
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 backgroundView];

  return v3;
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v5 setBackgroundView:v4];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [v7 layoutStateTransitionCoordinator:v8 transitionDidBeginWithTransitionContext:v6];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [v7 layoutStateTransitionCoordinator:v8 transitionWillEndWithTransitionContext:v6];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  if (objc_opt_respondsToSelector())
  {
    [v7 layoutStateTransitionCoordinator:v8 transitionDidEndWithTransitionContext:v6];
  }
}

- (id)containerViewForBlurContentView
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC];
  v3 = [v2 _blurViewContainerView];

  return v3;
}

- (id)_medusaDecoratedVC
{
  v3 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _medusaDecoratedVC:v3];

  return v4;
}

- (id)_medusaDecoratedVC:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_deviceApplicationSceneViewController
{
  v3 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _deviceApplicationSceneViewController:v3];

  return v4;
}

- (id)_deviceApplicationSceneViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)leadingStatusBarStyle
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 leadingStatusBarStyle];

  return v3;
}

- (int64_t)trailingStatusBarStyle
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 trailingStatusBarStyle];

  return v3;
}

- (id)backgroundActivitiesToSuppress
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 backgroundActivitiesToSuppress];

  return v3;
}

- (double)currentStatusBarHeight
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v2 currentStatusBarHeight];
  v4 = v3;

  return v4;
}

- (id)currentStatusBarStyleAttributes
{
  v2 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  v3 = [v2 currentStatusBarStyleAttributes];

  return v3;
}

- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v11 willRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4 alongsideContainerView:v10 animated:v6];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
{
  v6 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v6 didRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4];
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3
{
  v4 = [(SBMainWorkspaceApplicationSceneLayoutElementViewController *)self _applicationSceneViewController];
  [v4 willPerformNonAnimatedTransitionToInterfaceOrientation:a3];
}

- (void)_applicationSceneViewControllerForSceneHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainWorkspaceApplicationSceneLayoutElementViewController.m" lineNumber:337 description:@"This class cannot work with anything other than a SBDeviceApplicationSceneHandle."];
}

@end