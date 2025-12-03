@interface VideosExtrasZoomableImageView
- (CGPoint)_maximumContentOffset;
- (CGPoint)_minimumContentOffset;
- (CGPoint)pointToCenterAfterResize;
- (CGSize)imageSize;
- (VideosExtrasZoomableImageView)initWithFrame:(CGRect)frame;
- (void)_prepareToResize;
- (void)_recoverFromResizing;
- (void)_updateMinimumAndMaximumZoomScalesForCurrentBounds;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)layoutSubviews;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)zoomToPoint:(CGPoint)point animated:(BOOL)animated;
@end

@implementation VideosExtrasZoomableImageView

- (VideosExtrasZoomableImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VideosExtrasZoomableImageView;
  v3 = [(VideosExtrasZoomableImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  [zoomView frame];
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

  [zoomView setFrame:{v10, v11}];
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  [(VideosExtrasZoomableImageView *)self setNeedsLayout];
  [(VideosExtrasZoomableImageView *)self layoutIfNeeded];
  zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
  if ([contextCopy appearState] == 1)
  {
    zoomingImageView = [contextCopy zoomingImageView];
    [zoomingImageView replicateStateFromImageView:zoomView];
  }

  [zoomView setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  if (![contextCopy appearState])
  {
    zoomingImageView = [contextCopy zoomingImageView];
    zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
    [zoomingImageView replicateStateFromImageView:zoomView];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  v4 = [(VideosExtrasZoomableImageView *)self zoomView:context];
  [v4 setHidden:0];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v12 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(VideosExtrasZoomableImageView *)self setZoomScale:1.0];
    zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
    [zoomView removeFromSuperview];

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

    imageCopy = v12;
  }
}

- (void)zoomToPoint:(CGPoint)point animated:(BOOL)animated
{
  y = point.y;
  x = point.x;
  zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertRect:zoomView toView:x, y, 1.0, 1.0];
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
  zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertPoint:zoomView toView:MidX, MidY];
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
  zoomView = [(VideosExtrasZoomableImageView *)self zoomView];
  [(VideosExtrasZoomableImageView *)self convertPoint:zoomView fromView:v8, v10];
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