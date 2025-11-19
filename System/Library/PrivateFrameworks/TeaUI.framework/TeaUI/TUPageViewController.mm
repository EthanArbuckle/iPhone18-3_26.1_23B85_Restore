@interface TUPageViewController
- (BOOL)_assistiveTechnologyIsRunning;
- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)a3;
- (BOOL)canSwitchToNextViewController;
- (BOOL)canSwitchToPreviousViewController;
- (BOOL)pagingEnabled;
- (CGPoint)centerForIndex:(unint64_t)a3;
- (CGRect)calculateScrollViewFrameFromViewBounds:(CGRect)a3;
- (CGSize)pageSize;
- (CGSize)transitioningSize;
- (TUPageViewController)initWithCoder:(id)a3;
- (TUPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TUPageViewControllerDataSource)dataSource;
- (TUPageViewControllerDelegate)delegate;
- (void)_keyboardSwitchGoingRight:(BOOL)a3;
- (void)accessibilityHandleRequestToGoBackForPageViewControllerScrollView:(id)a3;
- (void)accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:(id)a3;
- (void)addViewController:(id)a3 fromScroll:(BOOL)a4;
- (void)callLastViewAppearanceMethods;
- (void)commonInit;
- (void)handleScrollEnd;
- (void)handleScrollStart;
- (void)managePreviousAndNextViewController;
- (void)performWhenIdle:(id)a3;
- (void)reindexNextViewControllers;
- (void)reindexPreviousViewControllers;
- (void)reindexViewControllers;
- (void)removeViewController:(id)a3;
- (void)repositionPages;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setPageGutter:(double)a3;
- (void)setPagingEnabled:(BOOL)a3;
- (void)setSecondaryVisibleViewController:(id)a3;
- (void)setVisibleViewController:(id)a3;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)transitionToSize:(CGSize)a3;
- (void)updateContentOffset;
- (void)updateContentSize;
- (void)updatePositionForViewController:(id)a3;
- (void)updateScrollView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TUPageViewController

- (TUPageViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUPageViewController;
  v3 = [(TUPageViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUPageViewController *)v3 commonInit];
  }

  return v4;
}

- (TUPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = TUPageViewController;
  v4 = [(TUPageViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [(TUPageViewController *)self view];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [(TUPageViewController *)self scrollView];
  [v4 setPreservesSuperviewLayoutMargins:1];

  v5 = [(TUPageViewController *)self scrollView];
  v6 = [(TUPageViewController *)self view];
  [v6 bounds];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:?];
  [v5 setFrame:?];

  v7 = [(TUPageViewController *)self view];
  v8 = [(TUPageViewController *)self scrollView];
  [v7 addSubview:v8];

  v9 = [(TUPageViewController *)self view];
  [v9 bounds];
  [(TUPageViewController *)self transitionToSize:v10, v11];

  [(TUPageViewController *)self updateScrollView];
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel_didReceiveBlueprintDidBeginItemDraggingEvent name:@"TUBlueprintDidBeginItemDraggingNotification" object:0];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel_didReceiveBlueprintDidEndItemDraggingEvent name:@"TUBlueprintDidEndItemDraggingNotification" object:0];
}

- (void)viewWillLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = TUPageViewController;
  [(TUPageViewController *)&v25 viewWillLayoutSubviews];
  v3 = [(TUPageViewController *)self scrollView];
  [v3 bounds];
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

  v16 = [(TUPageViewController *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;

  if (width != v18 || height != v20)
  {
    v22 = [(TUPageViewController *)self view];
    [v22 bounds];
    [(TUPageViewController *)self transitionToSize:v23, v24];

    [(TUPageViewController *)self managePreviousAndNextViewController];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v29.receiver = self;
  v29.super_class = TUPageViewController;
  [(TUPageViewController *)&v29 viewWillAppear:?];
  v5 = [(TUPageViewController *)self scrollView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [(TUPageViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = [(TUPageViewController *)self view];
    [v16 bounds];
    [(TUPageViewController *)self transitionToSize:v17, v18];
  }

  v19 = [(TUPageViewController *)self visibleViewController];

  if (v19)
  {
    v20 = [(TUPageViewController *)self visibleViewController];
    [v20 beginAppearanceTransition:1 animated:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    v21 = [(TUPageViewController *)self replayViewTransitions];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __39__TUPageViewController_viewWillAppear___block_invoke;
    v26 = &unk_1E84F3EC8;
    objc_copyWeak(&v27, &location);
    v22 = _Block_copy(&v23);
    [v21 addObject:{v22, v23, v24, v25, v26}];

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

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewDidAppear:a3];
  v4 = [(TUPageViewController *)self visibleViewController];

  if (v4)
  {
    v5 = [(TUPageViewController *)self visibleViewController];
    [v5 endAppearanceTransition];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(TUPageViewController *)self replayViewTransitions];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __38__TUPageViewController_viewDidAppear___block_invoke;
    v11 = &unk_1E84F3EC8;
    objc_copyWeak(&v12, &location);
    v7 = _Block_copy(&v8);
    [v6 addObject:{v7, v8, v9, v10, v11}];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = TUPageViewController;
  [(TUPageViewController *)&v15 viewWillDisappear:?];
  v5 = [(TUPageViewController *)self visibleViewController];

  if (v5)
  {
    v6 = [(TUPageViewController *)self visibleViewController];
    [v6 beginAppearanceTransition:0 animated:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(TUPageViewController *)self replayViewTransitions];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__TUPageViewController_viewWillDisappear___block_invoke;
    v12 = &unk_1E84F3EC8;
    objc_copyWeak(&v13, &location);
    v8 = _Block_copy(&v9);
    [v7 addObject:{v8, v9, v10, v11, v12}];

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

- (void)viewDidDisappear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = TUPageViewController;
  [(TUPageViewController *)&v14 viewDidDisappear:a3];
  v4 = [(TUPageViewController *)self visibleViewController];

  if (v4)
  {
    v5 = [(TUPageViewController *)self visibleViewController];
    [v5 endAppearanceTransition];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(TUPageViewController *)self replayViewTransitions];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __41__TUPageViewController_viewDidDisappear___block_invoke;
    v11 = &unk_1E84F3EC8;
    objc_copyWeak(&v12, &location);
    v7 = _Block_copy(&v8);
    [v6 addObject:{v7, v8, v9, v10, v11}];

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
  v3 = [(TUPageViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TUPageViewController *)self visibleViewController];
  v13 = [v12 view];
  [v13 setLayoutMargins:{v5, v7, v9, v11}];
}

- (void)performWhenIdle:(id)a3
{
  v4 = a3;
  v5 = [(TUPageViewController *)self idleDispatchGroup];
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v4);
}

- (void)setVisibleViewController:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(TUPageViewController *)self visibleViewController];

  if (v6 != v5)
  {
    v7 = [(TUPageViewController *)self visibleViewController];
    v8 = [(TUPageViewController *)self visibleViewController];

    if (v8)
    {
      v9 = [(TUPageViewController *)self visibleViewController];
      [(TUPageViewController *)self removeViewController:v9];
    }

    [(TUPageViewController *)self addViewController:v5 fromScroll:0];
    objc_storeStrong(&self->_visibleViewController, a3);
    [(TUPageViewController *)self reindexViewControllers];
    v10 = [(TUPageViewController *)self replayViewTransitions];

    if (v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [(TUPageViewController *)self replayViewTransitions];
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v11);
            }

            (*(*(*(&v21 + 1) + 8 * v15++) + 16))();
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      [(TUPageViewController *)self setReplayViewTransitions:0];
    }

    else if ([(TUPageViewController *)self _appearState]== 2 && v7)
    {
      v16 = [(TUPageViewController *)self visibleViewController];
      [v16 beginAppearanceTransition:1 animated:0];

      v17 = [(TUPageViewController *)self visibleViewController];
      [v17 endAppearanceTransition];
    }

    [(TUPageViewController *)self updateContentOffset];
    v18 = [(TUPageViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(TUPageViewController *)self delegate];
      [v20 pageViewController:self didChangeVisibleViewControllerFromViewController:v7 direction:0];
    }
  }
}

- (void)setPageGutter:(double)a3
{
  self->_pageGutter = a3;
  v4 = [(TUPageViewController *)self scrollView];
  v5 = [(TUPageViewController *)self view];
  [v5 bounds];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:?];
  [v4 setFrame:?];

  [(TUPageViewController *)self updateScrollView];
}

- (CGSize)pageSize
{
  v3 = [(TUPageViewController *)self view];
  [v3 bounds];
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

- (void)setPagingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(TUPageViewController *)self scrollView];
  [v4 setScrollEnabled:v3];
}

- (BOOL)pagingEnabled
{
  v2 = [(TUPageViewController *)self scrollView];
  v3 = [v2 isScrollEnabled];

  return v3;
}

- (CGRect)calculateScrollViewFrameFromViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(TUPageViewController *)self nextViewController];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(TUPageViewController *)self previousViewController];

  if (v5)
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
  v13 = [(TUPageViewController *)self scrollView];
  [v13 setContentSize:{v10, v12}];

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)updateContentOffset
{
  v3 = [(TUPageViewController *)self visibleViewController];
  v4 = [v3 view];
  [v4 center];
  v6 = v5;
  v7 = [(TUPageViewController *)self visibleViewController];
  v8 = [v7 view];
  [v8 bounds];
  v9 = v6 - CGRectGetWidth(v14) * 0.5;
  [(TUPageViewController *)self pageGutter];
  v11 = v9 - v10 * 0.5;

  [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
  v12 = [(TUPageViewController *)self scrollView];
  [v12 setContentOffset:{v11, 0.0}];

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)setSecondaryVisibleViewController:(id)a3
{
  v5 = a3;
  secondaryVisibleViewController = self->_secondaryVisibleViewController;
  if (secondaryVisibleViewController != v5)
  {
    if ([(UIViewController *)secondaryVisibleViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_secondaryVisibleViewController view];
      [v7 setUserInteractionEnabled:1];
    }

    objc_storeStrong(&self->_secondaryVisibleViewController, a3);
  }

  MEMORY[0x1EEE66BB8]();
}

- (CGPoint)centerForIndex:(unint64_t)a3
{
  [(TUPageViewController *)self pageSize];
  v6 = v5;
  [(TUPageViewController *)self pageGutter];
  v8 = v7 * a3 + v6 * (a3 + 0.5);
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
  v3 = [(TUPageViewController *)self nextViewController];
  [(TUPageViewController *)self updatePositionForViewController:v3];

  v4 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self updatePositionForViewController:v4];

  v5 = [(TUPageViewController *)self previousViewController];
  [(TUPageViewController *)self updatePositionForViewController:v5];
}

- (void)managePreviousAndNextViewController
{
  v3 = [(TUPageViewController *)self managedForViewController];
  v4 = [(TUPageViewController *)self visibleViewController];

  if (v3 != v4)
  {
    v5 = [(TUPageViewController *)self previousViewController];

    if (!v5)
    {
      v6 = [(TUPageViewController *)self dataSource];
      v7 = [(TUPageViewController *)self visibleViewController];
      v8 = [v6 pageViewController:self viewControllerBeforeViewController:v7];
      [(TUPageViewController *)self setPreviousViewController:v8];
    }

    v9 = [(TUPageViewController *)self previousViewController];

    if (v9)
    {
      v10 = [(TUPageViewController *)self view];
      [v10 bounds];
      Width = CGRectGetWidth(v32);
      v12 = [(TUPageViewController *)self view];
      [v12 bounds];
      Height = CGRectGetHeight(v33);
      v14 = [(TUPageViewController *)self previousViewController];
      v15 = [v14 view];
      [v15 setBounds:{0.0, 0.0, Width, Height}];

      v16 = [(TUPageViewController *)self previousViewController];
      [(TUPageViewController *)self updatePositionForViewController:v16];
    }

    v17 = [(TUPageViewController *)self nextViewController];

    if (!v17)
    {
      v18 = [(TUPageViewController *)self dataSource];
      v19 = [(TUPageViewController *)self visibleViewController];
      v20 = [v18 pageViewController:self viewControllerAfterViewController:v19];
      [(TUPageViewController *)self setNextViewController:v20];
    }

    v21 = [(TUPageViewController *)self nextViewController];

    if (v21)
    {
      v22 = [(TUPageViewController *)self view];
      [v22 bounds];
      v23 = CGRectGetWidth(v34);
      v24 = [(TUPageViewController *)self view];
      [v24 bounds];
      v25 = CGRectGetHeight(v35);
      v26 = [(TUPageViewController *)self nextViewController];
      v27 = [v26 view];
      [v27 setBounds:{0.0, 0.0, v23, v25}];

      v28 = [(TUPageViewController *)self nextViewController];
      [(TUPageViewController *)self updatePositionForViewController:v28];
    }

    v29 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self updatePositionForViewController:v29];

    [(TUPageViewController *)self updateContentSize];
    v30 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setManagedForViewController:v30];
  }
}

- (void)updatePositionForViewController:(id)a3
{
  v13 = a3;
  v4 = [(TUPageViewController *)self visibleViewController];

  v5 = [(TUPageViewController *)self previousViewController];
  if (v4 == v13)
  {
    v7 = v5 != 0;
  }

  else
  {

    if (v5 == v13 || ([(TUPageViewController *)self nextViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v13))
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = [(TUPageViewController *)self previousViewController];
    if (v5)
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
  v12 = [v13 view];
  [v12 setCenter:{v9, v11}];
}

- (void)removeViewController:(id)a3
{
  v9 = a3;
  v4 = [(TUPageViewController *)self appearingViewController];

  if (v4 == v9)
  {
    [v9 beginAppearanceTransition:0 animated:0];
    [(TUPageViewController *)self setAppearingViewController:0];
  }

  [v9 endAppearanceTransition];
  [v9 willMoveToParentViewController:0];
  v5 = [v9 view];
  [v5 removeFromSuperview];

  [v9 removeFromParentViewController];
  v6 = [(TUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(TUPageViewController *)self delegate];
    [v8 pageViewController:self didHideViewController:v9];
  }
}

- (void)addViewController:(id)a3 fromScroll:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  v6 = [(TUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(TUPageViewController *)self delegate];
    v9 = [(TUPageViewController *)self visibleViewController];
    [v8 pageViewController:self willShowViewController:v29 previousViewController:v9 fromScroll:v4];
  }

  [(TUPageViewController *)self addChildViewController:v29];
  [(TUPageViewController *)self setAppearingViewController:v29];
  v10 = [(TUPageViewController *)self visibleViewController];
  [v10 beginAppearanceTransition:0 animated:0];

  v11 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setDisappearingViewController:v11];

  v12 = [(TUPageViewController *)self view];
  [v12 bounds];
  Width = CGRectGetWidth(v31);
  v14 = [(TUPageViewController *)self view];
  [v14 bounds];
  Height = CGRectGetHeight(v32);
  v16 = [v29 view];
  [v16 setBounds:{0.0, 0.0, Width, Height}];

  v17 = [(TUPageViewController *)self view];
  [v17 layoutMargins];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v29 view];
  [v26 setLayoutMargins:{v19, v21, v23, v25}];

  v27 = [(TUPageViewController *)self scrollView];
  v28 = [v29 view];
  [v27 addSubview:v28];

  [v29 didMoveToParentViewController:self];
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setOriginalVisibleViewController:v4];

  v5 = [(TUPageViewController *)self originalVisibleViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:0];

  [(TUPageViewController *)self handleScrollStart];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(TUPageViewController *)self handleScrollEnd];
  }
}

- (void)handleScrollStart
{
  if (![(TUPageViewController *)self scrollViewStartedScrolling])
  {
    v3 = [(TUPageViewController *)self idleDispatchGroup];
    dispatch_group_enter(v3);

    self->_scrollViewStartedScrolling = 1;
  }
}

- (void)handleScrollEnd
{
  if ([(TUPageViewController *)self scrollViewStartedScrolling])
  {
    v3 = [(TUPageViewController *)self idleDispatchGroup];
    dispatch_group_leave(v3);

    self->_scrollViewStartedScrolling = 0;
  }

  [(TUPageViewController *)self callLastViewAppearanceMethods];
}

- (void)callLastViewAppearanceMethods
{
  v3 = [(TUPageViewController *)self originalVisibleViewController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:1];

  if (![(TUPageViewController *)self scrollViewStartedScrolling])
  {
    v5 = [(TUPageViewController *)self visibleViewController];
    v6 = [(TUPageViewController *)self disappearingViewController];

    if (v5 == v6)
    {
      v7 = [(TUPageViewController *)self disappearingViewController];
      [v7 beginAppearanceTransition:1 animated:0];

      v8 = [(TUPageViewController *)self disappearingViewController];
      [v8 endAppearanceTransition];
    }

    v9 = [(TUPageViewController *)self visibleViewController];
    v10 = [(TUPageViewController *)self appearingViewController];

    if (v9 != v10)
    {
      v11 = [(TUPageViewController *)self appearingViewController];
      [v11 beginAppearanceTransition:0 animated:0];

      v12 = [(TUPageViewController *)self appearingViewController];
      [v12 endAppearanceTransition];
    }

    v13 = [(TUPageViewController *)self visibleViewController];
    v14 = [(TUPageViewController *)self appearingViewController];

    if (v13 == v14)
    {
      v15 = [(TUPageViewController *)self appearingViewController];
      [v15 endAppearanceTransition];
    }

    [(TUPageViewController *)self setAppearingViewController:0];

    [(TUPageViewController *)self setDisappearingViewController:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v102 = a3;
  if (![(TUPageViewController *)self cancelScrollViewDidScroll]&& ![(TUPageViewController *)self _shouldIgnoreDidScrollWithScrollView:v102])
  {
    [v102 contentOffset];
    v5 = v4;
    [v102 contentOffset];
    v7 = v6;
    v8 = [(TUPageViewController *)self visibleViewController];
    v9 = [v8 view];
    [v9 center];
    v11 = v10;
    [v102 bounds];
    v13 = v7 - (v11 + v12 * -0.5);

    if (v13 >= 0.0)
    {
      if (v13 <= 0.0)
      {
        v15 = 0;
        goto LABEL_9;
      }

      v14 = [(TUPageViewController *)self nextViewController];
    }

    else
    {
      v14 = [(TUPageViewController *)self previousViewController];
    }

    v15 = v14;
LABEL_9:
    v16 = [(TUPageViewController *)self secondaryVisibleViewController];

    if (!v16 && v15)
    {
      [(TUPageViewController *)self setSecondaryVisibleViewController:v15];
      [(TUPageViewController *)self addViewController:v15 fromScroll:1];
LABEL_15:
      v20 = [(TUPageViewController *)self secondaryVisibleViewController];
      [v20 beginAppearanceTransition:1 animated:0];

      goto LABEL_16;
    }

    v17 = [(TUPageViewController *)self secondaryVisibleViewController];

    if (v15)
    {
      if (v17 != v15)
      {
        v18 = [(TUPageViewController *)self secondaryVisibleViewController];
        [(TUPageViewController *)self removeViewController:v18];

        [(TUPageViewController *)self setSecondaryVisibleViewController:v15];
        v19 = [(TUPageViewController *)self secondaryVisibleViewController];
        [(TUPageViewController *)self addViewController:v19 fromScroll:1];

        goto LABEL_15;
      }
    }

    else if (v17)
    {
      v101 = [(TUPageViewController *)self secondaryVisibleViewController];
      [(TUPageViewController *)self removeViewController:v101];

      [(TUPageViewController *)self setSecondaryVisibleViewController:0];
    }

LABEL_16:
    v21 = [(TUPageViewController *)self secondaryVisibleViewController];
    v22 = [v21 view];
    [v22 setUserInteractionEnabled:0];

    v23 = [(TUPageViewController *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(TUPageViewController *)self view];
      v26 = [(TUPageViewController *)self visibleViewController];
      v27 = [v26 view];
      [v27 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [(TUPageViewController *)self visibleViewController];
      v37 = [v36 view];
      [v25 convertRect:v37 fromView:{v29, v31, v33, v35}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = [(TUPageViewController *)self view];
      [v46 bounds];
      v48 = v47;
      v49 = [(TUPageViewController *)self view];
      [v49 bounds];
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

      v52 = [(TUPageViewController *)self view];
      [v52 bounds];
      v54 = width / v53;

      v55 = [(TUPageViewController *)self delegate];
      v56 = [(TUPageViewController *)self visibleViewController];
      v57 = v13 <= 0.0 ? 1 : 2;
      [v55 pageViewController:self viewController:v56 changedVisibilityFactor:v57 scrollDirection:v54];

      v58 = [(TUPageViewController *)self secondaryVisibleViewController];

      if (v58)
      {
        v59 = [(TUPageViewController *)self secondaryVisibleViewController];
        v60 = [v59 view];
        [v60 frame];
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v69 = [(TUPageViewController *)self view];
        [v69 bounds];
        v71 = v70;
        v72 = [(TUPageViewController *)self view];
        [v72 bounds];
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

        v75 = [(TUPageViewController *)self view];
        [v75 bounds];
        v77 = v74 / v76;

        v78 = [(TUPageViewController *)self delegate];
        v79 = [(TUPageViewController *)self secondaryVisibleViewController];
        [v78 pageViewController:self viewController:v79 changedVisibilityFactor:v57 scrollDirection:v77];
      }
    }

    v80 = [(TUPageViewController *)self visibleViewController];
    v81 = [v80 view];
    [v81 center];
    v83 = v82;
    v84 = [(TUPageViewController *)self scrollView];
    [v84 bounds];
    v86 = v83 + v85 * -1.5;

    v87 = [(TUPageViewController *)self visibleViewController];
    v88 = [v87 view];
    [v88 center];
    v90 = v89;
    v91 = [(TUPageViewController *)self scrollView];
    [v91 bounds];
    v93 = v92;

    v94 = [(TUPageViewController *)self visibleViewController];
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

    v95 = [(TUPageViewController *)self delegate];
    v96 = objc_opt_respondsToSelector();

    if (v96)
    {
      v97 = [(TUPageViewController *)self secondaryVisibleViewController];

      if (v97)
      {
        v98 = [(TUPageViewController *)self delegate];
        v99 = [(TUPageViewController *)self secondaryVisibleViewController];
        if (v13 <= 0.0)
        {
          v100 = 1;
        }

        else
        {
          v100 = 2;
        }

        [v98 pageViewController:self viewController:v99 changedVisibilityFactor:v100 scrollDirection:1.0];
      }
    }

    [(TUPageViewController *)self removeViewController:v94];
    [(TUPageViewController *)self setSecondaryVisibleViewController:0];
    goto LABEL_33;
  }

LABEL_34:
}

- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)a3
{
  v4 = a3;
  if ([v4 isDragging])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isDecelerating];
  }

  v6 = [(TUPageViewController *)self _assistiveTechnologyIsRunning];
  v7 = [(TUPageViewController *)self visibleViewController];
  v8 = v7 == 0;

  if ((v5 & 1) == 0 && !v6 && ![(TUPageViewController *)self scrollViewStartedScrolling])
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
  v3 = [(TUPageViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;

  v6 = [(TUPageViewController *)self nextViewController];

  if (!v6)
  {
    return;
  }

  v7 = [(TUPageViewController *)self nextViewController];
  v37 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setNextViewController:0];
  v8 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setPreviousViewController:v8];

  visibleViewController = self->_visibleViewController;
  self->_visibleViewController = v7;
  v10 = v7;

  v11 = [(TUPageViewController *)self visibleViewController];
  [(TUPageViewController *)self setOriginalVisibleViewController:v11];

  v12 = [(TUPageViewController *)self originalVisibleViewController];
  v13 = [v12 view];
  [v13 setUserInteractionEnabled:0];

  v14 = [(TUPageViewController *)self delegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  if (v13)
  {
    v15 = [(TUPageViewController *)self delegate];
    [v15 pageViewController:self didChangeVisibleViewControllerFromViewController:v37 direction:2];
  }

  [(TUPageViewController *)self managePreviousAndNextViewController];
  v16 = [(TUPageViewController *)self scrollView];
  [v16 contentOffset];
  v18 = v17;

  [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
  v19 = [(TUPageViewController *)self nextViewController];

  if (!v19)
  {
    v31 = v5 * 0.5;
    v32 = v5 * 0.5 + v18;
    v33 = [(TUPageViewController *)self previousViewController];

    v34 = [(TUPageViewController *)self scrollView];
    [v34 contentOffset];
    v24 = v35;

    if (v33)
    {
      v30 = v32 - v31;
    }

    else
    {
      v30 = v32 - v5 - v31;
    }

    goto LABEL_11;
  }

  v20 = [(TUPageViewController *)self scrollView];
  [v20 contentOffset];
  v22 = v21;
  v24 = v23;

  v25 = [(TUPageViewController *)self scrollView];
  [v25 bounds];
  v27 = v26 + v26;

  if (v22 >= v27)
  {
    v28 = [(TUPageViewController *)self scrollView];
    [v28 bounds];
    v30 = v22 - v29;

LABEL_11:
    v36 = [(TUPageViewController *)self scrollView];
    [v36 setContentOffset:{v30, v24}];
  }

  [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (BOOL)canSwitchToPreviousViewController
{
  v2 = [(TUPageViewController *)self previousViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canSwitchToNextViewController
{
  v2 = [(TUPageViewController *)self nextViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_keyboardSwitchGoingRight:(BOOL)a3
{
  v3 = a3;
  if (![(TUPageViewController *)self scrollViewStartedScrolling]&& [(TUPageViewController *)self pagingEnabled])
  {
    v5 = [(TUPageViewController *)self canSwitchToNextViewController];
    v6 = [(TUPageViewController *)self canSwitchToPreviousViewController];
    if (v3 ? v5 : v6)
    {
      v8 = [(TUPageViewController *)self visibleViewController];
      [(TUPageViewController *)self setOriginalVisibleViewController:v8];

      v19 = [(TUPageViewController *)self scrollView];
      [v19 bounds];
      Width = CGRectGetWidth(v21);
      if (v3)
      {
        v10 = Width;
      }

      else
      {
        v10 = -Width;
      }

      [v19 contentOffset];
      v12 = fmax(v10 + v11, 0.0);
      [v19 contentSize];
      v14 = v13 - Width;
      if (v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [v19 contentOffset];
      v17 = v16;
      [(TUPageViewController *)self handleScrollStart];
      v18 = [(TUPageViewController *)self scrollView];
      [v18 setContentOffset:1 animated:{v15, v17}];
    }
  }
}

- (void)switchToPreviousViewController
{
  v3 = [(TUPageViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;

  v6 = [(TUPageViewController *)self scrollView];
  [v6 contentOffset];
  v8 = v7;

  v9 = [(TUPageViewController *)self previousViewController];

  if (v9)
  {
    v10 = [(TUPageViewController *)self previousViewController];
    v29 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setPreviousViewController:0];
    v11 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setNextViewController:v11];

    visibleViewController = self->_visibleViewController;
    self->_visibleViewController = v10;
    v13 = v10;

    v14 = [(TUPageViewController *)self visibleViewController];
    [(TUPageViewController *)self setOriginalVisibleViewController:v14];

    v15 = [(TUPageViewController *)self originalVisibleViewController];
    v16 = [v15 view];
    [v16 setUserInteractionEnabled:0];

    v17 = [(TUPageViewController *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v18 = [(TUPageViewController *)self delegate];
      [v18 pageViewController:self didChangeVisibleViewControllerFromViewController:v29 direction:1];
    }

    [(TUPageViewController *)self managePreviousAndNextViewController];
    [(TUPageViewController *)self setCancelScrollViewDidScroll:1];
    v19 = [(TUPageViewController *)self previousViewController];

    v20 = [(TUPageViewController *)self scrollView];
    [v20 contentOffset];
    v23 = v22;
    if (v19)
    {
      v24 = v21;

      v25 = [(TUPageViewController *)self scrollView];
      [v25 bounds];
      v27 = v24 + v26;
    }

    else
    {

      v27 = v5 * 0.5 + v8 - v5 * 0.5;
    }

    v28 = [(TUPageViewController *)self scrollView];
    [v28 setContentOffset:{v27, v23}];

    [(TUPageViewController *)self setCancelScrollViewDidScroll:0];
  }
}

- (void)accessibilityHandleRequestToGoBackForPageViewControllerScrollView:(id)a3
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

- (void)accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:(id)a3
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

- (void)transitionToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v31 = *MEMORY[0x1E69E9840];
  v6 = [(TUPageViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(TUPageViewController *)self scrollView];
  [(TUPageViewController *)self calculateScrollViewFrameFromViewBounds:v8, v10, width, height];
  [v11 setFrame:?];

  v12 = [(TUPageViewController *)self childViewControllers];
  v13 = [v12 count];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [(TUPageViewController *)self childViewControllers];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [v19 view];
          [v20 bounds];
          v22 = v21;
          v24 = v23;

          v25 = [v19 view];
          [v25 setBounds:{v22, v24, width, height}];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [(TUPageViewController *)self repositionPages];
  }

  [(TUPageViewController *)self updateScrollView];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v23.receiver = self;
  v23.super_class = TUPageViewController;
  v7 = a4;
  [(TUPageViewController *)&v23 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(TUPageViewController *)self scrollView];
  if ([v8 isDecelerating])
  {

LABEL_4:
    v11 = [(TUPageViewController *)self visibleViewController];
    v12 = [v11 view];
    [v12 center];
    v14 = v13;
    v15 = [(TUPageViewController *)self visibleViewController];
    v16 = [v15 view];
    [v16 bounds];
    v17 = v14 - CGRectGetWidth(v24) * 0.5;
    [(TUPageViewController *)self pageGutter];
    v19 = v17 - v18 * 0.5;

    v20 = [(TUPageViewController *)self scrollView];
    [v20 setContentOffset:0 animated:{v19, 0.0}];

    goto LABEL_5;
  }

  v9 = [(TUPageViewController *)self scrollView];
  v10 = [v9 isDragging];

  if (v10)
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
  [v7 animateAlongsideTransition:v21 completion:0];
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