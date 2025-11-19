@interface VUIStackedImageView
+ (CGSize)_scaledSizeForSize:(CGSize)a3 focusSizeIncrease:(double)a4 selectionStyle:(int64_t)a5;
+ (CGSize)_scaledSizeForSize:(CGSize)a3 selectionStyle:(int64_t)a4;
- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4;
- (BOOL)allowsNonOpaqueShadow;
- (CACornerRadii)cornerRadii;
- (CGPoint)focusDirection;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)stackSize;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3;
- (UIImage)placeholderImage;
- (VUIStackedImageView)initWithImage:(id)a3 size:(CGSize)a4;
- (VUIStackedImageView)initWithImageProxy:(id)a3;
- (double)cornerRadius;
- (double)focusSizeIncrease;
- (double)zDepth;
- (id)_newImageConfiguration;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (int64_t)selectionStyle;
- (void)_backupStackedImageConfiguration:(id)a3;
- (void)_commitLayerStack:(id)a3;
- (void)_loadImage;
- (void)_resetShadowSettings;
- (void)_setShadowOpacity:(double)a3;
- (void)_setShadowRadius:(double)a3;
- (void)_setShadowVerticalOffset:(double)a3;
- (void)_updateImageSamplingOverlays;
- (void)_updateLayerStack:(id)a3 withImage:(CGImage *)a4 size:(CGSize)a5;
- (void)_updateStackedImageConfiguration;
- (void)animateWithAuxiliarySelectionState:(BOOL)a3 animations:(id)a4;
- (void)dealloc;
- (void)setAllowsNonOpaqueShadow:(BOOL)a3;
- (void)setControlState:(unint64_t)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5;
- (void)setCornerRadii:(CACornerRadii *)a3;
- (void)setCornerRadius:(double)a3;
- (void)setFocusDirection:(CGPoint)a3;
- (void)setFocusSizeIncrease:(double)a3;
- (void)setImage:(id)a3 withSize:(CGSize)a4;
- (void)setImageProxy:(id)a3;
- (void)setOverlayComposited:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setShadow:(id)a3;
- (void)setZDepth:(double)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation VUIStackedImageView

- (VUIStackedImageView)initWithImageProxy:(id)a3
{
  v5 = a3;
  [v5 expectedSize];
  v6 = [(VUIStackedImageView *)self initWithImage:0 size:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageProxy, a3);
  }

  return v7;
}

- (VUIStackedImageView)initWithImage:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v15.receiver = self;
  v15.super_class = VUIStackedImageView;
  v8 = [(_UIStackedImageContainerView *)&v15 initWithFrame:a3, v6, v7, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_stackSize.width = width;
    v8->_stackSize.height = height;
    [(VUIStackedImageView *)v8 setUserInteractionEnabled:0];
    v10 = [(VUIStackedImageView *)v9 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(_UIStackedImageContainerView *)v9 config];
    [(VUIStackedImageView *)v9 _backupStackedImageConfiguration:v11];

    [(VUIStackedImageView *)v9 _updateStackedImageConfiguration];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v9 selector:sel__updateStackedImageConfiguration name:*MEMORY[0x277D764C0] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v9 selector:sel__updateStackedImageConfiguration name:*MEMORY[0x277D81CF8] object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_stackSize.width;
  if (width <= 0.0 || (height = self->_stackSize.height, height <= 0.0))
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = VUIStackedImageView;
    [(VUIStackedImageView *)&v11 sizeThatFits:a3.width, a3.height];
    width = v7;
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = VUIStackedImageView;
  [(VUIStackedImageView *)&v6 willMoveToWindow:?];
  v5 = [(VUIStackedImageView *)self isImageLoaded];
  if (a3)
  {
    if (!v5)
    {
      [(VUIStackedImageView *)self _loadImage];
    }
  }

  else if (!v5)
  {
    [(VUIImageProxy *)self->_imageProxy cancel];
  }
}

- (void)setImageProxy:(id)a3
{
  v9 = a3;
  if (self->_imageProxy != v9)
  {
    v5 = [(VUIStackedImageView *)self window];
    if (v5)
    {
      v6 = v5;
      v7 = [(VUIStackedImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    }

    else
    {
      v7 = 0;
    }

    [(VUIImageProxy *)v9 setImageDirection:v7];
    if (![(VUIImageProxy *)v9 isEqual:self->_imageProxy])
    {
      if (![(VUIStackedImageView *)self isImageLoaded])
      {
        [(VUIImageProxy *)self->_imageProxy cancel];
      }

      [(VUIStackedImageView *)self setImageLoaded:0];
      objc_storeStrong(&self->_imageProxy, a3);
      v8 = [(VUIStackedImageView *)self window];

      if (v8)
      {
        [(VUIStackedImageView *)self _loadImage];
      }
    }
  }
}

- (void)setImage:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  objc_storeStrong(&self->_staticImage, a3);
  self->_stackSize.width = width;
  self->_stackSize.height = height;
  [(VUIStackedImageView *)self setImageProxy:0];
  [(VUIStackedImageView *)self setImageLoaded:0];
  v7 = [(VUIStackedImageView *)self window];

  if (v7)
  {

    [(VUIStackedImageView *)self _loadImage];
  }
}

- (UIImage)placeholderImage
{
  v2 = [(_UIStackedImageContainerView *)self config];
  v3 = [v2 placeholderImage];

  return v3;
}

- (void)setPlaceholderImage:(id)a3
{
  v10 = a3;
  v4 = [(VUIStackedImageView *)self placeholderImage];

  v5 = v10;
  if (v4 != v10)
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [MEMORY[0x277D759A0] mainScreen];
        v7 = [v6 traitCollection];
        v8 = +[VUICoreUtilities defaultPlaceholderImageForUserInterfaceStyle:](VUICoreUtilities, "defaultPlaceholderImageForUserInterfaceStyle:", [v7 userInterfaceStyle]);

        v10 = v8;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = [(_UIStackedImageContainerView *)self config];
    [v9 setPlaceholderImage:v10];

    v5 = v10;
  }
}

- (double)cornerRadius
{
  v2 = [(_UIStackedImageContainerView *)self config];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setCornerRadius:a3];
}

- (CACornerRadii)cornerRadii
{
  v4 = [(_UIStackedImageContainerView *)self config];
  if (v4)
  {
    v6 = v4;
    [v4 cornerRadii];
    v4 = v6;
  }

  else
  {
    retstr->var2 = 0u;
    retstr->var3 = 0u;
    retstr->var0 = 0u;
    retstr->var1 = 0u;
  }

  return result;
}

- (void)setCornerRadii:(CACornerRadii *)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  var3 = a3->var3;
  v7[2] = a3->var2;
  v7[3] = var3;
  [v4 setCornerRadii:v7];
}

- (double)focusSizeIncrease
{
  v2 = [(_UIStackedImageContainerView *)self config];
  [v2 scaleSizeIncrease];
  v4 = v3;

  return v4;
}

- (void)setFocusSizeIncrease:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setScaleSizeIncrease:a3];
}

- (void)setShadow:(id)a3
{
  v5 = a3;
  if (([(NSShadow *)self->_shadow isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_shadow, a3);
    shadow = self->_shadow;
    if (shadow)
    {
      v9 = 0.0;
      v7 = [(NSShadow *)shadow shadowColor];
      [v7 getRed:0 green:0 blue:0 alpha:&v9];

      [(VUIStackedImageView *)self _setShadowOpacity:v9];
      [v5 shadowBlurRadius];
      [(VUIStackedImageView *)self _setShadowRadius:?];
      [v5 shadowOffset];
      [(VUIStackedImageView *)self _setShadowVerticalOffset:v8];
    }

    else
    {
      [(VUIStackedImageView *)self _resetShadowSettings];
    }
  }
}

- (double)zDepth
{
  v2 = [(_UIStackedImageContainerView *)self config];
  [v2 zDepth];
  v4 = v3;

  return v4;
}

- (void)setZDepth:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setZDepth:a3];
}

- (BOOL)allowsNonOpaqueShadow
{
  v2 = [(_UIStackedImageContainerView *)self config];
  v3 = [v2 allowsNonOpaqueShadow];

  return v3;
}

- (void)setAllowsNonOpaqueShadow:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setAllowsNonOpaqueShadow:v3];
}

- (int64_t)selectionStyle
{
  v2 = [(_UIStackedImageContainerView *)self config];
  v3 = [v2 selectionStyle];

  return v3;
}

- (void)setSelectionStyle:(int64_t)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setSelectionStyle:a3];
}

- (void)setOverlayComposited:(BOOL)a3
{
  v3 = a3;
  self->_overlayComposited = a3;
  v4 = [(_UIStackedImageContainerView *)self config];
  v6 = v4;
  v5 = 1.0;
  if (v3)
  {
    v5 = 0.0;
  }

  [v4 setOverlayDepth:v5];
}

- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"focusDirectionX"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectForKey:@"focusDirectionY"];

  [v9 doubleValue];
  v11 = v10;

  [(VUIStackedImageView *)self setFocusDirection:v8, v11];
  return 1;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a4;
  v6 = a3;
  v10 = a5;
  v8 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFF7;
  v9 = 8;
  if (!v6)
  {
    v9 = 0;
  }

  [(VUIStackedImageView *)self setControlState:v8 | v9 animated:v5 focusAnimationCoordinator:v10];
}

- (void)setControlState:(unint64_t)a3 animated:(BOOL)a4 focusAnimationCoordinator:(id)a5
{
  v5 = a4;
  v10.receiver = self;
  v10.super_class = VUIStackedImageView;
  v8 = a5;
  [(_UIStackedImageContainerView *)&v10 setControlState:a3 animated:v5 focusAnimationCoordinator:v8];
  v9 = [(_UIStackedImageContainerView *)self imageOverlayView:v10.receiver];
  [v9 vui_setSelected:(a3 >> 3) & 1 animated:v5 withAnimationCoordinator:v8];
}

- (void)setPressed:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v3 setPressed:a3];
}

- (CGPoint)focusDirection
{
  v4.receiver = self;
  v4.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v4 focusDirection];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setFocusDirection:(CGPoint)a3
{
  v3.receiver = self;
  v3.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v3 setFocusDirection:a3.x, a3.y];
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3
{
  if (a3.width == 0.0 || (height = a3.height, a3.height == 0.0))
  {
    [(VUIStackedImageView *)self stackSize];
    width = v6;
    height = v7;
  }

  else
  {
    width = a3.width;
  }

  v8 = objc_opt_class();
  v9 = [(_UIStackedImageContainerView *)self config];
  [v9 scaleSizeIncrease];
  [v8 _scaledSizeForSize:-[VUIStackedImageView selectionStyle](self focusSizeIncrease:"selectionStyle") selectionStyle:{width, height, v10}];
  v12 = v11;
  v14 = v13;

  v15 = floor((v12 - width) * 0.5);
  v16 = floor((v14 - height) * 0.5);
  v17 = v16;
  v18 = v15;
  result.right = v18;
  result.bottom = v17;
  result.left = v15;
  result.top = v16;
  return result;
}

- (void)animateWithAuxiliarySelectionState:(BOOL)a3 animations:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v10 = v6;
    v7 = MEMORY[0x277D75D18];
    v8 = [(_UIStackedImageContainerView *)self config];
    v9 = v8;
    if (a3)
    {
      [v8 layerSelectionDuration];
    }

    else
    {
      [v8 layerUnselectionDuration];
    }

    [v7 animateWithDuration:327684 delay:v10 options:0 animations:? completion:?];

    v6 = v10;
  }
}

- (id)_newImageConfiguration
{
  v2 = [MEMORY[0x277D76278] newStandardConfiguration];
  [v2 setMaximumParallaxImages:6];
  [v2 setRadiosityStrength:0.0];
  return v2;
}

- (void)_loadImage
{
  v3 = objc_opt_new();
  uiLayerStack = self->_uiLayerStack;
  self->_uiLayerStack = v3;

  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setName:v6];

  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setSize:self->_stackSize.width, self->_stackSize.height];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setScale:1.0];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setFlattenedImage:0];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setLayers:MEMORY[0x277CBEBF8]];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setRadiosityImage:0];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setRadiosityImageScale:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setFlatImageContainsCornerRadius:0];
  [(_UIStackedImageContainerView *)self setConstructedStackImage:self->_uiLayerStack];
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_imageProxy);
  v7 = [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack copy];
  width = self->_stackSize.width;
  height = self->_stackSize.height;
  v10 = objc_loadWeakRetained(&from);

  if (v10)
  {
    [(VUIImageProxy *)self->_imageProxy setCacheOnLoad:+[VUICoreUtilities canHandleDecodingOnRenderThread]^ 1];
    imageProxy = self->_imageProxy;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __33__VUIStackedImageView__loadImage__block_invoke;
    v33[3] = &unk_279E21698;
    v12 = &v35;
    objc_copyWeak(&v35, &from);
    objc_copyWeak(v36, &location);
    v34 = v7;
    v36[1] = *&width;
    v36[2] = *&height;
    [(VUIImageProxy *)imageProxy setCompletionHandler:v33];
    [(VUIImageProxy *)self->_imageProxy setImageDirection:[(VUIStackedImageView *)self effectiveUserInterfaceLayoutDirection]== 1];
    [(VUIImageProxy *)self->_imageProxy load];

    objc_destroyWeak(v36);
  }

  else
  {
    staticImage = self->_staticImage;
    if (!staticImage)
    {
      [(VUIStackedImageView *)self setImageLoaded:1];
      goto LABEL_11;
    }

    v14 = [(UIImage *)staticImage CGImage];
    v15 = objc_opt_class();
    [(VUIStackedImageView *)self focusSizeIncrease];
    [v15 _scaledSizeForSize:-[VUIStackedImageView selectionStyle](self focusSizeIncrease:"selectionStyle") selectionStyle:{width, height, v16}];
    v18 = v17;
    v20 = v19;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__VUIStackedImageView__loadImage__block_invoke_3;
    v30[3] = &unk_279E216C0;
    v12 = v32;
    objc_copyWeak(v32, &location);
    v32[1] = v14;
    v31 = v7;
    v32[2] = *&width;
    v32[3] = *&height;
    v21 = MEMORY[0x2743B7C30](v30);
    [(UIImage *)self->_staticImage size];
    if (v18 == v23 && v20 == v22 || !+[VUICoreUtilities canHandleDecodingOnRenderThread])
    {
      (v21)[2](v21, v14);
    }

    else
    {
      v24 = dispatch_get_global_queue(21, 0);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __33__VUIStackedImageView__loadImage__block_invoke_4;
      v25[3] = &unk_279E21710;
      v27 = v18;
      v28 = v20;
      v29 = v14;
      v26 = v21;
      dispatch_async(v24, v25);
    }
  }

  objc_destroyWeak(v12);
LABEL_11:

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __33__VUIStackedImageView__loadImage__block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  [v7 setEnableCache:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 image];
  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 _updateLayerStack:*(a1 + 32) withImage:v10 size:{*(a1 + 56), *(a1 + 64)}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__VUIStackedImageView__loadImage__block_invoke_2;
  v15[3] = &unk_279E21180;
  objc_copyWeak(&v19, (a1 + 48));
  v12 = WeakRetained;
  v16 = v12;
  v13 = v7;
  v17 = v13;
  v20 = a4;
  v18 = *(a1 + 32);
  v14 = MEMORY[0x2743B7C30](v15);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v14[2](v14);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  objc_destroyWeak(&v19);
}

void __33__VUIStackedImageView__loadImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained imageProxy];
    v4 = [v3 isEqual:*(a1 + 32)];

    WeakRetained = v5;
    if (v4)
    {
      if (*(a1 + 40) && *(a1 + 64) == 1)
      {
        [v5 _commitLayerStack:*(a1 + 48)];
      }

      [v5 setImageLoaded:*(a1 + 64)];
      WeakRetained = v5;
    }
  }
}

void __33__VUIStackedImageView__loadImage__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained[56] CGImage] == *(a1 + 48);
    WeakRetained = v6;
    if (v5)
    {
      [v6 _updateLayerStack:*(a1 + 32) withImage:a2 size:{*(a1 + 56), *(a1 + 64)}];
      [v6 _commitLayerStack:*(a1 + 32)];
      [v6 setImageLoaded:1];
      WeakRetained = v6;
    }
  }
}

void __33__VUIStackedImageView__loadImage__block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 56);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v3 = VUICompositeBitmapImageOfSizeForImages(v2, 0, 0, *(a1 + 40), *(a1 + 48), 0.0);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__VUIStackedImageView__loadImage__block_invoke_5;
  v4[3] = &unk_279E216E8;
  v5 = *(a1 + 32);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __33__VUIStackedImageView__loadImage__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {
  }
}

- (void)_updateLayerStack:(id)a3 withImage:(CGImage *)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  [v8 setFlattenedImage:a4];
  v9 = CGImageGetWidth(a4);
  v10 = CGImageGetHeight(a4);
  if (v9 / v10 != width / height)
  {
    v11 = fmin(width / v9, height / v10);
    width = floor(v11 * v9);
    height = floor(v11 * v10);
    [v8 setSize:{width, height}];
  }

  if (a4 && (v12 = objc_opt_new(), [MEMORY[0x277D755B8] imageWithCGImage:a4], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setImageObj:", v13), v13, objc_msgSend(v12, "setImage:", a4), objc_msgSend(v12, "setName:", @"0"), objc_msgSend(v12, "setOpacity:", 1.0), objc_msgSend(v12, "setFrame:", 0.0, 0.0, width, height), v12))
  {
    v15[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v8 setLayers:v14];
  }

  else
  {
    [v8 setLayers:MEMORY[0x277CBEBF8]];
  }
}

- (void)_commitLayerStack:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  uiLayerStack = self->_uiLayerStack;
  self->_uiLayerStack = v4;
  v7 = v4;

  [(_UIStackedImageContainerView *)self setConstructedStackImage:v7];
  [MEMORY[0x277CD9FF0] setDisableActions:v5];
  [(VUIStackedImageView *)self _updateImageSamplingOverlays];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];

  [v8 postNotificationName:@"VUIStackedImageViewImageDidUpdateNotification" object:self];
}

- (void)_updateImageSamplingOverlays
{
  v16 = [(_UIStackedImageContainerView *)self imageOverlayView];
  v3 = [v16 conformsToProtocol:&unk_288115808];
  if ([(VUIStackedImageNamedLayerStack *)self->_uiLayerStack flattenedImage])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack flattenedImage];
    v6 = objc_opt_class();
    [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack size];
    v8 = v7;
    v10 = v9;
    v11 = [(_UIStackedImageContainerView *)self config];
    [v11 scaleSizeIncrease];
    [v6 _scaledSizeForSize:-[VUIStackedImageView selectionStyle](self focusSizeIncrease:"selectionStyle") selectionStyle:{v8, v10, v12}];
    v14 = v13;

    v15 = [MEMORY[0x277D755B8] imageWithCGImage:v5 scale:0 orientation:CGImageGetWidth(v5) / v14];
    [v16 sampleWithImage:v15];
  }
}

- (void)_setShadowOpacity:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setDefaultFocusedShadowOpacity:a3];
  [v4 setDefaultHighlightedShadowOpacity:a3];
  [v4 setDefaultUnfocusedShadowOpacity:a3];
}

- (void)_setShadowRadius:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setDefaultFocusedShadowRadius:a3];
  [v4 setDefaultHighlightedShadowRadius:a3];
  [v4 setDefaultUnfocusedShadowRadius:a3];
}

- (void)_setShadowVerticalOffset:(double)a3
{
  v4 = [(_UIStackedImageContainerView *)self config];
  [v4 setDefaultFocusedShadowVerticalOffset:a3];
  [v4 setDefaultHighlightedShadowVerticalOffset:a3];
  [v4 setDefaultUnfocusedShadowVerticalOffset:a3];
}

- (void)_resetShadowSettings
{
  v4 = [(VUIStackedImageView *)self _newImageConfiguration];
  v3 = [(_UIStackedImageContainerView *)self config];
  [v4 defaultFocusedShadowOpacity];
  [v3 setDefaultFocusedShadowOpacity:?];
  [v4 defaultHighlightedShadowOpacity];
  [v3 setDefaultHighlightedShadowOpacity:?];
  [v4 defaultUnfocusedShadowOpacity];
  [v3 setDefaultUnfocusedShadowOpacity:?];
  [v4 defaultFocusedShadowRadius];
  [v3 setDefaultFocusedShadowRadius:?];
  [v4 defaultHighlightedShadowRadius];
  [v3 setDefaultHighlightedShadowRadius:?];
  [v4 defaultUnfocusedShadowRadius];
  [v3 setDefaultUnfocusedShadowRadius:?];
  [v4 defaultFocusedShadowVerticalOffset];
  [v3 setDefaultFocusedShadowVerticalOffset:?];
  [v4 defaultHighlightedShadowVerticalOffset];
  [v3 setDefaultHighlightedShadowVerticalOffset:?];
  [v4 defaultUnfocusedShadowVerticalOffset];
  [v3 setDefaultUnfocusedShadowVerticalOffset:?];
}

- (void)_updateStackedImageConfiguration
{
  v4 = [(_UIStackedImageContainerView *)self config];
  if (!v4)
  {
    v4 = [(VUIStackedImageView *)self _newImageConfiguration];
    [(VUIStackedImageView *)self _backupStackedImageConfiguration:?];
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    repositionUnselectionDuration = 0.0;
    [v4 setLayerSelectionDuration:0.0];
    [v4 setLayerUnselectionDuration:0.0];
    [v4 setShadowSelectionDuration:0.0];
    [v4 setShadowUnselectionDuration:0.0];
  }

  else
  {
    [v4 setLayerSelectionDuration:self->_layerSelectionDuration];
    [v4 setLayerUnselectionDuration:self->_layerUnselectionDuration];
    [v4 setShadowSelectionDuration:self->_shadowSelectionDuration];
    [v4 setShadowUnselectionDuration:self->_shadowUnselectionDuration];
    repositionUnselectionDuration = self->_repositionUnselectionDuration;
  }

  [v4 setRepositionUnselectionDuration:repositionUnselectionDuration];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    [v4 setFocusCursorEnabled:1];
  }

  [(_UIStackedImageContainerView *)self setConfig:v4];
}

- (void)_backupStackedImageConfiguration:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 layerSelectionDuration];
    self->_layerSelectionDuration = v5;
    [v4 layerUnselectionDuration];
    self->_layerUnselectionDuration = v6;
    [v4 shadowSelectionDuration];
    self->_shadowSelectionDuration = v7;
    [v4 shadowUnselectionDuration];
    self->_shadowUnselectionDuration = v8;
    [v4 repositionUnselectionDuration];
    v10 = v9;

    self->_repositionUnselectionDuration = v10;
  }
}

+ (CGSize)_scaledSizeForSize:(CGSize)a3 selectionStyle:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [MEMORY[0x277D76278] newStandardConfiguration];
  [v8 scaleSizeIncrease];
  [a1 _scaledSizeForSize:a4 focusSizeIncrease:width selectionStyle:{height, v9}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)_scaledSizeForSize:(CGSize)a3 focusSizeIncrease:(double)a4 selectionStyle:(int64_t)a5
{
  [MEMORY[0x277D76278] _scaledSizeForSize:a5 focusSizeIncrease:a3.width selectionStyle:{a3.height, a4}];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v4 = [(_UIStackedImageContainerView *)self config:a3];
  v5 = [v4 focusAnimationConfiguration];

  return v5;
}

- (CGSize)stackSize
{
  width = self->_stackSize.width;
  height = self->_stackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end