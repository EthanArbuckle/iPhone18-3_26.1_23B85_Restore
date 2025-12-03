@interface _TVImageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVImageView)initWithFrame:(CGRect)frame;
- (id)_imageProxyWithSize:(CGSize)size;
- (void)_loadImage;
- (void)_reloadImageForLayoutDirectionChange;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setDarkTintColor:(id)color;
- (void)_setFocusedColor:(id)color;
- (void)_setImage:(id)image;
- (void)_setPreferredSymbolConfiguration:(id)configuration;
- (void)_setTintColor:(id)color;
- (void)_updateCornerRadius;
- (void)_updateFlatImageWithImage:(id)image;
- (void)_updateImageView;
- (void)_updateTintColor;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageContainsCornerRadius:(BOOL)radius;
- (void)setImageProxy:(id)proxy completion:(id)completion;
- (void)setPlaceholderImage:(id)image;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation _TVImageView

- (_TVImageView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _TVImageView;
  v3 = [(_TVImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setContentMode:(int64_t)mode
{
  self->_imageContentMode = mode;
  [(UIImageView *)self->_imageView setContentMode:?];

  [(_TVImageView *)self _updateCornerRadius];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _TVImageView;
  [(_TVImageView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  imageView = self->_imageView;
  [(_TVImageView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  if (fits.width == *MEMORY[0x277CBF3A8] && fits.height == v7)
  {
    v9 = self->_imageProxy;
  }

  else
  {
    v9 = [(_TVImageView *)self _imageProxyWithSize:fits.width, fits.height];
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

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _TVImageView;
  [(_TVImageView *)&v6 willMoveToWindow:?];
  isImageLoaded = [(_TVImageView *)self isImageLoaded];
  if (window)
  {
    if (!isImageLoaded)
    {
      [(_TVImageView *)self _loadImage];
    }
  }

  else if (!isImageLoaded)
  {
    [(TVImageProxy *)self->_imageProxy cancel];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  [(_TVImageView *)self setImageProxy:0];
  [(_TVImageView *)self _setImage:imageCopy];
}

- (void)setImageProxy:(id)proxy completion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  if (self->_imageProxy != proxyCopy || self->_completion != completionCopy)
  {
    window = [(_TVImageView *)self window];
    if (window)
    {
      v9 = window;
      v10 = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    }

    else
    {
      v10 = 0;
    }

    [(TVImageProxy *)self->_imageProxy setImageDirection:v10];
    v11 = [(TVImageProxy *)proxyCopy isEqual:self->_imageProxy];
    isImageLoaded = [(_TVImageView *)self isImageLoaded];
    if (v11)
    {
      if (!isImageLoaded)
      {
        completion = [(_TVImageView *)self completion];

        if (completion)
        {
          completion2 = [(_TVImageView *)self completion];
          image = [(_TVImageView *)self image];
          (completion2)[2](completion2, image, 0, 0);
        }
      }

      [(_TVImageView *)self setCompletion:completionCopy];
      if ([(_TVImageView *)self isImageLoaded])
      {
        completion3 = [(_TVImageView *)self completion];

        if (completion3)
        {
          completion4 = [(_TVImageView *)self completion];
          image2 = [(_TVImageView *)self image];
          (completion4)[2](completion4, image2, 0, 1);

          [(_TVImageView *)self setCompletion:0];
        }
      }
    }

    else
    {
      if (!isImageLoaded)
      {
        [(TVImageProxy *)self->_imageProxy cancel];
      }

      [(_TVImageView *)self setImageLoaded:0];
      if (![(TVImageProxy *)self->_imageProxy isOfSameOriginAs:proxyCopy])
      {
        [(_TVImageView *)self _setImage:0];
      }

      [(_TVImageView *)self setCompletion:completionCopy];
      objc_storeStrong(&self->_imageProxy, proxy);
      window2 = [(_TVImageView *)self window];

      if (window2)
      {
        [(_TVImageView *)self _loadImage];
      }
    }
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_placeholderImage, image);
    [(_TVImageView *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:?];
  layer = [(UIImageView *)self->_imageView layer];
  [layer setMasksToBounds:radius > 0.0];

  self->_continuousCorners = radius > 0.0;
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(_TVImageView *)self _updateCornerRadius];
  }
}

- (void)setImageContainsCornerRadius:(BOOL)radius
{
  if (self->_imageContainsCornerRadius != radius)
  {
    self->_imageContainsCornerRadius = radius;
    [(_TVImageView *)self _updateCornerRadius];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v22.receiver = self;
  v22.super_class = _TVImageView;
  [(UIView *)&v22 setHighlighted:?];
  [(UIImageView *)self->_imageView setHighlighted:highlightedCopy];
  highlightFilter = self->_highlightFilter;
  if (self->__focusedColor)
  {
    v6 = !highlightedCopy;
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

    layer = [(UIImageView *)self->_imageView layer];
    filters = [layer filters];
    v9 = [filters mutableCopy];

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

  layer2 = [(UIImageView *)self->_imageView layer];
  filters2 = [layer2 filters];
  v14 = [filters2 containsObject:self->_highlightFilter];

  if ((v14 & 1) == 0)
  {
    layer3 = [(UIImageView *)self->_imageView layer];
    filters3 = [layer3 filters];
    v17 = [filters3 mutableCopy];
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
    layer4 = [(UIImageView *)self->_imageView layer];
    v21 = [v9 copy];
    [layer4 setFilters:v21];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  self->_selected = selected;
  [(_TVImageView *)self _updateImageView];
  if ([(_TVImageView *)self _enableEdgeAntialiasingOnSelected])
  {
    layer = [(UIImageView *)self->_imageView layer];
    [layer setAllowsEdgeAntialiasing:selectedCopy];

    layer2 = [(UIImageView *)self->_imageView layer];
    [layer2 setEdgeAntialiasingMask:3];
  }
}

- (id)_imageProxyWithSize:(CGSize)size
{
  dynamicProxyProvider = self->_dynamicProxyProvider;
  if (dynamicProxyProvider)
  {
    v5 = dynamicProxyProvider[2](dynamicProxyProvider, a2, size, *&size.height);
  }

  else
  {
    v5 = self->_imageProxy;
  }

  return v5;
}

- (void)_reloadImageForLayoutDirectionChange
{
  window = [(_TVImageView *)self window];

  if (window)
  {
    v4 = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    imageProxy = [(_TVImageView *)self imageProxy];
    imageDirection = [imageProxy imageDirection];

    if (imageDirection != v4)
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
    completion = [(_TVImageView *)self completion];

    if (!completion)
    {
      goto LABEL_7;
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      completion2 = [(_TVImageView *)self completion];
      completion2[2](completion2, 0, 0, 1);

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

  traitCollection = [(_TVImageView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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

- (void)_setDarkTintColor:(id)color
{
  objc_storeStrong(&self->__darkTintColor, color);

  [(_TVImageView *)self _updateTintColor];
}

- (void)_setTintColor:(id)color
{
  objc_storeStrong(&self->__tintColor, color);

  [(_TVImageView *)self _updateTintColor];
}

- (void)_setFocusedColor:(id)color
{
  objc_storeStrong(&self->__focusedColor, color);

  [(_TVImageView *)self _updateImageView];
}

- (void)_updateFlatImageWithImage:(id)image
{
  imageCopy = image;
  rendersImageAsTemplates = self->_rendersImageAsTemplates;
  v7 = imageCopy;
  v6 = imageCopy;
  if (rendersImageAsTemplates)
  {
    v6 = [imageCopy imageWithRenderingMode:2];
  }

  objc_storeStrong(&self->_flatImage, v6);
  if (rendersImageAsTemplates)
  {
  }

  [(_TVImageView *)self _updateImageView];
}

- (void)_setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  [(UIImageView *)self->_imageView setContentMode:self->_imageContentMode];
  [(_TVImageView *)self _updateFlatImageWithImage:imageCopy];
}

- (void)_setPreferredSymbolConfiguration:(id)configuration
{
  objc_storeStrong(&self->_preferredSymbolConfiguration, configuration);
  configurationCopy = configuration;
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:configurationCopy];
}

- (void)_updateImageView
{
  if (self->_image)
  {
    if (!self->_selected || (tintColor = self->__focusedColor) == 0)
    {
      traitCollection = [(_TVImageView *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
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
    imageAsset = [(UIColor *)v6 imageAsset];
    if (imageAsset && [(UIColor *)v6 imageOrientation]== 4)
    {
      effectiveUserInterfaceLayoutDirection = [(_TVImageView *)self effectiveUserInterfaceLayoutDirection];

      if (effectiveUserInterfaceLayoutDirection != 1)
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

      imageAsset = [(UIColor *)v6 imageAsset];
      v10 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:1];
      v11 = [imageAsset imageWithTraitCollection:v10];

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

    layer = [(UIImageView *)self->_imageView layer];
    [layer setCornerRadius:v4];

    contentMode = [(UIImageView *)self->_imageView contentMode];
    layer2 = [(UIImageView *)self->_imageView layer];
    v11 = layer2;
    v10 = v4 > 0.0 || contentMode != 1;
    [layer2 setMasksToBounds:v10];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = _TVImageView;
  [(_TVImageView *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [(_TVImageView *)self traitCollection];
  if ([traitCollection userInterfaceStyle])
  {
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    if (userInterfaceStyle != [traitCollection userInterfaceStyle])
    {
      [(_TVImageView *)self _updateTintColor];
    }
  }
}

@end