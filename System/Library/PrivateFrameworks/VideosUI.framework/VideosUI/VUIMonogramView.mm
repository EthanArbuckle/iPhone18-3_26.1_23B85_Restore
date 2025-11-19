@interface VUIMonogramView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIMonogramView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (void)_loadWithMonogramDescription:(id)a3 imageProxy:(id)a4;
- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)a3;
- (void)_updatePlaceholerView;
- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setFocusedShadowView:(id)a3;
- (void)setImage:(id)a3;
- (void)setMonogramDescription:(id)a3;
- (void)setOverlayView:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setUnFocusedShadowView:(id)a3;
- (void)updateShadowImage;
@end

@implementation VUIMonogramView

- (VUIMonogramView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v25.receiver = self;
  v25.super_class = VUIMonogramView;
  v11 = [(VUIMonogramView *)&v25 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
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
    v20 = [v10 focusedBgColor];
    [(VUIImageView *)v19 _setFocusedColor:v20];

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
  v3 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];

  if (v3)
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

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_configuration, a3);
    [(VUIMonogramView *)self updateShadowImage];
    v5 = v6;
  }
}

- (void)setFocusedShadowView:(id)a3
{
  v5 = a3;
  focusedShadowView = self->_focusedShadowView;
  if (focusedShadowView != v5)
  {
    v8 = v5;
    [(VUIBaseView *)focusedShadowView removeFromSuperview];
    objc_storeStrong(&self->_focusedShadowView, a3);
    v5 = v8;
    if (self->_focusedShadowView)
    {
      imageAndShadowContainerView = self->_imageAndShadowContainerView;
      if (imageAndShadowContainerView)
      {
        [VUIBaseView insertSubview:"insertSubview:atIndex:" atIndex:?];
        v5 = v8;
      }
    }
  }
}

- (void)setUnFocusedShadowView:(id)a3
{
  v5 = a3;
  unfocusedShadowView = self->_unfocusedShadowView;
  if (unfocusedShadowView != v5)
  {
    v8 = v5;
    [(VUIBaseView *)unfocusedShadowView removeFromSuperview];
    objc_storeStrong(&self->_unfocusedShadowView, a3);
    v5 = v8;
    if (self->_unfocusedShadowView)
    {
      imageAndShadowContainerView = self->_imageAndShadowContainerView;
      if (imageAndShadowContainerView)
      {
        [VUIBaseView insertSubview:"insertSubview:atIndex:" atIndex:?];
        v5 = v8;
      }
    }
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(VUIImageView *)self->_imageView setImage:v6];
    [(VUIImageView *)self->_imageView setVuiAlpha:1.0];
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
    [(VUIImageView *)self->_imageView setPlaceholderImage:v6];
    [(VUIMonogramView *)self _updatePlaceholerView];
    v5 = v6;
  }
}

- (void)setMonogramDescription:(id)a3
{
  v7 = a3;
  if (self->_monogramDescription != v7)
  {
    objc_storeStrong(&self->_monogramDescription, a3);
    if ([(VUIMonogramDescription *)v7 scaleMode]== 2)
    {
      [(VUIMonogramDescription *)v7 backgroundColor];
    }

    else
    {
      [(VUIMonogramDescription *)v7 fillColor];
    }
    v5 = ;
    [(VUIBaseView *)self->_placeholderView setVuiBackgroundColor:v5];
    [(VUIMonogramView *)self _updatePlaceholerView];
    v6 = [(VUIMonogramView *)self imageProxy];
    [(VUIMonogramView *)self _loadWithMonogramDescription:v7 imageProxy:v6];
  }
}

- (void)_updatePlaceholerView
{
  v3 = [(VUIMonogramView *)self placeholderImage];
  v4 = v3 == 0;
  v5 = v3 != 0;

  [(VUIBaseView *)self->_placeholderView setHidden:v5];
  imageView = self->_imageView;

  [(VUIImageView *)imageView setHidden:v4];
}

- (void)_updateUnfocusedShadowFrameAndLayerWithFrame:(CGRect)a3
{
  v4 = a3.size.width / 130.0;
  v5 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7);
  v11 = floor(v4 * v9);
  [(VUIMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(VUIMonogramView *)self bounds];
  [(VUIBaseView *)self->_unfocusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  v13 = [(VUIBaseView *)self->_unfocusedShadowView layer];
  v14 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v13 setContents:{objc_msgSend(v14, "vuiCGImage")}];

  v16 = [(VUIBaseView *)self->_unfocusedShadowView layer];
  v15 = [(VUIMonogramViewConfiguration *)self->_configuration unfocusedShadowImage];
  [v15 scale];
  [v16 setContentsScale:?];
}

- (void)_updateFocusedShadowFrameAndLayerWithFrame:(CGRect)a3
{
  v4 = a3.size.width / 130.0;
  v5 = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = floor(v4 * v7 * 0.78);
  v11 = floor(v4 * v9 * 0.78);
  [(VUIMonogramView *)self bounds];
  v12 = floor((CGRectGetWidth(v18) - v10) * 0.5);
  [(VUIMonogramView *)self bounds];
  [(VUIBaseView *)self->_focusedShadowView setFrame:v12, floor((CGRectGetHeight(v19) - v11) * 0.5), v10, v11];
  v13 = [(VUIBaseView *)self->_focusedShadowView layer];
  v14 = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v13 setContents:{objc_msgSend(v14, "vuiCGImage")}];

  v16 = [(VUIBaseView *)self->_focusedShadowView layer];
  v15 = [(VUIMonogramViewConfiguration *)self->_configuration focusedShadowImage];
  [v15 scale];
  [v16 setContentsScale:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIMonogramView *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  if (a4)
  {
    [(VUIImageView *)self->_imageView vui_sizeThatFits:a3.width, a3.height];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
    [(VUIMonogramView *)self bounds:a3.width];
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
    v19 = [(VUIBaseView *)self->_placeholderView layer];
    [(VUIMonogramView *)self bounds];
    [v19 setCornerRadius:CGRectGetWidth(v25) * 0.5];

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
  v12 = [(VUIBaseView *)self->_placeholderView layer];
  [v12 setCornerRadius:v11];

  [(VUIImageView *)self->_imageView setCornerRadius:v11];
  v13 = [(VUIMonogramView *)self layer];
  [v13 setCornerRadius:v11];

  [(VUIMonogramView *)self _updateUnfocusedShadowFrameAndLayerWithFrame:v4, v6, v8, v10];
}

- (void)setOverlayView:(id)a3
{
  v4 = a3;
  [(VUIMonogramView *)self vui_addSubview:v4 oldView:self->_overlayView];
  overlayView = self->_overlayView;
  self->_overlayView = v4;
}

- (void)_loadWithMonogramDescription:(id)a3 imageProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 preferedMonogramType] && !v7 && self->_placeholderImage)
  {
    [(VUIBaseView *)self->_placeholderView setHidden:1];
    [(VUIImageView *)self->_imageView setHidden:0];
    [(VUIImageView *)self->_imageView setImage:0];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [(_VUIMonogramDecorator *)v10 postNotificationName:@"VUIMonogramViewImageDidUpdateNotification" object:self];
    goto LABEL_20;
  }

  [v6 size];
  v10 = -[VUIImageScaleDecorator initWithScaleToSize:scaleMode:]([_VUIMonogramDecorator alloc], "initWithScaleToSize:scaleMode:", [v6 scaleMode], v8, v9);
  v11 = [v6 imageURL];
  if (v11)
  {
    v12 = v11;
    v13 = [v6 imageURL];
    v14 = [v13 vuicore_isResourceOrSymbolURL];

    if ((v14 & 1) == 0)
    {
      [v6 padding];
      [(VUIImageScaleDecorator *)v10 setPadding:?];
      [v6 upscaleAdjustment];
      [(VUIImageScaleDecorator *)v10 setFocusedSizeIncrease:?];
      if (![v6 optimizedImageRendering])
      {
        v21 = [v6 backgroundColor];
        [(VUIImageScaleDecorator *)v10 setBgColor:v21];

        v22 = [v6 borderColor];
        [(_VUIMonogramDecorator *)v10 setBorderColor:v22];

        [v6 borderWidth];
        [(_VUIMonogramDecorator *)v10 setBorderWidth:?];
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

      v15 = [(VUIMonogramView *)self imageView];
      [v6 borderWidth];
      [v15 setBorderWidth:?];

      v16 = [(VUIMonogramView *)self imageView];
      v17 = [v6 borderColor];
      [v16 setBorderColor:v17];

      v18 = [(VUIMonogramView *)self imageView];
      v19 = [v6 backgroundColor];
      [v18 setPlaceholderColor:v19];
    }
  }

  if (v7)
  {
LABEL_7:
    v20 = v7;
    goto LABEL_13;
  }

LABEL_12:
  v23 = objc_alloc(MEMORY[0x1E69DF730]);
  v24 = +[_VUIMonogramImageLoader sharedInstance];
  v20 = [v23 initWithObject:v6 imageLoader:v24 groupType:0];

LABEL_13:
  [v20 setCacheOnLoad:{objc_msgSend(MEMORY[0x1E69DF6D0], "canHandleDecodingOnRenderThread") ^ 1}];
  [v20 setDecorator:v10];
  [v20 setOptimizedImageRendering:{objc_msgSend(v6, "optimizedImageRendering")}];
  v25 = [v6 imageURL];
  if (v25 && (v26 = v25, [v6 imageURL], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "vuicore_isResourceOrSymbolURL"), v27, v26, (v28 & 1) == 0))
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
  v31 = [v6 placeholderImage];

  if (v31)
  {
    v32 = [v6 placeholderImage];
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = v32;
  }

  objc_initWeak(&location, self);
  imageView = self->_imageView;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __59__VUIMonogramView__loadWithMonogramDescription_imageProxy___block_invoke;
  v35[3] = &unk_1E8734B68;
  objc_copyWeak(&v37, &location);
  v36 = v6;
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