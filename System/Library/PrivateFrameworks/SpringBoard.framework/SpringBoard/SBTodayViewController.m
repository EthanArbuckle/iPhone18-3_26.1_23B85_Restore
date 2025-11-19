@interface SBTodayViewController
- (BOOL)_shouldIconViewForbidJiggling:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)spotlightPresenterAllowsPullToSearch:(id)a3;
- (NSString)coverSheetIdentifier;
- (int64_t)idleTimerDuration;
- (int64_t)participantState;
- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_dismissTodayViewOverlay:(id)a3;
- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3;
- (void)_setStatusBarSettingsAssertionActive:(BOOL)a3;
- (void)_setUpGestureRecognizers;
- (void)_setUpSearchPresenter;
- (void)_updateScrollViewContentInset;
- (void)cleanupViews;
- (void)loadView;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)spotlightPresenterDidDismissSpotlight:(id)a3;
- (void)spotlightPresenterDidPresentSpotlight:(id)a3;
- (void)spotlightPresenterSearchBarDidFocus:(id)a3;
- (void)spotlightPresenterWillPresentSpotlight:(id)a3;
- (void)updateViewsWithLegibilitySettings;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBTodayViewController

- (void)_updateScrollViewContentInset
{
  v3 = MEMORY[0x277D768C8];
  v4 = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter searchBarViewController];
  v33 = v4;
  if (v4)
  {
    v5 = [v4 view];
    [v5 bounds];
    v7 = v6;
    [(SBHTodayViewController *)self searchBarTopOffset];
    v9 = v8 + v7;
  }

  else
  {
    v9 = *v3;
  }

  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  if ([(SBTodayViewController *)self isEditing])
  {
    v13 = [(UIViewController *)self _sbWindowScene];
    v14 = [v13 controlCenterController];
    v15 = [v14 presentingEdge];

    if ((v15 & 4) != 0)
    {
      v11 = 100.0;
    }
  }

  v16 = [(SBHTodayViewController *)self scrollView];
  [v16 contentInset];
  if (v10 == v20 && v9 == v17 && v12 == v19)
  {
    v23 = v18;

    if (v11 == v23)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = [(SBHTodayViewController *)self scrollView];
  [v24 contentOffset];
  v25 = [(SBHTodayViewController *)self scrollView];
  [v25 adjustedContentInset];
  v26 = BSFloatLessThanOrEqualToFloat();

  v27 = [(SBHTodayViewController *)self scrollView];
  [v27 setContentInset:{v9, v10, v11, v12}];

  if (v26)
  {
    v28 = [(SBHTodayViewController *)self scrollView];
    v29 = [v28 isDragging];

    if ((v29 & 1) == 0)
    {
      v30 = [(SBHTodayViewController *)self scrollView];
      v31 = [(SBHTodayViewController *)self scrollView];
      [v31 adjustedContentInset];
      [v30 setContentOffset:{0.0, -v32}];
    }
  }

LABEL_19:
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v3 viewWillLayoutSubviews];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter layout];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)cleanupViews
{
  if ([(SBTodayViewController *)self isSpotlightVisible])
  {
    [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter dismissSpotlightAnimated:0];
  }

  v3.receiver = self;
  v3.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v3 cleanupViews];
}

- (int64_t)participantState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Determining participantState for %@", &v10, 0xCu);
  }

  [(SBHTodayViewController *)self mostRecentPresentationProgress];
  v4 = BSFloatLessThanFloat();
  v5 = [(SBTodayViewController *)self viewIfLoaded];
  v6 = [v5 superview];
  if (!v6 || ([(SBTodayViewController *)self bs_isDisappearingOrDisappeared]& 1) != 0)
  {

LABEL_6:
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Determined participantState for %@ to be Inactive", &v10, 0xCu);
    }

    v8 = 1;
    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Determined participantState for %@ to be ACTIVE", &v10, 0xCu);
  }

  v8 = 2;
LABEL_9:

  return v8;
}

- (int64_t)idleTimerDuration
{
  v2 = [(SBTodayViewController *)self spotlightPresenter];
  if ([v2 isPresenting])
  {
    v3 = 9;
  }

  else
  {
    v3 = 7;
  }

  return v3;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v3 loadView];
  [(SBTodayViewController *)self _setUpGestureRecognizers];
  [(SBTodayViewController *)self _setUpSearchPresenter];
}

- (void)_setUpGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__dismissTodayViewOverlay_];
  dismissTapGestureRecognizer = self->_dismissTapGestureRecognizer;
  self->_dismissTapGestureRecognizer = v3;

  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setAllowableMovement:10.0];
  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setDelegate:self];
  v5 = [(SBTodayViewController *)self view];
  [v5 addGestureRecognizer:self->_dismissTapGestureRecognizer];
}

- (void)_setUpSearchPresenter
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = [(SBTodayViewController *)self view];
    v6 = objc_alloc_init(MEMORY[0x277D65F80]);
    spotlightContainerView = self->_spotlightContainerView;
    self->_spotlightContainerView = v6;

    [(SBFTouchPassThroughView *)self->_spotlightContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:self->_spotlightContainerView];
    v23 = MEMORY[0x277CCAAD0];
    v28 = [v5 leadingAnchor];
    v27 = [(SBFTouchPassThroughView *)self->_spotlightContainerView leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v29[0] = v26;
    v25 = [v5 trailingAnchor];
    v24 = [(SBFTouchPassThroughView *)self->_spotlightContainerView trailingAnchor];
    v22 = [v25 constraintEqualToAnchor:v24];
    v29[1] = v22;
    v8 = [v5 topAnchor];
    v9 = [(SBFTouchPassThroughView *)self->_spotlightContainerView topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v29[2] = v10;
    v11 = [v5 bottomAnchor];
    v12 = [(SBFTouchPassThroughView *)self->_spotlightContainerView bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v29[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v23 activateConstraints:v14];

    v15 = [SBTodayViewSpotlightPresenter alloc];
    v16 = self->_spotlightContainerView;
    v17 = [(SBHTodayViewController *)self scrollView];
    v18 = [(SBTodayViewSpotlightPresenter *)v15 initWithSearchBarViewController:0 containerView:v16 scrollView:v17 delegate:self];
    spotlightPresenter = self->_spotlightPresenter;
    self->_spotlightPresenter = v18;

    v20 = self->_spotlightPresenter;
    v21 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    [(SBTodayViewSpotlightPresenter *)v20 setLegibilitySettings:v21];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v4 viewWillAppear:a3];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewWillAppear];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 viewDidAppear:a3];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = [v4 coverSheetViewController];
    [v5 registerExternalBehaviorProvider:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 viewWillDisappear:a3];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = [v4 coverSheetViewController];
    [v5 unregisterExternalBehaviorProvider:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v4 viewDidDisappear:a3];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewDidDisappear];
}

- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v7 = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter spotlightViewController];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SBTodayViewController *)self childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (v13 != v7)
        {
          [(SBTodayViewController *)self bs_beginAppearanceTransitionForChildViewController:v13 toVisible:v5 animated:v4];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter spotlightViewController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SBTodayViewController *)self childViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v11 != v5)
        {
          [(SBTodayViewController *)self bs_endAppearanceTransitionForChildViewController:v11 toVisible:v3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = SBTodayViewController;
  v6 = a3;
  [(SBHTodayViewController *)&v7 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewDidMoveToWindow:v6, v7.receiver, v7.super_class];
}

- (void)updateViewsWithLegibilitySettings
{
  v5.receiver = self;
  v5.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v5 updateViewsWithLegibilitySettings];
  v3 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _UILegibilitySettings];

    v3 = v4;
  }

  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter setLegibilitySettings:v3];
}

- (void)_dismissTodayViewOverlay:(id)a3
{
  v8 = a3;
  v4 = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 state] == 3;
    v5 = v8;
    if (v6)
    {
      v7 = [(SBHTodayViewController *)self dismissalDelegate];
      [v7 overlayControllerRequestsDismissal:self];

      v5 = v8;
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(SBHTodayViewController *)self scrollView];
    v11 = [v10 panGestureRecognizer];
    v9 = v11 == v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v8 = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  if (v8 == v6)
  {
    v9 = [(SBHTodayViewController *)self scrollView];
    [v7 locationInView:v9];
    v11 = v10;
    v13 = v12;

    if ([(SBTodayViewController *)self isEditing])
    {
      *(v25 + 24) = 0;
    }

    else
    {
      v14 = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter searchBarViewController];
      if (v14)
      {
        [v7 locationInView:self->_spotlightContainerView];
        v16 = v15;
        v18 = v17;
        v19 = [v14 view];
        [v19 frame];
        v28.x = v16;
        v28.y = v18;
        v20 = CGRectContainsPoint(v29, v28);

        if (v20)
        {
          *(v25 + 24) = 0;
        }
      }

      if (v25[3])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__SBTodayViewController_gestureRecognizer_shouldReceiveTouch___block_invoke;
        v23[3] = &unk_2783B4B50;
        v23[6] = v11;
        v23[7] = v13;
        v23[4] = self;
        v23[5] = &v24;
        [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:v23];
      }
    }
  }

  v21 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v21;
}

BOOL __62__SBTodayViewController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) scrollView];
  [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24.origin.x = v16;
  v24.origin.y = v18;
  v24.size.width = v20;
  v24.size.height = v22;
  result = CGRectContainsPoint(v24, *(a1 + 48));
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (void)spotlightPresenterSearchBarDidFocus:(id)a3
{
  v4 = [(SBHTodayViewController *)self delegate];
  [v4 todayViewWantsToEndEditing:self];
}

- (void)spotlightPresenterWillPresentSpotlight:(id)a3
{
  v4 = [(SBHTodayViewController *)self delegate];
  [v4 todayViewControllerWillPresentSpotlight:self];
}

- (void)spotlightPresenterDidPresentSpotlight:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = [v4 coverSheetViewController];
    [v5 externalBehaviorProviderBehaviorChanged:self];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SBHTodayViewController *)self observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 todayViewControllerDidPresentSearch:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)spotlightPresenterDidDismissSpotlight:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = [v4 coverSheetViewController];
    [v5 externalBehaviorProviderBehaviorChanged:self];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(SBHTodayViewController *)self observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 todayViewControllerDidDismissSearch:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)spotlightPresenterAllowsPullToSearch:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 isSpotlightAllowed];

  if ((v5 & 1) == 0)
  {
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SBHTodayViewController *)self location];
      v12 = @"unknown";
      if (v11 == 2)
      {
        v12 = @"left-of-lock";
      }

      if (v11 == 1)
      {
        v12 = @"left-of-home";
      }

      v9 = v12;
      v14 = 138412290;
      v15 = v9;
      v10 = "Disallowing Spotlight presentation in %@: disallowed by ManagedConfiguration";
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  if ([(SBTodayViewController *)self isEditing])
  {
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SBHTodayViewController *)self location];
      v8 = @"unknown";
      if (v7 == 2)
      {
        v8 = @"left-of-lock";
      }

      if (v7 == 1)
      {
        v8 = @"left-of-home";
      }

      v9 = v8;
      v14 = 138412290;
      v15 = v9;
      v10 = "Disallowing Spotlight presentation in %@: editing";
LABEL_15:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  return 1;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBTodayViewController;
  v4 = a3;
  [(SBHTodayViewController *)&v5 scrollViewWillBeginDragging:v4];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewWillBeginDragging:v4, v5.receiver, v5.super_class];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 scrollViewDidScroll:v4];
  v5 = [(SBHTodayViewController *)self scrollView];

  if (v5 == v4)
  {
    [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewDidScroll:v4];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = SBTodayViewController;
  v9 = a3;
  [(SBHTodayViewController *)&v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewWillEndDragging:v9 withVelocity:x, y, v10.receiver, v10.super_class];
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3
{
  v4 = a3;
  [(SBHTodayViewController *)self cancelTouchesForAllWidgets];
  [(SBHTodayViewController *)self beginDisablingWidgetHitTestingForReason:*MEMORY[0x277D66618]];
  [(SBHTodayViewController *)self setIsOverlayViewDisappearing:1];
  [v4 presentationProgress];
  v6 = v5;

  [(SBHTodayViewController *)self setMostRecentPresentationProgress:v6];
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v21 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    [a3 presentationProgress];
    [(SBHTodayViewController *)self setMostRecentPresentationProgress:?];
    if (((BSFloatIsOne() & 1) != 0 || BSFloatIsZero()) && [(SBHTodayViewController *)self isOverlayViewDisappearing])
    {
      [(SBHTodayViewController *)self invalidateAllCancelTouchesAssertions];
      [(SBHTodayViewController *)self endDisablingWidgetHitTestingForReason:*MEMORY[0x277D66618]];
      [(SBHTodayViewController *)self setIsOverlayViewDisappearing:0];
    }

    [(SBTodayViewController *)self _setStatusBarSettingsAssertionActive:BSFloatGreaterThanFloat()];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(SBHTodayViewController *)self observers];
    v10 = [v9 copy];

    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 todayViewController:self didChangePresentationProgress:1 newPresentationProgress:a4 fromLeading:a5];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)_shouldIconViewForbidJiggling:(id)a3
{
  v4 = a3;
  v5 = [(SBHTodayViewController *)self listView];
  v6 = [v5 isEditing];

  if (v6 && (-[SBHTodayViewController listView](self, "listView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 icons], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "icon"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, v7, v10) && (-[SBHTodayViewController onScreenIconIndexRangeByIconListView](self, "onScreenIconIndexRangeByIconListView"), v11 = objc_claimAutoreleasedReturnValue(), -[SBHTodayViewController listView](self, "listView"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "rangeValue"), v16 = v15, v13, v12, v11, v16 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v19 = [(SBTodayViewController *)self view];
    v20 = [(SBTodayViewController *)self spotlightPresenter];
    v21 = [v20 searchBarViewController];
    v22 = [v21 view];

    v23 = [(SBHTodayViewController *)self scrollView];
    [v23 adjustedContentInset];
    v25 = v24;

    [v22 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [v22 superview];
    [v19 convertRect:v34 fromView:{v27, v29, v31, v33}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = [(SBHTodayViewController *)self listView];
    v44 = [v4 icon];
    v45 = [v43 indexOfIcon:v44];

    v17 = 1;
    if (v45 >= v14 && v45 - v14 < v16)
    {
      v46 = v42 + v25 + v38;
      [v4 frame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = [v4 superview];
      [v19 convertRect:v55 fromView:{v48, v50, v52, v54}];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v64 = v25 + v59;
      v71.origin.y = 0.0;
      v67.origin.x = v57;
      v67.origin.y = v64;
      v67.size.width = v61;
      v67.size.height = v63;
      v71.origin.x = v36;
      v71.size.width = v40;
      v71.size.height = v46;
      if (CGRectIntersectsRect(v67, v71))
      {
        v68.origin.y = 0.0;
        v68.origin.x = v36;
        v68.size.width = v40;
        v68.size.height = v46;
        MaxY = CGRectGetMaxY(v68);
        v69.origin.x = v57;
        v69.origin.y = v64;
        v69.size.width = v61;
        v69.size.height = v63;
        v66 = MaxY - CGRectGetMinY(v69);
        v70.origin.x = v57;
        v70.origin.y = v64;
        v70.size.width = v61;
        v70.size.height = v63;
        v17 = v66 > CGRectGetHeight(v70);
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_setStatusBarSettingsAssertionActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBTodayViewController *)self statusBarSettingsAssertion];
  if (v3 && !v5)
  {
    v15 = 0;
    v6 = [(UIViewController *)self _sbWindowScene];
    v7 = [v6 statusBarManager];
    v8 = [v7 assertionManager];

    v9 = objc_alloc_init(SBMutableStatusBarSettings);
    v10 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    v11 = SBUIDeriveUILegibilitySettings();

    [(SBMutableStatusBarSettings *)v9 setLegibilitySettings:v11];
    v12 = [v8 newSettingsAssertionWithSettings:v9 atLevel:2 reason:@"Today View"];
    v13 = __62__SBTodayViewController__setStatusBarSettingsAssertionActive___block_invoke();
    [v12 acquireWithAnimationParameters:v13];

    [(SBTodayViewController *)self setStatusBarSettingsAssertion:v12];
LABEL_7:
    v5 = v15;
    goto LABEL_8;
  }

  if (!v3 && v5)
  {
    v15 = v5;
    v14 = __62__SBTodayViewController__setStatusBarSettingsAssertionActive___block_invoke();
    [v15 invalidateWithAnimationParameters:v14];

    [(SBTodayViewController *)self setStatusBarSettingsAssertion:0];
    goto LABEL_7;
  }

LABEL_8:
}

id __62__SBTodayViewController__setStatusBarSettingsAssertionActive___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [v0 duration];
  [v0 setDuration:v1 * 0.6];

  return v0;
}

@end