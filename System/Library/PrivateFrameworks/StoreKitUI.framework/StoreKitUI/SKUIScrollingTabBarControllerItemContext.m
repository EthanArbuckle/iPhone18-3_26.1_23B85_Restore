@interface SKUIScrollingTabBarControllerItemContext
- (BOOL)viewControllerIsNavigationController;
- (SKUIScrollingTabBarControllerItemContext)initWithViewController:(id)a3;
- (SKUIScrollingTabBarControllerItemContextDelegate)delegate;
- (double)nestedPagingScrollViewContentWidth;
- (id)_appearanceStatusObserver;
- (id)_nestedPagedScrollingConformingViewControllerForcingViewLoading:(BOOL)a3;
- (id)viewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3;
- (void)_applyNewContentInset:(UIEdgeInsets)a3 withOldContentInset:(UIEdgeInsets)a4 toContentScrollView:(id)a5;
- (void)_notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView;
- (void)_prepareViewControllerForDisplayWithViewFrame:(CGRect)a3 updateContentOffset:(BOOL)a4 contentOffset:(CGPoint)a5;
- (void)_prepareViewControllerForTearDown;
- (void)_updateAppliedContentInsetsAdjustment;
- (void)applyNewContentInsetDescriptor:(id *)a3;
- (void)dealloc;
- (void)notifyOfUpdatedAppearanceStatus:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observedNavigationStackDidChange:(id)a3;
- (void)updateForPossibleNestedPagingScrollViewChange;
- (void)updateNestedPagingScrollViewContentOffset:(CGPoint)a3;
@end

@implementation SKUIScrollingTabBarControllerItemContext

- (SKUIScrollingTabBarControllerItemContext)initWithViewController:(id)a3
{
  v5 = a3;
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
    if (v5)
    {
      objc_storeStrong(&v6->_viewController, a3);
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_SKUIScrollingTabNestedPagingScrollViewContentOffsetObservingContext == a6)
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

  else if (_SKUIScrollingTabNestedPagingScrollViewContentSizeObservingContext == a6)
  {
    [(SKUIScrollingTabBarControllerItemContext *)self _notifyDelegateOfUpdatedContentWidthInObservedNestedPagingScrollView];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SKUIScrollingTabBarControllerItemContext;
    [(SKUIScrollingTabBarControllerItemContext *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)observedNavigationStackDidChange:(id)a3
{
  v7 = a3;
  v4 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:1];
  v5 = [v4 scrollingTabNestedPagingScrollView];
  if (v5 != self->_observedNestedPagingScrollView)
  {
    [(SKUIScrollingTabBarControllerItemContext *)self updateForPossibleNestedPagingScrollViewChange];
  }

  [(SKUIScrollingTabBarControllerItemContext *)self _updateAppliedContentInsetsAdjustment];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollingTabBarControllerItemContext:self observedNavigationStackDidChange:v7];
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

- (void)applyNewContentInsetDescriptor:(id *)a3
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_desiredContentInsetAdjustmentDescriptor.contentInset.top, *&a3->var0.top), vceqq_f64(*&self->_desiredContentInsetAdjustmentDescriptor.contentInset.bottom, *&a3->var0.bottom)))) & 1) == 0 || vabdd_f64(self->_desiredContentInsetAdjustmentDescriptor.bottomInsetValueAddedForScrollingTabBar, a3->var1) > 0.00000011920929)
  {
    v3 = *&a3->var0.top;
    v4 = *&a3->var0.bottom;
    self->_desiredContentInsetAdjustmentDescriptor.bottomInsetValueAddedForScrollingTabBar = a3->var1;
    *&self->_desiredContentInsetAdjustmentDescriptor.contentInset.top = v3;
    *&self->_desiredContentInsetAdjustmentDescriptor.contentInset.bottom = v4;
    [(SKUIScrollingTabBarControllerItemContext *)self _updateAppliedContentInsetsAdjustment];
  }
}

- (void)notifyOfUpdatedAppearanceStatus:(id)a3
{
  v3 = *&a3.var1;
  var0 = a3.var0;
  if (vabdd_f64(self->_lastSentAppearanceStatus.progress, a3.var0) > 0.00000011920929 || a3.var1 != self->_lastSentAppearanceStatus.isBouncingOffTheEdge)
  {
    v6 = [(SKUIScrollingTabBarControllerItemContext *)self _appearanceStatusObserver];
    if (v6)
    {
      v7 = v6;
      [v6 scrollingTabAppearanceStatusWasUpdated:{*&var0, v3}];
      v6 = v7;
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
  v4 = [(UIViewController *)self->_viewController view];
  [v4 frame];
  [SKUIScrollingTabBarControllerItemContext _prepareViewControllerForDisplayWithViewFrame:"_prepareViewControllerForDisplayWithViewFrame:updateContentOffset:contentOffset:" updateContentOffset:observedNestedPagingScrollView != 0 contentOffset:?];
}

- (void)updateNestedPagingScrollViewContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_adjustingNestedPagingScrollViewContentOffset)
  {
    v7 = [(SKUIScrollingTabBarControllerItemContext *)self nestedPagingScrollView];
    [v7 setContentOffset:{x, y}];
  }

  else
  {
    self->_adjustingNestedPagingScrollViewContentOffset = 1;
    v6 = [(SKUIScrollingTabBarControllerItemContext *)self nestedPagingScrollView];
    [v6 setContentOffset:{x, y}];

    self->_adjustingNestedPagingScrollViewContentOffset = 0;
  }
}

- (id)viewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3
{
  v4 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:0];
  v5 = [v4 scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:a3];

  return v5;
}

- (id)_appearanceStatusObserver
{
  v3 = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  viewController = self->_viewController;
  if (v3)
  {
    v5 = viewController;
    v6 = [(UIViewController *)v5 viewControllers];
    v7 = [v6 firstObject];

    LODWORD(v6) = [v7 conformsToProtocol:&unk_28292F980];
    if (v6)
    {
      v8 = v7;
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

- (void)_applyNewContentInset:(UIEdgeInsets)a3 withOldContentInset:(UIEdgeInsets)a4 toContentScrollView:(id)a5
{
  if (a4.left != a3.left || a4.top != a3.top || a4.right != a3.right || a4.bottom != a3.bottom)
  {
    right = a4.right;
    bottom = a4.bottom;
    left = a4.left;
    top = a4.top;
    v13 = a3.right;
    v14 = a3.bottom;
    v15 = a3.left;
    v16 = a3.top;
    v37 = a5;
    [v37 contentInset];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    [v37 scrollIndicatorInsets];
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    [v37 contentOffset];
    v35 = v26;
    v36 = v25;
    [v37 setContentInset:{v16 + v27 - top, v15 + v28 - left, v14 + v29 - bottom, v13 + v30 - right}];
    [v37 setScrollIndicatorInsets:{v16 + v31 - top, v15 + v32 - left, v14 + v33 - bottom, v13 + v34 - right}];
    [v37 setContentOffset:{v36, top + v35 - v16}];
  }
}

- (id)_nestedPagedScrollingConformingViewControllerForcingViewLoading:(BOOL)a3
{
  v3 = a3;
  viewController = self->_viewController;
  if (a3)
  {
    v6 = [(UIViewController *)viewController view];
  }

  else if (![(UIViewController *)viewController isViewLoaded])
  {
LABEL_9:
    v13 = 0;
    goto LABEL_15;
  }

  v7 = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  v8 = self->_viewController;
  if (!v7)
  {
    if ([(UIViewController *)v8 conformsToProtocol:&unk_28292FA58])
    {
      v13 = self->_viewController;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = [(UIViewController *)v9 viewControllers];
  v11 = [v10 firstObject];

  if (v3)
  {
    v12 = [v11 view];
  }

  else if (![v11 isViewLoaded])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (![v11 conformsToProtocol:&unk_28292FA58])
  {
    goto LABEL_13;
  }

  v13 = v11;
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

- (void)_prepareViewControllerForDisplayWithViewFrame:(CGRect)a3 updateContentOffset:(BOOL)a4 contentOffset:(CGPoint)a5
{
  if (!self->_readyForDisplay)
  {
    y = a5.y;
    x = a5.x;
    v8 = a4;
    height = a3.size.height;
    width = a3.size.width;
    v11 = a3.origin.y;
    v12 = a3.origin.x;
    v14 = [(SKUIScrollingTabBarControllerItemContext *)self _nestedPagedScrollingConformingViewControllerForcingViewLoading:1];
    v20 = v14;
    if (v14)
    {
      v15 = [v14 scrollingTabNestedPagingScrollView];
      v16 = v15 != 0;
      if (v15)
      {
        v17 = [(UIViewController *)self->_viewController view];
        v18 = [v17 autoresizingMask];
        self->_originalAutoresizingMask = v18;
        [v17 setAutoresizingMask:v18 & 0xFFFFFFFFFFFFFFFDLL];
        [v17 setFrame:{v12, v11, width, height}];
        if (v8)
        {
          [v15 setContentOffset:{x, y}];
        }

        [v17 layoutIfNeeded];
        if (self->_lastSeenContentWidth < 0.00000011920929)
        {
          v21.origin.x = v12;
          v21.origin.y = v11;
          v21.size.width = width;
          v21.size.height = height;
          self->_lastSeenContentWidth = CGRectGetWidth(v21);
        }

        [v15 setPagingEnabled:0];
        v19 = [v15 panGestureRecognizer];
        [v19 _setCanPanHorizontally:0];

        [v15 addObserver:self forKeyPath:@"contentOffset" options:0 context:_SKUIScrollingTabNestedPagingScrollViewContentOffsetObservingContext];
        [v15 addObserver:self forKeyPath:@"contentSize" options:0 context:_SKUIScrollingTabNestedPagingScrollViewContentSizeObservingContext];
        objc_storeStrong(&self->_observedNestedPagingScrollView, v15);
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
      v4 = [(UIScrollView *)v7 panGestureRecognizer];
      [v4 _setCanPanHorizontally:1];

      [(UIScrollView *)v7 setPagingEnabled:1];
      v5 = [(UIViewController *)self->_viewController view];
      [v5 setAutoresizingMask:self->_originalAutoresizingMask];

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
  v3 = [(SKUIScrollingTabBarControllerItemContext *)self viewControllerIsNavigationController];
  viewController = self->_viewController;
  if (v3)
  {
    v5 = viewController;
    v6 = [(UIViewController *)v5 viewControllers];
    v7 = [v6 firstObject];

    obja = [v7 contentScrollView];

    v8 = obja;
  }

  else
  {
    v8 = [(UIViewController *)viewController contentScrollView];
  }

  insetAdjustedContentScrollView = self->_insetAdjustedContentScrollView;
  obj = v8;
  if (insetAdjustedContentScrollView != v8)
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