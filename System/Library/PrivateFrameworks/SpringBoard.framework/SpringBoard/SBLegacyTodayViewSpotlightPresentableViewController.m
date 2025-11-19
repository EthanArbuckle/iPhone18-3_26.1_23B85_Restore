@interface SBLegacyTodayViewSpotlightPresentableViewController
- (SBLegacyTodayViewSpotlightPresentableViewController)initWithSpotlightMultiplexingViewController:(id)a3 searchBarViewController:(id)a4 scrollView:(id)a5;
- (SBLegacyTodayViewSpotlightPresentableViewControllerDelegate)delegate;
- (id)_sharedRemoteSearchViewController;
- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5;
- (void)_beginRequiringSearchBarPortalViewForReason:(id)a3;
- (void)_endRequiringSearchBarPortalViewForReason:(id)a3;
- (void)_setUpFeatherBackgroundMatchMoveAnimations;
- (void)_setUpSearchBackdrop;
- (void)_setUpSearchBackdropMatchMoveAnimation;
- (void)_setUpSearchBar;
- (void)_updateMaskLayers;
- (void)dismissSearchView;
- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBLegacyTodayViewSpotlightPresentableViewController

- (SBLegacyTodayViewSpotlightPresentableViewController)initWithSpotlightMultiplexingViewController:(id)a3 searchBarViewController:(id)a4 scrollView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBLegacyTodayViewSpotlightPresentableViewController;
  v12 = [(SBLegacyTodayViewSpotlightPresentableViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_spotlightMultiplexingViewController, a3);
    objc_storeStrong(&v13->_searchBarViewController, a4);
    objc_storeStrong(&v13->_scrollView, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBLegacyTodayViewSpotlightPresentableViewController;
  [(SBLegacyTodayViewSpotlightPresentableViewController *)&v3 viewDidLoad];
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _setUpSearchBackdrop];
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _setUpSearchBar];
  [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setSpotlightDelegate:self];
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self bs_addChildViewController:self->_spotlightMultiplexingViewController];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  if (a3)
  {
    [(SBLegacyTodayViewSpotlightPresentableViewController *)self _setUpSearchBackdropMatchMoveAnimation:a3];

    [(SBLegacyTodayViewSpotlightPresentableViewController *)self _setUpFeatherBackgroundMatchMoveAnimations];
  }

  else
  {
    v5 = [(MTMaterialView *)self->_searchBackdropView layer:0];
    [v5 removeAnimationForKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  v6 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
  v7 = [(MTMaterialView *)self->_searchBackdropView layer];
  v8 = [v7 animationForKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
  [v7 removeAnimationForKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
  [v6 setHidden:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__SBLegacyTodayViewSpotlightPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_2783B7B68;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v8;
  v11 = v7;
  [v5 animateAlongsideTransition:0 completion:v12];
}

uint64_t __106__SBLegacyTodayViewSpotlightPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addAnimation:*(a1 + 40) forKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
  v2 = *(a1 + 48);

  return [v2 setHidden:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBLegacyTodayViewSpotlightPresentableViewController;
  [(SBLegacyTodayViewSpotlightPresentableViewController *)&v3 viewDidLayoutSubviews];
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _updateMaskLayers];
}

- (void)updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6
{
  v39 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view:a3];
  v10 = [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController view];
  v11 = [(SPUISearchBarController *)self->_searchBarViewController view];
  [v39 safeAreaInsets];
  v38 = v12;
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self topOffset];
  v14 = v13;
  spotlightMultiplexingViewController = self->_spotlightMultiplexingViewController;
  if (spotlightMultiplexingViewController)
  {
    v16 = [(SBSpotlightMultiplexingViewController *)spotlightMultiplexingViewController interfaceOrientation];
    v17 = 38.0;
    if ((v16 - 1) < 2)
    {
      v17 = 36.0;
    }

    v37 = v17;
  }

  else
  {
    v37 = 36.0;
  }

  [v39 bounds];
  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  [v11 center];
  v23 = v22;
  v25 = v24;
  v26 = a4 / 3.0 + v14;
  [v11 size];
  v28 = v27 * 0.5;
  if (a6)
  {
    if (a6 == 2)
    {
      v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76918], v28}];
      [v30 _scaledValueForValue:v37];
      UIRoundToViewScale();
      v25 = v38 + v31 + 6.0;

      v26 = v14;
    }

    else
    {
      v29 = v38 + v26 + v28;
      if (a6 == 1)
      {
        v25 = v29;
        v21 = v14 + a4 + v21;
      }
    }
  }

  else
  {
    v21 = v14 + v21;
    v25 = v38 + v26 + v28;
  }

  [v10 setCenter:{v19, v21}];
  [(NSLayoutConstraint *)self->_searchBarViewTopConstraint setConstant:v26];
  [(_UIPortalView *)self->_searchBarPortalView setCenter:v23, v25];
  v32 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self _sharedRemoteSearchViewController];
  [v32 setRevealProgress:a3];

  searchBackdropView = self->_searchBackdropView;
  [v39 bounds];
  [(MTMaterialView *)searchBackdropView setFrame:?];
  [(MTMaterialView *)self->_searchBackdropView setWeighting:a3];
  [v10 setAlpha:(a3 + -0.3) / 0.7 + 0.0];
  v34 = 1.0;
  if (a6 == 2)
  {
    v34 = 0.0;
  }

  [v11 setAlpha:v34];
  featherBlurHeightConstraint = self->_featherBlurHeightConstraint;
  [v11 bounds];
  [(NSLayoutConstraint *)featherBlurHeightConstraint setConstant:v14 + v36 + 12.0];
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _updateMaskLayers];
}

- (id)willBeginModifyingPresentationProgressForState:(int64_t)a3 animated:(BOOL)a4 needsInitialLayout:(BOOL *)a5
{
  v7 = 0;
  if (a3 == 2)
  {
    v8 = @"AnimatedPresentation-%@";
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = self->_searchBarPortalView == 0;
    v8 = @"AnimatedDismissal-%@";
LABEL_5:
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringWithFormat:v8, v11];

    goto LABEL_7;
  }

  v12 = @"SBTodayViewSearchPortalRequiredForInteractivePresentationReason";
LABEL_7:
  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _beginRequiringSearchBarPortalViewForReason:v12];
  *a5 = v7;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __130__SBLegacyTodayViewSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke;
  v16[3] = &unk_2783A9CE8;
  objc_copyWeak(&v18, &location);
  v17 = v12;
  v13 = v12;
  v14 = MEMORY[0x223D6F7F0](v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v14;
}

void __130__SBLegacyTodayViewSpotlightPresentableViewController_willBeginModifyingPresentationProgressForState_animated_needsInitialLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _endRequiringSearchBarPortalViewForReason:*(a1 + 32)];
}

- (void)dismissSearchView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained legacyTodayViewSpotlightPresentableViewControllerShouldDismiss:self];
}

- (void)_setUpSearchBar
{
  v43[7] = *MEMORY[0x277D85DE8];
  if (self->_searchBarViewController)
  {
    v3 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
    [(SBLegacyTodayViewSpotlightPresentableViewController *)self topOffset];
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277D65E58]) initWithRecipe:0];
    featherBlurView = self->_featherBlurView;
    self->_featherBlurView = v6;

    [(SBFFeatherBlurView *)self->_featherBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:self->_featherBlurView];
    [(SBLegacyTodayViewSpotlightPresentableViewController *)self bs_addChildViewController:self->_searchBarViewController withSuperview:v3];
    v8 = [(SPUISearchBarController *)self->_searchBarViewController view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v8 topAnchor];
    v10 = [v3 safeAreaLayoutGuide];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintEqualToAnchor:v11 constant:v5];
    searchBarViewTopConstraint = self->_searchBarViewTopConstraint;
    self->_searchBarViewTopConstraint = v12;

    v14 = [(SBFFeatherBlurView *)self->_featherBlurView bottomAnchor];
    v15 = [v3 safeAreaLayoutGuide];
    v16 = [v15 topAnchor];
    [v8 bounds];
    v18 = [v14 constraintEqualToAnchor:v16 constant:v5 + v17];
    featherBlurHeightConstraint = self->_featherBlurHeightConstraint;
    self->_featherBlurHeightConstraint = v18;

    v34 = MEMORY[0x277CCAAD0];
    v43[0] = self->_searchBarViewTopConstraint;
    v41 = [v3 leadingAnchor];
    v42 = v8;
    v40 = [v8 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v43[1] = v39;
    v38 = [v3 trailingAnchor];
    v37 = [v8 trailingAnchor];
    v35 = [v38 constraintEqualToAnchor:v37];
    v43[2] = v35;
    v33 = [(SBFFeatherBlurView *)self->_featherBlurView topAnchor];
    v32 = [v3 topAnchor];
    v20 = [v33 constraintEqualToAnchor:v32];
    v43[3] = v20;
    v21 = [(SBFFeatherBlurView *)self->_featherBlurView leadingAnchor];
    v22 = v3;
    v36 = v3;
    v23 = [v3 leadingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v43[4] = v24;
    v25 = [(SBFFeatherBlurView *)self->_featherBlurView trailingAnchor];
    v26 = [v22 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v28 = self->_featherBlurHeightConstraint;
    v43[5] = v27;
    v43[6] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
    [v34 activateConstraints:v29];

    v30 = [MEMORY[0x277D65E58] configureGradientMaskForFeatherBlurRecipe:0 onContentView:self->_scrollView];
    searchBarGradientMaskLayers = self->_searchBarGradientMaskLayers;
    self->_searchBarGradientMaskLayers = v30;
  }
}

- (void)_setUpSearchBackdrop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained backdropViewForLegacyTodayViewSpotlightPresentableViewController:self];
  searchBackdropView = self->_searchBackdropView;
  self->_searchBackdropView = v4;

  [(MTMaterialView *)self->_searchBackdropView bs_setHitTestingDisabled:1];
  v6 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
  [v6 addSubview:self->_searchBackdropView];
  [v6 sendSubviewToBack:self->_searchBackdropView];
}

- (void)_setUpFeatherBackgroundMatchMoveAnimations
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_searchBarGradientMaskLayers mutableCopy];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  featherBlurView = self->_featherBlurView;
  if (featherBlurView)
  {
    v5 = [(SBFFeatherBlurView *)featherBlurView layer];
    [v3 addObject:v5];
  }

  v6 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
  v7 = [v6 window];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = MEMORY[0x277D65E58];
        [v13 frame];
        v15 = [v14 matchMoveAnimationForFrame:v7 relativeToView:?];
        [v13 addAnimation:v15 forKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_setUpSearchBackdropMatchMoveAnimation
{
  v3 = MEMORY[0x277D65DE0];
  v4 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
  v5 = [v4 window];
  v6 = [v3 matchMoveAnimationForPinningToView:v5];

  [(MTMaterialView *)self->_searchBackdropView addAnimation:v6 forKey:@"SBTodayViewSearchBackdropMatchMoveAnimation"];
}

- (void)_beginRequiringSearchBarPortalViewForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBLegacyTodayViewSpotlightPresentableViewController *)a2 _beginRequiringSearchBarPortalViewForReason:?];
    v5 = 0;
  }

  if (self->_searchBarViewController)
  {
    searchBarPortalRequirementReasons = self->_searchBarPortalRequirementReasons;
    v18 = v5;
    if (!searchBarPortalRequirementReasons)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = self->_searchBarPortalRequirementReasons;
      self->_searchBarPortalRequirementReasons = v7;

      searchBarPortalRequirementReasons = self->_searchBarPortalRequirementReasons;
    }

    [(NSMutableSet *)searchBarPortalRequirementReasons addObject:v18];
    if (!self->_searchBarPortalView)
    {
      v9 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self _sharedRemoteSearchViewController];
      v10 = [v9 searchHeaderLayerRenderID];
      v11 = [v9 searchHeaderContextID];
      if (v10 && v11)
      {
        v12 = [(SPUISearchBarController *)self->_searchBarViewController view];
        [v12 setHidden:1];

        v13 = objc_alloc_init(MEMORY[0x277D76180]);
        searchBarPortalView = self->_searchBarPortalView;
        self->_searchBarPortalView = v13;

        [(_UIPortalView *)self->_searchBarPortalView bs_setHitTestingDisabled:1];
        [(_UIPortalView *)self->_searchBarPortalView setHidesSourceView:1];
        v15 = [(_UIPortalView *)self->_searchBarPortalView portalLayer];
        [v15 setSourceLayerRenderId:{objc_msgSend(v9, "searchHeaderLayerRenderID")}];

        v16 = [(_UIPortalView *)self->_searchBarPortalView portalLayer];
        [v16 setSourceContextId:{objc_msgSend(v9, "searchHeaderContextID")}];

        v17 = [(SBLegacyTodayViewSpotlightPresentableViewController *)self view];
        [v17 addSubview:self->_searchBarPortalView];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_endRequiringSearchBarPortalViewForReason:(id)a3
{
  [(NSMutableSet *)self->_searchBarPortalRequirementReasons removeObject:a3];
  if (![(NSMutableSet *)self->_searchBarPortalRequirementReasons count]&& self->_searchBarPortalView)
  {
    v4 = [(SPUISearchBarController *)self->_searchBarViewController view];
    [v4 setHidden:0];

    [(_UIPortalView *)self->_searchBarPortalView removeFromSuperview];
    searchBarPortalView = self->_searchBarPortalView;
    self->_searchBarPortalView = 0;
  }
}

- (void)_updateMaskLayers
{
  v38 = *MEMORY[0x277D85DE8];
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v4 = v3;
  [(UIScrollView *)self->_scrollView contentOffset];
  v6 = v4 + v5;
  [MEMORY[0x277D65E58] gradientMaskLayerInsetsForFeatherBlurRecipe:0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBFFeatherBlurView *)self->_featherBlurView frame];
  v32 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = self->_searchBarGradientMaskLayers;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = v21 - (v8 + v12);
    v26 = v19 - (v10 + v14);
    v27 = v8 + v17;
    v28 = v10 + v32;
    v29 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v22);
        }

        v31 = *(*(&v33 + 1) + 8 * i);
        [v31 setFrame:{v28, v27, v26, v25}];
        [v31 setHidden:v6 <= 0.0];
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v24);
  }

  [(SBLegacyTodayViewSpotlightPresentableViewController *)self _setUpFeatherBackgroundMatchMoveAnimations];
  [(SBFFeatherBlurView *)self->_featherBlurView setHidden:v6 <= 0.0];
}

- (id)_sharedRemoteSearchViewController
{
  v2 = objc_opt_class();

  return [v2 sharedRemoteSearchViewController];
}

- (SBLegacyTodayViewSpotlightPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_beginRequiringSearchBarPortalViewForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLegacyTodayViewSpotlightPresentableViewController.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end