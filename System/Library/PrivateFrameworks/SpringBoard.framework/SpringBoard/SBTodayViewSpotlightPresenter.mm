@interface SBTodayViewSpotlightPresenter
- (BOOL)searchPresenterCanPresent:(id)a3;
- (SBTodayViewSpotlightPresenter)initWithSearchBarViewController:(id)a3 containerView:(id)a4 scrollView:(id)a5 delegate:(id)a6;
- (SBTodayViewSpotlightPresenterDelegate)delegate;
- (double)_topOffset;
- (id)_newSearchBackdropView;
- (id)backdropViewForLegacyTodayViewSpotlightPresentableViewController:(id)a3;
- (id)backgroundViewForSpotlightPresentableViewController:(id)a3;
- (id)searchPresentablesForPresenter:(id)a3;
- (void)_configureFeatherBlurMatchMoveAnimations;
- (void)_setUpFeatherBlur;
- (void)_setUpStartingScrollOffset;
- (void)_updateFeatherBlurMaskLayers;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBarDidFocus;
- (void)searchPresenterDidDismissSearch:(id)a3;
- (void)searchPresenterDidPresentSearch:(id)a3;
- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4;
- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4;
@end

@implementation SBTodayViewSpotlightPresenter

- (SBTodayViewSpotlightPresenter)initWithSearchBarViewController:(id)a3 containerView:(id)a4 scrollView:(id)a5 delegate:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTodayViewSpotlightPresenter initWithSearchBarViewController:a2 containerView:self scrollView:? delegate:?];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [SBTodayViewSpotlightPresenter initWithSearchBarViewController:a2 containerView:self scrollView:? delegate:?];
LABEL_3:
  v25.receiver = self;
  v25.super_class = SBTodayViewSpotlightPresenter;
  v17 = [(SBTodayViewSpotlightPresenter *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_searchBarViewController, a3);
    objc_storeStrong(&v18->_containerView, a4);
    objc_storeStrong(&v18->_scrollView, a5);
    objc_storeWeak(&v18->_delegate, v16);
    [v12 setDelegate:v18];
    v19 = [SBSearchPresenter alloc];
    v20 = [MEMORY[0x277D661A0] rootSettings];
    v21 = [v20 todayViewPullToSearchSettings];
    v22 = [(SBSearchPresenter *)v19 initWithSettings:v21 identifier:@"TodayView"];
    presenter = v18->_presenter;
    v18->_presenter = v22;

    [(SBSearchPresenter *)v18->_presenter setSearchPresenterDelegate:v18];
    [(SBTodayViewSpotlightPresenter *)v18 _setUpFeatherBlur];
  }

  return v18;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [(SBTodayViewSpotlightPresenter *)self _setUpStartingScrollOffset];
  [(SBSearchPresenter *)self->_presenter scrollViewWillBeginDragging:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(SBTodayViewSpotlightPresenter *)self _updateFeatherBlurMaskLayers];
  [(SBSearchPresenter *)self->_presenter scrollViewDidScroll:v4];
}

- (id)searchPresentablesForPresenter:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_spotlightViewController)
  {
    v5[0] = self->_spotlightViewController;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (BOOL)searchPresenterCanPresent:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained spotlightPresenterAllowsPullToSearch:v3];

  return v3;
}

- (void)searchPresenterWillPresentSearch:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained spotlightPresenterWillPresentSpotlight:self];
  v6 = [WeakRetained parentViewControllerForSpotlightPresenter:self];
  v7 = v6;
  spotlightViewController = self->_spotlightViewController;
  if (spotlightViewController)
  {
    [v6 bs_beginAppearanceTransitionForChildViewController:spotlightViewController toVisible:1 animated:v4];
  }

  else
  {
    v9 = self->_containerView;
    [WeakRetained todayViewControllerLocationForSpotlightPresenter:self];
    v11 = v10;
    v12 = [(SBTodayViewSpotlightPresenter *)self legibilitySettings];
    v13 = SBUIDeriveUILegibilitySettings();

    if (!v13)
    {
      v13 = [MEMORY[0x277D760A8] sharedInstanceForStyle:2];
    }

    v14 = objc_alloc_init(_SBTodaySpotlightViewController);
    spotlightMultiplexingViewController = self->_spotlightMultiplexingViewController;
    self->_spotlightMultiplexingViewController = v14;

    [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController setLegibilitySettings:v13];
    [(_SBTodaySpotlightViewController *)self->_spotlightMultiplexingViewController setLocation:v11];
    v16 = [(_SBTodaySpotlightViewController *)self->_spotlightMultiplexingViewController view];
    [(UIView *)v9 bounds];
    [v16 setFrame:?];

    if (MEMORY[0x223D6D4D0]())
    {
      v17 = [[SBSpotlightPresentableViewController alloc] initWithSpotlightMultiplexingViewController:self->_spotlightMultiplexingViewController];
    }

    else
    {
      v17 = [[SBLegacyTodayViewSpotlightPresentableViewController alloc] initWithSpotlightMultiplexingViewController:self->_spotlightMultiplexingViewController searchBarViewController:self->_searchBarViewController scrollView:self->_scrollView];
    }

    p_super = &v17->super;
    [(SBSpotlightPresentableViewController *)v17 setDelegate:self];
    v19 = self->_spotlightViewController;
    self->_spotlightViewController = p_super;

    v20 = [(UIViewController *)self->_spotlightViewController view];
    [v20 setAutoresizingMask:18];
    [(UIView *)v9 bounds];
    [v20 setFrame:?];
    [v7 addChildViewController:self->_spotlightViewController];
    [v7 bs_beginAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:1 animated:0];
    [(UIView *)v9 addSubview:v20];
  }

  v21 = [(UIViewController *)self->_spotlightViewController view];
  [v21 bs_setHitTestingDisabled:0];
}

- (void)searchPresenterDidPresentSearch:(id)a3
{
  v5 = a3;
  if (!self->_spotlightViewController)
  {
    [(SBTodayViewSpotlightPresenter *)a2 searchPresenterDidPresentSearch:?];
  }

  v8 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained parentViewControllerForSpotlightPresenter:self];
  [v7 bs_endAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:1];
  [(UIViewController *)self->_spotlightViewController didMoveToParentViewController:v7];
  [WeakRetained spotlightPresenterDidPresentSpotlight:self];
}

- (void)searchPresenterWillDismissSearch:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(UIViewController *)self->_spotlightViewController willMoveToParentViewController:0];
  v6 = [(UIViewController *)self->_spotlightViewController view];
  [v6 bs_setHitTestingDisabled:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained parentViewControllerForSpotlightPresenter:self];

  [v8 bs_beginAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:0 animated:v4];
}

- (void)searchPresenterDidDismissSearch:(id)a3
{
  v4 = [(UIViewController *)self->_spotlightViewController view];
  [v4 removeFromSuperview];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained parentViewControllerForSpotlightPresenter:self];
  [v5 bs_endAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:0];
  [(UIViewController *)self->_spotlightViewController removeFromParentViewController];
  [(SBSpotlightMultiplexingViewController *)self->_spotlightMultiplexingViewController invalidate];
  spotlightMultiplexingViewController = self->_spotlightMultiplexingViewController;
  self->_spotlightMultiplexingViewController = 0;

  spotlightViewController = self->_spotlightViewController;
  self->_spotlightViewController = 0;

  [WeakRetained spotlightPresenterDidDismissSpotlight:self];
}

- (double)_topOffset
{
  v3 = [(UIViewController *)self->_spotlightViewController view];
  [v3 safeAreaInsets];
  v5 = v4;
  [(SBSearchPresenter *)self->_presenter interactivePresentationMetrics];
  v7 = v5 - v6;

  if (self->_searchBarViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained searchBarTopOffsetForSpotlightPresenter:self];
    }

    else
    {
      v10 = 8.0;
    }

    v7 = v7 + v10;
  }

  return v7;
}

- (void)searchBarDidFocus
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained spotlightPresenterSearchBarDidFocus:self];

  [(SBTodayViewSpotlightPresenter *)self presentSpotlightAnimated:1];
}

- (id)backgroundViewForSpotlightPresentableViewController:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D66438]);
  [(UIView *)self->_containerView bounds];
  v5 = [v4 initWithFrame:3 style:?];
  [v5 prepareForTransitionToBlurred:1];

  return v5;
}

- (id)backdropViewForLegacyTodayViewSpotlightPresentableViewController:(id)a3
{
  v3 = [(SBTodayViewSpotlightPresenter *)self _newSearchBackdropView];

  return v3;
}

- (id)_newSearchBackdropView
{
  v2 = [MEMORY[0x277D26718] materialViewWithRecipe:14 options:0 initialWeighting:0.0];
  [v2 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
  return v2;
}

- (void)_setUpFeatherBlur
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (!self->_searchBarViewController)
  {
    v3 = MEMORY[0x277D65E58];
    v4 = self->_containerView;
    v5 = [[v3 alloc] initWithRecipe:0];
    featherBlurView = self->_featherBlurView;
    self->_featherBlurView = v5;

    [(SBFFeatherBlurView *)self->_featherBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 addSubview:self->_featherBlurView];
    v17 = MEMORY[0x277CCAAD0];
    v22 = [(SBFFeatherBlurView *)self->_featherBlurView bottomAnchor];
    v23 = [(UIView *)v4 safeAreaLayoutGuide];
    v21 = [v23 topAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [(SBFFeatherBlurView *)self->_featherBlurView topAnchor];
    v18 = [(UIView *)v4 topAnchor];
    v7 = [v19 constraintEqualToAnchor:v18];
    v24[1] = v7;
    v8 = [(SBFFeatherBlurView *)self->_featherBlurView leadingAnchor];
    v9 = [(UIView *)v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v24[2] = v10;
    v11 = [(SBFFeatherBlurView *)self->_featherBlurView trailingAnchor];
    v12 = [(UIView *)v4 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v14];

    v15 = [MEMORY[0x277D65E58] configureGradientMaskForFeatherBlurRecipe:0 onContentView:self->_scrollView];
    searchBarGradientMaskLayers = self->_searchBarGradientMaskLayers;
    self->_searchBarGradientMaskLayers = v15;
  }
}

- (void)_configureFeatherBlurMatchMoveAnimations
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_featherBlurView)
  {
    v3 = [(NSArray *)self->_searchBarGradientMaskLayers mutableCopy];
    if (!v3)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    v4 = [(SBFFeatherBlurView *)self->_featherBlurView layer];
    [v3 addObject:v4];

    v5 = [(UIView *)self->_containerView window];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          if (v5)
          {
            v12 = MEMORY[0x277D65E58];
            [*(*(&v14 + 1) + 8 * v10) frame];
            v13 = [v12 matchMoveAnimationForFrame:v5 relativeToView:?];
            [v11 addAnimation:v13 forKey:@"SBTodayViewFeatherBlurMatchMoveAnimation"];
          }

          else
          {
            [*(*(&v14 + 1) + 8 * v10) removeAnimationForKey:{@"SBTodayViewFeatherBlurMatchMoveAnimation", v14}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateFeatherBlurMaskLayers
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_featherBlurView)
  {
    if (self->_containerViewIsVisible)
    {
      [(UIScrollView *)self->_scrollView adjustedContentInset];
      v4 = v3;
      [(UIScrollView *)self->_scrollView contentOffset];
      v6 = v4 + v5 <= 8.0;
    }

    else
    {
      v6 = 1;
    }

    [MEMORY[0x277D65E58] gradientMaskLayerInsetsForFeatherBlurRecipe:0];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SBFFeatherBlurView *)self->_featherBlurView frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = self->_searchBarGradientMaskLayers;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = v22 - (v8 + v12);
      v27 = v20 - (v10 + v14);
      v28 = v8 + v18;
      v29 = v10 + v16;
      v30 = *v34;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v23);
          }

          v32 = *(*(&v33 + 1) + 8 * i);
          [v32 setFrame:{v29, v28, v27, v26, v33}];
          [v32 setHidden:v6];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v25);
    }

    [(SBTodayViewSpotlightPresenter *)self _configureFeatherBlurMatchMoveAnimations];
    [(SBFFeatherBlurView *)self->_featherBlurView setHidden:v6];
  }
}

- (void)_setUpStartingScrollOffset
{
  [(SBSearchPresenter *)self->_presenter interactivePresentationMetrics];
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  presenter = self->_presenter;

  [(SBSearchPresenter *)presenter setInteractivePresentationMetrics:?];
}

- (SBTodayViewSpotlightPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSearchBarViewController:(uint64_t)a1 containerView:(uint64_t)a2 scrollView:delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTodayViewSpotlightPresenter.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];
}

- (void)initWithSearchBarViewController:(uint64_t)a1 containerView:(uint64_t)a2 scrollView:delegate:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTodayViewSpotlightPresenter.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)searchPresenterDidPresentSearch:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_spotlightViewController != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBTodayViewSpotlightPresenter.m";
    v16 = 1024;
    v17 = 198;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end