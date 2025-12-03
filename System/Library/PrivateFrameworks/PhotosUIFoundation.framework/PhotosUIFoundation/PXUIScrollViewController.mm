@interface PXUIScrollViewController
- (BOOL)hasWindow;
- (BOOL)isBouncing;
- (BOOL)isFloatingSublayer:(id)sublayer;
- (BOOL)isInterruptingScrollWithDirection:(CGPoint *)direction;
- (BOOL)isScrolledAtEdge:(unsigned int)edge tolerance:(double)tolerance;
- (BOOL)isSubview:(id)subview;
- (BOOL)scrollView:(id)view shouldBeginScrollingWithPanAtLocation:(CGPoint)location velocity:(CGPoint)velocity;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis;
- (CGRect)scrollViewActiveRect;
- (CGRect)scrollViewConstrainedVisibleRect;
- (CGRect)scrollViewContentBounds;
- (CGRect)scrollViewTargetRect;
- (CGRect)scrollViewVisibleRect;
- (CGRect)scrollViewVisibleRectOutsideBounds;
- (CGSize)scrollViewContentSize;
- (CGSize)scrollViewReferenceSize;
- (PXUIScrollViewController)initWithFrame:(CGRect)frame;
- (PXUIScrollViewControllerFocusItemProvider)focusItemProvider;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (id)focusItemsForScrollView:(id)view inRect:(CGRect)rect;
- (void)_checkScrollViewDeceleration;
- (void)_scheduleScrollViewDecelerationCheck;
- (void)addFloatingSublayer:(id)sublayer forAxis:(int64_t)axis;
- (void)applyScrollInfo:(id)info;
- (void)contentInsetAdjustmentBehaviorDidChange;
- (void)decelerationRateDidChange;
- (void)indicatorStyleDidChange;
- (void)scrollRectToVisible:(CGRect)visible avoidingContentInsetEdges:(unint64_t)edges animated:(BOOL)animated;
- (void)scrollToEdge:(unsigned int)edge padding:(UIEdgeInsets)padding animated:(BOOL)animated completionHandler:(id)handler;
- (void)scrollView:(id)view willBeginScrollingAnimationTowardsContentEdges:(unint64_t)edges;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setFocusItemProvider:(id)provider;
- (void)setHitTestContentInsets:(UIEdgeInsets)insets;
- (void)setHorizontalInterPageSpacing:(double)spacing;
- (void)setIgnoresSafeAreaInsets:(BOOL)insets;
- (void)setIsScrollEnabled:(BOOL)enabled;
- (void)setScrollViewContentBounds:(CGRect)bounds;
- (void)setScrollingToTop:(BOOL)top;
- (void)setVisibleOrigin:(CGPoint)origin;
- (void)stopScrollingAndZoomingAnimations;
- (void)transfersScrollToContainerDidChange;
@end

@implementation PXUIScrollViewController

- (void)contentInsetAdjustmentBehaviorDidChange
{
  contentInsetAdjustmentBehavior = [(PXScrollViewController *)self contentInsetAdjustmentBehavior];
  v4 = contentInsetAdjustmentBehavior;
  if (contentInsetAdjustmentBehavior)
  {
    if (contentInsetAdjustmentBehavior != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewContentInsetAdjustmentBehavior UIScrollViewContentInsetAdjustmentBehaviorFromPXScrollViewContentInsetAdjustmentBehavior(PXScrollViewContentInsetAdjustmentBehavior)"];
      [currentHandler handleFailureInFunction:v6 file:@"PXUIScrollViewController.m" lineNumber:105 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = 2;
  }

  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView setContentInsetAdjustmentBehavior:v4];
}

- (CGSize)scrollViewReferenceSize
{
  [(_PXUIScrollView *)self->_scrollView bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)scrollViewVisibleRect
{
  [(_PXUIScrollView *)self->_scrollView bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)scrollViewTargetRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)scrollViewConstrainedVisibleRect
{
  [(_PXUIScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView px_constrainedContentOffset:?];
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)scrollViewContentBounds
{
  [(_PXUIScrollView *)self->_scrollView contentInset];
  v4 = -v3;
  [(_PXUIScrollView *)self->_scrollView contentInset];
  v6 = -v5;
  [(PXUIScrollViewController *)self scrollViewContentSize];
  v8 = v7;
  v10 = v9;
  [(_PXUIScrollView *)self->_scrollView contentInset];
  v12 = -v11;
  v15 = v8 - (-v13 - v14);
  v17 = v10 - (v12 - v16);
  v18 = v4;
  v19 = v6;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGSize)scrollViewContentSize
{
  [(_PXUIScrollView *)self->_scrollView contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)stopScrollingAndZoomingAnimations
{
  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView stopScrollingAndZooming];
}

- (BOOL)isBouncing
{
  px_isBouncing = [(UIScrollView *)self->_scrollView px_isBouncing];
  if (px_isBouncing)
  {
    if ([(PXUIScrollViewController *)self isDragging]|| [(PXUIScrollViewController *)self isDecelerating])
    {
      LOBYTE(px_isBouncing) = 1;
    }

    else
    {

      LOBYTE(px_isBouncing) = [(PXUIScrollViewController *)self isTracking];
    }
  }

  return px_isBouncing;
}

- (CGRect)scrollViewVisibleRectOutsideBounds
{
  scrollView = [(PXUIScrollViewController *)self scrollView];
  if (([scrollView clipsToBounds] & 1) == 0)
  {
    while (1)
    {
      superview = [scrollView superview];

      if (!superview)
      {
        break;
      }

      superview2 = [scrollView superview];

      scrollView = superview2;
      if ([superview2 clipsToBounds])
      {
        goto LABEL_5;
      }
    }
  }

  superview2 = scrollView;
LABEL_5:
  scrollView2 = [(PXUIScrollViewController *)self scrollView];
  [superview2 bounds];
  [scrollView2 convertRect:superview2 fromView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (PXUIScrollViewControllerFocusItemProvider)focusItemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_focusItemProvider);

  return WeakRetained;
}

- (id)focusItemsForScrollView:(id)view inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  focusItemProvider = [(PXUIScrollViewController *)self focusItemProvider];
  v10 = focusItemProvider;
  if (focusItemProvider)
  {
    v11 = [focusItemProvider focusItemsForScrollViewController:self inRect:{x, y, width, height}];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (void)setFocusItemProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_focusItemProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_focusItemProvider, obj);
    if (obj)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    [(_PXUIScrollView *)self->_scrollView setFocusItemProvider:selfCopy];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  scrollViewShouldScrollToTop = [(PXScrollViewController *)self scrollViewShouldScrollToTop];
  if (scrollViewShouldScrollToTop)
  {
    [(PXUIScrollViewController *)self setScrollingToTop:1];
  }

  return scrollViewShouldScrollToTop;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_isScrollViewDecelerating)
  {
    self->_isScrollViewDecelerating = 0;
    [(PXScrollViewController *)self scrollViewDidEndScrolling];
  }
}

- (void)_checkScrollViewDeceleration
{
  if (self->_isScrollViewDecelerating)
  {
    if (([(_PXUIScrollView *)self->_scrollView isDecelerating]& 1) != 0)
    {

      [(PXUIScrollViewController *)self _scheduleScrollViewDecelerationCheck];
    }

    else
    {
      [(PXUIScrollViewController *)self scrollViewDidEndDecelerating:self->_scrollView];
      if (_checkScrollViewDeceleration_onceToken != -1)
      {

        dispatch_once(&_checkScrollViewDeceleration_onceToken, &__block_literal_global_10228);
      }
    }
  }
}

void __56__PXUIScrollViewController__checkScrollViewDeceleration__block_invoke()
{
  v0 = dispatch_get_global_queue(9, 0);
  dispatch_async(v0, &__block_literal_global_5_10230);
}

void __56__PXUIScrollViewController__checkScrollViewDeceleration__block_invoke_2()
{
  v0 = PFUIGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B3F73000, v0, OS_LOG_TYPE_FAULT, "Working around rdar://78312989", v1, 2u);
  }
}

- (void)_scheduleScrollViewDecelerationCheck
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 500000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PXUIScrollViewController__scheduleScrollViewDecelerationCheck__block_invoke;
  v3[3] = &unk_1E7BB8858;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __64__PXUIScrollViewController__scheduleScrollViewDecelerationCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkScrollViewDeceleration];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (decelerate)
  {
    self->_isScrollViewDecelerating = 1;
    [(PXUIScrollViewController *)self _scheduleScrollViewDecelerationCheck];
  }

  else
  {
    [(PXScrollViewController *)self scrollViewDidEndScrolling];
  }

  self->_isInterruptingDeceleration = 0;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  _ZF = x == *MEMORY[0x1E695EFF8] && y == *(MEMORY[0x1E695EFF8] + 8);
  if (_ZF && self->_scrollViewWasDeceleratingWhenDragBegan)
  {
    self->_isInterruptingDeceleration = 1;
    lastDragVelocity = self->_lastDragVelocity;
    v11 = vcgtzq_f64(lastDragVelocity);
    __asm { FMOV            V2.2D, #-1.0 }

    v16 = vandq_s8(_Q2, vcltzq_f64(lastDragVelocity));
    __asm { FMOV            V2.2D, #1.0 }

    self->_interruptedDecelerationDirection = vbslq_s8(v11, _Q2, v16);
  }

  [(PXScrollViewController *)self willEndScrollingWithVelocity:offset targetContentOffset:x, y];
  self->_lastDragVelocity.x = x;
  self->_lastDragVelocity.y = y;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_scrollViewWasDeceleratingWhenDragBegan = self->_isScrollViewDecelerating;
  self->_isScrollViewDecelerating = 0;
  [(PXScrollViewController *)self scrollViewWillBeginScrolling];
}

- (void)scrollView:(id)view willBeginScrollingAnimationTowardsContentEdges:(unint64_t)edges
{
  [(PXUIScrollViewController *)self setScrollingToTop:0];

  [(PXScrollViewController *)self scrollViewWillBeginScrollingAnimationTowardsContentEdges:edges];
}

- (BOOL)scrollView:(id)view shouldBeginScrollingWithPanAtLocation:(CGPoint)location velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = location.y;
  v8 = location.x;
  selfCopy = self;
  scrollView = [(PXUIScrollViewController *)self scrollView];
  LOBYTE(selfCopy) = [(PXScrollViewController *)selfCopy scrollViewShouldBeginScrollingWithPanAtLocation:scrollView inCoordinateSpace:v8 velocity:v7, x, y];

  return selfCopy;
}

- (BOOL)isInterruptingScrollWithDirection:(CGPoint *)direction
{
  isInterruptingDeceleration = self->_isInterruptingDeceleration;
  if (direction && self->_isInterruptingDeceleration)
  {
    *direction = self->_interruptedDecelerationDirection;
  }

  return isInterruptingDeceleration;
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis
{
  [(_PXUIScrollView *)self->_scrollView scrollIndicatorFrameForAxis:axis];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)applyScrollInfo:(id)info
{
  infoCopy = info;
  axis = [infoCopy axis];
  v6 = (axis >> 2) & 1;
  [(_PXUIScrollView *)self->_scrollView setAlwaysBounceHorizontal:(axis >> 1) & 1];
  [(_PXUIScrollView *)self->_scrollView setAlwaysBounceVertical:v6];
  -[_PXUIScrollView setPagingEnabled:](self->_scrollView, "setPagingEnabled:", [infoCopy isPagingEnabled]);
  scrollView = self->_scrollView;
  [infoCopy interpageSpacing];
  [(_PXUIScrollView *)scrollView _setInterpageSpacing:?];
  v8 = self->_scrollView;
  [infoCopy pagingOrigin];
  v10 = v9;
  v12 = v11;

  [(_PXUIScrollView *)v8 setPagingOriginOffset:v10, v12];
}

- (void)setHorizontalInterPageSpacing:(double)spacing
{
  [(_PXUIScrollView *)self->_scrollView _interpageSpacing];
  if (v5 != spacing)
  {
    [(_PXUIScrollView *)self->_scrollView _interpageSpacing];
    [(_PXUIScrollView *)self->_scrollView _setInterpageSpacing:spacing];
    isPagingEnabled = [(_PXUIScrollView *)self->_scrollView isPagingEnabled];
    if (spacing > 0.0 && (isPagingEnabled & 1) == 0)
    {
      scrollView = self->_scrollView;

      [(_PXUIScrollView *)scrollView setPagingEnabled:1];
    }
  }
}

- (void)setHitTestContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(_PXUIScrollView *)self->_scrollView hitTestContentInsets];
  v13 = v11 == left && v8 == top && v10 == right;
  if (!v13 || v9 != bottom)
  {
    [(_PXUIScrollView *)self->_scrollView setHitTestContentInsets:top, left, bottom, right];
    v14 = top + self->_defaultAutoScrollTouchInsets.top;
    v15 = left + self->_defaultAutoScrollTouchInsets.left;
    v16 = bottom + self->_defaultAutoScrollTouchInsets.bottom;
    scrollView = self->_scrollView;
    v18 = right + self->_defaultAutoScrollTouchInsets.right;

    [(_PXUIScrollView *)scrollView _setAutoScrollTouchInsets:v14, v15, v16, v18];
  }
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  [(_PXUIScrollView *)self->_scrollView verticalScrollIndicatorInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  [(_PXUIScrollView *)self->_scrollView horizontalScrollIndicatorInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setIsScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PXUIScrollViewController *)self isScrollEnabled]!= enabled)
  {
    scrollView = self->_scrollView;

    [(_PXUIScrollView *)scrollView setScrollEnabled:enabledCopy];
  }
}

- (void)setScrollViewContentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PXUIScrollViewController *)self scrollViewContentBounds];
  v20.origin.x = v8;
  v20.origin.y = v9;
  v20.size.width = v10;
  v20.size.height = v11;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectEqualToRect(v17, v20))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = -CGRectGetMinY(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = -CGRectGetMinX(v19);
    [(_PXUIScrollView *)self->_scrollView contentInset];
    v15 = v14;
    [(_PXUIScrollView *)self->_scrollView contentInset];
    [(_PXUIScrollView *)self->_scrollView setContentInset:v12, v13, v15];
    [(_PXUIScrollView *)self->_scrollView setContentSize:width + x, height + y];

    [(PXScrollViewController *)self scrollViewContentBoundsDidChange];
  }
}

- (CGRect)scrollViewActiveRect
{
  [(_PXUIScrollView *)self->_scrollView bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self->_scrollView];

  if (v11)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v17 = CGRectInset(v16, width * -0.5, height * -0.5);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)transfersScrollToContainerDidChange
{
  transfersScrollToContainer = [(PXScrollViewController *)self transfersScrollToContainer];
  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView _setTransfersScrollToContainer:transfersScrollToContainer];
}

- (void)indicatorStyleDidChange
{
  indicatorStyle = [(PXScrollViewController *)self indicatorStyle];
  if (indicatorStyle >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewIndicatorStyle _UIScrollViewIndicatorStyleFromPXScrollViewIndicatorStyle(PXScrollViewIndicatorStyle)"];
    [currentHandler handleFailureInFunction:v6 file:@"PXUIScrollViewController.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = indicatorStyle;
  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView setIndicatorStyle:v4];
}

- (void)decelerationRateDidChange
{
  decelerationRate = [(PXScrollViewController *)self decelerationRate];
  if (decelerationRate)
  {
    if (decelerationRate != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewDecelerationRate UIScrollViewDecelerationRateFromPXScrollViewDecelerationRate(PXScrollViewDecelerationRate)"];
      [currentHandler handleFailureInFunction:v7 file:@"PXUIScrollViewController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = MEMORY[0x1E69DE3A0];
  }

  else
  {
    v4 = MEMORY[0x1E69DE3A8];
  }

  v5 = *v4;
  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView setDecelerationRate:v5];
}

- (void)scrollRectToVisible:(CGRect)visible avoidingContentInsetEdges:(unint64_t)edges animated:(BOOL)animated
{
  animatedCopy = animated;
  edgesCopy = edges;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  [(PXScrollViewController *)self contentInset];
  v16 = -v15;
  if ((edgesCopy & 1) == 0)
  {
    v16 = -0.0;
  }

  v17 = -v12;
  if ((edgesCopy & 2) == 0)
  {
    v17 = -0.0;
  }

  v18 = -v13;
  if ((edgesCopy & 4) == 0)
  {
    v18 = -0.0;
  }

  v19 = -v14;
  if ((edgesCopy & 8) == 0)
  {
    v19 = -0.0;
  }

  v20 = x + v17;
  v21 = y + v16;
  v22 = width - (v17 + v19);
  v23 = height - (v16 + v18);
  scrollView = [(PXUIScrollViewController *)self scrollView];
  [scrollView bounds];
  v24 = v48.origin.x;
  v25 = v48.origin.y;
  v26 = v48.size.width;
  v27 = v48.size.height;
  v57.origin.x = v20;
  v57.origin.y = v21;
  v57.size.width = v22;
  v57.size.height = v23;
  if (!CGRectContainsRect(v48, v57))
  {
    v49.origin.x = v20;
    v28 = *MEMORY[0x1E695EFF8];
    rect_16 = *(MEMORY[0x1E695EFF8] + 8);
    rect_24 = v23;
    v49.origin.y = v21;
    v29 = v49.origin.x;
    v49.size.width = v22;
    v30 = v49.origin.y;
    v49.size.height = v23;
    v31 = v49.size.width;
    rect_8a = CGRectGetMaxX(v49);
    v50.origin.x = v24;
    v50.origin.y = v25;
    v50.size.width = v26;
    v50.size.height = v27;
    v32 = rect_8a - CGRectGetMaxX(v50);
    if (v28 < v32)
    {
      v28 = v32;
    }

    v51.origin.x = v29;
    v51.origin.y = v30;
    v51.size.width = v31;
    v51.size.height = rect_24;
    rect_8b = CGRectGetMinX(v51);
    v52.origin.x = v24;
    v52.origin.y = v25;
    v52.size.width = v26;
    v52.size.height = v27;
    v33 = rect_8b - CGRectGetMinX(v52);
    if (v28 < v33)
    {
      v33 = v28;
    }

    rect_8 = v33;
    v53.origin.x = v29;
    v53.origin.y = v30;
    v53.size.width = v31;
    v53.size.height = rect_24;
    MaxY = CGRectGetMaxY(v53);
    v54.origin.x = v24;
    v54.origin.y = v25;
    v54.size.width = v26;
    v54.size.height = v27;
    v35 = MaxY - CGRectGetMaxY(v54);
    if (rect_16 >= v35)
    {
      v36 = rect_16;
    }

    else
    {
      v36 = v35;
    }

    v55.origin.x = v29;
    v55.origin.y = v30;
    v55.size.width = v31;
    v55.size.height = rect_24;
    MinY = CGRectGetMinY(v55);
    v56.origin.x = v24;
    v56.origin.y = v25;
    v56.size.width = v26;
    v56.size.height = v27;
    v38 = MinY - CGRectGetMinY(v56);
    if (v36 >= v38)
    {
      v36 = v38;
    }

    [scrollView contentOffset];
    [scrollView px_scrollToContentOffset:animatedCopy animated:{v39 + rect_8, v40 + v36}];
  }
}

- (BOOL)isScrolledAtEdge:(unsigned int)edge tolerance:(double)tolerance
{
  v5 = *&edge;
  scrollView = [(PXUIScrollViewController *)self scrollView];
  LOBYTE(v5) = [scrollView px_isScrolledAtEdge:v5 tolerance:tolerance];

  return v5;
}

- (void)scrollToEdge:(unsigned int)edge padding:(UIEdgeInsets)padding animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v11 = *&edge;
  handlerCopy = handler;
  [(UIScrollView *)self->_scrollView px_contentOffsetForEdge:v11 padding:top, left, bottom, right];
  [(UIScrollView *)self->_scrollView px_scrollToContentOffset:animatedCopy animated:?];
  v13 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v13 = handlerCopy;
  }
}

- (void)setScrollingToTop:(BOOL)top
{
  if (self->_isScrollingToTop != top)
  {
    self->_isScrollingToTop = top;
    if (top)
    {
      [(PXScrollViewController *)self scrollViewWillBeginScrollingAnimationTowardsContentEdges:1];
    }

    else
    {
      [(PXScrollViewController *)self scrollViewDidEndScrollingAnimation];
    }
  }
}

- (void)setVisibleOrigin:(CGPoint)origin
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PXUIScrollViewController_setVisibleOrigin___block_invoke;
  v3[3] = &unk_1E7BB6C08;
  v3[4] = self;
  originCopy = origin;
  [(PXScrollViewController *)self performManualChange:v3];
}

void __45__PXUIScrollViewController_setVisibleOrigin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentOffset:{*(a1 + 40), *(a1 + 48)}];
}

- (BOOL)isFloatingSublayer:(id)sublayer
{
  superlayer = [sublayer superlayer];
  layer = [(_PXUIScrollView *)self->_scrollView layer];
  LOBYTE(self) = superlayer == layer;

  return self;
}

- (void)addFloatingSublayer:(id)sublayer forAxis:(int64_t)axis
{
  scrollView = self->_scrollView;
  sublayerCopy = sublayer;
  layer = [(_PXUIScrollView *)scrollView layer];
  [layer addSublayer:sublayerCopy];
}

- (BOOL)isSubview:(id)subview
{
  superview = [subview superview];
  LOBYTE(self) = superview == self->_scrollView;

  return self;
}

- (BOOL)hasWindow
{
  window = [(_PXUIScrollView *)self->_scrollView window];
  v3 = window != 0;

  return v3;
}

- (void)setIgnoresSafeAreaInsets:(BOOL)insets
{
  if (self->_ignoresSafeAreaInsets != insets)
  {
    self->_ignoresSafeAreaInsets = insets;
    [(_PXUIScrollView *)self->_scrollView setIgnoresSafeAreaInsets:?];
    scrollView = self->_scrollView;

    [(_PXUIScrollView *)scrollView safeAreaInsetsDidChange];
  }
}

- (PXUIScrollViewController)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = PXUIScrollViewController;
  v7 = [(PXScrollViewController *)&v17 initWithFrame:?];
  if (v7)
  {
    height = [[_PXUIScrollView alloc] initWithFrame:x, y, width, height];
    scrollView = v7->_scrollView;
    v7->_scrollView = height;

    v10 = v7->_scrollView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIScrollView *)v10 px_setPocketColorForAllEdges:systemBackgroundColor];

    [(_PXUIScrollView *)v7->_scrollView _setIndicatorInsetAdjustmentBehavior:1];
    [(_PXUIScrollView *)v7->_scrollView px_setDelegate:v7];
    [(_PXUIScrollView *)v7->_scrollView setDelegate:v7];
    [(PXUIScrollViewController *)v7 contentInsetAdjustmentBehaviorDidChange];
    [(_PXUIScrollView *)v7->_scrollView _autoScrollTouchInsets];
    v7->_defaultAutoScrollTouchInsets.top = v12;
    v7->_defaultAutoScrollTouchInsets.left = v13;
    v7->_defaultAutoScrollTouchInsets.bottom = v14;
    v7->_defaultAutoScrollTouchInsets.right = v15;
  }

  return v7;
}

@end