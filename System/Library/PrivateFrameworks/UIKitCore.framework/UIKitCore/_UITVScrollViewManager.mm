@interface _UITVScrollViewManager
- (CASpringAnimation)scrollAnimation;
- (CGPoint)targetOffset;
- (UIScrollView)scrollView;
- (_UITVScrollViewManager)initWithScrollView:(id)view scrollStyle:(int64_t)style;
- (_UITVScrollViewManagerDelegate)delegate;
- (id)_customScrollingMaskForScrollView:(id)view frame:(CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_removeScreenshotViewIfNeeded;
- (void)_scroll:(id)_scroll toContentOffset:(CGPoint)offset;
- (void)_scrollAnimationDidEnd:(id)end;
- (void)_tearDown:(id)down;
- (void)dealloc;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
@end

@implementation _UITVScrollViewManager

- (_UITVScrollViewManager)initWithScrollView:(id)view scrollStyle:(int64_t)style
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITVScrollViewManager.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"scrollView != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _UITVScrollViewManager;
  v8 = [(_UITVScrollViewManager *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_scrollView, viewCopy);
    v9->_scrollStyle = style;
    v11 = v10;
    [viewCopy _addScrollViewScrollObserver:v9];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v9->_scrollView);
    [defaultCenter addObserver:v9 selector:sel__scrollAnimationDidEnd_ name:0x1EFBB9250 object:WeakRetained];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFBB9250 object:0];

  scrollView = [(_UITVScrollViewManager *)self scrollView];
  allowsWeakReference = [scrollView allowsWeakReference];

  if (allowsWeakReference)
  {
    scrollView2 = [(_UITVScrollViewManager *)self scrollView];
    v7 = scrollView2;
    if (scrollView2)
    {
      [scrollView2 _removeScrollViewScrollObserver:self];
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_delegateScrollViewManagerDidFinishScrolling = v5 & 1;
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  scrollView = [(_UITVScrollViewManager *)self scrollView];
  allowsWeakReference = [scrollView allowsWeakReference];

  if (!allowsWeakReference)
  {
    scrollView2 = 0;
    goto LABEL_20;
  }

  scrollView2 = [(_UITVScrollViewManager *)self scrollView];
  if (!scrollView2)
  {
    goto LABEL_20;
  }

  v22 = scrollView2;
  [scrollView2 contentOffset];
  if (v12 != x || v11 != y)
  {
    [(_UITVScrollViewManager *)self setTargetOffset:x, y];
    [v22 contentOffset];
    v15 = v14;
    [v22 frame];
    v17 = v16;
    if ([(_UITVScrollViewManager *)self scrollStyle]!= 1)
    {
      scrollAnimation = [(_UITVScrollViewManager *)self scrollAnimation];
      [v22 _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:scrollAnimation animation:{x, y}];

      goto LABEL_19;
    }

    if (vcvtpd_s64_f64(v15 / v17) >= 4 && animatedCopy)
    {
      [(_UITVScrollViewManager *)self _scroll:v22 toContentOffset:x, y];
      goto LABEL_19;
    }

    if (!animatedCopy)
    {
      [v22 setContentOffset:0 animated:{x, y}];
      goto LABEL_19;
    }

    delegate = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v22];
    scrollManager = [delegate scrollManager];
    [scrollManager cancelScrollingForScrollableContainer:v22];

    scrollAnimation2 = [(_UITVScrollViewManager *)self scrollAnimation];
    [v22 _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:scrollAnimation2 animation:{x, y}];

    goto LABEL_7;
  }

  if (self->_delegateScrollViewManagerDidFinishScrolling)
  {
    delegate = [(_UITVScrollViewManager *)self delegate];
    [delegate _scrollViewManagerDidFinishScrolling:self];
LABEL_7:
  }

LABEL_19:
  scrollView2 = v22;
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

- (void)_tearDown:(id)down
{
  downCopy = down;
  [(_UITVScrollViewManager *)self _removeScreenshotViewIfNeeded];
  if ([(_UITVScrollViewManager *)self useCustomMaskForScrolling])
  {
    layer = [downCopy layer];
    [layer setMask:0];
  }
}

- (void)_scrollAnimationDidEnd:(id)end
{
  if (![(_UITVScrollViewManager *)self ignoreScrollAnimationDidEnd])
  {
    scrollView = [(_UITVScrollViewManager *)self scrollView];
    allowsWeakReference = [scrollView allowsWeakReference];

    if (allowsWeakReference)
    {
      scrollView2 = [(_UITVScrollViewManager *)self scrollView];
      if (scrollView2)
      {
        v8 = scrollView2;
        if (self->_delegateScrollViewManagerDidFinishScrolling)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained _scrollViewManagerDidFinishScrolling:self];
        }

        [(_UITVScrollViewManager *)self targetOffset];
        [v8 setContentOffset:?];
        scrollView2 = v8;
      }
    }

    else
    {
      scrollView2 = 0;
    }
  }
}

- (void)_scroll:(id)_scroll toContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  _scrollCopy = _scroll;
  if ([(_UITVScrollViewManager *)self allowsWeakReference])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;
  v9 = v8;
  if (v8)
  {
    [(_UITVScrollViewManager *)v8 _removeScreenshotViewIfNeeded];
    v10 = [_scrollCopy snapshotViewAfterScreenUpdates:0];
    [(_UITVScrollViewManager *)v9 setSnapshotViewForWindow:v10];

    snapshotViewForWindow = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];

    if (snapshotViewForWindow)
    {
      [_scrollCopy bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      snapshotViewForWindow2 = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];
      [snapshotViewForWindow2 setFrame:{0.0, 0.0, v15, v17}];

      window = [_scrollCopy window];
      snapshotViewForWindow3 = [(_UITVScrollViewManager *)v9 snapshotViewForWindow];
      [window addSubview:snapshotViewForWindow3];

      layer = [_scrollCopy layer];
      mask = [layer mask];
      [(_UITVScrollViewManager *)v9 setUseCustomMaskForScrolling:mask == 0];

      if ([(_UITVScrollViewManager *)v9 useCustomMaskForScrolling])
      {
        v23 = [(_UITVScrollViewManager *)v9 _customScrollingMaskForScrollView:_scrollCopy frame:v13, v17 * 3.0, v15, v17];
        layer2 = [_scrollCopy layer];
        [layer2 setMask:v23];
      }

      [(_UITVScrollViewManager *)self setIgnoreScrollAnimationDidEnd:1];
      [_scrollCopy _setContentOffset:0 animated:3 animationCurve:1 animationAdjustsForContentOffsetDelta:0 animation:{x, v17 * 3.0}];
      [(_UITVScrollViewManager *)self setIgnoreScrollAnimationDidEnd:0];
    }

    scrollAnimation = [(_UITVScrollViewManager *)self scrollAnimation];
    [_scrollCopy _animateScrollToContentOffset:0 animationCurve:1 animationAdjustsForContentOffsetDelta:scrollAnimation animation:{x, y}];
  }
}

- (void)_removeScreenshotViewIfNeeded
{
  superview = [(UIView *)self->_snapshotViewForWindow superview];

  if (superview)
  {
    snapshotViewForWindow = self->_snapshotViewForWindow;

    [(UIView *)snapshotViewForWindow removeFromSuperview];
  }
}

- (id)_customScrollingMaskForScrollView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = MEMORY[0x1E69794A0];
  viewCopy = view;
  v10 = objc_alloc_init(v8);
  [viewCopy contentSize];
  v12 = v11;
  v14 = v13;
  [viewCopy frame];
  v16 = v15;
  v18 = v17;

  [v10 setFrame:{v16, v18, v12, v14}];
  height = [UIBezierPath bezierPathWithRect:x, y, width, height];
  v20 = [UIBezierPath bezierPathWithRect:v16, v18, v12, v14];
  [height appendPath:v20];

  [v10 setPath:{objc_msgSend(height, "CGPath")}];
  [v10 setFillRule:*MEMORY[0x1E69797F8]];

  return v10;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  snapshotViewForWindow = [(_UITVScrollViewManager *)self snapshotViewForWindow];
  superview = [snapshotViewForWindow superview];

  if (superview)
  {
    [scrollCopy bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = v12 * 3.0;
    [scrollCopy contentOffset];
    v16 = v14 - v15;
    snapshotViewForWindow2 = [(_UITVScrollViewManager *)self snapshotViewForWindow];
    [snapshotViewForWindow2 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    snapshotViewForWindow3 = [(_UITVScrollViewManager *)self snapshotViewForWindow];
    [snapshotViewForWindow3 setFrame:{v19, v16, v21, v23}];

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
      [(_UITVScrollViewManager *)self _tearDown:scrollCopy];
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