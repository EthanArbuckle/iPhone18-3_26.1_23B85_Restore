@interface _TVMonogramView
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (_TVMonogramView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (void)_loadWithMonogramDescription:(id)description imageProxy:(id)proxy;
- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)frame;
- (void)_updatePlaceholerView;
- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)frame;
- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setMonogramDescription:(id)description;
- (void)setOverlayView:(id)view;
- (void)setPlaceholderImage:(id)image;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated completion:(id)completion;
@end

@implementation _TVMonogramView

- (_TVMonogramView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = _TVMonogramView;
  height = [(_UIFloatingContentView *)&v33 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
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
    layer = [(UIView *)v12->_placeholderView layer];
    [(_TVMonogramView *)v12 bounds];
    [layer setCornerRadius:CGRectGetWidth(v35) * 0.5];

    contentView = [(_UIFloatingContentView *)v12 contentView];
    [contentView addSubview:v12->_placeholderView];

    v20 = [_TVImageView alloc];
    [(_TVMonogramView *)v12 bounds];
    v21 = [(_TVImageView *)v20 initWithFrame:?];
    imageView = v12->_imageView;
    v12->_imageView = v21;

    v23 = v12->_imageView;
    focusedBgColor = [configurationCopy focusedBgColor];
    [(_TVImageView *)v23 _setFocusedColor:focusedBgColor];

    [(_TVImageView *)v12->_imageView setClipsToBounds:1];
    [(_TVImageView *)v12->_imageView setContentMode:1];
    contentView2 = [(_UIFloatingContentView *)v12 contentView];
    [contentView2 addSubview:v12->_imageView];

    unfocusedShadowImage = [configurationCopy unfocusedShadowImage];

    if (unfocusedShadowImage)
    {
      [(_UIFloatingContentView *)v12 setShadowEnabled:0];
      [(_UIFloatingContentView *)v12 setClipsContentToBounds:0];
      v27 = objc_alloc(MEMORY[0x277D75D18]);
      v28 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      unfocusedShadowView = v12->_unfocusedShadowView;
      v12->_unfocusedShadowView = v28;

      contentView3 = [(_UIFloatingContentView *)v12 contentView];
      [contentView3 insertSubview:v12->_unfocusedShadowView atIndex:0];

      v31 = v12->_unfocusedShadowView;
      [configurationCopy unfocusedShadowAlpha];
      [(UIView *)v31 setAlpha:?];
    }
  }

  return v12;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(_TVImageView *)self->_imageView setImage:v6];
    [(_TVImageView *)self->_imageView setAlpha:1.0];
    imageCopy = v6;
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_placeholderImage, image);
    [(_TVImageView *)self->_imageView setPlaceholderImage:v6];
    [(_TVMonogramView *)self _updatePlaceholerView];
    imageCopy = v6;
  }
}

- (void)setMonogramDescription:(id)description
{
  descriptionCopy = description;
  if (self->_monogramDescription != descriptionCopy)
  {
    objc_storeStrong(&self->_monogramDescription, description);
    if ([(_TVMonogramDescription *)descriptionCopy scaleMode]== 2)
    {
      [(_TVMonogramDescription *)descriptionCopy backgroundColor];
    }

    else
    {
      [(_TVMonogramDescription *)descriptionCopy fillColor];
    }
    v5 = ;
    [(UIView *)self->_placeholderView setBackgroundColor:v5];
    [(_TVMonogramView *)self _updatePlaceholerView];
    imageProxy = [(_TVMonogramView *)self imageProxy];
    [(_TVMonogramView *)self _loadWithMonogramDescription:descriptionCopy imageProxy:imageProxy];
  }
}

- (void)_updatePlaceholerView
{
  placeholderImage = [(_TVMonogramView *)self placeholderImage];
  v4 = placeholderImage == 0;
  v5 = placeholderImage != 0;

  [(UIView *)self->_placeholderView setHidden:v5];
  imageView = self->_imageView;

  [(_TVImageView *)imageView setHidden:v4];
}

- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)frame
{
  v4 = frame.size.width / 130.0;
  unfocusedShadowImage = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [unfocusedShadowImage size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7);
  v11 = floor(v4 * v9);
  [(_TVMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(_TVMonogramView *)self bounds];
  [(UIView *)self->_unfocusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  layer = [(UIView *)self->_unfocusedShadowView layer];
  unfocusedShadowImage2 = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [layer setContents:{objc_msgSend(unfocusedShadowImage2, "CGImage")}];

  layer2 = [(UIView *)self->_unfocusedShadowView layer];
  unfocusedShadowImage3 = [(TVMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [unfocusedShadowImage3 scale];
  [layer2 setContentsScale:?];
}

- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)frame
{
  v4 = frame.size.width / 130.0;
  focusedShadowImage = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [focusedShadowImage size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7 * 0.78);
  v11 = floor(v4 * v9 * 0.78);
  [(_TVMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(_TVMonogramView *)self bounds];
  [(UIView *)self->_focusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  layer = [(UIView *)self->_focusedShadowView layer];
  focusedShadowImage2 = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [layer setContents:{objc_msgSend(focusedShadowImage2, "CGImage")}];

  layer2 = [(UIView *)self->_focusedShadowView layer];
  focusedShadowImage3 = [(TVMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [focusedShadowImage3 scale];
  [layer2 setContentsScale:?];
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

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (self->_isSelected)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  pressedCopy = pressed;
  completionCopy = completion;
  [(_UIFloatingContentView *)self setControlState:v7 | pressedCopy animated:animatedCopy];
  [(_TVMonogramView *)self setPressCompletionBlock:completionCopy];
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  overlayView = self->_overlayView;
  v8 = viewCopy;
  if (overlayView != viewCopy)
  {
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, view);
    if (self->_overlayView)
    {
      contentView = [(_UIFloatingContentView *)self contentView];
      [contentView addSubview:self->_overlayView];
    }
  }

  [(_TVMonogramView *)self setNeedsLayout];
}

- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state
{
  v5 = [(_TVMonogramView *)self pressCompletionBlock:view];

  if (v5)
  {
    pressCompletionBlock = [(_TVMonogramView *)self pressCompletionBlock];
    pressCompletionBlock[2]();

    [(_TVMonogramView *)self setPressCompletionBlock:0];
  }
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  if (size.width == 0.0 || (height = size.height, size.height == 0.0))
  {
    [(_TVMonogramView *)self bounds];
    width = v6;
    height = v7;
  }

  else
  {
    width = size.width;
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

- (void)_loadWithMonogramDescription:(id)description imageProxy:(id)proxy
{
  descriptionCopy = description;
  proxyCopy = proxy;
  if ([descriptionCopy preferedMonogramType] || proxyCopy || !self->_placeholderImage)
  {
    [descriptionCopy size];
    defaultCenter = -[TVImageScaleDecorator initWithScaleToSize:scaleMode:]([_TVMonogramDecorator alloc], "initWithScaleToSize:scaleMode:", [descriptionCopy scaleMode], v8, v9);
    imageURL = [descriptionCopy imageURL];
    if (imageURL)
    {
      v12 = imageURL;
      imageURL2 = [descriptionCopy imageURL];
      tv_isResourceURL = [imageURL2 tv_isResourceURL];

      if ((tv_isResourceURL & 1) == 0)
      {
        [descriptionCopy padding];
        [(TVImageScaleDecorator *)defaultCenter setPadding:?];
        [descriptionCopy upscaleAdjustment];
        [(TVImageScaleDecorator *)defaultCenter setFocusedSizeIncrease:?];
        backgroundColor = [descriptionCopy backgroundColor];
        [(TVImageScaleDecorator *)defaultCenter setBgColor:backgroundColor];

        borderColor = [descriptionCopy borderColor];
        [(_TVMonogramDecorator *)defaultCenter setBorderColor:borderColor];

        [descriptionCopy borderWidth];
        [(_TVMonogramDecorator *)defaultCenter setBorderWidth:?];
      }
    }

    if (proxyCopy)
    {
      v17 = proxyCopy;
    }

    else
    {
      v18 = [TVImageProxy alloc];
      v19 = +[_TVMonogramImageLoader sharedInstance];
      v17 = [(TVImageProxy *)v18 initWithObject:descriptionCopy imageLoader:v19 groupType:0];
    }

    [(TVImageProxy *)v17 setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
    [(TVImageProxy *)v17 setDecorator:defaultCenter];
    imageURL3 = [descriptionCopy imageURL];
    if (imageURL3 && (v21 = imageURL3, [descriptionCopy imageURL], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "tv_isResourceURL"), v22, v21, (v23 & 1) == 0))
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
    v28 = descriptionCopy;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [(_TVMonogramDecorator *)defaultCenter postNotificationName:@"TVMonogramViewImageDidUpdateNotification" object:self];
  }
}

@end