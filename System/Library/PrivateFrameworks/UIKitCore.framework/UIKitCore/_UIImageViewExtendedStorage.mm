@interface _UIImageViewExtendedStorage
+ (id)storageFromSimpleStorage:(id)storage;
- (id)animationProperties;
- (id)highlightedImageProperties;
- (id)imageLoadingProperties;
- (id)uncommonProperties;
- (void)setAnimationDuration:(double)duration;
- (void)setAnimationImages:(id)images;
- (void)setAnimationPresetManager:(id)manager;
- (void)setAnimationRepeatCount:(int64_t)count;
- (void)setCIRenderer:(id)renderer;
- (void)setDefaultRenderingMode:(int64_t)mode;
- (void)setDrawMode:(unsigned int)mode;
- (void)setEnqueueingLoad:(BOOL)load;
- (void)setHighlightedAnimationImages:(id)images;
- (void)setHighlightedImage:(id)image;
- (void)setImageBeingSetByLoader:(id)loader;
- (void)setImageLoader:(id)loader;
- (void)setLoadingDelegate:(id)delegate;
- (void)setOverridingSymbolConfiguration:(id)configuration;
- (void)setPlaceholderView:(id)view;
- (void)setPreferredSymbolVariant:(id)variant;
- (void)setResolvedHighlightedImage:(id)image;
- (void)setStartingLoad:(BOOL)load;
- (void)setStoppingLoad:(BOOL)load;
- (void)setSystemIconAppearanceTraitRegistration:(id)registration;
@end

@implementation _UIImageViewExtendedStorage

- (id)uncommonProperties
{
  uncommonProperties = self->_uncommonProperties;
  if (!uncommonProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_uncommonProperties;
    self->_uncommonProperties = v4;

    uncommonProperties = self->_uncommonProperties;
  }

  return uncommonProperties;
}

- (id)animationProperties
{
  animationProperties = self->_animationProperties;
  if (!animationProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_animationProperties;
    self->_animationProperties = v4;

    animationProperties = self->_animationProperties;
  }

  return animationProperties;
}

+ (id)storageFromSimpleStorage:(id)storage
{
  storageCopy = storage;
  v4 = objc_opt_new();
  objc_storeStrong(v4 + 1, storageCopy[1]);

  return v4;
}

- (id)highlightedImageProperties
{
  highlightedImageProperties = self->_highlightedImageProperties;
  if (!highlightedImageProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_highlightedImageProperties;
    self->_highlightedImageProperties = v4;

    highlightedImageProperties = self->_highlightedImageProperties;
  }

  return highlightedImageProperties;
}

- (id)imageLoadingProperties
{
  imageLoadingProperties = self->_imageLoadingProperties;
  if (!imageLoadingProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_imageLoadingProperties;
    self->_imageLoadingProperties = v4;

    imageLoadingProperties = self->_imageLoadingProperties;
  }

  return imageLoadingProperties;
}

- (void)setHighlightedImage:(id)image
{
  imageCopy = image;
  highlightedImage = [(_UIImageViewExtendedStorage *)self highlightedImage];

  if (highlightedImage != imageCopy)
  {
    highlightedImageProperties = [(_UIImageViewExtendedStorage *)self highlightedImageProperties];
    [highlightedImageProperties setImage:imageCopy];
  }
}

- (void)setResolvedHighlightedImage:(id)image
{
  imageCopy = image;
  resolvedHighlightedImage = [(_UIImageViewExtendedStorage *)self resolvedHighlightedImage];

  if (resolvedHighlightedImage != imageCopy)
  {
    highlightedImageProperties = [(_UIImageViewExtendedStorage *)self highlightedImageProperties];
    [highlightedImageProperties setResolvedImage:imageCopy];
  }
}

- (void)setAnimationImages:(id)images
{
  imagesCopy = images;
  animationImages = [(_UIImageViewExtendedStorage *)self animationImages];

  if (animationImages != imagesCopy)
  {
    animationProperties = [(_UIImageViewExtendedStorage *)self animationProperties];
    [animationProperties setAnimationImages:imagesCopy];
  }
}

- (void)setHighlightedAnimationImages:(id)images
{
  imagesCopy = images;
  highlightedAnimationImages = [(_UIImageViewExtendedStorage *)self highlightedAnimationImages];

  if (highlightedAnimationImages != imagesCopy)
  {
    animationProperties = [(_UIImageViewExtendedStorage *)self animationProperties];
    [animationProperties setHighlightedAnimationImages:imagesCopy];
  }
}

- (void)setAnimationDuration:(double)duration
{
  [(_UIImageViewExtendedStorage *)self animationDuration];
  if (v5 != duration)
  {
    animationProperties = [(_UIImageViewExtendedStorage *)self animationProperties];
    [animationProperties setAnimationDuration:duration];
  }
}

- (void)setAnimationRepeatCount:(int64_t)count
{
  if ([(_UIImageViewExtendedStorage *)self animationRepeatCount]!= count)
  {
    animationProperties = [(_UIImageViewExtendedStorage *)self animationProperties];
    [animationProperties setAnimationRepeatCount:count];
  }
}

- (void)setOverridingSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  overridingSymbolConfiguration = [(_UIImageViewExtendedStorage *)self overridingSymbolConfiguration];

  if (overridingSymbolConfiguration != configurationCopy)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setOverridingSymbolConfiguration:configurationCopy];
  }
}

- (void)setPreferredSymbolVariant:(id)variant
{
  variantCopy = variant;
  preferredSymbolVariant = [(_UIImageViewExtendedStorage *)self preferredSymbolVariant];

  if (preferredSymbolVariant != variantCopy)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setPreferredSymbolVariant:variantCopy];
  }
}

- (void)setDefaultRenderingMode:(int64_t)mode
{
  if ([(_UIImageViewExtendedStorage *)self defaultRenderingMode]!= mode)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setDefaultRenderingMode:mode];
  }
}

- (void)setSystemIconAppearanceTraitRegistration:(id)registration
{
  registrationCopy = registration;
  systemIconAppearanceTraitRegistration = [(_UIImageViewExtendedStorage *)self systemIconAppearanceTraitRegistration];

  if (systemIconAppearanceTraitRegistration != registrationCopy)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setSystemIconAppearanceTraitRegistration:registrationCopy];
  }
}

- (void)setCIRenderer:(id)renderer
{
  rendererCopy = renderer;
  cIRenderer = [(_UIImageViewExtendedStorage *)self CIRenderer];

  if (cIRenderer != rendererCopy)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setCIRenderer:rendererCopy];
  }
}

- (void)setDrawMode:(unsigned int)mode
{
  v3 = *&mode;
  if ([(_UIImageViewExtendedStorage *)self drawMode]!= mode)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setDrawMode:v3];
  }
}

- (void)setAnimationPresetManager:(id)manager
{
  managerCopy = manager;
  animationPresetManager = [(_UIImageViewExtendedStorage *)self animationPresetManager];

  if (animationPresetManager != managerCopy)
  {
    uncommonProperties = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [uncommonProperties setAnimationPresetManager:managerCopy];
  }
}

- (void)setImageLoader:(id)loader
{
  loaderCopy = loader;
  imageLoader = [(_UIImageViewExtendedStorage *)self imageLoader];

  if (imageLoader != loaderCopy)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setImageLoader:loaderCopy];
  }
}

- (void)setLoadingDelegate:(id)delegate
{
  delegateCopy = delegate;
  loadingDelegate = [(_UIImageViewExtendedStorage *)self loadingDelegate];

  if (loadingDelegate != delegateCopy)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setLoadingDelegate:delegateCopy];
  }
}

- (void)setImageBeingSetByLoader:(id)loader
{
  loaderCopy = loader;
  imageBeingSetByLoader = [(_UIImageViewExtendedStorage *)self imageBeingSetByLoader];

  if (imageBeingSetByLoader != loaderCopy)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setImageBeingSetByLoader:loaderCopy];
  }
}

- (void)setPlaceholderView:(id)view
{
  viewCopy = view;
  placeholderView = [(_UIImageViewExtendedStorage *)self placeholderView];

  if (placeholderView != viewCopy)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setPlaceholderView:viewCopy];
  }
}

- (void)setStartingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewExtendedStorage *)self isStartingLoad]!= load)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setStartingLoad:loadCopy];
  }
}

- (void)setEnqueueingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewExtendedStorage *)self isEnqueueingLoad]!= load)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setEnqueueingLoad:loadCopy];
  }
}

- (void)setStoppingLoad:(BOOL)load
{
  loadCopy = load;
  if ([(_UIImageViewExtendedStorage *)self isStoppingLoad]!= load)
  {
    imageLoadingProperties = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [imageLoadingProperties setStoppingLoad:loadCopy];
  }
}

@end