@interface _TVImageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TVImageView)initWithFrame:(CGRect)a3;
- (id)_imageProxyWithSize:(CGSize)a3;
- (void)_loadImage;
- (void)_reloadImageForLayoutDirectionChange;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setDarkTintColor:(id)a3;
- (void)_setFocusedColor:(id)a3;
- (void)_setImage:(id)a3;
- (void)_setPreferredSymbolConfiguration:(id)a3;
- (void)_setTintColor:(id)a3;
- (void)_updateCornerRadius;
- (void)_updateFlatImageWithImage:(id)a3;
- (void)_updateImageView;
- (void)_updateTintColor;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageContainsCornerRadius:(BOOL)a3;
- (void)setImageProxy:(id)a3 completion:(id)a4;
- (void)setPlaceholderImage:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _TVImageView

- (_TVImageView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _TVImageView;
  v3 = [(_TVImageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_imageContentMode = 1;
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    [(_TVImageView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    [(UIImageView *)v4->_imageView setContentMode:v4->_imageContentMode];
    [(_TVImageView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (void)dealloc
{
  [(TVImageProxy *)self->_imageProxy setCompletionHandler:0];
  [(TVImageProxy *)self->_imageProxy cancel];
  v3.receiver = self;
  v3.super_class = _TVImageView;
  [(_TVImageView *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_imageView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _TVImageView;
  [(_TVImageView *)&v4 layoutSubviews];
  imageView = self->_imageView;
  [(_TVImageView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
}

- (void)setContentMode:(int64_t)a3
{
  self->_imageContentMode = a3;
  [(UIImageView *)self->_imageView setContentMode:?];

  [(_TVImageView *)self _updateCornerRadius];
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _TVImageView;
  [(_TVImageView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  imageView = self->_imageView;
  [(_TVImageView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == v7)
  {
    v9 = self->_imageProxy;
  }

  else
  {
    v9 = [(_TVImageView *)self _imageProxyWithSize:a3.width, a3.height];
  }

  v10 = v9;
  [(TVImageProxy *)v9 expectedSize];
  v13 = v11 == v6 && v12 == v7;
  if (v13 && (([(UIImageView *)self->_imageView sizeThatFits:width, height], v11 == v6) ? (v14 = v12 == v7) : (v14 = 0), v14))
  {
    [(_TVImageView *)self bounds];
    v15 = v17;
    v16 = v18;
  }

  else
  {
    v15 = v11;
    v16 = v12;
  }

  v19 = v15;
  v20 = v16;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVImageView;
  [(_TVImageView *)&v6 willMoveToWindow:?];
  v5 = [(_TVImageView *)self isImageLoaded];
  if (a3)
  {
    if (!v5)
    {
      [(_TVImageView *)self _loadImage];
    }
  }

  else if (!v5)
  {
    [(TVImageProxy *)self->_imageProxy cancel];
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  [(_TVImageView *)self setImageProxy:0];
  [(_TVImageView *)self _setImage:v4];
}

- (void)setImageProxy:(id)a3 completion:(id)a4
{
  v20 = a3;
  v7 = a4;
  if (self->_imageProxy != v20 || self->_completion != v7)
  {
    v8 = [(_TVImageView *)self window];
    if (v8)
    {
      v9 = v8;
      v10 = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    }

    else
    {
      v10 = 0;
    }

    [(TVImageProxy *)self->_imageProxy setImageDirection:v10];
    v11 = [(TVImageProxy *)v20 isEqual:self->_imageProxy];
    v12 = [(_TVImageView *)self isImageLoaded];
    if (v11)
    {
      if (!v12)
      {
        v13 = [(_TVImageView *)self completion];

        if (v13)
        {
          v14 = [(_TVImageView *)self completion];
          v15 = [(_TVImageView *)self image];
          (v14)[2](v14, v15, 0, 0);
        }
      }

      [(_TVImageView *)self setCompletion:v7];
      if ([(_TVImageView *)self isImageLoaded])
      {
        v16 = [(_TVImageView *)self completion];

        if (v16)
        {
          v17 = [(_TVImageView *)self completion];
          v18 = [(_TVImageView *)self image];
          (v17)[2](v17, v18, 0, 1);

          [(_TVImageView *)self setCompletion:0];
        }
      }
    }

    else
    {
      if (!v12)
      {
        [(TVImageProxy *)self->_imageProxy cancel];
      }

      [(_TVImageView *)self setImageLoaded:0];
      if (![(TVImageProxy *)self->_imageProxy isOfSameOriginAs:v20])
      {
        [(_TVImageView *)self _setImage:0];
      }

      [(_TVImageView *)self setCompletion:v7];
      objc_storeStrong(&self->_imageProxy, a3);
      v19 = [(_TVImageView *)self window];

      if (v19)
      {
        [(_TVImageView *)self _loadImage];
      }
    }
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(_TVImageView *)self _updateImageView];
    v5 = v6;
  }
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:?];
  v5 = [(UIImageView *)self->_imageView layer];
  [v5 setMasksToBounds:a3 > 0.0];

  self->_continuousCorners = a3 > 0.0;
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(_TVImageView *)self _updateCornerRadius];
  }
}

- (void)setImageContainsCornerRadius:(BOOL)a3
{
  if (self->_imageContainsCornerRadius != a3)
  {
    self->_imageContainsCornerRadius = a3;
    [(_TVImageView *)self _updateCornerRadius];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v22.receiver = self;
  v22.super_class = _TVImageView;
  [(UIView *)&v22 setHighlighted:?];
  [(UIImageView *)self->_imageView setHighlighted:v3];
  highlightFilter = self->_highlightFilter;
  if (self->__focusedColor)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!highlightFilter)
    {
      return;
    }

    v7 = [(UIImageView *)self->_imageView layer];
    v8 = [v7 filters];
    v9 = [v8 mutableCopy];

    [v9 removeObjectIdenticalTo:self->_highlightFilter];
    goto LABEL_15;
  }

  if (!highlightFilter)
  {
    v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
    v11 = self->_highlightFilter;
    self->_highlightFilter = v10;

    [(CAFilter *)self->_highlightFilter setValue:[(UIColor *)self->__focusedColor CGColor] forKey:@"inputColor"];
  }

  v12 = [(UIImageView *)self->_imageView layer];
  v13 = [v12 filters];
  v14 = [v13 containsObject:self->_highlightFilter];

  if ((v14 & 1) == 0)
  {
    v15 = [(UIImageView *)self->_imageView layer];
    v16 = [v15 filters];
    v17 = [v16 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    v9 = v19;

    [v9 addObject:self->_highlightFilter];
LABEL_15:
    v20 = [(UIImageView *)self->_imageView layer];
    v21 = [v9 copy];
    [v20 setFilters:v21];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  self->_selected = a3;
  [(_TVImageView *)self _updateImageView];
  if ([(_TVImageView *)self _enableEdgeAntialiasingOnSelected])
  {
    v6 = [(UIImageView *)self->_imageView layer];
    [v6 setAllowsEdgeAntialiasing:v4];

    v7 = [(UIImageView *)self->_imageView layer];
    [v7 setEdgeAntialiasingMask:3];
  }
}

- (id)_imageProxyWithSize:(CGSize)a3
{
  dynamicProxyProvider = self->_dynamicProxyProvider;
  if (dynamicProxyProvider)
  {
    v5 = dynamicProxyProvider[2](dynamicProxyProvider, a2, a3, *&a3.height);
  }

  else
  {
    v5 = self->_imageProxy;
  }

  return v5;
}

- (void)_reloadImageForLayoutDirectionChange
{
  v3 = [(_TVImageView *)self window];

  if (v3)
  {
    v4 = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    v5 = [(_TVImageView *)self imageProxy];
    v6 = [v5 imageDirection];

    if (v6 != v4)
    {

      [(_TVImageView *)self _loadImage];
    }
  }

  else
  {

    [(_TVImageView *)self setImageLoaded:0];
  }
}

- (void)_loadImage
{
  [(_TVImageView *)self bounds];
  v5 = [(_TVImageView *)self _imageProxyWithSize:v3, v4];
  v6 = v5;
  if (v5 && ([v5 isEqual:self->_imageProxy] & 1) == 0)
  {
    objc_storeStrong(&self->_imageProxy, v6);
  }

  imageProxy = self->_imageProxy;
  v8 = objc_initWeak(&location, imageProxy);

  if (imageProxy)
  {
    [(TVImageProxy *)self->_imageProxy setCacheOnLoad:+[TVMLUtilities canHandleDecodingOnRenderThread]^ 1];
    objc_initWeak(&from, self);
    v9 = self->_imageProxy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __26___TVImageView__loadImage__block_invoke;
    v16[3] = &unk_279D6F510;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [(TVImageProxy *)v9 setCompletionHandler:v16];
    [(TVImageProxy *)self->_imageProxy setImageDirection:[(_TVImageView *)self effectiveUserInterfaceLayoutDirection]== 1];
    [(TVImageProxy *)self->_imageProxy load];
    objc_destroyWeak(&v18);
    v10 = &v17;
  }

  else
  {
    v11 = [(_TVImageView *)self completion];

    if (!v11)
    {
      goto LABEL_7;
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v12 = [(_TVImageView *)self completion];
      v12[2](v12, 0, 0, 1);

      [(_TVImageView *)self setCompletion:0];
      [(_TVImageView *)self setImageLoaded:0];
      goto LABEL_7;
    }

    objc_initWeak(&from, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26___TVImageView__loadImage__block_invoke_2;
    v13[3] = &unk_279D6F538;
    objc_copyWeak(&v14, &from);
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x277D85CD0], v13);
    objc_destroyWeak(&v15);
    v10 = &v14;
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&from);
LABEL_7:
  objc_destroyWeak(&location);
}

- (void)_updateTintColor
{
  if (self->_selected)
  {
    focusedColor = self->__focusedColor;
    if (focusedColor)
    {
      goto LABEL_8;
    }
  }

  v4 = [(_TVImageView *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
  {
    darkTintColor = self->__darkTintColor;

    if (darkTintColor)
    {
      focusedColor = self->__darkTintColor;
LABEL_8:
      v6 = focusedColor;
      goto LABEL_9;
    }
  }

  else
  {
  }

  focusedColor = self->__tintColor;
  if (focusedColor)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = v6;
  [(_TVImageView *)self setTintColor:v6];
  self->_rendersImageAsTemplates = v7 != 0;
  if (self->_image)
  {
    [(_TVImageView *)self _updateFlatImageWithImage:?];
  }
}

- (void)_setDarkTintColor:(id)a3
{
  objc_storeStrong(&self->__darkTintColor, a3);

  [(_TVImageView *)self _updateTintColor];
}

- (void)_setTintColor:(id)a3
{
  objc_storeStrong(&self->__tintColor, a3);

  [(_TVImageView *)self _updateTintColor];
}

- (void)_setFocusedColor:(id)a3
{
  objc_storeStrong(&self->__focusedColor, a3);

  [(_TVImageView *)self _updateImageView];
}

- (void)_updateFlatImageWithImage:(id)a3
{
  v4 = a3;
  rendersImageAsTemplates = self->_rendersImageAsTemplates;
  v7 = v4;
  v6 = v4;
  if (rendersImageAsTemplates)
  {
    v6 = [v4 imageWithRenderingMode:2];
  }

  objc_storeStrong(&self->_flatImage, v6);
  if (rendersImageAsTemplates)
  {
  }

  [(_TVImageView *)self _updateImageView];
}

- (void)_setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  [(UIImageView *)self->_imageView setContentMode:self->_imageContentMode];
  [(_TVImageView *)self _updateFlatImageWithImage:v5];
}

- (void)_setPreferredSymbolConfiguration:(id)a3
{
  objc_storeStrong(&self->_preferredSymbolConfiguration, a3);
  v5 = a3;
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v5];
}

- (void)_updateImageView
{
  if (self->_image)
  {
    if (!self->_selected || (tintColor = self->__focusedColor) == 0)
    {
      v4 = [(_TVImageView *)self traitCollection];
      if ([v4 userInterfaceStyle] == 2)
      {
        darkTintColor = self->__darkTintColor;

        if (darkTintColor)
        {
          v6 = self->__darkTintColor;
          if (!v6)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
      }

      tintColor = self->__tintColor;
      if (!tintColor)
      {
        v6 = 0;
        goto LABEL_25;
      }
    }

    v6 = tintColor;
LABEL_24:
    [(_TVImageView *)self setTintColor:v6];
LABEL_25:
    [(UIImageView *)self->_imageView setImage:self->_flatImage];
LABEL_26:

    goto LABEL_27;
  }

  placeholderImage = self->_placeholderImage;
  if (placeholderImage)
  {
    v6 = placeholderImage;
    v8 = [(UIColor *)v6 imageAsset];
    if (v8 && [(UIColor *)v6 imageOrientation]== 4)
    {
      v9 = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection];

      if (v9 != 1)
      {
LABEL_14:
        [(UIImageView *)self->_imageView setImage:v6];
        imageContentMode = self->_imageContentMode;
        [(UIImage *)self->_placeholderImage size];
        if (v14 == 1.0 && v13 == 1.0)
        {
          v16 = 2;
        }

        else
        {
          v16 = imageContentMode;
        }

        [(UIImageView *)self->_imageView setContentMode:v16];
        goto LABEL_26;
      }

      v8 = [(UIColor *)v6 imageAsset];
      v10 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:1];
      v11 = [v8 imageWithTraitCollection:v10];

      v6 = v11;
    }

    goto LABEL_14;
  }

  [(UIImageView *)self->_imageView setImage:0];
LABEL_27:

  [(_TVImageView *)self _updateCornerRadius];
}

- (void)_updateCornerRadius
{
  if (!self->_continuousCorners)
  {
    if (!self->_imageContainsCornerRadius || (v4 = 0.0, !self->_image))
    {
      [(_TVImageView *)self cornerRadius];
      v4 = v5;
    }

    v6 = [(UIImageView *)self->_imageView layer];
    [v6 setCornerRadius:v4];

    v7 = [(UIImageView *)self->_imageView contentMode];
    v8 = [(UIImageView *)self->_imageView layer];
    v11 = v8;
    v10 = v4 > 0.0 || v7 != 1;
    [v8 setMasksToBounds:v10];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _TVImageView;
  [(_TVImageView *)&v7 traitCollectionDidChange:v4];
  v5 = [(_TVImageView *)self traitCollection];
  if ([v5 userInterfaceStyle])
  {
    v6 = [v4 userInterfaceStyle];
    if (v6 != [v5 userInterfaceStyle])
    {
      [(_TVImageView *)self _updateTintColor];
    }
  }
}

@end