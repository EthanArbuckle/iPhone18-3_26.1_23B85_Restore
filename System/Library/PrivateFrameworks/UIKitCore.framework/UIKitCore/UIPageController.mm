@interface UIPageController
- (BOOL)_allowsAutorotation;
- (BOOL)_doesVisibleViewControllerSupportInterfaceOrientation:(int64_t)orientation;
- (BOOL)_hasNextViewController;
- (BOOL)_hasPreviousViewController;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)_isViewControllerBeingUnloaded:(id)unloaded atIndex:(int64_t)index;
- (BOOL)_shouldUseOnePartRotation;
- (CGRect)_scrollViewFrame;
- (UIViewController)visibleViewController;
- (id)_loadNextViewController;
- (id)_loadPreviousViewController;
- (id)_loadVisibleViewControllerAndNotify:(BOOL)notify;
- (id)_nextViewController;
- (id)_pageControllerScrollView;
- (id)_previousViewController;
- (id)_visibleViewController;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (int64_t)indexOfViewController:(id)controller;
- (void)_adjustScrollViewContentInsets;
- (void)_createPageControl;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_notifyNextViewController:(int)controller animated:(BOOL)animated;
- (void)_notifyPreviousViewController:(int)controller animated:(BOOL)animated;
- (void)_notifyViewController:(id)controller ofState:(int)state previousState:(int)previousState animated:(BOOL)animated;
- (void)_notifyVisibleViewController:(int)controller animated:(BOOL)animated;
- (void)_pageChanged:(id)changed;
- (void)_replaceViewControllerAtIndex:(int64_t)index withViewController:(id)controller;
- (void)_scrollView:(id)view boundsDidChangeToSize:(CGSize)size;
- (void)_scrollViewDidEndPaging;
- (void)_scrollViewDidScroll:(id)scroll forceUpdate:(BOOL)update;
- (void)_scrollViewWillBeginPaging;
- (void)dealloc;
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)reloadViewControllerAtIndex:(int64_t)index;
- (void)setDelegate:(id)delegate;
- (void)setDisplaysPageControl:(BOOL)control;
- (void)setPageCount:(int64_t)count;
- (void)setPageSpacing:(double)spacing;
- (void)setVisibleIndex:(int64_t)index preservingLoadedViewControllers:(BOOL)controllers animated:(BOOL)animated;
- (void)setWraps:(BOOL)wraps;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation UIPageController

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];

  self->_viewControllers = 0;
  v3 = 0;
  self->_scrollView = 0;
  wrapperViews = self->_wrapperViews;
  do
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(UIView *)wrapperViews[v3] subviews];
    v6 = [(NSArray *)subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v11 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [(NSArray *)subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    wrapperViews[v3++] = 0;
  }

  while (v3 != 3);
  v10.receiver = self;
  v10.super_class = UIPageController;
  [(UIViewController *)&v10 dealloc];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = UIPageController;
  [(UIViewController *)&v17 loadView];
  *&self->super._viewControllerFlags &= ~0x80000uLL;
  if (!self->_viewControllers)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    self->_viewControllers = v3;
    [(NSMutableArray *)v3 addObject:@"UnloadedViewController"];
    [(NSMutableArray *)self->_viewControllers addObject:@"UnloadedViewController"];
    [(NSMutableArray *)self->_viewControllers addObject:@"UnloadedViewController"];
  }

  _pageControllerScrollViewClass = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    _pageControllerScrollViewClass = [(UIPageControllerDelegate *)self->_delegate _pageControllerScrollViewClass];
  }

  v5 = [_pageControllerScrollViewClass alloc];
  [(UIPageController *)self _scrollViewFrame];
  v6 = [v5 initWithFrame:?];
  [(UIView *)v6 setAutoresizingMask:18];
  [(UIScrollView *)v6 setPagingEnabled:1];
  [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v6 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v6 setPageController:self];
  [(UIScrollView *)v6 setAlwaysBounceHorizontal:1];
  v7 = 0;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  do
  {
    v12 = [[UIView alloc] initWithFrame:v8, v9, v10, v11];
    self->_wrapperViews[v7] = v12;
    [(UIView *)v6 addSubview:v12];
    ++v7;
  }

  while (v7 != 3);
  [[(UIViewController *)self view] addSubview:v6];
  [(UIView *)v6 bounds];
  [(UIPageController *)self _scrollView:v6 boundsDidChangeToSize:v13, v14];
  self->_scrollView = v6;
  [(UIPageController *)self _createPageControl];
  [(UIView *)v6 bounds];
  [(UIPageController *)self _scrollView:v6 boundsDidChangeToSize:v15, v16];
}

- (void)viewDidUnload
{
  v16 = *MEMORY[0x1E69E9840];

  v3 = 0;
  self->_scrollView = 0;
  wrapperViews = self->_wrapperViews;
  do
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(UIView *)wrapperViews[v3] subviews];
    v6 = [(NSArray *)subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v11 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [(NSArray *)subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    wrapperViews[v3++] = 0;
  }

  while (v3 != 3);
  v10.receiver = self;
  v10.super_class = UIPageController;
  [(UIViewController *)&v10 viewDidUnload];
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    *&self->_pageControllerFlags = *&self->_pageControllerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_pageControllerFlags = *&self->_pageControllerFlags & 0xFD | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_pageControllerFlags = *&self->_pageControllerFlags & 0xFB | v5;
  }
}

- (void)setPageSpacing:(double)spacing
{
  if (self->_pageSpacing != spacing)
  {
    self->_pageSpacing = spacing;
    if ([(UIViewController *)self _existingView])
    {
      scrollView = self->_scrollView;
      if (scrollView)
      {
        [(UIPageController *)self _scrollViewFrame];

        [(UIScrollView *)scrollView setFrame:?];
      }
    }
  }
}

- (BOOL)_isViewControllerBeingUnloaded:(id)unloaded atIndex:(int64_t)index
{
  if (!unloaded)
  {
    return 0;
  }

  null = [MEMORY[0x1E695DFB0] null];
  result = 0;
  if (unloaded != @"UnloadedViewController" && null != unloaded)
  {
    v9 = 0;
    do
    {
      result = index == v9 || [(NSMutableArray *)self->_viewControllers objectAtIndex:v9]!= unloaded;
      if (v9 > 1)
      {
        break;
      }

      ++v9;
    }

    while (result);
  }

  return result;
}

- (void)_replaceViewControllerAtIndex:(int64_t)index withViewController:(id)controller
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->_viewControllers objectAtIndex:?];
  viewControllers = self->_viewControllers;
  controllerCopy = controller;
  if (!controller)
  {
    controllerCopy = [MEMORY[0x1E695DFB0] null];
  }

  [(NSMutableArray *)viewControllers replaceObjectAtIndex:index withObject:controllerCopy];
  v10 = [(UIPageController *)self _isViewControllerBeingUnloaded:v7 atIndex:index];
  if (v10)
  {
    [v7 willMoveToParentViewController:0];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  wrapperViews = self->_wrapperViews;
  subviews = [(UIView *)self->_wrapperViews[index] subviews];
  v13 = [(NSArray *)subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v18 + 1) + 8 * v16++) removeFromSuperview];
      }

      while (v14 != v16);
      v14 = [(NSArray *)subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  if (v10)
  {
    [v7 removeFromParentViewController];
  }

  if (controller != @"UnloadedViewController" && controller)
  {
    view = [controller view];
    [(UIView *)wrapperViews[index] bounds];
    [view setFrame:?];
    [(UIView *)wrapperViews[index] addSubview:view];
  }

  [(UIPageController *)self _adjustScrollViewContentInsets];
}

- (id)_loadPreviousViewController
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];
  if (!_visibleViewController)
  {
    goto LABEL_26;
  }

  v4 = _visibleViewController;
  pageCount = self->_pageCount;
  if (!pageCount)
  {
    if (*&self->_pageControllerFlags)
    {
      goto LABEL_26;
    }

LABEL_13:
    v11 = [(UIPageControllerDelegate *)self->_delegate pageController:self viewControllerLeftOfController:_visibleViewController];
    goto LABEL_23;
  }

  visibleIndex = self->_visibleIndex;
  pageControllerFlags = self->_pageControllerFlags;
  if (visibleIndex <= 0 && (pageCount < 3 || (pageControllerFlags & 0x10) == 0))
  {
    goto LABEL_26;
  }

  if ((*&self->_pageControllerFlags & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = (pageCount - 1);
  if (pageCount < 1)
  {
LABEL_26:
    [(UIPageController *)self _setPreviousViewController:0, v4];
    return 0;
  }

  if (visibleIndex < 1)
  {
    if (visibleIndex)
    {
      v12 = 0;
    }

    else
    {
      v12 = pageCount >= 3;
    }

    if (!v12 || (pageControllerFlags & 0x10) == 0)
    {
      goto LABEL_26;
    }

    delegate = self->_delegate;
    selfCopy2 = self;
  }

  else
  {
    delegate = self->_delegate;
    selfCopy2 = self;
    v4 = (visibleIndex - 1);
  }

  v11 = [(UIPageControllerDelegate *)delegate pageController:selfCopy2 viewControllerAtIndex:v4];
LABEL_23:
  v14 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  [(UIViewController *)self addChildViewController:v11];
  [(UIPageController *)self _setPreviousViewController:v14];
  if (v14 == @"UnloadedViewController")
  {
    return @"UnloadedViewController";
  }

  [(__CFString *)v14 didMoveToParentViewController:self];
  return v14;
}

- (id)_loadVisibleViewControllerAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  if (*&self->_pageControllerFlags)
  {
    if (self->_pageCount < 1)
    {
      goto LABEL_10;
    }

    v6 = [(UIPageControllerDelegate *)self->_delegate pageController:self viewControllerAtIndex:self->_visibleIndex];
  }

  else
  {
    v5 = [(UIPageControllerDelegate *)self->_delegate pageController:self viewControllerLeftOfController:0];
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = [(UIPageControllerDelegate *)self->_delegate pageController:self viewControllerRightOfController:0];
  }

  v5 = v6;
  if (!v6)
  {
LABEL_10:
    [(UIPageController *)self _setVisibleViewController:0];
    v5 = 0;
    if (!notifyCopy)
    {
      return v5;
    }

    goto LABEL_13;
  }

LABEL_7:
  [(UIViewController *)self addChildViewController:v5];
  [(UIPageController *)self _setVisibleViewController:v5];
  if (v5 == @"UnloadedViewController")
  {
    v5 = @"UnloadedViewController";
    if (!notifyCopy)
    {
      return v5;
    }
  }

  else
  {
    [(__CFString *)v5 didMoveToParentViewController:self];
    if (!notifyCopy)
    {
      return v5;
    }
  }

LABEL_13:
  if ((*&self->super._viewControllerFlags & 3u) - 1 <= 1)
  {
    [(UIPageController *)self _notifyVisibleViewController:1 animated:0];
    [(UIPageController *)self _notifyVisibleViewController:2 animated:0];
  }

  return v5;
}

- (id)_loadNextViewController
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];
  if (!_visibleViewController)
  {
    goto LABEL_26;
  }

  pageCount = self->_pageCount;
  if (!pageCount)
  {
    if (*&self->_pageControllerFlags)
    {
      goto LABEL_26;
    }

LABEL_13:
    v12 = [(UIPageControllerDelegate *)self->_delegate pageController:self viewControllerRightOfController:_visibleViewController];
    goto LABEL_23;
  }

  visibleIndex = self->_visibleIndex;
  v6 = pageCount - 1;
  pageControllerFlags = self->_pageControllerFlags;
  if (visibleIndex >= pageCount - 1 && (pageCount < 3 || (pageControllerFlags & 0x10) == 0))
  {
    goto LABEL_26;
  }

  if ((*&self->_pageControllerFlags & 1) == 0)
  {
    goto LABEL_13;
  }

  if (pageCount < 1)
  {
LABEL_26:
    [(UIPageController *)self _setNextViewController:0];
    return 0;
  }

  if (visibleIndex >= v6)
  {
    if (visibleIndex != v6 || pageCount < 3 || (pageControllerFlags & 0x10) == 0)
    {
      goto LABEL_26;
    }

    delegate = self->_delegate;
    selfCopy2 = self;
    v10 = 0;
  }

  else
  {
    delegate = self->_delegate;
    v10 = visibleIndex + 1;
    selfCopy2 = self;
  }

  v12 = [(UIPageControllerDelegate *)delegate pageController:selfCopy2 viewControllerAtIndex:v10];
LABEL_23:
  v15 = v12;
  if (!v12)
  {
    goto LABEL_26;
  }

  [(UIViewController *)self addChildViewController:v12];
  [(UIPageController *)self _setNextViewController:v15];
  if (v15 == @"UnloadedViewController")
  {
    return @"UnloadedViewController";
  }

  [(__CFString *)v15 didMoveToParentViewController:self];
  return v15;
}

- (id)_previousViewController
{
  _loadPreviousViewController = [(NSMutableArray *)self->_viewControllers objectAtIndex:0];
  if (_loadPreviousViewController == @"UnloadedViewController")
  {
    _loadPreviousViewController = [(UIPageController *)self _loadPreviousViewController];
  }

  if (_loadPreviousViewController == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  else
  {
    return _loadPreviousViewController;
  }
}

- (id)_visibleViewController
{
  v3 = [(NSMutableArray *)self->_viewControllers objectAtIndex:1];
  if (v3 == @"UnloadedViewController")
  {
    v3 = [(UIPageController *)self _loadVisibleViewControllerAndNotify:0];
  }

  if (v3 == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (id)_nextViewController
{
  _loadNextViewController = [(NSMutableArray *)self->_viewControllers objectAtIndex:2];
  if (_loadNextViewController == @"UnloadedViewController")
  {
    _loadNextViewController = [(UIPageController *)self _loadNextViewController];
  }

  if (_loadNextViewController == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  else
  {
    return _loadNextViewController;
  }
}

- (BOOL)_hasPreviousViewController
{
  pageCount = self->_pageCount;
  if (!pageCount)
  {
    return [(UIPageController *)self _previousViewController:v2]!= 0;
  }

  if (self->_visibleIndex > 0)
  {
    return 1;
  }

  if (pageCount > 2)
  {
    return (*&self->_pageControllerFlags & 0x10) != 0;
  }

  return 0;
}

- (BOOL)_hasNextViewController
{
  pageCount = self->_pageCount;
  if (!pageCount)
  {
    return [(UIPageController *)self _nextViewController:v2]!= 0;
  }

  if (self->_visibleIndex < pageCount - 1)
  {
    return 1;
  }

  if (pageCount > 2)
  {
    return (*&self->_pageControllerFlags & 0x10) != 0;
  }

  return 0;
}

- (UIViewController)visibleViewController
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  return _visibleViewController;
}

- (void)_notifyViewController:(id)controller ofState:(int)state previousState:(int)previousState animated:(BOOL)animated
{
  if (state != previousState)
  {
    animatedCopy = animated;
    if (state > 2)
    {
      if (state == 3)
      {
        if (previousState == 1)
        {
          [(UIPageController *)self _notifyViewController:controller ofState:2 previousState:*&previousState animated:animated];
        }

        [(UIViewController *)controller __viewWillDisappear:animatedCopy];
      }

      else if (state == 4)
      {
        if (previousState != 3)
        {
          [(UIPageController *)self _notifyViewController:controller ofState:3 previousState:*&previousState animated:animated];
        }

        [(UIViewController *)controller __viewDidDisappear:animatedCopy];
      }
    }

    else if (state == 1)
    {
      if (previousState == 3)
      {
        [(UIPageController *)self _notifyViewController:controller ofState:4 previousState:*&previousState animated:animated];
      }

      [controller __viewWillAppear:animatedCopy];
    }

    else if (state == 2)
    {
      if (previousState != 1)
      {
        [(UIPageController *)self _notifyViewController:controller ofState:1 previousState:*&previousState animated:animated];
      }

      [controller __viewDidAppear:animatedCopy];
    }
  }
}

- (void)_notifyPreviousViewController:(int)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&controller;
  if ([(UIPageController *)self _previousViewController])
  {
    [(UIPageController *)self _notifyViewController:[(UIPageController *)self _previousViewController] ofState:v5 previousState:[(UIPageController *)self _previousViewControllerNotificationState] animated:animatedCopy];
    self->_notificationState[0] = v5;
  }
}

- (void)_notifyVisibleViewController:(int)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&controller;
  if ([(UIPageController *)self _visibleViewController])
  {
    [(UIPageController *)self _notifyViewController:[(UIPageController *)self _visibleViewController] ofState:v5 previousState:[(UIPageController *)self _visibleViewControllerNotificationState] animated:animatedCopy];
    self->_notificationState[1] = v5;
  }
}

- (void)_notifyNextViewController:(int)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = *&controller;
  if ([(UIPageController *)self _nextViewController])
  {
    [(UIPageController *)self _notifyViewController:[(UIPageController *)self _nextViewController] ofState:v5 previousState:[(UIPageController *)self _nextViewControllerNotificationState] animated:animatedCopy];
    self->_notificationState[2] = v5;
  }
}

- (void)_scrollViewWillBeginPaging
{
  if ((*&self->_pageControllerFlags & 6) != 0)
  {
    if ((*&self->_pageControllerFlags & 2) != 0)
    {
      delegate = self->_delegate;

      [(UIPageControllerDelegate *)delegate pageControllerWillBeginPaging:self];
    }
  }

  else
  {
    wrapperViews = self->_wrapperViews;
    [(UIView *)self->_wrapperViews[0] setUserInteractionEnabled:0];
    [(UIView *)wrapperViews[1] setUserInteractionEnabled:0];
    v5 = wrapperViews[2];

    [(UIView *)v5 setUserInteractionEnabled:0];
  }
}

- (void)_scrollViewDidEndPaging
{
  if ((*&self->_pageControllerFlags & 6) != 0)
  {
    if ((*&self->_pageControllerFlags & 4) != 0)
    {
      [(UIPageControllerDelegate *)self->_delegate pageControllerDidEndPaging:self];
    }
  }

  else
  {
    [(UIView *)self->_wrapperViews[0] setUserInteractionEnabled:1];
    [(UIView *)self->_wrapperViews[1] setUserInteractionEnabled:1];
    [(UIView *)self->_wrapperViews[2] setUserInteractionEnabled:1];
  }

  if ([(UIPageController *)self _previousViewControllerNotificationState])
  {
    [(UIPageController *)self _notifyPreviousViewController:4 animated:1];
  }

  else if ([(UIPageController *)self _nextViewControllerNotificationState])
  {
    [(UIPageController *)self _notifyNextViewController:4 animated:1];
  }

  [(UIPageController *)self _notifyVisibleViewController:2 animated:1];
}

- (void)_adjustScrollViewContentInsets
{
  _scrollView = [(UIPageController *)self _scrollView];
  [_scrollView bounds];
  v5 = v4;
  _hasPreviousViewController = [(UIPageController *)self _hasPreviousViewController];
  _hasNextViewController = [(UIPageController *)self _hasNextViewController];
  pageCount = self->_pageCount;
  if (pageCount)
  {
    visibleIndex = self->_visibleIndex;
    v10 = fmax(v5 * visibleIndex, 0.0);
    v11 = fmax(v5 * (pageCount + ~visibleIndex), 0.0);
  }

  else
  {
    v10 = v5 * 100.0;
    v11 = v5 * 100.0;
  }

  v12 = -v5;
  if (_hasPreviousViewController)
  {
    v13 = v10;
  }

  else
  {
    v13 = -v5;
  }

  if (_hasNextViewController)
  {
    v12 = v11;
  }

  [_scrollView setContentInset:{0.0, v13, 0.0, v12}];
}

- (void)_scrollView:(id)view boundsDidChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [view setContentSize:size.width * 3.0];
  [view setContentOffset:{width, 0.0}];
  [(UIView *)self->_wrapperViews[0] setFrame:self->_pageSpacing, 0.0, width - (2 * self->_pageSpacing), height];
  [(UIView *)self->_wrapperViews[1] setFrame:width + self->_pageSpacing, 0.0, width - (2 * self->_pageSpacing), height];
  [(UIView *)self->_wrapperViews[2] setFrame:width + width + self->_pageSpacing, 0.0, width - (2 * self->_pageSpacing), height];

  [(UIPageController *)self _adjustScrollViewContentInsets];
}

- (void)_scrollViewDidScroll:(id)scroll forceUpdate:(BOOL)update
{
  if (!update && (([scroll isTracking] & 1) == 0 && (objc_msgSend(scroll, "isDecelerating") & 1) == 0 && !objc_msgSend(scroll, "isScrollAnimating") || (objc_msgSend(scroll, "_isHorizontalBouncing") & 1) != 0))
  {
    return;
  }

  [scroll bounds];
  v7 = v6;
  v9 = v8;
  _hasPreviousViewController = [(UIPageController *)self _hasPreviousViewController];
  _hasNextViewController = [(UIPageController *)self _hasNextViewController];
  v12 = v7 > v9 && _hasNextViewController;
  if (_hasPreviousViewController && v7 < v9 && [(UIPageController *)self _previousViewControllerNotificationState]!= 1)
  {
    if ([(UIPageController *)self _nextViewControllerNotificationState])
    {
      [(UIPageController *)self _notifyNextViewController:4 animated:1];
    }

    [(UIPageController *)self _notifyPreviousViewController:1 animated:1];
  }

  else
  {
    if (!v12 || [(UIPageController *)self _nextViewControllerNotificationState]== 1)
    {
      goto LABEL_21;
    }

    if ([(UIPageController *)self _previousViewControllerNotificationState])
    {
      [(UIPageController *)self _notifyPreviousViewController:4 animated:1];
    }

    [(UIPageController *)self _notifyNextViewController:1 animated:1];
  }

  [(UIPageController *)self _notifyVisibleViewController:3 animated:1];
LABEL_21:
  _previousViewController = [(UIPageController *)self _previousViewController];
  _nextViewController = [(UIPageController *)self _nextViewController];
  if (_previousViewController && v7 <= 0.0)
  {
    [(UIPageController *)self _setNextViewController:[(UIPageController *)self _visibleViewController]];
    [(UIPageController *)self _setNextViewControllerNotificationState:[(UIPageController *)self _visibleViewControllerNotificationState]];
    [(UIPageController *)self _setVisibleViewController:[(UIPageController *)self _previousViewController]];
    [(UIPageController *)self _setVisibleViewControllerNotificationState:[(UIPageController *)self _previousViewControllerNotificationState]];
    [(UIPageController *)self _setPreviousViewController:@"UnloadedViewController"];
    [(UIPageController *)self _setPreviousViewControllerNotificationState:0];
    [scroll setContentOffset:{v7 + v9, 0.0}];
    visibleIndex = self->_visibleIndex;
    if ((*&self->_pageControllerFlags & 0x10) != 0)
    {
      if (visibleIndex <= 0)
      {
        visibleIndex = self->_pageCount;
      }
    }

    else if (visibleIndex <= 1)
    {
      visibleIndex = 1;
    }

    self->_visibleIndex = visibleIndex - 1;
    [(UIPageControl *)self->_pageControl setCurrentPage:?];
    [(UIPageController *)self _loadPreviousViewController];
  }

  else
  {
    if (!_nextViewController || v7 < v9 + v9)
    {
      return;
    }

    [(UIPageController *)self _setPreviousViewController:[(UIPageController *)self _visibleViewController]];
    [(UIPageController *)self _setPreviousViewControllerNotificationState:[(UIPageController *)self _visibleViewControllerNotificationState]];
    [(UIPageController *)self _setVisibleViewController:[(UIPageController *)self _nextViewController]];
    [(UIPageController *)self _setVisibleViewControllerNotificationState:[(UIPageController *)self _nextViewControllerNotificationState]];
    [(UIPageController *)self _setNextViewController:@"UnloadedViewController"];
    [(UIPageController *)self _setNextViewControllerNotificationState:0];
    [scroll setContentOffset:{v7 - v9, 0.0}];
    if ((*&self->_pageControllerFlags & 0x10) != 0)
    {
      v18 = self->_visibleIndex;
      if (v18 < self->_pageCount - 1)
      {
        v19 = v18 + 1;
      }

      else
      {
        v19 = 0;
      }

      self->_visibleIndex = v19;
    }

    else
    {
      v16 = self->_visibleIndex;
      if (self->_pageCount - 1 >= v16 + 1)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = self->_pageCount - 1;
      }

      self->_visibleIndex = v17;
    }

    [(UIPageControl *)self->_pageControl setCurrentPage:?];
    [(UIPageController *)self _loadNextViewController];
  }

  [(UIPageController *)self _adjustScrollViewContentInsets];
}

- (CGRect)_scrollViewFrame
{
  [[(UIViewController *)self view] bounds];
  pageSpacing = self->_pageSpacing;
  v7 = v6 - pageSpacing;
  v9 = v8 + (2 * pageSpacing);
  result.size.height = v4;
  result.size.width = v9;
  result.origin.y = v3;
  result.origin.x = v7;
  return result;
}

- (void)setPageCount:(int64_t)count
{
  pageCount = self->_pageCount;
  self->_pageCount = count;
  if (count && pageCount)
  {
    p_visibleIndex = &self->_visibleIndex;
    visibleIndex = self->_visibleIndex;
    if (pageCount < count && visibleIndex == pageCount - 1)
    {
      goto LABEL_11;
    }

    if (visibleIndex < count - 1)
    {
      return;
    }

    [(UIPageController *)self setVisibleIndex:?];
  }

  else
  {
    [(UIPageController *)self setVisibleIndex:0];
    p_visibleIndex = &self->_visibleIndex;
    [(UIPageController *)self reloadViewControllerAtIndex:self->_visibleIndex - 1];
    [(UIPageController *)self reloadViewControllerAtIndex:self->_visibleIndex];
  }

  visibleIndex = *p_visibleIndex;
LABEL_11:

  [(UIPageController *)self reloadViewControllerAtIndex:visibleIndex + 1];
}

- (void)setWraps:(BOOL)wraps
{
  pageControllerFlags = self->_pageControllerFlags;
  if (((((pageControllerFlags & 0x10) == 0) ^ wraps) & 1) == 0)
  {
    v5 = wraps ? 16 : 0;
    *&self->_pageControllerFlags = pageControllerFlags & 0xEF | v5;
    if (wraps)
    {
      if (![(UIPageController *)self _needToLoadPrevious])
      {
        _previousViewController = [(UIPageController *)self _previousViewController];
        if (_previousViewController == [MEMORY[0x1E695DFB0] null])
        {
          [(UIPageController *)self _setPreviousViewController:@"UnloadedViewController"];
        }
      }

      if (![(UIPageController *)self _needToLoadNext])
      {
        _nextViewController = [(UIPageController *)self _nextViewController];
        if (_nextViewController == [MEMORY[0x1E695DFB0] null])
        {

          [(UIPageController *)self _setNextViewController:@"UnloadedViewController"];
        }
      }
    }
  }
}

- (void)_pageChanged:(id)changed
{
  currentPage = [changed currentPage];

  [(UIPageController *)self setVisibleIndex:currentPage animated:1];
}

- (void)_createPageControl
{
  if ((*&self->_pageControllerFlags & 8) != 0)
  {
    [(UIView *)self->_scrollView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    self->_pageControl = objc_alloc_init(UIPageControl);
    [[(UIViewController *)self view] addSubview:self->_pageControl];
    [(UIControl *)self->_pageControl addTarget:self action:sel__pageChanged_ forControlEvents:4096];
    [(UIPageControl *)self->_pageControl setNumberOfPages:self->_pageCount];
    [(UIPageControl *)self->_pageControl setCurrentPage:self->_visibleIndex];
    [(UIView *)self->_pageControl sizeToFit];
    [(UIView *)self->_pageControl frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    pageControl = self->_pageControl;
    [[(UIViewController *)self view] bounds];
    [(UIView *)pageControl setFrame:v13, CGRectGetMaxY(v22) - v17, v15, v17];
    [(UIView *)self->_pageControl setAutoresizingMask:10];
    [(UIView *)self->_pageControl frame];
    scrollView = self->_scrollView;
    v21 = v11 - v20;

    [(UIScrollView *)scrollView setFrame:v5, v7, v9, v21];
  }
}

- (void)setDisplaysPageControl:(BOOL)control
{
  pageControllerFlags = self->_pageControllerFlags;
  if (((((pageControllerFlags & 8) == 0) ^ control) & 1) == 0)
  {
    if (control)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *&self->_pageControllerFlags = pageControllerFlags & 0xF7 | v5;
    if (control && [(UIViewController *)self _existingView])
    {

      [(UIPageController *)self _createPageControl];
    }

    else
    {
      [(UIView *)self->_pageControl removeFromSuperview];

      self->_pageControl = 0;
    }
  }
}

- (int64_t)indexOfViewController:(id)controller
{
  v4 = [(NSMutableArray *)self->_viewControllers indexOfObject:controller];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  pageCount = self->_pageCount;
  result = v4 + self->_visibleIndex - 1;
  if (result < 0)
  {
    result += pageCount;
  }

  else if (result >= pageCount)
  {
    result %= pageCount;
  }

  return result;
}

- (BOOL)_allowsAutorotation
{
  v5.receiver = self;
  v5.super_class = UIPageController;
  _allowsAutorotation = [(UIViewController *)&v5 _allowsAutorotation];
  if ([(UIPageController *)self _visibleViewController])
  {
    _allowsAutorotation &= [-[UIPageController _visibleViewController](self "_visibleViewController")];
  }

  return _allowsAutorotation;
}

- (BOOL)_doesVisibleViewControllerSupportInterfaceOrientation:(int64_t)orientation
{
  if (![(UIPageController *)self _visibleViewController])
  {
    return 1;
  }

  _visibleViewController = [(UIPageController *)self _visibleViewController];

  return [_visibleViewController _isSupportedInterfaceOrientation:orientation];
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {

    return [(UIPageController *)self shouldAutorotateToInterfaceOrientation:orientation];
  }

  else
  {

    return [(UIPageController *)self _doesVisibleViewControllerSupportInterfaceOrientation:orientation];
  }
}

- (id)rotatingHeaderView
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  return [_visibleViewController rotatingHeaderView];
}

- (id)rotatingFooterView
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  return [_visibleViewController rotatingFooterView];
}

- (BOOL)_shouldUseOnePartRotation
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  return [_visibleViewController _shouldUseOnePartRotation];
}

- (void)_getRotationContentSettings:(id *)settings
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController _getRotationContentSettings:settings];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController willAnimateFirstHalfOfRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController didAnimateFirstHalfOfRotationToInterfaceOrientation:orientation];
}

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController willAnimateSecondHalfOfRotationFromInterfaceOrientation:orientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  _visibleViewController = [(UIPageController *)self _visibleViewController];

  [_visibleViewController didRotateFromInterfaceOrientation:orientation];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = UIPageController;
  [(UIViewController *)&v5 viewWillAppear:?];
  [(UIPageController *)self _notifyVisibleViewController:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = UIPageController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(UIPageController *)self _notifyVisibleViewController:2 animated:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = UIPageController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(UIPageController *)self _notifyVisibleViewController:3 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = UIPageController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(UIPageController *)self _notifyVisibleViewController:4 animated:disappearCopy];
}

- (void)setVisibleIndex:(int64_t)index preservingLoadedViewControllers:(BOOL)controllers animated:(BOOL)animated
{
  controllersCopy = controllers;
  pageCount = self->_pageCount;
  if (pageCount <= 1)
  {
    pageCount = 1;
  }

  v8 = pageCount - 1;
  if (v8 >= (index & ~(index >> 63)))
  {
    v9 = index & ~(index >> 63);
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 - self->_visibleIndex;
  if (v10 || !controllers)
  {
    if (animated)
    {
      v11 = v10;
      [(UIView *)self->_scrollView bounds];
      v13 = v12 * v11;
      scrollView = self->_scrollView;
      [(UIScrollView *)scrollView contentOffset];
      v16 = v15 + v13;
      [(UIScrollView *)self->_scrollView contentOffset];

      [(UIScrollView *)scrollView setContentOffset:1 animated:v16];
      return;
    }

    v17 = (*&self->super._viewControllerFlags & 3) - 1;
    if (v17 <= 1 && ![(UIPageController *)self _needToLoadVisible]&& [(UIPageController *)self _hasVisibleViewController])
    {
      [(UIPageController *)self _notifyVisibleViewController:3 animated:0];
    }

    if (!controllersCopy)
    {
      goto LABEL_78;
    }

    visibleIndex = self->_visibleIndex;
    if (v9 == visibleIndex + 1)
    {
      if (v17 <= 1 && ![(UIPageController *)self _needToLoadNext]&& [(UIPageController *)self _hasNextViewController])
      {
        [(UIPageController *)self _notifyNextViewController:1 animated:0];
      }

      if ([(UIPageController *)self _needToLoadVisible])
      {
        _visibleViewController = @"UnloadedViewController";
      }

      else
      {
        _visibleViewController = [(UIPageController *)self _visibleViewController];
      }

      [(UIPageController *)self _setPreviousViewController:_visibleViewController];
      if ([(UIPageController *)self _needToLoadVisible])
      {
        _visibleViewControllerNotificationState = 0;
      }

      else
      {
        _visibleViewControllerNotificationState = [(UIPageController *)self _visibleViewControllerNotificationState];
      }

      [(UIPageController *)self _setPreviousViewControllerNotificationState:_visibleViewControllerNotificationState];
      if ([(UIPageController *)self _needToLoadNext])
      {
        _nextViewController = @"UnloadedViewController";
      }

      else
      {
        _nextViewController = [(UIPageController *)self _nextViewController];
      }

      [(UIPageController *)self _setVisibleViewController:_nextViewController];
      if ([(UIPageController *)self _needToLoadNext])
      {
        _nextViewControllerNotificationState = 0;
      }

      else
      {
        _nextViewControllerNotificationState = [(UIPageController *)self _nextViewControllerNotificationState];
      }

      [(UIPageController *)self _setVisibleViewControllerNotificationState:_nextViewControllerNotificationState];
      [(UIPageController *)self _setNextViewController:@"UnloadedViewController"];
      [(UIPageController *)self _setNextViewControllerNotificationState:0];
      goto LABEL_49;
    }

    if (v9 == visibleIndex - 1)
    {
      if (v17 <= 1 && ![(UIPageController *)self _needToLoadPrevious]&& [(UIPageController *)self _hasPreviousViewController])
      {
        [(UIPageController *)self _notifyPreviousViewController:1 animated:0];
      }

      if ([(UIPageController *)self _needToLoadVisible])
      {
        _visibleViewController2 = @"UnloadedViewController";
      }

      else
      {
        _visibleViewController2 = [(UIPageController *)self _visibleViewController];
      }

      [(UIPageController *)self _setNextViewController:_visibleViewController2];
      if ([(UIPageController *)self _needToLoadVisible])
      {
        _visibleViewControllerNotificationState2 = 0;
      }

      else
      {
        _visibleViewControllerNotificationState2 = [(UIPageController *)self _visibleViewControllerNotificationState];
      }

      [(UIPageController *)self _setNextViewControllerNotificationState:_visibleViewControllerNotificationState2];
      if ([(UIPageController *)self _needToLoadPrevious])
      {
        _previousViewController = @"UnloadedViewController";
      }

      else
      {
        _previousViewController = [(UIPageController *)self _previousViewController];
      }

      [(UIPageController *)self _setVisibleViewController:_previousViewController];
      if ([(UIPageController *)self _needToLoadPrevious])
      {
        _previousViewControllerNotificationState = 0;
      }

      else
      {
        _previousViewControllerNotificationState = [(UIPageController *)self _previousViewControllerNotificationState];
      }

      [(UIPageController *)self _setVisibleViewControllerNotificationState:_previousViewControllerNotificationState];
      selfCopy2 = self;
    }

    else
    {
LABEL_78:
      if (v17 <= 1 && ![(UIPageController *)self _needToLoadVisible]&& [(UIPageController *)self _hasVisibleViewController])
      {
        [(UIPageController *)self _notifyVisibleViewController:4 animated:0];
      }

      [(UIPageController *)self _setNextViewController:@"UnloadedViewController"];
      [(UIPageController *)self _setNextViewControllerNotificationState:0];
      [(UIPageController *)self _setVisibleViewController:@"UnloadedViewController"];
      [(UIPageController *)self _setVisibleViewControllerNotificationState:0];
      selfCopy2 = self;
    }

    [(UIPageController *)selfCopy2 _setPreviousViewController:@"UnloadedViewController"];
    [(UIPageController *)self _setPreviousViewControllerNotificationState:0];
LABEL_49:
    self->_visibleIndex = v9;
    if (v17 <= 1)
    {
      if (![(UIPageController *)self _needToLoadNext]&& [(UIPageController *)self _hasNextViewController]&& [(UIPageController *)self _nextViewControllerNotificationState]== 3)
      {
        [(UIPageController *)self _notifyNextViewController:4 animated:0];
      }

      else if (![(UIPageController *)self _needToLoadPrevious]&& [(UIPageController *)self _hasPreviousViewController]&& [(UIPageController *)self _previousViewControllerNotificationState]== 3)
      {
        [(UIPageController *)self _notifyPreviousViewController:4 animated:0];
      }

      if (![(UIPageController *)self _needToLoadVisible]&& [(UIPageController *)self _hasVisibleViewController])
      {
        [(UIPageController *)self _notifyVisibleViewController:2 animated:0];
      }
    }

    if ([(UIPageController *)self _needToLoadVisible])
    {

      [(UIPageController *)self _loadVisibleViewControllerAndNotify:v17 < 2];
    }
  }
}

- (void)reloadViewControllerAtIndex:(int64_t)index
{
  visibleIndex = self->_visibleIndex;
  if (visibleIndex - 1 <= index && visibleIndex + 1 >= index)
  {
    v6 = index - visibleIndex + 1;
    switch(v6)
    {
      case 2:
        [(UIPageController *)self _setNextViewController:@"UnloadedViewController"];

        [(UIPageController *)self _setNextViewControllerNotificationState:0];
        break;
      case 1:
        [(UIPageController *)self _setVisibleViewController:@"UnloadedViewController"];
        [(UIPageController *)self _setVisibleViewControllerNotificationState:0];

        [(UIPageController *)self _loadVisibleViewControllerAndNotify:1];
        break;
      case 0:
        [(UIPageController *)self _setPreviousViewController:@"UnloadedViewController"];

        [(UIPageController *)self _setPreviousViewControllerNotificationState:0];
        break;
    }
  }
}

- (id)_pageControllerScrollView
{
  if (![(UIPageController *)self _scrollView])
  {
    [(UIViewController *)self view];
  }

  _scrollView = [(UIPageController *)self _scrollView];

  return _scrollView;
}

@end