@interface PXScrollViewController
+ (id)platformScrollViewControllerForScrollView:(id)view;
- (BOOL)hasWindow;
- (BOOL)isAnimatingScroll;
- (BOOL)isFloatingSublayer:(id)sublayer;
- (BOOL)isScrolledAtEdge:(unsigned int)edge tolerance:(double)tolerance;
- (BOOL)isSubview:(id)subview;
- (BOOL)scrollViewIsAnimatingScroll;
- (BOOL)scrollViewShouldBeginScrollingWithPanAtLocation:(CGPoint)location inCoordinateSpace:(id)space velocity:(CGPoint)velocity;
- (BOOL)scrollViewShouldScrollToTop;
- (BOOL)shouldScrollSimultaneouslyWithDescendantScrollView;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis;
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
- (PXScrollViewController)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (void)addFloatingSublayer:(id)sublayer forAxis:(int64_t)axis;
- (void)addSubview:(id)subview;
- (void)addSubviewToScrollView:(id)view;
- (void)applyScrollInfo:(id)info;
- (void)contentInsetAdjustmentBehaviorDidChange;
- (void)decelerationRateDidChange;
- (void)indicatorStyleDidChange;
- (void)performManualChange:(id)change;
- (void)registerObserver:(id)observer;
- (void)scrollRectToVisible:(CGRect)visible avoidingContentInsetEdges:(unint64_t)edges animated:(BOOL)animated;
- (void)scrollToEdge:(unsigned int)edge padding:(UIEdgeInsets)padding animated:(BOOL)animated completionHandler:(id)handler;
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
- (void)scrollViewWillBeginScrollingAnimationTowardsContentEdges:(unint64_t)edges;
- (void)scrollViewWillLayout;
- (void)setActiveEdgeScrollAnimations:(int64_t)animations;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior;
- (void)setDecelerationRate:(int64_t)rate;
- (void)setDraggingPerformsScroll:(BOOL)scroll;
- (void)setIndicatorStyle:(int64_t)style;
- (void)setScrollInfo:(id)info;
- (void)setScrollViewContentBounds:(CGRect)bounds;
- (void)setScrollViewNeedsLayout;
- (void)setShouldScrollSimultaneouslyWithDescendantScrollView:(BOOL)view;
- (void)setTransfersScrollToContainer:(BOOL)container;
- (void)setVisibleOrigin:(CGPoint)origin;
- (void)stopScrollingAndZoomingAnimations;
- (void)unregisterObserver:(id)observer;
- (void)willEndScrollingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
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
  updateDelegate = [(PXScrollViewController *)self updateDelegate];
  [updateDelegate px_scrollControllerDidUpdate:self];

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

  updateDelegate = [(PXScrollViewController *)self updateDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    updateDelegate2 = [(PXScrollViewController *)self updateDelegate];
    [updateDelegate2 px_scrollControllerDidScroll:self];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerContentBoundsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setScrollInfo:(id)info
{
  infoCopy = info;
  if (self->_scrollInfo != infoCopy)
  {
    v7 = infoCopy;
    if (![(PXScrollInfo *)infoCopy isEqual:?])
    {
      v5 = [(PXScrollInfo *)v7 copy];
      scrollInfo = self->_scrollInfo;
      self->_scrollInfo = v5;

      [(PXScrollViewController *)self applyScrollInfo:self->_scrollInfo];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setTransfersScrollToContainer:(BOOL)container
{
  if (self->_transfersScrollToContainer != container)
  {
    self->_transfersScrollToContainer = container;
    [(PXScrollViewController *)self transfersScrollToContainerDidChange];
  }
}

- (void)setDraggingPerformsScroll:(BOOL)scroll
{
  if (self->_draggingPerformsScroll != scroll)
  {
    self->_draggingPerformsScroll = scroll;
    [(PXScrollViewController *)self draggingPerformsScrollDidChange];
  }
}

- (void)contentInsetAdjustmentBehaviorDidChange
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:464 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController contentInsetAdjustmentBehaviorDidChange]", v6}];

  abort();
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior
{
  if (self->_contentInsetAdjustmentBehavior != behavior)
  {
    self->_contentInsetAdjustmentBehavior = behavior;
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

- (void)setIndicatorStyle:(int64_t)style
{
  if (self->_indicatorStyle != style)
  {
    self->_indicatorStyle = style;
    [(PXScrollViewController *)self indicatorStyleDidChange];
  }
}

- (void)decelerationRateDidChange
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:440 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController decelerationRateDidChange]", v6}];

  abort();
}

- (void)setDecelerationRate:(int64_t)rate
{
  if (self->_decelerationRate != rate)
  {
    self->_decelerationRate = rate;
    [(PXScrollViewController *)self decelerationRateDidChange];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = inset.left == self->_contentInset.left && inset.top == self->_contentInset.top && inset.right == self->_contentInset.right;
  if (!v5 || inset.bottom != self->_contentInset.bottom)
  {
    self->_contentInset = inset;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    _observers = [(PXScrollViewController *)self _observers];
    v7 = [_observers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_observers);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 scrollViewControllerContentInsetDidChange:self];
          }
        }

        v8 = [_observers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(PXScrollViewController *)self setNeedsUpdate];
  }
}

- (void)setVisibleOrigin:(CGPoint)origin
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:404 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setVisibleOrigin:]", v7}];

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

- (void)performManualChange:(id)change
{
  isManuallyChanging = self->_isManuallyChanging;
  self->_isManuallyChanging = 1;
  (*(change + 2))(change, self);
  self->_isManuallyChanging = isManuallyChanging;
}

- (void)setShouldScrollSimultaneouslyWithDescendantScrollView:(BOOL)view
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:331 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setShouldScrollSimultaneouslyWithDescendantScrollView:]", v7}];

  abort();
}

- (BOOL)shouldScrollSimultaneouslyWithDescendantScrollView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:327 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController shouldScrollSimultaneouslyWithDescendantScrollView]", v6}];

  abort();
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:323 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollIndicatorFrameForAxis:]", v7}];

  abort();
}

- (void)applyScrollInfo:(id)info
{
  infoCopy = info;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:319 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController applyScrollInfo:]", v8}];

  abort();
}

- (void)setScrollViewContentBounds:(CGRect)bounds
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:315 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setScrollViewContentBounds:]", v7}];

  abort();
}

- (CGRect)scrollViewContentBounds
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:310 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewContentBounds]", v6}];

  abort();
}

- (CGRect)scrollViewTargetRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:306 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewTargetRect]", v6}];

  abort();
}

- (CGRect)scrollViewConstrainedVisibleRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:302 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewConstrainedVisibleRect]", v6}];

  abort();
}

- (CGRect)scrollViewVisibleRectOutsideBounds
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:298 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewVisibleRectOutsideBounds]", v6}];

  abort();
}

- (CGRect)scrollViewVisibleRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:294 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewVisibleRect]", v6}];

  abort();
}

- (CGRect)scrollViewActiveRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:290 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewActiveRect]", v6}];

  abort();
}

- (CGSize)scrollViewReferenceSize
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:286 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewReferenceSize]", v6}];

  abort();
}

- (BOOL)scrollViewIsAnimatingScroll
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:282 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewIsAnimatingScroll]", v6}];

  abort();
}

- (void)scrollViewLayoutIfNeeded
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:278 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollViewLayoutIfNeeded]", v6}];

  abort();
}

- (void)setScrollViewNeedsLayout
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:274 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController setScrollViewNeedsLayout]", v6}];

  abort();
}

- (void)stopScrollingAndZoomingAnimations
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:270 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController stopScrollingAndZoomingAnimations]", v6}];

  abort();
}

- (void)scrollRectToVisible:(CGRect)visible avoidingContentInsetEdges:(unint64_t)edges animated:(BOOL)animated
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:266 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollRectToVisible:avoidingContentInsetEdges:animated:]", v9}];

  abort();
}

- (BOOL)isScrolledAtEdge:(unsigned int)edge tolerance:(double)tolerance
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:258 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isScrolledAtEdge:tolerance:]", v8}];

  abort();
}

- (void)scrollToEdge:(unsigned int)edge padding:(UIEdgeInsets)padding animated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:254 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController scrollToEdge:padding:animated:completionHandler:]", v11}];

  abort();
}

- (void)addSubviewToScrollView:(id)view
{
  viewCopy = view;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:242 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addSubviewToScrollView:]", v8}];

  abort();
}

- (BOOL)isFloatingSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:238 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isFloatingSublayer:]", v8}];

  abort();
}

- (void)addFloatingSublayer:(id)sublayer forAxis:(int64_t)axis
{
  sublayerCopy = sublayer;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:234 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addFloatingSublayer:forAxis:]", v9}];

  abort();
}

- (BOOL)isSubview:(id)subview
{
  subviewCopy = subview;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:230 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController isSubview:]", v8}];

  abort();
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:226 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController addSubview:]", v8}];

  abort();
}

- (void)scrollViewDidEndFocusFastScrolling
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndFocusFastScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidBeginFocusFastScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndScrollingAnimation:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)scrollViewWillBeginScrollingAnimationTowardsContentEdges:(unint64_t)edges
{
  v16 = *MEMORY[0x1E69E9840];
  [(PXScrollViewController *)self setActiveEdgeScrollAnimations:[(PXScrollViewController *)self activeEdgeScrollAnimations]+ 1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _observers = [(PXScrollViewController *)self _observers];
  v6 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scrollViewControllerWillBeginScrollingAnimation:self towardsContentEdges:edges];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 scrollViewControllerShouldScrollToTop:self])
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [_observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerViewDidMoveToWindow:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerViewLayoutMarginsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerDidEndScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willEndScrollingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v23 = *MEMORY[0x1E69E9840];
  [(PXScrollViewController *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _observers = [(PXScrollViewController *)self _observers];
  v13 = [_observers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 scrollViewControllerWillEndScrolling:self withVelocity:offset targetContentOffset:x currentContentOffset:{y, v9, v11}];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [_observers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  _observers = [(PXScrollViewController *)self _observers];
  v4 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewControllerWillBeginScrolling:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)scrollViewShouldBeginScrollingWithPanAtLocation:(CGPoint)location inCoordinateSpace:(id)space velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = location.y;
  v8 = location.x;
  v24 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _observers = [(PXScrollViewController *)self _observers];
  v12 = [_observers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(_observers);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 scrollViewController:self shouldBeginScrollingWithPanAtLocation:spaceCopy inCoordinateSpace:v8 velocity:{v7, x, y}])
        {
          v17 = 0;
          goto LABEL_12;
        }
      }

      v13 = [_observers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollViewController.m" lineNumber:87 description:{@"Method %s is a responsibility of subclass %@", "-[PXScrollViewController hasWindow]", v6}];

  abort();
}

- (void)setActiveEdgeScrollAnimations:(int64_t)animations
{
  if (self->_activeEdgeScrollAnimations != animations)
  {
    self->_activeEdgeScrollAnimations = animations;
    [(PXScrollViewController *)self activeEdgeScrollAnimations];

    kdebug_trace();
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PXScrollViewController *)self _observers];
  [_observers removeObject:observerCopy];

  [(NSHashTable *)self->_willLayoutSubviewsObservers removeObject:observerCopy];
  [(NSHashTable *)self->_didLayoutSubviewsObservers removeObject:observerCopy];
  [(NSHashTable *)self->_didScrollObservers removeObject:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PXScrollViewController *)self _observers];
  [_observers addObject:observerCopy];

  if (objc_opt_respondsToSelector())
  {
    willLayoutSubviewsObservers = self->_willLayoutSubviewsObservers;
    if (!willLayoutSubviewsObservers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_willLayoutSubviewsObservers;
      self->_willLayoutSubviewsObservers = weakObjectsHashTable;

      willLayoutSubviewsObservers = self->_willLayoutSubviewsObservers;
    }

    [(NSHashTable *)willLayoutSubviewsObservers addObject:observerCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    didLayoutSubviewsObservers = self->_didLayoutSubviewsObservers;
    if (!didLayoutSubviewsObservers)
    {
      weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v10 = self->_didLayoutSubviewsObservers;
      self->_didLayoutSubviewsObservers = weakObjectsHashTable2;

      didLayoutSubviewsObservers = self->_didLayoutSubviewsObservers;
    }

    [(NSHashTable *)didLayoutSubviewsObservers addObject:observerCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    didScrollObservers = self->_didScrollObservers;
    if (!didScrollObservers)
    {
      weakObjectsHashTable3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v13 = self->_didScrollObservers;
      self->_didScrollObservers = weakObjectsHashTable3;

      didScrollObservers = self->_didScrollObservers;
    }

    [(NSHashTable *)didScrollObservers addObject:observerCopy];
  }
}

- (PXScrollViewController)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXScrollViewController;
  v3 = [(PXScrollViewController *)&v7 init:frame.origin.x];
  if (v3)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = *(v3 + 16);
    *(v3 + 16) = weakObjectsHashTable;

    *(v3 + 104) = xmmword_1B40724C0;
    v3[48] = 1;
  }

  return v3;
}

+ (id)platformScrollViewControllerForScrollView:(id)view
{
  delegate = [view delegate];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end