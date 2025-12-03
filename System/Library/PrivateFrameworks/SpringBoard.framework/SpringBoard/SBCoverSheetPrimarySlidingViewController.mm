@interface SBCoverSheetPrimarySlidingViewController
- (BOOL)_maglevActive;
- (BOOL)_panelBackgroundShouldUseRoundedCornerAppearance;
- (BOOL)_shouldShowGrabberOnFirstSwipe;
- (BOOL)grabberTongueOrPullEnabled:(id)enabled forGestureRecognizer:(id)recognizer;
- (BOOL)shouldAutorotate;
- (CGRect)_animationTickedWithProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value;
- (SBCoverSheetGrabberDelegate)grabberDelegate;
- (id)_sbWindowScene;
- (id)_visibilityDescriptionForView:(id)view;
- (id)customGestureRecognizerForGrabberTongue:(id)tongue;
- (unint64_t)_panelOptions;
- (void)_beginTransitionFromAppeared:(BOOL)appeared;
- (void)_commitTransitionToAppeared:(BOOL)appeared animated:(BOOL)animated;
- (void)_configureControlCenterController:(id)controller;
- (void)_controlCenterWindowSceneDidConnect:(id)connect;
- (void)_createFadeOutWallpaperEffectViewIfNeeded;
- (void)_createPanelWallpaperEffectViewIfNeeded;
- (void)_endTransitionToAppeared:(BOOL)appeared;
- (void)_handleDismissGestureBegan;
- (void)_positionSubviewsForContentFrame:(CGRect)frame forPresentationValue:(BOOL)value;
- (void)_setupPanelPartsIfNecessary;
- (void)_transitionToPresentationState:(int64_t)state forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated;
- (void)_transitionToViewControllerAppearState:(int)state ifNeeded:(BOOL)needed forUserGesture:(BOOL)gesture;
- (void)_updateBackgroundIfNecessary;
- (void)_updateFadeOutWallpaperEffectView;
- (void)_updatePanelBackgroundAppearance;
- (void)_updatePanelWallpaperEffectView;
- (void)_updateTransitionProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value;
- (void)_updateWallpaperScaled:(BOOL)scaled animated:(BOOL)animated;
- (void)_updateWindowVisibility;
- (void)_willTranslateToPresented:(BOOL)presented;
- (void)dealloc;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)handleDidEndReachabilityAnimation;
- (void)handleReachabilityModeActivated;
- (void)handleReachabilityModeDeactivated;
- (void)handleWillBeginReachabilityAnimation;
- (void)loadView;
- (void)positionViewDidUpdateContentViewPosition:(id)position;
- (void)setTransitionSettings:(id)settings;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBCoverSheetPrimarySlidingViewController

- (void)_updateBackgroundIfNecessary
{
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v4 = transitionSettings;
  v13 = transitionSettings;
  if (self->_behindCoverSheetBlurView || (v5 = [transitionSettings blursBehindCoverSheet], v4 = v13, !v5))
  {
    if ([v4 blursBehindCoverSheet])
    {
      goto LABEL_7;
    }

    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView removeFromSuperview];
    behindCoverSheetBlurView = self->_behindCoverSheetBlurView;
    self->_behindCoverSheetBlurView = 0;
  }

  else
  {
    v6 = [SBCoverSheetBlurView alloc];
    v7 = [(SBCoverSheetBlurView *)v6 initWithFrame:&__block_literal_global_236 scaleAdjustment:&__block_literal_global_89_1 alphaAdjustment:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v8 = self->_behindCoverSheetBlurView;
    self->_behindCoverSheetBlurView = v7;

    v9 = self->_behindCoverSheetBlurView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBCoverSheetBlurView *)v9 setDimmingColor:blackColor];

    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setHidden:1];
    behindCoverSheetBlurView = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [behindCoverSheetBlurView addSubview:self->_behindCoverSheetBlurView];
    [behindCoverSheetBlurView sendSubviewToBack:self->_behindCoverSheetBlurView];
  }

LABEL_7:
  v12 = self->_behindCoverSheetBlurView;
  [v13 behindCoverSheetBlurRadius];
  [(SBCoverSheetBlurView *)v12 setBlurRadius:?];
}

- (void)_setupPanelPartsIfNecessary
{
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v4 = transitionSettings;
  if (!self->_panelCoverSheetBlurView)
  {
    v9 = transitionSettings;
    blursPanel = [transitionSettings blursPanel];
    v4 = v9;
    if (blursPanel)
    {
      v6 = [SBCoverSheetBlurView alloc];
      v7 = [(SBCoverSheetBlurView *)v6 initWithFrame:&__block_literal_global_91 scaleAdjustment:&__block_literal_global_93 alphaAdjustment:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      panelCoverSheetBlurView = self->_panelCoverSheetBlurView;
      self->_panelCoverSheetBlurView = v7;

      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setBlurRadius:10.0];
      [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_panelCoverSheetBlurView];
      v4 = v9;
    }
  }
}

- (void)_updatePanelWallpaperEffectView
{
  v20 = *MEMORY[0x277D85DE8];
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([transitionSettings panelWallpaper])
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _createPanelWallpaperEffectViewIfNeeded];
    v4 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
    v5 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _updatePanelWallpaperEffectView] - _panelWallpaperEffectView %{public}@ will be visible", &v14, 0xCu);
    }

    superview = [(SBWallpaperEffectView *)self->_panelWallpaperEffectView superview];
    parallaxContainerView = self->_parallaxContainerView;

    if (superview != parallaxContainerView)
    {
      v8 = SBLogSystemGestureCoverSheet();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        superview2 = [(SBWallpaperEffectView *)self->_panelWallpaperEffectView superview];
        v10 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:superview2];
        v11 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_parallaxContainerView];
        v14 = 138543874;
        v15 = v4;
        v16 = 2114;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _updatePanelWallpaperEffectView] - moving _panelWallpaperEffectView %{public}@ from %{public}@ to %{public}@", &v14, 0x20u);
      }

      [(SBWallpaperEffectView *)self->_panelWallpaperEffectView removeFromSuperview];
      [(SBCoverSheetParallaxContainerView *)self->_parallaxContainerView addSubview:self->_panelWallpaperEffectView];
      [(SBCoverSheetParallaxContainerView *)self->_parallaxContainerView sendSubviewToBack:self->_panelWallpaperEffectView];
      viewIfLoaded = [(SBCoverSheetPrimarySlidingViewController *)self viewIfLoaded];
      [viewIfLoaded setNeedsLayout];
    }
  }

  else
  {
    v13 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _updatePanelWallpaperEffectView] - _panelWallpaperEffectView will NOT be visible", &v14, 2u);
    }

    [(SBWallpaperEffectView *)self->_panelWallpaperEffectView removeFromSuperview];
  }
}

- (void)_updateFadeOutWallpaperEffectView
{
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([transitionSettings fadesContent])
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _createFadeOutWallpaperEffectViewIfNeeded];
    [(PBUIWallpaperEffectViewBase *)self->_panelFadeOutWallpaperEffectView setStyle:0];
    [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_panelFadeOutWallpaperEffectView];
    [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView sendSubviewToBack:self->_panelFadeOutWallpaperEffectView];
    view = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    [(SBWallpaperEffectView *)self->_panelFadeOutWallpaperEffectView removeFromSuperview];
  }
}

- (void)viewDidLayoutSubviews
{
  v59 = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v57 viewDidLayoutSubviews];
  positionView = [(SBCoverSheetSlidingViewController *)self positionView];
  view = [(SBCoverSheetPrimarySlidingViewController *)self view];
  [view bounds];
  v53 = v6;
  v54 = v5;
  v49 = v7;
  v52 = v8;

  contentView = [positionView contentView];
  [contentView frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v55 = v17;
  if (CSFeatureEnabled())
  {
    v18 = v17 * 0.5;
  }

  else
  {
    v18 = v17;
  }

  v19 = -v18;
  rect = v13;
  if (v13 > -v18)
  {
    v19 = v13;
  }

  v20 = fmin(v19, 0.0);
  interfaceOrientation = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
  MinX = v11;
  v23 = v20;
  Width = v15;
  v25 = v18;
  if (interfaceOrientation == 2)
  {
    v60.origin.x = v11;
    v60.origin.y = v20;
    v60.size.width = v15;
    v60.size.height = v18;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = v11;
    v61.origin.y = v20;
    v61.size.width = v15;
    v61.size.height = v18;
    Height = CGRectGetHeight(v61);
    v62.origin.x = v11;
    v62.origin.y = v20;
    v62.size.width = v15;
    v62.size.height = v18;
    v23 = Height - CGRectGetMinY(v62);
    v63.origin.x = v11;
    v63.origin.y = v20;
    v63.size.width = v15;
    v63.size.height = v18;
    Width = CGRectGetWidth(v63);
    v64.origin.x = v11;
    v64.origin.y = v20;
    v64.size.width = v15;
    v64.size.height = v18;
    v25 = CGRectGetHeight(v64);
  }

  panelBackgroundContainerView = [(SBCoverSheetPrimarySlidingViewController *)self panelBackgroundContainerView];
  [panelBackgroundContainerView setFrame:{MinX, v23, Width, v25}];

  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [transitionSettings trackingWallpaperParallaxFactor];
  v30 = v29;

  parallaxContainerView = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
  [parallaxContainerView setFrame:{v11, -(v30 * v20), v15, v18}];

  behindCoverSheetBlurView = [(SBCoverSheetPrimarySlidingViewController *)self behindCoverSheetBlurView];
  [behindCoverSheetBlurView setFrame:{v54, v50, v53, v52}];

  panelCoverSheetBlurView = [(SBCoverSheetPrimarySlidingViewController *)self panelCoverSheetBlurView];
  [panelCoverSheetBlurView setFrame:{v54, v50, v53, v52}];

  parallaxClippingView = [(SBCoverSheetPrimarySlidingViewController *)self parallaxClippingView];
  [parallaxClippingView setFrame:{v54, v50, v53, v52}];

  panelFadeOutWallpaperEffectView = [(SBCoverSheetPrimarySlidingViewController *)self panelFadeOutWallpaperEffectView];
  [panelFadeOutWallpaperEffectView setFrame:{v54, v50, v53, v52}];

  panelWallpaperEffectView = [(SBCoverSheetPrimarySlidingViewController *)self panelWallpaperEffectView];
  [panelWallpaperEffectView setFrame:{v54, v50, v53, v52}];

  if ([(SBCoverSheetPrimarySlidingViewController *)self _maglevActive])
  {
    memset(&v56, 0, sizeof(v56));
    switch(interfaceOrientation)
    {
      case 1:
        v37 = 0.0;
        break;
      case 3:
        v37 = 1.57079633;
        break;
      case 4:
        v37 = -1.57079633;
        break;
      default:
        v37 = 3.14159265;
        if (interfaceOrientation != 2)
        {
          v37 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&v58, -v37);
    UIIntegralTransform();
    panelWallpaperEffectView = self->_panelWallpaperEffectView;
    v58 = v56;
    [(SBWallpaperEffectView *)panelWallpaperEffectView setTransform:&v58];
    v41 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v58.a) = 134217984;
      *(&v58.a + 4) = interfaceOrientation;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController viewDidLayoutSubviews] - _panelWallpaperEffectView transformed for orientation: %ld", &v58, 0xCu);
    }
  }

  else
  {
    v38 = self->_panelWallpaperEffectView;
    v39 = *(MEMORY[0x277CBF2C0] + 16);
    *&v56.a = *MEMORY[0x277CBF2C0];
    *&v56.c = v39;
    *&v56.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(SBWallpaperEffectView *)v38 setTransform:&v56];
  }

  superview = [(SBCoverSheetDimmingView *)self->_maskedDimmingView superview];
  view2 = [(SBCoverSheetPrimarySlidingViewController *)self view];

  if (superview == view2)
  {
    maskedDimmingView = self->_maskedDimmingView;
    v45 = *(MEMORY[0x277CBF2C0] + 16);
    *&v56.a = *MEMORY[0x277CBF2C0];
    *&v56.c = v45;
    *&v56.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(SBCoverSheetDimmingView *)maskedDimmingView setTransform:&v56];
    [(SBCoverSheetDimmingView *)self->_maskedDimmingView setFrame:v54, v50, v53, v52];
    v46 = self->_maskedDimmingView;
    UIRectGetCenter();
    [(SBCoverSheetDimmingView *)v46 updateMaskPosition:0 forPresentationValue:?];
  }

  v65.origin.x = v11;
  v65.origin.y = rect;
  v65.size.width = v15;
  v65.size.height = v55;
  v47 = CGRectGetHeight(v65);
  unlockedContentOverlayView = [(SBCoverSheetPrimarySlidingViewController *)self unlockedContentOverlayView];
  [unlockedContentOverlayView setFrame:{v11, v47, v15, v55}];
}

- (BOOL)_maglevActive
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (id)_sbWindowScene
{
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  coverSheetWindow = [v3 coverSheetWindow];
  _sbWindowScene = [coverSheetWindow _sbWindowScene];
  v6 = _sbWindowScene;
  if (_sbWindowScene)
  {
    _sbWindowScene2 = _sbWindowScene;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBCoverSheetPrimarySlidingViewController;
    _sbWindowScene2 = [(UIViewController *)&v10 _sbWindowScene];
  }

  v8 = _sbWindowScene2;

  return v8;
}

- (void)loadView
{
  v56 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v53 loadView];
  v3 = +[SBDefaults localDefaults];
  miscellaneousDefaults = [v3 miscellaneousDefaults];
  miscellaneousDefaults = self->_miscellaneousDefaults;
  self->_miscellaneousDefaults = miscellaneousDefaults;

  objc_initWeak(&location, self);
  v6 = self->_miscellaneousDefaults;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sensitiveUIEnabled"];
  v8 = MEMORY[0x277D85CD0];
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __52__SBCoverSheetPrimarySlidingViewController_loadView__block_invoke;
  v50 = &unk_2783A8C68;
  objc_copyWeak(&v51, &location);
  v9 = [(SBMiscellaneousDefaults *)v6 observeDefault:v7 onQueue:MEMORY[0x277D85CD0] withBlock:&v47];

  v10 = [(SBCoverSheetPrimarySlidingViewController *)self view:v47];
  v11 = objc_alloc_init(SBCoverSheetPanelBackgroundContainerView);
  panelBackgroundContainerView = self->_panelBackgroundContainerView;
  self->_panelBackgroundContainerView = v11;

  [v10 addSubview:self->_panelBackgroundContainerView];
  [v10 sendSubviewToBack:self->_panelBackgroundContainerView];
  v13 = objc_alloc_init(MEMORY[0x277D65F80]);
  parallaxClippingView = self->_parallaxClippingView;
  self->_parallaxClippingView = v13;

  [(SBFTouchPassThroughView *)self->_parallaxClippingView setClipsToBounds:1];
  [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_parallaxClippingView];
  v15 = objc_alloc_init(SBCoverSheetParallaxContainerView);
  parallaxContainerView = self->_parallaxContainerView;
  self->_parallaxContainerView = v15;

  [(SBFTouchPassThroughView *)self->_parallaxClippingView addSubview:self->_parallaxContainerView];
  v17 = objc_alloc(MEMORY[0x277D65F80]);
  [v10 bounds];
  v18 = [v17 initWithFrame:?];
  unlockedContentOverlayView = self->_unlockedContentOverlayView;
  self->_unlockedContentOverlayView = v18;

  [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView bs_setHitTestingDisabled:1];
  v20 = self->_unlockedContentOverlayView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBFTouchPassThroughView *)v20 setBackgroundColor:clearColor];

  [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_unlockedContentOverlayView];
  [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView sendSubviewToBack:self->_unlockedContentOverlayView];
  layer = [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelBackgroundAppearance];
  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelWallpaperEffectView];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateFadeOutWallpaperEffectView];
  v23 = +[SBCoverSheetPresentationManager sharedInstance];
  coverSheetWindow = [v23 coverSheetWindow];
  _sbWindowScene = [coverSheetWindow _sbWindowScene];

  v26 = [[SBGrabberTongue alloc] initWithDelegate:self edge:1 type:1 windowScene:_sbWindowScene];
  grabberTongue = self->_grabberTongue;
  self->_grabberTongue = v26;

  [(SBGrabberTongue *)self->_grabberTongue setName:@"CoverSheetGrabberTongue"];
  v28 = self->_grabberTongue;
  view = [(SBCoverSheetPrimarySlidingViewController *)self view];
  [(SBGrabberTongue *)v28 installInView:view withColorStyle:0];

  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [systemGesturesDelegate setPresentGestureRecognizer:edgePullGestureRecognizer];

  v32 = objc_opt_class();
  edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v34 = SBSafeCast(v32, edgePullGestureRecognizer2);

  [v34 _edgeRegionSize];
  self->_defaultPresentGestureEdgeRegionSize = v35;
  v36 = SBLogSystemGestureCoverSheet();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    defaultPresentGestureEdgeRegionSize = self->_defaultPresentGestureEdgeRegionSize;
    *buf = 134217984;
    v55 = defaultPresentGestureEdgeRegionSize;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "_defaultPresentGestureEdgeRegionSize initialized to %g", buf, 0xCu);
  }

  controlCenterController = [_sbWindowScene controlCenterController];
  if (controlCenterController)
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _configureControlCenterController:controlCenterController];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__controlCenterWindowSceneDidConnect_ name:@"SBControlCenterControllerWindowSceneConnectedNotification" object:0];
  }

  v40 = +[SBReachabilityManager sharedInstance];
  [v40 addObserver:self];
  dismissPanGestureRecognizer = [v40 dismissPanGestureRecognizer];
  edgePullGestureRecognizer3 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [dismissPanGestureRecognizer requireGestureRecognizerToFail:edgePullGestureRecognizer3];

  if (CSFeatureEnabled() && !self->_maskedDimmingView)
  {
    v43 = [SBCoverSheetDimmingView alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v45 = [(SBCoverSheetDimmingView *)v43 initWithFrame:?];
    maskedDimmingView = self->_maskedDimmingView;
    self->_maskedDimmingView = v45;
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

void __52__SBCoverSheetPrimarySlidingViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForSensitiveUI];
}

- (void)dealloc
{
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v4 dealloc];
}

- (BOOL)shouldAutorotate
{
  contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet"))
  {
    LOBYTE(shouldAutorotate) = 1;
  }

  else
  {
    shouldAutorotate = [contentViewController shouldAutorotate];
    bs_isAppearingOrAppeared = [contentViewController bs_isAppearingOrAppeared];
    if (shouldAutorotate && (bs_isAppearingOrAppeared & 1) == 0)
    {
      delegate = [(SBCoverSheetSlidingViewController *)self delegate];
      LOBYTE(shouldAutorotate) = [delegate coverSheetSlidingViewControllerContentShouldAutoRotateWhenNotVisible:self];
    }
  }

  return shouldAutorotate;
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  windowCopy = window;
  contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
  if (objc_opt_respondsToSelector())
  {
    [contentViewController getRotationContentSettings:settings forWindow:windowCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetPrimarySlidingViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (![(SBCoverSheetPrimarySlidingViewController *)self _panelBackgroundShouldUseRoundedCornerAppearance])
  {
    v8 = self->_panelBackgroundContainerView;
    [(SBCoverSheetPanelBackgroundContainerView *)v8 setClipsToBounds:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__SBCoverSheetPrimarySlidingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_2783A9488;
    v11 = v8;
    v9 = v8;
    [coordinatorCopy animateAlongsideTransition:0 completion:v10];
  }
}

- (void)_positionSubviewsForContentFrame:(CGRect)frame forPresentationValue:(BOOL)value
{
  valueCopy = value;
  v22.receiver = self;
  v22.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _positionSubviewsForContentFrame:sel__positionSubviewsForContentFrame_forPresentationValue_ forPresentationValue:?];
  CSFeatureEnabled();
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [transitionSettings trackingWallpaperParallaxFactor];

  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  panelBackgroundContainerView = [(SBCoverSheetPrimarySlidingViewController *)self panelBackgroundContainerView];
  v16 = panelBackgroundContainerView;
  if (valueCopy)
  {
    *v21 = v7;
    *&v21[1] = v9;
    v17 = [MEMORY[0x277CCAE60] valueWithBytes:v21 objCType:"{CGPoint=dd}"];
    [v16 _setPresentationValue:v17 forKey:@"position"];

    parallaxContainerView = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
    *v20 = v12;
    *&v20[1] = v14;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v20 objCType:"{CGPoint=dd}"];
    [parallaxContainerView _setPresentationValue:v19 forKey:@"position"];
  }

  else
  {
    [panelBackgroundContainerView setCenter:{v7, v9}];

    parallaxContainerView = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
    [parallaxContainerView setCenter:{v12, v14}];
  }
}

- (void)setTransitionSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v4 setTransitionSettings:settings];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateBackgroundIfNecessary];
  [(SBCoverSheetPrimarySlidingViewController *)self _setupPanelPartsIfNecessary];
  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelWallpaperEffectView];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateFadeOutWallpaperEffectView];
}

- (void)_transitionToViewControllerAppearState:(int)state ifNeeded:(BOOL)needed forUserGesture:(BOOL)gesture
{
  v9.receiver = self;
  v9.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v9 _transitionToViewControllerAppearState:*&state ifNeeded:needed forUserGesture:gesture];
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  v8 = delegate;
  if (state <= 3)
  {
    [delegate coverSheetSlidingViewController:self isTransitioning:state & 1];
  }
}

- (void)_transitionToPresentationState:(int64_t)state forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated
{
  v10.receiver = self;
  v10.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v10 _transitionToPresentationState:state forUserGesture:gesture withVelocity:animated animated:velocity];
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  v9 = delegate;
  if ((state - 1) <= 6)
  {
    [delegate coverSheetSlidingViewController:self isTransitioning:(0x36u >> (state - 1)) & 1];
  }
}

- (void)_handleDismissGestureBegan
{
  v3.receiver = self;
  v3.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v3 _handleDismissGestureBegan];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView setAlpha:0.75];
}

- (void)_beginTransitionFromAppeared:(BOOL)appeared
{
  appearedCopy = appeared;
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v49 _beginTransitionFromAppeared:?];
  [(SBCoverSheetPrimarySlidingViewController *)self setHasCommittedCurrentTransition:0];
  [(SBCoverSheetPrimarySlidingViewController *)self setPresentationProgressAtCommit:-1.0];
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView removeFromSuperview];
  if (appearedCopy && [transitionSettings iconsFlyIn])
  {
    v6 = +[SBWallpaperController sharedInstance];
    [v6 insertWallpaperOverlay:self->_maskedDimmingView atIndex:0];

    memset(&buf, 0, sizeof(buf));
    interfaceOrientation = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
    v8 = 0.0;
    if (interfaceOrientation != 1)
    {
      if ([(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation]== 4)
      {
        v8 = -1.57079633;
      }

      else if ([(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation]== 3)
      {
        v8 = 1.57079633;
      }

      else
      {
        interfaceOrientation2 = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
        v8 = 3.14159265;
        if (interfaceOrientation2 != 2)
        {
          v8 = 0.0;
        }
      }
    }

    CGAffineTransformMakeRotation(&v48, v8);
    UIIntegralTransform();
    maskedDimmingView = self->_maskedDimmingView;
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&v48.a = *MEMORY[0x277CBF2C0];
    *&v48.c = v13;
    *&v48.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(SBCoverSheetDimmingView *)maskedDimmingView setTransform:&v48];
    v14 = self->_maskedDimmingView;
    superview = [(SBCoverSheetDimmingView *)v14 superview];
    [superview bounds];
    UIRectGetCenter();
    [(SBCoverSheetDimmingView *)v14 setCenter:?];

    v16 = self->_maskedDimmingView;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    [(SBCoverSheetDimmingView *)v16 setBounds:?];

    v18 = self->_maskedDimmingView;
    v48 = buf;
    [(SBCoverSheetDimmingView *)v18 setTransform:&v48];
  }

  else
  {
    view = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [view insertSubview:self->_maskedDimmingView aboveSubview:self->_panelBackgroundContainerView];

    view2 = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [view2 layoutIfNeeded];
  }

  if ([(SBCoverSheetSlidingViewController *)self dismissalSlidingMode]!= 2)
  {
    if ([transitionSettings blursPanel] && (-[SBCoverSheetSlidingViewController contentViewController](self, "contentViewController"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "contentOccludesBackground"), v23, (v24 & 1) == 0))
    {
      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:1.0];
      v25 = 0.0;
      if (!appearedCopy)
      {
        v25 = 1.0;
      }

      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:v25];
    }

    else
    {
      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:0.0];
    }

    blursBehindCoverSheet = [transitionSettings blursBehindCoverSheet];
    behindCoverSheetBlurView = self->_behindCoverSheetBlurView;
    if (blursBehindCoverSheet)
    {
      [(SBCoverSheetBlurView *)behindCoverSheetBlurView setAlpha:1.0];
      [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setHidden:0];
      v28 = 0.0;
      if (appearedCopy)
      {
        v28 = 1.0;
      }

      [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:v28];
    }

    else
    {
      [(SBCoverSheetBlurView *)behindCoverSheetBlurView setHidden:1];
    }

    panelWallpaper = [transitionSettings panelWallpaper];
    panelWallpaperEffectView = self->_panelWallpaperEffectView;
    if (panelWallpaper)
    {
      [(SBWallpaperEffectView *)panelWallpaperEffectView setAlpha:1.0];
      [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:0];
      -[PBUIWallpaperEffectViewBase setFullscreen:](self->_panelWallpaperEffectView, "setFullscreen:", [transitionSettings trackingWallpaper]);
      v31 = SBLogSystemGestureCoverSheet();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v32 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = appearedCopy;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v32;
      v33 = "[SBCoverSheetPrimarySlidingViewController _beginTransitionFromAppeared:%{BOOL}i] - _panelWallpaperEffectView visible: %{public}@; ";
    }

    else
    {
      [(PBUIWallpaperEffectViewBase *)panelWallpaperEffectView setHidden:1];
      v31 = SBLogSystemGestureCoverSheet();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v32 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = appearedCopy;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v32;
      v33 = "[SBCoverSheetPrimarySlidingViewController _beginTransitionFromAppeared:%{BOOL}i] - _panelWallpaperEffectView NOT visible: %{public}@";
    }

    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, v33, &buf, 0x12u);

LABEL_33:
    if (CSFeatureEnabled() && (([transitionSettings fadePanelWallpaper] & 1) != 0 || SBReduceMotion()))
    {
      [transitionSettings fadePanelWallpaperStart];
      v35 = v34;
      [transitionSettings fadePanelWallpaperEnd];
      buf.a = 0.0;
      LOBYTE(buf.b) = 1;
      *(&buf.b + 1) = 0;
      HIDWORD(buf.b) = 0;
      buf.c = 1.0;
      LOBYTE(buf.d) = 1;
      *(&buf.d + 1) = 0;
      HIDWORD(buf.d) = 0;
      v48.a = v35;
      LOBYTE(v48.b) = 1;
      *(&v48.b + 1) = 0;
      HIDWORD(v48.b) = 0;
      v48.c = v36;
      LOBYTE(v48.d) = 1;
      *(&v48.d + 1) = 0;
      HIDWORD(v48.d) = 0;
      BSIntervalSubIntervalValueForValue();
      [(SBWallpaperEffectView *)self->_panelWallpaperEffectView setAlpha:0, 1, 0x3FF0000000000000, 1];
    }

    -[PBUIWallpaperEffectViewBase setHidden:](self->_panelFadeOutWallpaperEffectView, "setHidden:", [transitionSettings fadesContent] ^ 1);
    if ([transitionSettings fadesCoverSheetContent])
    {
      alwaysFadesCoverSheetContent = [transitionSettings alwaysFadesCoverSheetContent];
      contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
      view3 = [contentViewController view];
      v40 = view3;
      v41 = 0.0;
      if ((appearedCopy | alwaysFadesCoverSheetContent))
      {
        v41 = 1.0;
      }

      [view3 setAlpha:v41];
    }

    darkensContent = [transitionSettings darkensContent];
    v43 = MEMORY[0x277D75348];
    if (darkensContent)
    {
      [transitionSettings darkeningColorWhite];
      v45 = v44;
      [transitionSettings darkeningColorAlpha];
      clearColor = [v43 colorWithWhite:v45 alpha:v46];
      if (appearedCopy)
      {
        v47 = 1.0;
      }

      else
      {
        v47 = 0.0;
      }
    }

    else
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      v47 = 0.0;
    }

    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setBackgroundColor:clearColor];
    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:v47];
    goto LABEL_47;
  }

  unlockedContentOverlayView = self->_unlockedContentOverlayView;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(SBFTouchPassThroughView *)unlockedContentOverlayView setBackgroundColor:blackColor];

  [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:1.0];
  if ([transitionSettings panelWallpaper])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:0];
    clearColor = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(clearColor, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = appearedCopy;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v22;
      _os_log_impl(&dword_21ED4E000, clearColor, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _beginTransitionFromAppeared:%{BOOL}i] - _panelWallpaperEffectView visible (rubberBanding): %{public}@", &buf, 0x12u);
    }

LABEL_47:
  }
}

- (void)_commitTransitionToAppeared:(BOOL)appeared animated:(BOOL)animated
{
  animatedCopy = animated;
  appearedCopy = appeared;
  v10.receiver = self;
  v10.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _commitTransitionToAppeared:sel__commitTransitionToAppeared_animated_ animated:?];
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v8 = transitionSettings;
  if (appearedCopy)
  {
    scaleWallpaper = [transitionSettings scaleWallpaper];
  }

  else
  {
    scaleWallpaper = 0;
  }

  [(SBCoverSheetPrimarySlidingViewController *)self _updateWallpaperScaled:scaleWallpaper animated:animatedCopy];
  [(SBCoverSheetPrimarySlidingViewController *)self setHasCommittedCurrentTransition:1];
}

- (void)_endTransitionToAppeared:(BOOL)appeared
{
  appearedCopy = appeared;
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v17 _endTransitionToAppeared:?];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView setAlpha:0.0];
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([transitionSettings blursPanel])
  {
    v6 = 1.0;
    if (appearedCopy)
    {
      v6 = 0.0;
    }

    [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:v6];
    [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:0.0];
  }

  if ([transitionSettings blursBehindCoverSheet])
  {
    v7 = 0.0;
    if (appearedCopy)
    {
      v7 = 1.0;
    }

    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:v7];
    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setHidden:1];
  }

  if ([transitionSettings panelWallpaper])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:1];
    v8 = SBLogSystemGestureCoverSheet();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v9 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
    *buf = 67109378;
    v19 = appearedCopy;
    v20 = 2114;
    v21 = v9;
    v10 = "[SBCoverSheetPrimarySlidingViewController _endTransitionToAppeared:%{BOOL}i] - _panelWallpaperEffectView was visible with final alpha: %{public}@";
  }

  else
  {
    v8 = SBLogSystemGestureCoverSheet();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v9 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
    *buf = 67109378;
    v19 = appearedCopy;
    v20 = 2114;
    v21 = v9;
    v10 = "[SBCoverSheetPrimarySlidingViewController _endTransitionToAppeared:%{BOOL}i] - _panelWallpaperEffectView was hidden: %{public}@";
  }

  _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);

LABEL_15:
  if ([transitionSettings fadesContent])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelFadeOutWallpaperEffectView setHidden:1];
  }

  if ([transitionSettings fadesCoverSheetContent])
  {
    alwaysFadesCoverSheetContent = [transitionSettings alwaysFadesCoverSheetContent];
    contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
    view = [contentViewController view];
    v14 = view;
    v15 = 0.0;
    if (appearedCopy | alwaysFadesCoverSheetContent)
    {
      v15 = 1.0;
    }

    [view setAlpha:v15];
  }

  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  [delegate coverSheetSlidingViewControllerDidEndTransition:self toPresented:appearedCopy];
}

- (void)_updateTransitionProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value
{
  valueCopy = value;
  v38.receiver = self;
  v38.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v38 _updateTransitionProgress:progress velocity:velocity forPresentationValue:?];
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v9 = 0.0;
  v10 = 0.0;
  if ([transitionSettings blursPanel])
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      [transitionSettings blurEndReducedTransparency];
    }

    else
    {
      [transitionSettings blurEnd];
    }

    [transitionSettings blurStart];
    BSIntervalSubIntervalValueForValue();
    v10 = v11;
  }

  if ([transitionSettings blursBehindCoverSheet])
  {
    [transitionSettings behindCoverSheetBlurStart];
    [transitionSettings behindCoverSheetBlurEnd];
    BSIntervalSubIntervalValueForValue();
    v9 = 1.0 - v12;
  }

  v13 = 0.0;
  if ([transitionSettings darkensContent])
  {
    [transitionSettings darkeningStart];
    [transitionSettings darkeningEnd];
    BSIntervalSubIntervalValueForValue();
    v13 = 1.0 - v14;
  }

  if (([transitionSettings fadePanelWallpaper] & 1) != 0 || (v16 = 1.0, CSFeatureEnabled()) && SBReduceMotion())
  {
    [transitionSettings fadePanelWallpaperStart];
    [transitionSettings fadePanelWallpaperEnd];
    BSIntervalSubIntervalValueForValue();
    v16 = 1.0 - v15;
  }

  v17 = 0.0;
  if ([transitionSettings fadesContent])
  {
    [transitionSettings maxContentAlpha];
    [transitionSettings contentFadeStart];
    [transitionSettings contentFadeEnd];
    BSIntervalSubIntervalValueForValue();
    v17 = 1.0 - v18;
  }

  hasCommittedCurrentTransition = [(SBCoverSheetPrimarySlidingViewController *)self hasCommittedCurrentTransition];
  v20 = 1.0;
  if ([transitionSettings fadesCoverSheetContent] && hasCommittedCurrentTransition)
  {
    v21 = MEMORY[0x277CF0B28];
    if (valueCopy && ([transitionSettings alwaysFadesCoverSheetContent] & 1) == 0)
    {
      [transitionSettings fadesCoverSheetContentStart];
      [transitionSettings fadesCoverSheetContentEnd];
      LODWORD(v37) = 0;
      *(&v37 + 3) = 0;
    }

    else
    {
      LODWORD(v37) = *(v21 + 25);
      *(&v37 + 3) = *(v21 + 28);
    }

    BSIntervalSubIntervalValueForValue();
    v20 = 1.0 - v22;
  }

  unlockedContentOverlayView = self->_unlockedContentOverlayView;
  if (valueCopy)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    [(SBFTouchPassThroughView *)unlockedContentOverlayView _setPresentationValue:v24 forKey:@"opacity"];

    panelWallpaperEffectView = self->_panelWallpaperEffectView;
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [(SBWallpaperEffectView *)panelWallpaperEffectView _setPresentationValue:v26 forKey:@"opacity"];

    panelFadeOutWallpaperEffectView = self->_panelFadeOutWallpaperEffectView;
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [(SBWallpaperEffectView *)panelFadeOutWallpaperEffectView _setPresentationValue:v28 forKey:@"opacity"];

    if (!hasCommittedCurrentTransition)
    {
      goto LABEL_29;
    }

    contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
    view = [contentViewController view];
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    [view _setPresentationValue:v31 forKey:@"opacity"];
  }

  else
  {
    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:v13];
    [(SBWallpaperEffectView *)self->_panelWallpaperEffectView setAlpha:v16];
    [(SBWallpaperEffectView *)self->_panelFadeOutWallpaperEffectView setAlpha:v17];
    if (!hasCommittedCurrentTransition)
    {
      goto LABEL_29;
    }

    contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
    view = [contentViewController view];
    [view setAlpha:v20];
  }

LABEL_29:
  [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:valueCopy forPresentationValue:v9, v37];
  [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:valueCopy forPresentationValue:v10];
  if (CSFeatureEnabled())
  {
    _appearState = [(SBCoverSheetPrimarySlidingViewController *)self _appearState];
    progressCopy = 1.0 - progress;
    if (_appearState == 1)
    {
      progressCopy = progress;
    }

    v34 = progressCopy * 0.75;
    maskedDimmingView = self->_maskedDimmingView;
    if (valueCopy)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
      [(SBCoverSheetDimmingView *)maskedDimmingView _setPresentationValue:v36 forKey:@"opacity"];
    }

    else
    {
      [(SBCoverSheetDimmingView *)maskedDimmingView setAlpha:v34];
    }
  }
}

- (CGRect)_animationTickedWithProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value
{
  valueCopy = value;
  v30.receiver = self;
  v30.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _animationTickedWithProgress:sel__animationTickedWithProgress_velocity_forPresentationValue_ velocity:? forPresentationValue:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (CSFeatureEnabled())
  {
    _appearState = [(SBCoverSheetPrimarySlidingViewController *)self _appearState];
    v18 = [(SBCoverSheetPrimarySlidingViewController *)self _appearState]== 3 && [(SBCoverSheetSlidingViewController *)self latestTransitionedPresentationState]== 7;
    v23 = fmin(fmax(1.0 - progress, 0.0), 0.3);
    v24 = v23 / 0.3 * (v23 / 0.3) * (v23 / 0.3 * -2.0 + 3.0) * 0.75;
    if (_appearState == 1 || v18)
    {
      [(SBCoverSheetDimmingView *)self->_maskedDimmingView alpha];
      v25 = v26 != v24;
    }

    else
    {
      v25 = 0;
    }

    maskedDimmingView = self->_maskedDimmingView;
    UIRectGetCenter();
    [(SBCoverSheetDimmingView *)maskedDimmingView updateMaskPosition:valueCopy forPresentationValue:?];
    if (valueCopy)
    {
      if (v25)
      {
        v28 = self->_maskedDimmingView;
        v29 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
        [(SBCoverSheetDimmingView *)v28 _setPresentationValue:v29 forKey:@"opacity"];
      }
    }

    else if (v25)
    {
      [(SBCoverSheetDimmingView *)self->_maskedDimmingView setAlpha:v24];
    }
  }

  else
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _updateTransitionProgress:valueCopy velocity:progress forPresentationValue:velocity];
  }

  v19 = v10;
  v20 = v12;
  v21 = v14;
  v22 = v16;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)handleReachabilityModeActivated
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, edgePullGestureRecognizer);

  if (v5)
  {
    v6 = +[SBReachabilityManager sharedInstance];
    [v6 reachabilityYOffset];
    v8 = v7;

    [v5 _setEdgeRegionSize:v8];
    v9 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v8;
      v10 = "reachability activated - setting edgeRegionSize to %g";
      v11 = v9;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
    }
  }

  else
  {
    v9 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v10 = "reachability activated - missing recognizer";
      v11 = v9;
      v12 = 2;
      goto LABEL_6;
    }
  }
}

- (void)handleReachabilityModeDeactivated
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, edgePullGestureRecognizer);

  v6 = SBLogSystemGestureCoverSheet();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      defaultPresentGestureEdgeRegionSize = self->_defaultPresentGestureEdgeRegionSize;
      v9 = 134217984;
      v10 = defaultPresentGestureEdgeRegionSize;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "reachability deactivated - setting edgeRegionSize to %g", &v9, 0xCu);
    }

    [v5 _setEdgeRegionSize:self->_defaultPresentGestureEdgeRegionSize];
  }

  else
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "reachability deactivated - missing recognizer", &v9, 2u);
    }
  }
}

- (void)handleWillBeginReachabilityAnimation
{
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  [delegate coverSheetSlidingViewControllerReachabilityAnimationWillBegin:self];
}

- (void)handleDidEndReachabilityAnimation
{
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  [delegate coverSheetSlidingViewControllerReachabilityAnimationDidEnd:self];
}

- (id)customGestureRecognizerForGrabberTongue:(id)tongue
{
  v3 = [(SBScreenEdgePanGestureRecognizer *)[SBCoverSheetPresentationGestureRecognizer alloc] initWithTarget:0 action:0 type:6 options:0];
  [(SBCoverSheetPresentationGestureRecognizer *)v3 setName:@"CSPresent"];
  [(UIScreenEdgePanGestureRecognizer *)v3 setEdges:1];
  [(SBCoverSheetPresentationGestureRecognizer *)v3 setAllowedTouchTypes:&unk_28336E748];
  [(SBCoverSheetPresentationGestureRecognizer *)v3 sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  if (SBSIsSystemApertureAvailable())
  {
    [(UIScreenEdgePanGestureRecognizer *)v3 _setEdgeRegionSize:15.0];
  }

  return v3;
}

- (BOOL)grabberTongueOrPullEnabled:(id)enabled forGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v6 = +[SBSystemGestureManager mainDisplayManager];
  v7 = [v6 isGestureWithTypeAllowed:1];

  if ((v7 & 1) == 0)
  {
    v11 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v12 = "Not allowing the present gesture to begin because system gestures aren't allowed.";
      v13 = &v16;
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v9 = [systemGesturesDelegate gestureRecognizerShouldBegin:recognizerCopy];

  if ((v9 & 1) == 0)
  {
    v11 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v12 = "SystemGesturesDelegate says gesture recognizer should not begin.";
      v13 = &v15;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  pullingCopy = pulling;
  [pullingCopy dismissWithStyle:0 animated:1];
  edgePullGestureRecognizer = [pullingCopy edgePullGestureRecognizer];

  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:edgePullGestureRecognizer];
}

- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  edgePullGestureRecognizer = [pulling edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:edgePullGestureRecognizer];
}

- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  edgePullGestureRecognizer = [pulling edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:edgePullGestureRecognizer];
}

- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  edgePullGestureRecognizer = [pulling edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:edgePullGestureRecognizer];
}

- (BOOL)_shouldShowGrabberOnFirstSwipe
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterController);
  presentingEdge = [WeakRetained presentingEdge];

  if (presentingEdge == 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    grabberDelegate = [(SBCoverSheetPrimarySlidingViewController *)self grabberDelegate];
    hasFirstSwipeShowGrabberOverride = [grabberDelegate hasFirstSwipeShowGrabberOverride];
    v5 = (hasFirstSwipeShowGrabberOverride ^ 1) & [grabberDelegate screenEdgesDeferringSystemGestures];
  }

  return v5;
}

- (void)_updateWindowVisibility
{
  grabberDelegate = [(SBCoverSheetPrimarySlidingViewController *)self grabberDelegate];
  [grabberDelegate updateVisibilityForGrabberVisible:{-[SBGrabberTongue isVisible](self->_grabberTongue, "isVisible")}];
}

- (void)positionViewDidUpdateContentViewPosition:(id)position
{
  positionCopy = position;
  v4 = CSFeatureEnabled();
  v5 = positionCopy;
  if (v4)
  {
    contentView = [positionCopy contentView];
    [contentView frame];
    v8 = v7;

    contentViewController = [(SBCoverSheetSlidingViewController *)self contentViewController];
    if (objc_opt_respondsToSelector())
    {
      [contentViewController setYContentOffset:-v8];
    }

    v5 = positionCopy;
  }
}

- (void)_controlCenterWindowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  _sbWindowScene = [(SBCoverSheetPrimarySlidingViewController *)self _sbWindowScene];
  object = [connectCopy object];
  v6 = [object objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  if (_sbWindowScene == v6)
  {
    object2 = [connectCopy object];
    v8 = [object2 objectForKeyedSubscript:@"SBControlCenterNotificationControlCenterControllerKey"];

    [(SBCoverSheetPrimarySlidingViewController *)self _configureControlCenterController:v8];
  }
}

- (void)_configureControlCenterController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_controlCenterController, controllerCopy);
  if ([controllerCopy presentingEdge] == 1)
  {
    edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    [controllerCopy _requirePresentGestureRecognizerToFailForGestureRecognizer:edgePullGestureRecognizer];
  }

  else
  {
    edgePullGestureRecognizer = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
    [controllerCopy _requireGestureRecognizerToFailForPresentGestureRecognizer:edgePullGestureRecognizer];
  }
}

- (id)_visibilityDescriptionForView:(id)view
{
  v3 = MEMORY[0x277CCACA8];
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if ([viewCopy isHidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [viewCopy alpha];
  v9 = [v3 stringWithFormat:@"<%@: %p hidden = %@; alpha = %f>", v6, viewCopy, v7, v8];;

  return v9;
}

- (unint64_t)_panelOptions
{
  view = [(SBCoverSheetPrimarySlidingViewController *)self view];
  window = [view window];
  v5 = [window interfaceOrientation] - 5;

  _maglevActive = [(SBCoverSheetPrimarySlidingViewController *)self _maglevActive];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || v5 < 0xFFFFFFFFFFFFFFFELL)
  {
    transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
    orientPanelWallpaper = [transitionSettings orientPanelWallpaper];
    if (_maglevActive)
    {
      if (!((v5 < 0xFFFFFFFFFFFFFFFELL) | orientPanelWallpaper & 1))
      {
        if (_os_feature_enabled_impl())
        {
          v12 = 19;
        }

        else
        {
          v12 = 17;
        }

        goto LABEL_18;
      }
    }

    else if ((orientPanelWallpaper & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, (v14 & 0xFFFFFFFFFFFFFFFBLL) != 1) || !SBReduceMotion())
    {
      v12 = 19;
      goto LABEL_18;
    }

    v12 = 17;
LABEL_18:

    return v12;
  }

  if (_maglevActive)
  {
    return 17;
  }

  else
  {
    return 81;
  }
}

- (void)_createPanelWallpaperEffectViewIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  _panelOptions = [(SBCoverSheetPrimarySlidingViewController *)self _panelOptions];
  panelWallpaperEffectView = self->_panelWallpaperEffectView;
  if (!panelWallpaperEffectView)
  {
    goto LABEL_7;
  }

  if ([(PBUIWallpaperEffectViewBase *)panelWallpaperEffectView transformOptions]== _panelOptions)
  {
    return;
  }

  if (self->_panelWallpaperEffectView)
  {
    v5 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = _panelOptions;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _createPanelWallpaperEffectViewIfNeeded] - REPLACING _panelWallpaperEffectView. New panel options 0x%lX", &v9, 0xCu);
    }

    [(SBWallpaperEffectView *)self->_panelWallpaperEffectView removeFromSuperview];
  }

  else
  {
LABEL_7:
    v6 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = _panelOptions;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _createPanelWallpaperEffectViewIfNeeded] - CREATING _panelWallpaperEffectView with panel options 0x%lX", &v9, 0xCu);
    }
  }

  v7 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:0 transformOptions:_panelOptions];
  v8 = self->_panelWallpaperEffectView;
  self->_panelWallpaperEffectView = v7;

  [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setFullscreen:0];
  [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setStyle:0];
}

- (void)_createFadeOutWallpaperEffectViewIfNeeded
{
  panelFadeOutWallpaperEffectView = self->_panelFadeOutWallpaperEffectView;
  if (panelFadeOutWallpaperEffectView)
  {
    [(SBWallpaperEffectView *)panelFadeOutWallpaperEffectView removeFromSuperview];
  }

  if ([(SBCoverSheetPrimarySlidingViewController *)self _maglevActive])
  {
    v4 = 19;
  }

  else
  {
    v5 = _os_feature_enabled_impl();
    v6 = _os_feature_enabled_impl();
    v7 = 19;
    if (v6)
    {
      v7 = 17;
    }

    if (v5)
    {
      v4 = v7;
    }

    else
    {
      v4 = 17;
    }
  }

  v8 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:v4];
  v9 = self->_panelFadeOutWallpaperEffectView;
  self->_panelFadeOutWallpaperEffectView = v8;

  [(PBUIWallpaperEffectViewBase *)self->_panelFadeOutWallpaperEffectView setForcesOpaque:1];
  v10 = self->_panelFadeOutWallpaperEffectView;

  [(PBUIWallpaperEffectViewBase *)v10 setFullscreen:0];
}

double __71__SBCoverSheetPrimarySlidingViewController__setupPanelPartsIfNecessary__block_invoke()
{
  v0 = MEMORY[0x223D6CDA0]();
  result = 0.5;
  if (v0)
  {
    return 0.25;
  }

  return result;
}

- (void)_updateWallpaperScaled:(BOOL)scaled animated:(BOOL)animated
{
  animatedCopy = animated;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBCoverSheetPrimarySlidingViewController _updateWallpaperScaled:animated:];
  }

  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v8 = transitionSettings;
  if (animatedCopy)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = MEMORY[0x277D75D18];
  wallpaperScaleSettings = [transitionSettings wallpaperScaleSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SBCoverSheetPrimarySlidingViewController__updateWallpaperScaled_animated___block_invoke;
  v13[3] = &unk_2783A97D8;
  scaledCopy = scaled;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v10 sb_animateWithSettings:wallpaperScaleSettings mode:v9 animations:v13 completion:0];
}

void __76__SBCoverSheetPrimarySlidingViewController__updateWallpaperScaled_animated___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) homescreenWallpaperScaleAssertion];
  v2 = [*(a1 + 32) lockscreenWallpaperScaleAssertion];
  v3 = +[SBWallpaperController sharedInstance];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) wallpaperScale];
    v5 = v4;
    v6 = [v3 setHomescreenWallpaperScale:0 withAnimationFactory:?];
    if (v8)
    {
      [v8 invalidate];
    }

    [*(a1 + 32) setHomescreenWallpaperScaleAssertion:v6];
    v7 = [v3 setLockscreenWallpaperScale:0 withAnimationFactory:v5];
    if (v2)
    {
      [v2 invalidate];
    }

    [*(a1 + 32) setLockscreenWallpaperScaleAssertion:v7];
  }

  else
  {
    if (v8)
    {
      [v8 invalidate];
      [*(a1 + 32) setHomescreenWallpaperScaleAssertion:0];
    }

    if (v2)
    {
      [v2 invalidate];
      [*(a1 + 32) setLockscreenWallpaperScaleAssertion:0];
    }
  }
}

- (BOOL)_panelBackgroundShouldUseRoundedCornerAppearance
{
  v3 = CSFeatureEnabled();
  if (v3)
  {
    miscellaneousDefaults = self->_miscellaneousDefaults;

    LOBYTE(v3) = [(SBMiscellaneousDefaults *)miscellaneousDefaults sensitiveUIEnabled];
  }

  return v3;
}

- (void)_updatePanelBackgroundAppearance
{
  _panelBackgroundShouldUseRoundedCornerAppearance = [(SBCoverSheetPrimarySlidingViewController *)self _panelBackgroundShouldUseRoundedCornerAppearance];
  layer = [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView layer];
  v5 = layer;
  if (_panelBackgroundShouldUseRoundedCornerAppearance)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayCornerRadius];
    [v5 setCornerRadius:?];
  }

  else
  {
    [layer setCornerRadius:0.0];
  }

  panelBackgroundContainerView = self->_panelBackgroundContainerView;

  [(SBCoverSheetPanelBackgroundContainerView *)panelBackgroundContainerView setClipsToBounds:_panelBackgroundShouldUseRoundedCornerAppearance];
}

- (void)_willTranslateToPresented:(BOOL)presented
{
  if (!presented)
  {
    if ([(SBCoverSheetSlidingViewController *)self currentPresentationState]== 4)
    {
      v4 = MEMORY[0x277D75D18];
      transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
      wallpaperScaleSettings = [transitionSettings wallpaperScaleSettings];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __70__SBCoverSheetPrimarySlidingViewController__willTranslateToPresented___block_invoke;
      v8[3] = &unk_2783A8C18;
      v8[4] = self;
      [v4 sb_animateWithSettings:wallpaperScaleSettings mode:3 animations:v8 completion:0];
    }

    else
    {
      maskedDimmingView = self->_maskedDimmingView;

      [(SBCoverSheetDimmingView *)maskedDimmingView setAlpha:0.75];
    }
  }
}

- (SBCoverSheetGrabberDelegate)grabberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_grabberDelegate);

  return WeakRetained;
}

- (void)_updateWallpaperScaled:animated:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBCoverSheetPrimarySlidingViewController _updateWallpaperScaled:animated:]"];
  [v1 handleFailureInFunction:v0 file:@"SBCoverSheetPrimarySlidingViewController.m" lineNumber:959 description:@"this call must be made on the main thread"];
}

@end