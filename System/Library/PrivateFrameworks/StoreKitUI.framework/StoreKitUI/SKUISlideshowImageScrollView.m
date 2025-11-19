@interface SKUISlideshowImageScrollView
- (CGRect)visibleRect;
- (SKUISlideshowImageScrollView)initWithFrame:(CGRect)a3;
- (void)_prepareToResize;
- (void)_recoverFromResize;
- (void)_resetMinMaxZoomScales;
- (void)layoutSubviews;
- (void)resetZoomScale;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)zoomIntoPoint:(CGPoint)a3;
@end

@implementation SKUISlideshowImageScrollView

- (SKUISlideshowImageScrollView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISlideshowImageScrollView initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUISlideshowImageScrollView;
  v8 = [(SKUISlideshowImageScrollView *)&v12 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUISlideshowImageScrollView *)v8 setShowsHorizontalScrollIndicator:0];
    [(SKUISlideshowImageScrollView *)v9 setShowsVerticalScrollIndicator:0];
    [(SKUISlideshowImageScrollView *)v9 setBouncesZoom:1];
    [(SKUISlideshowImageScrollView *)v9 setDecelerationRate:*MEMORY[0x277D76EB8]];
    image = v9->_image;
    v9->_image = 0;

    v9->_centerPointBeforeResize = *MEMORY[0x277CBF348];
    v9->_scaleBeforeResize = 0.0;
  }

  return v9;
}

- (void)resetZoomScale
{
  [(SKUISlideshowImageScrollView *)self minimumZoomScale];

  [(SKUISlideshowImageScrollView *)self setZoomScale:?];
}

- (void)zoomIntoPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SKUISlideshowImageScrollView *)self zoomScale];
  v7 = v6;
  [(SKUISlideshowImageScrollView *)self minimumZoomScale];
  if (v7 == v8)
  {
    [(SKUISlideshowImageScrollView *)self maximumZoomScale];
    v10 = v9;
    [(SKUISlideshowImageScrollView *)self contentSize];
    v12 = v11;
    [(SKUISlideshowImageScrollView *)self zoomScale];
    v14 = v12 / v13;
    [(SKUISlideshowImageScrollView *)self contentSize];
    v16 = v15;
    [(SKUISlideshowImageScrollView *)self zoomScale];
    v18 = v16 / v17;
    [(SKUISlideshowImageScrollView *)self bounds];
    v20 = v14 * (x / v19);
    [(SKUISlideshowImageScrollView *)self bounds];
    v22 = v18 * (y / v21);
    [(SKUISlideshowImageScrollView *)self bounds];
    v24 = v23 / v10;
    [(SKUISlideshowImageScrollView *)self bounds];

    [(SKUISlideshowImageScrollView *)self zoomToRect:1 animated:v20 - v24 * 0.5, v22 - v25 / v10 * 0.5, v24];
  }

  else
  {
    [(SKUISlideshowImageScrollView *)self minimumZoomScale];

    [(SKUISlideshowImageScrollView *)self setZoomScale:1 animated:?];
  }
}

- (CGRect)visibleRect
{
  [(SKUISlideshowImageScrollView *)self contentOffset];
  v4 = v3;
  v6 = v5;
  [(SKUISlideshowImageScrollView *)self bounds];
  v8 = v7;
  v10 = v9;
  [(SKUISlideshowImageScrollView *)self zoomScale];
  v12 = v6 / v11;
  v13 = v8 / v11;
  v14 = v10 / v11;
  v15 = v4 / v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SKUISlideshowImageScrollView;
  [(SKUISlideshowImageScrollView *)&v9 layoutSubviews];
  if (self->_imageView)
  {
    [(SKUISlideshowImageScrollView *)self bounds];
    Width = CGRectGetWidth(v10);
    [(SKUISlideshowImageScrollView *)self bounds];
    Height = CGRectGetHeight(v11);
    [(UIImageView *)self->_imageView frame];
    v7 = (Width - v6) * 0.5;
    if (v6 >= Width)
    {
      v7 = 0.0;
    }

    v8 = (Height - v5) * 0.5;
    if (v5 >= Height)
    {
      v8 = 0.0;
    }

    [(UIImageView *)self->_imageView setFrame:v7, v8];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUISlideshowImageScrollView *)self frame];
  if (width == v9 && height == v8)
  {
    v11.receiver = self;
    v11.super_class = SKUISlideshowImageScrollView;
    [(SKUISlideshowImageScrollView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(SKUISlideshowImageScrollView *)self _prepareToResize];
    v11.receiver = self;
    v11.super_class = SKUISlideshowImageScrollView;
    [(SKUISlideshowImageScrollView *)&v11 setFrame:x, y, width, height];
    [(SKUISlideshowImageScrollView *)self _recoverFromResize];
  }
}

- (void)setImage:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_image, a3);
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView removeFromSuperview];
  }

  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
  v7 = self->_imageView;
  self->_imageView = v6;

  [(SKUISlideshowImageScrollView *)self addSubview:self->_imageView];
  [v8 size];
  [(SKUISlideshowImageScrollView *)self setContentSize:?];
  [(SKUISlideshowImageScrollView *)self _resetMinMaxZoomScales];
  [(SKUISlideshowImageScrollView *)self minimumZoomScale];
  [(SKUISlideshowImageScrollView *)self setZoomScale:?];
}

- (void)_prepareToResize
{
  [(SKUISlideshowImageScrollView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(SKUISlideshowImageScrollView *)self bounds];
  [(SKUISlideshowImageScrollView *)self convertPoint:self->_imageView toView:MidX, CGRectGetMidY(v8)];
  self->_centerPointBeforeResize.x = v4;
  self->_centerPointBeforeResize.y = v5;
  [(SKUISlideshowImageScrollView *)self zoomScale];
  self->_scaleBeforeResize = v6;
}

- (void)_recoverFromResize
{
  [(SKUISlideshowImageScrollView *)self _resetMinMaxZoomScales];
  [(SKUISlideshowImageScrollView *)self minimumZoomScale];
  if (scaleBeforeResize >= self->_scaleBeforeResize)
  {
    scaleBeforeResize = self->_scaleBeforeResize;
  }

  [(SKUISlideshowImageScrollView *)self setZoomScale:scaleBeforeResize];
  [(SKUISlideshowImageScrollView *)self convertPoint:self->_imageView fromView:self->_centerPointBeforeResize.x, self->_centerPointBeforeResize.y];
  v5 = v4;
  v7 = v6;
  [(SKUISlideshowImageScrollView *)self bounds];
  v9 = v5 - v8 * 0.5;
  [(SKUISlideshowImageScrollView *)self bounds];
  v11 = v7 - v10 * 0.5;
  [(SKUISlideshowImageScrollView *)self contentSize];
  v13 = v12;
  [(SKUISlideshowImageScrollView *)self bounds];
  v15 = v13 - v14;
  [(SKUISlideshowImageScrollView *)self contentSize];
  v17 = v16;
  [(SKUISlideshowImageScrollView *)self bounds];
  v19 = v17 - v18;
  if (v15 >= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = v15;
  }

  if (v19 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v19;
  }

  if (*MEMORY[0x277CBF348] >= v20)
  {
    v22 = *MEMORY[0x277CBF348];
  }

  else
  {
    v22 = v20;
  }

  if (*(MEMORY[0x277CBF348] + 8) >= v21)
  {
    v23 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v23 = v21;
  }

  [(SKUISlideshowImageScrollView *)self setContentOffset:v22, v23];
}

- (void)_resetMinMaxZoomScales
{
  [(SKUISlideshowImageScrollView *)self bounds];
  if (self->_image)
  {
    v7 = v5;
    v8 = v6;
    if (!CGRectIsEmpty(*&v3))
    {
      [(UIImage *)self->_image size];
      v11 = 0.0;
      if (v7 > 0.0 && v8 > 0.0 && v9 > 0.0 && v10 > 0.0)
      {
        v12 = v7 / v9;
        v13 = v8 / v10;
        if (v12 >= v13)
        {
          v11 = v13;
        }

        else
        {
          v11 = v12;
        }
      }

      [(SKUISlideshowImageScrollView *)self setMinimumZoomScale:v11];

      [(SKUISlideshowImageScrollView *)self setMaximumZoomScale:v11 + v11];
    }
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISlideshowImageScrollView initWithFrame:]";
}

@end