@interface SBHomeScreenOverlayViewController
- (BOOL)bs_beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4;
- (BOOL)bs_endAppearanceTransition;
- (BOOL)bs_endAppearanceTransition:(BOOL)a3;
- (BOOL)isDisplayingEditingButtons;
- (BOOL)isPresentingLibraryInMostForegroundState:(id)a3;
- (CGRect)contentRect;
- (SBHomeScreenOverlayViewController)initWithListLayoutProvider:(id)a3;
- (SBHomeScreenOverlayViewControllerDelegate)delegate;
- (double)contentWidth;
- (double)contentWidthWithContainerWidth:(double)a3;
- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)a3;
- (id)currentSidebarViewController;
- (id)makeTitledButtonOfClass:(Class)a3;
- (id)newHomeScreenButtonBackgroundView;
- (unint64_t)childContentVisibility;
- (void)_button:(id)a3 appearAnimated:(BOOL)a4;
- (void)_button:(id)a3 disappearAnimated:(BOOL)a4 completion:(id)a5;
- (void)_configureMatchMoveAnimationForBackgroundView:(id)a3 withSourceView:(id)a4;
- (void)_updateBackgroundView;
- (void)_updateConstraintsForPresentationProgress:(double)a3 layoutIfNeeded:(BOOL)a4;
- (void)_updateLayoutForEditButtonsWithSize:(CGSize)a3;
- (void)animatePresentationProgress:(double)a3 withGestureLiftOffVelocity:(double)a4 completionHandler:(id)a5;
- (void)doneButtonTriggered:(id)a3;
- (void)loadView;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setFromLeading:(BOOL)a3;
- (void)setLeadingSidebarViewController:(id)a3;
- (void)setPresentationProgress:(double)a3 interactive:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)setPresentationProgress:(double)a3 withAnimationUpdateMode:(int64_t)a4 overrideAnimationSettings:(id)a5 completionHandler:(id)a6;
- (void)setShowsAddWidgetButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsDoneButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setSuppressesEditingStateForListView:(BOOL)a3;
- (void)setSuppressesExtraEditingButtons:(BOOL)a3;
- (void)setTitledButtonsAlpha:(double)a3;
- (void)setTrailingSidebarViewController:(id)a3;
- (void)setTransitioningPresentationProgress:(BOOL)a3;
- (void)updateExtraButtonVisibilityAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)widgetButtonTriggered:(id)a3;
@end

@implementation SBHomeScreenOverlayViewController

- (void)loadView
{
  v63.receiver = self;
  v63.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v63 loadView];
  v3 = objc_alloc(MEMORY[0x277D65E68]);
  v4 = [(SBHomeScreenOverlayViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:?];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setFocusGroupIdentifier:@"HomeScreenOverlay"];
  [(SBHomeScreenOverlayViewController *)self setView:v5];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = @"homeScreenOverlay-iPad";
  }

  else
  {
    v8 = @"homeScreenOverlay";
  }

  v9 = MEMORY[0x277D26718];
  v10 = v8;
  v11 = SBHBundle();
  v12 = [v9 materialViewWithRecipeNamed:v10 inBundle:v11 options:0 initialWeighting:0 scaleAdjustment:0.1];

  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [(MTMaterialView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MTMaterialView *)self->_backgroundView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
  [(MTMaterialView *)self->_backgroundView setGroupNameBase:@"HOMESCREEN_OVERLAY_BACKGROUNDVIEW"];
  v14 = 0.0;
  [(MTMaterialView *)self->_backgroundView setWeighting:0.0];
  [v5 addSubview:self->_backgroundView];
  v15 = objc_alloc_init(MEMORY[0x277D75D18]);
  buttonBackgroundView = self->_buttonBackgroundView;
  self->_buttonBackgroundView = v15;

  [(UIView *)self->_buttonBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = self->_buttonBackgroundView;
  v18 = objc_alloc_init(MEMORY[0x277D763B8]);
  [(UIView *)v17 _setBackground:v18];

  [v5 addSubview:self->_buttonBackgroundView];
  v19 = [(SBHomeScreenOverlayViewController *)self contentViewController];
  v20 = [v19 view];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHomeScreenOverlayViewController *)self bs_addChildViewController:v19];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = [v19 sidebarVisualConfiguration];
  [v62 insets];
  v23 = v22;
  v24 = [MEMORY[0x277D75418] currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if ((v25 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = v23;
  }

  v26 = v5;
  v27 = [v5 leadingAnchor];
  v28 = [v20 leadingAnchor];
  v61 = [v27 constraintEqualToAnchor:v28];

  [v21 addObject:v61];
  v29 = [v20 topAnchor];
  v30 = [v26 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v23];
  [v21 addObject:v31];

  v32 = [v26 bottomAnchor];
  v33 = [v20 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v14];
  [v21 addObject:v34];

  v35 = [v20 widthAnchor];
  [(SBHomeScreenOverlayViewController *)self contentWidth];
  v36 = [v35 constraintEqualToConstant:?];

  [v21 addObject:v36];
  v37 = [v26 topAnchor];
  v38 = [(MTMaterialView *)self->_backgroundView topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v21 addObject:v39];

  v40 = [v26 bottomAnchor];
  v41 = [(MTMaterialView *)self->_backgroundView bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v21 addObject:v42];

  v43 = [v26 leadingAnchor];
  v44 = [(MTMaterialView *)self->_backgroundView leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v21 addObject:v45];

  v46 = [v26 trailingAnchor];
  v47 = [(MTMaterialView *)self->_backgroundView trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v21 addObject:v48];

  v49 = [v26 topAnchor];
  v50 = [(UIView *)self->_buttonBackgroundView topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v21 addObject:v51];

  v52 = [v26 leadingAnchor];
  v53 = [(UIView *)self->_buttonBackgroundView leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v21 addObject:v54];

  v55 = [v26 trailingAnchor];
  v56 = [(UIView *)self->_buttonBackgroundView trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v21 addObject:v57];

  [MEMORY[0x277CCAAD0] activateConstraints:v21];
  [(SBHomeScreenOverlayViewController *)self setContentLeadingConstraint:v61];
  [(SBHomeScreenOverlayViewController *)self setContentWidthConstraint:v36];
  v58 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  [(SBHRootSidebarController *)self->_contentViewController setLegibilitySettings:v58];
  [v26 bounds];
  self->_boundsSizeForConstraints.width = v59;
  self->_boundsSizeForConstraints.height = v60;
  [(SBHomeScreenOverlayViewController *)self _updateConstraintsForPresentationProgress:0 layoutIfNeeded:self->_presentationProgress];
}

- (double)contentWidth
{
  v3 = [(SBHomeScreenOverlayViewController *)self view];
  [v3 bounds];
  [(SBHomeScreenOverlayViewController *)self contentWidthWithContainerWidth:CGRectGetWidth(v7)];
  v5 = v4;

  return v5;
}

- (unint64_t)childContentVisibility
{
  [(SBHomeScreenOverlayViewController *)self presentationProgress];
  if (v3 <= 0.0)
  {
    return 2;
  }

  return [(SBHomeScreenOverlayViewController *)self contentVisibility];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(SBHomeScreenOverlayViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 != self->_boundsSizeForConstraints.width || v7 != self->_boundsSizeForConstraints.height)
  {
    self->_boundsSizeForConstraints.width = v5;
    self->_boundsSizeForConstraints.height = v7;
    v9 = [(SBHomeScreenOverlayViewController *)self contentWidthConstraint];
    [(SBHomeScreenOverlayViewController *)self contentWidthWithContainerWidth:v5];
    [v9 setConstant:?];

    [(SBHomeScreenOverlayViewController *)self _updateConstraintsForPresentationProgress:0 layoutIfNeeded:self->_presentationProgress];
  }
}

- (id)currentSidebarViewController
{
  if (self->_fromLeading)
  {
    v2 = &OBJC_IVAR___SBHomeScreenOverlayViewController__leadingSidebarViewController;
  }

  else
  {
    v2 = &OBJC_IVAR___SBHomeScreenOverlayViewController__trailingSidebarViewController;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (SBHomeScreenOverlayViewController)initWithListLayoutProvider:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SBHomeScreenOverlayViewController;
  v6 = [(SBHomeScreenOverlayViewController *)&v20 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listLayoutProvider, a3);
    v8 = [v5 layoutForIconLocation:*MEMORY[0x277D666D0]];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 sidebarVisualConfiguration];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D662C8]);
    }

    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      v11 = [v8 rootFolderVisualConfiguration];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277D66298]);
    }

    rootFolderVisualConfiguration = v7->_rootFolderVisualConfiguration;
    v7->_rootFolderVisualConfiguration = v11;

    v7->_fromLeading = 1;
    v7->_presentationProgress = 0.0;
    v7->_titledButtonsAlpha = 1.0;
    v7->_contentVisibility = 0;
    v13 = [MEMORY[0x277D65F70] rootSettings];
    gestureSettings = v7->_gestureSettings;
    v7->_gestureSettings = v13;

    v15 = objc_alloc_init(MEMORY[0x277D75D38]);
    overlayPresentationFloatAnimatableProperty = v7->_overlayPresentationFloatAnimatableProperty;
    v7->_overlayPresentationFloatAnimatableProperty = v15;

    [(UIViewFloatAnimatableProperty *)v7->_overlayPresentationFloatAnimatableProperty setValue:0.0];
    v17 = objc_alloc_init(MEMORY[0x277D662A0]);
    contentViewController = v7->_contentViewController;
    v7->_contentViewController = v17;

    [(SBHRootSidebarController *)v7->_contentViewController setSidebarVisualConfiguration:v10];
    [(SBHRootSidebarController *)v7->_contentViewController setLayoutInsetsIgnoredEdges:4];
  }

  return v7;
}

- (void)setLeadingSidebarViewController:(id)a3
{
  v5 = a3;
  if (self->_leadingSidebarViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_leadingSidebarViewController, a3);
    leadingSidebarViewController = self->_leadingSidebarViewController;
    if (self->_fromLeading)
    {
      v7 = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
    }

    else
    {
      v7 = 2;
    }

    [(SBHVisibleContentPresenter *)leadingSidebarViewController setContentVisibility:v7];
    v5 = v8;
  }
}

- (void)setTrailingSidebarViewController:(id)a3
{
  v5 = a3;
  if (self->_trailingSidebarViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_trailingSidebarViewController, a3);
    trailingSidebarViewController = self->_trailingSidebarViewController;
    if (self->_fromLeading)
    {
      v7 = 2;
    }

    else
    {
      v7 = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
    }

    [(SBHVisibleContentPresenter *)trailingSidebarViewController setContentVisibility:v7];
    v5 = v8;
  }
}

- (double)contentWidthWithContainerWidth:(double)a3
{
  v4 = [(SBHRootSidebarController *)self->_contentViewController sidebarVisualConfiguration];
  [v4 insets];
  v6 = v5;
  v8 = v7;
  [v4 effectiveContentWidthWithContainerWidth:a3];
  v10 = v8 + v6 + v9;

  return v10;
}

- (CGRect)contentRect
{
  v2 = [(SBHomeScreenOverlayViewController *)self contentViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay will appear, animated: %{BOOL}u.", buf, 8u);
  }

  v6.receiver = self;
  v6.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v6 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = [(SBHomeScreenOverlayViewController *)self interfaceOrientation];
    v8 = [(SBHomeScreenOverlayViewController *)self view];
    [v8 frame];
    v9 = NSStringFromCGRect(v24);
    v10 = [(SBHomeScreenOverlayViewController *)self contentLeadingConstraint];
    [v10 constant];
    *buf = 138544386;
    v14 = v6;
    v15 = 1024;
    v16 = v3;
    v17 = 2048;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Overlay Position] %{public}@ animated: %{BOOL}u, orientation: %ld, overlayFrame:%{public}@, leading constrait: %f", buf, 0x30u);
  }

  v12.receiver = self;
  v12.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v12 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay will disappear, animated: %{BOOL}u.", buf, 8u);
  }

  v6.receiver = self;
  v6.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay did disappear, animated: %{BOOL}u.", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v7 viewDidDisappear:v3];
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  self->_reasonsToSnapshotBackgroundView = 0;
}

- (BOOL)bs_beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v7 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v7 > 3)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_2783C52C8[v7];
  }

  v16.receiver = self;
  v16.super_class = SBHomeScreenOverlayViewController;
  v9 = [(SBHomeScreenOverlayViewController *)&v16 bs_beginAppearanceTransition:v5 animated:v4];
  v10 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v10 > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_2783C52C8[v10];
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _SBFLoggingMethodProem();
    v14 = @"didn't end";
    *buf = 138413058;
    v18 = v13;
    if (v9)
    {
      v14 = @"ended";
    }

    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%@ %@, %@ -> %@", buf, 0x2Au);
  }

  return v9;
}

- (BOOL)bs_endAppearanceTransition:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v5 > 3)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_2783C52C8[v5];
  }

  v14.receiver = self;
  v14.super_class = SBHomeScreenOverlayViewController;
  v7 = [(SBHomeScreenOverlayViewController *)&v14 bs_endAppearanceTransition:v3];
  v8 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v8 > 3)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_2783C52C8[v8];
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _SBFLoggingMethodProem();
    v12 = @"didn't end";
    *buf = 138413058;
    v16 = v11;
    if (v7)
    {
      v12 = @"ended";
    }

    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%@ %@, %@ -> %@", buf, 0x2Au);
  }

  return v7;
}

- (BOOL)bs_endAppearanceTransition
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v3 > 3)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_2783C52C8[v3];
  }

  v12.receiver = self;
  v12.super_class = SBHomeScreenOverlayViewController;
  v5 = [(SBHomeScreenOverlayViewController *)&v12 bs_endAppearanceTransition];
  v6 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (v6 > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_2783C52C8[v6];
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    v10 = @"didn't end";
    *buf = 138413058;
    v14 = v9;
    if (v5)
    {
      v10 = @"ended";
    }

    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@, %@ -> %@", buf, 0x2Au);
  }

  return v5;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7.receiver = self;
  v7.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v7 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    [(SBHomeScreenOverlayViewController *)self _configureMatchMoveAnimationForBackgroundView:self->_backgroundView withSourceView:v6];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = SBHomeScreenOverlayViewController;
  v8 = a4;
  [(SBHomeScreenOverlayViewController *)&v22 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBFLoggingMethodProem();
    v28.width = width;
    v28.height = height;
    v11 = NSStringFromCGSize(v28);
    *buf = 138412546;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ to size %@", buf, 0x16u);
  }

  v12 = [(MTMaterialView *)self->_backgroundView layer];
  v13 = [v12 animationForKey:@"MatchMoveBackgroundView"];
  [v12 removeAnimationForKey:@"MatchMoveBackgroundView"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__SBHomeScreenOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v21[3] = &unk_2783BF4A0;
  v21[4] = self;
  *&v21[5] = width;
  *&v21[6] = height;
  v21[7] = a2;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__SBHomeScreenOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_72;
  v16[3] = &unk_2783C5258;
  v17 = v12;
  v18 = v13;
  v19 = self;
  v20 = a2;
  v14 = v13;
  v15 = v12;
  [v8 animateAlongsideTransition:v21 completion:v16];
}

uint64_t __88__SBHomeScreenOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) contentWidthWithContainerWidth:*(a1 + 40)];
  v3 = v2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBFLoggingMethodProem();
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%@ animate to width %f", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) contentWidthConstraint];
  [v6 setConstant:v3];

  return [*(a1 + 32) _updateLayoutForEditButtonsWithSize:{*(a1 + 40), *(a1 + 48)}];
}

void __88__SBHomeScreenOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_72(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addAnimation:*(a1 + 40) forKey:@"MatchMoveBackgroundView"];
  [*(a1 + 48) contentWidth];
  v3 = v2;
  v4 = [*(a1 + 48) contentWidthConstraint];
  [v4 setConstant:v3];

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ animate completed with new width %f", &v7, 0x16u);
  }
}

- (void)setPresentationProgress:(double)a3 interactive:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = 3;
  if (a4)
  {
    v6 = 5;
  }

  if (a5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  [(SBHomeScreenOverlayViewController *)self setPresentationProgress:v7 withAnimationUpdateMode:0 overrideAnimationSettings:a6 completionHandler:a3];
}

- (void)animatePresentationProgress:(double)a3 withGestureLiftOffVelocity:(double)a4 completionHandler:(id)a5
{
  v32 = a5;
  if ([(SBFTodayGestureSettings *)self->_gestureSettings scaleAnimationSettingsWithGestureVelocity])
  {
    v8 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [(SBFTodayGestureSettings *)self->_gestureSettings minimumVelocity];
    v10 = v9;
    [(SBFTodayGestureSettings *)self->_gestureSettings maximumVelocity];
    v12 = v11;
    [(SBFTodayGestureSettings *)self->_gestureSettings dampingRatioAtMinimumVelocity];
    v14 = v13;
    [(SBFTodayGestureSettings *)self->_gestureSettings dampingRatioAtMaximumVelocity];
    v16 = v15;
    [(SBFTodayGestureSettings *)self->_gestureSettings responseAtMinimumVelocity];
    v18 = v17;
    [(SBFTodayGestureSettings *)self->_gestureSettings responseAtMaximumVelocity];
    v20 = fabs(a4);
    v21 = v20 - v10;
    v22 = v14 + (v20 - v10) * (v16 - v14) / (v12 - v10);
    if (v14 >= v16)
    {
      v23 = v14;
    }

    else
    {
      v23 = v16;
    }

    if (v14 <= v16)
    {
      v24 = v14;
    }

    else
    {
      v24 = v16;
    }

    if (v24 >= v22)
    {
      v22 = v24;
    }

    if (v23 <= v22)
    {
      v22 = v23;
    }

    v25 = v18 + v21 * (v19 - v18) / (v12 - v10);
    if (v18 >= v19)
    {
      v26 = v18;
    }

    else
    {
      v26 = v19;
    }

    if (v18 <= v19)
    {
      v19 = v18;
    }

    if (v19 < v25)
    {
      v19 = v25;
    }

    if (v26 <= v19)
    {
      v27 = v26;
    }

    else
    {
      v27 = v19;
    }

    [v8 setDampingRatio:v22];
    [v8 setResponse:v27];
    v28 = [(SBFTodayGestureSettings *)self->_gestureSettings overlayPositionSettings];
    [v28 retargetImpulse];
    [v8 setRetargetImpulse:?];

    v34 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v8 setFrameRateRange:1114122 highFrameRateReason:{*&v34.minimum, *&v34.maximum, *&v34.preferred}];
  }

  else
  {
    v8 = 0;
  }

  [(SBHomeScreenOverlayViewController *)self setPresentationProgress:3 withAnimationUpdateMode:v8 overrideAnimationSettings:v32 completionHandler:a3];
  v29 = [(SBHomeScreenOverlayViewController *)self contentViewController];
  v30 = [v29 view];

  v31 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a4, 0.0}];
  [v30 _setVelocity:v31 forKey:@"position"];
  [v30 _setTargetVelocity:v31 forKey:@"position"];
}

- (void)setPresentationProgress:(double)a3 withAnimationUpdateMode:(int64_t)a4 overrideAnimationSettings:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
    v13 = v12;
  }

  else
  {
    v13 = [(SBFTodayGestureSettings *)self->_gestureSettings overlayPositionSettings];
    v12 = [(SBFTodayGestureSettings *)self->_gestureSettings overlayBackdropSettings];
  }

  if (self->_presentationProgress != a3)
  {
    self->_presentationProgress = a3;
    [(SBHomeScreenOverlayViewController *)self setTransitioningPresentationProgress:1];
    v14 = [(SBHomeScreenOverlayViewController *)self currentSidebarViewController];
    [v14 setContentVisibility:{-[SBHomeScreenOverlayViewController childContentVisibility](self, "childContentVisibility")}];
    if ([(SBHomeScreenOverlayViewController *)self shouldUseReducedMotionAnimation])
    {
      ++self->_fadingAnimationCount;
      v15 = MEMORY[0x277D75D18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke;
      v30[3] = &unk_2783A8BC8;
      v30[4] = self;
      *&v30[5] = a3;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_2;
      v27[3] = &unk_2783A92B0;
      v27[4] = self;
      v29 = a3;
      v28 = v11;
      [v15 sb_animateWithSettings:v12 mode:a4 animations:v30 completion:v27];
      v16 = v28;
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_3;
      v24[3] = &unk_2783A92B0;
      v24[4] = self;
      v26 = a3;
      v25 = v11;
      v17 = MEMORY[0x223D6F7F0](v24);
      v18 = MEMORY[0x277D65DA0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_4;
      v19[3] = &unk_2783C5280;
      v19[4] = self;
      v20 = v12;
      v22 = a4;
      v23 = a3;
      v21 = v13;
      [v18 perform:v19 finalCompletion:v17];

      v16 = v25;
    }
  }
}

void __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setWeighting:*(a1 + 40)];

  v3 = [*(a1 + 32) view];
  [v3 setAlpha:*(a1 + 40)];
}

uint64_t __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1008);
  if (!v3 || (*(v2 + 1008) = v3 - 1, v2 = *(a1 + 32), !*(v2 + 1008)))
  {
    if (*(v2 + 1064) == *(a1 + 48))
    {
      [v2 setTransitioningPresentationProgress:0];
      [*(*(a1 + 32) + 1160) setValue:*(a1 + 48)];
      [*(a1 + 32) _updateConstraintsForPresentationProgress:*(a1 + 48)];
      v4 = [*(a1 + 32) view];
      [v4 setAlpha:1.0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  if (!v3 || (*(v2 + 1000) = v3 - 1, v2 = *(a1 + 32), !*(v2 + 1000)))
  {
    if (*(v2 + 1064) == *(a1 + 48))
    {
      [v2 setTransitioningPresentationProgress:0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_4(void *a1, void (**a2)(id, __CFString *))
{
  ++*(a1[4] + 1000);
  v3 = MEMORY[0x277D75D18];
  v4 = a1[7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_5;
  v15[3] = &unk_2783A8BC8;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = a1[8];
  v7 = a2 + 2;
  v6 = a2[2];
  v8 = a2;
  v9 = v6();
  [v3 sb_animateWithSettings:v5 mode:v4 animations:v15 completion:v9];

  v10 = MEMORY[0x277D75D18];
  v11 = a1[6];
  v12 = a1[7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_6;
  v14[3] = &unk_2783A8BC8;
  v14[4] = a1[4];
  v14[5] = a1[8];
  v13 = (*v7)(v8, @"overlayPositionAnimation");

  [v10 sb_animateWithSettings:v11 mode:v12 animations:v14 completion:v13];
}

void __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setWeighting:*(a1 + 40)];
}

uint64_t __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_6(uint64_t a1, double a2, double a3, double a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_7;
  v7[3] = &unk_2783A8BC8;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  HIDWORD(v5) = HIDWORD(v8);
  LODWORD(v5) = *MEMORY[0x277CD9DD0];
  LODWORD(a3) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(a4) = *(MEMORY[0x277CD9DD0] + 8);
  [MEMORY[0x277D75D18] sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v7 animations:{v5, a3, a4}];
  return [*(a1 + 32) _updateConstraintsForPresentationProgress:*(a1 + 40)];
}

- (void)setFromLeading:(BOOL)a3
{
  v3 = a3;
  if (self->_fromLeading != a3 || ([(SBHRootSidebarController *)self->_contentViewController avocadoViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_fromLeading = v3;
    v6 = &OBJC_IVAR___SBHomeScreenOverlayViewController__leadingSidebarViewController;
    if (v3)
    {
      v7 = &OBJC_IVAR___SBHomeScreenOverlayViewController__trailingSidebarViewController;
    }

    else
    {
      v7 = &OBJC_IVAR___SBHomeScreenOverlayViewController__leadingSidebarViewController;
    }

    v8 = *(&self->super.super.super.isa + *v7);
    if (!v3)
    {
      v6 = &OBJC_IVAR___SBHomeScreenOverlayViewController__trailingSidebarViewController;
    }

    v9 = *(&self->super.super.super.isa + *v6);
    v10 = v8;
    [v9 setContentVisibility:{-[SBHomeScreenOverlayViewController childContentVisibility](self, "childContentVisibility")}];
    [(SBHRootSidebarController *)self->_contentViewController setAvocadoViewController:v9];
    [(SBHomeScreenOverlayViewController *)self _updateConstraintsForPresentationProgress:self->_presentationProgress];
    [v10 setContentVisibility:2];
  }
}

- (void)setSuppressesExtraEditingButtons:(BOOL)a3
{
  if (self->_suppressesExtraEditingButtons != a3)
  {
    self->_suppressesExtraEditingButtons = a3;
    [(SBHomeScreenOverlayViewController *)self updateExtraButtonVisibilityAnimated:1];
  }
}

- (void)setContentVisibility:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    v4 = [(SBHomeScreenOverlayViewController *)self currentSidebarViewController];
    v5 = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = SBHStringFromContentVisibility();
      v10 = SBHStringFromContentVisibility();
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Setting home screen overlay overlay controller '%{public}@' to content visibility: %{public}@, child visibility: %{public}@", &v11, 0x20u);
    }

    [v4 setContentVisibility:v5];
  }
}

- (void)_configureMatchMoveAnimationForBackgroundView:(id)a3 withSourceView:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  v9 = [MEMORY[0x277D65DE0] matchMoveAnimationForPinningToView:v5];

  [v6 addAnimation:v9 forKey:@"MatchMoveBackgroundView"];
}

- (void)_updateConstraintsForPresentationProgress:(double)a3 layoutIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = 0.0;
  if (BSFloatIsZero())
  {
    v8 = [(SBHomeScreenOverlayViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v8 window];
    [v8 convertRect:v17 toView:{v10, v12, v14, v16}];
    v19 = v18;

    if (BSFloatIsZero())
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v19 + 10.0;
    }
  }

  v20 = [(SBHomeScreenOverlayViewController *)self isFromLeading];
  [(SBHomeScreenOverlayViewController *)self contentWidth];
  v22 = v7 + v21 * (1.0 - a3);
  if (v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = -v22;
  }

  v24 = [(SBHomeScreenOverlayViewController *)self contentLeadingConstraint];
  [v24 setConstant:v23];

  if (v4)
  {
    v25 = [(SBHomeScreenOverlayViewController *)self view];
    [v25 layoutIfNeeded];
  }
}

- (id)newHomeScreenButtonBackgroundView
{
  v3 = [(SBHomeScreenOverlayViewController *)self delegate];
  v4 = [v3 backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:self];

  if (!v4)
  {
    [MEMORY[0x277D663F0] componentBackgroundView];
    return objc_claimAutoreleasedReturnValue();
  }

  return v4;
}

- (id)makeTitledButtonOfClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [v4 initWithFrame:3 material:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6 = [v5 configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonContentEdgeInsets];
  [v6 setContentInsets:?];
  [v5 setConfiguration:v6];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonSize];
  [v5 setPreferredContentFittingSize:?];
  v7 = [(SBHRootSidebarController *)self->_contentViewController legibilitySettings];
  [v5 setLegibilitySettings:v7];

  v8 = [v5 materialView];
  v9 = [(SBHRootSidebarController *)self->_contentViewController legibilitySettings];
  [v8 setLegibilityStyle:{objc_msgSend(v9, "style")}];

  return v5;
}

- (void)setShowsDoneButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsDoneButton != a3)
  {
    v21 = v4;
    v22 = v5;
    v6 = a4;
    v7 = a3;
    self->_showsDoneButton = a3;
    v9 = [(SBHomeScreenOverlayViewController *)self doneButton];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v11 = [(SBHomeScreenOverlayViewController *)self makeTitledButtonOfClass:objc_opt_class()];
        [v11 addTarget:self action:sel_doneButtonTriggered_ forControlEvents:0x2000];
        [(SBHomeScreenOverlayViewController *)self setDoneButton:v11];
        v12 = [(SBHomeScreenOverlayViewController *)self buttonBackgroundView];
        v13 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke;
        v18[3] = &unk_2783A8ED8;
        v18[4] = self;
        v19 = v12;
        v10 = v11;
        v20 = v10;
        v14 = v12;
        [v13 performWithoutAnimation:v18];
      }

      [(SBHomeScreenOverlayViewController *)self _button:v10 appearAnimated:v6];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke_2;
      v15[3] = &unk_2783A8BF0;
      v10 = v9;
      v16 = v10;
      v17 = self;
      [(SBHomeScreenOverlayViewController *)self _button:v10 disappearAnimated:v6 completion:v15];
    }
  }
}

void __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 view];
  [v3 bounds];
  [v2 _updateLayoutForEditButtonsWithSize:{v4, v5}];

  [*(a1 + 40) addSubview:*(a1 + 48)];
  [*(a1 + 40) layoutIfNeeded];
  v6 = MEMORY[0x277CCAAD0];
  v7 = [*(a1 + 40) bottomAnchor];
  v8 = [*(a1 + 48) bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];
  v11[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 activateConstraints:v10];
}

uint64_t __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 setDoneButton:0];
}

- (void)setShowsAddWidgetButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsAddWidgetButton != a3)
  {
    v20 = v4;
    v21 = v5;
    v6 = a4;
    v7 = a3;
    self->_showsAddWidgetButton = a3;
    v9 = [(SBHomeScreenOverlayViewController *)self widgetButton];
    [v9 setAccessibilityIdentifier:@"avocado-widget-add-button"];
    if (v7)
    {
      v10 = [(SBHomeScreenOverlayViewController *)self buttonBackgroundView];
      v11 = [(SBHomeScreenOverlayViewController *)self view];
      [v11 bringSubviewToFront:v10];

      if (!v9)
      {
        v12 = [(SBHomeScreenOverlayViewController *)self makeTitledButtonOfClass:objc_opt_class()];
        [v12 addTarget:self action:sel_widgetButtonTriggered_ forControlEvents:0x2000];
        [(SBHomeScreenOverlayViewController *)self setWidgetButton:v12];
        v13 = MEMORY[0x277D75D18];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __70__SBHomeScreenOverlayViewController_setShowsAddWidgetButton_animated___block_invoke;
        v17[3] = &unk_2783A8ED8;
        v17[4] = self;
        v18 = v10;
        v9 = v12;
        v19 = v9;
        [v13 performWithoutAnimation:v17];
      }

      [(SBHomeScreenOverlayViewController *)self _button:v9 appearAnimated:v6];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__SBHomeScreenOverlayViewController_setShowsAddWidgetButton_animated___block_invoke_2;
      v14[3] = &unk_2783A8BF0;
      v9 = v9;
      v15 = v9;
      v16 = self;
      [(SBHomeScreenOverlayViewController *)self _button:v9 disappearAnimated:v6 completion:v14];
      v10 = v15;
    }
  }
}

void __70__SBHomeScreenOverlayViewController_setShowsAddWidgetButton_animated___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 view];
  [v3 bounds];
  [v2 _updateLayoutForEditButtonsWithSize:{v4, v5}];

  [*(a1 + 40) addSubview:*(a1 + 48)];
  [*(a1 + 40) layoutIfNeeded];
  v6 = MEMORY[0x277CCAAD0];
  v7 = [*(a1 + 40) bottomAnchor];
  v8 = [*(a1 + 48) bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];
  v11[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 activateConstraints:v10];
}

uint64_t __70__SBHomeScreenOverlayViewController_setShowsAddWidgetButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 setWidgetButton:0];
}

- (void)doneButtonTriggered:(id)a3
{
  v4 = [(SBHomeScreenOverlayViewController *)self delegate];
  [v4 homeScreenOverlayViewWantsToEndEditing:self];
}

- (void)widgetButtonTriggered:(id)a3
{
  v4 = [(SBHomeScreenOverlayViewController *)self delegate];
  [v4 homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:self];
}

- (void)_button:(id)a3 appearAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke;
    v14[3] = &unk_2783A8C18;
    v9 = v6;
    v15 = v9;
    [v8 performWithoutAnimation:v14];
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke_2;
    v11[3] = &unk_2783A92D8;
    v12 = v9;
    v13 = self;
    [v10 animateWithDuration:v11 animations:0.2];
  }
}

uint64_t __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(*(a1 + 40) + 1048)];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

- (void)_button:(id)a3 disappearAnimated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v6)
  {
    v10 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke;
    v13[3] = &unk_2783A8C18;
    v14 = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke_2;
    v11[3] = &unk_2783A9C70;
    v12 = v9;
    [v10 animateWithDuration:v13 animations:v11 completion:0.2];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }
}

uint64_t __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, 1);
    }
  }

  return result;
}

- (void)_updateLayoutForEditButtonsWithSize:(CGSize)a3
{
  v4 = [(SBHomeScreenOverlayViewController *)self doneButton];
  v5 = [(SBHomeScreenOverlayViewController *)self widgetButton];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = v6;
  v8 = v10;
  v9 = v6;
  v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  BSRectWithSize();
  [MEMORY[0x277D66430] _editButtonLayoutFramesInBounds:self->_rootFolderVisualConfiguration forVisualConfiguration:v7 withTranslationOffset:v4 inRTL:v5 doneButton:&v8 addWidgetButton:&v10 doneButtonFrame:? addWidgetButtonFrame:?];
  [v4 sb_setBoundsAndPositionFromFrame:{v8, v9}];
  [v5 sb_setBoundsAndPositionFromFrame:{v10, v11}];
}

- (BOOL)isDisplayingEditingButtons
{
  if ([(SBHomeScreenOverlayViewController *)self showsDoneButton])
  {
    return 1;
  }

  return [(SBHomeScreenOverlayViewController *)self showsAddWidgetButton];
}

- (void)updateExtraButtonVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v12 = [(SBHomeScreenOverlayViewController *)self delegate];
  v5 = [v12 showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:self];
  v6 = [v12 showsDoneButtonWhileEditingForHomeScreenOverlayViewController:self];
  v7 = [v12 isEditingForHomeScreenOverlayViewController:self];
  v8 = [(SBHomeScreenOverlayViewController *)self interfaceOrientation];
  v9 = [(SBHomeScreenOverlayViewController *)self suppressesExtraEditingButtons];
  if (v7)
  {
    v7 = !v9;
    v10 = v6 & v7;
    if (!v5)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_8;
    }

    if ((v8 - 1) < 2)
    {
      goto LABEL_8;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    v11 = [MEMORY[0x277D75418] currentDevice];
    v7 = ([v11 userInterfaceIdiom] == 1) & v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  [(SBHomeScreenOverlayViewController *)self setShowsDoneButton:v10 animated:v3];
  [(SBHomeScreenOverlayViewController *)self setShowsAddWidgetButton:v7 animated:v3];
}

- (void)setTitledButtonsAlpha:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_titledButtonsAlpha != a3)
  {
    self->_titledButtonsAlpha = a3;
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      v7 = a3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBHomeScreenOverlayViewController setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:a3];
    [(SBTitledHomeScreenButton *)self->_widgetButton setAlpha:a3];
  }
}

- (void)setSuppressesEditingStateForListView:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenOverlayViewController *)self delegate];
  [v5 homeScreenOverlayViewController:self setSuppressesEditingStateForListView:v3];
}

- (BOOL)isPresentingLibraryInMostForegroundState:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenOverlayViewController *)self contentViewController];
  v6 = [v5 avocadoViewController];
  if (v6 == v4)
  {
    v7 = [v4 bs_isAppearingOrAppeared];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)a3
{
  v4 = a3;
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  if (!reasonsToSnapshotBackgroundView)
  {
    v6 = [MEMORY[0x277CCA940] set];
    v7 = self->_reasonsToSnapshotBackgroundView;
    self->_reasonsToSnapshotBackgroundView = v6;

    reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  }

  v8 = reasonsToSnapshotBackgroundView;
  [(NSCountedSet *)v8 addObject:v4];
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CF0CE8]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __90__SBHomeScreenOverlayViewController_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke;
  v17 = &unk_2783C52A8;
  v10 = v8;
  v18 = v10;
  v11 = v4;
  v19 = v11;
  objc_copyWeak(&v20, &location);
  v12 = [v9 initWithIdentifier:@"SBHomeScreenOverlayViewController" forReason:v11 invalidationBlock:&v14];
  [(SBHomeScreenOverlayViewController *)self _updateBackgroundView:v14];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);

  return v12;
}

void __90__SBHomeScreenOverlayViewController_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateBackgroundView];
}

- (void)setTransitioningPresentationProgress:(BOOL)a3
{
  if (self->_transitioningPresentationProgress != a3)
  {
    self->_transitioningPresentationProgress = a3;
    [(SBHomeScreenOverlayViewController *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  v3 = ![(SBHomeScreenOverlayViewController *)self isTransitioningPresentationProgress]&& ([(SBHomeScreenOverlayViewController *)self presentationProgress], BSFloatEqualToFloat()) && [(NSCountedSet *)self->_reasonsToSnapshotBackgroundView count]!= 0;
  v4 = [(MTMaterialView *)self->_backgroundView isContentReplacedWithSnapshot];
  if (!v3 || (v4 & 1) != 0)
  {
    if (!v3 && (v4 & 1) != 0)
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[SBHomeScreenOverlayViewController] Returning background to live blur", v9, 2u);
      }

      [(MTMaterialView *)self->_backgroundView setContentReplacedWithSnapshot:0];
      v8 = [(MTMaterialView *)self->_backgroundView layer];
      [v8 setContentsOpaque:0];

      [(MTMaterialView *)self->_backgroundView layoutIfNeeded];
    }
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[SBHomeScreenOverlayViewController] Replacing background with snapshot", buf, 2u);
    }

    [(MTMaterialView *)self->_backgroundView setContentReplacedWithSnapshot:1];
    v6 = [(MTMaterialView *)self->_backgroundView layer];
    [v6 setContentsOpaque:1];
  }
}

- (SBHomeScreenOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end