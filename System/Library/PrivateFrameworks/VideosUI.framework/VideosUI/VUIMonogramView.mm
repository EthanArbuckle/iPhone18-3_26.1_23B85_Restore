@interface VUIMonogramView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUIMonogramView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (void)_loadWithMonogramDescription:(id)description imageProxy:(id)proxy;
- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)frame;
- (void)_updatePlaceholerView;
- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setFocusedShadowView:(id)view;
- (void)setImage:(id)image;
- (void)setMonogramDescription:(id)description;
- (void)setOverlayView:(id)view;
- (void)setPlaceholderImage:(id)image;
- (void)setUnFocusedShadowView:(id)view;
- (void)updateShadowImage;
@end

@implementation VUIMonogramView

- (VUIMonogramView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = VUIMonogramView;
  height = [(VUIMonogramView *)&v25 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
    v13 = [VUIBaseView alloc];
    [(VUIMonogramView *)v12 bounds];
    v14 = [(VUIBaseView *)v13 initWithFrame:?];
    placeholderView = v12->_placeholderView;
    v12->_placeholderView = v14;

    [(VUIBaseView *)v12->_placeholderView setHidden:1];
    [(VUIMonogramView *)v12 addSubview:v12->_placeholderView];
    v16 = objc_alloc(MEMORY[0x1E69DF740]);
    [(VUIMonogramView *)v12 bounds];
    v17 = [v16 initWithFrame:?];
    imageView = v12->_imageView;
    v12->_imageView = v17;

    v19 = v12->_imageView;
    focusedBgColor = [configurationCopy focusedBgColor];
    [(VUIImageView *)v19 _setFocusedColor:focusedBgColor];

    [(VUIImageView *)v12->_imageView setClipsToBounds:1];
    [(VUIImageView *)v12->_imageView setContentMode:1];
    v21 = [VUIBaseView alloc];
    [(VUIMonogramView *)v12 bounds];
    v22 = [(VUIBaseView *)v21 initWithFrame:?];
    imageAndShadowContainerView = v12->_imageAndShadowContainerView;
    v12->_imageAndShadowContainerView = v22;

    [(VUIMonogramView *)v12 addSubview:v12->_imageAndShadowContainerView];
    [(VUIBaseView *)v12->_imageAndShadowContainerView vui_addSubview:v12->_imageView oldView:0];
    [(VUIMonogramView *)v12 updateShadowImage];
  }

  return v12;
}

- (void)updateShadowImage
{
  unfocusedShadowImage = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];

  if (unfocusedShadowImage)
  {
    v4 = [VUIBaseView alloc];
    v5 = [(VUIBaseView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(VUIMonogramView *)self setUnFocusedShadowView:v5];

    unfocusedShadowView = self->_unfocusedShadowView;
    [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowAlpha];

    [(VUIBaseView *)unfocusedShadowView setAlpha:?];
  }

  else
  {

    [(VUIMonogramView *)self setUnFocusedShadowView:0];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    [(VUIMonogramView *)self updateShadowImage];
    configurationCopy = v6;
  }
}

- (void)setFocusedShadowView:(id)view
{
  viewCopy = view;
  focusedShadowView = self->_focusedShadowView;
  if (focusedShadowView != viewCopy)
  {
    v8 = viewCopy;
    [(VUIBaseView *)focusedShadowView removeFromSuperview];
    objc_storeStrong(&self->_focusedShadowView, view);
    viewCopy = v8;
    if (self->_focusedShadowView)
    {
      imageAndShadowContainerView = self->_imageAndShadowContainerView;
      if (imageAndShadowContainerView)
      {
        [VUIBaseView insertSubview:"insertSubview:atIndex:" atIndex:?];
        viewCopy = v8;
      }
    }
  }
}

- (void)setUnFocusedShadowView:(id)view
{
  viewCopy = view;
  unfocusedShadowView = self->_unfocusedShadowView;
  if (unfocusedShadowView != viewCopy)
  {
    v8 = viewCopy;
    [(VUIBaseView *)unfocusedShadowView removeFromSuperview];
    objc_storeStrong(&self->_unfocusedShadowView, view);
    viewCopy = v8;
    if (self->_unfocusedShadowView)
    {
      imageAndShadowContainerView = self->_imageAndShadowContainerView;
      if (imageAndShadowContainerView)
      {
        [VUIBaseView insertSubview:"insertSubview:atIndex:" atIndex:?];
        viewCopy = v8;
      }
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(VUIImageView *)self->_imageView setImage:v6];
    [(VUIImageView *)self->_imageView setVuiAlpha:1.0];
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
    [(VUIImageView *)self->_imageView setPlaceholderImage:v6];
    [(VUIMonogramView *)self _updatePlaceholerView];
    imageCopy = v6;
  }
}

- (void)setMonogramDescription:(id)description
{
  descriptionCopy = description;
  if (self->_monogramDescription != descriptionCopy)
  {
    objc_storeStrong(&self->_monogramDescription, description);
    if ([(VUIMonogramDescription *)descriptionCopy scaleMode]== 2)
    {
      [(VUIMonogramDescription *)descriptionCopy backgroundColor];
    }

    else
    {
      [(VUIMonogramDescription *)descriptionCopy fillColor];
    }
    v5 = ;
    [(VUIBaseView *)self->_placeholderView setVuiBackgroundColor:v5];
    [(VUIMonogramView *)self _updatePlaceholerView];
    imageProxy = [(VUIMonogramView *)self imageProxy];
    [(VUIMonogramView *)self _loadWithMonogramDescription:descriptionCopy imageProxy:imageProxy];
  }
}

- (void)_updatePlaceholerView
{
  placeholderImage = [(VUIMonogramView *)self placeholderImage];
  v4 = placeholderImage == 0;
  v5 = placeholderImage != 0;

  [(VUIBaseView *)self->_placeholderView setHidden:v5];
  imageView = self->_imageView;

  [(VUIImageView *)imageView setHidden:v4];
}

- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)frame
{
  v4 = frame.size.width / 130.0;
  unfocusedShadowImage = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [unfocusedShadowImage size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7);
  v11 = floor(v4 * v9);
  [(VUIMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(VUIMonogramView *)self bounds];
  [(VUIBaseView *)self->_unfocusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  layer = [(VUIBaseView *)self->_unfocusedShadowView layer];
  unfocusedShadowImage2 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [layer setContents:{objc_msgSend(unfocusedShadowImage2, "vuiCGImage")}];

  layer2 = [(VUIBaseView *)self->_unfocusedShadowView layer];
  unfocusedShadowImage3 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [unfocusedShadowImage3 scale];
  [layer2 setContentsScale:?];
}

- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)frame
{
  v4 = frame.size.width / 130.0;
  focusedShadowImage = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [focusedShadowImage size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7 * 0.78);
  v11 = floor(v4 * v9 * 0.78);
  [(VUIMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(VUIMonogramView *)self bounds];
  [(VUIBaseView *)self->_focusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  layer = [(VUIBaseView *)self->_focusedShadowView layer];
  focusedShadowImage2 = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [layer setContents:{objc_msgSend(focusedShadowImage2, "vuiCGImage")}];

  layer2 = [(VUIBaseView *)self->_focusedShadowView layer];
  focusedShadowImage3 = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [focusedShadowImage3 scale];
  [layer2 setContentsScale:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIMonogramView *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  if (only)
  {
    [(VUIImageView *)self->_imageView vui_sizeThatFits:subviews.width, subviews.height];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
    [(VUIMonogramView *)self bounds:subviews.width];
    v23.receiver = self;
    v23.super_class = VUIMonogramView;
    [(VUIMonogramView *)&v23 vui_layoutSubviews:0 computationOnly:v9, v10];
    [(VUIMonogramView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(VUIImageView *)self->_imageView setFrame:?];
    [(VUIBaseView *)self->_imageAndShadowContainerView setFrame:v12, v14, v16, v18];
    [(VUIBaseView *)self->_placeholderView setFrame:v12, v14, v16, v18];
    [(UIView *)self->_overlayView setFrame:v12, v14, v16, v18];
    layer = [(VUIBaseView *)self->_placeholderView layer];
    [(VUIMonogramView *)self bounds];
    [layer setCornerRadius:CGRectGetWidth(v25) * 0.5];

    imageView = self->_imageView;
    [(VUIMonogramView *)self bounds];
    [(VUIImageView *)imageView setCornerRadius:CGRectGetWidth(v26) * 0.5];
    [(VUIMonogramView *)self _updateUnfocusedShadowFrameAndLayerWithFrame:v12, v14, v16, v18];
  }

  v21 = v6;
  v22 = v8;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = VUIMonogramView;
  [(VUIBaseView *)&v14 layoutSubviews];
  [(VUIMonogramView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUIImageView *)self->_imageView setFrame:?];
  [(VUIBaseView *)self->_imageAndShadowContainerView setFrame:v4, v6, v8, v10];
  [(VUIBaseView *)self->_placeholderView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_overlayView setFrame:v4, v6, v8, v10];
  [(VUIMonogramView *)self bounds];
  v11 = CGRectGetWidth(v15) * 0.5;
  layer = [(VUIBaseView *)self->_placeholderView layer];
  [layer setCornerRadius:v11];

  [(VUIImageView *)self->_imageView setCornerRadius:v11];
  layer2 = [(VUIMonogramView *)self layer];
  [layer2 setCornerRadius:v11];

  [(VUIMonogramView *)self _updateUnfocusedShadowFrameAndLayerWithFrame:v4, v6, v8, v10];
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  [(VUIMonogramView *)self vui_addSubview:viewCopy oldView:self->_overlayView];
  overlayView = self->_overlayView;
  self->_overlayView = viewCopy;
}

- (void)_loadWithMonogramDescription:(id)description imageProxy:(id)proxy
{
  descriptionCopy = description;
  proxyCopy = proxy;
  if (![descriptionCopy preferedMonogramType] && !proxyCopy && self->_placeholderImage)
  {
    [(VUIBaseView *)self->_placeholderView setHidden:1];
    [(VUIImageView *)self->_imageView setHidden:0];
    [(VUIImageView *)self->_imageView setImage:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [(_VUIMonogramDecorator *)defaultCenter postNotificationName:@"VUIMonogramViewImageDidUpdateNotification" object:self];
    goto LABEL_20;
  }

  [descriptionCopy size];
  defaultCenter = -[VUIImageScaleDecorator initWithScaleToSize:scaleMode:]([_VUIMonogramDecorator alloc], "initWithScaleToSize:scaleMode:", [descriptionCopy scaleMode], v8, v9);
  imageURL = [descriptionCopy imageURL];
  if (imageURL)
  {
    v12 = imageURL;
    imageURL2 = [descriptionCopy imageURL];
    vuicore_isResourceOrSymbolURL = [imageURL2 vuicore_isResourceOrSymbolURL];

    if ((vuicore_isResourceOrSymbolURL & 1) == 0)
    {
      [descriptionCopy padding];
      [(VUIImageScaleDecorator *)defaultCenter setPadding:?];
      [descriptionCopy upscaleAdjustment];
      [(VUIImageScaleDecorator *)defaultCenter setFocusedSizeIncrease:?];
      if (![descriptionCopy optimizedImageRendering])
      {
        backgroundColor = [descriptionCopy backgroundColor];
        [(VUIImageScaleDecorator *)defaultCenter setBgColor:backgroundColor];

        borderColor = [descriptionCopy borderColor];
        [(_VUIMonogramDecorator *)defaultCenter setBorderColor:borderColor];

        [descriptionCopy borderWidth];
        [(_VUIMonogramDecorator *)defaultCenter setBorderWidth:?];
        if (proxyCopy)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

      imageView = [(VUIMonogramView *)self imageView];
      [descriptionCopy borderWidth];
      [imageView setBorderWidth:?];

      imageView2 = [(VUIMonogramView *)self imageView];
      borderColor2 = [descriptionCopy borderColor];
      [imageView2 setBorderColor:borderColor2];

      imageView3 = [(VUIMonogramView *)self imageView];
      backgroundColor2 = [descriptionCopy backgroundColor];
      [imageView3 setPlaceholderColor:backgroundColor2];
    }
  }

  if (proxyCopy)
  {
LABEL_7:
    v20 = proxyCopy;
    goto LABEL_13;
  }

LABEL_12:
  v23 = objc_alloc(MEMORY[0x1E69DF730]);
  v24 = +[_VUIMonogramImageLoader sharedInstance];
  v20 = [v23 initWithObject:descriptionCopy imageLoader:v24 groupType:0];

LABEL_13:
  [v20 setCacheOnLoad:{objc_msgSend(MEMORY[0x1E69DF6D0], "canHandleDecodingOnRenderThread") ^ 1}];
  [v20 setDecorator:defaultCenter];
  [v20 setOptimizedImageRendering:{objc_msgSend(descriptionCopy, "optimizedImageRendering")}];
  imageURL3 = [descriptionCopy imageURL];
  if (imageURL3 && (v26 = imageURL3, [descriptionCopy imageURL], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "vuicore_isResourceOrSymbolURL"), v27, v26, (v28 & 1) == 0))
  {
    v30 = 1.0;
    [(VUIImageView *)self->_imageView setVuiAlpha:1.0];
  }

  else
  {
    [(VUIMonogramViewConfiguration *)self->_configuration unfocusedImageAlpha];
    v30 = v29;
  }

  self->_unfocusedImageAlpha = v30;
  placeholderImage = [descriptionCopy placeholderImage];

  if (placeholderImage)
  {
    placeholderImage2 = [descriptionCopy placeholderImage];
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = placeholderImage2;
  }

  objc_initWeak(&location, self);
  imageView = self->_imageView;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __59__VUIMonogramView__loadWithMonogramDescription_imageProxy___block_invoke;
  v35[3] = &unk_1E8734B68;
  objc_copyWeak(&v37, &location);
  v36 = descriptionCopy;
  [(VUIImageView *)imageView setImageProxy:v20 completion:v35];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

LABEL_20:
}

void __59__VUIMonogramView__loadWithMonogramDescription_imageProxy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a4)
  {
    v8 = [*(a1 + 32) preferedMonogramType];
    if (a2 || !v8)
    {
      [WeakRetained[51] setHidden:1];
      [WeakRetained[62] setHidden:0];
      if (a2)
      {
        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        [v12 postNotificationName:@"VUIMonogramViewImageDidUpdateNotification" object:WeakRetained];
      }
    }

    else
    {
      if ((v8 - 3) >= 3)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = 2;
      }

      v10 = [*(a1 + 32) copyWithType:v9];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __59__VUIMonogramView__loadWithMonogramDescription_imageProxy___block_invoke_2;
      v13[3] = &unk_1E872F038;
      objc_copyWeak(&v15, (a1 + 40));
      v14 = v10;
      v11 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v13);

      objc_destroyWeak(&v15);
    }
  }
}

void __59__VUIMonogramView__loadWithMonogramDescription_imageProxy___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _loadWithMonogramDescription:*(a1 + 32) imageProxy:0];
    WeakRetained = v3;
  }
}

@end