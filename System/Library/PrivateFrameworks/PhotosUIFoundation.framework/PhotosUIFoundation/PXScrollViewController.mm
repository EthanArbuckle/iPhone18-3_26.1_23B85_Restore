@interface PXScrollViewController
+ (id)platformScrollViewControllerForScrollView:(id)a3;
- (BOOL)hasWindow;
- (BOOL)isAnimatingScroll;
- (BOOL)isFloatingSublayer:(id)a3;
- (BOOL)isScrolledAtEdge:(unsigned int)a3 tolerance:(double)a4;
- (BOOL)isSubview:(id)a3;
- (BOOL)scrollViewIsAnimatingScroll;
- (BOOL)scrollViewShouldBeginScrollingWithPanAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 velocity:(CGPoint)a5;
- (BOOL)scrollViewShouldScrollToTop;
- (BOOL)shouldScrollSimultaneouslyWithDescendantScrollView;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3;
- (CGRect)scrollViewActiveRect;
- (CGRect)scrollViewConstrainedVisibleRect;
- (CGRect)scrollViewContentBounds;
- (CGRect)scrollViewTargetRect;
- (CGRect)scrollViewVisibleRect;
- (CGRect)scrollViewVisibleRectOutsideBounds;
- (CGSize)presentedContentSize;
- (CGSize)scrollViewContentSize;
- (CGSize)scrollViewReferenceSize;
- (PXExtendedTraitCollection)scrollViewExtendedTraitCollection;
- (PXScrollControllerUpdateDelegate)updateDelegate;
- (PXScrollViewController)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (void)addFloatingSublayer:(id)a3 forAxis:(int64_t)a4;
- (void)addSubview:(id)a3;
- (void)addSubviewToScrollView:(id)a3;
- (void)applyScrollInfo:(id)a3;
- (void)contentInsetAdjustmentBehaviorDidChange;
- (void)decelerationRateDidChange;
- (void)indicatorStyleDidChange;
- (void)performManualChange:(id)a3;
- (void)registerObserver:(id)a3;
- (void)scrollRectToVisible:(CGRect)a3 avoidingContentInsetEdges:(unint64_t)a4 animated:(BOOL)a5;
- (void)scrollToEdge:(unsigned int)a3 padding:(UIEdgeInsets)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)scrollViewContentBoundsDidChange;
- (void)scrollViewDidBeginFocusFastScrolling;
- (void)scrollViewDidEndFocusFastScrolling;
- (void)scrollViewDidEndScrolling;
- (void)scrollViewDidEndScrollingAnimation;
- (void)scrollViewDidLayout;
- (void)scrollViewDidMoveToWindow;
- (void)scrollViewDidScroll;
- (void)scrollViewLayoutIfNeeded;
- (void)scrollViewLayoutMarginsDidChange;
- (void)scrollViewWillBeginScrolling;
- (void)scrollViewWillBeginScrollingAnimationTowardsContentEdges:(unint64_t)a3;
- (void)scrollViewWillLayout;
- (void)setActiveEdgeScrollAnimations:(int64_t)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentInsetAdjustmentBehavior:(int64_t)a3;
- (void)setDecelerationRate:(int64_t)a3;
- (void)setDraggingPerformsScroll:(BOOL)a3;
- (void)setIndicatorStyle:(int64_t)a3;
- (void)setScrollInfo:(id)a3;
- (void)setScrollViewContentBounds:(CGRect)a3;
- (void)setScrollViewNeedsLayout;
- (void)setShouldScrollSimultaneouslyWithDescendantScrollView:(BOOL)a3;
- (void)setTransfersScrollToContainer:(BOOL)a3;
- (void)setVisibleOrigin:(CGPoint)a3;
- (void)stopScrollingAndZoomingAnimations;
- (void)unregisterObserver:(id)a3;
- (void)willEndScrollingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
@end

@implementation PXScrollViewController

- (PXScrollControllerUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)scrollViewWillLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[PXScheduler sharedScheduler];
  [v3 scrollViewWillLayoutSubviews];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_willLayoutSubviewsObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) scrollViewControllerWillLayoutSubviews:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)scrollViewDidLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PXScrollViewController *)self updateDelegate];
  [v3 px_scrollControllerDidUpdate:self];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_didLayoutSubviewsObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) scrollViewControllerDidLayoutSubviews:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)scrollViewDidScroll
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXScheduler sharedScheduler];
  [v3 scrollViewDidScroll];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_didScrollObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) scrollViewControllerDidScroll:{self, v12}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(PXScrollViewController *)self updateDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PXScrollViewController *)self updateDelegate];
    [v11 px_scrollControllerDidScroll:self];
  }
}

- (BOOL)isAnimatingScroll
{
  if ([(PXScrollViewController *)self isAnimatingScrollTowardsEdge])
  {
    return 1;
  }

  return [(PXScrollViewController *)self scrollViewIsAnimatingScroll];
}

- (void)scrollViewContentBoundsDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerContentBoundsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGSize)scrollViewContentSize
{
  width = self->_scrollViewContentSize.width;
  height = self->_scrollViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)hitTestContentInsets
{
  top = self->_hitTestContentInsets.top;
  left = self->_hitTestContentInsets.left;
  bottom = self->_hitTestContentInsets.bottom;
  right = self->_hitTestContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  top = self->_verticalScrollIndicatorInsets.top;
  left = self->_verticalScrollIndicatorInsets.left;
  bottom = self->_verticalScrollIndicatorInsets.bottom;
  right = self->_verticalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  top = self->_horizontalScrollIndicatorInsets.top;
  left = self->_horizontalScrollIndicatorInsets.left;
  bottom = self->_horizontalScrollIndicatorInsets.bottom;
  right = self->_horizontalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)presentedContentSize
{
  width = self->presentedContentSize.width;
  height = self->presentedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setScrollInfo:(id)a3
{
  v4 = a3;
  if (self->_scrollInfo != v4)
  {
    v7 = v4;
    if (![(PXScrollInfo *)v4 isEqual:?])
    {
      v5 = [(PXScrollInfo *)v7 copy];
      scrollInfo = self->_scrollInfo;
      self->_scrollInfo = v5;

      [(PXScrollViewController *)self applyScrollInfo:self->_scrollInfo];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setTransfersScrollToContainer:(BOOL)a3
{
  if (self->_transfersScrollToContainer != a3)
  {
    self->_transfersScrollToContainer = a3;
    [(PXScrollViewController *)self transfersScrollToContainerDidChange];
  }
}

- (void)setDraggingPerformsScroll:(BOOL)a3
{
  if (self->_draggingPerformsScroll != a3)
  {
    self->_draggingPerformsScroll = a3;
    [(PXScrollViewController *)self draggingPerformsScrollDidChange];
  }
}

- (void)contentInsetAdjustmentBehaviorDidChange
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:464 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController contentInsetAdjustmentBehaviorDidChange]", v6}];

  abort();
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)a3
{
  if (self->_contentInsetAdjustmentBehavior != a3)
  {
    self->_contentInsetAdjustmentBehavior = a3;
    [(PXScrollViewController *)self contentInsetAdjustmentBehaviorDidChange];
  }
}

- (void)indicatorStyleDidChange
{
  v2 = PXAssertGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1B3F73000, v2, OS_LOG_TYPE_FAULT, "not implemented on the current platform", v3, 2u);
  }
}

- (void)setIndicatorStyle:(int64_t)a3
{
  if (self->_indicatorStyle != a3)
  {
    self->_indicatorStyle = a3;
    [(PXScrollViewController *)self indicatorStyleDidChange];
  }
}

- (void)decelerationRateDidChange
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:440 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController decelerationRateDidChange]", v6}];

  abort();
}

- (void)setDecelerationRate:(int64_t)a3
{
  if (self->_decelerationRate != a3)
  {
    self->_decelerationRate = a3;
    [(PXScrollViewController *)self decelerationRateDidChange];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3.left == self->_contentInset.left && a3.top == self->_contentInset.top && a3.right == self->_contentInset.right;
  if (!v5 || a3.bottom != self->_contentInset.bottom)
  {
    self->_contentInset = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(PXScrollViewController *)self _observers];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 scrollViewControllerContentInsetDidChange:self];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(PXScrollViewController *)self setNeedsUpdate];
  }
}

- (void)setVisibleOrigin:(CGPoint)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:404 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setVisibleOrigin:]", v7}];

  abort();
}

- (PXExtendedTraitCollection)scrollViewExtendedTraitCollection
{
  scrollViewExtendedTraitCollection = self->_scrollViewExtendedTraitCollection;
  if (!scrollViewExtendedTraitCollection)
  {
    v4 = [[PXScrollViewControllerExtendedTraitCollection alloc] initWithScrollViewController:self];
    v5 = self->_scrollViewExtendedTraitCollection;
    self->_scrollViewExtendedTraitCollection = &v4->super;

    scrollViewExtendedTraitCollection = self->_scrollViewExtendedTraitCollection;
  }

  return scrollViewExtendedTraitCollection;
}

- (void)performManualChange:(id)a3
{
  isManuallyChanging = self->_isManuallyChanging;
  self->_isManuallyChanging = 1;
  (*(a3 + 2))(a3, self);
  self->_isManuallyChanging = isManuallyChanging;
}

- (void)setShouldScrollSimultaneouslyWithDescendantScrollView:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:331 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setShouldScrollSimultaneouslyWithDescendantScrollView:]", v7}];

  abort();
}

- (BOOL)shouldScrollSimultaneouslyWithDescendantScrollView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:327 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController shouldScrollSimultaneouslyWithDescendantScrollView]", v6}];

  abort();
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:323 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollIndicatorFrameForAxis:]", v7}];

  abort();
}

- (void)applyScrollInfo:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:319 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController applyScrollInfo:]", v8}];

  abort();
}

- (void)setScrollViewContentBounds:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:315 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setScrollViewContentBounds:]", v7}];

  abort();
}

- (CGRect)scrollViewContentBounds
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:310 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewContentBounds]", v6}];

  abort();
}

- (CGRect)scrollViewTargetRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:306 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewTargetRect]", v6}];

  abort();
}

- (CGRect)scrollViewConstrainedVisibleRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:302 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewConstrainedVisibleRect]", v6}];

  abort();
}

- (CGRect)scrollViewVisibleRectOutsideBounds
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:298 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewVisibleRectOutsideBounds]", v6}];

  abort();
}

- (CGRect)scrollViewVisibleRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:294 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewVisibleRect]", v6}];

  abort();
}

- (CGRect)scrollViewActiveRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:290 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewActiveRect]", v6}];

  abort();
}

- (CGSize)scrollViewReferenceSize
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:286 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewReferenceSize]", v6}];

  abort();
}

- (BOOL)scrollViewIsAnimatingScroll
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:282 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewIsAnimatingScroll]", v6}];

  abort();
}

- (void)scrollViewLayoutIfNeeded
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:278 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewLayoutIfNeeded]", v6}];

  abort();
}

- (void)setScrollViewNeedsLayout
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:274 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setScrollViewNeedsLayout]", v6}];

  abort();
}

- (void)stopScrollingAndZoomingAnimations
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:270 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController stopScrollingAndZoomingAnimations]", v6}];

  abort();
}

- (void)scrollRectToVisible:(CGRect)a3 avoidingContentInsetEdges:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:266 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollRectToVisible:avoidingContentInsetEdges:animated:]", v9}];

  abort();
}

- (BOOL)isScrolledAtEdge:(unsigned int)a3 tolerance:(double)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:258 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isScrolledAtEdge:tolerance:]", v8}];

  abort();
}

- (void)scrollToEdge:(unsigned int)a3 padding:(UIEdgeInsets)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:254 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollToEdge:padding:animated:completionHandler:]", v11}];

  abort();
}

- (void)addSubviewToScrollView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:242 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addSubviewToScrollView:]", v8}];

  abort();
}

- (BOOL)isFloatingSublayer:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:238 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isFloatingSublayer:]", v8}];

  abort();
}

- (void)addFloatingSublayer:(id)a3 forAxis:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:234 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addFloatingSublayer:forAxis:]", v9}];

  abort();
}

- (BOOL)isSubview:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:230 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isSubview:]", v8}];

  abort();
}

- (void)addSubview:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:226 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addSubview:]", v8}];

  abort();
}

- (void)scrollViewDidEndFocusFastScrolling
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndFocusFastScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewDidBeginFocusFastScrolling
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidBeginFocusFastScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewDidEndScrollingAnimation
{
  v14 = *MEMORY[0x1E69E9840];
  [(PXScrollViewController *)self setActiveEdgeScrollAnimations:[(PXScrollViewController *)self activeEdgeScrollAnimations]- 1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndScrollingAnimation:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewWillBeginScrollingAnimationTowardsContentEdges:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [(PXScrollViewController *)self setActiveEdgeScrollAnimations:[(PXScrollViewController *)self activeEdgeScrollAnimations]+ 1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PXScrollViewController *)self _observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewControllerWillBeginScrollingAnimation:self towardsContentEdges:a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)scrollViewShouldScrollToTop
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 scrollViewControllerShouldScrollToTop:self])
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (void)scrollViewDidMoveToWindow
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerViewDidMoveToWindow:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewLayoutMarginsDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerViewLayoutMarginsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewDidEndScrolling
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willEndScrollingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x1E69E9840];
  [(PXScrollViewController *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(PXScrollViewController *)self _observers];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 scrollViewControllerWillEndScrolling:self withVelocity:a4 targetContentOffset:x currentContentOffset:{y, v9, v11}];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)scrollViewWillBeginScrolling
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXScrollViewController *)self _observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerWillBeginScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)scrollViewShouldBeginScrollingWithPanAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a3.y;
  v8 = a3.x;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(PXScrollViewController *)self _observers];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 scrollViewController:self shouldBeginScrollingWithPanAtLocation:v10 inCoordinateSpace:v8 velocity:{v7, x, y}])
        {
          v17 = 0;
          goto LABEL_12;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)hasWindow
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:87 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController hasWindow]", v6}];

  abort();
}

- (void)setActiveEdgeScrollAnimations:(int64_t)a3
{
  if (self->_activeEdgeScrollAnimations != a3)
  {
    self->_activeEdgeScrollAnimations = a3;
    [(PXScrollViewController *)self activeEdgeScrollAnimations];

    kdebug_trace();
  }
}

- (void)unregisterObserver:(id)a3
{
  v5 = a3;
  v4 = [(PXScrollViewController *)self _observers];
  [v4 removeObject:v5];

  [(NSHashTable *)self->_willLayoutSubviewsObservers removeObject:v5];
  [(NSHashTable *)self->_didLayoutSubviewsObservers removeObject:v5];
  [(NSHashTable *)self->_didScrollObservers removeObject:v5];
}

- (void)registerObserver:(id)a3
{
  v14 = a3;
  v4 = [(PXScrollViewController *)self _observers];
  [v4 addObject:v14];

  if (objc_opt_respondsToSelector())
  {
    willLayoutSubviewsObservers = self->_willLayoutSubviewsObservers;
    if (!willLayoutSubviewsObservers)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_willLayoutSubviewsObservers;
      self->_willLayoutSubviewsObservers = v6;

      willLayoutSubviewsObservers = self->_willLayoutSubviewsObservers;
    }

    [(NSHashTable *)willLayoutSubviewsObservers addObject:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    didLayoutSubviewsObservers = self->_didLayoutSubviewsObservers;
    if (!didLayoutSubviewsObservers)
    {
      v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v10 = self->_didLayoutSubviewsObservers;
      self->_didLayoutSubviewsObservers = v9;

      didLayoutSubviewsObservers = self->_didLayoutSubviewsObservers;
    }

    [(NSHashTable *)didLayoutSubviewsObservers addObject:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    didScrollObservers = self->_didScrollObservers;
    if (!didScrollObservers)
    {
      v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v13 = self->_didScrollObservers;
      self->_didScrollObservers = v12;

      didScrollObservers = self->_didScrollObservers;
    }

    [(NSHashTable *)didScrollObservers addObject:v14];
  }
}

- (PXScrollViewController)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXScrollViewController;
  v3 = [(PXScrollViewController *)&v7 init:a3.origin.x];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = *(v3 + 16);
    *(v3 + 16) = v4;

    *(v3 + 104) = xmmword_1B40724C0;
    v3[48] = 1;
  }

  return v3;
}

+ (id)platformScrollViewControllerForScrollView:(id)a3
{
  v3 = [a3 delegate];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end