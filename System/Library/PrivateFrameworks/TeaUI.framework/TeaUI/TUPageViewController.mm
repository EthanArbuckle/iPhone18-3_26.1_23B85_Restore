@interface TUPageViewController
- (BOOL)_assistiveTechnologyIsRunning;
- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)view;
- (BOOL)canSwitchToNextViewController;
- (BOOL)canSwitchToPreviousViewController;
- (BOOL)pagingEnabled;
- (CGPoint)centerForIndex:(unint64_t)index;
- (CGRect)calculateScrollViewFrameFromViewBounds:(CGRect)bounds;
- (CGSize)pageSize;
- (CGSize)transitioningSize;
- (TUPageViewController)initWithCoder:(id)coder;
- (TUPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TUPageViewControllerDataSource)dataSource;
- (TUPageViewControllerDelegate)delegate;
- (void)_keyboardSwitchGoingRight:(BOOL)right;
- (void)accessibilityHandleRequestToGoBackForPageViewControllerScrollView:(id)view;
- (void)accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:(id)view;
- (void)addViewController:(id)controller fromScroll:(BOOL)scroll;
- (void)callLastViewAppearanceMethods;
- (void)commonInit;
- (void)handleScrollEnd;
- (void)handleScrollStart;
- (void)managePreviousAndNextViewController;
- (void)performWhenIdle:(id)idle;
- (void)reindexNextViewControllers;
- (void)reindexPreviousViewControllers;
- (void)reindexViewControllers;
- (void)removeViewController:(id)controller;
- (void)repositionPages;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setPageGutter:(double)gutter;
- (void)setPagingEnabled:(BOOL)enabled;
- (void)setSecondaryVisibleViewController:(id)controller;
- (void)setVisibleViewController:(id)controller;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)transitionToSize:(CGSize)size;
- (void)updateContentOffset;
- (void)updateContentSize;
- (void)updatePositionForViewController:(id)controller;
- (void)updateScrollView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TUPageViewController

- (TUPageViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUPageViewController;
  v3 = [(TUPageViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUPageViewController *)v3 commonInit];
  }

  return v4;
}

- (TUPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = TUPageViewController;
  v4 = [(TUPageViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(TUPageViewController *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_alloc_init(TUPageViewControllerScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(TUPageViewControllerScrollView *)self->_scrollView setAllowsKeyboardScrolling:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(TUPageViewControllerScrollView *)self->_scrollView setAutoresizesSubviews:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setPagingEnabled:1];
  [(TUPageViewControllerScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(TUPageViewControllerScrollView *)self->_scrollView setAlwaysBounceVertical:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setCanCancelContentTouches:1];
  [(TUPageViewControllerScrollView *)self->_scrollView setDelaysContentTouches:0];
  [(TUPageViewControllerScrollView *)self->_scrollView setDelegate:self];
  [(TUPageViewControllerScrollView *)self->_scrollView setAccessibilityDelegate:self];
  [(TUPageViewControllerScrollView *)self->_scrollView setDirectionalLockEnabled:1];
  [(TUPageViewControllerScrollView *)self->_scrollView _setPocketsEnabled:0];
  self->_pageGutter = 4.0;
  v5 = dispatch_group_create();
  idleDispatchGroup = self->_idleDispatchGroup;
  self->_idleDispatchGroup = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  replayViewTransitions = self->_replayViewTransitions;
  self->_replayViewTransitions = v7;

  v9 = self->_scrollView;

  [(TUPageViewControllerScrollView *)v9 setFocusEffect:0];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewDidLoad];
  view = [(TUPageViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView setPreservesSuperviewLayoutMargins:1];

  scrollView2 = [(TUPageViewController *)self scrollView];
  view2 = [(TUPageViewController *)self view];
  [view2 bounds];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:?];
  [scrollView2 setFrame:?];

  view3 = [(TUPageViewController *)self view];
  scrollView3 = [(TUPageViewController *)self scrollView];
  [view3 addSubview:scrollView3];

  view4 = [(TUPageViewController *)self view];
  [view4 bounds];
  [(TUPageViewController *)self transitionToSize:v10, v11];

  [(TUPageViewController *)self updateScrollView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didReceiveBlueprintDidBeginItemDraggingEvent name:@"TUBlueprintDidBeginItemDraggingNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_didReceiveBlueprintDidEndItemDraggingEvent name:@"TUBlueprintDidEndItemDraggingNotification" object:0];
}

- (void)viewWillLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = TUPageViewController;
  [(TUPageViewController *)&v25 viewWillLayoutSubviews];
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TUPageViewController *)self pageGutter];
  v13 = v12 * 0.5;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v27 = CGRectInset(v26, v13, 0.0);
  width = v27.size.width;
  height = v27.size.height;

  view = [(TUPageViewController *)self view];
  [view bounds];
  v18 = v17;
  v20 = v19;

  if (width != v18 || height != v20)
  {
    view2 = [(TUPageViewController *)self view];
    [view2 bounds];
    [(TUPageViewController *)self transitionToSize:v23, v24];

    [(TUPageViewController *)self managePreviousAndNextViewController];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v29.receiver = self;
  v29.super_class = TUPageViewController;
  [(TUPageViewController *)&v29 viewWillAppear:?];
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView bounds];
  v7 = v6;
  v9 = v8;
  view = [(TUPageViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    view2 = [(TUPageViewController *)self view];
    [view2 bounds];
    [(TUPageViewController *)self transitionToSize:v17, v18];
  }

  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (visibleViewController)
  {
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    [visibleViewController2 beginAppearanceTransition:1 animated:appearCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    replayViewTransitions = [(TUPageViewController *)self replayViewTransitions];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __39__TUPageViewController_viewWillAppear___block_invoke;
    v26 = &unk_1E84F3EC8;
    objc_copyWeak(&v27, &location);
    v22 = _Block_copy(&v23);
    [replayViewTransitions addObject:{v22, v23, v24, v25, v26}];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __39__TUPageViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 beginAppearanceTransition:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewDidAppear:appear];
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (visibleViewController)
  {
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    [visibleViewController2 endAppearanceTransition];
  }

  else
  {
    objc_initWeak(&location, self);
    replayViewTransitions = [(TUPageViewController *)self replayViewTransitions];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __38__TUPageViewController_viewDidAppear___block_invoke;
    v11 = &unk_1E84F3EC8;
    objc_copyWeak(&v12, &location);
    v7 = _Block_copy(&v8);
    [replayViewTransitions addObject:{v7, v8, v9, v10, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __38__TUPageViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15.receiver = self;
  v15.super_class = TUPageViewController;
  [(TUPageViewController *)&v15 viewWillDisappear:?];
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (visibleViewController)
  {
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    [visibleViewController2 beginAppearanceTransition:0 animated:disappearCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    replayViewTransitions = [(TUPageViewController *)self replayViewTransitions];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__TUPageViewController_viewWillDisappear___block_invoke;
    v12 = &unk_1E84F3EC8;
    objc_copyWeak(&v13, &location);
    v8 = _Block_copy(&v9);
    [replayViewTransitions addObject:{v8, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __42__TUPageViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 beginAppearanceTransition:0 animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewDidDisappear:disappear];
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (visibleViewController)
  {
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    [visibleViewController2 endAppearanceTransition];
  }

  else
  {
    objc_initWeak(&location, self);
    replayViewTransitions = [(TUPageViewController *)self replayViewTransitions];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __41__TUPageViewController_viewDidDisappear___block_invoke;
    v11 = &unk_1E84F3EC8;
    objc_copyWeak(&v12, &location);
    v7 = _Block_copy(&v8);
    [replayViewTransitions addObject:{v7, v8, v9, v10, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __41__TUPageViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 endAppearanceTransition];
}

- (void)viewLayoutMarginsDidChange
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewLayoutMarginsDidChange];
  view = [(TUPageViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  visibleViewController = [(TUPageViewController *)self visibleViewController];
  view2 = [visibleViewController view];
  [view2 setLayoutMargins:{v5, v7, v9, v11}];
}

- (void)performWhenIdle:(id)idle
{
  idleCopy = idle;
  idleDispatchGroup = [(TUPageViewController *)self idleDispatchGroup];
  dispatch_group_notify(idleDispatchGroup, MEMORY[0x1E69E96A0], idleCopy);
}

- (void)setVisibleViewController:(id)controller
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (visibleViewController != controllerCopy)
  {
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    visibleViewController3 = [(TUPageViewController *)self visibleViewController];

    if (visibleViewController3)
    {
      visibleViewController4 = [(TUPageViewController *)self visibleViewController];
      [(TUPageViewController *)self removeViewController:visibleViewController4];
    }

    [(TUPageViewController *)self addViewController:controllerCopy fromScroll:0];
    objc_storeStrong(&self->_visibleViewController, controller);
    [(TUPageViewController *)self reindexViewControllers];
    replayViewTransitions = [(TUPageViewController *)self replayViewTransitions];

    if (replayViewTransitions)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      replayViewTransitions2 = [(TUPageViewController *)self replayViewTransitions];
      v12 = [replayViewTransitions2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(replayViewTransitions2);
            }

            (*(*(*(&v21 + 1) + 8 * v15++) + 16))();
          }

          while (v13 != v15);
          v13 = [replayViewTransitions2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      [(TUPageViewController *)self setReplayViewTransitions:0];
    }

    else if ([(TUPageViewController *)self _appearState]== 2 && visibleViewController2)
    {
      visibleViewController5 = [(TUPageViewController *)self visibleViewController];
      [visibleViewController5 beginAppearanceTransition:1 animated:0];

      visibleViewController6 = [(TUPageViewController *)self visibleViewController];
      [visibleViewController6 endAppearanceTransition];
    }

    [(TUPageViewController *)self updateContentOffset];
    delegate = [(TUPageViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(TUPageViewController *)self delegate];
      [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController2 direction:0];
    }
  }
}

- (void)setPageGutter:(double)gutter
{
  self->_pageGutter = gutter;
  scrollView = [(TUPageViewController *)self scrollView];
  view = [(TUPageViewController *)self view];
  [view bounds];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:?];
  [scrollView setFrame:?];

  [(TUPageViewController *)self updateScrollView];
}

- (CGSize)pageSize
{
  view = [(TUPageViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if ([(TUPageViewController *)self isTransitioning])
  {

    [(TUPageViewController *)self transitioningSize];
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setPagingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView setScrollEnabled:enabledCopy];
}

- (BOOL)pagingEnabled
{
  scrollView = [(TUPageViewController *)self scrollView];
  isScrollEnabled = [scrollView isScrollEnabled];

  return isScrollEnabled;
}

- (CGRect)calculateScrollViewFrameFromViewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(TUPageViewController *)self pageGutter];
  v8 = v7 * -0.5;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, 0.0);
}

- (void)updateScrollView
{
  [(TUPageViewController *)self updateContentSize];

  [(TUPageViewController *)self updateContentOffset];
}

- (void)updateContentSize
{
  nextViewController = [(TUPageViewController *)self nextViewController];

  if (nextViewController)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  previousViewController = [(TUPageViewController *)self previousViewController];

  if (previousViewController)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  [(TUPageViewController *)self pageSize];
  v8 = v7;
  [(TUPageViewController *)self pageGutter];
  v10 = v9 * v6 + v8 * v6;
  [(TUPageViewController *)self pageSize];
  v12 = v11;
  [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView setContentSize:{v10, v12}];

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)updateContentOffset
{
  visibleViewController = [(TUPageViewController *)self visibleViewController];
  view = [visibleViewController view];
  [view center];
  v6 = v5;
  visibleViewController2 = [(TUPageViewController *)self visibleViewController];
  view2 = [visibleViewController2 view];
  [view2 bounds];
  v9 = v6 - CGRectGetWidth(v14) * 0.5;
  [(TUPageViewController *)self pageGutter];
  v11 = v9 - v10 * 0.5;

  [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView setContentOffset:{v11, 0.0}];

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)setSecondaryVisibleViewController:(id)controller
{
  controllerCopy = controller;
  secondaryVisibleViewController = self->_secondaryVisibleViewController;
  if (secondaryVisibleViewController != controllerCopy)
  {
    if ([(UIViewController *)secondaryVisibleViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_secondaryVisibleViewController view];
      [view setUserInteractionEnabled:1];
    }

    objc_storeStrong(&self->_secondaryVisibleViewController, controller);
  }

  MEMORY[0x1EEE66BB8]();
}

- (CGPoint)centerForIndex:(unint64_t)index
{
  [(TUPageViewController *)self pageSize];
  v6 = v5;
  [(TUPageViewController *)self pageGutter];
  v8 = v7 * index + v6 * (index + 0.5);
  [(TUPageViewController *)self pageGutter];
  v10 = v8 + v9 * 0.5;
  [(TUPageViewController *)self pageSize];
  v12 = v11 * 0.5;
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

- (void)repositionPages
{
  nextViewController = [(TUPageViewController *)self nextViewController];
  [(TUPageViewController *)self updatePositionForViewController:nextViewController];

  visibleViewController = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self updatePositionForViewController:visibleViewController];

  previousViewController = [(TUPageViewController *)self previousViewController];
  [(TUPageViewController *)self updatePositionForViewController:previousViewController];
}

- (void)managePreviousAndNextViewController
{
  managedForViewController = [(TUPageViewController *)self managedForViewController];
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  if (managedForViewController != visibleViewController)
  {
    previousViewController = [(TUPageViewController *)self previousViewController];

    if (!previousViewController)
    {
      dataSource = [(TUPageViewController *)self dataSource];
      visibleViewController2 = [(TUPageViewController *)self visibleViewController];
      v8 = [dataSource pageViewController:self viewControllerBeforeViewController:visibleViewController2];
      [(TUPageViewController *)self setPreviousViewController:v8];
    }

    previousViewController2 = [(TUPageViewController *)self previousViewController];

    if (previousViewController2)
    {
      view = [(TUPageViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v32);
      view2 = [(TUPageViewController *)self view];
      [view2 bounds];
      Height = CGRectGetHeight(v33);
      previousViewController3 = [(TUPageViewController *)self previousViewController];
      view3 = [previousViewController3 view];
      [view3 setBounds:{0.0, 0.0, Width, Height}];

      previousViewController4 = [(TUPageViewController *)self previousViewController];
      [(TUPageViewController *)self updatePositionForViewController:previousViewController4];
    }

    nextViewController = [(TUPageViewController *)self nextViewController];

    if (!nextViewController)
    {
      dataSource2 = [(TUPageViewController *)self dataSource];
      visibleViewController3 = [(TUPageViewController *)self visibleViewController];
      v20 = [dataSource2 pageViewController:self viewControllerAfterViewController:visibleViewController3];
      [(TUPageViewController *)self setNextViewController:v20];
    }

    nextViewController2 = [(TUPageViewController *)self nextViewController];

    if (nextViewController2)
    {
      view4 = [(TUPageViewController *)self view];
      [view4 bounds];
      v23 = CGRectGetWidth(v34);
      view5 = [(TUPageViewController *)self view];
      [view5 bounds];
      v25 = CGRectGetHeight(v35);
      nextViewController3 = [(TUPageViewController *)self nextViewController];
      view6 = [nextViewController3 view];
      [view6 setBounds:{0.0, 0.0, v23, v25}];

      nextViewController4 = [(TUPageViewController *)self nextViewController];
      [(TUPageViewController *)self updatePositionForViewController:nextViewController4];
    }

    visibleViewController4 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self updatePositionForViewController:visibleViewController4];

    [(TUPageViewController *)self updateContentSize];
    visibleViewController5 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setManagedForViewController:visibleViewController5];
  }
}

- (void)updatePositionForViewController:(id)controller
{
  controllerCopy = controller;
  visibleViewController = [(TUPageViewController *)self visibleViewController];

  previousViewController = [(TUPageViewController *)self previousViewController];
  if (visibleViewController == controllerCopy)
  {
    v7 = previousViewController != 0;
  }

  else
  {

    if (previousViewController == controllerCopy || ([(TUPageViewController *)self nextViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != controllerCopy))
    {
      v7 = 0;
      goto LABEL_10;
    }

    previousViewController = [(TUPageViewController *)self previousViewController];
    if (previousViewController)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_10:
  [(TUPageViewController *)self centerForIndex:v7];
  v9 = v8;
  v11 = v10;
  view = [controllerCopy view];
  [view setCenter:{v9, v11}];
}

- (void)removeViewController:(id)controller
{
  controllerCopy = controller;
  appearingViewController = [(TUPageViewController *)self appearingViewController];

  if (appearingViewController == controllerCopy)
  {
    [controllerCopy beginAppearanceTransition:0 animated:0];
    [(TUPageViewController *)self setAppearingViewController:0];
  }

  [controllerCopy endAppearanceTransition];
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
  delegate = [(TUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(TUPageViewController *)self delegate];
    [delegate2 pageViewController:self didHideViewController:controllerCopy];
  }
}

- (void)addViewController:(id)controller fromScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  controllerCopy = controller;
  delegate = [(TUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(TUPageViewController *)self delegate];
    visibleViewController = [(TUPageViewController *)self visibleViewController];
    [delegate2 pageViewController:self willShowViewController:controllerCopy previousViewController:visibleViewController fromScroll:scrollCopy];
  }

  [(TUPageViewController *)self addChildViewController:controllerCopy];
  [(TUPageViewController *)self setAppearingViewController:controllerCopy];
  visibleViewController2 = [(TUPageViewController *)self visibleViewController];
  [visibleViewController2 beginAppearanceTransition:0 animated:0];

  visibleViewController3 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setDisappearingViewController:visibleViewController3];

  view = [(TUPageViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v31);
  view2 = [(TUPageViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v32);
  view3 = [controllerCopy view];
  [view3 setBounds:{0.0, 0.0, Width, Height}];

  view4 = [(TUPageViewController *)self view];
  [view4 layoutMargins];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  view5 = [controllerCopy view];
  [view5 setLayoutMargins:{v19, v21, v23, v25}];

  scrollView = [(TUPageViewController *)self scrollView];
  view6 = [controllerCopy view];
  [scrollView addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)reindexViewControllers
{
  [(TUPageViewController *)self setNextViewController:0];
  [(TUPageViewController *)self setPreviousViewController:0];
  [(TUPageViewController *)self setManagedForViewController:0];
  [(TUPageViewController *)self managePreviousAndNextViewController];

  [(TUPageViewController *)self updateContentOffset];
}

- (void)reindexPreviousViewControllers
{
  [(TUPageViewController *)self setPreviousViewController:0];
  [(TUPageViewController *)self setManagedForViewController:0];
  [(TUPageViewController *)self managePreviousAndNextViewController];

  [(TUPageViewController *)self updateContentOffset];
}

- (void)reindexNextViewControllers
{
  [(TUPageViewController *)self setNextViewController:0];
  [(TUPageViewController *)self setManagedForViewController:0];
  [(TUPageViewController *)self managePreviousAndNextViewController];

  [(TUPageViewController *)self updateContentOffset];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  visibleViewController = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setOriginalVisibleViewController:visibleViewController];

  originalVisibleViewController = [(TUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:0];

  [(TUPageViewController *)self handleScrollStart];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(TUPageViewController *)self handleScrollEnd];
  }
}

- (void)handleScrollStart
{
  if (![(TUPageViewController *)self scrollViewStartedScrolling])
  {
    idleDispatchGroup = [(TUPageViewController *)self idleDispatchGroup];
    dispatch_group_enter(idleDispatchGroup);

    self->_scrollViewStartedScrolling = 1;
  }
}

- (void)handleScrollEnd
{
  if ([(TUPageViewController *)self scrollViewStartedScrolling])
  {
    idleDispatchGroup = [(TUPageViewController *)self idleDispatchGroup];
    dispatch_group_leave(idleDispatchGroup);

    self->_scrollViewStartedScrolling = 0;
  }

  [(TUPageViewController *)self callLastViewAppearanceMethods];
}

- (void)callLastViewAppearanceMethods
{
  originalVisibleViewController = [(TUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:1];

  if (![(TUPageViewController *)self scrollViewStartedScrolling])
  {
    visibleViewController = [(TUPageViewController *)self visibleViewController];
    disappearingViewController = [(TUPageViewController *)self disappearingViewController];

    if (visibleViewController == disappearingViewController)
    {
      disappearingViewController2 = [(TUPageViewController *)self disappearingViewController];
      [disappearingViewController2 beginAppearanceTransition:1 animated:0];

      disappearingViewController3 = [(TUPageViewController *)self disappearingViewController];
      [disappearingViewController3 endAppearanceTransition];
    }

    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    appearingViewController = [(TUPageViewController *)self appearingViewController];

    if (visibleViewController2 != appearingViewController)
    {
      appearingViewController2 = [(TUPageViewController *)self appearingViewController];
      [appearingViewController2 beginAppearanceTransition:0 animated:0];

      appearingViewController3 = [(TUPageViewController *)self appearingViewController];
      [appearingViewController3 endAppearanceTransition];
    }

    visibleViewController3 = [(TUPageViewController *)self visibleViewController];
    appearingViewController4 = [(TUPageViewController *)self appearingViewController];

    if (visibleViewController3 == appearingViewController4)
    {
      appearingViewController5 = [(TUPageViewController *)self appearingViewController];
      [appearingViewController5 endAppearanceTransition];
    }

    [(TUPageViewController *)self setAppearingViewController:0];

    [(TUPageViewController *)self setDisappearingViewController:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(TUPageViewController *)self cancelScrollViewDidScroll]&& ![(TUPageViewController *)self _shouldIgnoreDidScrollWithScrollView:scrollCopy])
  {
    [scrollCopy contentOffset];
    v5 = v4;
    [scrollCopy contentOffset];
    v7 = v6;
    visibleViewController = [(TUPageViewController *)self visibleViewController];
    view = [visibleViewController view];
    [view center];
    v11 = v10;
    [scrollCopy bounds];
    v13 = v7 - (v11 + v12 * -0.5);

    if (v13 >= 0.0)
    {
      if (v13 <= 0.0)
      {
        v15 = 0;
        goto LABEL_9;
      }

      nextViewController = [(TUPageViewController *)self nextViewController];
    }

    else
    {
      nextViewController = [(TUPageViewController *)self previousViewController];
    }

    v15 = nextViewController;
LABEL_9:
    secondaryVisibleViewController = [(TUPageViewController *)self secondaryVisibleViewController];

    if (!secondaryVisibleViewController && v15)
    {
      [(TUPageViewController *)self setSecondaryVisibleViewController:v15];
      [(TUPageViewController *)self addViewController:v15 fromScroll:1];
LABEL_15:
      secondaryVisibleViewController2 = [(TUPageViewController *)self secondaryVisibleViewController];
      [secondaryVisibleViewController2 beginAppearanceTransition:1 animated:0];

      goto LABEL_16;
    }

    secondaryVisibleViewController3 = [(TUPageViewController *)self secondaryVisibleViewController];

    if (v15)
    {
      if (secondaryVisibleViewController3 != v15)
      {
        secondaryVisibleViewController4 = [(TUPageViewController *)self secondaryVisibleViewController];
        [(TUPageViewController *)self removeViewController:secondaryVisibleViewController4];

        [(TUPageViewController *)self setSecondaryVisibleViewController:v15];
        secondaryVisibleViewController5 = [(TUPageViewController *)self secondaryVisibleViewController];
        [(TUPageViewController *)self addViewController:secondaryVisibleViewController5 fromScroll:1];

        goto LABEL_15;
      }
    }

    else if (secondaryVisibleViewController3)
    {
      secondaryVisibleViewController6 = [(TUPageViewController *)self secondaryVisibleViewController];
      [(TUPageViewController *)self removeViewController:secondaryVisibleViewController6];

      [(TUPageViewController *)self setSecondaryVisibleViewController:0];
    }

LABEL_16:
    secondaryVisibleViewController7 = [(TUPageViewController *)self secondaryVisibleViewController];
    view2 = [secondaryVisibleViewController7 view];
    [view2 setUserInteractionEnabled:0];

    delegate = [(TUPageViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      view3 = [(TUPageViewController *)self view];
      visibleViewController2 = [(TUPageViewController *)self visibleViewController];
      view4 = [visibleViewController2 view];
      [view4 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      visibleViewController3 = [(TUPageViewController *)self visibleViewController];
      view5 = [visibleViewController3 view];
      [view3 convertRect:view5 fromView:{v29, v31, v33, v35}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      view6 = [(TUPageViewController *)self view];
      [view6 bounds];
      v48 = v47;
      view7 = [(TUPageViewController *)self view];
      [view7 bounds];
      v108.size.height = v50;
      v108.origin.x = 0.0;
      v108.origin.y = 0.0;
      v104.origin.x = v39;
      v104.origin.y = v41;
      v104.size.width = v43;
      v104.size.height = v45;
      v108.size.width = v48;
      v105 = CGRectIntersection(v104, v108);
      width = v105.size.width;

      view8 = [(TUPageViewController *)self view];
      [view8 bounds];
      v54 = width / v53;

      delegate2 = [(TUPageViewController *)self delegate];
      visibleViewController4 = [(TUPageViewController *)self visibleViewController];
      v57 = v13 <= 0.0 ? 1 : 2;
      [delegate2 pageViewController:self viewController:visibleViewController4 changedVisibilityFactor:v57 scrollDirection:v54];

      secondaryVisibleViewController8 = [(TUPageViewController *)self secondaryVisibleViewController];

      if (secondaryVisibleViewController8)
      {
        secondaryVisibleViewController9 = [(TUPageViewController *)self secondaryVisibleViewController];
        view9 = [secondaryVisibleViewController9 view];
        [view9 frame];
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v68 = v67;
        view10 = [(TUPageViewController *)self view];
        [view10 bounds];
        v71 = v70;
        view11 = [(TUPageViewController *)self view];
        [view11 bounds];
        v109.size.height = v73;
        v109.origin.y = 0.0;
        v106.origin.x = v62;
        v106.origin.y = v64;
        v106.size.width = v66;
        v106.size.height = v68;
        v109.origin.x = v5;
        v109.size.width = v71;
        v107 = CGRectIntersection(v106, v109);
        v74 = v107.size.width;

        view12 = [(TUPageViewController *)self view];
        [view12 bounds];
        v77 = v74 / v76;

        delegate3 = [(TUPageViewController *)self delegate];
        secondaryVisibleViewController10 = [(TUPageViewController *)self secondaryVisibleViewController];
        [delegate3 pageViewController:self viewController:secondaryVisibleViewController10 changedVisibilityFactor:v57 scrollDirection:v77];
      }
    }

    visibleViewController5 = [(TUPageViewController *)self visibleViewController];
    view13 = [visibleViewController5 view];
    [view13 center];
    v83 = v82;
    scrollView = [(TUPageViewController *)self scrollView];
    [scrollView bounds];
    v86 = v83 + v85 * -1.5;

    visibleViewController6 = [(TUPageViewController *)self visibleViewController];
    view14 = [visibleViewController6 view];
    [view14 center];
    v90 = v89;
    scrollView2 = [(TUPageViewController *)self scrollView];
    [scrollView2 bounds];
    v93 = v92;

    visibleViewController7 = [(TUPageViewController *)self visibleViewController];
    if (v5 <= v86)
    {
      [(TUPageViewController *)self switchToPreviousViewController];
    }

    else
    {
      if (v5 < v90 + v93 * 0.5)
      {
LABEL_33:

        goto LABEL_34;
      }

      [(TUPageViewController *)self switchToNextViewController];
    }

    delegate4 = [(TUPageViewController *)self delegate];
    v96 = objc_opt_respondsToSelector();

    if (v96)
    {
      secondaryVisibleViewController11 = [(TUPageViewController *)self secondaryVisibleViewController];

      if (secondaryVisibleViewController11)
      {
        delegate5 = [(TUPageViewController *)self delegate];
        secondaryVisibleViewController12 = [(TUPageViewController *)self secondaryVisibleViewController];
        if (v13 <= 0.0)
        {
          v100 = 1;
        }

        else
        {
          v100 = 2;
        }

        [delegate5 pageViewController:self viewController:secondaryVisibleViewController12 changedVisibilityFactor:v100 scrollDirection:1.0];
      }
    }

    [(TUPageViewController *)self removeViewController:visibleViewController7];
    [(TUPageViewController *)self setSecondaryVisibleViewController:0];
    goto LABEL_33;
  }

LABEL_34:
}

- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)view
{
  viewCopy = view;
  if ([viewCopy isDragging])
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [viewCopy isDecelerating];
  }

  _assistiveTechnologyIsRunning = [(TUPageViewController *)self _assistiveTechnologyIsRunning];
  visibleViewController = [(TUPageViewController *)self visibleViewController];
  v8 = visibleViewController == 0;

  if ((isDecelerating & 1) == 0 && !_assistiveTechnologyIsRunning && ![(TUPageViewController *)self scrollViewStartedScrolling])
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_assistiveTechnologyIsRunning
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (void)switchToNextViewController
{
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;

  nextViewController = [(TUPageViewController *)self nextViewController];

  if (!nextViewController)
  {
    return;
  }

  nextViewController2 = [(TUPageViewController *)self nextViewController];
  visibleViewController = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setNextViewController:0];
  visibleViewController2 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setPreviousViewController:visibleViewController2];

  visibleViewController = self->_visibleViewController;
  self->_visibleViewController = nextViewController2;
  v10 = nextViewController2;

  visibleViewController3 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setOriginalVisibleViewController:visibleViewController3];

  originalVisibleViewController = [(TUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:0];

  delegate = [(TUPageViewController *)self delegate];
  LOBYTE(view) = objc_opt_respondsToSelector();

  if (view)
  {
    delegate2 = [(TUPageViewController *)self delegate];
    [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController direction:2];
  }

  [(TUPageViewController *)self managePreviousAndNextViewController];
  scrollView2 = [(TUPageViewController *)self scrollView];
  [scrollView2 contentOffset];
  v18 = v17;

  [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
  nextViewController3 = [(TUPageViewController *)self nextViewController];

  if (!nextViewController3)
  {
    v31 = v5 * 0.5;
    v32 = v5 * 0.5 + v18;
    previousViewController = [(TUPageViewController *)self previousViewController];

    scrollView3 = [(TUPageViewController *)self scrollView];
    [scrollView3 contentOffset];
    v24 = v35;

    if (previousViewController)
    {
      v30 = v32 - v31;
    }

    else
    {
      v30 = v32 - v5 - v31;
    }

    goto LABEL_11;
  }

  scrollView4 = [(TUPageViewController *)self scrollView];
  [scrollView4 contentOffset];
  v22 = v21;
  v24 = v23;

  scrollView5 = [(TUPageViewController *)self scrollView];
  [scrollView5 bounds];
  v27 = v26 + v26;

  if (v22 >= v27)
  {
    scrollView6 = [(TUPageViewController *)self scrollView];
    [scrollView6 bounds];
    v30 = v22 - v29;

LABEL_11:
    scrollView7 = [(TUPageViewController *)self scrollView];
    [scrollView7 setContentOffset:{v30, v24}];
  }

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (BOOL)canSwitchToPreviousViewController
{
  previousViewController = [(TUPageViewController *)self previousViewController];
  v3 = previousViewController != 0;

  return v3;
}

- (BOOL)canSwitchToNextViewController
{
  nextViewController = [(TUPageViewController *)self nextViewController];
  v3 = nextViewController != 0;

  return v3;
}

- (void)_keyboardSwitchGoingRight:(BOOL)right
{
  rightCopy = right;
  if (![(TUPageViewController *)self scrollViewStartedScrolling]&& [(TUPageViewController *)self pagingEnabled])
  {
    canSwitchToNextViewController = [(TUPageViewController *)self canSwitchToNextViewController];
    canSwitchToPreviousViewController = [(TUPageViewController *)self canSwitchToPreviousViewController];
    if (rightCopy ? canSwitchToNextViewController : canSwitchToPreviousViewController)
    {
      visibleViewController = [(TUPageViewController *)self visibleViewController];
      [(TUPageViewController *)self setOriginalVisibleViewController:visibleViewController];

      scrollView = [(TUPageViewController *)self scrollView];
      [scrollView bounds];
      Width = CGRectGetWidth(v21);
      if (rightCopy)
      {
        v10 = Width;
      }

      else
      {
        v10 = -Width;
      }

      [scrollView contentOffset];
      v12 = fmax(v10 + v11, 0.0);
      [scrollView contentSize];
      v14 = v13 - Width;
      if (v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [scrollView contentOffset];
      v17 = v16;
      [(TUPageViewController *)self handleScrollStart];
      scrollView2 = [(TUPageViewController *)self scrollView];
      [scrollView2 setContentOffset:1 animated:{v15, v17}];
    }
  }
}

- (void)switchToPreviousViewController
{
  scrollView = [(TUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;

  scrollView2 = [(TUPageViewController *)self scrollView];
  [scrollView2 contentOffset];
  v8 = v7;

  previousViewController = [(TUPageViewController *)self previousViewController];

  if (previousViewController)
  {
    previousViewController2 = [(TUPageViewController *)self previousViewController];
    visibleViewController = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setPreviousViewController:0];
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setNextViewController:visibleViewController2];

    visibleViewController = self->_visibleViewController;
    self->_visibleViewController = previousViewController2;
    v13 = previousViewController2;

    visibleViewController3 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setOriginalVisibleViewController:visibleViewController3];

    originalVisibleViewController = [(TUPageViewController *)self originalVisibleViewController];
    view = [originalVisibleViewController view];
    [view setUserInteractionEnabled:0];

    delegate = [(TUPageViewController *)self delegate];
    LOBYTE(view) = objc_opt_respondsToSelector();

    if (view)
    {
      delegate2 = [(TUPageViewController *)self delegate];
      [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController direction:1];
    }

    [(TUPageViewController *)self managePreviousAndNextViewController];
    [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
    previousViewController3 = [(TUPageViewController *)self previousViewController];

    scrollView3 = [(TUPageViewController *)self scrollView];
    [scrollView3 contentOffset];
    v23 = v22;
    if (previousViewController3)
    {
      v24 = v21;

      scrollView4 = [(TUPageViewController *)self scrollView];
      [scrollView4 bounds];
      v27 = v24 + v26;
    }

    else
    {

      v27 = v5 * 0.5 + v8 - v5 * 0.5;
    }

    scrollView5 = [(TUPageViewController *)self scrollView];
    [scrollView5 setContentOffset:{v27, v23}];

    [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
  }
}

- (void)accessibilityHandleRequestToGoBackForPageViewControllerScrollView:(id)view
{
  [(TUPageViewController *)self keyboardOrActionSwitchToPreviousViewController];
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__TUPageViewController_accessibilityHandleRequestToGoBackForPageViewControllerScrollView___block_invoke;
  block[3] = &unk_1E84F3EF0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __90__TUPageViewController_accessibilityHandleRequestToGoBackForPageViewControllerScrollView___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD8E8];
  v3 = [*(a1 + 32) visibleViewController];
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:(id)view
{
  [(TUPageViewController *)self keyboardOrActionSwitchToNextViewController];
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__TUPageViewController_accessibilityHandleRequestToGoForewardForPageViewControllerScrollView___block_invoke;
  block[3] = &unk_1E84F3EF0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __94__TUPageViewController_accessibilityHandleRequestToGoForewardForPageViewControllerScrollView___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DD8E8];
  v3 = [*(a1 + 32) visibleViewController];
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)transitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  view = [(TUPageViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  scrollView = [(TUPageViewController *)self scrollView];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:v8, v10, width, height];
  [scrollView setFrame:?];

  childViewControllers = [(TUPageViewController *)self childViewControllers];
  v13 = [childViewControllers count];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    childViewControllers2 = [(TUPageViewController *)self childViewControllers];
    v15 = [childViewControllers2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(childViewControllers2);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          view2 = [v19 view];
          [view2 bounds];
          v22 = v21;
          v24 = v23;

          view3 = [v19 view];
          [view3 setBounds:{v22, v24, width, height}];
        }

        v16 = [childViewControllers2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [(TUPageViewController *)self repositionPages];
  }

  [(TUPageViewController *)self updateScrollView];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v23.receiver = self;
  v23.super_class = TUPageViewController;
  coordinatorCopy = coordinator;
  [(TUPageViewController *)&v23 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  scrollView = [(TUPageViewController *)self scrollView];
  if ([scrollView isDecelerating])
  {

LABEL_4:
    visibleViewController = [(TUPageViewController *)self visibleViewController];
    view = [visibleViewController view];
    [view center];
    v14 = v13;
    visibleViewController2 = [(TUPageViewController *)self visibleViewController];
    view2 = [visibleViewController2 view];
    [view2 bounds];
    v17 = v14 - CGRectGetWidth(v24) * 0.5;
    [(TUPageViewController *)self pageGutter];
    v19 = v17 - v18 * 0.5;

    scrollView2 = [(TUPageViewController *)self scrollView];
    [scrollView2 setContentOffset:0 animated:{v19, 0.0}];

    goto LABEL_5;
  }

  scrollView3 = [(TUPageViewController *)self scrollView];
  isDragging = [scrollView3 isDragging];

  if (isDragging)
  {
    goto LABEL_4;
  }

LABEL_5:
  self->_isTransitioning = 1;
  self->_transitioningSize.width = width;
  self->_transitioningSize.height = height;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__TUPageViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E84F3F18;
  aBlock[4] = self;
  *&aBlock[5] = width;
  *&aBlock[6] = height;
  v21 = _Block_copy(aBlock);
  [coordinatorCopy animateAlongsideTransition:v21 completion:0];
}

uint64_t __75__TUPageViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) transitionToSize:{*(a1 + 40), *(a1 + 48)}];
  *(*(a1 + 32) + 993) = 0;
  return result;
}

- (TUPageViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (TUPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)transitioningSize
{
  width = self->_transitioningSize.width;
  height = self->_transitioningSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end