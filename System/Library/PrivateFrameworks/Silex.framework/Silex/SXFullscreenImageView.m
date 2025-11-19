@interface SXFullscreenImageView
- (BOOL)allowsDismissal;
- (CGPoint)currentTranslation;
- (CGRect)contentViewFrame;
- (SXFullscreenImageView)initWithContentView:(id)a3 viewIndex:(unint64_t)a4;
- (SXFullscreenImageViewDelegate)delegate;
- (void)handleDoubleTap:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidZoom:(id)a3;
- (void)setContentViewFrame:(CGRect)a3;
- (void)setIsZooming:(BOOL)a3;
- (void)setup;
- (void)setupGestures;
- (void)showLoadingIndicator:(BOOL)a3;
@end

@implementation SXFullscreenImageView

- (SXFullscreenImageView)initWithContentView:(id)a3 viewIndex:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SXFullscreenImageView;
  v8 = [(SXFullscreenImageView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, a3);
    v9->_viewIndex = a4;
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

  v5 = [(SXFullscreenImageView *)self scrollView];
  [v5 setScrollsToTop:0];

  v6 = [(SXFullscreenImageView *)self scrollView];
  [v6 setScrollEnabled:0];

  v7 = [(SXFullscreenImageView *)self scrollView];
  [v7 setBounces:1];

  v8 = [(SXFullscreenImageView *)self scrollView];
  [v8 setAlwaysBounceHorizontal:1];

  v9 = [(SXFullscreenImageView *)self scrollView];
  [v9 setAlwaysBounceVertical:1];

  v10 = [(SXFullscreenImageView *)self scrollView];
  [v10 setMinimumZoomScale:1.0];

  v11 = [(SXFullscreenImageView *)self scrollView];
  [v11 setMaximumZoomScale:2.0];

  v12 = [(SXFullscreenImageView *)self scrollView];
  [v12 setZoomScale:1.0];

  v13 = [(SXFullscreenImageView *)self scrollView];
  [v13 setDelegate:self];

  v14 = [(SXFullscreenImageView *)self scrollView];
  [v14 setShowsHorizontalScrollIndicator:0];

  v15 = [(SXFullscreenImageView *)self scrollView];
  [v15 setShowsVerticalScrollIndicator:0];

  v16 = [(SXFullscreenImageView *)self scrollView];
  v17 = [(SXFullscreenImageView *)self contentView];
  [v16 addSubview:v17];

  v18 = [(SXFullscreenImageView *)self scrollView];
  [(SXFullscreenImageView *)self addSubview:v18];

  [(SXFullscreenImageView *)self setupGestures];
}

- (void)setupGestures
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleDoubleTap_];
  [(SXFullscreenImageView *)self setDoubleTapGestureRecognizer:v3];

  v4 = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [v4 setDelegate:self];

  v5 = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [v5 setNumberOfTapsRequired:2];

  v6 = [(SXFullscreenImageView *)self doubleTapGestureRecognizer];
  [(SXFullscreenImageView *)self addGestureRecognizer:v6];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXFullscreenImageView;
  [(SXFullscreenImageView *)&v4 layoutSubviews];
  v3 = [(SXFullscreenImageView *)self scrollView];
  [(SXFullscreenImageView *)self bounds];
  [v3 setFrame:?];
}

- (void)handleDoubleTap:(id)a3
{
  v22 = a3;
  if ([(SXFullscreenImageView *)self isZooming])
  {
    v4 = [(SXFullscreenImageView *)self scrollView];
    v5 = v4;
    v6 = 1.0;
    v7 = 1;
  }

  else
  {
    v8 = [v22 view];
    [v22 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v14 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v15 = [(SXFullscreenImageView *)self scrollView];
    [v15 bounds];
    v16 = CGRectGetWidth(v24) * 0.5;

    v17 = [(SXFullscreenImageView *)self scrollView];
    [v17 bounds];
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
    v21 = [(SXFullscreenImageView *)self scrollView];
    [v21 zoomToRect:1 animated:{v19, v20, v16, v18}];

    v4 = [(SXFullscreenImageView *)self scrollView];
    v5 = v4;
    v6 = 2.0;
    v7 = 0;
  }

  [v4 setZoomScale:v7 animated:v6];
}

- (void)setIsZooming:(BOOL)a3
{
  v3 = a3;
  if ([(SXFullscreenImageView *)self isZooming]!= a3)
  {
    v5 = [(SXFullscreenImageView *)self scrollView];
    v6 = v5;
    if (v3)
    {
      [v5 setScrollEnabled:1];

      v7 = [(SXFullscreenImageView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(SXFullscreenImageView *)self delegate];
        [v9 fullScreenImageViewDidStartZooming:self];
LABEL_7:
      }
    }

    else
    {
      [v5 setScrollEnabled:0];

      v10 = [(SXFullscreenImageView *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v9 = [(SXFullscreenImageView *)self delegate];
        [v9 fullScreenImageViewDidStopZooming:self];
        goto LABEL_7;
      }
    }

    self->_isZooming = v3;
  }
}

- (void)showLoadingIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = [(SXFullscreenImageView *)self activityIndicator];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:1];
      [(SXFullscreenImageView *)self setActivityIndicator:v8];

      v9 = [(SXFullscreenImageView *)self activityIndicator];
      [(SXFullscreenImageView *)self frame];
      v10 = CGRectGetWidth(v14) * 0.5;
      [(SXFullscreenImageView *)self frame];
      [v9 setCenter:{v10, CGRectGetHeight(v15) * 0.5}];

      v11 = [(SXFullscreenImageView *)self activityIndicator];
      [(SXFullscreenImageView *)self addSubview:v11];

      v12 = [(SXFullscreenImageView *)self activityIndicator];
      [v12 startAnimating];
    }
  }

  else
  {
    [v5 stopAnimating];

    v7 = [(SXFullscreenImageView *)self activityIndicator];
    [v7 removeFromSuperview];

    [(SXFullscreenImageView *)self setActivityIndicator:0];
  }
}

- (BOOL)allowsDismissal
{
  v3 = [(SXFullscreenImageView *)self scrollView];
  if ([v3 isZooming])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(SXFullscreenImageView *)self scrollView];
    [v5 zoomScale];
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

- (void)setContentViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SXFullscreenImageView *)self scrollView];
  [v8 zoomScale];
  v10 = v9;

  if (v10 != 1.0)
  {
    v11 = [(SXFullscreenImageView *)self scrollView];
    [v11 setZoomScale:0 animated:1.0];
  }

  self->_contentViewFrame.origin.x = x;
  self->_contentViewFrame.origin.y = y;
  self->_contentViewFrame.size.width = width;
  self->_contentViewFrame.size.height = height;
  v12 = [(SXFullscreenImageView *)self contentView];
  [(SXFullscreenImageView *)self contentViewFrame];
  [v12 setFrame:?];

  v16 = [(SXFullscreenImageView *)self scrollView];
  v13 = [(SXFullscreenImageView *)self scrollView];
  [v13 bounds];
  [v16 setContentSize:{v14, v15}];
}

- (void)scrollViewDidZoom:(id)a3
{
  [a3 zoomScale];
  [(SXFullscreenImageView *)self setIsZooming:v4 > 1.0];
  v5 = [(SXFullscreenImageView *)self contentView];
  [v5 frame];
  v7 = v6;
  v8 = [(SXFullscreenImageView *)self contentView];
  [v8 frame];
  v10 = v9;

  LOBYTE(v5) = [(SXFullscreenImageView *)self isZooming];
  [(SXFullscreenImageView *)self contentViewFrame];
  v12 = v11;
  v14 = v13;
  [(SXFullscreenImageView *)self contentViewFrame];
  if ((v5 & 1) == 0)
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

    v23 = [(SXFullscreenImageView *)self scrollView];
    [v23 bounds];
    v32 = v31;
    v26 = [(SXFullscreenImageView *)self scrollView];
    [v26 contentSize];
    v18 = v18 + (v32 - v33) * 0.5;
  }

  else
  {
    if (v21 >= v22)
    {
      goto LABEL_9;
    }

    v23 = [(SXFullscreenImageView *)self scrollView];
    [v23 bounds];
    v25 = v24;
    v26 = [(SXFullscreenImageView *)self scrollView];
    [v26 contentSize];
    v19 = v19 + (v25 - v27) * 0.5;
  }

LABEL_9:
  v34 = [(SXFullscreenImageView *)self contentView];
  [v34 setCenter:{v18, v19}];
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