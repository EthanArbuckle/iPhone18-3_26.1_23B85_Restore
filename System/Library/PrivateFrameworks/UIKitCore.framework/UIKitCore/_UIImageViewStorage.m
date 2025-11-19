@interface _UIImageViewStorage
+ (id)storageForImageView:(id)a3;
- (id)extendedStorage;
- (id)simpleStorage;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3;
- (void)setAnimationDuration:(double)a3;
- (void)setAnimationImages:(id)a3;
- (void)setAnimationPresetManager:(id)a3;
- (void)setAnimationRepeatCount:(int64_t)a3;
- (void)setCIRenderer:(id)a3;
- (void)setDefaultRenderingMode:(int64_t)a3;
- (void)setDrawMode:(unsigned int)a3;
- (void)setEnqueueingLoad:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedAnimationImages:(id)a3;
- (void)setHighlightedImage:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageBeingSetByLoader:(id)a3;
- (void)setImageContentGuide:(id)a3;
- (void)setImageLoader:(id)a3;
- (void)setLayouts:(id)a3;
- (void)setLoadingDelegate:(id)a3;
- (void)setMasksTemplateImages:(BOOL)a3;
- (void)setOverridingSymbolConfiguration:(id)a3;
- (void)setPlaceholderView:(id)a3;
- (void)setPreferredSymbolConfiguration:(id)a3;
- (void)setPreferredSymbolVariant:(id)a3;
- (void)setResolvedHighlightedImage:(id)a3;
- (void)setResolvedImage:(id)a3;
- (void)setStartingLoad:(BOOL)a3;
- (void)setStoppingLoad:(BOOL)a3;
- (void)setSystemIconAppearanceTraitRegistration:(id)a3;
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

    v7 = [(_UIImageViewStorage *)self simpleStorage];
    v8 = [_UIImageViewExtendedStorage storageFromSimpleStorage:v7];

    v4 = v7;
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

+ (id)storageForImageView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_storeWeak(v4 + 1, v3);

  return v4;
}

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self image];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self simpleStorage];
    [v5 setImage:v6];
  }
}

- (void)setResolvedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self resolvedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self simpleStorage];
    [v5 setResolvedImage:v6];
  }
}

- (void)setHighlightedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self highlightedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setHighlightedImage:v6];
  }
}

- (void)setResolvedHighlightedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self resolvedHighlightedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setResolvedHighlightedImage:v6];
  }
}

- (void)setPreferredSymbolConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self preferredSymbolConfiguration];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setPreferredSymbolConfiguration:v6];
  }
}

- (void)setOverridingSymbolConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self overridingSymbolConfiguration];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setOverridingSymbolConfiguration:v6];
  }
}

- (void)setPreferredSymbolVariant:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self preferredSymbolVariant];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setPreferredSymbolVariant:v6];
  }
}

- (void)setAnimationImages:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self animationImages];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setAnimationImages:v6];
  }
}

- (void)setHighlightedAnimationImages:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self highlightedAnimationImages];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setHighlightedAnimationImages:v6];
  }
}

- (void)setAnimationDuration:(double)a3
{
  [(_UIImageViewStorage *)self animationDuration];
  if (v5 != a3)
  {
    v6 = [(_UIImageViewStorage *)self extendedStorage];
    [v6 setAnimationDuration:a3];
  }
}

- (void)setAnimationRepeatCount:(int64_t)a3
{
  if ([(_UIImageViewStorage *)self animationRepeatCount]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setAnimationRepeatCount:a3];
  }
}

- (void)setDefaultRenderingMode:(int64_t)a3
{
  if ([(_UIImageViewStorage *)self defaultRenderingMode]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setDefaultRenderingMode:a3];
  }
}

- (void)setSystemIconAppearanceTraitRegistration:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self systemIconAppearanceTraitRegistration];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setSystemIconAppearanceTraitRegistration:v6];
  }
}

- (void)setCIRenderer:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self CIRenderer];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setCIRenderer:v6];
  }
}

- (void)setImageContentGuide:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self imageContentGuide];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setImageContentGuide:v6];
  }
}

- (void)setAnimationPresetManager:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self animationPresetManager];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setAnimationPresetManager:v6];
  }
}

- (void)setLayouts:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self layouts];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self simpleStorage];
    [v5 setLayouts:v6];
  }
}

- (void)setDrawMode:(unsigned int)a3
{
  v3 = *&a3;
  if ([(_UIImageViewStorage *)self drawMode]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setDrawMode:v3];
  }
}

- (void)setImageLoader:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self imageLoader];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setImageLoader:v6];
  }
}

- (void)setLoadingDelegate:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self loadingDelegate];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setLoadingDelegate:v6];
  }
}

- (void)setImageBeingSetByLoader:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self imageBeingSetByLoader];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setImageBeingSetByLoader:v6];
  }
}

- (void)setPlaceholderView:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewStorage *)self placeholderView];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setPlaceholderView:v6];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self isHighlighted]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setHighlighted:v3];
  }
}

- (void)setMasksTemplateImages:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self masksTemplateImages]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setMasksTemplateImages:v3];
  }
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self adjustsImageSizeForAccessibilityContentSizeCategory]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory:v3];
  }
}

- (void)setStartingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self isStartingLoad]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setStartingLoad:v3];
  }
}

- (void)setEnqueueingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self isEnqueueingLoad]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setEnqueueingLoad:v3];
  }
}

- (void)setStoppingLoad:(BOOL)a3
{
  v3 = a3;
  if ([(_UIImageViewStorage *)self isStoppingLoad]!= a3)
  {
    v5 = [(_UIImageViewStorage *)self extendedStorage];
    [v5 setStoppingLoad:v3];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if ([(_UIImageViewStorage *)self animationRepeatCount:a3]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained _cleanUpForStopAnimating];
  }
}

@end