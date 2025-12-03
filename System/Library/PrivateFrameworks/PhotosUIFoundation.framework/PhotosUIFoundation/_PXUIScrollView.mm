@interface _PXUIScrollView
+ (double)_downGesturesAngularToleranceInDegrees;
+ (double)_horizontalGesturesAngularToleranceInDegrees;
+ (double)_upGesturesAngularToleranceInDegrees;
+ (void)_registerDefaultsIfNecessary;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)pagingOriginOffset;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis;
- (PXUIScrollViewDelegate)px_delegate;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)safeAreaInsets;
- (_PXUIScrollView)initWithFrame:(CGRect)frame;
- (_PXUIScrollViewFocusItemProvider)focusItemProvider;
- (id)focusItemsInRect:(CGRect)rect;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updatePagingOrigin;
- (void)addSubview:(id)subview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)px_addSubview:(id)subview;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDeferContentOffsetUpdates:(BOOL)updates;
- (void)setIsFocusFastScrolling:(BOOL)scrolling;
- (void)setPagingOriginOffset:(CGPoint)offset;
- (void)willRemoveSubview:(id)subview;
@end

@implementation _PXUIScrollView

- (UIEdgeInsets)safeAreaInsets
{
  if ([(_PXUIScrollView *)self ignoresSafeAreaInsets])
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PXUIScrollView;
    [(_PXUIScrollView *)&v7 safeAreaInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)layoutSubviews
{
  px_delegate = [(_PXUIScrollView *)self px_delegate];
  [px_delegate scrollViewWillLayoutSubviews:self];

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 layoutSubviews];
  px_delegate2 = [(_PXUIScrollView *)self px_delegate];
  [px_delegate2 scrollViewDidLayoutSubviews:self];
}

- (PXUIScrollViewDelegate)px_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_px_delegate);

  return WeakRetained;
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

- (CGPoint)pagingOriginOffset
{
  x = self->_pagingOriginOffset.x;
  y = self->_pagingOriginOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_PXUIScrollViewFocusItemProvider)focusItemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_focusItemProvider);

  return WeakRetained;
}

- (void)setIsFocusFastScrolling:(BOOL)scrolling
{
  if (self->_isFocusFastScrolling != scrolling)
  {
    scrollingCopy = scrolling;
    self->_isFocusFastScrolling = scrolling;
    px_delegate = [(_PXUIScrollView *)self px_delegate];
    v7 = px_delegate;
    if (scrollingCopy)
    {
      [px_delegate scrollViewDidBeginFocusFastScrolling:self];
    }

    else
    {
      [px_delegate scrollViewDidEndFocusFastScrolling:self];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if ([(_PXUIScrollView *)self shouldScrollSimultaneouslyWithDescendantScrollView])
  {
    panGestureRecognizer = [(_PXUIScrollView *)self panGestureRecognizer];
    if (panGestureRecognizer == recognizerCopy)
    {
      v15 = 0;
      v11 = [gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:&v15];
      v12 = v15;
      v9 = v12;
      if (v11)
      {
        px_scrollableAxis = [v12 px_scrollableAxis];
        if (px_scrollableAxis != [(UIScrollView *)self px_scrollableAxis])
        {
          v10 = [v9 isDescendantOfView:self];
          goto LABEL_8;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(_PXUIScrollView *)self panGestureRecognizer];

  if (panGestureRecognizer != beginCopy)
  {
    goto LABEL_2;
  }

  [panGestureRecognizer velocityInView:self];
  v9 = v8;
  v11 = v10;
  if (![(_PXUIScrollView *)self shouldScrollSimultaneouslyWithDescendantScrollView])
  {
    [panGestureRecognizer locationInView:self];
    v18 = v17;
    v20 = v19;
    px_delegate = [(_PXUIScrollView *)self px_delegate];
    v6 = [px_delegate scrollView:self shouldBeginScrollingWithPanAtLocation:v18 velocity:{v20, v9, v11}];

    goto LABEL_3;
  }

  px_scrollableAxis = [(UIScrollView *)self px_scrollableAxis];
  v13 = atan2(v11, v9) * 180.0 / 3.14159265;
  if (px_scrollableAxis == 2)
  {
    +[_PXUIScrollView _upGesturesAngularToleranceInDegrees];
    if (fabs(v13 + 90.0) > v22)
    {
      +[_PXUIScrollView _downGesturesAngularToleranceInDegrees];
      v16 = v13 + -90.0;
LABEL_12:
      if (fabs(v16) > v14)
      {
        v6 = 0;
        goto LABEL_3;
      }
    }
  }

  else if (px_scrollableAxis == 1)
  {
    +[_PXUIScrollView _horizontalGesturesAngularToleranceInDegrees];
    v15 = fabs(v13);
    if (v15 > v14)
    {
      v16 = v15 + -180.0;
      goto LABEL_12;
    }
  }

  [(UIView *)self px_enumerateDescendantSubviewsUsingBlock:&__block_literal_global_240];
LABEL_2:
  v6 = 1;
LABEL_3:

  return v6;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v6 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___PXUIScrollView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v5[3] = &unk_1E7BB8880;
  v5[4] = self;
  [MEMORY[0x1E6979518] addCommitHandler:v5 forPhase:0];
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14.receiver = self;
  v14.super_class = _PXUIScrollView;
  v8 = [(_PXUIScrollView *)&v14 focusItemsInRect:?];
  focusItemProvider = [(_PXUIScrollView *)self focusItemProvider];
  v10 = focusItemProvider;
  if (focusItemProvider)
  {
    v11 = [focusItemProvider focusItemsForScrollView:self inRect:{x, y, width, height}];
    v12 = [v8 arrayByAddingObjectsFromArray:v11];

    v8 = v12;
  }

  return v8;
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)axis
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  scrollIndicatorViews = [(_PXUIScrollView *)self scrollIndicatorViews];
  v6 = [scrollIndicatorViews countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(scrollIndicatorViews);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        if (axis == 2)
        {
          [*(*(&v29 + 1) + 8 * v9) frame];
          v15 = v14;
          [v10 frame];
          if (v15 > v16)
          {
            goto LABEL_14;
          }
        }

        else if (axis == 1)
        {
          [*(*(&v29 + 1) + 8 * v9) frame];
          v12 = v11;
          [v10 frame];
          if (v12 > v13)
          {
LABEL_14:
            [(_PXUIScrollView *)self _scrollIndicatorContainerRect];
            v22 = v21;
            v24 = v23;
            [v10 frame];
            v36 = CGRectOffset(v35, -v22, -v24);
            x = v36.origin.x;
            y = v36.origin.y;
            width = v36.size.width;
            height = v36.size.height;

            goto LABEL_15;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [scrollIndicatorViews countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
LABEL_15:
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(_PXUIScrollView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(_PXUIScrollView *)self hitTestContentInsets];
  v16 = v10 + v15;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v8 + v17;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10289;
  v29 = __Block_byref_object_dispose__10290;
  v30 = 0;
  if (-[_PXUIScrollView respectsContentZOrder](self, "respectsContentZOrder") && (![eventCopy type] || objc_msgSend(eventCopy, "type") == 11))
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0xFFEFFFFFFFFFFFFFLL;
    subviews = [(_PXUIScrollView *)self subviews];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37___PXUIScrollView_hitTest_withEvent___block_invoke;
    v18[3] = &unk_1E7BB6C30;
    v22 = x;
    v23 = y;
    v20 = v24;
    v18[4] = self;
    v9 = eventCopy;
    v19 = v9;
    v21 = &v25;
    [subviews enumerateObjectsWithOptions:2 usingBlock:v18];

    if (!v26[5])
    {
      v17.receiver = self;
      v17.super_class = _PXUIScrollView;
      v10 = [(_PXUIScrollView *)&v17 hitTest:v9 withEvent:x, y];
      v11 = v26[5];
      v26[5] = v10;
    }

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _PXUIScrollView;
    v12 = [(_PXUIScrollView *)&v16 hitTest:eventCopy withEvent:x, y];
    v13 = v26[5];
    v26[5] = v12;
  }

  v14 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  x = offset.x;
  y = offset.y;
  traitCollection = [(_PXUIScrollView *)self traitCollection];
  [traitCollection displayScale];
  v22 = v7;

  if (animatedCopy)
  {
    v8.f64[0] = y;
    v8.f64[1] = x;
    v21 = vmulq_n_f64(v8, *&v22);
    [(_PXUIScrollView *)self contentOffset];
    v9 = vdupq_lane_s64(v22, 0);
    v11.f64[1] = v10;
    v12 = vmovn_s64(vceqq_f64(vdivq_f64(vrndaq_f64(v21), v9), vdivq_f64(vrndaq_f64(vmulq_n_f64(v11, *&v22)), v9)));
    if ((v12.i32[1] & v12.i32[0] & 1) == 0)
    {
      [(UIScrollView *)self px_contentOffsetForEdge:1];
      v14 = v13;
      [(UIScrollView *)self px_contentOffsetForEdge:3];
      if (vabdd_f64(v14, v15) <= 0.00000999999975)
      {
        v16 = 0;
      }

      else if (vabdd_f64(y, v14) <= 0.00000999999975)
      {
        v16 = 1;
      }

      else
      {
        v16 = 4 * (vabdd_f64(y, v15) <= 0.00000999999975);
      }

      [(UIScrollView *)self px_contentOffsetForEdge:0];
      v18 = v17;
      [(UIScrollView *)self px_contentOffsetForEdge:2];
      if (vabdd_f64(v18, v19) > 0.00000999999975)
      {
        if (vabdd_f64(x, v18) <= 0.00000999999975)
        {
          v16 |= 2uLL;
        }

        else if (vabdd_f64(x, v19) <= 0.00000999999975)
        {
          v16 |= 8uLL;
        }
      }

      px_delegate = [(_PXUIScrollView *)self px_delegate];
      [px_delegate scrollView:self willBeginScrollingAnimationTowardsContentEdges:v16];
    }
  }

  v25.receiver = self;
  v25.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v25 setContentOffset:animatedCopy animated:x, y];
}

- (void)setDeferContentOffsetUpdates:(BOOL)updates
{
  if (self->_deferContentOffsetUpdates != updates)
  {
    self->_deferContentOffsetUpdates = updates;
    kdebug_trace();
  }
}

- (void)_updatePagingOrigin
{
  [(_PXUIScrollView *)self contentInset];
  v4 = v3;
  v6 = v5;
  [(_PXUIScrollView *)self pagingOriginOffset];
  v8 = v7 - v6;
  v10 = v9 - v4;

  [(_PXUIScrollView *)self _setPagingOrigin:v8, v10];
}

- (void)setPagingOriginOffset:(CGPoint)offset
{
  if (offset.x != self->_pagingOriginOffset.x || offset.y != self->_pagingOriginOffset.y)
  {
    self->_pagingOriginOffset = offset;
    [(_PXUIScrollView *)self _updatePagingOrigin];
  }
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v4 layoutMarginsDidChange];
  px_delegate = [(_PXUIScrollView *)self px_delegate];
  [px_delegate scrollViewLayoutMarginsDidChange:self];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v4 didMoveToWindow];
  px_delegate = [(_PXUIScrollView *)self px_delegate];
  [px_delegate scrollViewDidMoveToWindow:self];
}

- (void)px_addSubview:(id)subview
{
  v3.receiver = self;
  v3.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v3 addSubview:subview];
}

- (void)willRemoveSubview:(id)subview
{
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_scrollIndicatorViews removeObject:subviewCopy];
  }

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 willRemoveSubview:subviewCopy];
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_scrollIndicatorViews addObject:subviewCopy];
  }

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 addSubview:subviewCopy];
}

- (_PXUIScrollView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _PXUIScrollView;
  v3 = [(_PXUIScrollView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scrollIndicatorViews = v3->_scrollIndicatorViews;
    v3->_scrollIndicatorViews = v4;

    [(_PXUIScrollView *)v3 setAccessibilityIdentifier:@"scroll_view"];
  }

  return v3;
}

+ (double)_downGesturesAngularToleranceInDegrees
{
  [self _registerDefaultsIfNecessary];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PXUIScrollViewDownGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (double)_upGesturesAngularToleranceInDegrees
{
  [self _registerDefaultsIfNecessary];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PXUIScrollViewUpGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (double)_horizontalGesturesAngularToleranceInDegrees
{
  [self _registerDefaultsIfNecessary];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PXUIScrollViewHorizontalGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (void)_registerDefaultsIfNecessary
{
  v5[3] = *MEMORY[0x1E69E9840];
  if ((_registerDefaultsIfNecessary_hasRegistered & 1) == 0)
  {
    _registerDefaultsIfNecessary_hasRegistered = 1;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4[0] = @"PXUIScrollViewHorizontalGesturesAngularTolerance";
    v4[1] = @"PXUIScrollViewUpGesturesAngularTolerance";
    v5[0] = &unk_1F2BACB10;
    v5[1] = &unk_1F2BACB10;
    v4[2] = @"PXUIScrollViewDownGesturesAngularTolerance";
    v5[2] = &unk_1F2BACB10;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
    [standardUserDefaults registerDefaults:v3];
  }
}

@end