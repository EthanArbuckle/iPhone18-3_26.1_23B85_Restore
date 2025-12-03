@interface SBTodayViewController
- (BOOL)_shouldIconViewForbidJiggling:(id)jiggling;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)spotlightPresenterAllowsPullToSearch:(id)search;
- (NSString)coverSheetIdentifier;
- (int64_t)idleTimerDuration;
- (int64_t)participantState;
- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_dismissTodayViewOverlay:(id)overlay;
- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible;
- (void)_setStatusBarSettingsAssertionActive:(BOOL)active;
- (void)_setUpGestureRecognizers;
- (void)_setUpSearchPresenter;
- (void)_updateScrollViewContentInset;
- (void)cleanupViews;
- (void)loadView;
- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)spotlightPresenterDidDismissSpotlight:(id)spotlight;
- (void)spotlightPresenterDidPresentSpotlight:(id)spotlight;
- (void)spotlightPresenterSearchBarDidFocus:(id)focus;
- (void)spotlightPresenterWillPresentSpotlight:(id)spotlight;
- (void)updateViewsWithLegibilitySettings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBTodayViewController

- (void)_updateScrollViewContentInset
{
  v3 = MEMORY[0x277D768C8];
  searchBarViewController = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter searchBarViewController];
  v33 = searchBarViewController;
  if (searchBarViewController)
  {
    view = [searchBarViewController view];
    [view bounds];
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
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    controlCenterController = [_sbWindowScene controlCenterController];
    presentingEdge = [controlCenterController presentingEdge];

    if ((presentingEdge & 4) != 0)
    {
      v11 = 100.0;
    }
  }

  scrollView = [(SBHTodayViewController *)self scrollView];
  [scrollView contentInset];
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

  scrollView2 = [(SBHTodayViewController *)self scrollView];
  [scrollView2 contentOffset];
  scrollView3 = [(SBHTodayViewController *)self scrollView];
  [scrollView3 adjustedContentInset];
  v26 = BSFloatLessThanOrEqualToFloat();

  scrollView4 = [(SBHTodayViewController *)self scrollView];
  [scrollView4 setContentInset:{v9, v10, v11, v12}];

  if (v26)
  {
    scrollView5 = [(SBHTodayViewController *)self scrollView];
    isDragging = [scrollView5 isDragging];

    if ((isDragging & 1) == 0)
    {
      scrollView6 = [(SBHTodayViewController *)self scrollView];
      scrollView7 = [(SBHTodayViewController *)self scrollView];
      [scrollView7 adjustedContentInset];
      [scrollView6 setContentOffset:{0.0, -v32}];
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
    selfCopy3 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Determining participantState for %@", &v10, 0xCu);
  }

  [(SBHTodayViewController *)self mostRecentPresentationProgress];
  v4 = BSFloatLessThanFloat();
  viewIfLoaded = [(SBTodayViewController *)self viewIfLoaded];
  superview = [viewIfLoaded superview];
  if (!superview || ([(SBTodayViewController *)self bs_isDisappearingOrDisappeared]& 1) != 0)
  {

LABEL_6:
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy3 = self;
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
    selfCopy3 = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Determined participantState for %@ to be ACTIVE", &v10, 0xCu);
  }

  v8 = 2;
LABEL_9:

  return v8;
}

- (int64_t)idleTimerDuration
{
  spotlightPresenter = [(SBTodayViewController *)self spotlightPresenter];
  if ([spotlightPresenter isPresenting])
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
  view = [(SBTodayViewController *)self view];
  [view addGestureRecognizer:self->_dismissTapGestureRecognizer];
}

- (void)_setUpSearchPresenter
{
  v29[4] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    view = [(SBTodayViewController *)self view];
    v6 = objc_alloc_init(MEMORY[0x277D65F80]);
    spotlightContainerView = self->_spotlightContainerView;
    self->_spotlightContainerView = v6;

    [(SBFTouchPassThroughView *)self->_spotlightContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:self->_spotlightContainerView];
    v23 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(SBFTouchPassThroughView *)self->_spotlightContainerView leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v26;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(SBFTouchPassThroughView *)self->_spotlightContainerView trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v22;
    topAnchor = [view topAnchor];
    topAnchor2 = [(SBFTouchPassThroughView *)self->_spotlightContainerView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v10;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(SBFTouchPassThroughView *)self->_spotlightContainerView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v23 activateConstraints:v14];

    v15 = [SBTodayViewSpotlightPresenter alloc];
    v16 = self->_spotlightContainerView;
    scrollView = [(SBHTodayViewController *)self scrollView];
    v18 = [(SBTodayViewSpotlightPresenter *)v15 initWithSearchBarViewController:0 containerView:v16 scrollView:scrollView delegate:self];
    spotlightPresenter = self->_spotlightPresenter;
    self->_spotlightPresenter = v18;

    v20 = self->_spotlightPresenter;
    effectiveLegibilitySettings = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    [(SBTodayViewSpotlightPresenter *)v20 setLegibilitySettings:effectiveLegibilitySettings];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v4 viewWillAppear:appear];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewWillAppear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 viewDidAppear:appear];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v4 coverSheetViewController];
    [coverSheetViewController registerExternalBehaviorProvider:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 viewWillDisappear:disappear];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v4 coverSheetViewController];
    [coverSheetViewController unregisterExternalBehaviorProvider:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v4 viewDidDisappear:disappear];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewDidDisappear];
}

- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  v19 = *MEMORY[0x277D85DE8];
  spotlightViewController = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter spotlightViewController];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childViewControllers = [(SBTodayViewController *)self childViewControllers];
  v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (v13 != spotlightViewController)
        {
          [(SBTodayViewController *)self bs_beginAppearanceTransitionForChildViewController:v13 toVisible:visibleCopy animated:animatedCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v17 = *MEMORY[0x277D85DE8];
  spotlightViewController = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter spotlightViewController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(SBTodayViewController *)self childViewControllers];
  v7 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v11 != spotlightViewController)
        {
          [(SBTodayViewController *)self bs_endAppearanceTransitionForChildViewController:v11 toVisible:visibleCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [childViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = SBTodayViewController;
  windowCopy = window;
  [(SBHTodayViewController *)&v7 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter containerViewDidMoveToWindow:windowCopy, v7.receiver, v7.super_class];
}

- (void)updateViewsWithLegibilitySettings
{
  v5.receiver = self;
  v5.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v5 updateViewsWithLegibilitySettings];
  effectiveLegibilitySettings = [(SBHTodayViewController *)self effectiveLegibilitySettings];
  if (objc_opt_respondsToSelector())
  {
    _UILegibilitySettings = [effectiveLegibilitySettings _UILegibilitySettings];

    effectiveLegibilitySettings = _UILegibilitySettings;
  }

  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter setLegibilitySettings:effectiveLegibilitySettings];
}

- (void)_dismissTodayViewOverlay:(id)overlay
{
  overlayCopy = overlay;
  dismissTapGestureRecognizer = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  v5 = overlayCopy;
  if (dismissTapGestureRecognizer == overlayCopy)
  {
    v6 = [overlayCopy state] == 3;
    v5 = overlayCopy;
    if (v6)
    {
      dismissalDelegate = [(SBHTodayViewController *)self dismissalDelegate];
      [dismissalDelegate overlayControllerRequestsDismissal:self];

      v5 = overlayCopy;
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  dismissTapGestureRecognizer = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  if (dismissTapGestureRecognizer == recognizerCopy)
  {
    scrollView = [(SBHTodayViewController *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    v9 = panGestureRecognizer == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  dismissTapGestureRecognizer = [(SBTodayViewController *)self dismissTapGestureRecognizer];

  if (dismissTapGestureRecognizer == recognizerCopy)
  {
    scrollView = [(SBHTodayViewController *)self scrollView];
    [touchCopy locationInView:scrollView];
    v11 = v10;
    v13 = v12;

    if ([(SBTodayViewController *)self isEditing])
    {
      *(v25 + 24) = 0;
    }

    else
    {
      searchBarViewController = [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter searchBarViewController];
      if (searchBarViewController)
      {
        [touchCopy locationInView:self->_spotlightContainerView];
        v16 = v15;
        v18 = v17;
        view = [searchBarViewController view];
        [view frame];
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

- (void)spotlightPresenterSearchBarDidFocus:(id)focus
{
  delegate = [(SBHTodayViewController *)self delegate];
  [delegate todayViewWantsToEndEditing:self];
}

- (void)spotlightPresenterWillPresentSpotlight:(id)spotlight
{
  delegate = [(SBHTodayViewController *)self delegate];
  [delegate todayViewControllerWillPresentSpotlight:self];
}

- (void)spotlightPresenterDidPresentSpotlight:(id)spotlight
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v4 coverSheetViewController];
    [coverSheetViewController externalBehaviorProviderBehaviorChanged:self];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SBHTodayViewController *)self observers];
  v7 = [observers copy];

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

- (void)spotlightPresenterDidDismissSpotlight:(id)spotlight
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBHTodayViewController *)self location]== 2)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v4 coverSheetViewController];
    [coverSheetViewController externalBehaviorProviderBehaviorChanged:self];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SBHTodayViewController *)self observers];
  v7 = [observers copy];

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

- (BOOL)spotlightPresenterAllowsPullToSearch:(id)search
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isSpotlightAllowed = [mEMORY[0x277D262A0] isSpotlightAllowed];

  if ((isSpotlightAllowed & 1) == 0)
  {
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      location = [(SBHTodayViewController *)self location];
      v12 = @"unknown";
      if (location == 2)
      {
        v12 = @"left-of-lock";
      }

      if (location == 1)
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
      location2 = [(SBHTodayViewController *)self location];
      v8 = @"unknown";
      if (location2 == 2)
      {
        v8 = @"left-of-lock";
      }

      if (location2 == 1)
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v5.receiver = self;
  v5.super_class = SBTodayViewController;
  draggingCopy = dragging;
  [(SBHTodayViewController *)&v5 scrollViewWillBeginDragging:draggingCopy];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewWillBeginDragging:draggingCopy, v5.receiver, v5.super_class];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v6.receiver = self;
  v6.super_class = SBTodayViewController;
  [(SBHTodayViewController *)&v6 scrollViewDidScroll:scrollCopy];
  scrollView = [(SBHTodayViewController *)self scrollView];

  if (scrollView == scrollCopy)
  {
    [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v10.receiver = self;
  v10.super_class = SBTodayViewController;
  draggingCopy = dragging;
  [(SBHTodayViewController *)&v10 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  [(SBTodayViewSpotlightPresenter *)self->_spotlightPresenter scrollViewWillEndDragging:draggingCopy withVelocity:x, y, v10.receiver, v10.super_class];
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress
{
  progressCopy = progress;
  [(SBHTodayViewController *)self cancelTouchesForAllWidgets];
  [(SBHTodayViewController *)self beginDisablingWidgetHitTestingForReason:*MEMORY[0x277D66618]];
  [(SBHTodayViewController *)self setIsOverlayViewDisappearing:1];
  [progressCopy presentationProgress];
  v6 = v5;

  [(SBHTodayViewController *)self setMostRecentPresentationProgress:v6];
}

- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  v21 = *MEMORY[0x277D85DE8];
  if (leading)
  {
    [controller presentationProgress];
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
    observers = [(SBHTodayViewController *)self observers];
    v10 = [observers copy];

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
            [v15 todayViewController:self didChangePresentationProgress:1 newPresentationProgress:progress fromLeading:presentationProgress];
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

- (BOOL)_shouldIconViewForbidJiggling:(id)jiggling
{
  jigglingCopy = jiggling;
  listView = [(SBHTodayViewController *)self listView];
  isEditing = [listView isEditing];

  if (isEditing && (-[SBHTodayViewController listView](self, "listView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 icons], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(jigglingCopy, "icon"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, v7, v10) && (-[SBHTodayViewController onScreenIconIndexRangeByIconListView](self, "onScreenIconIndexRangeByIconListView"), v11 = objc_claimAutoreleasedReturnValue(), -[SBHTodayViewController listView](self, "listView"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "rangeValue"), v16 = v15, v13, v12, v11, v16 != 0x7FFFFFFFFFFFFFFFLL))
  {
    view = [(SBTodayViewController *)self view];
    spotlightPresenter = [(SBTodayViewController *)self spotlightPresenter];
    searchBarViewController = [spotlightPresenter searchBarViewController];
    view2 = [searchBarViewController view];

    scrollView = [(SBHTodayViewController *)self scrollView];
    [scrollView adjustedContentInset];
    v25 = v24;

    [view2 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    superview = [view2 superview];
    [view convertRect:superview fromView:{v27, v29, v31, v33}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    listView2 = [(SBHTodayViewController *)self listView];
    icon = [jigglingCopy icon];
    v45 = [listView2 indexOfIcon:icon];

    v17 = 1;
    if (v45 >= v14 && v45 - v14 < v16)
    {
      v46 = v42 + v25 + v38;
      [jigglingCopy frame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      superview2 = [jigglingCopy superview];
      [view convertRect:superview2 fromView:{v48, v50, v52, v54}];
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

- (void)_setStatusBarSettingsAssertionActive:(BOOL)active
{
  activeCopy = active;
  statusBarSettingsAssertion = [(SBTodayViewController *)self statusBarSettingsAssertion];
  if (activeCopy && !statusBarSettingsAssertion)
  {
    v15 = 0;
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v9 = objc_alloc_init(SBMutableStatusBarSettings);
    effectiveLegibilitySettings = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    v11 = SBUIDeriveUILegibilitySettings();

    [(SBMutableStatusBarSettings *)v9 setLegibilitySettings:v11];
    v12 = [assertionManager newSettingsAssertionWithSettings:v9 atLevel:2 reason:@"Today View"];
    v13 = __62__SBTodayViewController__setStatusBarSettingsAssertionActive___block_invoke();
    [v12 acquireWithAnimationParameters:v13];

    [(SBTodayViewController *)self setStatusBarSettingsAssertion:v12];
LABEL_7:
    statusBarSettingsAssertion = v15;
    goto LABEL_8;
  }

  if (!activeCopy && statusBarSettingsAssertion)
  {
    v15 = statusBarSettingsAssertion;
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