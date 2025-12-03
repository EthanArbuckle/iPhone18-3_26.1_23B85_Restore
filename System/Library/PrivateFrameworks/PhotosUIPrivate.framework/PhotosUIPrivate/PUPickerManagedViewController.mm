@interface PUPickerManagedViewController
- (PUPickerManagedViewController)initWithConfiguration:(id)configuration contentViewController:(id)controller;
- (PUPickerOnboardingView)onboardingOverlayView;
- (void)_forceContentToMatchContainerFrame;
- (void)_updateBackgroundColor;
- (void)_updateInteractiveBarTransitionFractionExpandedAndWindowHeight;
- (void)_updateOnboardingOverlayBadgeContainer;
- (void)_updateOnboardingOverlayView;
- (void)_updatePreferredContentSize;
- (void)_updatePreferredDisplayMode;
- (void)_updateSupportsInteractiveBarTransition;
- (void)assetPickerOnboardingViewDidDismissBadge:(id)badge;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PUPickerManagedViewController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUPickerConfigurationObservationContext_89103 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerManagedViewController.m" lineNumber:482 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x25) != 0)
  {
    [(PUPickerManagedViewController *)self _updateOnboardingOverlayView];
  }

  if (changeCopy)
  {
    [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
  }

  if ((changeCopy & 0xE0) != 0)
  {
    [(PUPickerManagedViewController *)self _forceContentToMatchContainerFrame];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  contentViewController = [(PUPickerManagedViewController *)self contentViewController];

  if (contentViewController == viewControllerCopy)
  {

    [(PUPickerManagedViewController *)self _updateOnboardingOverlayBadgeContainer];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  configuration = [(PUPickerManagedViewController *)self configuration];
  isPeopleOrPetsPicker = [configuration isPeopleOrPetsPicker];

  if ((isPeopleOrPetsPicker & 1) == 0)
  {
    contentViewController = [(PUPickerManagedViewController *)self contentViewController];
    [contentViewController navigationWillPresentViewController:viewControllerCopy];
  }
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PUPickerManagedViewController_splitViewController_willChangeToDisplayMode___block_invoke;
  block[3] = &unk_1E7B7F350;
  selfCopy = self;
  modeCopy = mode;
  v9 = controllerCopy;
  v7 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __77__PUPickerManagedViewController_splitViewController_willChangeToDisplayMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 || ([*(a1 + 32) isCollapsed] & 1) != 0)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 40) sidebarViewController];
    v2 = 1;
  }

  v4 = [*(a1 + 40) contentViewController];
  [v4 setSidebarViewController:v3];

  if (v2)
  {
  }

  v5 = *(a1 + 40);

  return [v5 _updateSupportsInteractiveBarTransition];
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  contentViewController = [(PUPickerManagedViewController *)self contentViewController];
  [contentViewController setSidebarViewController:0];

  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)splitViewControllerDidExpand:(id)expand
{
  displayMode = [expand displayMode];
  if (displayMode == 1)
  {
    sidebarViewController = 0;
  }

  else
  {
    sidebarViewController = [(PUPickerManagedViewController *)self sidebarViewController];
  }

  contentViewController = [(PUPickerManagedViewController *)self contentViewController];
  [contentViewController setSidebarViewController:sidebarViewController];

  if (displayMode != 1)
  {
  }

  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)assetPickerOnboardingViewDidDismissBadge:(id)badge
{
  configuration = [(PUPickerManagedViewController *)self configuration];
  [configuration performChanges:&__block_literal_global_230_89111];
}

void __74__PUPickerManagedViewController_assetPickerOnboardingViewDidDismissBadge___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDidDismissOnboardingOverlayView:1];
  [v2 setDidShowPhotosIndicator:1];
}

- (void)_forceContentToMatchContainerFrame
{
  v49 = *MEMORY[0x1E69E9840];
  configuration = [(PUPickerManagedViewController *)self configuration];
  supportsInteractiveBarTransition = [configuration supportsInteractiveBarTransition];

  if (!supportsInteractiveBarTransition)
  {
    return;
  }

  view = [(PUPickerManagedViewController *)self view];
  window = [view window];
  [window bounds];
  v8 = v7;

  view2 = [(PUPickerManagedViewController *)self view];
  window2 = [view2 window];
  _rootSheetPresentationController = [window2 _rootSheetPresentationController];

  _detentValues = [_rootSheetPresentationController _detentValues];
  if ([_detentValues count] == 2)
  {
    firstObject = [_detentValues firstObject];
    [firstObject doubleValue];
    v15 = v14;
    lastObject = [_detentValues lastObject];
    [lastObject doubleValue];
    v18 = fmax(v15, v17);

    containerView = [_rootSheetPresentationController containerView];
    [containerView safeAreaInsets];
    v21 = v20;

    v22 = v18 + v21;
    v23 = PLPickerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v46 = 134218240;
      *&v46[4] = v22;
      v47 = 2048;
      v48 = v18;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEBUG, "Interactive navigation bar transition calculated max card height to: %f, detent: %f", v46, 0x16u);
    }

    if (v22 <= v8)
    {
      goto LABEL_12;
    }

    v24 = PLPickerGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      v25 = "Interactive navigation bar transition failed to calculate max card height from root sheet detent values. Height too large.";
LABEL_10:
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, v25, v46, 2u);
    }
  }

  else
  {
    v24 = PLPickerGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      v25 = "Interactive navigation bar transition failed to calculate max card height from root sheet detent values. Invalid detents.";
      goto LABEL_10;
    }
  }

  v22 = v8 + -54.0;

LABEL_12:
  childViewControllers = [(PUPickerManagedViewController *)self childViewControllers];
  v27 = [childViewControllers count];

  if (v27 != 1)
  {
    v28 = PXAssertGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_error_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "This code assumes there's just 1 child view controller, reevaluate if this changes.", v46, 2u);
    }
  }

  childViewControllers2 = [(PUPickerManagedViewController *)self childViewControllers];
  firstObject2 = [childViewControllers2 firstObject];
  view3 = [firstObject2 view];

  [view3 frame];
  v33 = v32;
  v35 = v34;
  view4 = [(PUPickerManagedViewController *)self view];
  [view4 bounds];
  v38 = v37;

  [view3 setFrame:{v33, v35, v38, v22}];
  view5 = [(PUPickerManagedViewController *)self view];
  [view5 bounds];
  MidX = CGRectGetMidX(v51);
  view6 = [(PUPickerManagedViewController *)self view];
  [view6 bounds];
  v42 = v22 * 0.5 + CGRectGetMinY(v52);

  [view3 setCenter:{MidX, v42}];
  v43 = PLPickerGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v53.origin.x = v33;
    v53.origin.y = v35;
    v53.size.width = v38;
    v53.size.height = v22;
    v44 = NSStringFromCGRect(v53);
    v50.x = MidX;
    v50.y = v42;
    v45 = NSStringFromCGPoint(v50);
    *v46 = 138412546;
    *&v46[4] = v44;
    v47 = 2112;
    v48 = *&v45;
    _os_log_impl(&dword_1B36F3000, v43, OS_LOG_TYPE_DEBUG, "Interactive navigation bar transition did update view frame to %@, center to: %@", v46, 0x16u);
  }
}

- (void)_updateInteractiveBarTransitionFractionExpandedAndWindowHeight
{
  v35 = *MEMORY[0x1E69E9840];
  view = [(PUPickerManagedViewController *)self view];
  window = [view window];
  [window bounds];
  v6 = v5;

  view2 = [(PUPickerManagedViewController *)self view];
  window2 = [view2 window];
  _rootSheetPresentationController = [window2 _rootSheetPresentationController];
  _detentValues = [_rootSheetPresentationController _detentValues];

  v11 = 1.0;
  if ([_detentValues count] == 2)
  {
    view3 = [(PUPickerManagedViewController *)self view];
    [view3 bounds];
    v14 = v13;
    view4 = [(PUPickerManagedViewController *)self view];
    [view4 safeAreaInsets];
    v17 = v16;

    firstObject = [_detentValues firstObject];
    v19 = 0.0;
    v20 = 0.0;
    if ([firstObject integerValue] != 0x7FFFFFFFFFFFFFFFLL)
    {
      firstObject2 = [_detentValues firstObject];
      [firstObject2 doubleValue];
      v20 = v22;
    }

    v23 = v14 - v17;

    lastObject = [_detentValues lastObject];
    if ([lastObject integerValue] != 0x7FFFFFFFFFFFFFFFLL)
    {
      lastObject2 = [_detentValues lastObject];
      [lastObject2 doubleValue];
      v19 = v26;
    }

    v27 = fmin(v20, v19);
    v11 = fmin(fmax((v23 - v27) / (fmax(v20, v19) - v27), 0.0), 1.0);
  }

  v28 = PLPickerGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v32 = v6;
    v33 = 2048;
    v34 = v11;
    _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_DEBUG, "Interactive navigation bar transition will update with window height: %f, fraction expanded: %f", buf, 0x16u);
  }

  configuration = [(PUPickerManagedViewController *)self configuration];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __95__PUPickerManagedViewController__updateInteractiveBarTransitionFractionExpandedAndWindowHeight__block_invoke;
  v30[3] = &__block_descriptor_48_e40_v16__0___PUMutablePickerConfiguration__8l;
  *&v30[4] = v11;
  v30[5] = v6;
  [configuration performChanges:v30];
}

void __95__PUPickerManagedViewController__updateInteractiveBarTransitionFractionExpandedAndWindowHeight__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInteractiveBarTransitionFractionExpanded:v3];
  [v4 setInteractiveBarTransitionWindowHeight:*(a1 + 40)];
}

- (void)_updateSupportsInteractiveBarTransition
{
  traitCollection = [(PUPickerManagedViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Interactive navigation bar transition is skipped due to non-phone idiom.";
LABEL_21:
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  splitViewController = [(PUPickerManagedViewController *)self splitViewController];
  if ([splitViewController displayMode] == 1)
  {
  }

  else
  {
    splitViewController2 = [(PUPickerManagedViewController *)self splitViewController];
    isCollapsed = [splitViewController2 isCollapsed];

    if ((isCollapsed & 1) == 0)
    {
      v5 = PLPickerGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v6 = "Interactive navigation bar transition is skipped due to visible sidebar.";
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  configuration = [(PUPickerManagedViewController *)self configuration];
  v11 = [configuration edgesWithoutContentMargins] & 5;

  if (v11)
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Interactive navigation bar transition is skipped due to hidden navigation bar or toolbar.";
      goto LABEL_21;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  view = [(PUPickerManagedViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v15 = [windowScene interfaceOrientation] - 3;

  if (v15 <= 1)
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Interactive navigation bar transition is skipped due to landscape orientation.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  view2 = [(PUPickerManagedViewController *)self view];
  window2 = [view2 window];
  _rootSheetPresentationController = [window2 _rootSheetPresentationController];
  _detentValues = [_rootSheetPresentationController _detentValues];
  v20 = [_detentValues count];

  v5 = PLPickerGetLog();
  v21 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v20 != 2)
  {
    if (v21)
    {
      *buf = 0;
      v6 = "Interactive navigation bar transition is skipped due to invalid detent counts.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "Interactive navigation bar transition is enabled.", buf, 2u);
  }

  v22 = 1;
LABEL_23:

  configuration2 = [(PUPickerManagedViewController *)self configuration];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__PUPickerManagedViewController__updateSupportsInteractiveBarTransition__block_invoke;
  v24[3] = &__block_descriptor_33_e40_v16__0___PUMutablePickerConfiguration__8l;
  v25 = v22;
  [configuration2 performChanges:v24];
}

- (void)_updateBackgroundColor
{
  contentViewController = [(PUPickerManagedViewController *)self contentViewController];
  sidebarViewController = [contentViewController sidebarViewController];

  if (!sidebarViewController)
  {
    view = [(PUPickerManagedViewController *)self view];
    [view px_enumerateDescendantSubviewsPassingTest:&__block_literal_global_220_89128 usingBlock:&__block_literal_global_226];
  }
}

void __55__PUPickerManagedViewController__updateBackgroundColor__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor:v4];
}

uint64_t __55__PUPickerManagedViewController__updateBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uisplitviewcon.isa);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updatePreferredDisplayMode
{
  sheetPresentationController = [(PUPickerManagedViewController *)self sheetPresentationController];
  detents = [sheetPresentationController detents];
  if ([detents count])
  {
    sheetPresentationController2 = [(PUPickerManagedViewController *)self sheetPresentationController];
    detents2 = [sheetPresentationController2 detents];
    v7 = PXExists() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  view = [(PUPickerManagedViewController *)self view];
  [view bounds];
  v10 = v9;

  configuration = [(PUPickerManagedViewController *)self configuration];
  if ([configuration allowsSidebar])
  {
    contentViewController = [(PUPickerManagedViewController *)self contentViewController];
    hasContent = [contentViewController hasContent];
    v14 = 2;
    if (v10 < 525.0)
    {
      v14 = 1;
    }

    if ((hasContent & v7) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  splitViewController = [(PUPickerManagedViewController *)self splitViewController];
  preferredDisplayMode = [splitViewController preferredDisplayMode];

  if (preferredDisplayMode != v15)
  {
    splitViewController2 = [(PUPickerManagedViewController *)self splitViewController];
    [splitViewController2 setPreferredDisplayMode:v15];
  }
}

uint64_t __60__PUPickerManagedViewController__updatePreferredDisplayMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69DE3B0]];

  return v3 ^ 1u;
}

- (void)_updatePreferredContentSize
{
  configuration = [(PUPickerManagedViewController *)self configuration];
  disableAutoPreferredContentSize = [configuration disableAutoPreferredContentSize];

  splitViewController = [(PUPickerManagedViewController *)self splitViewController];
  [splitViewController preferredContentSize];
  v7 = v6;
  v9 = v8;

  if ((disableAutoPreferredContentSize & 1) == 0)
  {
    [(PUPickerManagedViewController *)self preferredContentSize];
    if (v11 != v7 || v10 != v9)
    {

      [(PUPickerManagedViewController *)self setPreferredContentSize:v7, v9];
    }
  }
}

- (void)_updateOnboardingOverlayBadgeContainer
{
  configuration = [(PUPickerManagedViewController *)self configuration];
  if ([configuration supportsInteractiveBarTransition])
  {
    viewIfLoaded = [(PUPickerManagedViewController *)self viewIfLoaded];
  }

  else
  {
    contentViewController = [(PUPickerManagedViewController *)self contentViewController];
    viewIfLoaded = [contentViewController viewIfLoaded];
  }

  window = [viewIfLoaded window];
  if (window)
  {
    v6 = viewIfLoaded;
  }

  else
  {
    v6 = 0;
  }

  onboardingOverlayView = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [onboardingOverlayView setBadgeContainerView:v6];
}

- (void)_updateOnboardingOverlayView
{
  v30[4] = *MEMORY[0x1E69E9840];
  configuration = [(PUPickerManagedViewController *)self configuration];
  shouldShowOnboardingOverlayView = [configuration shouldShowOnboardingOverlayView];

  onboardingOverlayView = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [onboardingOverlayView removeFromSuperview];

  if (shouldShowOnboardingOverlayView)
  {
    view = [(PUPickerManagedViewController *)self view];
    onboardingOverlayView2 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    [view addSubview:onboardingOverlayView2];

    v20 = MEMORY[0x1E696ACD8];
    onboardingOverlayView3 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    topAnchor = [onboardingOverlayView3 topAnchor];
    view2 = [(PUPickerManagedViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v25;
    onboardingOverlayView4 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    bottomAnchor = [onboardingOverlayView4 bottomAnchor];
    view3 = [(PUPickerManagedViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v19;
    onboardingOverlayView5 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    leadingAnchor = [onboardingOverlayView5 leadingAnchor];
    view4 = [(PUPickerManagedViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v11;
    onboardingOverlayView6 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    trailingAnchor = [onboardingOverlayView6 trailingAnchor];
    view5 = [(PUPickerManagedViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v20 activateConstraints:v17];
  }

  else
  {

    [(PUPickerManagedViewController *)self setOnboardingOverlayView:0];
  }
}

- (PUPickerOnboardingView)onboardingOverlayView
{
  if (!self->_onboardingOverlayView)
  {
    configuration = [(PUPickerManagedViewController *)self configuration];
    shouldShowOnboardingOverlayView = [configuration shouldShowOnboardingOverlayView];

    if (shouldShowOnboardingOverlayView)
    {
      v5 = [PUPickerOnboardingView alloc];
      configuration2 = [(PUPickerManagedViewController *)self configuration];
      pickerClientDisplayName = [configuration2 pickerClientDisplayName];
      v8 = [(PUPickerOnboardingView *)v5 initWithClientDisplayName:pickerClientDisplayName];

      [(PUPickerOnboardingView *)v8 setDelegate:self];
      [(PUPickerOnboardingView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      onboardingOverlayView = self->_onboardingOverlayView;
      self->_onboardingOverlayView = v8;
    }
  }

  v10 = self->_onboardingOverlayView;

  return v10;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v6 viewDidLayoutSubviews];
  [(PUPickerManagedViewController *)self _updateInteractiveBarTransitionFractionExpandedAndWindowHeight];
  [(PUPickerManagedViewController *)self _updatePreferredDisplayMode];
  [(PUPickerManagedViewController *)self _updateBackgroundColor];
  [(PUPickerManagedViewController *)self _updateOnboardingOverlayBadgeContainer];
  onboardingOverlayView = [(PUPickerManagedViewController *)self onboardingOverlayView];
  superview = [onboardingOverlayView superview];
  onboardingOverlayView2 = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [superview bringSubviewToFront:onboardingOverlayView2];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v3 viewWillLayoutSubviews];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(PUPickerManagedViewController *)self _updatePreferredContentSize];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 didRotateFromInterfaceOrientation:orientation];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 traitCollectionDidChange:change];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v18 viewDidLoad];
  configuration = [(PUPickerManagedViewController *)self configuration];
  [configuration registerChangeObserver:self context:PUPickerConfigurationObservationContext_89103];

  contentNavigationController = [(PUPickerManagedViewController *)self contentNavigationController];
  [contentNavigationController setDelegate:self];

  splitViewController = [(PUPickerManagedViewController *)self splitViewController];
  [splitViewController setDelegate:self];

  configuration2 = [(PUPickerManagedViewController *)self configuration];
  hasClearBackgroundColor = [configuration2 hasClearBackgroundColor];

  if ((hasClearBackgroundColor & 1) == 0)
  {
    configuration3 = [(PUPickerManagedViewController *)self configuration];
    if ([configuration3 hasClearBackgroundColor])
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v9 = ;
    view = [(PUPickerManagedViewController *)self view];
    [view setBackgroundColor:v9];
  }

  [(PUPickerManagedViewController *)self _updatePreferredDisplayMode];
  splitViewController2 = [(PUPickerManagedViewController *)self splitViewController];
  [(PUPickerManagedViewController *)self px_addOrReplaceChildViewController:splitViewController2 activateConstraints:1];

  [(PUPickerManagedViewController *)self _updatePreferredContentSize];
  splitViewController3 = [(PUPickerManagedViewController *)self splitViewController];
  if ([splitViewController3 displayMode] == 1)
  {

LABEL_9:
    v15 = 0;
    sidebarViewController = 0;
    goto LABEL_11;
  }

  splitViewController4 = [(PUPickerManagedViewController *)self splitViewController];
  isCollapsed = [splitViewController4 isCollapsed];

  if (isCollapsed)
  {
    goto LABEL_9;
  }

  sidebarViewController = [(PUPickerManagedViewController *)self sidebarViewController];
  v15 = 1;
LABEL_11:
  contentViewController = [(PUPickerManagedViewController *)self contentViewController];
  [contentViewController setSidebarViewController:sidebarViewController];

  if (v15)
  {
  }

  [(PUPickerManagedViewController *)self _updateOnboardingOverlayView];
}

- (PUPickerManagedViewController)initWithConfiguration:(id)configuration contentViewController:(id)controller
{
  v45[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  controllerCopy = controller;
  v43.receiver = self;
  v43.super_class = PUPickerManagedViewController;
  v9 = [(PUPickerManagedViewController *)&v43 initWithNibName:0 bundle:0];
  if (v9)
  {
    [MEMORY[0x1E697B670] prefetchSensitiveContentPolicy:&__block_literal_global_89152];
    v10 = [PUNavigationController alloc];
    obj = configuration;
    controllerCopy2 = controller;
    if (MEMORY[0x1B8C6D660]())
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_opt_class();
    }

    v12 = [(PUNavigationController *)v10 initWithNavigationBarClass:v11 toolbarClass:0];
    v45[0] = controllerCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(PUNavigationController *)v12 setViewControllers:v13];

    interactivePopGestureRecognizer = [(PUNavigationController *)v12 interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:{objc_msgSend(configurationCopy, "allowsInteractivePopGesture")}];

    -[PUNavigationController pu_setDisablePushPopAnimation:](v12, "pu_setDisablePushPopAnimation:", [configurationCopy allowsNavigationPushPopAnimation] ^ 1);
    [configurationCopy photoLibrary];
    v15 = v42 = configurationCopy;
    v37 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:?];
    v16 = [objc_alloc(MEMORY[0x1E69C3660]) initWithSharedLibraryStatusProvider:v37];
    if ([v42 excludesHiddenAlbum])
    {
      v17 = 7;
    }

    else
    {
      v17 = 3;
    }

    if ([v42 excludesSharedAlbums])
    {
      v18 = v17 | 8;
    }

    else
    {
      v18 = v17;
    }

    v19 = [PUSidebarViewController alloc];
    generatedFilter = [v42 generatedFilter];
    assetPredicate = [generatedFilter assetPredicate];
    allPhotosVirtualCollection = [v42 allPhotosVirtualCollection];
    v41 = controllerCopy;
    v23 = [(PUSidebarViewController *)v19 initWithNavigationRoot:controllerCopy photoLibrary:v15 libraryFilterState:v16 options:v18 additionalAssetsFilterPredicate:assetPredicate pickerAllPhotosVirtualCollection:allPhotosVirtualCollection];

    v24 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v23];
    v25 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
    [(UISplitViewController *)v25 setViewController:v24 forColumn:0];
    [(UISplitViewController *)v25 setViewController:v12 forColumn:2];
    [(UISplitViewController *)v25 setViewController:v12 forColumn:3];
    [(UISplitViewController *)v25 setPrimaryBackgroundStyle:1];
    [(UISplitViewController *)v25 setPreferredSplitBehavior:1];
    [(UISplitViewController *)v25 setPresentsWithGesture:0];
    [(UISplitViewController *)v25 setPreferredPrimaryColumnWidth:240.0];
    [(UISplitViewController *)v25 setMinimumSecondaryColumnWidth:240.0];
    v44 = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    v27 = [(UISplitViewController *)v25 registerForTraitChanges:v26 withTarget:v9 action:sel__splitViewControllerDidChangeTraitPresentationSemanticContext_];

    objc_storeStrong(&v9->_configuration, obj);
    objc_storeStrong(&v9->_contentViewController, controllerCopy2);
    contentNavigationController = v9->_contentNavigationController;
    v9->_contentNavigationController = &v12->super;
    v29 = v12;

    sidebarViewController = v9->_sidebarViewController;
    v9->_sidebarViewController = v23;
    v31 = v23;
    controllerCopy = v41;
    v32 = v31;

    sidebarNavigationController = v9->_sidebarNavigationController;
    v9->_sidebarNavigationController = v24;
    v34 = v24;

    splitViewController = v9->_splitViewController;
    v9->_splitViewController = v25;

    configurationCopy = v42;
  }

  return v9;
}

void __77__PUPickerManagedViewController_initWithConfiguration_contentViewController___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content analysis policy: %@", &v4, 0xCu);
    }
  }
}

@end