@interface _UIImageViewExtendedStorage
+ (id)storageFromSimpleStorage:(id)a3;
- (id)animationProperties;
- (id)highlightedImageProperties;
- (id)imageLoadingProperties;
- (id)uncommonProperties;
- (void)setAnimationDuration:(double)a3;
- (void)setAnimationImages:(id)a3;
- (void)setAnimationPresetManager:(id)a3;
- (void)setAnimationRepeatCount:(int64_t)a3;
- (void)setCIRenderer:(id)a3;
- (void)setDefaultRenderingMode:(int64_t)a3;
- (void)setDrawMode:(unsigned int)a3;
- (void)setEnqueueingLoad:(BOOL)a3;
- (void)setHighlightedAnimationImages:(id)a3;
- (void)setHighlightedImage:(id)a3;
- (void)setImageBeingSetByLoader:(id)a3;
- (void)setImageLoader:(id)a3;
- (void)setLoadingDelegate:(id)a3;
- (void)setOverridingSymbolConfiguration:(id)a3;
- (void)setPlaceholderView:(id)a3;
- (void)setPreferredSymbolVariant:(id)a3;
- (void)setResolvedHighlightedImage:(id)a3;
- (void)setStartingLoad:(BOOL)a3;
- (void)setStoppingLoad:(BOOL)a3;
- (void)setSystemIconAppearanceTraitRegistration:(id)a3;
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

+ (id)storageFromSimpleStorage:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_storeStrong(v4 + 1, v3[1]);

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

- (void)setHighlightedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self highlightedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self highlightedImageProperties];
    [v5 setImage:v6];
  }
}

- (void)setResolvedHighlightedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self resolvedHighlightedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self highlightedImageProperties];
    [v5 setResolvedImage:v6];
  }
}

- (void)setAnimationImages:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self animationImages];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self animationProperties];
    [v5 setAnimationImages:v6];
  }
}

- (void)setHighlightedAnimationImages:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self highlightedAnimationImages];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self animationProperties];
    [v5 setHighlightedAnimationImages:v6];
  }
}

- (void)setAnimationDuration:(double)a3
{
  [(_UIImageViewExtendedStorage *)self animationDuration];
  if (v5 != a3)
  {
    v6 = [(_UIImageViewExtendedStorage *)self animationProperties];
    [v6 setAnimationDuration:a3];
  }
}

- (void)setAnimationRepeatCount:(int64_t)a3
{
  if ([(_UIImageViewExtendedStorage *)self animationRepeatCount]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self animationProperties];
    [v5 setAnimationRepeatCount:a3];
  }
}

- (void)setOverridingSymbolConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self overridingSymbolConfiguration];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setOverridingSymbolConfiguration:v6];
  }
}

- (void)setPreferredSymbolVariant:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self preferredSymbolVariant];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setPreferredSymbolVariant:v6];
  }
}

- (void)setDefaultRenderingMode:(int64_t)a3
{
  if ([(_UIImageViewExtendedStorage *)self defaultRenderingMode]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setDefaultRenderingMode:a3];
  }
}

- (void)setSystemIconAppearanceTraitRegistration:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self systemIconAppearanceTraitRegistration];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setSystemIconAppearanceTraitRegistration:v6];
  }
}

- (void)setCIRenderer:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self CIRenderer];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setCIRenderer:v6];
  }
}

- (void)setDrawMode:(unsigned int)a3
{
  v3 = *&a3;
  if ([(_UIImageViewExtendedStorage *)self drawMode]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setDrawMode:v3];
  }
}

- (void)setAnimationPresetManager:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self animationPresetManager];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self uncommonProperties];
    [v5 setAnimationPresetManager:v6];
  }
}

- (void)setImageLoader:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self imageLoader];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setImageLoader:v6];
  }
}

- (void)setLoadingDelegate:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self loadingDelegate];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setLoadingDelegate:v6];
  }
}

- (void)setImageBeingSetByLoader:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self imageBeingSetByLoader];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setImageBeingSetByLoader:v6];
  }
}

- (void)setPlaceholderView:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewExtendedStorage *)self placeholderView];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setPlaceholderView:v6];
  }
}

- (void)setStartingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewExtendedStorage *)self isStartingLoad]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setStartingLoad:v3];
  }
}

- (void)setEnqueueingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewExtendedStorage *)self isEnqueueingLoad]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setEnqueueingLoad:v3];
  }
}

- (void)setStoppingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewExtendedStorage *)self isStoppingLoad]!= a3)
  {
    v5 = [(_UIImageViewExtendedStorage *)self imageLoadingProperties];
    [v5 setStoppingLoad:v3];
  }
}

@end