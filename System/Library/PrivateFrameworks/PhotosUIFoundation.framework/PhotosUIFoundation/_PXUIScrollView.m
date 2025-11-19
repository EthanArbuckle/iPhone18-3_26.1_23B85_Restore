@interface _PXUIScrollView
+ (double)_downGesturesAngularToleranceInDegrees;
+ (double)_horizontalGesturesAngularToleranceInDegrees;
+ (double)_upGesturesAngularToleranceInDegrees;
+ (void)_registerDefaultsIfNecessary;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)pagingOriginOffset;
- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3;
- (PXUIScrollViewDelegate)px_delegate;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)safeAreaInsets;
- (_PXUIScrollView)initWithFrame:(CGRect)a3;
- (_PXUIScrollViewFocusItemProvider)focusItemProvider;
- (id)focusItemsInRect:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updatePagingOrigin;
- (void)addSubview:(id)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)px_addSubview:(id)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDeferContentOffsetUpdates:(BOOL)a3;
- (void)setIsFocusFastScrolling:(BOOL)a3;
- (void)setPagingOriginOffset:(CGPoint)a3;
- (void)willRemoveSubview:(id)a3;
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
  v3 = [(_PXUIScrollView *)self px_delegate];
  [v3 scrollViewWillLayoutSubviews:self];

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 layoutSubviews];
  v4 = [(_PXUIScrollView *)self px_delegate];
  [v4 scrollViewDidLayoutSubviews:self];
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

- (void)setIsFocusFastScrolling:(BOOL)a3
{
  if (self->_isFocusFastScrolling != a3)
  {
    v4 = a3;
    self->_isFocusFastScrolling = a3;
    v6 = [(_PXUIScrollView *)self px_delegate];
    v7 = v6;
    if (v4)
    {
      [v6 scrollViewDidBeginFocusFastScrolling:self];
    }

    else
    {
      [v6 scrollViewDidEndFocusFastScrolling:self];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_PXUIScrollView *)self shouldScrollSimultaneouslyWithDescendantScrollView])
  {
    v8 = [(_PXUIScrollView *)self panGestureRecognizer];
    if (v8 == v6)
    {
      v15 = 0;
      v11 = [v7 px_isPanGestureRecognizerOfScrollView:&v15];
      v12 = v15;
      v9 = v12;
      if (v11)
      {
        v13 = [v12 px_scrollableAxis];
        if (v13 != [(UIScrollView *)self px_scrollableAxis])
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_PXUIScrollView *)self panGestureRecognizer];

  if (v5 != v4)
  {
    goto LABEL_2;
  }

  [v5 velocityInView:self];
  v9 = v8;
  v11 = v10;
  if (![(_PXUIScrollView *)self shouldScrollSimultaneouslyWithDescendantScrollView])
  {
    [v5 locationInView:self];
    v18 = v17;
    v20 = v19;
    v21 = [(_PXUIScrollView *)self px_delegate];
    v6 = [v21 scrollView:self shouldBeginScrollingWithPanAtLocation:v18 velocity:{v20, v9, v11}];

    goto LABEL_3;
  }

  v12 = [(UIScrollView *)self px_scrollableAxis];
  v13 = atan2(v11, v9) * 180.0 / 3.14159265;
  if (v12 == 2)
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

  else if (v12 == 1)
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v6 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___PXUIScrollView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v5[3] = &unk_1E7BB8880;
  v5[4] = self;
  [MEMORY[0x1E6979518] addCommitHandler:v5 forPhase:0];
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = _PXUIScrollView;
  v8 = [(_PXUIScrollView *)&v14 focusItemsInRect:?];
  v9 = [(_PXUIScrollView *)self focusItemProvider];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 focusItemsForScrollView:self inRect:{x, y, width, height}];
    v12 = [v8 arrayByAddingObjectsFromArray:v11];

    v8 = v12;
  }

  return v8;
}

- (CGRect)scrollIndicatorFrameForAxis:(int64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(_PXUIScrollView *)self scrollIndicatorViews];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        if (a3 == 2)
        {
          [*(*(&v29 + 1) + 8 * v9) frame];
          v15 = v14;
          [v10 frame];
          if (v15 > v16)
          {
            goto LABEL_14;
          }
        }

        else if (a3 == 1)
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
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10289;
  v29 = __Block_byref_object_dispose__10290;
  v30 = 0;
  if (-[_PXUIScrollView respectsContentZOrder](self, "respectsContentZOrder") && (![v7 type] || objc_msgSend(v7, "type") == 11))
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0xFFEFFFFFFFFFFFFFLL;
    v8 = [(_PXUIScrollView *)self subviews];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37___PXUIScrollView_hitTest_withEvent___block_invoke;
    v18[3] = &unk_1E7BB6C30;
    v22 = x;
    v23 = y;
    v20 = v24;
    v18[4] = self;
    v9 = v7;
    v19 = v9;
    v21 = &v25;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v18];

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
    v12 = [(_PXUIScrollView *)&v16 hitTest:v7 withEvent:x, y];
    v13 = v26[5];
    v26[5] = v12;
  }

  v14 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  x = a3.x;
  y = a3.y;
  v6 = [(_PXUIScrollView *)self traitCollection];
  [v6 displayScale];
  v22 = v7;

  if (v4)
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

      v20 = [(_PXUIScrollView *)self px_delegate];
      [v20 scrollView:self willBeginScrollingAnimationTowardsContentEdges:v16];
    }
  }

  v25.receiver = self;
  v25.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v25 setContentOffset:v4 animated:x, y];
}

- (void)setDeferContentOffsetUpdates:(BOOL)a3
{
  if (self->_deferContentOffsetUpdates != a3)
  {
    self->_deferContentOffsetUpdates = a3;
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

- (void)setPagingOriginOffset:(CGPoint)a3
{
  if (a3.x != self->_pagingOriginOffset.x || a3.y != self->_pagingOriginOffset.y)
  {
    self->_pagingOriginOffset = a3;
    [(_PXUIScrollView *)self _updatePagingOrigin];
  }
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v4 layoutMarginsDidChange];
  v3 = [(_PXUIScrollView *)self px_delegate];
  [v3 scrollViewLayoutMarginsDidChange:self];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v4 didMoveToWindow];
  v3 = [(_PXUIScrollView *)self px_delegate];
  [v3 scrollViewDidMoveToWindow:self];
}

- (void)px_addSubview:(id)a3
{
  v3.receiver = self;
  v3.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v3 addSubview:a3];
}

- (void)willRemoveSubview:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_scrollIndicatorViews removeObject:v4];
  }

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 willRemoveSubview:v4];
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_scrollIndicatorViews addObject:v4];
  }

  v5.receiver = self;
  v5.super_class = _PXUIScrollView;
  [(_PXUIScrollView *)&v5 addSubview:v4];
}

- (_PXUIScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _PXUIScrollView;
  v3 = [(_PXUIScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  [a1 _registerDefaultsIfNecessary];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"PXUIScrollViewDownGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (double)_upGesturesAngularToleranceInDegrees
{
  [a1 _registerDefaultsIfNecessary];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"PXUIScrollViewUpGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (double)_horizontalGesturesAngularToleranceInDegrees
{
  [a1 _registerDefaultsIfNecessary];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:@"PXUIScrollViewHorizontalGesturesAngularTolerance"];
  v4 = v3;

  return v4;
}

+ (void)_registerDefaultsIfNecessary
{
  v5[3] = *MEMORY[0x1E69E9840];
  if ((_registerDefaultsIfNecessary_hasRegistered & 1) == 0)
  {
    _registerDefaultsIfNecessary_hasRegistered = 1;
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4[0] = @"PXUIScrollViewHorizontalGesturesAngularTolerance";
    v4[1] = @"PXUIScrollViewUpGesturesAngularTolerance";
    v5[0] = &unk_1F2BACB10;
    v5[1] = &unk_1F2BACB10;
    v4[2] = @"PXUIScrollViewDownGesturesAngularTolerance";
    v5[2] = &unk_1F2BACB10;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
    [v2 registerDefaults:v3];
  }
}

@end