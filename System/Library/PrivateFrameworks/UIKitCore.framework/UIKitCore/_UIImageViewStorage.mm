@interface _UIImageViewStorage
+ (id)storageForImageView:(id)view;
- (id)extendedStorage;
- (id)simpleStorage;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category;
- (void)setAnimationDuration:(double)duration;
- (void)setAnimationImages:(id)images;
- (void)setAnimationPresetManager:(id)manager;
- (void)setAnimationRepeatCount:(int64_t)count;
- (void)setCIRenderer:(id)renderer;
- (void)setDefaultRenderingMode:(int64_t)mode;
- (void)setDrawMode:(unsigned int)mode;
- (void)setEnqueueingLoad:(BOOL)load;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedAnimationImages:(id)images;
- (void)setHighlightedImage:(id)image;
- (void)setImage:(id)image;
- (void)setImageBeingSetByLoader:(id)loader;
- (void)setImageContentGuide:(id)guide;
- (void)setImageLoader:(id)loader;
- (void)setLayouts:(id)layouts;
- (void)setLoadingDelegate:(id)delegate;
- (void)setMasksTemplateImages:(BOOL)images;
- (void)setOverridingSymbolConfiguration:(id)configuration;
- (void)setPlaceholderView:(id)view;
- (void)setPreferredSymbolConfiguration:(id)configuration;
- (void)setPreferredSymbolVariant:(id)variant;
- (void)setResolvedHighlightedImage:(id)image;
- (void)setResolvedImage:(id)image;
- (void)setStartingLoad:(BOOL)load;
- (void)setStoppingLoad:(BOOL)load;
- (void)setSystemIconAppearanceTraitRegistration:(id)registration;
@end

@implementation _UIImageViewStorage

- (id)simpleStorage
{
  p_storage = &self->_storage;
  v3 = self->_storage;
  if (!*p_storage)
  {
    v4 = objc_opt_new();

    objc_storeStrong(p_storage, v4);
    v3 = v4;
  }

  return v3;
}

- (id)extendedStorage
{
  p_storage = &self->_storage;
  v4 = self->_storage;
  if (*p_storage)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_self();

    if (v5 != v6)
    {
      goto LABEL_6;
    }

    simpleStorage = [(_UIImageViewStorage *)self simpleStorage];
    v8 = [_UIImageViewExtendedStorage storageFromSimpleStorage:simpleStorage];

    v4 = simpleStorage;
  }

  else
  {
    v8 = objc_opt_new();
  }

  objc_storeStrong(p_storage, v8);
  v4 = v8;
LABEL_6:

  return v4;
}

+ (id)storageForImageView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  objc_storeWeak(v4 + 1, viewCopy);

  return v4;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(_UIImageViewStorage *)self image];

  if (image != imageCopy)
  {
    simpleStorage = [(_UIImageViewStorage *)self simpleStorage];
    [simpleStorage setImage:imageCopy];
  }
}

- (void)setResolvedImage:(id)image
{
  imageCopy = image;
  resolvedImage = [(_UIImageViewStorage *)self resolvedImage];

  if (resolvedImage != imageCopy)
  {
    simpleStorage = [(_UIImageViewStorage *)self simpleStorage];
    [simpleStorage setResolvedImage:imageCopy];
  }
}

- (void)setHighlightedImage:(id)image
{
  imageCopy = image;
  highlightedImage = [(_UIImageViewStorage *)self highlightedImage];

  if (highlightedImage != imageCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setHighlightedImage:imageCopy];
  }
}

- (void)setResolvedHighlightedImage:(id)image
{
  imageCopy = image;
  resolvedHighlightedImage = [(_UIImageViewStorage *)self resolvedHighlightedImage];

  if (resolvedHighlightedImage != imageCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setResolvedHighlightedImage:imageCopy];
  }
}

- (void)setPreferredSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  preferredSymbolConfiguration = [(_UIImageViewStorage *)self preferredSymbolConfiguration];

  if (preferredSymbolConfiguration != configurationCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setPreferredSymbolConfiguration:configurationCopy];
  }
}

- (void)setOverridingSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  overridingSymbolConfiguration = [(_UIImageViewStorage *)self overridingSymbolConfiguration];

  if (overridingSymbolConfiguration != configurationCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setOverridingSymbolConfiguration:configurationCopy];
  }
}

- (void)setPreferredSymbolVariant:(id)variant
{
  variantCopy = variant;
  preferredSymbolVariant = [(_UIImageViewStorage *)self preferredSymbolVariant];

  if (preferredSymbolVariant != variantCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setPreferredSymbolVariant:variantCopy];
  }
}

- (void)setAnimationImages:(id)images
{
  imagesCopy = images;
  animationImages = [(_UIImageViewStorage *)self animationImages];

  if (animationImages != imagesCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setAnimationImages:imagesCopy];
  }
}

- (void)setHighlightedAnimationImages:(id)images
{
  imagesCopy = images;
  highlightedAnimationImages = [(_UIImageViewStorage *)self highlightedAnimationImages];

  if (highlightedAnimationImages != imagesCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setHighlightedAnimationImages:imagesCopy];
  }
}

- (void)setAnimationDuration:(double)duration
{
  [(_UIImageViewStorage *)self animationDuration];
  if (v5 != duration)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setAnimationDuration:duration];
  }
}

- (void)setAnimationRepeatCount:(int64_t)count
{
  if ([(_UIImageViewStorage *)self animationRepeatCount]!= count)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setAnimationRepeatCount:count];
  }
}

- (void)setDefaultRenderingMode:(int64_t)mode
{
  if ([(_UIImageViewStorage *)self defaultRenderingMode]!= mode)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setDefaultRenderingMode:mode];
  }
}

- (void)setSystemIconAppearanceTraitRegistration:(id)registration
{
  registrationCopy = registration;
  systemIconAppearanceTraitRegistration = [(_UIImageViewStorage *)self systemIconAppearanceTraitRegistration];

  if (systemIconAppearanceTraitRegistration != registrationCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setSystemIconAppearanceTraitRegistration:registrationCopy];
  }
}

- (void)setCIRenderer:(id)renderer
{
  rendererCopy = renderer;
  cIRenderer = [(_UIImageViewStorage *)self CIRenderer];

  if (cIRenderer != rendererCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setCIRenderer:rendererCopy];
  }
}

- (void)setImageContentGuide:(id)guide
{
  guideCopy = guide;
  imageContentGuide = [(_UIImageViewStorage *)self imageContentGuide];

  if (imageContentGuide != guideCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setImageContentGuide:guideCopy];
  }
}

- (void)setAnimationPresetManager:(id)manager
{
  managerCopy = manager;
  animationPresetManager = [(_UIImageViewStorage *)self animationPresetManager];

  if (animationPresetManager != managerCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setAnimationPresetManager:managerCopy];
  }
}

- (void)setLayouts:(id)layouts
{
  layoutsCopy = layouts;
  layouts = [(_UIImageViewStorage *)self layouts];

  if (layouts != layoutsCopy)
  {
    simpleStorage = [(_UIImageViewStorage *)self simpleStorage];
    [simpleStorage setLayouts:layoutsCopy];
  }
}

- (void)setDrawMode:(unsigned int)mode
{
  v3 = *&mode;
  if ([(_UIImageViewStorage *)self drawMode]!= mode)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setDrawMode:v3];
  }
}

- (void)setImageLoader:(id)loader
{
  loaderCopy = loader;
  imageLoader = [(_UIImageViewStorage *)self imageLoader];

  if (imageLoader != loaderCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setImageLoader:loaderCopy];
  }
}

- (void)setLoadingDelegate:(id)delegate
{
  delegateCopy = delegate;
  loadingDelegate = [(_UIImageViewStorage *)self loadingDelegate];

  if (loadingDelegate != delegateCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setLoadingDelegate:delegateCopy];
  }
}

- (void)setImageBeingSetByLoader:(id)loader
{
  loaderCopy = loader;
  imageBeingSetByLoader = [(_UIImageViewStorage *)self imageBeingSetByLoader];

  if (imageBeingSetByLoader != loaderCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setImageBeingSetByLoader:loaderCopy];
  }
}

- (void)setPlaceholderView:(id)view
{
  viewCopy = view;
  placeholderView = [(_UIImageViewStorage *)self placeholderView];

  if (placeholderView != viewCopy)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setPlaceholderView:viewCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(_UIImageViewStorage *)self isHighlighted]!= highlighted)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setHighlighted:highlightedCopy];
  }
}

- (void)setMasksTemplateImages:(BOOL)images
{
  imagesCopy = images;
  if ([(_UIImageViewStorage *)self masksTemplateImages]!= images)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setMasksTemplateImages:imagesCopy];
  }
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  if ([(_UIImageViewStorage *)self adjustsImageSizeForAccessibilityContentSizeCategory]!= category)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setAdjustsImageSizeForAccessibilityContentSizeCategory:categoryCopy];
  }
}

- (void)setStartingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewStorage *)self isStartingLoad]!= load)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setStartingLoad:loadCopy];
  }
}

- (void)setEnqueueingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewStorage *)self isEnqueueingLoad]!= load)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setEnqueueingLoad:loadCopy];
  }
}

- (void)setStoppingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewStorage *)self isStoppingLoad]!= load)
  {
    extendedStorage = [(_UIImageViewStorage *)self extendedStorage];
    [extendedStorage setStoppingLoad:loadCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if ([(_UIImageViewStorage *)self animationRepeatCount:stop]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained _cleanUpForStopAnimating];
  }
}

@end