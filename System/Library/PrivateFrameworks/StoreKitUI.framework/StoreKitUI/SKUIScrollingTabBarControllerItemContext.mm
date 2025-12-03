@interface SKUIScrollingTabBarControllerItemContext
- (BOOL)viewControllerIsNavigationController;
- (SKUIScrollingTabBarControllerItemContext)initWithViewController:(id)controller;
- (SKUIScrollingTabBarControllerItemContextDelegate)delegate;
- (double)nestedPagingScrollViewContentWidth;
- (id)_appearanceStatusObserver;
- (id)_nestedPagedScrollingConformingViewControllerForcingViewLoading:(BOOL)loading;
- (id)viewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)index;
- (void)_applyNewContentInset:(UIEdgeInsets)inset withOldContentInset:(UIEdgeInsets)contentInset toContentScrollView:(id)view;
- (void)_notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView;
- (void)_prepareViewControllerForDisplayWithViewFrame:(CGRect)frame updateContentOffset:(BOOL)offset contentOffset:(CGPoint)contentOffset;
- (void)_prepareViewControllerForTearDown;
- (void)_updateAppliedContentInsetsAdjustment;
- (void)applyNewContentInsetDescriptor:(id *)descriptor;
- (void)dealloc;
- (void)notifyOfUpdatedAppearanceStatus:(id)status;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observedNavigationStackDidChange:(id)change;
- (void)updateForPossibleNestedPagingScrollViewChange;
- (void)updateNestedPagingScrollViewContentOffset:(CGPoint)offset;
@end

@implementation SKUIScrollingTabBarControllerItemContext

- (SKUIScrollingTabBarControllerItemContext)initWithViewController:(id)controller
{
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingTabBarControllerItemContext initWithViewController:];
  }

  v9.receiver = self;
  v9.super_class = SKUIScrollingTabBarControllerItemContext;
  v6 = [(SKUIScrollingTabBarControllerItemContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (controllerCopy)
    {
      objc_storeStrong(&v6->_viewController, controller);
      v7->_viewControllerIsNavigationController = -1;
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIScrollingTabBarControllerItemContext *)self prepareViewControllerForTearDown];
  v3.receiver = self;
  v3.super_class = SKUIScrollingTabBarControllerItemContext;
  [(SKUIScrollingTabBarControllerItemContext *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_SKUIScrollingTabNestedPagingScrollViewContentOffsetObservingContext == context)
  {
    if (!self->_adjustingNestedPagingScrollViewContentOffset)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained scrollingTabBarControllerItemContextRequestsContentOffsetUpdate:self];
      }
    }
  }

  else if (_SKUIScrollingTabNestedPagingScrollViewContentSizeObservingContext == context)
  {
    [(SKUIScrollingTabBarControllerItemContext *)self _notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SKUIScrollingTabBarControllerItemContext;
    [(SKUIScrollingTabBarControllerItemContext *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)observedNavigationStackDidChange:(id)change
{
  changeCopy = change;
  v4 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:1];
  scrollingTabNestedPagingScrollView = [v4 scrollingTabNestedPagingScrollView];
  if (scrollingTabNestedPagingScrollView != self->_observedNestedPagingScrollView)
  {
    [(SKUIScrollingTabBarControllerItemContext *)self updateForPossibleNestedPagingScrollViewChange];
  }

  [(SKUIScrollingTabBarControllerItemContext *)self _updateAppliedContentInsetsAdjustment];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollingTabBarControllerItemContext:self observedNavigationStackDidChange:changeCopy];
  }
}

- (double)nestedPagingScrollViewContentWidth
{
  observedNestedPagingScrollView = self->_observedNestedPagingScrollView;
  if (!observedNestedPagingScrollView)
  {
    return 0.0;
  }

  [(UIScrollView *)observedNestedPagingScrollView contentSize];
  self->_lastSeenContentWidth = result;
  return result;
}

- (BOOL)viewControllerIsNavigationController
{
  viewControllerIsNavigationController = self->_viewControllerIsNavigationController;
  if (viewControllerIsNavigationController < 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    viewControllerIsNavigationController = isKindOfClass & 1;
    self->_viewControllerIsNavigationController = isKindOfClass & 1;
  }

  return viewControllerIsNavigationController != 0;
}

- (void)applyNewContentInsetDescriptor:(id *)descriptor
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_desiredContentInsetAdjustmentDescriptor.contentInset.top, *&descriptor->var0.top), vceqq_f64(*&self->_desiredContentInsetAdjustmentDescriptor.contentInset.bottom, *&descriptor->var0.bottom)))) & 1) == 0 || vabdd_f64(self->_desiredContentInsetAdjustmentDescriptor.bottomInsetValueAddedForScrollingTabBar, descriptor->var1) > 0.00000011920929)
  {
    v3 = *&descriptor->var0.top;
    v4 = *&descriptor->var0.bottom;
    self->_desiredContentInsetAdjustmentDescriptor.bottomInsetValueAddedForScrollingTabBar = descriptor->var1;
    *&self->_desiredContentInsetAdjustmentDescriptor.contentInset.top = v3;
    *&self->_desiredContentInsetAdjustmentDescriptor.contentInset.bottom = v4;
    [(SKUIScrollingTabBarControllerItemContext *)self _updateAppliedContentInsetsAdjustment];
  }
}

- (void)notifyOfUpdatedAppearanceStatus:(id)status
{
  v3 = *&status.var1;
  var0 = status.var0;
  if (vabdd_f64(self->_lastSentAppearanceStatus.progress, status.var0) > 0.00000011920929 || status.var1 != self->_lastSentAppearanceStatus.isBouncingOffTheEdge)
  {
    _appearanceStatusObserver = [(SKUIScrollingTabBarControllerItemContext *)self _appearanceStatusObserver];
    if (_appearanceStatusObserver)
    {
      v7 = _appearanceStatusObserver;
      [_appearanceStatusObserver scrollingTabAppearanceStatusWasUpdated:{*&var0, v3}];
      _appearanceStatusObserver = v7;
      self->_lastSentAppearanceStatus.progress = var0;
      *&self->_lastSentAppearanceStatus.isBouncingOffTheEdge = v3;
    }
  }
}

- (void)updateForPossibleNestedPagingScrollViewChange
{
  observedNestedPagingScrollView = self->_observedNestedPagingScrollView;
  if (observedNestedPagingScrollView)
  {
    [(UIScrollView *)self->_observedNestedPagingScrollView contentOffset];
  }

  [(SKUIScrollingTabBarControllerItemContext *)self _prepareViewControllerForTearDown];
  view = [(UIViewController *)self->_viewController view];
  [view frame];
  [SKUIScrollingTabBarControllerItemContext _prepareViewControllerForDisplayWithViewFrame:"_prepareViewControllerForDisplayWithViewFrame:updateContentOffset:contentOffset:" updateContentOffset:observedNestedPagingScrollView != 0 contentOffset:?];
}

- (void)updateNestedPagingScrollViewContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (self->_adjustingNestedPagingScrollViewContentOffset)
  {
    nestedPagingScrollView = [(SKUIScrollingTabBarControllerItemContext *)self nestedPagingScrollView];
    [nestedPagingScrollView setContentOffset:{x, y}];
  }

  else
  {
    self->_adjustingNestedPagingScrollViewContentOffset = 1;
    nestedPagingScrollView2 = [(SKUIScrollingTabBarControllerItemContext *)self nestedPagingScrollView];
    [nestedPagingScrollView2 setContentOffset:{x, y}];

    self->_adjustingNestedPagingScrollViewContentOffset = 0;
  }
}

- (id)viewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)index
{
  v4 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:0];
  v5 = [v4 scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:index];

  return v5;
}

- (id)_appearanceStatusObserver
{
  viewControllerIsNavigationController = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  viewController = self->_viewController;
  if (viewControllerIsNavigationController)
  {
    v5 = viewController;
    viewControllers = [(UIViewController *)v5 viewControllers];
    firstObject = [viewControllers firstObject];

    LODWORD(viewControllers) = [firstObject conformsToProtocol:&unk_28292F980];
    if (viewControllers)
    {
      v8 = firstObject;
    }

    else
    {
      v8 = 0;
    }
  }

  else if ([(UIViewController *)viewController conformsToProtocol:&unk_28292F980])
  {
    v8 = self->_viewController;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_applyNewContentInset:(UIEdgeInsets)inset withOldContentInset:(UIEdgeInsets)contentInset toContentScrollView:(id)view
{
  if (contentInset.left != inset.left || contentInset.top != inset.top || contentInset.right != inset.right || contentInset.bottom != inset.bottom)
  {
    right = contentInset.right;
    bottom = contentInset.bottom;
    left = contentInset.left;
    top = contentInset.top;
    v13 = inset.right;
    v14 = inset.bottom;
    v15 = inset.left;
    v16 = inset.top;
    viewCopy = view;
    [viewCopy contentInset];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    [viewCopy scrollIndicatorInsets];
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    [viewCopy contentOffset];
    v35 = v26;
    v36 = v25;
    [viewCopy setContentInset:{v16 + v27 - top, v15 + v28 - left, v14 + v29 - bottom, v13 + v30 - right}];
    [viewCopy setScrollIndicatorInsets:{v16 + v31 - top, v15 + v32 - left, v14 + v33 - bottom, v13 + v34 - right}];
    [viewCopy setContentOffset:{v36, top + v35 - v16}];
  }
}

- (id)_nestedPagedScrollingConformingViewControllerForcingViewLoading:(BOOL)loading
{
  loadingCopy = loading;
  viewController = self->_viewController;
  if (loading)
  {
    view = [(UIViewController *)viewController view];
  }

  else if (![(UIViewController *)viewController isViewLoaded])
  {
LABEL_9:
    v13 = 0;
    goto LABEL_15;
  }

  viewControllerIsNavigationController = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  v8 = self->_viewController;
  if (!viewControllerIsNavigationController)
  {
    if ([(UIViewController *)v8 conformsToProtocol:&unk_28292FA58])
    {
      v13 = self->_viewController;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v9 = v8;
  viewControllers = [(UIViewController *)v9 viewControllers];
  firstObject = [viewControllers firstObject];

  if (loadingCopy)
  {
    view2 = [firstObject view];
  }

  else if (![firstObject isViewLoaded])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (![firstObject conformsToProtocol:&unk_28292FA58])
  {
    goto LABEL_13;
  }

  v13 = firstObject;
LABEL_14:

LABEL_15:
  if (!+[SKUIScrollingTabBarController areScrollingTabsAllowed])
  {

    v13 = 0;
  }

  return v13;
}

- (void)_notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView
{
  [(UIScrollView *)self->_observedNestedPagingScrollView contentSize];
  if (vabdd_f64(v3, self->_lastSeenContentWidth) > 0.00000011920929)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained scrollingTabBarControllerItemContextRequestsContentSizeUpdate:self];
    }
  }
}

- (void)_prepareViewControllerForDisplayWithViewFrame:(CGRect)frame updateContentOffset:(BOOL)offset contentOffset:(CGPoint)contentOffset
{
  if (!self->_readyForDisplay)
  {
    y = contentOffset.y;
    x = contentOffset.x;
    offsetCopy = offset;
    height = frame.size.height;
    width = frame.size.width;
    v11 = frame.origin.y;
    v12 = frame.origin.x;
    v14 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:1];
    v20 = v14;
    if (v14)
    {
      scrollingTabNestedPagingScrollView = [v14 scrollingTabNestedPagingScrollView];
      v16 = scrollingTabNestedPagingScrollView != 0;
      if (scrollingTabNestedPagingScrollView)
      {
        view = [(UIViewController *)self->_viewController view];
        autoresizingMask = [view autoresizingMask];
        self->_originalAutoresizingMask = autoresizingMask;
        [view setAutoresizingMask:autoresizingMask & 0xFFFFFFFFFFFFFFFDLL];
        [view setFrame:{v12, v11, width, height}];
        if (offsetCopy)
        {
          [scrollingTabNestedPagingScrollView setContentOffset:{x, y}];
        }

        [view layoutIfNeeded];
        if (self->_lastSeenContentWidth < 0.00000011920929)
        {
          v21.origin.x = v12;
          v21.origin.y = v11;
          v21.size.width = width;
          v21.size.height = height;
          self->_lastSeenContentWidth = CGRectGetWidth(v21);
        }

        [scrollingTabNestedPagingScrollView setPagingEnabled:0];
        panGestureRecognizer = [scrollingTabNestedPagingScrollView panGestureRecognizer];
        [panGestureRecognizer _setCanPanHorizontally:0];

        [scrollingTabNestedPagingScrollView addObserver:self forKeyPath:@"contentOffset" options:0 context:_SKUIScrollingTabNestedPagingScrollViewContentOffsetObservingContext];
        [scrollingTabNestedPagingScrollView addObserver:self forKeyPath:@"contentSize" options:0 context:_SKUIScrollingTabNestedPagingScrollViewContentSizeObservingContext];
        objc_storeStrong(&self->_observedNestedPagingScrollView, scrollingTabNestedPagingScrollView);
      }
    }

    else
    {
      v16 = 0;
    }

    if ([(UIViewController *)self->_viewController conformsToProtocol:&unk_282993DA8])
    {
      [(UIViewController *)self->_viewController setNavigationStackObserver:self];
    }

    self->_readyForDisplay = 1;
    if (v16)
    {
      [(SKUIScrollingTabBarControllerItemContext *)self _notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView];
    }
  }
}

- (void)_prepareViewControllerForTearDown
{
  if (self->_readyForDisplay)
  {
    v7 = self->_observedNestedPagingScrollView;
    if (v7)
    {
      [(UIScrollView *)v7 removeObserver:self forKeyPath:@"contentSize" context:_SKUIScrollingTabNestedPagingScrollViewContentSizeObservingContext];
      [(UIScrollView *)v7 removeObserver:self forKeyPath:@"contentOffset" context:_SKUIScrollingTabNestedPagingScrollViewContentOffsetObservingContext];
      panGestureRecognizer = [(UIScrollView *)v7 panGestureRecognizer];
      [panGestureRecognizer _setCanPanHorizontally:1];

      [(UIScrollView *)v7 setPagingEnabled:1];
      view = [(UIViewController *)self->_viewController view];
      [view setAutoresizingMask:self->_originalAutoresizingMask];

      observedNestedPagingScrollView = self->_observedNestedPagingScrollView;
      self->_observedNestedPagingScrollView = 0;
      self->_originalAutoresizingMask = 0;
    }

    if ([(UIViewController *)self->_viewController conformsToProtocol:&unk_282993DA8])
    {
      [(UIViewController *)self->_viewController setNavigationStackObserver:0];
    }

    self->_readyForDisplay = 0;
  }
}

- (void)_updateAppliedContentInsetsAdjustment
{
  viewControllerIsNavigationController = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  viewController = self->_viewController;
  if (viewControllerIsNavigationController)
  {
    v5 = viewController;
    viewControllers = [(UIViewController *)v5 viewControllers];
    firstObject = [viewControllers firstObject];

    obja = [firstObject contentScrollView];

    contentScrollView = obja;
  }

  else
  {
    contentScrollView = [(UIViewController *)viewController contentScrollView];
  }

  insetAdjustedContentScrollView = self->_insetAdjustedContentScrollView;
  obj = contentScrollView;
  if (insetAdjustedContentScrollView != contentScrollView)
  {
    v10 = MEMORY[0x277D768C8];
    if (insetAdjustedContentScrollView)
    {
      [(SKUIScrollingTabBarControllerItemContext *)self _applyNewContentInset:*MEMORY[0x277D768C8] withOldContentInset:*(MEMORY[0x277D768C8] + 8) toContentScrollView:*(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
    }

    v11 = v10[1];
    *&self->_appliedContentInsetsAdjustment.top = *v10;
    *&self->_appliedContentInsetsAdjustment.bottom = v11;
    objc_storeStrong(&self->_insetAdjustedContentScrollView, obj);
  }

  v12 = [(UIViewController *)self->_viewController conformsToProtocol:&unk_282993C60];
  v13 = v12;
  if (self->_insetAdjustedContentScrollView)
  {
    top = self->_desiredContentInsetAdjustmentDescriptor.contentInset.top;
    left = self->_desiredContentInsetAdjustmentDescriptor.contentInset.left;
    bottom = self->_desiredContentInsetAdjustmentDescriptor.contentInset.bottom;
    right = self->_desiredContentInsetAdjustmentDescriptor.contentInset.right;
    if (v12)
    {
      bottom = bottom - self->_desiredContentInsetAdjustmentDescriptor.bottomInsetValueAddedForScrollingTabBar;
    }

    [(SKUIScrollingTabBarControllerItemContext *)self _applyNewContentInset:self->_desiredContentInsetAdjustmentDescriptor.contentInset.top withOldContentInset:self->_desiredContentInsetAdjustmentDescriptor.contentInset.left toContentScrollView:bottom, self->_desiredContentInsetAdjustmentDescriptor.contentInset.right, self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
    self->_appliedContentInsetsAdjustment.top = top;
    self->_appliedContentInsetsAdjustment.left = left;
    self->_appliedContentInsetsAdjustment.bottom = bottom;
    self->_appliedContentInsetsAdjustment.right = right;
  }

  if (v13)
  {
    [(UIViewController *)self->_viewController scrollingTabBarBottomInsetAdjustmentDidChange];
  }
}

- (SKUIScrollingTabBarControllerItemContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarControllerItemContext initWithViewController:]";
}

@end