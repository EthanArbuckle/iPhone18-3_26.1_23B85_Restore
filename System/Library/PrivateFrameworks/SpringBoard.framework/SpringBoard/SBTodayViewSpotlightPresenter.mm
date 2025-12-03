@interface SBTodayViewSpotlightPresenter
- (BOOL)searchPresenterCanPresent:(id)present;
- (SBTodayViewSpotlightPresenter)initWithSearchBarViewController:(id)controller containerView:(id)view scrollView:(id)scrollView delegate:(id)delegate;
- (SBTodayViewSpotlightPresenterDelegate)delegate;
- (double)_topOffset;
- (id)_newSearchBackdropView;
- (id)backdropViewForLegacyTodayViewSpotlightPresentableViewController:(id)controller;
- (id)backgroundViewForSpotlightPresentableViewController:(id)controller;
- (id)searchPresentablesForPresenter:(id)presenter;
- (void)_configureFeatherBlurMatchMoveAnimations;
- (void)_setUpFeatherBlur;
- (void)_setUpStartingScrollOffset;
- (void)_updateFeatherBlurMaskLayers;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBarDidFocus;
- (void)searchPresenterDidDismissSearch:(id)search;
- (void)searchPresenterDidPresentSearch:(id)search;
- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated;
- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated;
@end

@implementation SBTodayViewSpotlightPresenter

- (SBTodayViewSpotlightPresenter)initWithSearchBarViewController:(id)controller containerView:(id)view scrollView:(id)scrollView delegate:(id)delegate
{
  controllerCopy = controller;
  viewCopy = view;
  scrollViewCopy = scrollView;
  delegateCopy = delegate;
  v16 = delegateCopy;
  if (viewCopy)
  {
    if (delegateCopy)
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
    objc_storeStrong(&v17->_searchBarViewController, controller);
    objc_storeStrong(&v18->_containerView, view);
    objc_storeStrong(&v18->_scrollView, scrollView);
    objc_storeWeak(&v18->_delegate, v16);
    [controllerCopy setDelegate:v18];
    v19 = [SBSearchPresenter alloc];
    rootSettings = [MEMORY[0x277D661A0] rootSettings];
    todayViewPullToSearchSettings = [rootSettings todayViewPullToSearchSettings];
    v22 = [(SBSearchPresenter *)v19 initWithSettings:todayViewPullToSearchSettings identifier:@"TodayView"];
    presenter = v18->_presenter;
    v18->_presenter = v22;

    [(SBSearchPresenter *)v18->_presenter setSearchPresenterDelegate:v18];
    [(SBTodayViewSpotlightPresenter *)v18 _setUpFeatherBlur];
  }

  return v18;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(SBTodayViewSpotlightPresenter *)self _setUpStartingScrollOffset];
  [(SBSearchPresenter *)self->_presenter scrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(SBTodayViewSpotlightPresenter *)self _updateFeatherBlurMaskLayers];
  [(SBSearchPresenter *)self->_presenter scrollViewDidScroll:scrollCopy];
}

- (id)searchPresentablesForPresenter:(id)presenter
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

- (BOOL)searchPresenterCanPresent:(id)present
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained spotlightPresenterAllowsPullToSearch:selfCopy];

  return selfCopy;
}

- (void)searchPresenterWillPresentSearch:(id)search animated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained spotlightPresenterWillPresentSpotlight:self];
  v6 = [WeakRetained parentViewControllerForSpotlightPresenter:self];
  v7 = v6;
  spotlightViewController = self->_spotlightViewController;
  if (spotlightViewController)
  {
    [v6 bs_beginAppearanceTransitionForChildViewController:spotlightViewController toVisible:1 animated:animatedCopy];
  }

  else
  {
    v9 = self->_containerView;
    [WeakRetained todayViewControllerLocationForSpotlightPresenter:self];
    v11 = v10;
    legibilitySettings = [(SBTodayViewSpotlightPresenter *)self legibilitySettings];
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
    view = [(_SBTodaySpotlightViewController *)self->_spotlightMultiplexingViewController view];
    [(UIView *)v9 bounds];
    [view setFrame:?];

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

    view2 = [(UIViewController *)self->_spotlightViewController view];
    [view2 setAutoresizingMask:18];
    [(UIView *)v9 bounds];
    [view2 setFrame:?];
    [v7 addChildViewController:self->_spotlightViewController];
    [v7 bs_beginAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:1 animated:0];
    [(UIView *)v9 addSubview:view2];
  }

  view3 = [(UIViewController *)self->_spotlightViewController view];
  [view3 bs_setHitTestingDisabled:0];
}

- (void)searchPresenterDidPresentSearch:(id)search
{
  searchCopy = search;
  if (!self->_spotlightViewController)
  {
    [(SBTodayViewSpotlightPresenter *)a2 searchPresenterDidPresentSearch:?];
  }

  v8 = searchCopy;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained parentViewControllerForSpotlightPresenter:self];
  [v7 bs_endAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:1];
  [(UIViewController *)self->_spotlightViewController didMoveToParentViewController:v7];
  [WeakRetained spotlightPresenterDidPresentSpotlight:self];
}

- (void)searchPresenterWillDismissSearch:(id)search animated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIViewController *)self->_spotlightViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_spotlightViewController view];
  [view bs_setHitTestingDisabled:1];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained parentViewControllerForSpotlightPresenter:self];

  [v8 bs_beginAppearanceTransitionForChildViewController:self->_spotlightViewController toVisible:0 animated:animatedCopy];
}

- (void)searchPresenterDidDismissSearch:(id)search
{
  view = [(UIViewController *)self->_spotlightViewController view];
  [view removeFromSuperview];

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
  view = [(UIViewController *)self->_spotlightViewController view];
  [view safeAreaInsets];
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

- (id)backgroundViewForSpotlightPresentableViewController:(id)controller
{
  v4 = objc_alloc(MEMORY[0x277D66438]);
  [(UIView *)self->_containerView bounds];
  v5 = [v4 initWithFrame:3 style:?];
  [v5 prepareForTransitionToBlurred:1];

  return v5;
}

- (id)backdropViewForLegacyTodayViewSpotlightPresentableViewController:(id)controller
{
  _newSearchBackdropView = [(SBTodayViewSpotlightPresenter *)self _newSearchBackdropView];

  return _newSearchBackdropView;
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
    bottomAnchor = [(SBFFeatherBlurView *)self->_featherBlurView bottomAnchor];
    safeAreaLayoutGuide = [(UIView *)v4 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:topAnchor];
    v24[0] = v20;
    topAnchor2 = [(SBFFeatherBlurView *)self->_featherBlurView topAnchor];
    topAnchor3 = [(UIView *)v4 topAnchor];
    v7 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v24[1] = v7;
    leadingAnchor = [(SBFFeatherBlurView *)self->_featherBlurView leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[2] = v10;
    trailingAnchor = [(SBFFeatherBlurView *)self->_featherBlurView trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

    layer = [(SBFFeatherBlurView *)self->_featherBlurView layer];
    [v3 addObject:layer];

    window = [(UIView *)self->_containerView window];
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
          if (window)
          {
            v12 = MEMORY[0x277D65E58];
            [*(*(&v14 + 1) + 8 * v10) frame];
            v13 = [v12 matchMoveAnimationForFrame:window relativeToView:?];
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