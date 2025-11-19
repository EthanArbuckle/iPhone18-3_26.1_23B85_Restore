@interface PUPickerManagedViewController
- (PUPickerManagedViewController)initWithConfiguration:(id)a3 contentViewController:(id)a4;
- (PUPickerOnboardingView)onboardingOverlayView;
- (void)_forceContentToMatchContainerFrame;
- (void)_updateBackgroundColor;
- (void)_updateInteractiveBarTransitionFractionExpandedAndWindowHeight;
- (void)_updateOnboardingOverlayBadgeContainer;
- (void)_updateOnboardingOverlayView;
- (void)_updatePreferredContentSize;
- (void)_updatePreferredDisplayMode;
- (void)_updateSupportsInteractiveBarTransition;
- (void)assetPickerOnboardingViewDidDismissBadge:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PUPickerManagedViewController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (PUPickerConfigurationObservationContext_89103 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPickerManagedViewController.m" lineNumber:482 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x25) != 0)
  {
    [(PUPickerManagedViewController *)self _updateOnboardingOverlayView];
  }

  if (v6)
  {
    [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
  }

  if ((v6 & 0xE0) != 0)
  {
    [(PUPickerManagedViewController *)self _forceContentToMatchContainerFrame];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = [(PUPickerManagedViewController *)self contentViewController];

  if (v7 == v6)
  {

    [(PUPickerManagedViewController *)self _updateOnboardingOverlayBadgeContainer];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  v6 = [(PUPickerManagedViewController *)self configuration];
  v7 = [v6 isPeopleOrPetsPicker];

  if ((v7 & 1) == 0)
  {
    v8 = [(PUPickerManagedViewController *)self contentViewController];
    [v8 navigationWillPresentViewController:v9];
  }
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PUPickerManagedViewController_splitViewController_willChangeToDisplayMode___block_invoke;
  block[3] = &unk_1E7B7F350;
  v10 = self;
  v11 = a4;
  v9 = v6;
  v7 = v6;
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

- (void)splitViewControllerDidCollapse:(id)a3
{
  v4 = [(PUPickerManagedViewController *)self contentViewController];
  [v4 setSidebarViewController:0];

  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)splitViewControllerDidExpand:(id)a3
{
  v4 = [a3 displayMode];
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PUPickerManagedViewController *)self sidebarViewController];
  }

  v6 = [(PUPickerManagedViewController *)self contentViewController];
  [v6 setSidebarViewController:v5];

  if (v4 != 1)
  {
  }

  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)assetPickerOnboardingViewDidDismissBadge:(id)a3
{
  v3 = [(PUPickerManagedViewController *)self configuration];
  [v3 performChanges:&__block_literal_global_230_89111];
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
  v3 = [(PUPickerManagedViewController *)self configuration];
  v4 = [v3 supportsInteractiveBarTransition];

  if (!v4)
  {
    return;
  }

  v5 = [(PUPickerManagedViewController *)self view];
  v6 = [v5 window];
  [v6 bounds];
  v8 = v7;

  v9 = [(PUPickerManagedViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 _rootSheetPresentationController];

  v12 = [v11 _detentValues];
  if ([v12 count] == 2)
  {
    v13 = [v12 firstObject];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v12 lastObject];
    [v16 doubleValue];
    v18 = fmax(v15, v17);

    v19 = [v11 containerView];
    [v19 safeAreaInsets];
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
  v26 = [(PUPickerManagedViewController *)self childViewControllers];
  v27 = [v26 count];

  if (v27 != 1)
  {
    v28 = PXAssertGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_error_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "This code assumes there's just 1 child view controller, reevaluate if this changes.", v46, 2u);
    }
  }

  v29 = [(PUPickerManagedViewController *)self childViewControllers];
  v30 = [v29 firstObject];
  v31 = [v30 view];

  [v31 frame];
  v33 = v32;
  v35 = v34;
  v36 = [(PUPickerManagedViewController *)self view];
  [v36 bounds];
  v38 = v37;

  [v31 setFrame:{v33, v35, v38, v22}];
  v39 = [(PUPickerManagedViewController *)self view];
  [v39 bounds];
  MidX = CGRectGetMidX(v51);
  v41 = [(PUPickerManagedViewController *)self view];
  [v41 bounds];
  v42 = v22 * 0.5 + CGRectGetMinY(v52);

  [v31 setCenter:{MidX, v42}];
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
  v3 = [(PUPickerManagedViewController *)self view];
  v4 = [v3 window];
  [v4 bounds];
  v6 = v5;

  v7 = [(PUPickerManagedViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 _rootSheetPresentationController];
  v10 = [v9 _detentValues];

  v11 = 1.0;
  if ([v10 count] == 2)
  {
    v12 = [(PUPickerManagedViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v15 = [(PUPickerManagedViewController *)self view];
    [v15 safeAreaInsets];
    v17 = v16;

    v18 = [v10 firstObject];
    v19 = 0.0;
    v20 = 0.0;
    if ([v18 integerValue] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [v10 firstObject];
      [v21 doubleValue];
      v20 = v22;
    }

    v23 = v14 - v17;

    v24 = [v10 lastObject];
    if ([v24 integerValue] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [v10 lastObject];
      [v25 doubleValue];
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

  v29 = [(PUPickerManagedViewController *)self configuration];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __95__PUPickerManagedViewController__updateInteractiveBarTransitionFractionExpandedAndWindowHeight__block_invoke;
  v30[3] = &__block_descriptor_48_e40_v16__0___PUMutablePickerConfiguration__8l;
  *&v30[4] = v11;
  v30[5] = v6;
  [v29 performChanges:v30];
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
  v3 = [(PUPickerManagedViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
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

  v7 = [(PUPickerManagedViewController *)self splitViewController];
  if ([v7 displayMode] == 1)
  {
  }

  else
  {
    v8 = [(PUPickerManagedViewController *)self splitViewController];
    v9 = [v8 isCollapsed];

    if ((v9 & 1) == 0)
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

  v10 = [(PUPickerManagedViewController *)self configuration];
  v11 = [v10 edgesWithoutContentMargins] & 5;

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

  v12 = [(PUPickerManagedViewController *)self view];
  v13 = [v12 window];
  v14 = [v13 windowScene];
  v15 = [v14 interfaceOrientation] - 3;

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

  v16 = [(PUPickerManagedViewController *)self view];
  v17 = [v16 window];
  v18 = [v17 _rootSheetPresentationController];
  v19 = [v18 _detentValues];
  v20 = [v19 count];

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

  v23 = [(PUPickerManagedViewController *)self configuration];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__PUPickerManagedViewController__updateSupportsInteractiveBarTransition__block_invoke;
  v24[3] = &__block_descriptor_33_e40_v16__0___PUMutablePickerConfiguration__8l;
  v25 = v22;
  [v23 performChanges:v24];
}

- (void)_updateBackgroundColor
{
  v3 = [(PUPickerManagedViewController *)self contentViewController];
  v4 = [v3 sidebarViewController];

  if (!v4)
  {
    v5 = [(PUPickerManagedViewController *)self view];
    [v5 px_enumerateDescendantSubviewsPassingTest:&__block_literal_global_220_89128 usingBlock:&__block_literal_global_226];
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
  v3 = [(PUPickerManagedViewController *)self sheetPresentationController];
  v4 = [v3 detents];
  if ([v4 count])
  {
    v5 = [(PUPickerManagedViewController *)self sheetPresentationController];
    v6 = [v5 detents];
    v7 = PXExists() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PUPickerManagedViewController *)self view];
  [v8 bounds];
  v10 = v9;

  v11 = [(PUPickerManagedViewController *)self configuration];
  if ([v11 allowsSidebar])
  {
    v12 = [(PUPickerManagedViewController *)self contentViewController];
    v13 = [v12 hasContent];
    v14 = 2;
    if (v10 < 525.0)
    {
      v14 = 1;
    }

    if ((v13 & v7) != 0)
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

  v16 = [(PUPickerManagedViewController *)self splitViewController];
  v17 = [v16 preferredDisplayMode];

  if (v17 != v15)
  {
    v18 = [(PUPickerManagedViewController *)self splitViewController];
    [v18 setPreferredDisplayMode:v15];
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
  v3 = [(PUPickerManagedViewController *)self configuration];
  v4 = [v3 disableAutoPreferredContentSize];

  v5 = [(PUPickerManagedViewController *)self splitViewController];
  [v5 preferredContentSize];
  v7 = v6;
  v9 = v8;

  if ((v4 & 1) == 0)
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
  v3 = [(PUPickerManagedViewController *)self configuration];
  if ([v3 supportsInteractiveBarTransition])
  {
    v8 = [(PUPickerManagedViewController *)self viewIfLoaded];
  }

  else
  {
    v4 = [(PUPickerManagedViewController *)self contentViewController];
    v8 = [v4 viewIfLoaded];
  }

  v5 = [v8 window];
  if (v5)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [v7 setBadgeContainerView:v6];
}

- (void)_updateOnboardingOverlayView
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerManagedViewController *)self configuration];
  v4 = [v3 shouldShowOnboardingOverlayView];

  v5 = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [v5 removeFromSuperview];

  if (v4)
  {
    v6 = [(PUPickerManagedViewController *)self view];
    v7 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    [v6 addSubview:v7];

    v20 = MEMORY[0x1E696ACD8];
    v29 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    v27 = [v29 topAnchor];
    v28 = [(PUPickerManagedViewController *)self view];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v24 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    v22 = [v24 bottomAnchor];
    v23 = [(PUPickerManagedViewController *)self view];
    v21 = [v23 bottomAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v30[1] = v19;
    v18 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    v8 = [v18 leadingAnchor];
    v9 = [(PUPickerManagedViewController *)self view];
    v10 = [v9 leadingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v30[2] = v11;
    v12 = [(PUPickerManagedViewController *)self onboardingOverlayView];
    v13 = [v12 trailingAnchor];
    v14 = [(PUPickerManagedViewController *)self view];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
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
    v3 = [(PUPickerManagedViewController *)self configuration];
    v4 = [v3 shouldShowOnboardingOverlayView];

    if (v4)
    {
      v5 = [PUPickerOnboardingView alloc];
      v6 = [(PUPickerManagedViewController *)self configuration];
      v7 = [v6 pickerClientDisplayName];
      v8 = [(PUPickerOnboardingView *)v5 initWithClientDisplayName:v7];

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
  v3 = [(PUPickerManagedViewController *)self onboardingOverlayView];
  v4 = [v3 superview];
  v5 = [(PUPickerManagedViewController *)self onboardingOverlayView];
  [v4 bringSubviewToFront:v5];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v3 viewWillLayoutSubviews];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(PUPickerManagedViewController *)self _updatePreferredContentSize];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 didRotateFromInterfaceOrientation:a3];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v4 traitCollectionDidChange:a3];
  [(PUPickerManagedViewController *)self _updateSupportsInteractiveBarTransition];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PUPickerManagedViewController;
  [(PUPickerManagedViewController *)&v18 viewDidLoad];
  v3 = [(PUPickerManagedViewController *)self configuration];
  [v3 registerChangeObserver:self context:PUPickerConfigurationObservationContext_89103];

  v4 = [(PUPickerManagedViewController *)self contentNavigationController];
  [v4 setDelegate:self];

  v5 = [(PUPickerManagedViewController *)self splitViewController];
  [v5 setDelegate:self];

  v6 = [(PUPickerManagedViewController *)self configuration];
  v7 = [v6 hasClearBackgroundColor];

  if ((v7 & 1) == 0)
  {
    v8 = [(PUPickerManagedViewController *)self configuration];
    if ([v8 hasClearBackgroundColor])
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v9 = ;
    v10 = [(PUPickerManagedViewController *)self view];
    [v10 setBackgroundColor:v9];
  }

  [(PUPickerManagedViewController *)self _updatePreferredDisplayMode];
  v11 = [(PUPickerManagedViewController *)self splitViewController];
  [(PUPickerManagedViewController *)self px_addOrReplaceChildViewController:v11 activateConstraints:1];

  [(PUPickerManagedViewController *)self _updatePreferredContentSize];
  v12 = [(PUPickerManagedViewController *)self splitViewController];
  if ([v12 displayMode] == 1)
  {

LABEL_9:
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v13 = [(PUPickerManagedViewController *)self splitViewController];
  v14 = [v13 isCollapsed];

  if (v14)
  {
    goto LABEL_9;
  }

  v16 = [(PUPickerManagedViewController *)self sidebarViewController];
  v15 = 1;
LABEL_11:
  v17 = [(PUPickerManagedViewController *)self contentViewController];
  [v17 setSidebarViewController:v16];

  if (v15)
  {
  }

  [(PUPickerManagedViewController *)self _updateOnboardingOverlayView];
}

- (PUPickerManagedViewController)initWithConfiguration:(id)a3 contentViewController:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = PUPickerManagedViewController;
  v9 = [(PUPickerManagedViewController *)&v43 initWithNibName:0 bundle:0];
  if (v9)
  {
    [MEMORY[0x1E697B670] prefetchSensitiveContentPolicy:&__block_literal_global_89152];
    v10 = [PUNavigationController alloc];
    obj = a3;
    v40 = a4;
    if (MEMORY[0x1B8C6D660]())
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_opt_class();
    }

    v12 = [(PUNavigationController *)v10 initWithNavigationBarClass:v11 toolbarClass:0];
    v45[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(PUNavigationController *)v12 setViewControllers:v13];

    v14 = [(PUNavigationController *)v12 interactivePopGestureRecognizer];
    [v14 setEnabled:{objc_msgSend(v7, "allowsInteractivePopGesture")}];

    -[PUNavigationController pu_setDisablePushPopAnimation:](v12, "pu_setDisablePushPopAnimation:", [v7 allowsNavigationPushPopAnimation] ^ 1);
    [v7 photoLibrary];
    v15 = v42 = v7;
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
    v20 = [v42 generatedFilter];
    v21 = [v20 assetPredicate];
    v22 = [v42 allPhotosVirtualCollection];
    v41 = v8;
    v23 = [(PUSidebarViewController *)v19 initWithNavigationRoot:v8 photoLibrary:v15 libraryFilterState:v16 options:v18 additionalAssetsFilterPredicate:v21 pickerAllPhotosVirtualCollection:v22];

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
    objc_storeStrong(&v9->_contentViewController, v40);
    contentNavigationController = v9->_contentNavigationController;
    v9->_contentNavigationController = &v12->super;
    v29 = v12;

    sidebarViewController = v9->_sidebarViewController;
    v9->_sidebarViewController = v23;
    v31 = v23;
    v8 = v41;
    v32 = v31;

    sidebarNavigationController = v9->_sidebarNavigationController;
    v9->_sidebarNavigationController = v24;
    v34 = v24;

    splitViewController = v9->_splitViewController;
    v9->_splitViewController = v25;

    v7 = v42;
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