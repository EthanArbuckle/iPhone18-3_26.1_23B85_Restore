@interface _TVMonogramView
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3;
- (_TVMonogramView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (void)_loadWithMonogramDescription:(id)a3 imageProxy:(id)a4;
- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)a3;
- (void)_updatePlaceholerView;
- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)a3;
- (void)floatingContentView:(id)a3 didFinishTransitioningToState:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setMonogramDescription:(id)a3;
- (void)setOverlayView:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation _TVMonogramView

- (_TVMonogramView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v33.receiver = self;
  v33.super_class = _TVMonogramView;
  v11 = [(_UIFloatingContentView *)&v33 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    [(_UIFloatingContentView *)v12 setContentOpaque:1];
    [(_UIFloatingContentView *)v12 setBackgroundColor:0 forState:0];
    [(_UIFloatingContentView *)v12 setBackgroundColor:0 forState:8];
    [(_UIFloatingContentView *)v12 setBackgroundColor:0 forState:1];
    [(_UIFloatingContentView *)v12 setBackgroundColor:0 forState:4];
    v13 = +[TVMLUtilities _isSolariumEnabled];
    v14 = 0.0;
    if (v13)
    {
      [(_TVMonogramView *)v12 bounds];
      v14 = CGRectGetWidth(v34) * 0.5;
    }

    [(_UIFloatingContentView *)v12 setCornerRadius:v14];
    [(_UIFloatingContentView *)v12 setContentMotionRotation:*MEMORY[0x277CBF348] translation:*(MEMORY[0x277CBF348] + 8), 8.0, 8.0];
    [(_UIFloatingContentView *)v12 setFloatingContentDelegate:v12];
    [(_TVMonogramView *)v12 setFocusedStateEnabled:1];
    v15 = objc_alloc(MEMORY[0x277D75D18]);
    [(_TVMonogramView *)v12 bounds];
    v16 = [v15 initWithFrame:?];
    placeholderView = v12->_placeholderView;
    v12->_placeholderView = v16;

    [(UIView *)v12->_placeholderView setHidden:1];
    v18 = [(UIView *)v12->_placeholderView layer];
    [(_TVMonogramView *)v12 bounds];
    [v18 setCornerRadius:CGRectGetWidth(v35) * 0.5];

    v19 = [(_UIFloatingContentView *)v12 contentView];
    [v19 addSubview:v12->_placeholderView];

    v20 = [_TVImageView alloc];
    [(_TVMonogramView *)v12 bounds];
    v21 = [(_TVImageView *)v20 initWithFrame:?];
    imageView = v12->_imageView;
    v12->_imageView = v21;

    v23 = v12->_imageView;
    v24 = [v10 focusedBgColor];
    [(_TVImageView *)v23 _setFocusedColor:v24];

    [(_TVImageView *)v12->_imageView setClipsToBounds:1];
    [(_TVImageView *)v12->_imageView setContentMode:1];
    v25 = [(_UIFloatingContentView *)v12 contentView];
    [v25 addSubview:v12->_imageView];

    v26 = [v10 unfocusedShadowImage];

    if (v26)
    {
      [(_UIFloatingContentView *)v12 setShadowEnabled:0];
      [(_UIFloatingContentView *)v12 setClipsContentToBounds:0];
      v27 = objc_alloc(MEMORY[0x277D75D18]);
      v28 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      unfocusedShadowView = v12->_unfocusedShadowView;
      v12->_unfocusedShadowView = v28;

      v30 = [(_UIFloatingContentView *)v12 contentView];
      [v30 insertSubview:v12->_unfocusedShadowView atIndex:0];

      v31 = v12->_unfocusedShadowView;
      [v10 unfocusedShadowAlpha];
      [(UIView *)v31 setAlpha:?];
    }
  }

  return v12;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(_TVImageView *)self->_imageView setImage:v6];
    [(_TVImageView *)self->_imageView setAlpha:1.0];
    v5 = v6;
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(_TVImageView *)self->_imageView setPlaceholderImage:v6];
    [(_TVMonogramView *)self _updatePlaceholerView];
    v5 = v6;
  }
}

- (void)setMonogramDescription:(id)a3
{
  v7 = a3;
  if (self->_monogramDescription != v7)
  {
    objc_storeStrong(&self->_monogramDescription, a3);
    if ([(_TVMonogramDescription *)v7 scaleMode]== 2)
    {
      [(_TVMonogramDescription *)v7 backgroundColor];
    }

    else
    {
      [(_TVMonogramDescription *)v7 fillColor];
    }
    v5 = ;
    [(UIView *)self->_placeholderView setBackgroundColor:v5];
    [(_TVMonogramView *)self _updatePlaceholerView];
    v6 = [(_TVMonogramView *)self imageProxy];
    [(_TVMonogramView *)self _loadWithMonogramDescription:v7 imageProxy:v6];
  }
}

- (void)_updatePlaceholerView
{
  v3 = [(_TVMonogramView *)self placeholderImage];
  v4 = v3 == 0;
  v5 = v3 != 0;

  [(UIView *)self->_placeholderView setHidden:v5];
  imageView = self->_imageView;

  [(_TVImageView *)imageView setHidden:v4];
}

- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)a3
{
  v4 = a3.size.width / 130.0;
  v5 = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7);
  v11 = floor(v4 * v9);
  [(_TVMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(_TVMonogramView *)self bounds];
  [(UIView *)self->_unfocusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  v13 = [(UIView *)self->_unfocusedShadowView layer];
  v14 = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v13 setContents:{objc_msgSend(v14, "CGImage")}];

  v16 = [(UIView *)self->_unfocusedShadowView layer];
  v15 = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v15 scale];
  [v16 setContentsScale:?];
}

- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)a3
{
  v4 = a3.size.width / 130.0;
  v5 = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7 * 0.78);
  v11 = floor(v4 * v9 * 0.78);
  [(_TVMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(_TVMonogramView *)self bounds];
  [(UIView *)self->_focusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  v13 = [(UIView *)self->_focusedShadowView layer];
  v14 = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v13 setContents:{objc_msgSend(v14, "CGImage")}];

  v16 = [(UIView *)self->_focusedShadowView layer];
  v15 = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v15 scale];
  [v16 setContentsScale:?];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _TVMonogramView;
  [(_UIFloatingContentView *)&v11 layoutSubviews];
  [(_TVMonogramView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_TVImageView *)self->_imageView setFrame:?];
  [(UIView *)self->_placeholderView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_overlayView setFrame:v4, v6, v8, v10];
  [(_TVMonogramView *)self _updateUnfocusedShadowFrameAndLayerWithFrame:v4, v6, v8, v10];
}

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  if (self->_isSelected)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = a5;
  [(_UIFloatingContentView *)self setControlState:v7 | v8 animated:v5];
  [(_TVMonogramView *)self setPressCompletionBlock:v9];
}

- (void)setOverlayView:(id)a3
{
  v5 = a3;
  overlayView = self->_overlayView;
  v8 = v5;
  if (overlayView != v5)
  {
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, a3);
    if (self->_overlayView)
    {
      v7 = [(_UIFloatingContentView *)self contentView];
      [v7 addSubview:self->_overlayView];
    }
  }

  [(_TVMonogramView *)self setNeedsLayout];
}

- (void)floatingContentView:(id)a3 didFinishTransitioningToState:(unint64_t)a4
{
  v5 = [(_TVMonogramView *)self pressCompletionBlock:a3];

  if (v5)
  {
    v6 = [(_TVMonogramView *)self pressCompletionBlock];
    v6[2]();

    [(_TVMonogramView *)self setPressCompletionBlock:0];
  }
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3
{
  if (a3.width == 0.0 || (height = a3.height, a3.height == 0.0))
  {
    [(_TVMonogramView *)self bounds];
    width = v6;
    height = v7;
  }

  else
  {
    width = a3.width;
  }

  [(_UIFloatingContentView *)self focusedSizeIncrease];
  v9 = width / height;
  if (width <= height)
  {
    v11 = height + v8;
    v10 = ceil(v9 * v11);
  }

  else
  {
    v10 = width + v8;
    v11 = ceil((width + v8) / v9);
  }

  v12 = floor((v10 - width) * 0.5);
  v13 = floor((v11 - height) * 0.5);
  v14 = v13;
  v15 = v12;
  result.right = v15;
  result.bottom = v14;
  result.left = v12;
  result.top = v13;
  return result;
}

- (void)_loadWithMonogramDescription:(id)a3 imageProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 preferedMonogramType] || v7 || !self->_placeholderImage)
  {
    [v6 size];
    v10 = -[TVImageScaleDecorator initWithScaleToSize:scaleMode:]([_TVMonogramDecorator alloc], "initWithScaleToSize:scaleMode:", [v6 scaleMode], v8, v9);
    v11 = [v6 imageURL];
    if (v11)
    {
      v12 = v11;
      v13 = [v6 imageURL];
      v14 = [v13 tv_isResourceURL];

      if ((v14 & 1) == 0)
      {
        [v6 padding];
        [(TVImageScaleDecorator *)v10 setPadding:?];
        [v6 upscaleAdjustment];
        [(TVImageScaleDecorator *)v10 setFocusedSizeIncrease:?];
        v15 = [v6 backgroundColor];
        [(TVImageScaleDecorator *)v10 setBgColor:v15];

        v16 = [v6 borderColor];
        [(_TVMonogramDecorator *)v10 setBorderColor:v16];

        [v6 borderWidth];
        [(_TVMonogramDecorator *)v10 setBorderWidth:?];
      }
    }

    if (v7)
    {
      v17 = v7;
    }

    else
    {
      v18 = [TVImageProxy alloc];
      v19 = +[_TVMonogramImageLoader sharedInstance];
      v17 = [(TVImageProxy *)v18 initWithObject:v6 imageLoader:v19 groupType:0];
    }

    [(TVImageProxy *)v17 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
    [(TVImageProxy *)v17 setDecorator:v10];
    v20 = [v6 imageURL];
    if (v20 && (v21 = v20, [v6 imageURL], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "tv_isResourceURL"), v22, v21, (v23 & 1) == 0))
    {
      v25 = 1.0;
      [(_TVImageView *)self->_imageView setAlpha:1.0];
    }

    else
    {
      [(TVMonogramViewConfiguration *)self->_configuration unfocusedImageAlpha];
      v25 = v24;
    }

    self->_unfocusedImageAlpha = v25;
    objc_initWeak(&location, self);
    imageView = self->_imageView;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59___TVMonogramView__loadWithMonogramDescription_imageProxy___block_invoke;
    v27[3] = &unk_279D6FDC0;
    objc_copyWeak(&v29, &location);
    v28 = v6;
    [(_TVImageView *)imageView setImageProxy:v17 completion:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UIView *)self->_placeholderView setHidden:1];
    [(_TVImageView *)self->_imageView setHidden:0];
    [(_TVImageView *)self->_imageView setImage:0];
    [(_TVMonogramView *)self _updateAppearanceForSelectionStateWithCoordinator:0];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [(_TVMonogramDecorator *)v10 postNotificationName:@"TVMonogramViewImageDidUpdateNotification" object:self];
  }
}

@end