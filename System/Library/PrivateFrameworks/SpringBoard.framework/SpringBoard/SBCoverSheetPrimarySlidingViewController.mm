@interface SBCoverSheetPrimarySlidingViewController
- (BOOL)_maglevActive;
- (BOOL)_panelBackgroundShouldUseRoundedCornerAppearance;
- (BOOL)_shouldShowGrabberOnFirstSwipe;
- (BOOL)grabberTongueOrPullEnabled:(id)a3 forGestureRecognizer:(id)a4;
- (BOOL)shouldAutorotate;
- (CGRect)_animationTickedWithProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5;
- (SBCoverSheetGrabberDelegate)grabberDelegate;
- (id)_sbWindowScene;
- (id)_visibilityDescriptionForView:(id)a3;
- (id)customGestureRecognizerForGrabberTongue:(id)a3;
- (unint64_t)_panelOptions;
- (void)_beginTransitionFromAppeared:(BOOL)a3;
- (void)_commitTransitionToAppeared:(BOOL)a3 animated:(BOOL)a4;
- (void)_configureControlCenterController:(id)a3;
- (void)_controlCenterWindowSceneDidConnect:(id)a3;
- (void)_createFadeOutWallpaperEffectViewIfNeeded;
- (void)_createPanelWallpaperEffectViewIfNeeded;
- (void)_endTransitionToAppeared:(BOOL)a3;
- (void)_handleDismissGestureBegan;
- (void)_positionSubviewsForContentFrame:(CGRect)a3 forPresentationValue:(BOOL)a4;
- (void)_setupPanelPartsIfNecessary;
- (void)_transitionToPresentationState:(int64_t)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6;
- (void)_transitionToViewControllerAppearState:(int)a3 ifNeeded:(BOOL)a4 forUserGesture:(BOOL)a5;
- (void)_updateBackgroundIfNecessary;
- (void)_updateFadeOutWallpaperEffectView;
- (void)_updatePanelBackgroundAppearance;
- (void)_updatePanelWallpaperEffectView;
- (void)_updateTransitionProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5;
- (void)_updateWallpaperScaled:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateWindowVisibility;
- (void)_willTranslateToPresented:(BOOL)a3;
- (void)dealloc;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)handleDidEndReachabilityAnimation;
- (void)handleReachabilityModeActivated;
- (void)handleReachabilityModeDeactivated;
- (void)handleWillBeginReachabilityAnimation;
- (void)loadView;
- (void)positionViewDidUpdateContentViewPosition:(id)a3;
- (void)setTransitionSettings:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBCoverSheetPrimarySlidingViewController

- (void)_updateBackgroundIfNecessary
{
  v3 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v4 = v3;
  v13 = v3;
  if (self->_behindCoverSheetBlurView || (v5 = [v3 blursBehindCoverSheet], v4 = v13, !v5))
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
    v10 = [MEMORY[0x277D75348] blackColor];
    [(SBCoverSheetBlurView *)v9 setDimmingColor:v10];

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
  v3 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v4 = v3;
  if (!self->_panelCoverSheetBlurView)
  {
    v9 = v3;
    v5 = [v3 blursPanel];
    v4 = v9;
    if (v5)
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
  v3 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([v3 panelWallpaper])
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

    v6 = [(SBWallpaperEffectView *)self->_panelWallpaperEffectView superview];
    parallaxContainerView = self->_parallaxContainerView;

    if (v6 != parallaxContainerView)
    {
      v8 = SBLogSystemGestureCoverSheet();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(SBWallpaperEffectView *)self->_panelWallpaperEffectView superview];
        v10 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:v9];
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
      v12 = [(SBCoverSheetPrimarySlidingViewController *)self viewIfLoaded];
      [v12 setNeedsLayout];
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
  v4 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([v4 fadesContent])
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _createFadeOutWallpaperEffectViewIfNeeded];
    [(PBUIWallpaperEffectViewBase *)self->_panelFadeOutWallpaperEffectView setStyle:0];
    [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_panelFadeOutWallpaperEffectView];
    [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView sendSubviewToBack:self->_panelFadeOutWallpaperEffectView];
    v3 = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [v3 setNeedsLayout];
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
  v3 = [(SBCoverSheetSlidingViewController *)self positionView];
  v4 = [(SBCoverSheetPrimarySlidingViewController *)self view];
  [v4 bounds];
  v53 = v6;
  v54 = v5;
  v49 = v7;
  v52 = v8;

  v9 = [v3 contentView];
  [v9 frame];
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
  v21 = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
  MinX = v11;
  v23 = v20;
  Width = v15;
  v25 = v18;
  if (v21 == 2)
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

  v27 = [(SBCoverSheetPrimarySlidingViewController *)self panelBackgroundContainerView];
  [v27 setFrame:{MinX, v23, Width, v25}];

  v28 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [v28 trackingWallpaperParallaxFactor];
  v30 = v29;

  v31 = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
  [v31 setFrame:{v11, -(v30 * v20), v15, v18}];

  v32 = [(SBCoverSheetPrimarySlidingViewController *)self behindCoverSheetBlurView];
  [v32 setFrame:{v54, v50, v53, v52}];

  v33 = [(SBCoverSheetPrimarySlidingViewController *)self panelCoverSheetBlurView];
  [v33 setFrame:{v54, v50, v53, v52}];

  v34 = [(SBCoverSheetPrimarySlidingViewController *)self parallaxClippingView];
  [v34 setFrame:{v54, v50, v53, v52}];

  v35 = [(SBCoverSheetPrimarySlidingViewController *)self panelFadeOutWallpaperEffectView];
  [v35 setFrame:{v54, v50, v53, v52}];

  v36 = [(SBCoverSheetPrimarySlidingViewController *)self panelWallpaperEffectView];
  [v36 setFrame:{v54, v50, v53, v52}];

  if ([(SBCoverSheetPrimarySlidingViewController *)self _maglevActive])
  {
    memset(&v56, 0, sizeof(v56));
    switch(v21)
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
        if (v21 != 2)
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
      *(&v58.a + 4) = v21;
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

  v42 = [(SBCoverSheetDimmingView *)self->_maskedDimmingView superview];
  v43 = [(SBCoverSheetPrimarySlidingViewController *)self view];

  if (v42 == v43)
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
  v48 = [(SBCoverSheetPrimarySlidingViewController *)self unlockedContentOverlayView];
  [v48 setFrame:{v11, v47, v15, v55}];
}

- (BOOL)_maglevActive
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (id)_sbWindowScene
{
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v4 = [v3 coverSheetWindow];
  v5 = [v4 _sbWindowScene];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBCoverSheetPrimarySlidingViewController;
    v7 = [(UIViewController *)&v10 _sbWindowScene];
  }

  v8 = v7;

  return v8;
}

- (void)loadView
{
  v56 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v53 loadView];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 miscellaneousDefaults];
  miscellaneousDefaults = self->_miscellaneousDefaults;
  self->_miscellaneousDefaults = v4;

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
  v21 = [MEMORY[0x277D75348] clearColor];
  [(SBFTouchPassThroughView *)v20 setBackgroundColor:v21];

  [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView addSubview:self->_unlockedContentOverlayView];
  [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView sendSubviewToBack:self->_unlockedContentOverlayView];
  v22 = [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView layer];
  [v22 setCornerCurve:*MEMORY[0x277CDA138]];

  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelBackgroundAppearance];
  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelWallpaperEffectView];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateFadeOutWallpaperEffectView];
  v23 = +[SBCoverSheetPresentationManager sharedInstance];
  v24 = [v23 coverSheetWindow];
  v25 = [v24 _sbWindowScene];

  v26 = [[SBGrabberTongue alloc] initWithDelegate:self edge:1 type:1 windowScene:v25];
  grabberTongue = self->_grabberTongue;
  self->_grabberTongue = v26;

  [(SBGrabberTongue *)self->_grabberTongue setName:@"CoverSheetGrabberTongue"];
  v28 = self->_grabberTongue;
  v29 = [(SBCoverSheetPrimarySlidingViewController *)self view];
  [(SBGrabberTongue *)v28 installInView:v29 withColorStyle:0];

  v30 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v31 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [v30 setPresentGestureRecognizer:v31];

  v32 = objc_opt_class();
  v33 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v34 = SBSafeCast(v32, v33);

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

  v38 = [v25 controlCenterController];
  if (v38)
  {
    [(SBCoverSheetPrimarySlidingViewController *)self _configureControlCenterController:v38];
  }

  else
  {
    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:self selector:sel__controlCenterWindowSceneDidConnect_ name:@"SBControlCenterControllerWindowSceneConnectedNotification" object:0];
  }

  v40 = +[SBReachabilityManager sharedInstance];
  [v40 addObserver:self];
  v41 = [v40 dismissPanGestureRecognizer];
  v42 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [v41 requireGestureRecognizerToFail:v42];

  if (CSFeatureEnabled() && !self->_maskedDimmingView)
  {
    v43 = [SBCoverSheetDimmingView alloc];
    v44 = [MEMORY[0x277D759A0] mainScreen];
    [v44 bounds];
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
  v3 = [(SBCoverSheetSlidingViewController *)self contentViewController];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet"))
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 shouldAutorotate];
    v5 = [v3 bs_isAppearingOrAppeared];
    if (v4 && (v5 & 1) == 0)
    {
      v6 = [(SBCoverSheetSlidingViewController *)self delegate];
      LOBYTE(v4) = [v6 coverSheetSlidingViewControllerContentShouldAutoRotateWhenNotVisible:self];
    }
  }

  return v4;
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  v7 = a4;
  v6 = [(SBCoverSheetSlidingViewController *)self contentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 getRotationContentSettings:a3 forWindow:v7];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetPrimarySlidingViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
    [v7 animateAlongsideTransition:0 completion:v10];
  }
}

- (void)_positionSubviewsForContentFrame:(CGRect)a3 forPresentationValue:(BOOL)a4
{
  v4 = a4;
  v22.receiver = self;
  v22.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _positionSubviewsForContentFrame:sel__positionSubviewsForContentFrame_forPresentationValue_ forPresentationValue:?];
  CSFeatureEnabled();
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  v10 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [v10 trackingWallpaperParallaxFactor];

  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  v15 = [(SBCoverSheetPrimarySlidingViewController *)self panelBackgroundContainerView];
  v16 = v15;
  if (v4)
  {
    *v21 = v7;
    *&v21[1] = v9;
    v17 = [MEMORY[0x277CCAE60] valueWithBytes:v21 objCType:"{CGPoint=dd}"];
    [v16 _setPresentationValue:v17 forKey:@"position"];

    v18 = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
    *v20 = v12;
    *&v20[1] = v14;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v20 objCType:"{CGPoint=dd}"];
    [v18 _setPresentationValue:v19 forKey:@"position"];
  }

  else
  {
    [v15 setCenter:{v7, v9}];

    v18 = [(SBCoverSheetPrimarySlidingViewController *)self parallaxContainerView];
    [v18 setCenter:{v12, v14}];
  }
}

- (void)setTransitionSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v4 setTransitionSettings:a3];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateBackgroundIfNecessary];
  [(SBCoverSheetPrimarySlidingViewController *)self _setupPanelPartsIfNecessary];
  [(SBCoverSheetPrimarySlidingViewController *)self _updatePanelWallpaperEffectView];
  [(SBCoverSheetPrimarySlidingViewController *)self _updateFadeOutWallpaperEffectView];
}

- (void)_transitionToViewControllerAppearState:(int)a3 ifNeeded:(BOOL)a4 forUserGesture:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v9 _transitionToViewControllerAppearState:*&a3 ifNeeded:a4 forUserGesture:a5];
  v7 = [(SBCoverSheetSlidingViewController *)self delegate];
  v8 = v7;
  if (a3 <= 3)
  {
    [v7 coverSheetSlidingViewController:self isTransitioning:a3 & 1];
  }
}

- (void)_transitionToPresentationState:(int64_t)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v10 _transitionToPresentationState:a3 forUserGesture:a4 withVelocity:a6 animated:a5];
  v8 = [(SBCoverSheetSlidingViewController *)self delegate];
  v9 = v8;
  if ((a3 - 1) <= 6)
  {
    [v8 coverSheetSlidingViewController:self isTransitioning:(0x36u >> (a3 - 1)) & 1];
  }
}

- (void)_handleDismissGestureBegan
{
  v3.receiver = self;
  v3.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v3 _handleDismissGestureBegan];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView setAlpha:0.75];
}

- (void)_beginTransitionFromAppeared:(BOOL)a3
{
  v3 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v49 _beginTransitionFromAppeared:?];
  [(SBCoverSheetPrimarySlidingViewController *)self setHasCommittedCurrentTransition:0];
  [(SBCoverSheetPrimarySlidingViewController *)self setPresentationProgressAtCommit:-1.0];
  v5 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView removeFromSuperview];
  if (v3 && [v5 iconsFlyIn])
  {
    v6 = +[SBWallpaperController sharedInstance];
    [v6 insertWallpaperOverlay:self->_maskedDimmingView atIndex:0];

    memset(&buf, 0, sizeof(buf));
    v7 = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
    v8 = 0.0;
    if (v7 != 1)
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
        v11 = [(SBCoverSheetPrimarySlidingViewController *)self interfaceOrientation];
        v8 = 3.14159265;
        if (v11 != 2)
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
    v15 = [(SBCoverSheetDimmingView *)v14 superview];
    [v15 bounds];
    UIRectGetCenter();
    [(SBCoverSheetDimmingView *)v14 setCenter:?];

    v16 = self->_maskedDimmingView;
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 bounds];
    [(SBCoverSheetDimmingView *)v16 setBounds:?];

    v18 = self->_maskedDimmingView;
    v48 = buf;
    [(SBCoverSheetDimmingView *)v18 setTransform:&v48];
  }

  else
  {
    v9 = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [v9 insertSubview:self->_maskedDimmingView aboveSubview:self->_panelBackgroundContainerView];

    v10 = [(SBCoverSheetPrimarySlidingViewController *)self view];
    [v10 layoutIfNeeded];
  }

  if ([(SBCoverSheetSlidingViewController *)self dismissalSlidingMode]!= 2)
  {
    if ([v5 blursPanel] && (-[SBCoverSheetSlidingViewController contentViewController](self, "contentViewController"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "contentOccludesBackground"), v23, (v24 & 1) == 0))
    {
      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:1.0];
      v25 = 0.0;
      if (!v3)
      {
        v25 = 1.0;
      }

      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:v25];
    }

    else
    {
      [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:0.0];
    }

    v26 = [v5 blursBehindCoverSheet];
    behindCoverSheetBlurView = self->_behindCoverSheetBlurView;
    if (v26)
    {
      [(SBCoverSheetBlurView *)behindCoverSheetBlurView setAlpha:1.0];
      [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setHidden:0];
      v28 = 0.0;
      if (v3)
      {
        v28 = 1.0;
      }

      [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:v28];
    }

    else
    {
      [(SBCoverSheetBlurView *)behindCoverSheetBlurView setHidden:1];
    }

    v29 = [v5 panelWallpaper];
    panelWallpaperEffectView = self->_panelWallpaperEffectView;
    if (v29)
    {
      [(SBWallpaperEffectView *)panelWallpaperEffectView setAlpha:1.0];
      [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:0];
      -[PBUIWallpaperEffectViewBase setFullscreen:](self->_panelWallpaperEffectView, "setFullscreen:", [v5 trackingWallpaper]);
      v31 = SBLogSystemGestureCoverSheet();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v32 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v3;
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
      HIDWORD(buf.a) = v3;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v32;
      v33 = "[SBCoverSheetPrimarySlidingViewController _beginTransitionFromAppeared:%{BOOL}i] - _panelWallpaperEffectView NOT visible: %{public}@";
    }

    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, v33, &buf, 0x12u);

LABEL_33:
    if (CSFeatureEnabled() && (([v5 fadePanelWallpaper] & 1) != 0 || SBReduceMotion()))
    {
      [v5 fadePanelWallpaperStart];
      v35 = v34;
      [v5 fadePanelWallpaperEnd];
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

    -[PBUIWallpaperEffectViewBase setHidden:](self->_panelFadeOutWallpaperEffectView, "setHidden:", [v5 fadesContent] ^ 1);
    if ([v5 fadesCoverSheetContent])
    {
      v37 = [v5 alwaysFadesCoverSheetContent];
      v38 = [(SBCoverSheetSlidingViewController *)self contentViewController];
      v39 = [v38 view];
      v40 = v39;
      v41 = 0.0;
      if ((v3 | v37))
      {
        v41 = 1.0;
      }

      [v39 setAlpha:v41];
    }

    v42 = [v5 darkensContent];
    v43 = MEMORY[0x277D75348];
    if (v42)
    {
      [v5 darkeningColorWhite];
      v45 = v44;
      [v5 darkeningColorAlpha];
      v21 = [v43 colorWithWhite:v45 alpha:v46];
      if (v3)
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
      v21 = [MEMORY[0x277D75348] clearColor];
      v47 = 0.0;
    }

    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setBackgroundColor:v21];
    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:v47];
    goto LABEL_47;
  }

  unlockedContentOverlayView = self->_unlockedContentOverlayView;
  v20 = [MEMORY[0x277D75348] blackColor];
  [(SBFTouchPassThroughView *)unlockedContentOverlayView setBackgroundColor:v20];

  [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:1.0];
  if ([v5 panelWallpaper])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:0];
    v21 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v3;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v22;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _beginTransitionFromAppeared:%{BOOL}i] - _panelWallpaperEffectView visible (rubberBanding): %{public}@", &buf, 0x12u);
    }

LABEL_47:
  }
}

- (void)_commitTransitionToAppeared:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _commitTransitionToAppeared:sel__commitTransitionToAppeared_animated_ animated:?];
  v7 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 scaleWallpaper];
  }

  else
  {
    v9 = 0;
  }

  [(SBCoverSheetPrimarySlidingViewController *)self _updateWallpaperScaled:v9 animated:v4];
  [(SBCoverSheetPrimarySlidingViewController *)self setHasCommittedCurrentTransition:1];
}

- (void)_endTransitionToAppeared:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v17 _endTransitionToAppeared:?];
  [(SBCoverSheetDimmingView *)self->_maskedDimmingView setAlpha:0.0];
  v5 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  if ([v5 blursPanel])
  {
    v6 = 1.0;
    if (v3)
    {
      v6 = 0.0;
    }

    [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:v6];
    [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setAlpha:0.0];
  }

  if ([v5 blursBehindCoverSheet])
  {
    v7 = 0.0;
    if (v3)
    {
      v7 = 1.0;
    }

    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:v7];
    [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setHidden:1];
  }

  if ([v5 panelWallpaper])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelWallpaperEffectView setHidden:1];
    v8 = SBLogSystemGestureCoverSheet();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v9 = [(SBCoverSheetPrimarySlidingViewController *)self _visibilityDescriptionForView:self->_panelWallpaperEffectView];
    *buf = 67109378;
    v19 = v3;
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
    v19 = v3;
    v20 = 2114;
    v21 = v9;
    v10 = "[SBCoverSheetPrimarySlidingViewController _endTransitionToAppeared:%{BOOL}i] - _panelWallpaperEffectView was hidden: %{public}@";
  }

  _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);

LABEL_15:
  if ([v5 fadesContent])
  {
    [(PBUIWallpaperEffectViewBase *)self->_panelFadeOutWallpaperEffectView setHidden:1];
  }

  if ([v5 fadesCoverSheetContent])
  {
    v11 = [v5 alwaysFadesCoverSheetContent];
    v12 = [(SBCoverSheetSlidingViewController *)self contentViewController];
    v13 = [v12 view];
    v14 = v13;
    v15 = 0.0;
    if (v3 | v11)
    {
      v15 = 1.0;
    }

    [v13 setAlpha:v15];
  }

  v16 = [(SBCoverSheetSlidingViewController *)self delegate];
  [v16 coverSheetSlidingViewControllerDidEndTransition:self toPresented:v3];
}

- (void)_updateTransitionProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5
{
  v5 = a5;
  v38.receiver = self;
  v38.super_class = SBCoverSheetPrimarySlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v38 _updateTransitionProgress:a3 velocity:a4 forPresentationValue:?];
  v8 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v9 = 0.0;
  v10 = 0.0;
  if ([v8 blursPanel])
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      [v8 blurEndReducedTransparency];
    }

    else
    {
      [v8 blurEnd];
    }

    [v8 blurStart];
    BSIntervalSubIntervalValueForValue();
    v10 = v11;
  }

  if ([v8 blursBehindCoverSheet])
  {
    [v8 behindCoverSheetBlurStart];
    [v8 behindCoverSheetBlurEnd];
    BSIntervalSubIntervalValueForValue();
    v9 = 1.0 - v12;
  }

  v13 = 0.0;
  if ([v8 darkensContent])
  {
    [v8 darkeningStart];
    [v8 darkeningEnd];
    BSIntervalSubIntervalValueForValue();
    v13 = 1.0 - v14;
  }

  if (([v8 fadePanelWallpaper] & 1) != 0 || (v16 = 1.0, CSFeatureEnabled()) && SBReduceMotion())
  {
    [v8 fadePanelWallpaperStart];
    [v8 fadePanelWallpaperEnd];
    BSIntervalSubIntervalValueForValue();
    v16 = 1.0 - v15;
  }

  v17 = 0.0;
  if ([v8 fadesContent])
  {
    [v8 maxContentAlpha];
    [v8 contentFadeStart];
    [v8 contentFadeEnd];
    BSIntervalSubIntervalValueForValue();
    v17 = 1.0 - v18;
  }

  v19 = [(SBCoverSheetPrimarySlidingViewController *)self hasCommittedCurrentTransition];
  v20 = 1.0;
  if ([v8 fadesCoverSheetContent] && v19)
  {
    v21 = MEMORY[0x277CF0B28];
    if (v5 && ([v8 alwaysFadesCoverSheetContent] & 1) == 0)
    {
      [v8 fadesCoverSheetContentStart];
      [v8 fadesCoverSheetContentEnd];
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
  if (v5)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    [(SBFTouchPassThroughView *)unlockedContentOverlayView _setPresentationValue:v24 forKey:@"opacity"];

    panelWallpaperEffectView = self->_panelWallpaperEffectView;
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [(SBWallpaperEffectView *)panelWallpaperEffectView _setPresentationValue:v26 forKey:@"opacity"];

    panelFadeOutWallpaperEffectView = self->_panelFadeOutWallpaperEffectView;
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [(SBWallpaperEffectView *)panelFadeOutWallpaperEffectView _setPresentationValue:v28 forKey:@"opacity"];

    if (!v19)
    {
      goto LABEL_29;
    }

    v29 = [(SBCoverSheetSlidingViewController *)self contentViewController];
    v30 = [v29 view];
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    [v30 _setPresentationValue:v31 forKey:@"opacity"];
  }

  else
  {
    [(SBFTouchPassThroughView *)self->_unlockedContentOverlayView setAlpha:v13];
    [(SBWallpaperEffectView *)self->_panelWallpaperEffectView setAlpha:v16];
    [(SBWallpaperEffectView *)self->_panelFadeOutWallpaperEffectView setAlpha:v17];
    if (!v19)
    {
      goto LABEL_29;
    }

    v29 = [(SBCoverSheetSlidingViewController *)self contentViewController];
    v30 = [v29 view];
    [v30 setAlpha:v20];
  }

LABEL_29:
  [(SBCoverSheetBlurView *)self->_behindCoverSheetBlurView setWeighting:v5 forPresentationValue:v9, v37];
  [(SBCoverSheetBlurView *)self->_panelCoverSheetBlurView setWeighting:v5 forPresentationValue:v10];
  if (CSFeatureEnabled())
  {
    v32 = [(SBCoverSheetPrimarySlidingViewController *)self _appearState];
    v33 = 1.0 - a3;
    if (v32 == 1)
    {
      v33 = a3;
    }

    v34 = v33 * 0.75;
    maskedDimmingView = self->_maskedDimmingView;
    if (v5)
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

- (CGRect)_animationTickedWithProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5
{
  v5 = a5;
  v30.receiver = self;
  v30.super_class = SBCoverSheetPrimarySlidingViewController;
  [SBCoverSheetSlidingViewController _animationTickedWithProgress:sel__animationTickedWithProgress_velocity_forPresentationValue_ velocity:? forPresentationValue:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (CSFeatureEnabled())
  {
    v17 = [(SBCoverSheetPrimarySlidingViewController *)self _appearState];
    v18 = [(SBCoverSheetPrimarySlidingViewController *)self _appearState]== 3 && [(SBCoverSheetSlidingViewController *)self latestTransitionedPresentationState]== 7;
    v23 = fmin(fmax(1.0 - a3, 0.0), 0.3);
    v24 = v23 / 0.3 * (v23 / 0.3) * (v23 / 0.3 * -2.0 + 3.0) * 0.75;
    if (v17 == 1 || v18)
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
    [(SBCoverSheetDimmingView *)maskedDimmingView updateMaskPosition:v5 forPresentationValue:?];
    if (v5)
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
    [(SBCoverSheetPrimarySlidingViewController *)self _updateTransitionProgress:v5 velocity:a3 forPresentationValue:a4];
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
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, v4);

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
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, v4);

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
  v3 = [(SBCoverSheetSlidingViewController *)self delegate];
  [v3 coverSheetSlidingViewControllerReachabilityAnimationWillBegin:self];
}

- (void)handleDidEndReachabilityAnimation
{
  v3 = [(SBCoverSheetSlidingViewController *)self delegate];
  [v3 coverSheetSlidingViewControllerReachabilityAnimationDidEnd:self];
}

- (id)customGestureRecognizerForGrabberTongue:(id)a3
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

- (BOOL)grabberTongueOrPullEnabled:(id)a3 forGestureRecognizer:(id)a4
{
  v5 = a4;
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

  v8 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v9 = [v8 gestureRecognizerShouldBegin:v5];

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

- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v7 = a3;
  [v7 dismissWithStyle:0 animated:1];
  v8 = [v7 edgePullGestureRecognizer];

  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:v8];
}

- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v7 = [a3 edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:v7];
}

- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v7 = [a3 edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:v7];
}

- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v7 = [a3 edgePullGestureRecognizer];
  [(SBCoverSheetSlidingViewController *)self _handlePresentGesture:v7];
}

- (BOOL)_shouldShowGrabberOnFirstSwipe
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterController);
  v4 = [WeakRetained presentingEdge];

  if (v4 == 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(SBCoverSheetPrimarySlidingViewController *)self grabberDelegate];
    v7 = [v6 hasFirstSwipeShowGrabberOverride];
    v5 = (v7 ^ 1) & [v6 screenEdgesDeferringSystemGestures];
  }

  return v5;
}

- (void)_updateWindowVisibility
{
  v3 = [(SBCoverSheetPrimarySlidingViewController *)self grabberDelegate];
  [v3 updateVisibilityForGrabberVisible:{-[SBGrabberTongue isVisible](self->_grabberTongue, "isVisible")}];
}

- (void)positionViewDidUpdateContentViewPosition:(id)a3
{
  v10 = a3;
  v4 = CSFeatureEnabled();
  v5 = v10;
  if (v4)
  {
    v6 = [v10 contentView];
    [v6 frame];
    v8 = v7;

    v9 = [(SBCoverSheetSlidingViewController *)self contentViewController];
    if (objc_opt_respondsToSelector())
    {
      [v9 setYContentOffset:-v8];
    }

    v5 = v10;
  }
}

- (void)_controlCenterWindowSceneDidConnect:(id)a3
{
  v9 = a3;
  v4 = [(SBCoverSheetPrimarySlidingViewController *)self _sbWindowScene];
  v5 = [v9 object];
  v6 = [v5 objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  if (v4 == v6)
  {
    v7 = [v9 object];
    v8 = [v7 objectForKeyedSubscript:@"SBControlCenterNotificationControlCenterControllerKey"];

    [(SBCoverSheetPrimarySlidingViewController *)self _configureControlCenterController:v8];
  }
}

- (void)_configureControlCenterController:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_controlCenterController, v5);
  if ([v5 presentingEdge] == 1)
  {
    v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    [v5 _requirePresentGestureRecognizerToFailForGestureRecognizer:v4];
  }

  else
  {
    v4 = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
    [v5 _requireGestureRecognizerToFailForPresentGestureRecognizer:v4];
  }
}

- (id)_visibilityDescriptionForView:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if ([v4 isHidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 alpha];
  v9 = [v3 stringWithFormat:@"<%@: %p hidden = %@; alpha = %f>", v6, v4, v7, v8];;

  return v9;
}

- (unint64_t)_panelOptions
{
  v3 = [(SBCoverSheetPrimarySlidingViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 interfaceOrientation] - 5;

  v6 = [(SBCoverSheetPrimarySlidingViewController *)self _maglevActive];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1 || v5 < 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
    v11 = [v10 orientPanelWallpaper];
    if (v6)
    {
      if (!((v5 < 0xFFFFFFFFFFFFFFFELL) | v11 & 1))
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

    else if ((v11 & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, (v14 & 0xFFFFFFFFFFFFFFFBLL) != 1) || !SBReduceMotion())
    {
      v12 = 19;
      goto LABEL_18;
    }

    v12 = 17;
LABEL_18:

    return v12;
  }

  if (v6)
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
  v3 = [(SBCoverSheetPrimarySlidingViewController *)self _panelOptions];
  panelWallpaperEffectView = self->_panelWallpaperEffectView;
  if (!panelWallpaperEffectView)
  {
    goto LABEL_7;
  }

  if ([(PBUIWallpaperEffectViewBase *)panelWallpaperEffectView transformOptions]== v3)
  {
    return;
  }

  if (self->_panelWallpaperEffectView)
  {
    v5 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v3;
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
      v10 = v3;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPrimarySlidingViewController _createPanelWallpaperEffectViewIfNeeded] - CREATING _panelWallpaperEffectView with panel options 0x%lX", &v9, 0xCu);
    }
  }

  v7 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:0 transformOptions:v3];
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

- (void)_updateWallpaperScaled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBCoverSheetPrimarySlidingViewController _updateWallpaperScaled:animated:];
  }

  v7 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v8 = v7;
  if (v4)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = MEMORY[0x277D75D18];
  v11 = [v7 wallpaperScaleSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SBCoverSheetPrimarySlidingViewController__updateWallpaperScaled_animated___block_invoke;
  v13[3] = &unk_2783A97D8;
  v15 = a3;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v10 sb_animateWithSettings:v11 mode:v9 animations:v13 completion:0];
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
  v3 = [(SBCoverSheetPrimarySlidingViewController *)self _panelBackgroundShouldUseRoundedCornerAppearance];
  v4 = [(SBCoverSheetPanelBackgroundContainerView *)self->_panelBackgroundContainerView layer];
  v5 = v4;
  if (v3)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    v7 = [v6 traitCollection];
    [v7 displayCornerRadius];
    [v5 setCornerRadius:?];
  }

  else
  {
    [v4 setCornerRadius:0.0];
  }

  panelBackgroundContainerView = self->_panelBackgroundContainerView;

  [(SBCoverSheetPanelBackgroundContainerView *)panelBackgroundContainerView setClipsToBounds:v3];
}

- (void)_willTranslateToPresented:(BOOL)a3
{
  if (!a3)
  {
    if ([(SBCoverSheetSlidingViewController *)self currentPresentationState]== 4)
    {
      v4 = MEMORY[0x277D75D18];
      v5 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
      v6 = [v5 wallpaperScaleSettings];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __70__SBCoverSheetPrimarySlidingViewController__willTranslateToPresented___block_invoke;
      v8[3] = &unk_2783A8C18;
      v8[4] = self;
      [v4 sb_animateWithSettings:v6 mode:3 animations:v8 completion:0];
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