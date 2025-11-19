@interface PXUIScrollViewController
- (BOOL)hasWindow;
- (BOOL)isBouncing;
- (BOOL)isFloatingSublayer:(id)a3;
- (BOOL)isInterruptingScrollWithDirection:(CGPoint *)a3;
- (BOOL)isScrolledAtEdge:(unsigned int)a3 tolerance:(double)a4;
- (BOOL)isSubview:(id)a3;
- (BOOL)scrollView:(id)a3 shouldBeginScrollingWithPanAtLocation:(CGPoint)a4 velocity:(CGPoint)a5;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3;
- (CGRect)scrollViewActiveRect;
- (CGRect)scrollViewConstrainedVisibleRect;
- (CGRect)scrollViewContentBounds;
- (CGRect)scrollViewTargetRect;
- (CGRect)scrollViewVisibleRect;
- (CGRect)scrollViewVisibleRectOutsideBounds;
- (CGSize)scrollViewContentSize;
- (CGSize)scrollViewReferenceSize;
- (PXUIScrollViewController)initWithFrame:(CGRect)a3;
- (PXUIScrollViewControllerFocusItemProvider)focusItemProvider;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (id)focusItemsForScrollView:(id)a3 inRect:(CGRect)a4;
- (void)_checkScrollViewDeceleration;
- (void)_scheduleScrollViewDecelerationCheck;
- (void)addFloatingSublayer:(id)a3 forAxis:(int64_t)a4;
- (void)applyScrollInfo:(id)a3;
- (void)contentInsetAdjustmentBehaviorDidChange;
- (void)decelerationRateDidChange;
- (void)indicatorStyleDidChange;
- (void)scrollRectToVisible:(CGRect)a3 avoidingContentInsetEdges:(unint64_t)a4 animated:(BOOL)a5;
- (void)scrollToEdge:(unsigned int)a3 padding:(UIEdgeInsets)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)scrollView:(id)a3 willBeginScrollingAnimationTowardsContentEdges:(unint64_t)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setFocusItemProvider:(id)a3;
- (void)setHitTestContentInsets:(UIEdgeInsets)a3;
- (void)setHorizontalInterPageSpacing:(double)a3;
- (void)setIgnoresSafeAreaInsets:(BOOL)a3;
- (void)setIsScrollEnabled:(BOOL)a3;
- (void)setScrollViewContentBounds:(CGRect)a3;
- (void)setScrollingToTop:(BOOL)a3;
- (void)setVisibleOrigin:(CGPoint)a3;
- (void)stopScrollingAndZoomingAnimations;
- (void)transfersScrollToContainerDidChange;
@end

@implementation PXUIScrollViewController

- (void)contentInsetAdjustmentBehaviorDidChange
{
  v3 = [(PXScrollViewController *)self contentInsetAdjustmentBehavior];
  v4 = v3;
  if (v3)
  {
    if (v3 != 1)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewContentInsetAdjustmentBehavior UIScrollViewContentInsetAdjustmentBehaviorFromPXScrollViewContentInsetAdjustmentBehavior(PXScrollViewContentInsetAdjustmentBehavior)"];
      [v5 handleFailureInFunction:v6 file:@"PXUIScrollViewController.m" lineNumber:105 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = 2;
  }

  v7 = [(PXUIScrollViewController *)self scrollView];
  [v7 setContentInsetAdjustmentBehavior:v4];
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
  v2 = [(PXUIScrollViewController *)self scrollView];
  [v2 stopScrollingAndZooming];
}

- (BOOL)isBouncing
{
  v3 = [(UIScrollView *)self->_scrollView px_isBouncing];
  if (v3)
  {
    if ([(PXUIScrollViewController *)self isDragging]|| [(PXUIScrollViewController *)self isDecelerating])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(PXUIScrollViewController *)self isTracking];
    }
  }

  return v3;
}

- (CGRect)scrollViewVisibleRectOutsideBounds
{
  v3 = [(PXUIScrollViewController *)self scrollView];
  if (([v3 clipsToBounds] & 1) == 0)
  {
    while (1)
    {
      v5 = [v3 superview];

      if (!v5)
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
      if ([v4 clipsToBounds])
      {
        goto LABEL_5;
      }
    }
  }

  v4 = v3;
LABEL_5:
  v6 = [(PXUIScrollViewController *)self scrollView];
  [v4 bounds];
  [v6 convertRect:v4 fromView:?];
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

- (id)focusItemsForScrollView:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(PXUIScrollViewController *)self focusItemProvider];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 focusItemsForScrollViewController:self inRect:{x, y, width, height}];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (void)setFocusItemProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_focusItemProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_focusItemProvider, obj);
    if (obj)
    {
      v5 = self;
    }

    else
    {
      v5 = 0;
    }

    [(_PXUIScrollView *)self->_scrollView setFocusItemProvider:v5];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = [(PXScrollViewController *)self scrollViewShouldScrollToTop];
  if (v4)
  {
    [(PXUIScrollViewController *)self setScrollingToTop:1];
  }

  return v4;
}

- (void)scrollViewDidEndDecelerating:(id)a3
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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (a4)
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v18 = a3;
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

  [(PXScrollViewController *)self willEndScrollingWithVelocity:a5 targetContentOffset:x, y];
  self->_lastDragVelocity.x = x;
  self->_lastDragVelocity.y = y;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->_scrollViewWasDeceleratingWhenDragBegan = self->_isScrollViewDecelerating;
  self->_isScrollViewDecelerating = 0;
  [(PXScrollViewController *)self scrollViewWillBeginScrolling];
}

- (void)scrollView:(id)a3 willBeginScrollingAnimationTowardsContentEdges:(unint64_t)a4
{
  [(PXUIScrollViewController *)self setScrollingToTop:0];

  [(PXScrollViewController *)self scrollViewWillBeginScrollingAnimationTowardsContentEdges:a4];
}

- (BOOL)scrollView:(id)a3 shouldBeginScrollingWithPanAtLocation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = self;
  v10 = [(PXUIScrollViewController *)self scrollView];
  LOBYTE(v9) = [(PXScrollViewController *)v9 scrollViewShouldBeginScrollingWithPanAtLocation:v10 inCoordinateSpace:v8 velocity:v7, x, y];

  return v9;
}

- (BOOL)isInterruptingScrollWithDirection:(CGPoint *)a3
{
  isInterruptingDeceleration = self->_isInterruptingDeceleration;
  if (a3 && self->_isInterruptingDeceleration)
  {
    *a3 = self->_interruptedDecelerationDirection;
  }

  return isInterruptingDeceleration;
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3
{
  [(_PXUIScrollView *)self->_scrollView scrollIndicatorFrameForAxis:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)applyScrollInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 axis];
  v6 = (v5 >> 2) & 1;
  [(_PXUIScrollView *)self->_scrollView setAlwaysBounceHorizontal:(v5 >> 1) & 1];
  [(_PXUIScrollView *)self->_scrollView setAlwaysBounceVertical:v6];
  -[_PXUIScrollView setPagingEnabled:](self->_scrollView, "setPagingEnabled:", [v4 isPagingEnabled]);
  scrollView = self->_scrollView;
  [v4 interpageSpacing];
  [(_PXUIScrollView *)scrollView _setInterpageSpacing:?];
  v8 = self->_scrollView;
  [v4 pagingOrigin];
  v10 = v9;
  v12 = v11;

  [(_PXUIScrollView *)v8 setPagingOriginOffset:v10, v12];
}

- (void)setHorizontalInterPageSpacing:(double)a3
{
  [(_PXUIScrollView *)self->_scrollView _interpageSpacing];
  if (v5 != a3)
  {
    [(_PXUIScrollView *)self->_scrollView _interpageSpacing];
    [(_PXUIScrollView *)self->_scrollView _setInterpageSpacing:a3];
    v6 = [(_PXUIScrollView *)self->_scrollView isPagingEnabled];
    if (a3 > 0.0 && (v6 & 1) == 0)
    {
      scrollView = self->_scrollView;

      [(_PXUIScrollView *)scrollView setPagingEnabled:1];
    }
  }
}

- (void)setHitTestContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setIsScrollEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PXUIScrollViewController *)self isScrollEnabled]!= a3)
  {
    scrollView = self->_scrollView;

    [(_PXUIScrollView *)scrollView setScrollEnabled:v3];
  }
}

- (void)setScrollViewContentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(PXScrollViewController *)self transfersScrollToContainer];
  v4 = [(PXUIScrollViewController *)self scrollView];
  [v4 _setTransfersScrollToContainer:v3];
}

- (void)indicatorStyleDidChange
{
  v3 = [(PXScrollViewController *)self indicatorStyle];
  if (v3 >= 3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewIndicatorStyle _UIScrollViewIndicatorStyleFromPXScrollViewIndicatorStyle(PXScrollViewIndicatorStyle)"];
    [v5 handleFailureInFunction:v6 file:@"PXUIScrollViewController.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = v3;
  v7 = [(PXUIScrollViewController *)self scrollView];
  [v7 setIndicatorStyle:v4];
}

- (void)decelerationRateDidChange
{
  v3 = [(PXScrollViewController *)self decelerationRate];
  if (v3)
  {
    if (v3 != 1)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIScrollViewDecelerationRate UIScrollViewDecelerationRateFromPXScrollViewDecelerationRate(PXScrollViewDecelerationRate)"];
      [v6 handleFailureInFunction:v7 file:@"PXUIScrollViewController.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = MEMORY[0x1E69DE3A0];
  }

  else
  {
    v4 = MEMORY[0x1E69DE3A8];
  }

  v5 = *v4;
  v8 = [(PXUIScrollViewController *)self scrollView];
  [v8 setDecelerationRate:v5];
}

- (void)scrollRectToVisible:(CGRect)a3 avoidingContentInsetEdges:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXScrollViewController *)self contentInset];
  v16 = -v15;
  if ((v6 & 1) == 0)
  {
    v16 = -0.0;
  }

  v17 = -v12;
  if ((v6 & 2) == 0)
  {
    v17 = -0.0;
  }

  v18 = -v13;
  if ((v6 & 4) == 0)
  {
    v18 = -0.0;
  }

  v19 = -v14;
  if ((v6 & 8) == 0)
  {
    v19 = -0.0;
  }

  v20 = x + v17;
  v21 = y + v16;
  v22 = width - (v17 + v19);
  v23 = height - (v16 + v18);
  v46 = [(PXUIScrollViewController *)self scrollView];
  [v46 bounds];
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

    [v46 contentOffset];
    [v46 px_scrollToContentOffset:v5 animated:{v39 + rect_8, v40 + v36}];
  }
}

- (BOOL)isScrolledAtEdge:(unsigned int)a3 tolerance:(double)a4
{
  v5 = *&a3;
  v6 = [(PXUIScrollViewController *)self scrollView];
  LOBYTE(v5) = [v6 px_isScrolledAtEdge:v5 tolerance:a4];

  return v5;
}

- (void)scrollToEdge:(unsigned int)a3 padding:(UIEdgeInsets)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11 = *&a3;
  v14 = a6;
  [(UIScrollView *)self->_scrollView px_contentOffsetForEdge:v11 padding:top, left, bottom, right];
  [(UIScrollView *)self->_scrollView px_scrollToContentOffset:v6 animated:?];
  v13 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
    v13 = v14;
  }
}

- (void)setScrollingToTop:(BOOL)a3
{
  if (self->_isScrollingToTop != a3)
  {
    self->_isScrollingToTop = a3;
    if (a3)
    {
      [(PXScrollViewController *)self scrollViewWillBeginScrollingAnimationTowardsContentEdges:1];
    }

    else
    {
      [(PXScrollViewController *)self scrollViewDidEndScrollingAnimation];
    }
  }
}

- (void)setVisibleOrigin:(CGPoint)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PXUIScrollViewController_setVisibleOrigin___block_invoke;
  v3[3] = &unk_1E7BB6C08;
  v3[4] = self;
  v4 = a3;
  [(PXScrollViewController *)self performManualChange:v3];
}

void __45__PXUIScrollViewController_setVisibleOrigin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentOffset:{*(a1 + 40), *(a1 + 48)}];
}

- (BOOL)isFloatingSublayer:(id)a3
{
  v4 = [a3 superlayer];
  v5 = [(_PXUIScrollView *)self->_scrollView layer];
  LOBYTE(self) = v4 == v5;

  return self;
}

- (void)addFloatingSublayer:(id)a3 forAxis:(int64_t)a4
{
  scrollView = self->_scrollView;
  v5 = a3;
  v6 = [(_PXUIScrollView *)scrollView layer];
  [v6 addSublayer:v5];
}

- (BOOL)isSubview:(id)a3
{
  v4 = [a3 superview];
  LOBYTE(self) = v4 == self->_scrollView;

  return self;
}

- (BOOL)hasWindow
{
  v2 = [(_PXUIScrollView *)self->_scrollView window];
  v3 = v2 != 0;

  return v3;
}

- (void)setIgnoresSafeAreaInsets:(BOOL)a3
{
  if (self->_ignoresSafeAreaInsets != a3)
  {
    self->_ignoresSafeAreaInsets = a3;
    [(_PXUIScrollView *)self->_scrollView setIgnoresSafeAreaInsets:?];
    scrollView = self->_scrollView;

    [(_PXUIScrollView *)scrollView safeAreaInsetsDidChange];
  }
}

- (PXUIScrollViewController)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = PXUIScrollViewController;
  v7 = [(PXScrollViewController *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [[_PXUIScrollView alloc] initWithFrame:x, y, width, height];
    scrollView = v7->_scrollView;
    v7->_scrollView = v8;

    v10 = v7->_scrollView;
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIScrollView *)v10 px_setPocketColorForAllEdges:v11];

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