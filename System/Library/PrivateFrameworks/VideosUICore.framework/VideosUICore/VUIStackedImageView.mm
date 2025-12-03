@interface VUIStackedImageView
+ (CGSize)_scaledSizeForSize:(CGSize)size focusSizeIncrease:(double)increase selectionStyle:(int64_t)style;
+ (CGSize)_scaledSizeForSize:(CGSize)size selectionStyle:(int64_t)style;
- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect;
- (BOOL)allowsNonOpaqueShadow;
- (CACornerRadii)cornerRadii;
- (CGPoint)focusDirection;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)stackSize;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (UIImage)placeholderImage;
- (VUIStackedImageView)initWithImage:(id)image size:(CGSize)size;
- (VUIStackedImageView)initWithImageProxy:(id)proxy;
- (double)cornerRadius;
- (double)focusSizeIncrease;
- (double)zDepth;
- (id)_newImageConfiguration;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (int64_t)selectionStyle;
- (void)_backupStackedImageConfiguration:(id)configuration;
- (void)_commitLayerStack:(id)stack;
- (void)_loadImage;
- (void)_resetShadowSettings;
- (void)_setShadowOpacity:(double)opacity;
- (void)_setShadowRadius:(double)radius;
- (void)_setShadowVerticalOffset:(double)offset;
- (void)_updateImageSamplingOverlays;
- (void)_updateLayerStack:(id)stack withImage:(CGImage *)image size:(CGSize)size;
- (void)_updateStackedImageConfiguration;
- (void)animateWithAuxiliarySelectionState:(BOOL)state animations:(id)animations;
- (void)dealloc;
- (void)setAllowsNonOpaqueShadow:(BOOL)shadow;
- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator;
- (void)setCornerRadii:(CACornerRadii *)radii;
- (void)setCornerRadius:(double)radius;
- (void)setFocusDirection:(CGPoint)direction;
- (void)setFocusSizeIncrease:(double)increase;
- (void)setImage:(id)image withSize:(CGSize)size;
- (void)setImageProxy:(id)proxy;
- (void)setOverlayComposited:(BOOL)composited;
- (void)setPlaceholderImage:(id)image;
- (void)setPressed:(BOOL)pressed;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)setSelectionStyle:(int64_t)style;
- (void)setShadow:(id)shadow;
- (void)setZDepth:(double)depth;
- (void)willMoveToWindow:(id)window;
@end

@implementation VUIStackedImageView

- (VUIStackedImageView)initWithImageProxy:(id)proxy
{
  proxyCopy = proxy;
  [proxyCopy expectedSize];
  v6 = [(VUIStackedImageView *)self initWithImage:0 size:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageProxy, proxy);
  }

  return v7;
}

- (VUIStackedImageView)initWithImage:(id)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v15.receiver = self;
  v15.super_class = VUIStackedImageView;
  height = [(_UIStackedImageContainerView *)&v15 initWithFrame:image, v6, v7, width, height];
  v9 = height;
  if (height)
  {
    height->_stackSize.width = width;
    height->_stackSize.height = height;
    [(VUIStackedImageView *)height setUserInteractionEnabled:0];
    layer = [(VUIStackedImageView *)v9 layer];
    [layer setAllowsGroupOpacity:0];

    config = [(_UIStackedImageContainerView *)v9 config];
    [(VUIStackedImageView *)v9 _backupStackedImageConfiguration:config];

    [(VUIStackedImageView *)v9 _updateStackedImageConfiguration];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__updateStackedImageConfiguration name:*MEMORY[0x277D764C0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__updateStackedImageConfiguration name:*MEMORY[0x277D81CF8] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_stackSize.width;
  if (width <= 0.0 || (height = self->_stackSize.height, height <= 0.0))
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = VUIStackedImageView;
    [(VUIStackedImageView *)&v11 sizeThatFits:fits.width, fits.height];
    width = v7;
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = VUIStackedImageView;
  [(VUIStackedImageView *)&v6 willMoveToWindow:?];
  isImageLoaded = [(VUIStackedImageView *)self isImageLoaded];
  if (window)
  {
    if (!isImageLoaded)
    {
      [(VUIStackedImageView *)self _loadImage];
    }
  }

  else if (!isImageLoaded)
  {
    [(VUIImageProxy *)self->_imageProxy cancel];
  }
}

- (void)setImageProxy:(id)proxy
{
  proxyCopy = proxy;
  if (self->_imageProxy != proxyCopy)
  {
    window = [(VUIStackedImageView *)self window];
    if (window)
    {
      v6 = window;
      v7 = [(VUIStackedImageView *)self effectiveUserInterfaceLayoutDirection]== 1;
    }

    else
    {
      v7 = 0;
    }

    [(VUIImageProxy *)proxyCopy setImageDirection:v7];
    if (![(VUIImageProxy *)proxyCopy isEqual:self->_imageProxy])
    {
      if (![(VUIStackedImageView *)self isImageLoaded])
      {
        [(VUIImageProxy *)self->_imageProxy cancel];
      }

      [(VUIStackedImageView *)self setImageLoaded:0];
      objc_storeStrong(&self->_imageProxy, proxy);
      window2 = [(VUIStackedImageView *)self window];

      if (window2)
      {
        [(VUIStackedImageView *)self _loadImage];
      }
    }
  }
}

- (void)setImage:(id)image withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_storeStrong(&self->_staticImage, image);
  self->_stackSize.width = width;
  self->_stackSize.height = height;
  [(VUIStackedImageView *)self setImageProxy:0];
  [(VUIStackedImageView *)self setImageLoaded:0];
  window = [(VUIStackedImageView *)self window];

  if (window)
  {

    [(VUIStackedImageView *)self _loadImage];
  }
}

- (UIImage)placeholderImage
{
  config = [(_UIStackedImageContainerView *)self config];
  placeholderImage = [config placeholderImage];

  return placeholderImage;
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  placeholderImage = [(VUIStackedImageView *)self placeholderImage];

  v5 = imageCopy;
  if (placeholderImage != imageCopy)
  {
    if (imageCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        traitCollection = [mainScreen traitCollection];
        v8 = +[VUICoreUtilities defaultPlaceholderImageForUserInterfaceStyle:](VUICoreUtilities, "defaultPlaceholderImageForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

        imageCopy = v8;
      }
    }

    else
    {
      imageCopy = 0;
    }

    config = [(_UIStackedImageContainerView *)self config];
    [config setPlaceholderImage:imageCopy];

    v5 = imageCopy;
  }
}

- (double)cornerRadius
{
  config = [(_UIStackedImageContainerView *)self config];
  [config cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setCornerRadius:radius];
}

- (CACornerRadii)cornerRadii
{
  config = [(_UIStackedImageContainerView *)self config];
  if (config)
  {
    v6 = config;
    [config cornerRadii];
    config = v6;
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

- (void)setCornerRadii:(CACornerRadii *)radii
{
  config = [(_UIStackedImageContainerView *)self config];
  var1 = radii->var1;
  v7[0] = radii->var0;
  v7[1] = var1;
  var3 = radii->var3;
  v7[2] = radii->var2;
  v7[3] = var3;
  [config setCornerRadii:v7];
}

- (double)focusSizeIncrease
{
  config = [(_UIStackedImageContainerView *)self config];
  [config scaleSizeIncrease];
  v4 = v3;

  return v4;
}

- (void)setFocusSizeIncrease:(double)increase
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setScaleSizeIncrease:increase];
}

- (void)setShadow:(id)shadow
{
  shadowCopy = shadow;
  if (([(NSShadow *)self->_shadow isEqual:shadowCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_shadow, shadow);
    shadow = self->_shadow;
    if (shadow)
    {
      v9 = 0.0;
      shadowColor = [(NSShadow *)shadow shadowColor];
      [shadowColor getRed:0 green:0 blue:0 alpha:&v9];

      [(VUIStackedImageView *)self _setShadowOpacity:v9];
      [shadowCopy shadowBlurRadius];
      [(VUIStackedImageView *)self _setShadowRadius:?];
      [shadowCopy shadowOffset];
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
  config = [(_UIStackedImageContainerView *)self config];
  [config zDepth];
  v4 = v3;

  return v4;
}

- (void)setZDepth:(double)depth
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setZDepth:depth];
}

- (BOOL)allowsNonOpaqueShadow
{
  config = [(_UIStackedImageContainerView *)self config];
  allowsNonOpaqueShadow = [config allowsNonOpaqueShadow];

  return allowsNonOpaqueShadow;
}

- (void)setAllowsNonOpaqueShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  config = [(_UIStackedImageContainerView *)self config];
  [config setAllowsNonOpaqueShadow:shadowCopy];
}

- (int64_t)selectionStyle
{
  config = [(_UIStackedImageContainerView *)self config];
  selectionStyle = [config selectionStyle];

  return selectionStyle;
}

- (void)setSelectionStyle:(int64_t)style
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setSelectionStyle:style];
}

- (void)setOverlayComposited:(BOOL)composited
{
  compositedCopy = composited;
  self->_overlayComposited = composited;
  config = [(_UIStackedImageContainerView *)self config];
  v6 = config;
  v5 = 1.0;
  if (compositedCopy)
  {
    v5 = 0.0;
  }

  [config setOverlayDepth:v5];
}

- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect
{
  valuesCopy = values;
  v6 = [valuesCopy objectForKey:@"focusDirectionX"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [valuesCopy objectForKey:@"focusDirectionY"];

  [v9 doubleValue];
  v11 = v10;

  [(VUIStackedImageView *)self setFocusDirection:v8, v11];
  return 1;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  selectedCopy = selected;
  coordinatorCopy = coordinator;
  v8 = [(_UIStackedImageContainerView *)self controlState]& 0xFFFFFFFFFFFFFFF7;
  v9 = 8;
  if (!selectedCopy)
  {
    v9 = 0;
  }

  [(VUIStackedImageView *)self setControlState:v8 | v9 animated:animatedCopy focusAnimationCoordinator:coordinatorCopy];
}

- (void)setControlState:(unint64_t)state animated:(BOOL)animated focusAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = VUIStackedImageView;
  coordinatorCopy = coordinator;
  [(_UIStackedImageContainerView *)&v10 setControlState:state animated:animatedCopy focusAnimationCoordinator:coordinatorCopy];
  v9 = [(_UIStackedImageContainerView *)self imageOverlayView:v10.receiver];
  [v9 vui_setSelected:(state >> 3) & 1 animated:animatedCopy withAnimationCoordinator:coordinatorCopy];
}

- (void)setPressed:(BOOL)pressed
{
  v3.receiver = self;
  v3.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v3 setPressed:pressed];
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

- (void)setFocusDirection:(CGPoint)direction
{
  v3.receiver = self;
  v3.super_class = VUIStackedImageView;
  [(_UIStackedImageContainerView *)&v3 setFocusDirection:direction.x, direction.y];
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  if (size.width == 0.0 || (height = size.height, size.height == 0.0))
  {
    [(VUIStackedImageView *)self stackSize];
    width = v6;
    height = v7;
  }

  else
  {
    width = size.width;
  }

  v8 = objc_opt_class();
  config = [(_UIStackedImageContainerView *)self config];
  [config scaleSizeIncrease];
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

- (void)animateWithAuxiliarySelectionState:(BOOL)state animations:(id)animations
{
  animationsCopy = animations;
  if (animationsCopy)
  {
    v10 = animationsCopy;
    v7 = MEMORY[0x277D75D18];
    config = [(_UIStackedImageContainerView *)self config];
    v9 = config;
    if (state)
    {
      [config layerSelectionDuration];
    }

    else
    {
      [config layerUnselectionDuration];
    }

    [v7 animateWithDuration:327684 delay:v10 options:0 animations:? completion:?];

    animationsCopy = v10;
  }
}

- (id)_newImageConfiguration
{
  newStandardConfiguration = [MEMORY[0x277D76278] newStandardConfiguration];
  [newStandardConfiguration setMaximumParallaxImages:6];
  [newStandardConfiguration setRadiosityStrength:0.0];
  return newStandardConfiguration;
}

- (void)_loadImage
{
  v3 = objc_opt_new();
  uiLayerStack = self->_uiLayerStack;
  self->_uiLayerStack = v3;

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack setName:uUIDString];

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

    cGImage = [(UIImage *)staticImage CGImage];
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
    v32[1] = cGImage;
    v31 = v7;
    v32[2] = *&width;
    v32[3] = *&height;
    v21 = MEMORY[0x2743B7C30](v30);
    [(UIImage *)self->_staticImage size];
    if (v18 == v23 && v20 == v22 || !+[VUICoreUtilities canHandleDecodingOnRenderThread])
    {
      (v21)[2](v21, cGImage);
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
      v29 = cGImage;
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

- (void)_updateLayerStack:(id)stack withImage:(CGImage *)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15[1] = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  [stackCopy setFlattenedImage:image];
  v9 = CGImageGetWidth(image);
  v10 = CGImageGetHeight(image);
  if (v9 / v10 != width / height)
  {
    v11 = fmin(width / v9, height / v10);
    width = floor(v11 * v9);
    height = floor(v11 * v10);
    [stackCopy setSize:{width, height}];
  }

  if (image && (v12 = objc_opt_new(), [MEMORY[0x277D755B8] imageWithCGImage:image], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setImageObj:", v13), v13, objc_msgSend(v12, "setImage:", image), objc_msgSend(v12, "setName:", @"0"), objc_msgSend(v12, "setOpacity:", 1.0), objc_msgSend(v12, "setFrame:", 0.0, 0.0, width, height), v12))
  {
    v15[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [stackCopy setLayers:v14];
  }

  else
  {
    [stackCopy setLayers:MEMORY[0x277CBEBF8]];
  }
}

- (void)_commitLayerStack:(id)stack
{
  stackCopy = stack;
  disableActions = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  uiLayerStack = self->_uiLayerStack;
  self->_uiLayerStack = stackCopy;
  v7 = stackCopy;

  [(_UIStackedImageContainerView *)self setConstructedStackImage:v7];
  [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
  [(VUIStackedImageView *)self _updateImageSamplingOverlays];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"VUIStackedImageViewImageDidUpdateNotification" object:self];
}

- (void)_updateImageSamplingOverlays
{
  imageOverlayView = [(_UIStackedImageContainerView *)self imageOverlayView];
  v3 = [imageOverlayView conformsToProtocol:&unk_288115808];
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
    flattenedImage = [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack flattenedImage];
    v6 = objc_opt_class();
    [(VUIStackedImageNamedLayerStack *)self->_uiLayerStack size];
    v8 = v7;
    v10 = v9;
    config = [(_UIStackedImageContainerView *)self config];
    [config scaleSizeIncrease];
    [v6 _scaledSizeForSize:-[VUIStackedImageView selectionStyle](self focusSizeIncrease:"selectionStyle") selectionStyle:{v8, v10, v12}];
    v14 = v13;

    v15 = [MEMORY[0x277D755B8] imageWithCGImage:flattenedImage scale:0 orientation:CGImageGetWidth(flattenedImage) / v14];
    [imageOverlayView sampleWithImage:v15];
  }
}

- (void)_setShadowOpacity:(double)opacity
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setDefaultFocusedShadowOpacity:opacity];
  [config setDefaultHighlightedShadowOpacity:opacity];
  [config setDefaultUnfocusedShadowOpacity:opacity];
}

- (void)_setShadowRadius:(double)radius
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setDefaultFocusedShadowRadius:radius];
  [config setDefaultHighlightedShadowRadius:radius];
  [config setDefaultUnfocusedShadowRadius:radius];
}

- (void)_setShadowVerticalOffset:(double)offset
{
  config = [(_UIStackedImageContainerView *)self config];
  [config setDefaultFocusedShadowVerticalOffset:offset];
  [config setDefaultHighlightedShadowVerticalOffset:offset];
  [config setDefaultUnfocusedShadowVerticalOffset:offset];
}

- (void)_resetShadowSettings
{
  _newImageConfiguration = [(VUIStackedImageView *)self _newImageConfiguration];
  config = [(_UIStackedImageContainerView *)self config];
  [_newImageConfiguration defaultFocusedShadowOpacity];
  [config setDefaultFocusedShadowOpacity:?];
  [_newImageConfiguration defaultHighlightedShadowOpacity];
  [config setDefaultHighlightedShadowOpacity:?];
  [_newImageConfiguration defaultUnfocusedShadowOpacity];
  [config setDefaultUnfocusedShadowOpacity:?];
  [_newImageConfiguration defaultFocusedShadowRadius];
  [config setDefaultFocusedShadowRadius:?];
  [_newImageConfiguration defaultHighlightedShadowRadius];
  [config setDefaultHighlightedShadowRadius:?];
  [_newImageConfiguration defaultUnfocusedShadowRadius];
  [config setDefaultUnfocusedShadowRadius:?];
  [_newImageConfiguration defaultFocusedShadowVerticalOffset];
  [config setDefaultFocusedShadowVerticalOffset:?];
  [_newImageConfiguration defaultHighlightedShadowVerticalOffset];
  [config setDefaultHighlightedShadowVerticalOffset:?];
  [_newImageConfiguration defaultUnfocusedShadowVerticalOffset];
  [config setDefaultUnfocusedShadowVerticalOffset:?];
}

- (void)_updateStackedImageConfiguration
{
  config = [(_UIStackedImageContainerView *)self config];
  if (!config)
  {
    config = [(VUIStackedImageView *)self _newImageConfiguration];
    [(VUIStackedImageView *)self _backupStackedImageConfiguration:?];
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    repositionUnselectionDuration = 0.0;
    [config setLayerSelectionDuration:0.0];
    [config setLayerUnselectionDuration:0.0];
    [config setShadowSelectionDuration:0.0];
    [config setShadowUnselectionDuration:0.0];
  }

  else
  {
    [config setLayerSelectionDuration:self->_layerSelectionDuration];
    [config setLayerUnselectionDuration:self->_layerUnselectionDuration];
    [config setShadowSelectionDuration:self->_shadowSelectionDuration];
    [config setShadowUnselectionDuration:self->_shadowUnselectionDuration];
    repositionUnselectionDuration = self->_repositionUnselectionDuration;
  }

  [config setRepositionUnselectionDuration:repositionUnselectionDuration];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    [config setFocusCursorEnabled:1];
  }

  [(_UIStackedImageContainerView *)self setConfig:config];
}

- (void)_backupStackedImageConfiguration:(id)configuration
{
  if (configuration)
  {
    configurationCopy = configuration;
    [configurationCopy layerSelectionDuration];
    self->_layerSelectionDuration = v5;
    [configurationCopy layerUnselectionDuration];
    self->_layerUnselectionDuration = v6;
    [configurationCopy shadowSelectionDuration];
    self->_shadowSelectionDuration = v7;
    [configurationCopy shadowUnselectionDuration];
    self->_shadowUnselectionDuration = v8;
    [configurationCopy repositionUnselectionDuration];
    v10 = v9;

    self->_repositionUnselectionDuration = v10;
  }
}

+ (CGSize)_scaledSizeForSize:(CGSize)size selectionStyle:(int64_t)style
{
  height = size.height;
  width = size.width;
  newStandardConfiguration = [MEMORY[0x277D76278] newStandardConfiguration];
  [newStandardConfiguration scaleSizeIncrease];
  [self _scaledSizeForSize:style focusSizeIncrease:width selectionStyle:{height, v9}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)_scaledSizeForSize:(CGSize)size focusSizeIncrease:(double)increase selectionStyle:(int64_t)style
{
  [MEMORY[0x277D76278] _scaledSizeForSize:style focusSizeIncrease:size.width selectionStyle:{size.height, increase}];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  v4 = [(_UIStackedImageContainerView *)self config:animation];
  focusAnimationConfiguration = [v4 focusAnimationConfiguration];

  return focusAnimationConfiguration;
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