@interface _UITVScrollViewManager
- (CASpringAnimation)scrollAnimation;
- (CGPoint)targetOffset;
- (UIScrollView)scrollView;
- (_UITVScrollViewManager)initWithScrollView:(id)a3 scrollStyle:(int64_t)a4;
- (_UITVScrollViewManagerDelegate)delegate;
- (id)_customScrollingMaskForScrollView:(id)a3 frame:(CGRect)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_removeScreenshotViewIfNeeded;
- (void)_scroll:(id)a3 toContentOffset:(CGPoint)a4;
- (void)_scrollAnimationDidEnd:(id)a3;
- (void)_tearDown:(id)a3;
- (void)dealloc;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
@end

@implementation _UITVScrollViewManager

- (_UITVScrollViewManager)initWithScrollView:(id)a3 scrollStyle:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UITVScrollViewManager.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"scrollView != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _UITVScrollViewManager;
  v8 = [(_UITVScrollViewManager *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_scrollView, v7);
    v9->_scrollStyle = a4;
    v11 = v10;
    [v7 _addScrollViewScrollObserver:v9];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v9->_scrollView);
    [v12 addObserver:v9 selector:sel__scrollAnimationDidEnd_ name:0x1EFBB9250 object:WeakRetained];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0x1EFBB9250 object:0];

  v4 = [(_UITVScrollViewManager *)self scrollView];
  v5 = [v4 allowsWeakReference];

  if (v5)
  {
    v6 = [(_UITVScrollViewManager *)self scrollView];
    v7 = v6;
    if (v6)
    {
      [v6 _removeScrollViewScrollObserver:self];
      [(_UITVScrollViewManager *)self _tearDown:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  v8.receiver = self;
  v8.super_class = _UITVScrollViewManager;
  [(_UITVScrollViewManager *)&v8 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = objc_opt_respondsToSelector();

  self->_delegateScrollViewManagerDidFinishScrolling = v5 & 1;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(_UITVScrollViewManager *)self scrollView];
  v9 = [v8 allowsWeakReference];

  if (!v9)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v10 = [(_UITVScrollViewManager *)self scrollView];
  if (!v10)
  {
    goto LABEL_20;
  }

  v22 = v10;
  [v10 contentOffset];
  if (v12 != x || v11 != y)
  {
    [(_UITVScrollViewManager *)self setTargetOffset:x, y];
    [v22 contentOffset];
    v15 = v14;
    [v22 frame];
    v17 = v16;
    if ([(_UITVScrollViewManager *)self scrollStyle]!= 1)
    {
      v21 = [(_UITVScrollViewManager *)self scrollAnimation];
      [v22 _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:v21 animation:{x, y}];

      goto LABEL_19;
    }

    if (vcvtpd_s64_f64(v15 / v17) >= 4 && v4)
    {
      [(_UITVScrollViewManager *)self _scroll:v22 toContentOffset:x, y];
      goto LABEL_19;
    }

    if (!v4)
    {
      [v22 setContentOffset:0 animated:{x, y}];
      goto LABEL_19;
    }

    v13 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v22];
    v19 = [v13 scrollManager];
    [v19 cancelScrollingForScrollableContainer:v22];

    v20 = [(_UITVScrollViewManager *)self scrollAnimation];
    [v22 _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:v20 animation:{x, y}];

    goto LABEL_7;
  }

  if (self->_delegateScrollViewManagerDidFinishScrolling)
  {
    v13 = [(_UITVScrollViewManager *)self delegate];
    [v13 _scrollViewManagerDidFinishScrolling:self];
LABEL_7:
  }

LABEL_19:
  v10 = v22;
LABEL_20:
}

- (CASpringAnimation)scrollAnimation
{
  scrollAnimation = self->_scrollAnimation;
  if (!scrollAnimation)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A8]);
    v5 = self->_scrollAnimation;
    self->_scrollAnimation = v4;

    [(CASpringAnimation *)self->_scrollAnimation setMass:1.0];
    [(CASpringAnimation *)self->_scrollAnimation setStiffness:100.0];
    [(CASpringAnimation *)self->_scrollAnimation setDamping:20.0];
    [(CASpringAnimation *)self->_scrollAnimation setInitialVelocity:0.0];
    [(CASpringAnimation *)self->_scrollAnimation settlingDuration];
    [(CASpringAnimation *)self->_scrollAnimation setDuration:?];
    scrollAnimation = self->_scrollAnimation;
  }

  return scrollAnimation;
}

- (void)_tearDown:(id)a3
{
  v5 = a3;
  [(_UITVScrollViewManager *)self _removeScreenshotViewIfNeeded];
  if ([(_UITVScrollViewManager *)self useCustomMaskForScrolling])
  {
    v4 = [v5 layer];
    [v4 setMask:0];
  }
}

- (void)_scrollAnimationDidEnd:(id)a3
{
  if (![(_UITVScrollViewManager *)self ignoreScrollAnimationDidEnd])
  {
    v4 = [(_UITVScrollViewManager *)self scrollView];
    v5 = [v4 allowsWeakReference];

    if (v5)
    {
      v6 = [(_UITVScrollViewManager *)self scrollView];
      if (v6)
      {
        v8 = v6;
        if (self->_delegateScrollViewManagerDidFinishScrolling)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained _scrollViewManagerDidFinishScrolling:self];
        }

        [(_UITVScrollViewManager *)self targetOffset];
        [v8 setContentOffset:?];
        v6 = v8;
      }
    }

    else
    {
      v6 = 0;
    }
  }
}

- (void)_scroll:(id)a3 toContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v26 = a3;
  if ([(_UITVScrollViewManager *)self allowsWeakReference])
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    [(_UITVScrollViewManager *)v8 _removeScreenshotViewIfNeeded];
    v10 = [v26 snapshotViewAfterScreenUpdates:0];
    [(_UITVScrollViewManager *)v9 setSnapshotViewForWindow:v10];

    v11 = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];

    if (v11)
    {
      [v26 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];
      [v18 setFrame:{0.0, 0.0, v15, v17}];

      v19 = [v26 window];
      v20 = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];
      [v19 addSubview:v20];

      v21 = [v26 layer];
      v22 = [v21 mask];
      [(_UITVScrollViewManager *)v9 setUseCustomMaskForScrolling:v22 == 0];

      if ([(_UITVScrollViewManager *)v9 useCustomMaskForScrolling])
      {
        v23 = [(_UITVScrollViewManager *)v9 _customScrollingMaskForScrollView:v26 frame:v13, v17 * 3.0, v15, v17];
        v24 = [v26 layer];
        [v24 setMask:v23];
      }

      [(_UITVScrollViewManager *)self setIgnoreScrollAnimationDidEnd:1];
      [v26 _setContentOffset:0 animated:3 animationCurve:1 animationAdjustsForContentOffsetDelta:0 animation:{x, v17 * 3.0}];
      [(_UITVScrollViewManager *)self setIgnoreScrollAnimationDidEnd:0];
    }

    v25 = [(_UITVScrollViewManager *)self scrollAnimation];
    [v26 _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:v25 animation:{x, y}];
  }
}

- (void)_removeScreenshotViewIfNeeded
{
  v3 = [(UIView *)self->_snapshotViewForWindow superview];

  if (v3)
  {
    snapshotViewForWindow = self->_snapshotViewForWindow;

    [(UIView *)snapshotViewForWindow removeFromSuperview];
  }
}

- (id)_customScrollingMaskForScrollView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = MEMORY[0x1E69794A0];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  [v9 contentSize];
  v12 = v11;
  v14 = v13;
  [v9 frame];
  v16 = v15;
  v18 = v17;

  [v10 setFrame:{v16, v18, v12, v14}];
  v19 = [UIBezierPath bezierPathWithRect:x, y, width, height];
  v20 = [UIBezierPath bezierPathWithRect:v16, v18, v12, v14];
  [v19 appendPath:v20];

  [v10 setPath:{objc_msgSend(v19, "CGPath")}];
  [v10 setFillRule:*MEMORY[0x1E69797F8]];

  return v10;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v26 = a3;
  v4 = [(_UITVScrollViewManager *)self snapshotViewForWindow];
  v5 = [v4 superview];

  if (v5)
  {
    [v26 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = v12 * 3.0;
    [v26 contentOffset];
    v16 = v14 - v15;
    v17 = [(_UITVScrollViewManager *)self snapshotViewForWindow];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(_UITVScrollViewManager *)self snapshotViewForWindow];
    [v24 setFrame:{v19, v16, v21, v23}];

    v28.origin.x = v19;
    v28.origin.y = v16;
    v28.size.width = v21;
    v28.size.height = v23;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    if (MinY > CGRectGetMaxY(v29))
    {
      [(_UITVScrollViewManager *)self _tearDown:v26];
    }
  }
}

- (_UITVScrollViewManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (CGPoint)targetOffset
{
  x = self->_targetOffset.x;
  y = self->_targetOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end