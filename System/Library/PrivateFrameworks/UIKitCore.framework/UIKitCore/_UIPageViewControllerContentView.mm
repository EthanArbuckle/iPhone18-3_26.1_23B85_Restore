@interface _UIPageViewControllerContentView
- (CGRect)_scrollViewFrame;
- (UIPageViewController)pageViewController;
- (_UIPageViewControllerContentView)initWithFrame:(CGRect)frame andPageViewController:(id)controller;
- (double)_pageSpacing;
- (void)_setupPageControl:(id)control;
- (void)invalidatePageViewController;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIPageViewControllerContentView

- (_UIPageViewControllerContentView)initWithFrame:(CGRect)frame andPageViewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  v36.receiver = self;
  v36.super_class = _UIPageViewControllerContentView;
  height = [(UIView *)&v36 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_pageViewController, controllerCopy);
    [(UIView *)v11 setAutoresizingMask:18];
    WeakRetained = objc_loadWeakRetained(&v11->_pageViewController);
    _transitionStyle = [WeakRetained _transitionStyle];

    if (_transitionStyle == 1)
    {
      [(UIView *)v11 setClipsToBounds:1];
      v14 = objc_loadWeakRetained(&v11->_pageViewController);
      _isPageControlVisible = [v14 _isPageControlVisible];

      if (_isPageControlVisible)
      {
        v16 = [UIPageControl alloc];
        v17 = [(UIPageControl *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        pageControl = v11->_pageControl;
        v11->_pageControl = v17;

        [(_UIPageViewControllerContentView *)v11 _setupPageControl:v11->_pageControl];
      }

      v19 = [_UIQueuingScrollView alloc];
      [(UIView *)v11 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = objc_loadWeakRetained(&v11->_pageViewController);
      v29 = -[_UIQueuingScrollView initWithFrame:navigationOrientation:](v19, "initWithFrame:navigationOrientation:", [v28 navigationOrientation], v21, v23, v25, v27);
      scrollView = v11->_scrollView;
      v11->_scrollView = v29;

      v31 = v11->_scrollView;
      v32 = objc_loadWeakRetained(&v11->_pageViewController);
      [(_UIQueuingScrollView *)v31 setQDelegate:v32];

      v33 = v11->_scrollView;
      v34 = objc_loadWeakRetained(&v11->_pageViewController);
      [(_UIQueuingScrollView *)v33 setQDataSource:v34];

      [(UIScrollView *)v11->_scrollView _setResetsBoundingPathForSubtree:0];
      [(UIView *)v11 addSubview:v11->_scrollView];
    }
  }

  return v11;
}

- (void)invalidatePageViewController
{
  [(UIScrollView *)self->_scrollView setDelegate:0];
  [(_UIQueuingScrollView *)self->_scrollView setQDelegate:0];
  [(_UIQueuingScrollView *)self->_scrollView setQDataSource:0];

  objc_storeWeak(&self->_pageViewController, 0);
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24.receiver = self;
  v24.super_class = _UIPageViewControllerContentView;
  [(UIView *)&v24 setBounds:x, y, width, height];
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);
  if (WeakRetained)
  {
    v17 = WeakRetained;
    [(UIView *)self bounds];
    v26.origin.x = v18;
    v26.origin.y = v19;
    v26.size.width = v20;
    v26.size.height = v21;
    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    v22 = CGRectEqualToRect(v25, v26);

    if (!v22)
    {
      v23 = objc_loadWeakRetained(&self->_pageViewController);
      [v23 _contentViewFrameOrBoundsDidChange];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24.receiver = self;
  v24.super_class = _UIPageViewControllerContentView;
  [(UIView *)&v24 setFrame:x, y, width, height];
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);
  if (WeakRetained)
  {
    v17 = WeakRetained;
    [(UIView *)self frame];
    v26.origin.x = v18;
    v26.origin.y = v19;
    v26.size.width = v20;
    v26.size.height = v21;
    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    v22 = CGRectEqualToRect(v25, v26);

    if (!v22)
    {
      v23 = objc_loadWeakRetained(&self->_pageViewController);
      [v23 _contentViewFrameOrBoundsDidChange];
    }
  }
}

- (double)_pageSpacing
{
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);
  [WeakRetained _pageSpacing];
  v4 = v3;

  return v4;
}

- (CGRect)_scrollViewFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pageControl = self->_pageControl;
  if (pageControl)
  {
    [(UIView *)pageControl frame];
    v10 = v10 - CGRectGetHeight(v17);
    if (dyld_program_sdk_at_least())
    {
      [(UIView *)self safeAreaInsets];
      v10 = v10 - v12;
    }
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setupPageControl:(id)control
{
  controlCopy = control;
  [controlCopy _setFlickToEndGestureEnabled:0];
  [controlCopy setAutoresizingMask:10];
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);
  [controlCopy addTarget:WeakRetained action:sel__pageControlValueChanged_ forControlEvents:4096];

  [(UIView *)self addSubview:controlCopy];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = _UIPageViewControllerContentView;
  [(UIView *)&v33 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);
  _isPageControlVisible = [WeakRetained _isPageControlVisible];

  pageControl = self->_pageControl;
  if (_isPageControlVisible)
  {
    if (!pageControl)
    {
      v6 = [UIPageControl alloc];
      v7 = [(UIPageControl *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v8 = self->_pageControl;
      self->_pageControl = v7;

      [(_UIPageViewControllerContentView *)self _setupPageControl:self->_pageControl];
      pageControl = self->_pageControl;
    }

    if (![(UIPageControl *)pageControl numberOfPages])
    {
      v9 = objc_loadWeakRetained(&self->_pageViewController);
      [v9 _updatePageControlViaDataSourceIfNecessary];
    }

    [(UIView *)self->_pageControl sizeToFit];
    [(UIView *)self->_pageControl frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIView *)self bounds];
    Height = CGRectGetHeight(v34);
    if (dyld_program_sdk_at_least())
    {
      [(UIView *)self safeAreaInsets];
      Height = Height - v19;
    }

    v35.origin.x = v11;
    v35.origin.y = v13;
    v35.size.width = v15;
    v35.size.height = v17;
    v20 = Height - CGRectGetHeight(v35);
    [(UIView *)self center];
    v22 = v21;
    v24 = v23;
    superview = [(UIView *)self superview];
    [(UIView *)self convertPoint:superview fromView:v22, v24];
    v27 = v26;
    v36.origin.x = v11;
    v36.origin.y = v20;
    v36.size.width = v15;
    v36.size.height = v17;
    v28 = v27 + CGRectGetWidth(v36) * -0.5;

    [(UIView *)self->_pageControl setFrame:v28, v20, v15, v17];
  }

  else
  {
    [(UIView *)pageControl removeFromSuperview];
    v29 = self->_pageControl;
    self->_pageControl = 0;
  }

  scrollView = self->_scrollView;
  [(_UIPageViewControllerContentView *)self _scrollViewFrame];
  [(_UIQueuingScrollView *)scrollView _setFrameAndApplyPageSpacing:?];
  v31 = self->_scrollView;
  [(_UIPageViewControllerContentView *)self _pageSpacing];
  [(_UIQueuingScrollView *)v31 setPageSpacing:v32 * 0.5];
}

- (UIPageViewController)pageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageViewController);

  return WeakRetained;
}

@end