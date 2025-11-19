@interface VideosExtrasZoomableImageView
- (CGPoint)_maximumContentOffset;
- (CGPoint)_minimumContentOffset;
- (CGPoint)pointToCenterAfterResize;
- (CGSize)imageSize;
- (VideosExtrasZoomableImageView)initWithFrame:(CGRect)a3;
- (void)_prepareToResize;
- (void)_recoverFromResizing;
- (void)_updateMinimumAndMaximumZoomScalesForCurrentBounds;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)layoutSubviews;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)zoomToPoint:(CGPoint)a3 animated:(BOOL)a4;
@end

@implementation VideosExtrasZoomableImageView

- (VideosExtrasZoomableImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VideosExtrasZoomableImageView;
  v3 = [(VideosExtrasZoomableImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VideosExtrasZoomableImageView *)v3 setShowsHorizontalScrollIndicator:0];
    [(VideosExtrasZoomableImageView *)v4 setShowsVerticalScrollIndicator:0];
    [(VideosExtrasZoomableImageView *)v4 setBouncesZoom:1];
    [(VideosExtrasZoomableImageView *)v4 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(VideosExtrasZoomableImageView *)v4 setDelegate:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(VideosExtrasZoomableImageView *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = VideosExtrasZoomableImageView;
  [(VideosExtrasZoomableImageView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(VideosExtrasZoomableImageView *)self frame];
  if (width == v9 && height == v8)
  {
    v11.receiver = self;
    v11.super_class = VideosExtrasZoomableImageView;
    [(VideosExtrasZoomableImageView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(VideosExtrasZoomableImageView *)self _prepareToResize];
    v11.receiver = self;
    v11.super_class = VideosExtrasZoomableImageView;
    [(VideosExtrasZoomableImageView *)&v11 setFrame:x, y, width, height];
    [(VideosExtrasZoomableImageView *)self _recoverFromResizing];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = VideosExtrasZoomableImageView;
  [(VideosExtrasZoomableImageView *)&v12 layoutSubviews];
  v3 = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  [v3 frame];
  v10 = (v5 - v9) * 0.5;
  if (v9 >= v5)
  {
    v10 = 0.0;
  }

  v11 = (v7 - v8) * 0.5;
  if (v8 >= v7)
  {
    v11 = 0.0;
  }

  [v3 setFrame:{v10, v11}];
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v6 = a3;
  [(VideosExtrasZoomableImageView *)self setNeedsLayout];
  [(VideosExtrasZoomableImageView *)self layoutIfNeeded];
  v4 = [(VideosExtrasZoomableImageView *)self zoomView];
  if ([v6 appearState] == 1)
  {
    v5 = [v6 zoomingImageView];
    [v5 replicateStateFromImageView:v4];
  }

  [v4 setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v6 = a3;
  if (![v6 appearState])
  {
    v4 = [v6 zoomingImageView];
    v5 = [(VideosExtrasZoomableImageView *)self zoomView];
    [v4 replicateStateFromImageView:v5];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = [(VideosExtrasZoomableImageView *)self zoomView:a3];
  [v4 setHidden:0];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_image, a3);
    [(VideosExtrasZoomableImageView *)self setZoomScale:1.0];
    v6 = [(VideosExtrasZoomableImageView *)self zoomView];
    [v6 removeFromSuperview];

    if (v12)
    {
      [(UIImage *)v12 size];
      v8 = v7;
      v10 = v9;
      [(VideosExtrasZoomableImageView *)self setImageSize:?];
      v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
      [(VideosExtrasZoomableImageView *)self addSubview:v11];
      [(VideosExtrasZoomableImageView *)self setZoomView:v11];
      [(VideosExtrasZoomableImageView *)self setContentSize:v8, v10];
      [(VideosExtrasZoomableImageView *)self _updateMinimumAndMaximumZoomScalesForCurrentBounds];
      [(VideosExtrasZoomableImageView *)self minimumZoomScale];
      [(VideosExtrasZoomableImageView *)self setZoomScale:?];
    }

    else
    {
      [(VideosExtrasZoomableImageView *)self setZoomView:0];
    }

    v5 = v12;
  }
}

- (void)zoomToPoint:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertRect:v7 toView:x, y, 1.0, 1.0];
  [(VideosExtrasZoomableImageView *)self zoomToRect:1 animated:?];
}

- (CGPoint)_maximumContentOffset
{
  [(VideosExtrasZoomableImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(VideosExtrasZoomableImageView *)self contentSize];
  v8 = v7 - v4;
  v10 = v9 - v6;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)_minimumContentOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_prepareToResize
{
  [(VideosExtrasZoomableImageView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidY = CGRectGetMidY(v19);
  v9 = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertPoint:v9 toView:MidX, MidY];
  v11 = v10;
  v13 = v12;

  [(VideosExtrasZoomableImageView *)self zoomScale];
  v15 = v14;
  [(VideosExtrasZoomableImageView *)self minimumZoomScale];
  if (v15 <= v16 + 0.00000011920929)
  {
    v15 = 0.0;
  }

  [(VideosExtrasZoomableImageView *)self setPointToCenterAfterResize:v11, v13];

  [(VideosExtrasZoomableImageView *)self setScaleToRestoreAfterResize:v15];
}

- (void)_recoverFromResizing
{
  [(VideosExtrasZoomableImageView *)self _updateMinimumAndMaximumZoomScalesForCurrentBounds];
  [(VideosExtrasZoomableImageView *)self scaleToRestoreAfterResize];
  v4 = v3;
  [(VideosExtrasZoomableImageView *)self minimumZoomScale];
  if (v5 >= v4)
  {
    v4 = v5;
  }

  [(VideosExtrasZoomableImageView *)self maximumZoomScale];
  if (v6 >= v4)
  {
    v6 = v4;
  }

  [(VideosExtrasZoomableImageView *)self setZoomScale:v6];
  [(VideosExtrasZoomableImageView *)self pointToCenterAfterResize];
  v8 = v7;
  v10 = v9;
  v11 = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertPoint:v11 fromView:v8, v10];
  v13 = v12;
  v15 = v14;

  [(VideosExtrasZoomableImageView *)self bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v20 = v13 - CGRectGetWidth(v31) * 0.5;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v21 = v15 - CGRectGetHeight(v32) * 0.5;
  [(VideosExtrasZoomableImageView *)self _maximumContentOffset];
  v23 = v22;
  v25 = v24;
  [(VideosExtrasZoomableImageView *)self _minimumContentOffset];
  if (v23 >= v20)
  {
    v28 = v20;
  }

  else
  {
    v28 = v23;
  }

  if (v26 < v28)
  {
    v26 = v28;
  }

  if (v25 >= v21)
  {
    v29 = v21;
  }

  else
  {
    v29 = v25;
  }

  if (v27 < v29)
  {
    v27 = v29;
  }

  [(VideosExtrasZoomableImageView *)self setContentOffset:v26, v27];
}

- (void)_updateMinimumAndMaximumZoomScalesForCurrentBounds
{
  [(VideosExtrasZoomableImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(VideosExtrasZoomableImageView *)self imageSize];
  v8 = v7;
  v10 = v9;
  if (MPUFloatLessThanOrEqualToFloat())
  {
    v8 = 1.0;
  }

  if (MPUFloatLessThanOrEqualToFloat())
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v6 / v11;
  if (v4 / v8 < v12)
  {
    v12 = v4 / v8;
  }

  [(VideosExtrasZoomableImageView *)self setMinimumZoomScale:v12];

  [(VideosExtrasZoomableImageView *)self setMaximumZoomScale:2.0];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)pointToCenterAfterResize
{
  x = self->_pointToCenterAfterResize.x;
  y = self->_pointToCenterAfterResize.y;
  result.y = y;
  result.x = x;
  return result;
}

@end