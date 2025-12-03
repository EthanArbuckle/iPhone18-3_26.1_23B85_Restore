@interface SBHomeScreenOverlayViewController
- (BOOL)bs_beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated;
- (BOOL)bs_endAppearanceTransition;
- (BOOL)bs_endAppearanceTransition:(BOOL)transition;
- (BOOL)isDisplayingEditingButtons;
- (BOOL)isPresentingLibraryInMostForegroundState:(id)state;
- (CGRect)contentRect;
- (SBHomeScreenOverlayViewController)initWithListLayoutProvider:(id)provider;
- (SBHomeScreenOverlayViewControllerDelegate)delegate;
- (double)contentWidth;
- (double)contentWidthWithContainerWidth:(double)width;
- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)reason;
- (id)currentSidebarViewController;
- (id)makeTitledButtonOfClass:(Class)class;
- (id)newHomeScreenButtonBackgroundView;
- (unint64_t)childContentVisibility;
- (void)_button:(id)_button appearAnimated:(BOOL)animated;
- (void)_button:(id)_button disappearAnimated:(BOOL)animated completion:(id)completion;
- (void)_configureMatchMoveAnimationForBackgroundView:(id)view withSourceView:(id)sourceView;
- (void)_updateBackgroundView;
- (void)_updateConstraintsForPresentationProgress:(double)progress layoutIfNeeded:(BOOL)needed;
- (void)_updateLayoutForEditButtonsWithSize:(CGSize)size;
- (void)animatePresentationProgress:(double)progress withGestureLiftOffVelocity:(double)velocity completionHandler:(id)handler;
- (void)doneButtonTriggered:(id)triggered;
- (void)loadView;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setFromLeading:(BOOL)leading;
- (void)setLeadingSidebarViewController:(id)controller;
- (void)setPresentationProgress:(double)progress interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler;
- (void)setPresentationProgress:(double)progress withAnimationUpdateMode:(int64_t)mode overrideAnimationSettings:(id)settings completionHandler:(id)handler;
- (void)setShowsAddWidgetButton:(BOOL)button animated:(BOOL)animated;
- (void)setShowsDoneButton:(BOOL)button animated:(BOOL)animated;
- (void)setSuppressesEditingStateForListView:(BOOL)view;
- (void)setSuppressesExtraEditingButtons:(BOOL)buttons;
- (void)setTitledButtonsAlpha:(double)alpha;
- (void)setTrailingSidebarViewController:(id)controller;
- (void)setTransitioningPresentationProgress:(BOOL)progress;
- (void)updateExtraButtonVisibilityAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)widgetButtonTriggered:(id)triggered;
@end

@implementation SBHomeScreenOverlayViewController

- (void)loadView
{
  v63.receiver = self;
  v63.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v63 loadView];
  v3 = objc_alloc(MEMORY[0x277D65E68]);
  view = [(SBHomeScreenOverlayViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setFocusGroupIdentifier:@"HomeScreenOverlay"];
  [(SBHomeScreenOverlayViewController *)self setView:v5];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  contentViewController = [(SBHomeScreenOverlayViewController *)self contentViewController];
  view2 = [contentViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHomeScreenOverlayViewController *)self bs_addChildViewController:contentViewController];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sidebarVisualConfiguration = [contentViewController sidebarVisualConfiguration];
  [sidebarVisualConfiguration insets];
  v23 = v22;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = v23;
  }

  v26 = v5;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  [v21 addObject:v61];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [v26 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v23];
  [v21 addObject:v31];

  bottomAnchor = [v26 bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v14];
  [v21 addObject:v34];

  widthAnchor = [view2 widthAnchor];
  [(SBHomeScreenOverlayViewController *)self contentWidth];
  v36 = [widthAnchor constraintEqualToConstant:?];

  [v21 addObject:v36];
  topAnchor3 = [v26 topAnchor];
  topAnchor4 = [(MTMaterialView *)self->_backgroundView topAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v21 addObject:v39];

  bottomAnchor3 = [v26 bottomAnchor];
  bottomAnchor4 = [(MTMaterialView *)self->_backgroundView bottomAnchor];
  v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v21 addObject:v42];

  leadingAnchor3 = [v26 leadingAnchor];
  leadingAnchor4 = [(MTMaterialView *)self->_backgroundView leadingAnchor];
  v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v21 addObject:v45];

  trailingAnchor = [v26 trailingAnchor];
  trailingAnchor2 = [(MTMaterialView *)self->_backgroundView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 addObject:v48];

  topAnchor5 = [v26 topAnchor];
  topAnchor6 = [(UIView *)self->_buttonBackgroundView topAnchor];
  v51 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v21 addObject:v51];

  leadingAnchor5 = [v26 leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_buttonBackgroundView leadingAnchor];
  v54 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v21 addObject:v54];

  trailingAnchor3 = [v26 trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_buttonBackgroundView trailingAnchor];
  v57 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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
  view = [(SBHomeScreenOverlayViewController *)self view];
  [view bounds];
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
  view = [(SBHomeScreenOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if (v5 != self->_boundsSizeForConstraints.width || v7 != self->_boundsSizeForConstraints.height)
  {
    self->_boundsSizeForConstraints.width = v5;
    self->_boundsSizeForConstraints.height = v7;
    contentWidthConstraint = [(SBHomeScreenOverlayViewController *)self contentWidthConstraint];
    [(SBHomeScreenOverlayViewController *)self contentWidthWithContainerWidth:v5];
    [contentWidthConstraint setConstant:?];

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

- (SBHomeScreenOverlayViewController)initWithListLayoutProvider:(id)provider
{
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = SBHomeScreenOverlayViewController;
  v6 = [(SBHomeScreenOverlayViewController *)&v20 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listLayoutProvider, provider);
    v8 = [providerCopy layoutForIconLocation:*MEMORY[0x277D666D0]];
    if (objc_opt_respondsToSelector())
    {
      sidebarVisualConfiguration = [v8 sidebarVisualConfiguration];
    }

    else
    {
      sidebarVisualConfiguration = objc_alloc_init(MEMORY[0x277D662C8]);
    }

    v10 = sidebarVisualConfiguration;
    if (objc_opt_respondsToSelector())
    {
      rootFolderVisualConfiguration = [v8 rootFolderVisualConfiguration];
    }

    else
    {
      rootFolderVisualConfiguration = objc_alloc_init(MEMORY[0x277D66298]);
    }

    rootFolderVisualConfiguration = v7->_rootFolderVisualConfiguration;
    v7->_rootFolderVisualConfiguration = rootFolderVisualConfiguration;

    v7->_fromLeading = 1;
    v7->_presentationProgress = 0.0;
    v7->_titledButtonsAlpha = 1.0;
    v7->_contentVisibility = 0;
    rootSettings = [MEMORY[0x277D65F70] rootSettings];
    gestureSettings = v7->_gestureSettings;
    v7->_gestureSettings = rootSettings;

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

- (void)setLeadingSidebarViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_leadingSidebarViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(&self->_leadingSidebarViewController, controller);
    leadingSidebarViewController = self->_leadingSidebarViewController;
    if (self->_fromLeading)
    {
      childContentVisibility = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
    }

    else
    {
      childContentVisibility = 2;
    }

    [(SBHVisibleContentPresenter *)leadingSidebarViewController setContentVisibility:childContentVisibility];
    controllerCopy = v8;
  }
}

- (void)setTrailingSidebarViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_trailingSidebarViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(&self->_trailingSidebarViewController, controller);
    trailingSidebarViewController = self->_trailingSidebarViewController;
    if (self->_fromLeading)
    {
      childContentVisibility = 2;
    }

    else
    {
      childContentVisibility = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
    }

    [(SBHVisibleContentPresenter *)trailingSidebarViewController setContentVisibility:childContentVisibility];
    controllerCopy = v8;
  }
}

- (double)contentWidthWithContainerWidth:(double)width
{
  sidebarVisualConfiguration = [(SBHRootSidebarController *)self->_contentViewController sidebarVisualConfiguration];
  [sidebarVisualConfiguration insets];
  v6 = v5;
  v8 = v7;
  [sidebarVisualConfiguration effectiveContentWidthWithContainerWidth:width];
  v10 = v8 + v6 + v9;

  return v10;
}

- (CGRect)contentRect
{
  contentViewController = [(SBHomeScreenOverlayViewController *)self contentViewController];
  view = [contentViewController view];
  [view frame];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = appearCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay will appear, animated: %{BOOL}u.", buf, 8u);
  }

  v6.receiver = self;
  v6.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v23 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    interfaceOrientation = [(SBHomeScreenOverlayViewController *)self interfaceOrientation];
    view = [(SBHomeScreenOverlayViewController *)self view];
    [view frame];
    v9 = NSStringFromCGRect(v24);
    contentLeadingConstraint = [(SBHomeScreenOverlayViewController *)self contentLeadingConstraint];
    [contentLeadingConstraint constant];
    *buf = 138544386;
    v14 = v6;
    v15 = 1024;
    v16 = appearCopy;
    v17 = 2048;
    v18 = interfaceOrientation;
    v19 = 2114;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Overlay Position] %{public}@ animated: %{BOOL}u, orientation: %ld, overlayFrame:%{public}@, leading constrait: %f", buf, 0x30u);
  }

  v12.receiver = self;
  v12.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v12 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = disappearCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay will disappear, animated: %{BOOL}u.", buf, 8u);
  }

  v6.receiver = self;
  v6.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v10 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = disappearCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Today view overlay did disappear, animated: %{BOOL}u.", buf, 8u);
  }

  v7.receiver = self;
  v7.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v7 viewDidDisappear:disappearCopy];
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  self->_reasonsToSnapshotBackgroundView = 0;
}

- (BOOL)bs_beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated
{
  animatedCopy = animated;
  transitionCopy = transition;
  v25 = *MEMORY[0x277D85DE8];
  _appearState = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState > 3)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_2783C52C8[_appearState];
  }

  v16.receiver = self;
  v16.super_class = SBHomeScreenOverlayViewController;
  v9 = [(SBHomeScreenOverlayViewController *)&v16 bs_beginAppearanceTransition:transitionCopy animated:animatedCopy];
  _appearState2 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState2 > 3)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_2783C52C8[_appearState2];
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

- (BOOL)bs_endAppearanceTransition:(BOOL)transition
{
  transitionCopy = transition;
  v23 = *MEMORY[0x277D85DE8];
  _appearState = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState > 3)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_2783C52C8[_appearState];
  }

  v14.receiver = self;
  v14.super_class = SBHomeScreenOverlayViewController;
  v7 = [(SBHomeScreenOverlayViewController *)&v14 bs_endAppearanceTransition:transitionCopy];
  _appearState2 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState2 > 3)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_2783C52C8[_appearState2];
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
  _appearState = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState > 3)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_2783C52C8[_appearState];
  }

  v12.receiver = self;
  v12.super_class = SBHomeScreenOverlayViewController;
  bs_endAppearanceTransition = [(SBHomeScreenOverlayViewController *)&v12 bs_endAppearanceTransition];
  _appearState2 = [(SBHomeScreenOverlayViewController *)self _appearState];
  if (_appearState2 > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_2783C52C8[_appearState2];
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    v10 = @"didn't end";
    *buf = 138413058;
    v14 = v9;
    if (bs_endAppearanceTransition)
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

  return bs_endAppearanceTransition;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v7.receiver = self;
  v7.super_class = SBHomeScreenOverlayViewController;
  [(SBHomeScreenOverlayViewController *)&v7 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [(SBHomeScreenOverlayViewController *)self _configureMatchMoveAnimationForBackgroundView:self->_backgroundView withSourceView:windowCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = SBHomeScreenOverlayViewController;
  coordinatorCopy = coordinator;
  [(SBHomeScreenOverlayViewController *)&v22 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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

  layer = [(MTMaterialView *)self->_backgroundView layer];
  v13 = [layer animationForKey:@"MatchMoveBackgroundView"];
  [layer removeAnimationForKey:@"MatchMoveBackgroundView"];
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
  v17 = layer;
  v18 = v13;
  selfCopy = self;
  v20 = a2;
  v14 = v13;
  v15 = layer;
  [coordinatorCopy animateAlongsideTransition:v21 completion:v16];
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

- (void)setPresentationProgress:(double)progress interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler
{
  v6 = 3;
  if (interactive)
  {
    v6 = 5;
  }

  if (animated)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  [(SBHomeScreenOverlayViewController *)self setPresentationProgress:v7 withAnimationUpdateMode:0 overrideAnimationSettings:handler completionHandler:progress];
}

- (void)animatePresentationProgress:(double)progress withGestureLiftOffVelocity:(double)velocity completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SBFTodayGestureSettings *)self->_gestureSettings scaleAnimationSettingsWithGestureVelocity])
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
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
    v20 = fabs(velocity);
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

    [initWithDefaultValues setDampingRatio:v22];
    [initWithDefaultValues setResponse:v27];
    overlayPositionSettings = [(SBFTodayGestureSettings *)self->_gestureSettings overlayPositionSettings];
    [overlayPositionSettings retargetImpulse];
    [initWithDefaultValues setRetargetImpulse:?];

    v34 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [initWithDefaultValues setFrameRateRange:1114122 highFrameRateReason:{*&v34.minimum, *&v34.maximum, *&v34.preferred}];
  }

  else
  {
    initWithDefaultValues = 0;
  }

  [(SBHomeScreenOverlayViewController *)self setPresentationProgress:3 withAnimationUpdateMode:initWithDefaultValues overrideAnimationSettings:handlerCopy completionHandler:progress];
  contentViewController = [(SBHomeScreenOverlayViewController *)self contentViewController];
  view = [contentViewController view];

  v31 = [MEMORY[0x277CCAE60] valueWithCGPoint:{velocity, 0.0}];
  [view _setVelocity:v31 forKey:@"position"];
  [view _setTargetVelocity:v31 forKey:@"position"];
}

- (void)setPresentationProgress:(double)progress withAnimationUpdateMode:(int64_t)mode overrideAnimationSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  if (settingsCopy)
  {
    overlayBackdropSettings = settingsCopy;
    overlayPositionSettings = overlayBackdropSettings;
  }

  else
  {
    overlayPositionSettings = [(SBFTodayGestureSettings *)self->_gestureSettings overlayPositionSettings];
    overlayBackdropSettings = [(SBFTodayGestureSettings *)self->_gestureSettings overlayBackdropSettings];
  }

  if (self->_presentationProgress != progress)
  {
    self->_presentationProgress = progress;
    [(SBHomeScreenOverlayViewController *)self setTransitioningPresentationProgress:1];
    currentSidebarViewController = [(SBHomeScreenOverlayViewController *)self currentSidebarViewController];
    [currentSidebarViewController setContentVisibility:{-[SBHomeScreenOverlayViewController childContentVisibility](self, "childContentVisibility")}];
    if ([(SBHomeScreenOverlayViewController *)self shouldUseReducedMotionAnimation])
    {
      ++self->_fadingAnimationCount;
      v15 = MEMORY[0x277D75D18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke;
      v30[3] = &unk_2783A8BC8;
      v30[4] = self;
      *&v30[5] = progress;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_2;
      v27[3] = &unk_2783A92B0;
      v27[4] = self;
      progressCopy = progress;
      v28 = handlerCopy;
      [v15 sb_animateWithSettings:overlayBackdropSettings mode:mode animations:v30 completion:v27];
      v16 = v28;
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_3;
      v24[3] = &unk_2783A92B0;
      v24[4] = self;
      progressCopy2 = progress;
      v25 = handlerCopy;
      v17 = MEMORY[0x223D6F7F0](v24);
      v18 = MEMORY[0x277D65DA0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __129__SBHomeScreenOverlayViewController_setPresentationProgress_withAnimationUpdateMode_overrideAnimationSettings_completionHandler___block_invoke_4;
      v19[3] = &unk_2783C5280;
      v19[4] = self;
      v20 = overlayBackdropSettings;
      modeCopy = mode;
      progressCopy3 = progress;
      v21 = overlayPositionSettings;
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

- (void)setFromLeading:(BOOL)leading
{
  leadingCopy = leading;
  if (self->_fromLeading != leading || ([(SBHRootSidebarController *)self->_contentViewController avocadoViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_fromLeading = leadingCopy;
    v6 = &OBJC_IVAR___SBHomeScreenOverlayViewController__leadingSidebarViewController;
    if (leadingCopy)
    {
      v7 = &OBJC_IVAR___SBHomeScreenOverlayViewController__trailingSidebarViewController;
    }

    else
    {
      v7 = &OBJC_IVAR___SBHomeScreenOverlayViewController__leadingSidebarViewController;
    }

    v8 = *(&self->super.super.super.isa + *v7);
    if (!leadingCopy)
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

- (void)setSuppressesExtraEditingButtons:(BOOL)buttons
{
  if (self->_suppressesExtraEditingButtons != buttons)
  {
    self->_suppressesExtraEditingButtons = buttons;
    [(SBHomeScreenOverlayViewController *)self updateExtraButtonVisibilityAnimated:1];
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    currentSidebarViewController = [(SBHomeScreenOverlayViewController *)self currentSidebarViewController];
    childContentVisibility = [(SBHomeScreenOverlayViewController *)self childContentVisibility];
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

    [currentSidebarViewController setContentVisibility:childContentVisibility];
  }
}

- (void)_configureMatchMoveAnimationForBackgroundView:(id)view withSourceView:(id)sourceView
{
  v12 = *MEMORY[0x277D85DE8];
  sourceViewCopy = sourceView;
  viewCopy = view;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  v9 = [MEMORY[0x277D65DE0] matchMoveAnimationForPinningToView:sourceViewCopy];

  [viewCopy addAnimation:v9 forKey:@"MatchMoveBackgroundView"];
}

- (void)_updateConstraintsForPresentationProgress:(double)progress layoutIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v7 = 0.0;
  if (BSFloatIsZero())
  {
    view = [(SBHomeScreenOverlayViewController *)self view];
    [view bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    window = [view window];
    [view convertRect:window toView:{v10, v12, v14, v16}];
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

  isFromLeading = [(SBHomeScreenOverlayViewController *)self isFromLeading];
  [(SBHomeScreenOverlayViewController *)self contentWidth];
  v22 = v7 + v21 * (1.0 - progress);
  if (isFromLeading)
  {
    v23 = v22;
  }

  else
  {
    v23 = -v22;
  }

  contentLeadingConstraint = [(SBHomeScreenOverlayViewController *)self contentLeadingConstraint];
  [contentLeadingConstraint setConstant:v23];

  if (neededCopy)
  {
    view2 = [(SBHomeScreenOverlayViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (id)newHomeScreenButtonBackgroundView
{
  delegate = [(SBHomeScreenOverlayViewController *)self delegate];
  v4 = [delegate backgroundViewForEditingDoneButtonForHomeScreenOverlayViewController:self];

  if (!v4)
  {
    [MEMORY[0x277D663F0] componentBackgroundView];
    return objc_claimAutoreleasedReturnValue();
  }

  return v4;
}

- (id)makeTitledButtonOfClass:(Class)class
{
  v4 = [class alloc];
  v5 = [v4 initWithFrame:3 material:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  configuration = [v5 configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonContentEdgeInsets];
  [configuration setContentInsets:?];
  [v5 setConfiguration:configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonSize];
  [v5 setPreferredContentFittingSize:?];
  legibilitySettings = [(SBHRootSidebarController *)self->_contentViewController legibilitySettings];
  [v5 setLegibilitySettings:legibilitySettings];

  materialView = [v5 materialView];
  legibilitySettings2 = [(SBHRootSidebarController *)self->_contentViewController legibilitySettings];
  [materialView setLegibilityStyle:{objc_msgSend(legibilitySettings2, "style")}];

  return v5;
}

- (void)setShowsDoneButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsDoneButton != button)
  {
    v21 = v4;
    v22 = v5;
    animatedCopy = animated;
    buttonCopy = button;
    self->_showsDoneButton = button;
    doneButton = [(SBHomeScreenOverlayViewController *)self doneButton];
    v10 = doneButton;
    if (buttonCopy)
    {
      if (!doneButton)
      {
        v11 = [(SBHomeScreenOverlayViewController *)self makeTitledButtonOfClass:objc_opt_class()];
        [v11 addTarget:self action:sel_doneButtonTriggered_ forControlEvents:0x2000];
        [(SBHomeScreenOverlayViewController *)self setDoneButton:v11];
        buttonBackgroundView = [(SBHomeScreenOverlayViewController *)self buttonBackgroundView];
        v13 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke;
        v18[3] = &unk_2783A8ED8;
        v18[4] = self;
        v19 = buttonBackgroundView;
        v10 = v11;
        v20 = v10;
        v14 = buttonBackgroundView;
        [v13 performWithoutAnimation:v18];
      }

      [(SBHomeScreenOverlayViewController *)self _button:v10 appearAnimated:animatedCopy];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__SBHomeScreenOverlayViewController_setShowsDoneButton_animated___block_invoke_2;
      v15[3] = &unk_2783A8BF0;
      v10 = doneButton;
      v16 = v10;
      selfCopy = self;
      [(SBHomeScreenOverlayViewController *)self _button:v10 disappearAnimated:animatedCopy completion:v15];
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

- (void)setShowsAddWidgetButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsAddWidgetButton != button)
  {
    v20 = v4;
    v21 = v5;
    animatedCopy = animated;
    buttonCopy = button;
    self->_showsAddWidgetButton = button;
    widgetButton = [(SBHomeScreenOverlayViewController *)self widgetButton];
    [widgetButton setAccessibilityIdentifier:@"avocado-widget-add-button"];
    if (buttonCopy)
    {
      buttonBackgroundView = [(SBHomeScreenOverlayViewController *)self buttonBackgroundView];
      view = [(SBHomeScreenOverlayViewController *)self view];
      [view bringSubviewToFront:buttonBackgroundView];

      if (!widgetButton)
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
        v18 = buttonBackgroundView;
        widgetButton = v12;
        v19 = widgetButton;
        [v13 performWithoutAnimation:v17];
      }

      [(SBHomeScreenOverlayViewController *)self _button:widgetButton appearAnimated:animatedCopy];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__SBHomeScreenOverlayViewController_setShowsAddWidgetButton_animated___block_invoke_2;
      v14[3] = &unk_2783A8BF0;
      widgetButton = widgetButton;
      v15 = widgetButton;
      selfCopy = self;
      [(SBHomeScreenOverlayViewController *)self _button:widgetButton disappearAnimated:animatedCopy completion:v14];
      buttonBackgroundView = v15;
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

- (void)doneButtonTriggered:(id)triggered
{
  delegate = [(SBHomeScreenOverlayViewController *)self delegate];
  [delegate homeScreenOverlayViewWantsToEndEditing:self];
}

- (void)widgetButtonTriggered:(id)triggered
{
  delegate = [(SBHomeScreenOverlayViewController *)self delegate];
  [delegate homeScreenOverlayViewWantsWidgetEditingViewControllerPresented:self];
}

- (void)_button:(id)_button appearAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _buttonCopy = _button;
  v7 = _buttonCopy;
  if (animatedCopy)
  {
    v8 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke;
    v14[3] = &unk_2783A8C18;
    v9 = _buttonCopy;
    v15 = v9;
    [v8 performWithoutAnimation:v14];
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SBHomeScreenOverlayViewController__button_appearAnimated___block_invoke_2;
    v11[3] = &unk_2783A92D8;
    v12 = v9;
    selfCopy = self;
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

- (void)_button:(id)_button disappearAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  _buttonCopy = _button;
  completionCopy = completion;
  v9 = completionCopy;
  if (animatedCopy)
  {
    v10 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke;
    v13[3] = &unk_2783A8C18;
    v14 = _buttonCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__SBHomeScreenOverlayViewController__button_disappearAnimated_completion___block_invoke_2;
    v11[3] = &unk_2783A9C70;
    v12 = v9;
    [v10 animateWithDuration:v13 animations:v11 completion:0.2];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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

- (void)_updateLayoutForEditButtonsWithSize:(CGSize)size
{
  doneButton = [(SBHomeScreenOverlayViewController *)self doneButton];
  widgetButton = [(SBHomeScreenOverlayViewController *)self widgetButton];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = v6;
  v8 = v10;
  v9 = v6;
  v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  BSRectWithSize();
  [MEMORY[0x277D66430] _editButtonLayoutFramesInBounds:self->_rootFolderVisualConfiguration forVisualConfiguration:v7 withTranslationOffset:doneButton inRTL:widgetButton doneButton:&v8 addWidgetButton:&v10 doneButtonFrame:? addWidgetButtonFrame:?];
  [doneButton sb_setBoundsAndPositionFromFrame:{v8, v9}];
  [widgetButton sb_setBoundsAndPositionFromFrame:{v10, v11}];
}

- (BOOL)isDisplayingEditingButtons
{
  if ([(SBHomeScreenOverlayViewController *)self showsDoneButton])
  {
    return 1;
  }

  return [(SBHomeScreenOverlayViewController *)self showsAddWidgetButton];
}

- (void)updateExtraButtonVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(SBHomeScreenOverlayViewController *)self delegate];
  v5 = [delegate showsAddWidgetButtonWhileEditingForHomeScreenOverlayViewController:self];
  v6 = [delegate showsDoneButtonWhileEditingForHomeScreenOverlayViewController:self];
  v7 = [delegate isEditingForHomeScreenOverlayViewController:self];
  interfaceOrientation = [(SBHomeScreenOverlayViewController *)self interfaceOrientation];
  suppressesExtraEditingButtons = [(SBHomeScreenOverlayViewController *)self suppressesExtraEditingButtons];
  if (v7)
  {
    v7 = !suppressesExtraEditingButtons;
    v10 = v6 & v7;
    if (!v5)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_8;
    }

    if ((interfaceOrientation - 1) < 2)
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

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = ([currentDevice userInterfaceIdiom] == 1) & v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  [(SBHomeScreenOverlayViewController *)self setShowsDoneButton:v10 animated:animatedCopy];
  [(SBHomeScreenOverlayViewController *)self setShowsAddWidgetButton:v7 animated:animatedCopy];
}

- (void)setTitledButtonsAlpha:(double)alpha
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_titledButtonsAlpha != alpha)
  {
    self->_titledButtonsAlpha = alpha;
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      alphaCopy = alpha;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBHomeScreenOverlayViewController setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:alpha];
    [(SBTitledHomeScreenButton *)self->_widgetButton setAlpha:alpha];
  }
}

- (void)setSuppressesEditingStateForListView:(BOOL)view
{
  viewCopy = view;
  delegate = [(SBHomeScreenOverlayViewController *)self delegate];
  [delegate homeScreenOverlayViewController:self setSuppressesEditingStateForListView:viewCopy];
}

- (BOOL)isPresentingLibraryInMostForegroundState:(id)state
{
  stateCopy = state;
  contentViewController = [(SBHomeScreenOverlayViewController *)self contentViewController];
  avocadoViewController = [contentViewController avocadoViewController];
  if (avocadoViewController == stateCopy)
  {
    bs_isAppearingOrAppeared = [stateCopy bs_isAppearingOrAppeared];
  }

  else
  {
    bs_isAppearingOrAppeared = 0;
  }

  return bs_isAppearingOrAppeared;
}

- (id)acquireUseSnapshotAsBackgroundViewAssertionForReason:(id)reason
{
  reasonCopy = reason;
  reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  if (!reasonsToSnapshotBackgroundView)
  {
    v6 = [MEMORY[0x277CCA940] set];
    v7 = self->_reasonsToSnapshotBackgroundView;
    self->_reasonsToSnapshotBackgroundView = v6;

    reasonsToSnapshotBackgroundView = self->_reasonsToSnapshotBackgroundView;
  }

  v8 = reasonsToSnapshotBackgroundView;
  [(NSCountedSet *)v8 addObject:reasonCopy];
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CF0CE8]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __90__SBHomeScreenOverlayViewController_acquireUseSnapshotAsBackgroundViewAssertionForReason___block_invoke;
  v17 = &unk_2783C52A8;
  v10 = v8;
  v18 = v10;
  v11 = reasonCopy;
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

- (void)setTransitioningPresentationProgress:(BOOL)progress
{
  if (self->_transitioningPresentationProgress != progress)
  {
    self->_transitioningPresentationProgress = progress;
    [(SBHomeScreenOverlayViewController *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  v3 = ![(SBHomeScreenOverlayViewController *)self isTransitioningPresentationProgress]&& ([(SBHomeScreenOverlayViewController *)self presentationProgress], BSFloatEqualToFloat()) && [(NSCountedSet *)self->_reasonsToSnapshotBackgroundView count]!= 0;
  isContentReplacedWithSnapshot = [(MTMaterialView *)self->_backgroundView isContentReplacedWithSnapshot];
  if (!v3 || (isContentReplacedWithSnapshot & 1) != 0)
  {
    if (!v3 && (isContentReplacedWithSnapshot & 1) != 0)
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[SBHomeScreenOverlayViewController] Returning background to live blur", v9, 2u);
      }

      [(MTMaterialView *)self->_backgroundView setContentReplacedWithSnapshot:0];
      layer = [(MTMaterialView *)self->_backgroundView layer];
      [layer setContentsOpaque:0];

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
    layer2 = [(MTMaterialView *)self->_backgroundView layer];
    [layer2 setContentsOpaque:1];
  }
}

- (SBHomeScreenOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end