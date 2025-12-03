@interface SXFullscreenImageView
- (BOOL)allowsDismissal;
- (CGPoint)currentTranslation;
- (CGRect)contentViewFrame;
- (SXFullscreenImageView)initWithContentView:(id)view viewIndex:(unint64_t)index;
- (SXFullscreenImageViewDelegate)delegate;
- (void)handleDoubleTap:(id)tap;
- (void)layoutSubviews;
- (void)scrollViewDidZoom:(id)zoom;
- (void)setContentViewFrame:(CGRect)frame;
- (void)setIsZooming:(BOOL)zooming;
- (void)setup;
- (void)setupGestures;
- (void)showLoadingIndicator:(BOOL)indicator;
@end

@implementation SXFullscreenImageView

- (SXFullscreenImageView)initWithContentView:(id)view viewIndex:(unint64_t)index
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = SXFullscreenImageView;
  v8 = [(SXFullscreenImageView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, view);
    v9->_viewIndex = index;
    [(SXFullscreenImageView *)v9 setup];
  }

  return v9;
}

- (void)setup
{
  v3 = objc_alloc(MEMORY[0x1E69DCEF8]);
  [(SXFullscreenImageView *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(SXFullscreenImageView *)self setScrollView:v4];

  scrollView = [(SXFullscreenImageView *)self scrollView];
  [scrollView setScrollsToTop:0];

  scrollView2 = [(SXFullscreenImageView *)self scrollView];
  [scrollView2 setScrollEnabled:0];

  scrollView3 = [(SXFullscreenImageView *)self scrollView];
  [scrollView3 setBounces:1];

  scrollView4 = [(SXFullscreenImageView *)self scrollView];
  [scrollView4 setAlwaysBounceHorizontal:1];

  scrollView5 = [(SXFullscreenImageView *)self scrollView];
  [scrollView5 setAlwaysBounceVertical:1];

  scrollView6 = [(SXFullscreenImageView *)self scrollView];
  [scrollView6 setMinimumZoomScale:1.0];

  scrollView7 = [(SXFullscreenImageView *)self scrollView];
  [scrollView7 setMaximumZoomScale:2.0];

  scrollView8 = [(SXFullscreenImageView *)self scrollView];
  [scrollView8 setZoomScale:1.0];

  scrollView9 = [(SXFullscreenImageView *)self scrollView];
  [scrollView9 setDelegate:self];

  scrollView10 = [(SXFullscreenImageView *)self scrollView];
  [scrollView10 setShowsHorizontalScrollIndicator:0];

  scrollView11 = [(SXFullscreenImageView *)self scrollView];
  [scrollView11 setShowsVerticalScrollIndicator:0];

  scrollView12 = [(SXFullscreenImageView *)self scrollView];
  contentView = [(SXFullscreenImageView *)self contentView];
  [scrollView12 addSubview:contentView];

  scrollView13 = [(SXFullscreenImageView *)self scrollView];
  [(SXFullscreenImageView *)self addSubview:scrollView13];

  [(SXFullscreenImageView *)self setupGestures];
}

- (void)setupGestures
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleDoubleTap_];
  [(SXFullscreenImageView *)self setDoubleTapGestureRecognizer:v3];

  doubleTapGestureRecognizer = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [doubleTapGestureRecognizer setDelegate:self];

  doubleTapGestureRecognizer2 = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [doubleTapGestureRecognizer2 setNumberOfTapsRequired:2];

  doubleTapGestureRecognizer3 = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [(SXFullscreenImageView *)self addGestureRecognizer:doubleTapGestureRecognizer3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXFullscreenImageView;
  [(SXFullscreenImageView *)&v4 layoutSubviews];
  scrollView = [(SXFullscreenImageView *)self scrollView];
  [(SXFullscreenImageView *)self bounds];
  [scrollView setFrame:?];
}

- (void)handleDoubleTap:(id)tap
{
  tapCopy = tap;
  if ([(SXFullscreenImageView *)self isZooming])
  {
    scrollView = [(SXFullscreenImageView *)self scrollView];
    v5 = scrollView;
    v6 = 1.0;
    v7 = 1;
  }

  else
  {
    view = [tapCopy view];
    [tapCopy locationInView:view];
    v10 = v9;
    v12 = v11;

    v14 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    scrollView2 = [(SXFullscreenImageView *)self scrollView];
    [scrollView2 bounds];
    v16 = CGRectGetWidth(v24) * 0.5;

    scrollView3 = [(SXFullscreenImageView *)self scrollView];
    [scrollView3 bounds];
    v18 = CGRectGetHeight(v25) * 0.5;

    v26.origin.x = v14;
    v26.origin.y = v13;
    v26.size.width = v16;
    v26.size.height = v18;
    v19 = v10 - CGRectGetMidX(v26);
    v27.origin.x = v19;
    v27.origin.y = v13;
    v27.size.width = v16;
    v27.size.height = v18;
    v20 = v12 - CGRectGetMidY(v27);
    scrollView4 = [(SXFullscreenImageView *)self scrollView];
    [scrollView4 zoomToRect:1 animated:{v19, v20, v16, v18}];

    scrollView = [(SXFullscreenImageView *)self scrollView];
    v5 = scrollView;
    v6 = 2.0;
    v7 = 0;
  }

  [scrollView setZoomScale:v7 animated:v6];
}

- (void)setIsZooming:(BOOL)zooming
{
  zoomingCopy = zooming;
  if ([(SXFullscreenImageView *)self isZooming]!= zooming)
  {
    scrollView = [(SXFullscreenImageView *)self scrollView];
    v6 = scrollView;
    if (zoomingCopy)
    {
      [scrollView setScrollEnabled:1];

      delegate = [(SXFullscreenImageView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(SXFullscreenImageView *)self delegate];
        [delegate2 fullScreenImageViewDidStartZooming:self];
LABEL_7:
      }
    }

    else
    {
      [scrollView setScrollEnabled:0];

      delegate3 = [(SXFullscreenImageView *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        delegate2 = [(SXFullscreenImageView *)self delegate];
        [delegate2 fullScreenImageViewDidStopZooming:self];
        goto LABEL_7;
      }
    }

    self->_isZooming = zoomingCopy;
  }
}

- (void)showLoadingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  activityIndicator = [(SXFullscreenImageView *)self activityIndicator];
  v6 = activityIndicator;
  if (indicatorCopy)
  {

    if (!v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:1];
      [(SXFullscreenImageView *)self setActivityIndicator:v8];

      activityIndicator2 = [(SXFullscreenImageView *)self activityIndicator];
      [(SXFullscreenImageView *)self frame];
      v10 = CGRectGetWidth(v14) * 0.5;
      [(SXFullscreenImageView *)self frame];
      [activityIndicator2 setCenter:{v10, CGRectGetHeight(v15) * 0.5}];

      activityIndicator3 = [(SXFullscreenImageView *)self activityIndicator];
      [(SXFullscreenImageView *)self addSubview:activityIndicator3];

      activityIndicator4 = [(SXFullscreenImageView *)self activityIndicator];
      [activityIndicator4 startAnimating];
    }
  }

  else
  {
    [activityIndicator stopAnimating];

    activityIndicator5 = [(SXFullscreenImageView *)self activityIndicator];
    [activityIndicator5 removeFromSuperview];

    [(SXFullscreenImageView *)self setActivityIndicator:0];
  }
}

- (BOOL)allowsDismissal
{
  scrollView = [(SXFullscreenImageView *)self scrollView];
  if ([scrollView isZooming])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    scrollView2 = [(SXFullscreenImageView *)self scrollView];
    [scrollView2 zoomScale];
    if (v6 <= 1.0)
    {
      v4 = ![(SXFullscreenImageView *)self isZooming];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)setContentViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  scrollView = [(SXFullscreenImageView *)self scrollView];
  [scrollView zoomScale];
  v10 = v9;

  if (v10 != 1.0)
  {
    scrollView2 = [(SXFullscreenImageView *)self scrollView];
    [scrollView2 setZoomScale:0 animated:1.0];
  }

  self->_contentViewFrame.origin.x = x;
  self->_contentViewFrame.origin.y = y;
  self->_contentViewFrame.size.width = width;
  self->_contentViewFrame.size.height = height;
  contentView = [(SXFullscreenImageView *)self contentView];
  [(SXFullscreenImageView *)self contentViewFrame];
  [contentView setFrame:?];

  scrollView3 = [(SXFullscreenImageView *)self scrollView];
  scrollView4 = [(SXFullscreenImageView *)self scrollView];
  [scrollView4 bounds];
  [scrollView3 setContentSize:{v14, v15}];
}

- (void)scrollViewDidZoom:(id)zoom
{
  [zoom zoomScale];
  [(SXFullscreenImageView *)self setIsZooming:v4 > 1.0];
  contentView = [(SXFullscreenImageView *)self contentView];
  [contentView frame];
  v7 = v6;
  contentView2 = [(SXFullscreenImageView *)self contentView];
  [contentView2 frame];
  v10 = v9;

  LOBYTE(contentView) = [(SXFullscreenImageView *)self isZooming];
  [(SXFullscreenImageView *)self contentViewFrame];
  v12 = v11;
  v14 = v13;
  [(SXFullscreenImageView *)self contentViewFrame];
  if ((contentView & 1) == 0)
  {
    v18 = v12 + v15 * 0.5;
    [(SXFullscreenImageView *)self contentViewFrame];
    v29 = v28;
    [(SXFullscreenImageView *)self contentViewFrame];
    v19 = v29 + v30 * 0.5;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = v7 * 0.5;
  v19 = v10 * 0.5;
  [(SXFullscreenImageView *)self bounds];
  v21 = v20;
  [(SXFullscreenImageView *)self bounds];
  if (v14 <= v17)
  {
    if (v21 <= v22)
    {
      goto LABEL_9;
    }

    scrollView = [(SXFullscreenImageView *)self scrollView];
    [scrollView bounds];
    v32 = v31;
    scrollView2 = [(SXFullscreenImageView *)self scrollView];
    [scrollView2 contentSize];
    v18 = v18 + (v32 - v33) * 0.5;
  }

  else
  {
    if (v21 >= v22)
    {
      goto LABEL_9;
    }

    scrollView = [(SXFullscreenImageView *)self scrollView];
    [scrollView bounds];
    v25 = v24;
    scrollView2 = [(SXFullscreenImageView *)self scrollView];
    [scrollView2 contentSize];
    v19 = v19 + (v25 - v27) * 0.5;
  }

LABEL_9:
  contentView3 = [(SXFullscreenImageView *)self contentView];
  [contentView3 setCenter:{v18, v19}];
}

- (SXFullscreenImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)contentViewFrame
{
  x = self->_contentViewFrame.origin.x;
  y = self->_contentViewFrame.origin.y;
  width = self->_contentViewFrame.size.width;
  height = self->_contentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end