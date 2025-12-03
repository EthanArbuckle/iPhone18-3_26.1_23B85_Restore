@interface VUIImageView
- (CGSize)intrinsicContentSize;
- (CGSize)localImageViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUIImageView)initWithFrame:(CGRect)frame;
- (_VUICornerRadii)shadowRadii;
- (id)_imageProxyWithSize:(CGSize)size sizeComputationOnly:(BOOL)only;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)_loadImage;
- (void)_reloadImageForLayoutDirectionChange;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setFocusedColor:(id)color;
- (void)_setImage:(id)image shouldUpdateImageView:(BOOL)view;
- (void)_setTintColor:(id)color;
- (void)_updateBorderColor;
- (void)_updateCornerRadius;
- (void)_updateFlatImageWithImage:(id)image shouldUpdateImageView:(BOOL)view;
- (void)_updateImageView;
- (void)_updateTintColor;
- (void)computeCornerRadii;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageContainsCornerRadius:(BOOL)radius;
- (void)setImageProxy:(id)proxy clearingExisting:(BOOL)existing completion:(id)completion;
- (void)setPlaceholderColor:(id)color;
- (void)setPlaceholderImage:(id)image;
- (void)setSymbolImage:(id)image withSymbolTransition:(id)transition;
- (void)setVuiContentMode:(unint64_t)mode;
- (void)vui_setHighlighted:(BOOL)highlighted;
- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)vui_willMoveToWindow:(id)window;
@end

@implementation VUIImageView

- (VUIImageView)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = VUIImageView;
  v3 = [(VUIImageView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_clearsBackgroundColorOnImageLoad = 1;
    v3->_imageContentMode = 1;
    v5 = MEMORY[0x277D755E8];
    [(VUIImageView *)v3 bounds];
    v6 = [v5 vui_imageViewWithFrame:?];
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(UIImageView *)v4->_imageView setVuiClipsToBounds:1];
    [(UIImageView *)v4->_imageView setVuiContentMode:v4->_imageContentMode];
    v4->_previousSize = *MEMORY[0x277CBF3A8];
    [(UIView *)v4 vui_addSubview:v4->_imageView oldView:0];
    objc_initWeak(&location, v4);
    v14[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__VUIImageView_initWithFrame___block_invoke;
    v10[3] = &unk_279E21158;
    objc_copyWeak(&v11, &location);
    [(UIView *)v4 vui_registerForTraitChanges:v8 withHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __30__VUIImageView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTintColor];
  [WeakRetained _updateBorderColor];
}

- (void)dealloc
{
  [(VUIImageProxy *)self->_imageProxy setCompletionHandler:0];
  [(VUIImageProxy *)self->_imageProxy cancel];
  v3.receiver = self;
  v3.super_class = VUIImageView;
  [(VUIImageView *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_imageView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setVuiContentMode:(unint64_t)mode
{
  if (self->_imageContentMode != mode)
  {
    self->_imageContentMode = mode;
    [(UIImageView *)self->_imageView setContentMode:VUIUIViewContentModeFromVUIContentMode(mode)];

    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = VUIImageView;
  [(VUIImageView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  imageView = self->_imageView;
  [(VUIImageView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
  [(VUIImageView *)self computeCornerRadii];
}

- (void)layoutSubviews
{
  [(VUIImageView *)self bounds];

  [(VUIImageView *)self vui_layoutSubviews:0 computationOnly:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIImageView *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  [(VUIImageView *)self setImageProxy:0];
  [(VUIImageView *)self _setImage:imageCopy];
}

- (void)setImageProxy:(id)proxy clearingExisting:(BOOL)existing completion:(id)completion
{
  existingCopy = existing;
  proxyCopy = proxy;
  completionCopy = completion;
  if (self->_imageProxy != proxyCopy || self->_completion != completionCopy)
  {
    window = [(VUIImageView *)self window];
    if (window)
    {
      v11 = window;
      vuiIsRTL = [(UIView *)self vuiIsRTL];

      v13 = vuiIsRTL;
    }

    else
    {
      v13 = 0;
    }

    [(VUIImageProxy *)proxyCopy setImageDirection:v13];
    v14 = [(VUIImageProxy *)proxyCopy isEqual:self->_imageProxy];
    isImageLoaded = [(VUIImageView *)self isImageLoaded];
    if (v14)
    {
      if (!isImageLoaded)
      {
        completion = [(VUIImageView *)self completion];

        if (completion)
        {
          completion2 = [(VUIImageView *)self completion];
          image = [(VUIImageView *)self image];
          (completion2)[2](completion2, image, 0, 0);
        }
      }

      [(VUIImageView *)self setCompletion:completionCopy];
      if ([(VUIImageView *)self isImageLoaded])
      {
        completion3 = [(VUIImageView *)self completion];

        if (completion3)
        {
          completion4 = [(VUIImageView *)self completion];
          image2 = [(VUIImageView *)self image];
          (completion4)[2](completion4, image2, 0, 1);

          [(VUIImageView *)self setCompletion:0];
        }
      }
    }

    else
    {
      if (!isImageLoaded)
      {
        [(VUIImageProxy *)self->_imageProxy cancel];
      }

      [(VUIImageView *)self setImageLoaded:0];
      if (![(VUIImageProxy *)self->_imageProxy isOfSameOriginAs:proxyCopy]&& existingCopy)
      {
        [(VUIImageView *)self _setImage:0];
      }

      [(VUIImageView *)self setCompletion:completionCopy];
      objc_storeStrong(&self->_imageProxy, proxy);
      window2 = [(VUIImageView *)self window];

      if (window2)
      {
        [(VUIImageView *)self _loadImage];
      }
    }
  }

  object = [(VUIImageProxy *)proxyCopy object];
  if (object)
  {
    objc_storeStrong(&self->_latestImageURL, object);
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_placeholderImage, image);
    [(VUIImageView *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  if (self->_placeholderColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_placeholderColor, color);
    [(VUIImageView *)self _updateImageView];
    colorCopy = v6;
  }
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (self->_borderColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_borderColor, color);
    layer = [(UIImageView *)self->_imageView layer];
    v7 = v8;
    [layer setBorderColor:{-[UIColor CGColor](v8, "CGColor")}];

    colorCopy = v8;
  }
}

- (void)_updateBorderColor
{
  if (self->_borderColor)
  {
    layer = [(UIImageView *)self->_imageView layer];
    [layer setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];
  }
}

- (void)setBorderWidth:(double)width
{
  if (self->_borderWidth != width)
  {
    self->_borderWidth = width;
    layer = [(UIImageView *)self->_imageView layer];
    [layer setBorderWidth:width];
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
    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setImageContainsCornerRadius:(BOOL)radius
{
  if (self->_imageContainsCornerRadius != radius)
  {
    self->_imageContainsCornerRadius = radius;
    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = VUIImageView;
  [(VUIImageView *)&v5 setHighlighted:?];
  [(VUIImageView *)self vui_setHighlighted:highlightedCopy];
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(UIImageView *)self->_imageView setHighlighted:?];
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
    v21 = [filters mutableCopy];

    [v21 removeObjectIdenticalTo:self->_highlightFilter];
    goto LABEL_16;
  }

  if (!highlightFilter)
  {
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
    v10 = self->_highlightFilter;
    self->_highlightFilter = v9;

    [(CAFilter *)self->_highlightFilter setValue:[(UIColor *)self->__focusedColor CGColor] forKey:@"inputColor"];
  }

  layer2 = [(UIImageView *)self->_imageView layer];
  filters2 = [layer2 filters];
  v13 = [filters2 containsObject:self->_highlightFilter];

  if ((v13 & 1) == 0)
  {
    layer3 = [(UIImageView *)self->_imageView layer];
    filters3 = [layer3 filters];
    v16 = [filters3 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    v21 = v18;

    [v21 addObject:self->_highlightFilter];
LABEL_16:
    layer4 = [(UIImageView *)self->_imageView layer];
    v20 = [v21 copy];
    [layer4 setFilters:v20];
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  height = subviews.height;
  width = subviews.width;
  v8 = MEMORY[0x277CBF3A8];
  [(VUIImageView *)self localImageViewSize];
  v10 = v9;
  v12 = v11;
  if ([(VUIImageView *)self isResourceImage]|| [(VUIImageView *)self isSymbolImage])
  {
    overrideLocalImageViewSizingMode = [(VUIImageView *)self overrideLocalImageViewSizingMode];

    if (overrideLocalImageViewSizingMode)
    {
      overrideLocalImageViewSizingMode2 = [(VUIImageView *)self overrideLocalImageViewSizingMode];
    }

    else
    {
      overrideLocalImageViewSizingMode2 = @"FitToViewBounds";
      if ([(VUIImageView *)self isResourceImage])
      {
        if (v12 > 0.0 && v10 > 0.0)
        {
          overrideLocalImageViewSizingMode2 = @"FitToProvidedSize";
        }
      }
    }
  }

  else
  {
    overrideLocalImageViewSizingMode2 = @"FitToViewBounds";
  }

  v16 = *v8;
  v17 = v8[1];
  if (![(__CFString *)overrideLocalImageViewSizingMode2 isEqual:@"FitToProvidedSize"])
  {
    v22 = v17;
    v20 = v16;
    if (![(__CFString *)overrideLocalImageViewSizingMode2 isEqual:@"FitToViewBounds"])
    {
      goto LABEL_48;
    }

    if (width == v16 && height == v17)
    {
      height = self->_imageProxy;
    }

    else
    {
      height = [(VUIImageView *)self _imageProxyWithSize:onlyCopy sizeComputationOnly:width, height];
    }

    vuiTraitCollection2 = height;
    [(VUIImageProxy *)height expectedSize];
    v34 = v32 == v16 && v33 == v17;
    if (v34 && (([(UIImageView *)self->_imageView sizeThatFits:width, height], v32 == v16) ? (v35 = v33 == v17) : (v35 = 0), v35))
    {
      [(VUIImageView *)self bounds];
      v20 = v36;
      v22 = v37;
    }

    else
    {
      v20 = v32;
      v22 = v33;
    }

    goto LABEL_47;
  }

  image = [(VUIImageView *)self image];
  [image size];
  v20 = v19;
  v22 = v21;

  v25 = (v22 != v17 || v20 != v16) && v20 < v10 && v22 < v12;
  if (!v25 || ![(VUIImageView *)self isResourceImage])
  {
    v22 = v12;
    v20 = v10;
  }

  if ([(VUIImageView *)self adjustsLocalImageForContentSizeCategory])
  {
    vuiTraitCollection = [(UIView *)self vuiTraitCollection];
    [VUICoreUtilities scaleContentSizeValue:vuiTraitCollection forTraitCollection:v20];
    v20 = v27;

    vuiTraitCollection2 = [(UIView *)self vuiTraitCollection];
    [VUICoreUtilities scaleContentSizeValue:vuiTraitCollection2 forTraitCollection:v22];
    v22 = v29;
LABEL_47:
  }

LABEL_48:
  if (!onlyCopy)
  {
    [(VUIImageView *)self bounds];
    v39 = v38;
    v41 = v40;
    imageView = self->_imageView;
    [(VUIImageView *)self bounds];
    [(UIImageView *)imageView setFrame:?];
    if (self->_imageContainsShadow)
    {
      v43 = self->_previousSize.width;
      v44 = self->_previousSize.height;
      if ((v43 != v16 || v44 != v17) && (v39 != v43 || v41 != v44))
      {
        if (self->_shadowPathUpdater)
        {
          shadowPathUpdater = [(VUIImageView *)self shadowPathUpdater];
          shadowPathUpdater[2]();
        }

        else
        {
          [(VUIImageView *)self bounds];
          v50 = [VUICoreUtilities shadowPathWithCornerRadii:self->_shadowRadii.topLeft andScaledSize:self->_shadowRadii.topRight, self->_shadowRadii.bottomLeft, self->_shadowRadii.bottomRight, v48, v49];
          shadowPathUpdater = [(VUIImageView *)self layer];
          [shadowPathUpdater setShadowPath:v50];
        }
      }
    }

    self->_previousSize.width = v39;
    self->_previousSize.height = v41;
    [(VUIImageView *)self computeCornerRadii];
  }

  v51 = v20;
  v52 = v22;
  result.height = v52;
  result.width = v51;
  return result;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  v8 = keyCopy;
  if (!self->_animatesShadowChanges || ([keyCopy isEqualToString:@"shadowPath"] & 1) == 0)
  {
    v17.receiver = self;
    v17.super_class = VUIImageView;
    [(VUIImageView *)&v17 actionForLayer:layerCopy forKey:v8];
    v13 = LABEL_8:;
    goto LABEL_9;
  }

  shadowPath = [layerCopy shadowPath];
  if (!shadowPath)
  {
    v16.receiver = self;
    v16.super_class = VUIImageView;
    [(VUIImageView *)&v16 actionForLayer:layerCopy forKey:v8];
    goto LABEL_8;
  }

  v10 = shadowPath;
  v11 = [layerCopy animationForKey:@"bounds.size"];
  if (v11 && (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 copy];
    [v12 setKeyPath:@"shadowPath"];
    v13 = objc_opt_new();
    [v13 setFromPath:v10];
    [v13 setAnimationToRun:v12];
    [v13 setKey:@"shadowPath"];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VUIImageView;
    v13 = [(VUIImageView *)&v15 actionForLayer:layerCopy forKey:v8];
  }

LABEL_9:

  return v13;
}

- (void)vui_willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = VUIImageView;
  [(UIView *)&v6 vui_willMoveToWindow:?];
  isImageLoaded = [(VUIImageView *)self isImageLoaded];
  if (window)
  {
    if (!isImageLoaded)
    {
      [(VUIImageView *)self _loadImage];
    }
  }

  else if (!isImageLoaded)
  {
    [(VUIImageProxy *)self->_imageProxy cancel];
  }
}

- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  selectedCopy = selected;
  self->_selected = selected;
  [(VUIImageView *)self _updateImageView];
  if ([(VUIImageView *)self _enableEdgeAntialiasingOnSelected])
  {
    layer = [(UIImageView *)self->_imageView layer];
    [layer setAllowsEdgeAntialiasing:selectedCopy];

    layer2 = [(UIImageView *)self->_imageView layer];
    [layer2 setEdgeAntialiasingMask:3];
  }
}

- (id)_imageProxyWithSize:(CGSize)size sizeComputationOnly:(BOOL)only
{
  dynamicProxyProvider = self->_dynamicProxyProvider;
  if (dynamicProxyProvider)
  {
    v6 = dynamicProxyProvider[2](dynamicProxyProvider, only, size, *&size.height);
  }

  else
  {
    v6 = self->_imageProxy;
  }

  return v6;
}

- (void)_reloadImageForLayoutDirectionChange
{
  window = [(VUIImageView *)self window];

  if (window)
  {
    vuiIsRTL = [(UIView *)self vuiIsRTL];
    imageProxy = [(VUIImageView *)self imageProxy];
    imageDirection = [imageProxy imageDirection];

    if (imageDirection != vuiIsRTL)
    {

      [(VUIImageView *)self _loadImage];
    }
  }

  else
  {

    [(VUIImageView *)self setImageLoaded:0];
  }
}

- (void)_loadImage
{
  [(VUIImageView *)self bounds];
  v5 = [(VUIImageView *)self _imageProxyWithSize:0 sizeComputationOnly:v3, v4];
  v6 = v5;
  if (v5 && ([v5 isEqual:self->_imageProxy] & 1) == 0)
  {
    objc_storeStrong(&self->_imageProxy, v6);
  }

  imageProxy = self->_imageProxy;
  v8 = objc_initWeak(&location, imageProxy);

  if (imageProxy)
  {
    [(VUIImageProxy *)self->_imageProxy setCacheOnLoad:+[VUICoreUtilities canHandleDecodingOnRenderThread]^ 1];
    objc_initWeak(&from, self);
    v9 = self->_imageProxy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __26__VUIImageView__loadImage__block_invoke;
    v16[3] = &unk_279E211A8;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [(VUIImageProxy *)v9 setCompletionHandler:v16];
    [(VUIImageProxy *)self->_imageProxy setImageDirection:[(UIView *)self vuiIsRTL]];
    [(VUIImageProxy *)self->_imageProxy load];
    objc_destroyWeak(&v18);
    v10 = &v17;
  }

  else
  {
    completion = [(VUIImageView *)self completion];

    if (!completion)
    {
      goto LABEL_7;
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      completion2 = [(VUIImageView *)self completion];
      completion2[2](completion2, 0, 0, 1);

      [(VUIImageView *)self setCompletion:0];
      [(VUIImageView *)self setImageLoaded:0];
      goto LABEL_7;
    }

    objc_initWeak(&from, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26__VUIImageView__loadImage__block_invoke_2;
    v13[3] = &unk_279E211D0;
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

void __26__VUIImageView__loadImage__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v7)
  {
    [v7 setEnableCache:1];
    v10 = [v7 uiImage];
  }

  else
  {
    if (a4)
    {
      v11 = VUICDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __26__VUIImageView__loadImage__block_invoke_cold_1(WeakRetained, v8, v11);
      }
    }

    v10 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__VUIImageView__loadImage__block_invoke_28;
  v16[3] = &unk_279E21180;
  objc_copyWeak(&v20, (a1 + 40));
  v12 = WeakRetained;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v21 = a4;
  v14 = v8;
  v19 = v14;
  v15 = MEMORY[0x2743B7C30](v16);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v15[2](v15);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  objc_destroyWeak(&v20);
}

void __26__VUIImageView__loadImage__block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained imageProxy];
    v4 = [v3 isEqual:*(a1 + 32)];

    WeakRetained = v8;
    if (v4)
    {
      if (*(a1 + 40) && *(a1 + 64) == 1)
      {
        [v8 _setImage:?];
        v5 = [MEMORY[0x277CCAB98] defaultCenter];
        [v5 postNotificationName:@"VUIImageViewImageDidLoadNotification" object:v8];
      }

      [v8 setImageLoaded:*(a1 + 64)];
      v6 = [v8 completion];

      WeakRetained = v8;
      if (v6)
      {
        v7 = [v8 completion];
        v7[2](v7, *(a1 + 40), *(a1 + 48), *(a1 + 64));

        WeakRetained = v8;
        if (*(a1 + 64) == 1)
        {
          [v8 setCompletion:0];
          WeakRetained = v8;
        }
      }
    }
  }
}

void __26__VUIImageView__loadImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[79] == v2)
  {
    v3 = [WeakRetained completion];
    v3[2](v3, 0, 0, 1);

    [WeakRetained setCompletion:0];
    [WeakRetained setImageLoaded:0];
  }
}

- (void)_updateTintColor
{
  if (self->_selected && (focusedColor = self->__focusedColor) != 0 || (focusedColor = self->__tintColor) != 0)
  {
    v4 = focusedColor;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(UIImageView *)self->_imageView setVuiTintColor:v4];
  self->_rendersImageAsTemplates = v5 != 0;
  if (self->_image)
  {
    [(VUIImageView *)self _updateFlatImageWithImage:?];
  }
}

- (void)_setTintColor:(id)color
{
  objc_storeStrong(&self->__tintColor, color);

  [(VUIImageView *)self _updateTintColor];
}

- (void)computeCornerRadii
{
  if (self->__imageShape == 1)
  {
    [(VUIImageView *)self frame];

    [(VUIImageView *)self setCornerRadius:v4 * 0.22];
  }
}

- (void)_setFocusedColor:(id)color
{
  colorCopy = color;
  if (self->__focusedColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->__focusedColor, color);
    [(VUIImageView *)self _updateImageView];
    colorCopy = v6;
  }
}

- (void)_updateFlatImageWithImage:(id)image shouldUpdateImageView:(BOOL)view
{
  viewCopy = view;
  imageCopy = image;
  rendersImageAsTemplates = self->_rendersImageAsTemplates;
  v9 = imageCopy;
  vuiTemplateImage = imageCopy;
  if (rendersImageAsTemplates)
  {
    vuiTemplateImage = [imageCopy vuiTemplateImage];
  }

  objc_storeStrong(&self->_flatImage, vuiTemplateImage);
  if (rendersImageAsTemplates)
  {
  }

  if (viewCopy)
  {
    [(VUIImageView *)self _updateImageView];
  }
}

- (void)_setImage:(id)image shouldUpdateImageView:(BOOL)view
{
  viewCopy = view;
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(VUIImageView *)self setVuiContentMode:self->_imageContentMode];
    [(VUIImageView *)self _updateFlatImageWithImage:v8 shouldUpdateImageView:viewCopy];
    imageCopy = v8;
  }
}

- (void)_updateImageView
{
  if (self->_image)
  {
    if (self->_selected && (focusedColor = self->__focusedColor) != 0 || (focusedColor = self->__tintColor) != 0)
    {
      v4 = focusedColor;
      [(UIImageView *)self->_imageView setVuiTintColor:v4];
    }

    else
    {
      v4 = 0;
    }

    if ([(VUIImageView *)self clearsBackgroundColorOnImageLoad])
    {
      [(VUIImageView *)self setVuiBackgroundColor:0];
    }

    [(UIImageView *)self->_imageView setImage:self->_flatImage];
    goto LABEL_12;
  }

  [(UIImageView *)self->_imageView setImage:0];
  if (self->_placeholderColor)
  {
    [(VUIImageView *)self setVuiBackgroundColor:?];
    goto LABEL_13;
  }

  placeholderImage = self->_placeholderImage;
  if (placeholderImage)
  {
    v4 = placeholderImage;
    imageAsset = [(UIColor *)v4 imageAsset];
    if (imageAsset && [(UIColor *)v4 imageOrientation]== 4)
    {
      vuiIsRTL = [(UIView *)self vuiIsRTL];

      if (!vuiIsRTL)
      {
LABEL_22:
        [(UIImageView *)self->_imageView setImage:v4];
        imageContentMode = self->_imageContentMode;
        [(UIImage *)self->_placeholderImage size];
        if (v12 == 1.0 && v11 == 1.0)
        {
          v14 = 2;
        }

        else
        {
          v14 = imageContentMode;
        }

        [(UIImageView *)self->_imageView setVuiContentMode:v14];
LABEL_12:

        goto LABEL_13;
      }

      imageAsset = [(UIColor *)v4 imageAsset];
      v8 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:1];
      v9 = [imageAsset imageWithTraitCollection:v8];

      v4 = v9;
    }

    goto LABEL_22;
  }

LABEL_13:

  [(VUIImageView *)self _updateCornerRadius];
}

- (void)_updateCornerRadius
{
  if (!self->_continuousCorners)
  {
    if (!self->_imageContainsCornerRadius || (v4 = 0.0, !self->_image))
    {
      [(VUIImageView *)self cornerRadius];
      v4 = v5;
    }

    layer = [(UIImageView *)self->_imageView layer];
    [layer setCornerRadius:v4];

    vuiContentMode = [(UIImageView *)self->_imageView vuiContentMode];
    layer2 = [(UIImageView *)self->_imageView layer];
    v11 = layer2;
    v10 = v4 > 0.0 || vuiContentMode != 1;
    [layer2 setMasksToBounds:v10];
  }
}

- (_VUICornerRadii)shadowRadii
{
  topLeft = self->_shadowRadii.topLeft;
  topRight = self->_shadowRadii.topRight;
  bottomLeft = self->_shadowRadii.bottomLeft;
  bottomRight = self->_shadowRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

- (CGSize)localImageViewSize
{
  width = self->_localImageViewSize.width;
  height = self->_localImageViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSymbolImage:(id)image withSymbolTransition:(id)transition
{
  imageCopy = image;
  transitionCopy = transition;
  [(VUIImageView *)self setImageProxy:0];
  symbolTransition = [transitionCopy symbolTransition];

  if (symbolTransition)
  {
    [(UIImageView *)self->_imageView setSymbolImage:imageCopy withContentTransition:symbolTransition];
    [(VUIImageView *)self _setImage:imageCopy shouldUpdateImageView:0];
  }

  else
  {
    [(VUIImageView *)self _setImage:imageCopy];
  }
}

void __26__VUIImageView__loadImage__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_270E6E000, log, OS_LOG_TYPE_ERROR, "%@ was unable to load image: %@", &v3, 0x16u);
}

@end