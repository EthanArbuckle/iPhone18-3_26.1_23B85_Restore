@interface VUIImageView
- (CGSize)intrinsicContentSize;
- (CGSize)localImageViewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIImageView)initWithFrame:(CGRect)a3;
- (_VUICornerRadii)shadowRadii;
- (id)_imageProxyWithSize:(CGSize)a3 sizeComputationOnly:(BOOL)a4;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)_loadImage;
- (void)_reloadImageForLayoutDirectionChange;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setFocusedColor:(id)a3;
- (void)_setImage:(id)a3 shouldUpdateImageView:(BOOL)a4;
- (void)_setTintColor:(id)a3;
- (void)_updateBorderColor;
- (void)_updateCornerRadius;
- (void)_updateFlatImageWithImage:(id)a3 shouldUpdateImageView:(BOOL)a4;
- (void)_updateImageView;
- (void)_updateTintColor;
- (void)computeCornerRadii;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageContainsCornerRadius:(BOOL)a3;
- (void)setImageProxy:(id)a3 clearingExisting:(BOOL)a4 completion:(id)a5;
- (void)setPlaceholderColor:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setSymbolImage:(id)a3 withSymbolTransition:(id)a4;
- (void)setVuiContentMode:(unint64_t)a3;
- (void)vui_setHighlighted:(BOOL)a3;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)vui_willMoveToWindow:(id)a3;
@end

@implementation VUIImageView

- (VUIImageView)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = VUIImageView;
  v3 = [(VUIImageView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setVuiContentMode:(unint64_t)a3
{
  if (self->_imageContentMode != a3)
  {
    self->_imageContentMode = a3;
    [(UIImageView *)self->_imageView setContentMode:VUIUIViewContentModeFromVUIContentMode(a3)];

    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = VUIImageView;
  [(VUIImageView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIImageView *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  [(VUIImageView *)self setImageProxy:0];
  [(VUIImageView *)self _setImage:v4];
}

- (void)setImageProxy:(id)a3 clearingExisting:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v24 = a3;
  v9 = a5;
  if (self->_imageProxy != v24 || self->_completion != v9)
  {
    v10 = [(VUIImageView *)self window];
    if (v10)
    {
      v11 = v10;
      v12 = [(UIView *)self vuiIsRTL];

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [(VUIImageProxy *)v24 setImageDirection:v13];
    v14 = [(VUIImageProxy *)v24 isEqual:self->_imageProxy];
    v15 = [(VUIImageView *)self isImageLoaded];
    if (v14)
    {
      if (!v15)
      {
        v16 = [(VUIImageView *)self completion];

        if (v16)
        {
          v17 = [(VUIImageView *)self completion];
          v18 = [(VUIImageView *)self image];
          (v17)[2](v17, v18, 0, 0);
        }
      }

      [(VUIImageView *)self setCompletion:v9];
      if ([(VUIImageView *)self isImageLoaded])
      {
        v19 = [(VUIImageView *)self completion];

        if (v19)
        {
          v20 = [(VUIImageView *)self completion];
          v21 = [(VUIImageView *)self image];
          (v20)[2](v20, v21, 0, 1);

          [(VUIImageView *)self setCompletion:0];
        }
      }
    }

    else
    {
      if (!v15)
      {
        [(VUIImageProxy *)self->_imageProxy cancel];
      }

      [(VUIImageView *)self setImageLoaded:0];
      if (![(VUIImageProxy *)self->_imageProxy isOfSameOriginAs:v24]&& v6)
      {
        [(VUIImageView *)self _setImage:0];
      }

      [(VUIImageView *)self setCompletion:v9];
      objc_storeStrong(&self->_imageProxy, a3);
      v22 = [(VUIImageView *)self window];

      if (v22)
      {
        [(VUIImageView *)self _loadImage];
      }
    }
  }

  v23 = [(VUIImageProxy *)v24 object];
  if (v23)
  {
    objc_storeStrong(&self->_latestImageURL, v23);
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(VUIImageView *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setPlaceholderColor:(id)a3
{
  v5 = a3;
  if (self->_placeholderColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderColor, a3);
    [(VUIImageView *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  if (self->_borderColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_borderColor, a3);
    v6 = [(UIImageView *)self->_imageView layer];
    v7 = v8;
    [v6 setBorderColor:{-[UIColor CGColor](v8, "CGColor")}];

    v5 = v8;
  }
}

- (void)_updateBorderColor
{
  if (self->_borderColor)
  {
    v3 = [(UIImageView *)self->_imageView layer];
    [v3 setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];
  }
}

- (void)setBorderWidth:(double)a3
{
  if (self->_borderWidth != a3)
  {
    self->_borderWidth = a3;
    v4 = [(UIImageView *)self->_imageView layer];
    [v4 setBorderWidth:a3];
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
    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setImageContainsCornerRadius:(BOOL)a3
{
  if (self->_imageContainsCornerRadius != a3)
  {
    self->_imageContainsCornerRadius = a3;
    [(VUIImageView *)self _updateCornerRadius];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIImageView;
  [(VUIImageView *)&v5 setHighlighted:?];
  [(VUIImageView *)self vui_setHighlighted:v3];
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v3 = a3;
  [(UIImageView *)self->_imageView setHighlighted:?];
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
    v21 = [v8 mutableCopy];

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

  v11 = [(UIImageView *)self->_imageView layer];
  v12 = [v11 filters];
  v13 = [v12 containsObject:self->_highlightFilter];

  if ((v13 & 1) == 0)
  {
    v14 = [(UIImageView *)self->_imageView layer];
    v15 = [v14 filters];
    v16 = [v15 mutableCopy];
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
    v19 = [(UIImageView *)self->_imageView layer];
    v20 = [v21 copy];
    [v19 setFilters:v20];
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = MEMORY[0x277CBF3A8];
  [(VUIImageView *)self localImageViewSize];
  v10 = v9;
  v12 = v11;
  if ([(VUIImageView *)self isResourceImage]|| [(VUIImageView *)self isSymbolImage])
  {
    v13 = [(VUIImageView *)self overrideLocalImageViewSizingMode];

    if (v13)
    {
      v14 = [(VUIImageView *)self overrideLocalImageViewSizingMode];
    }

    else
    {
      v14 = @"FitToViewBounds";
      if ([(VUIImageView *)self isResourceImage])
      {
        if (v12 > 0.0 && v10 > 0.0)
        {
          v14 = @"FitToProvidedSize";
        }
      }
    }
  }

  else
  {
    v14 = @"FitToViewBounds";
  }

  v16 = *v8;
  v17 = v8[1];
  if (![(__CFString *)v14 isEqual:@"FitToProvidedSize"])
  {
    v22 = v17;
    v20 = v16;
    if (![(__CFString *)v14 isEqual:@"FitToViewBounds"])
    {
      goto LABEL_48;
    }

    if (width == v16 && height == v17)
    {
      v31 = self->_imageProxy;
    }

    else
    {
      v31 = [(VUIImageView *)self _imageProxyWithSize:v4 sizeComputationOnly:width, height];
    }

    v28 = v31;
    [(VUIImageProxy *)v31 expectedSize];
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

  v18 = [(VUIImageView *)self image];
  [v18 size];
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
    v26 = [(UIView *)self vuiTraitCollection];
    [VUICoreUtilities scaleContentSizeValue:v26 forTraitCollection:v20];
    v20 = v27;

    v28 = [(UIView *)self vuiTraitCollection];
    [VUICoreUtilities scaleContentSizeValue:v28 forTraitCollection:v22];
    v22 = v29;
LABEL_47:
  }

LABEL_48:
  if (!v4)
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
          v47 = [(VUIImageView *)self shadowPathUpdater];
          v47[2]();
        }

        else
        {
          [(VUIImageView *)self bounds];
          v50 = [VUICoreUtilities shadowPathWithCornerRadii:self->_shadowRadii.topLeft andScaledSize:self->_shadowRadii.topRight, self->_shadowRadii.bottomLeft, self->_shadowRadii.bottomRight, v48, v49];
          v47 = [(VUIImageView *)self layer];
          [v47 setShadowPath:v50];
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

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_animatesShadowChanges || ([v7 isEqualToString:@"shadowPath"] & 1) == 0)
  {
    v17.receiver = self;
    v17.super_class = VUIImageView;
    [(VUIImageView *)&v17 actionForLayer:v6 forKey:v8];
    v13 = LABEL_8:;
    goto LABEL_9;
  }

  v9 = [v6 shadowPath];
  if (!v9)
  {
    v16.receiver = self;
    v16.super_class = VUIImageView;
    [(VUIImageView *)&v16 actionForLayer:v6 forKey:v8];
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v6 animationForKey:@"bounds.size"];
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
    v13 = [(VUIImageView *)&v15 actionForLayer:v6 forKey:v8];
  }

LABEL_9:

  return v13;
}

- (void)vui_willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = VUIImageView;
  [(UIView *)&v6 vui_willMoveToWindow:?];
  v5 = [(VUIImageView *)self isImageLoaded];
  if (a3)
  {
    if (!v5)
    {
      [(VUIImageView *)self _loadImage];
    }
  }

  else if (!v5)
  {
    [(VUIImageProxy *)self->_imageProxy cancel];
  }
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a3;
  self->_selected = a3;
  [(VUIImageView *)self _updateImageView];
  if ([(VUIImageView *)self _enableEdgeAntialiasingOnSelected])
  {
    v7 = [(UIImageView *)self->_imageView layer];
    [v7 setAllowsEdgeAntialiasing:v5];

    v8 = [(UIImageView *)self->_imageView layer];
    [v8 setEdgeAntialiasingMask:3];
  }
}

- (id)_imageProxyWithSize:(CGSize)a3 sizeComputationOnly:(BOOL)a4
{
  dynamicProxyProvider = self->_dynamicProxyProvider;
  if (dynamicProxyProvider)
  {
    v6 = dynamicProxyProvider[2](dynamicProxyProvider, a4, a3, *&a3.height);
  }

  else
  {
    v6 = self->_imageProxy;
  }

  return v6;
}

- (void)_reloadImageForLayoutDirectionChange
{
  v3 = [(VUIImageView *)self window];

  if (v3)
  {
    v4 = [(UIView *)self vuiIsRTL];
    v5 = [(VUIImageView *)self imageProxy];
    v6 = [v5 imageDirection];

    if (v6 != v4)
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
    v11 = [(VUIImageView *)self completion];

    if (!v11)
    {
      goto LABEL_7;
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v12 = [(VUIImageView *)self completion];
      v12[2](v12, 0, 0, 1);

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

- (void)_setTintColor:(id)a3
{
  objc_storeStrong(&self->__tintColor, a3);

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

- (void)_setFocusedColor:(id)a3
{
  v5 = a3;
  if (self->__focusedColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__focusedColor, a3);
    [(VUIImageView *)self _updateImageView];
    v5 = v6;
  }
}

- (void)_updateFlatImageWithImage:(id)a3 shouldUpdateImageView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  rendersImageAsTemplates = self->_rendersImageAsTemplates;
  v9 = v6;
  v8 = v6;
  if (rendersImageAsTemplates)
  {
    v8 = [v6 vuiTemplateImage];
  }

  objc_storeStrong(&self->_flatImage, v8);
  if (rendersImageAsTemplates)
  {
  }

  if (v4)
  {
    [(VUIImageView *)self _updateImageView];
  }
}

- (void)_setImage:(id)a3 shouldUpdateImageView:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_image != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_image, a3);
    [(VUIImageView *)self setVuiContentMode:self->_imageContentMode];
    [(VUIImageView *)self _updateFlatImageWithImage:v8 shouldUpdateImageView:v4];
    v7 = v8;
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
    v6 = [(UIColor *)v4 imageAsset];
    if (v6 && [(UIColor *)v4 imageOrientation]== 4)
    {
      v7 = [(UIView *)self vuiIsRTL];

      if (!v7)
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

      v6 = [(UIColor *)v4 imageAsset];
      v8 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:1];
      v9 = [v6 imageWithTraitCollection:v8];

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

    v6 = [(UIImageView *)self->_imageView layer];
    [v6 setCornerRadius:v4];

    v7 = [(UIImageView *)self->_imageView vuiContentMode];
    v8 = [(UIImageView *)self->_imageView layer];
    v11 = v8;
    v10 = v4 > 0.0 || v7 != 1;
    [v8 setMasksToBounds:v10];
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

- (void)setSymbolImage:(id)a3 withSymbolTransition:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(VUIImageView *)self setImageProxy:0];
  v7 = [v6 symbolTransition];

  if (v7)
  {
    [(UIImageView *)self->_imageView setSymbolImage:v8 withContentTransition:v7];
    [(VUIImageView *)self _setImage:v8 shouldUpdateImageView:0];
  }

  else
  {
    [(VUIImageView *)self _setImage:v8];
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