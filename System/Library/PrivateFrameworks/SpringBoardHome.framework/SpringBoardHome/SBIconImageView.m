@interface SBIconImageView
+ (BSAnimationSettings)iconUpdateAnimationSettings;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)areLightAngleUpdatesAllowed;
- (BOOL)isDisplayingImageLayer;
- (BOOL)isDisplayingRealImageContents;
- (BOOL)needsContentsLayerUpdate;
- (BOOL)shouldBoostGlassWhitePoint;
- (BOOL)shouldDisplayImageLayer;
- (BOOL)shouldForceBitmapImages;
- (BOOL)updateImageContentsFromCacheAnimated:(BOOL)a3;
- (CALayer)alternateContentsLayer;
- (CGRect)visibleBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ICRIconLayer)ICRIconLayer;
- (SBHIconImageAppearance)displayedImageAppearance;
- (SBHIconImageAppearance)effectiveIconImageAppearance;
- (SBHIconImageAppearance)requestedImageAppearance;
- (SBHIconImageStyleConfiguration)effectiveIconImageStyleConfiguration;
- (SBIconImageInfo)iconImageInfo;
- (SBIconImageView)initWithFrame:(CGRect)a3;
- (SBIconView)iconView;
- (id)contentsImage;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)desiredImageIdentity;
- (id)disableImageUpdatesForReason:(id)a3;
- (id)displayedImageIdentity;
- (id)effectiveTraitCollection;
- (id)retrieveNewContentsLayerViewWithOptions:(unint64_t)a3;
- (id)succinctDescription;
- (id)traitCollectionForIconImageAppearance;
- (int64_t)imageLoadPriority;
- (unint64_t)iconImageOptions;
- (unint64_t)imageCacheOptions;
- (unint64_t)imageCacheRetrievalOptions;
- (void)_clearProgressView;
- (void)_updateForegroundViewMask;
- (void)_updateIconEffect;
- (void)_updateOverlayAlpha;
- (void)applyGlass;
- (void)applyImageLayerView:(id)a3 animated:(BOOL)a4 shouldClearDisplayedImage:(BOOL)a5;
- (void)applyOrRemoveGlassIfNecessary;
- (void)beginLightAngleUpdates;
- (void)beginLightAngleUpdatesIfAllowed;
- (void)clearCachedImages;
- (void)clearDisplayedICRIconLayerAfterDelayIfContentHidden;
- (void)clearDisplayedImage;
- (void)clearIconImageInfo;
- (void)configureIconUpdateAnimation:(id)a3;
- (void)dealloc;
- (void)didAddSublayer;
- (void)didAnimateIconImageInfoChange;
- (void)didAnimateListLayoutProviderChange:(id)a3 context:(id)a4;
- (void)didChangeContents:(id)a3 forIcon:(id)a4;
- (void)didEndAsynchronousImageLoadForIcon:(id)a3 imageIdentity:(id)a4;
- (void)effectiveIconImageAppearanceDidChange;
- (void)iconImageCache:(id)a3 didUpdateImageForIcon:(id)a4 imageAppearance:(id)a5;
- (void)iconImageDidUpdate:(id)a3;
- (void)iconImageInfoDidChange;
- (void)iconLayerViewContentTypeDidChange:(id)a3;
- (void)invalidateImageUpdatesAssertion:(id)a3;
- (void)layoutSubviews;
- (void)loadContentsImageAnimated:(BOOL)a3;
- (void)loadContentsImageFromCache:(id)a3 animated:(BOOL)a4;
- (void)loadContentsImageFromIconAnimated:(BOOL)a3;
- (void)lowPowerModeDidChange:(id)a3;
- (void)pauseLightAngleUpdates;
- (void)pauseLightAngleUpdatesForIconLayer:(id)a3;
- (void)prepareForReuse;
- (void)progressViewCanBeRemoved:(id)a3;
- (void)returnIconLayerToIconIfPossible:(id)a3;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)setBrightness:(double)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setGlassHidden:(BOOL)a3;
- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5;
- (void)setIconImageCache:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setJittering:(BOOL)a3;
- (void)setOverlayAlpha:(double)a3;
- (void)setOverrideIconImageAppearance:(id)a3;
- (void)setOverrideIconImageStyleConfiguration:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPrefersFlatImageLayers:(BOOL)a3;
- (void)setProgressState:(int64_t)a3 paused:(BOOL)a4 percent:(double)a5 animated:(BOOL)a6;
- (void)setShowsSquareCorners:(BOOL)a3;
- (void)updateBackgroundAppearanceAnimated:(BOOL)a3;
- (void)updateExistingIconLayerAnimated:(BOOL)a3;
- (void)updateImageAfterBackgroundDimmingChange;
- (void)updateImageAfterTraitChange;
- (void)updateImageAnimated:(BOOL)a3;
- (void)updateImageAnimatedIfShowingRealContentImage;
- (void)updateImageContentsAnimated:(BOOL)a3;
- (void)updateImageContentsWithImage:(id)a3 imageAppearance:(id)a4 animated:(BOOL)a5 shouldClearDisplayedLayer:(BOOL)a6;
- (void)updateImageSublayerAnimated:(BOOL)a3;
- (void)updateOngoingAnimationState;
- (void)willBeginAsynchronousImageLoadForIcon:(id)a3 imageIdentity:(id)a4;
@end

@implementation SBIconImageView

- (void)pauseLightAngleUpdates
{
  v3 = [(SBIconImageView *)self ICRIconLayer];
  if (v3)
  {
    [(SBIconImageView *)self pauseLightAngleUpdatesForIconLayer:v3];
  }

  MEMORY[0x1EEE66BB8]();
}

- (ICRIconLayer)ICRIconLayer
{
  v2 = [(SBIconImageView *)self iconLayerView];
  v3 = [v2 iconContentLayer];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateOngoingAnimationState
{
  [(SBIconProgressView *)self->_progressView setCanAnimate:[(SBIconImageView *)self canAnimateProgress]];
  if ([(SBIconImageView *)self areLightAngleUpdatesAllowed])
  {

    [(SBIconImageView *)self beginLightAngleUpdates];
  }

  else
  {

    [(SBIconImageView *)self pauseLightAngleUpdates];
  }
}

- (void)_updateOverlayAlpha
{
  multiplyFilter = self->_multiplyFilter;
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:self->_brightness * self->_overlayAlpha alpha:1.0];
  v3 = v5;
  v4 = [v5 CGColor];
  [(CAFilter *)multiplyFilter setValue:v4 forKey:*MEMORY[0x1E6979AA0]];
}

- (void)clearDisplayedImage
{
  [(SBIconImageView *)self updateImageContentsWithImage:0 imageAppearance:0 animated:0 shouldClearDisplayedLayer:0];

  [(SBIconImageView *)self applyImageLayerView:0 animated:0 shouldClearDisplayedImage:0];
}

- (SBIconImageInfo)iconImageInfo
{
  v3 = self;
  if (LOBYTE(self[14].size.height) != 1)
  {
    v4 = [(SBIconImageInfo *)self iconView];
    v5 = [(SBIconImageInfo *)v3 iconImageCache];
    v6 = [(SBIconImageInfo *)v3 listLayoutProvider];
    v7 = [(SBIconImageInfo *)v3 location];
    v8 = [v6 layoutForIconLocation:v7];

    v9 = v4;
    if (v4 || (v9 = v5) != 0 || (v9 = v8) != 0)
    {
      [v9 iconImageInfo];
    }
  }

  return self;
}

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (void)beginLightAngleUpdates
{
  v5 = [(SBIconImageView *)self icon];
  v3 = [(SBIconImageView *)self ICRIconLayer];
  if (v5 && v3)
  {
    v4 = +[SBHLightSourceManager sharedManager];
    [v4 addLayer:v3 inView:self];
  }
}

- (id)displayedImageIdentity
{
  v3 = [(SBIconImageView *)self iconLayerView];
  v4 = [v3 iconImageIdentity];
  if (!v4)
  {
    v5 = [(SBIconImageView *)self displayedImage];
    v4 = [v5 sbh_iconImageIdentity];
  }

  return v4;
}

- (BOOL)isDisplayingRealImageContents
{
  v3 = [(SBIconImageView *)self iconLayerView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isDisplayingRealIconContent];
  }

  else
  {
    v6 = [(SBIconImageView *)self displayedImageIdentity];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)needsContentsLayerUpdate
{
  v3 = [(SBIconImageView *)self iconForImage];
  if (v3)
  {
    v4 = [(SBIconImageView *)self contentsLayerView];
    v5 = [(SBIconImageView *)self iconImageOptions];
    if (v5 == [v4 iconImageOptions])
    {
      v6 = [(SBIconImageView *)self desiredImageIdentity];
      v7 = [(SBIconImageView *)self requestedImageIdentity];
      if (BSEqualObjects())
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v9 = [(SBIconImageView *)self displayedImageIdentity];
        if (BSEqualObjects())
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          v10 = [v6 imageAppearance];
          if (v7 && (v11 = [v7 imageGeneration], v11 == objc_msgSend(v6, "imageGeneration")))
          {
            v12 = [v10 appearanceType];
            v13 = [v7 imageAppearance];
            if (v12 == [v13 appearanceType])
            {
              v8 = [v10 hasTintColor] ^ 1;
            }

            else
            {
              LOBYTE(v8) = 1;
            }
          }

          else
          {
            LOBYTE(v8) = 1;
          }
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SBHIconImageAppearance)effectiveIconImageAppearance
{
  v3 = [(SBIconImageView *)self overrideIconImageAppearance];
  v4 = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  v5 = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v5 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];

  return v6;
}

- (id)effectiveTraitCollection
{
  v3 = [(SBIconImageView *)self effectiveIconImageStyleConfiguration];
  v4 = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v5 = [v4 sbh_traitCollectionWithIconImageStyleConfiguration:v3];

  return v5;
}

- (CGRect)visibleBounds
{
  [(SBIconImageView *)self iconImageInfo];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CALayer)alternateContentsLayer
{
  if ([(SBIconImageView *)self isDisplayingImageLayer])
  {
    v3 = [(SBIconImageView *)self contentsLayerView];
    v4 = [v3 iconContentLayer];
  }

  else
  {
    v4 = [(SBIconImageView *)self layer];
  }

  return v4;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SBIconImageView;
  [(SBIconImageView *)&v23 layoutSubviews];
  [(SBIconImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_effectView setFrame:?];
  v20 = v6;
  v21 = v4;
  [(SBIconProgressView *)self->_progressView setFrame:v4, v6, v8, v10];
  v11 = [(SBIconImageView *)self contentsLayerView];
  [v11 bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v16 = 1.0;
  v17 = 1.0;
  if (CGRectGetWidth(v24) > 0.0)
  {
    v25.origin.y = v20;
    v25.origin.x = v21;
    v25.size.width = v8;
    v25.size.height = v10;
    v18 = CGRectGetWidth(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v17 = v18 / CGRectGetWidth(v26);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectGetHeight(v27) > 0.0)
  {
    v28.origin.y = v20;
    v28.origin.x = v21;
    v28.size.width = v8;
    v28.size.height = v10;
    v19 = CGRectGetHeight(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v16 = v19 / CGRectGetHeight(v29);
  }

  CGAffineTransformMakeScale(&v22, v17, v16);
  [v11 setTransform:&v22];
  UIRectGetCenter();
  [v11 setCenter:?];
}

- (void)updateImageAfterTraitChange
{
  v3 = [(SBIconImageView *)self iconForImage];
  if (v3)
  {
    v7 = v3;
    v4 = [(SBIconImageView *)self displayedImageAppearance];
    v5 = [(SBIconImageView *)self requestedImageAppearance];
    v6 = [(SBIconImageView *)self effectiveIconImageAppearance];
    if ((BSEqualObjects() & 1) == 0 && (BSEqualObjects() & 1) == 0)
    {
      if ([(SBIconImageView *)self contentVisibility]== 2)
      {
        [(SBIconImageView *)self setDelayedImageUpdateDueToContentVisibility:1];
      }

      else
      {
        [(SBIconImageView *)self effectiveIconImageAppearanceDidChange];
      }
    }

    v3 = v7;
  }
}

- (SBHIconImageAppearance)displayedImageAppearance
{
  v2 = [(SBIconImageView *)self displayedImageIdentity];
  v3 = [v2 imageAppearance];

  return v3;
}

- (SBHIconImageAppearance)requestedImageAppearance
{
  v2 = [(SBIconImageView *)self requestedImageIdentity];
  v3 = [v2 imageAppearance];

  return v3;
}

- (void)didAddSublayer
{
  if (self->_progressView)
  {
    [(SBIconImageView *)self bringSubviewToFront:?];
  }

  if (self->_effectView)
  {

    [(SBIconImageView *)self bringSubviewToFront:?];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];

  [(SBIcon *)self->_icon removeObserver:self];
  [(SBIconImageView *)self pauseLightAngleUpdates];
  v4.receiver = self;
  v4.super_class = SBIconImageView;
  [(SBIconImageView *)&v4 dealloc];
}

- (void)effectiveIconImageAppearanceDidChange
{
  v3 = [(SBIconImageView *)self isDisplayingRealImageContents];
  [(SBIconImageView *)self updateImageAnimated:v3];

  [(SBIconImageView *)self updateBackgroundAppearanceAnimated:v3];
}

- (void)prepareForReuse
{
  v3 = [(SBIconImageView *)self cacheRequestCancellation];
  [v3 cancel];

  [(SBIconImageView *)self setCacheRequestCancellation:0];
  [(SBIconImageView *)self setRequestedImageIdentity:0];
  [(SBIconImageView *)self setIcon:0 location:@"SBIconLocationRoot" animated:0];
  [(SBIconImageView *)self setListLayoutProvider:0];
  [(SBIconImageView *)self setBrightness:1.0];
  [(SBIconImageView *)self setShowsSquareCorners:0];
  [(SBIconImageView *)self setPaused:0];
  [(SBIconImageView *)self setContentVisibility:0];
  [(SBIconImageView *)self setJittering:0];
  [(SBIconImageView *)self setPrefersFlatImageLayers:0];
  -[SBIconImageView setImageLoadingBehavior:](self, "setImageLoadingBehavior:", [objc_opt_class() defaultImageLoadingBehavior]);
  [(SBIconImageView *)self setOverrideIconImageAppearance:0];
  [(SBIconImageView *)self setOverrideIconImageStyleConfiguration:0];
  [(SBIconImageView *)self setIconImageCache:0];
  [(SBIconImageView *)self setOverlayAlpha:1.0];
  [(SBIconImageView *)self clearIconImageInfo];
  [(SBIconImageView *)self _clearProgressView];
  [(SBIconImageView *)self updateOngoingAnimationState];
  [(UIView *)self sbh_removeGlass];
  [(SBIconImageView *)self setBackdropGroupName:0];
  [(SBIconImageView *)self setGlassHidden:0];
  self->_allowsGlassGrouping = 1;
  [(SBIconImageView *)self _removeAllAnimations:0];
  [(SBIconImageView *)self _removeAllRetargetableAnimations:0];
  imageUpdateDisableAssertions = self->_imageUpdateDisableAssertions;
  self->_imageUpdateDisableAssertions = 0;
}

- (void)_clearProgressView
{
  [(SBIconProgressView *)self->_progressView setDelegate:0];
  [(SBIconProgressView *)self->_progressView removeFromSuperview];
  progressView = self->_progressView;
  self->_progressView = 0;
}

- (id)contentsImage
{
  if ([(SBIconImageView *)self isDisplayingRealImageContents])
  {
    v3 = [(SBIconImageView *)self displayedImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)imageCacheRetrievalOptions
{
  if ([(SBIconImageView *)self showsSquareCorners])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (SBIconImageView)initWithFrame:(CGRect)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SBIconImageView;
  v3 = [(SBIconImageView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBIconImageView *)v3 setUserInteractionEnabled:0];
    objc_storeStrong(&v4->_location, @"SBIconLocationRoot");
    v4->_overlayAlpha = 1.0;
    v4->_allowsGlassGrouping = 1;
    v4->_imageLoadingBehavior = [objc_opt_class() defaultImageLoadingBehavior];
    v4->_brightness = 1.0;
    v5 = objc_opt_self();
    v27[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v7 = [(SBIconImageView *)v4 registerForTraitChanges:v6 withAction:sel_updateImageAfterTraitChange];

    v8 = objc_opt_self();
    v26 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v10 = [(SBIconImageView *)v4 registerForTraitChanges:v9 withAction:sel_updateImageAfterTraitChange];

    v11 = objc_opt_self();
    v25 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v13 = [(SBIconImageView *)v4 registerForTraitChanges:v12 withAction:sel_updateImageAfterTraitChange];

    v14 = objc_opt_self();
    v24 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v16 = [(SBIconImageView *)v4 registerForTraitChanges:v15 withAction:sel_updateImageAfterBackgroundDimmingChange];

    v17 = objc_opt_self();
    v23 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v19 = [(SBIconImageView *)v4 registerForTraitChanges:v18 withAction:sel__updateIconEffect];

    [(SBIconImageView *)v4 _updateIconEffect];
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v4 selector:sel_lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }

  return v4;
}

- (void)setIcon:(id)a3 location:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v9 = a4;
  icon = self->_icon;
  if (icon != v11)
  {
    if ([(SBIconImageView *)self isDisplayingRealImageContents])
    {
      [(SBIconImageView *)self clearDisplayedImage];
    }

    [(SBIcon *)self->_icon removeObserver:self];
    objc_storeStrong(&self->_icon, a3);
    [(SBIcon *)self->_icon addObserver:self];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [(SBIconImageView *)self setLocation:v9];
  }

  if (icon != v11)
  {
    [(SBIconImageView *)self updateImageAnimated:v5];
    [(SBIconImageView *)self updateBackgroundAppearanceAnimated:v5];
    [(SBIconImageView *)self sizeToFit];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  if (!self->_hasSetIconImageInfo || !SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    self->_iconImageInfo.size.width = v10;
    self->_iconImageInfo.size.height = v9;
    self->_iconImageInfo.scale = v8;
    self->_iconImageInfo.continuousCornerRadius = v7;
    self->_hasSetIconImageInfo = 1;
    [(SBIconImageView *)self updateImageAnimated:0];
    [(SBIconImageView *)self iconImageInfoDidChange];

    [(SBIconImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)clearIconImageInfo
{
  if (self->_hasSetIconImageInfo)
  {
    self->_hasSetIconImageInfo = 0;
    [(SBIconImageView *)self updateImageAnimated:0];
    [(SBIconImageView *)self _updateForegroundViewMask];

    [(SBIconImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)iconImageInfoDidChange
{
  [(SBIconImageView *)self iconImageInfo];
  v4 = v3;
  v6 = v5;
  v7 = [(SBIconImageView *)self iconView];

  if (!v7)
  {
    [(SBIconImageView *)self setBounds:0.0, 0.0, v4, v6];
    [(SBIconImageView *)self invalidateIntrinsicContentSize];
  }

  [(SBIconImageView *)self _updateForegroundViewMask];
}

- (void)didAnimateIconImageInfoChange
{
  [(SBIconImageView *)self setAnimatingIconImageInfoChange:0];

  [(SBIconImageView *)self updateImageAnimated:0];
}

- (void)didAnimateListLayoutProviderChange:(id)a3 context:(id)a4
{
  [(SBIconImageView *)self setAnimatingListLayoutProviderChange:0, a4];

  [(SBIconImageView *)self updateImageAnimated:0];
}

- (void)setIconImageCache:(id)a3
{
  v5 = a3;
  iconImageCache = self->_iconImageCache;
  if (iconImageCache != v5)
  {
    v7 = v5;
    [(SBHIconImageCache *)iconImageCache removeObserver:self];
    objc_storeStrong(&self->_iconImageCache, a3);
    [(SBHIconImageCache *)self->_iconImageCache addObserver:self];
    [(SBIconImageView *)self updateImageAnimated:0];
    [(SBIconImageView *)self iconImageInfoDidChange];
    iconImageCache = [(SBIconImageView *)self invalidateIntrinsicContentSize];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](iconImageCache, v5);
}

- (void)setBrightness:(double)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self->_brightness != a3)
  {
    self->_brightness = a3;
    multiplyFilter = self->_multiplyFilter;
    if (a3 >= 1.0)
    {
      if (multiplyFilter)
      {
        v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.brightness.inputColor"];
        v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
        [v9 setTimingFunction:v10];

        v11 = [(CAFilter *)self->_multiplyFilter valueForKey:*MEMORY[0x1E6979AA0]];
        [v9 setFromValue:v11];

        [v9 setFillMode:*MEMORY[0x1E69797E8]];
        [v9 setDuration:0.3];
        v12 = [(SBIconImageView *)self layer];
        v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
        [v12 setValue:objc_msgSend(v13 forKeyPath:{"CGColor"), @"filters.brightness.inputColor"}];

        v14 = [(SBIconImageView *)self layer];
        [v14 addAnimation:v9 forKey:@"filters.brightness.inputColor"];

        v15 = self->_multiplyFilter;
        self->_multiplyFilter = 0;
      }
    }

    else
    {
      if (!multiplyFilter)
      {
        v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
        v6 = self->_multiplyFilter;
        self->_multiplyFilter = v5;

        [(CAFilter *)self->_multiplyFilter setName:@"brightness"];
        v7 = [(SBIconImageView *)self layer];
        v16[0] = self->_multiplyFilter;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
        [v7 setFilters:v8];
      }

      [(SBIconImageView *)self _updateOverlayAlpha];
    }

    [(SBIconImageView *)self _updateOverlayAlpha];
  }
}

- (void)setOverlayAlpha:(double)a3
{
  if (self->_overlayAlpha != a3)
  {
    self->_overlayAlpha = a3;
    [(SBIconImageView *)self _updateOverlayAlpha];
  }
}

- (void)setProgressState:(int64_t)a3 paused:(BOOL)a4 percent:(double)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  progressView = self->_progressView;
  if (!a3 || progressView)
  {

    [SBIconProgressView setState:"setState:paused:fractionLoaded:animated:" paused:? fractionLoaded:? animated:?];
  }

  else
  {
    v12 = objc_alloc_init(SBIconProgressView);
    v13 = self->_progressView;
    self->_progressView = v12;

    [(SBIconProgressView *)self->_progressView setDelegate:self];
    v14 = [(SBIconProgressView *)self->_progressView layer];
    [v14 setAllowsEdgeAntialiasing:{-[SBIconImageView isJittering](self, "isJittering")}];

    v15 = self->_progressView;
    if (self->_effectView)
    {
      [(SBIconImageView *)self insertSubview:v15 belowSubview:?];
    }

    else
    {
      [(SBIconImageView *)self addSubview:v15];
    }

    [(SBIconImageView *)self _updateForegroundViewMask];
    v16 = [(SBIconImageView *)self isPaused]^ 1;
    [(SBIconProgressView *)self->_progressView setState:a3 paused:v8 fractionLoaded:v6 & v16 animated:a5];
    v17 = self->_progressView;

    [(SBIconProgressView *)v17 setCanAnimate:v16];
  }
}

- (void)progressViewCanBeRemoved:(id)a3
{
  if (self->_progressView == a3)
  {
    [(SBIconImageView *)self _clearProgressView];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(SBIconImageView *)self updateOngoingAnimationState];
  }
}

- (BOOL)areLightAngleUpdatesAllowed
{
  v3 = [(SBIconImageView *)self areOngoingAnimationsAllowed];
  if (v3)
  {
    v4 = [(SBIconImageView *)self contentVisibility];

    LOBYTE(v3) = SBHContentVisibilityIsVisible(v4);
  }

  return v3;
}

- (void)beginLightAngleUpdatesIfAllowed
{
  if ([(SBIconImageView *)self areLightAngleUpdatesAllowed])
  {

    [(SBIconImageView *)self beginLightAngleUpdates];
  }
}

- (void)pauseLightAngleUpdatesForIconLayer:(id)a3
{
  v3 = a3;
  v4 = +[SBHLightSourceManager sharedManager];
  [v4 removeLayer:v3];
}

- (void)setContentVisibility:(unint64_t)a3
{
  contentVisibility = self->_contentVisibility;
  if (contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    [(SBIconProgressView *)self->_progressView setCanAnimate:[(SBIconImageView *)self canAnimateProgress]];
    v6 = [(SBIconImageView *)self contentsLayerView];
    [v6 setContentVisibility:a3];

    [(SBIconImageView *)self updateOngoingAnimationState];
    if (a3 == 2)
    {
      v7 = [(SBIconImageView *)self ICRIconLayer];

      if (v7)
      {
        [(SBIconImageView *)self clearDisplayedICRIconLayerAfterDelayIfContentHidden];
      }

      [(SBIconImageView *)self delayedImageUpdateDueToContentVisibility];
    }

    else if ([(SBIconImageView *)self delayedImageUpdateDueToContentVisibility])
    {
      [(SBIconImageView *)self setDelayedImageUpdateDueToContentVisibility:0];
      v8 = [(SBIconImageView *)self isDisplayingRealImageContents];
      v9 = contentVisibility != 2 && v8;

      [(SBIconImageView *)self updateImageAnimated:v9];
    }
  }
}

- (void)setShowsSquareCorners:(BOOL)a3
{
  if (self->_showsSquareCorners != a3)
  {
    self->_showsSquareCorners = a3;
    [(SBIconImageView *)self updateImageAnimated:0];

    [(SBIconImageView *)self _updateForegroundViewMask];
  }
}

- (void)setPrefersFlatImageLayers:(BOOL)a3
{
  if (self->_prefersFlatImageLayers != a3)
  {
    self->_prefersFlatImageLayers = a3;
    [(SBIconImageView *)self updateImageAnimated:0];
  }
}

- (BOOL)shouldForceBitmapImages
{
  v3 = [(SBIconImageView *)self effectiveIconImageAppearance];
  if ([v3 hasGlass])
  {
    v4 = 0;
  }

  else if ([(SBIconImageView *)self prefersFlatImageLayers]|| [(SBIconImageView *)self showsSquareCorners])
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v4 = ([v5 isLowPowerModeEnabled] & 1) != 0 || (objc_msgSend(v5, "thermalState") & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  return v4;
}

- (void)setJittering:(BOOL)a3
{
  if (self->_jittering != a3)
  {
    v4 = a3;
    self->_jittering = a3;
    v6 = [(SBIconImageView *)self layer];
    [v6 setAllowsEdgeAntialiasing:v4];

    v7 = [(SBIconProgressView *)self->_progressView layer];
    [v7 setAllowsEdgeAntialiasing:v4];
  }
}

- (BOOL)shouldDisplayImageLayer
{
  if ([objc_opt_class() allowsImageLayer])
  {
    if ([(SBIconImageView *)self showsSquareCorners])
    {
      v3 = [(SBIconImageView *)self effectiveIconImageAppearance];
      v4 = [v3 hasGlass];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)isDisplayingImageLayer
{
  v2 = [(SBIconImageView *)self contentsLayerView];
  v3 = v2 != 0;

  return v3;
}

- (void)updateImageAnimatedIfShowingRealContentImage
{
  v3 = [(SBIconImageView *)self isDisplayingRealImageContents];

  [(SBIconImageView *)self updateImageAnimated:v3];
}

- (void)updateImageAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SBIconImageView *)self canUpdateImage])
  {
    ++self->_updateImageDepth;
    v5 = [(SBIconImageView *)self icon];

    if (v5)
    {
      if ([(SBIconImageView *)self shouldDisplayImageLayer])
      {
        [(SBIconImageView *)self updateImageSublayerAnimated:v3];
      }

      else
      {
        [(SBIconImageView *)self updateImageContentsAnimated:v3];
      }
    }

    else
    {
      [(SBIconImageView *)self clearDisplayedImage];
    }

    [(SBIconImageView *)self updateOngoingAnimationState];
    --self->_updateImageDepth;
  }
}

- (unint64_t)iconImageOptions
{
  v3 = [(SBIconImageView *)self showsSquareCorners]^ 1;
  if ([(SBIconImageView *)self shouldForceBitmapImages])
  {
    v3 |= 0x10uLL;
  }

  if ([(SBIconImageView *)self isImageLoadingBehaviorSynchronous])
  {
    return v3 | 0x20;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)imageCacheOptions
{
  if ([(SBIconImageView *)self showsSquareCorners])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)imageLoadPriority
{
  v2 = [(SBIconImageView *)self contentVisibility];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1BEE887C8[v2];
  }
}

- (id)traitCollectionForIconImageAppearance
{
  v3 = [(SBIconImageView *)self iconView];
  v4 = [(SBIconImageView *)self traitCollection];
  if ([v3 usesSceneUserInterfaceStyleForImage])
  {
    v5 = [(SBIconImageView *)self window];
    v6 = [v5 windowScene];

    v7 = [v6 traitCollection];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 userInterfaceStyle];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__SBIconImageView_traitCollectionForIconImageAppearance__block_invoke;
      v12[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
      v12[4] = v9;
      v10 = [v4 traitCollectionByModifyingTraits:v12];

      v4 = v10;
    }
  }

  return v4;
}

- (void)setOverrideIconImageAppearance:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    [(SBIconImageView *)self effectiveIconImageAppearanceDidChange];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    [(SBIconImageView *)self effectiveIconImageAppearanceDidChange];
  }
}

- (SBHIconImageStyleConfiguration)effectiveIconImageStyleConfiguration
{
  v3 = [(SBIconImageView *)self overrideIconImageAppearance];
  v4 = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  v5 = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v5 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];

  return v6;
}

- (id)desiredImageIdentity
{
  v3 = [(SBIconImageView *)self iconForImage];
  if (v3)
  {
    v4 = [(SBIconImageView *)self effectiveIconImageAppearance];
    [(SBIconImageView *)self iconImageInfo];
    v9 = [v3 iconImageIdentityWithIconImageInfo:v4 imageAppearance:-[SBIconImageView showsSquareCorners](self masked:{"showsSquareCorners") ^ 1, v5, v6, v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateImageContentsFromCacheAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageView *)self iconForImage];
  if (v5)
  {
    v6 = [(SBIconImageView *)self iconImageCache];
    v7 = [(SBIconImageView *)self effectiveIconImageAppearance];
    v8 = [v6 imageForIcon:v5 imageAppearance:v7 options:{-[SBIconImageView imageCacheRetrievalOptions](self, "imageCacheRetrievalOptions") | 4}];
    v9 = v8 != 0;
    if (v8)
    {
      [(SBIconImageView *)self updateImageContentsWithImage:v8 imageAppearance:v7 animated:v3];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadContentsImageAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageView *)self iconImageCache];
  v6 = v5;
  if (v5)
  {
    [(SBIconImageView *)self loadContentsImageFromCache:v5 animated:v3];
  }

  else
  {
    [(SBIconImageView *)self loadContentsImageFromIconAnimated:v3];
  }
}

- (void)loadContentsImageFromCache:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBIconImageView *)self iconForImage];
  if (v7)
  {
    v8 = [(SBIconImageView *)self desiredImageIdentity];
    v9 = [v8 imageAppearance];
    v10 = [(SBIconImageView *)self imageLoadingBehavior];
    v11 = [(SBIconImageView *)self requestedImageIdentity];
    v12 = BSEqualObjects();
    v13 = SBLogIconImageView();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        [SBIconImageView loadContentsImageFromCache:animated:];
      }
    }

    else
    {
      if (v14)
      {
        [SBIconImageView loadContentsImageFromCache:animated:];
      }

      if (v10 - 1 < 2)
      {
        [(SBIconImageView *)self willBeginAsynchronousImageLoadForIcon:v7 imageIdentity:v8];
        v15 = [v7 hasIconImage];
        if ([(SBIconImageView *)self isDisplayingRealImageContents])
        {
          v16 = SBLogIconImageView();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [SBIconImageView loadContentsImageFromCache:animated:];
          }
        }

        else
        {
          v16 = 0;
          if (v10 == 1 && v15)
          {
            v16 = [v6 cachingPlaceholderImageWithImageAppearance:v9 options:0];
          }

          v18 = SBLogIconImageView();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [SBIconImageView loadContentsImageFromCache:animated:];
          }

          [(SBIconImageView *)self updateImageContentsWithImage:v16 imageAppearance:v9 animated:v4];
        }

        v19 = [(SBIconImageView *)self imageCacheRetrievalOptions]| 4;
        v24 = [(SBIconImageView *)self imageCacheOptions];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke;
        v25[3] = &unk_1E8090D78;
        v25[4] = self;
        v26 = v8;
        v27 = v7;
        v28 = v6;
        v29 = v9;
        v30 = v19;
        v31 = v15;
        v32 = v4;
        v20 = [v28 cacheImageForIcon:v27 imageAppearance:v29 priority:3 reason:@"SBIconImageView loadContentsImage" options:v24 completionHandler:v25];
        v21 = [(SBIconImageView *)self cacheRequestCancellation];
        [v21 cancel];

        v22 = [v20 requestedImageIdentities];
        v23 = [v22 firstObject];

        [(SBIconImageView *)self setRequestedImageIdentity:v23];
        [(SBIconImageView *)self setCacheRequestCancellation:v20];

        goto LABEL_25;
      }

      if (v10)
      {
LABEL_25:

        goto LABEL_26;
      }

      v17 = SBLogIconImageView();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SBIconImageView loadContentsImageFromCache:animated:];
      }

      v13 = [v6 imageForIcon:v7 imageAppearance:v9 options:{-[SBIconImageView imageCacheRetrievalOptions](self, "imageCacheRetrievalOptions")}];
      [(SBIconImageView *)self updateImageContentsWithImage:v13 imageAppearance:v9 animated:v4];
    }

    goto LABEL_25;
  }

  v8 = SBLogIconImageView();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBIconImageView loadContentsImageFromCache:v8 animated:?];
  }

LABEL_26:
}

void __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 desiredImageIdentity];
  v6 = [*(a1 + 32) cacheRequestCancellation];
  v7 = [v6 identifier];
  v8 = [v4 requestIdentifier];
  v9 = BSEqualObjects();

  v10 = [v4 isFinished];
  v11 = BSEqualObjects();
  v12 = SBLogIconImageView();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 48);
    v21 = 138413058;
    v22 = v20;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    _os_log_debug_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEBUG, "cache load returned for %@, is current: %{BOOL}u, finished: %{BOOL}u, identities match: %{BOOL}u", &v21, 0x1Eu);
  }

  if (v9)
  {
    [*(a1 + 32) setCacheRequestCancellation:0];
  }

  if ((v10 & v11) != 1)
  {
    v13 = SBLogIconImageView();
    v16 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = *(a1 + 48);
      v21 = 138412290;
      v22 = v17;
      v18 = "discarding results of cache load for %@ because identities no longer match";
    }

    else
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v19 = *(a1 + 48);
      v21 = 138412290;
      v22 = v19;
      v18 = "discarding results of cache load for %@ because the load didn't finish";
    }

    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, v18, &v21, 0xCu);
    goto LABEL_21;
  }

  v13 = [*(a1 + 56) imageForIcon:*(a1 + 48) imageAppearance:*(a1 + 64) options:*(a1 + 72)];
  v14 = SBLogIconImageView();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke_cold_1((a1 + 48), v13, v14);
  }

  if (v13 || (*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) updateImageContentsWithImage:v13 imageAppearance:*(a1 + 64) animated:*(a1 + 81)];
  }

  else
  {
    v15 = SBLogIconImageView();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke_cold_2((a1 + 48), v15);
    }

    [*(a1 + 32) loadContentsImageFromIconAnimated:*(a1 + 81)];
  }

  [*(a1 + 32) setRequestedImageIdentity:0];
LABEL_21:

  [*(a1 + 32) didEndAsynchronousImageLoadForIcon:*(a1 + 48) imageIdentity:*(a1 + 40)];
}

- (void)loadContentsImageFromIconAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageView *)self iconForImage];
  if (v5)
  {
    v13 = v5;
    v6 = [(SBIconImageView *)self effectiveTraitCollection];
    v7 = [v6 sbh_iconImageAppearance];
    [(SBIconImageView *)self iconImageInfo];
    v12 = [v13 iconImageWithInfo:v6 traitCollection:-[SBIconImageView iconImageOptions](self options:{"iconImageOptions"), v8, v9, v10, v11}];
    [(SBIconImageView *)self updateImageContentsWithImage:v12 imageAppearance:v7 animated:v3];

    v5 = v13;
  }
}

- (void)updateImageContentsAnimated:(BOOL)a3
{
  v3 = a3;
  v7 = [(SBIconImageView *)self iconView];
  v5 = [v7 overrideImage];
  if (v5)
  {
    v6 = [(SBIconImageView *)self effectiveIconImageAppearance];
    [(SBIconImageView *)self updateImageContentsWithImage:v5 imageAppearance:v6 animated:v3];
  }

  else if (![(SBIconImageView *)self updateImageContentsFromCacheAnimated:v3])
  {
    [(SBIconImageView *)self loadContentsImageAnimated:v3];
  }
}

- (void)updateImageContentsWithImage:(id)a3 imageAppearance:(id)a4 animated:(BOOL)a5 shouldClearDisplayedLayer:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v19 = a3;
  v9 = [(SBIconImageView *)self displayedImage];
  if (v9 != v19)
  {
    v10 = [v19 CGImage];
    v11 = [(SBIconImageView *)self layer];
    v12 = v10;
    if (v7)
    {
      v13 = [v11 contents];
      if (v13 == v12)
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"contents"];
      [v14 setFromValue:v13];
      [v14 setToValue:v12];
      [(SBIconImageView *)self configureIconUpdateAnimation:v14];
      v15 = MEMORY[0x1E696AEC0];
      updateImageCount = self->_updateImageCount;
      self->_updateImageCount = updateImageCount + 1;
      v17 = [v15 stringWithFormat:@"SBIconImageViewContents:%u", updateImageCount];
      [v11 addAnimation:v14 forKey:v17];

      [v11 setContents:v12];
    }

    else
    {
      [v11 setContents:v12];
    }

    [(SBIconImageView *)self setDisplayedImage:v19];
    if (v6)
    {
      v18 = [(SBIconImageView *)self contentsLayerView];

      if (v18)
      {
        [(SBIconImageView *)self applyImageLayerView:0 animated:v7 shouldClearDisplayedImage:0];
      }
    }

    v13 = [(SBIconImageView *)self icon];
    [(SBIconImageView *)self didChangeContents:v12 forIcon:v13];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)configureIconUpdateAnimation:(id)a3
{
  v3 = a3;
  [v3 setDuration:0.3388];
  [v3 setMass:1.0];
  [v3 setStiffness:343.985];
  [v3 setDamping:37.0937];
  [v3 setInitialVelocity:0.0];
  [v3 setFillMode:*MEMORY[0x1E69797E8]];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [v3 setPreferredFrameRateRange:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
  [v3 setHighFrameRateReason:1114148];
}

+ (BSAnimationSettings)iconUpdateAnimationSettings
{
  v2 = objc_alloc_init(MEMORY[0x1E698E708]);
  [v2 setMass:1.0];
  [v2 setStiffness:343.985];
  [v2 setDamping:37.0937];
  [v2 setInitialVelocity:0.0];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [v2 setPreferredFrameRateRange:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
  [v2 setHighFrameRateReason:1114148];

  return v2;
}

- (void)updateImageSublayerAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(SBIconImageView *)self needsContentsLayerUpdate])
  {
    return;
  }

  v14 = [(SBIconImageView *)self iconForImage];
  v5 = [v14 uniqueIdentifier];
  v6 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v7 = [(SBIconImageView *)self desiredImageIdentity];
  v8 = [(SBIconImageView *)self iconImageOptions];
  v9 = [(SBIconImageView *)self iconLayerView];
  v10 = [v9 iconIdentifier];
  v11 = [v9 iconImageIdentity];
  if (![v10 isEqualToString:v5])
  {
    goto LABEL_8;
  }

  if (![v7 isEqualToIconImageIdentityExcludingImageGeneration:v11])
  {
    if ([v9 canUpdateIconTintColorFromImageIdentity:v7])
    {
      v12 = [v6 tintColor];
      [v9 setIconTintColor:v12];

      goto LABEL_9;
    }

LABEL_8:
    v13 = [(SBIconImageView *)self retrieveNewContentsLayerViewWithOptions:v8];
    [(SBIconImageView *)self applyImageLayerView:v13 animated:v3];

    goto LABEL_9;
  }

  [(SBIconImageView *)self updateExistingIconLayerAnimated:v3];
LABEL_9:
}

- (void)updateExistingIconLayerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageView *)self iconForImage];
  v6 = [(SBIconImageView *)self iconLayerView];
  v7 = [(SBIconImageView *)self effectiveTraitCollection];
  v8 = [(SBIconImageView *)self iconImageOptions];
  v9 = [(SBIconImageView *)self desiredImageIdentity];
  [(SBIconImageView *)self setRequestedImageIdentity:v9];
  v10 = [(SBIconImageView *)self ICRIconLayer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SBIconImageView_updateExistingIconLayerAnimated___block_invoke;
  v13[3] = &unk_1E808EF70;
  v13[4] = self;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [v5 updateIconLayerView:v6 traitCollection:v7 options:v8 animated:v3 completionHandler:v13];
}

void __51__SBIconImageView_updateExistingIconLayerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ICRIconLayer];
  v3 = *(a1 + 40);
  v6 = v2;
  if (v2 != v3)
  {
    if (v3)
    {
      [*(a1 + 32) pauseLightAngleUpdatesForIconLayer:?];
    }

    [*(a1 + 32) beginLightAngleUpdates];
  }

  v4 = [*(a1 + 32) requestedImageIdentity];
  v5 = BSEqualObjects();

  if (v5)
  {
    [*(a1 + 32) setRequestedImageIdentity:0];
  }
}

- (void)applyImageLayerView:(id)a3 animated:(BOOL)a4 shouldClearDisplayedImage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(SBIconImageView *)self contentsLayerView];
  [(SBIconImageView *)self iconImageInfo];
  v11 = v10;
  v13 = v12;
  [(SBIconImageView *)self pauseLightAngleUpdates];
  if (v8)
  {
    [v8 setContentVisibility:{-[SBIconImageView contentVisibility](self, "contentVisibility")}];
    [(SBIconImageView *)self bounds];
    [v8 setBounds:{0.0, 0.0, v11, v13}];
    UIRectGetCenter();
    [v8 setCenter:?];
    [(SBIconImageView *)self insertSubview:v8 atIndex:0];
  }

  if (v6)
  {
    v14 = +[SBIconImageView iconUpdateAnimationSettings];
    [v8 setAlpha:0.0];
    v15 = MEMORY[0x1E698E7D0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke;
    v25[3] = &unk_1E8088F18;
    v26 = v9;
    v27 = v8;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke_2;
    v22 = &unk_1E80893F0;
    v23 = v26;
    v24 = self;
    [v15 animateWithSettings:v14 actions:v25 completion:&v19];
  }

  else
  {
    [v9 removeFromSuperview];
    if (v9)
    {
      [(SBIconImageView *)self returnIconLayerToIconIfPossible:v9];
    }
  }

  [(SBIconImageView *)self setContentsLayerView:v8, v19, v20, v21, v22];
  [(SBIconImageView *)self updateOngoingAnimationState];
  if (v5)
  {
    v16 = [(SBIconImageView *)self displayedImage];

    if (v16)
    {
      [(SBIconImageView *)self updateImageContentsWithImage:0 imageAppearance:0 animated:v6 shouldClearDisplayedLayer:0];
    }
  }

  v17 = [(SBIconImageView *)self icon];
  v18 = [v8 iconContentLayer];
  [(SBIconImageView *)self didChangeContents:v18 forIcon:v17];
}

uint64_t __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) returnIconLayerToIconIfPossible:?];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 removeFromSuperview];
}

- (void)clearDisplayedICRIconLayerAfterDelayIfContentHidden
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 8000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__SBIconImageView_clearDisplayedICRIconLayerAfterDelayIfContentHidden__block_invoke;
  v3[3] = &unk_1E808C278;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __70__SBIconImageView_clearDisplayedICRIconLayerAfterDelayIfContentHidden__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained contentVisibility] == 2)
  {
    v1 = [WeakRetained ICRIconLayer];

    if (v1)
    {
      [WeakRetained clearDisplayedImage];
      [WeakRetained setDelayedImageUpdateDueToContentVisibility:1];
    }
  }
}

- (void)updateBackgroundAppearanceAnimated:(BOOL)a3
{
  if (a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__SBIconImageView_updateBackgroundAppearanceAnimated___block_invoke;
    v4[3] = &unk_1E8088C90;
    v4[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingSpringInteractive:0 animations:v4 completion:0];
  }

  else
  {

    [(SBIconImageView *)self applyOrRemoveGlassIfNecessary];
  }
}

- (void)applyOrRemoveGlassIfNecessary
{
  if ([(SBIconImageView *)self shouldHaveGlass])
  {

    [(SBIconImageView *)self applyGlass];
  }

  else
  {

    [(UIView *)self sbh_removeGlass];
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    v4 = a3;
    self->_allowsGlassGrouping = a3;
    v6 = [(SBIconImageView *)self contentsLayerView];
    [v6 setAllowsGlassGrouping:v4];

    [(SBIconImageView *)self applyOrRemoveGlassIfNecessary];
  }
}

- (void)setBackdropGroupName:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    v6 = [(SBIconImageView *)self contentsLayerView];
    [v6 setBackdropGroupName:v7];
  }
}

- (void)setGlassHidden:(BOOL)a3
{
  if (self->_glassHidden != a3)
  {
    v4 = a3;
    self->_glassHidden = a3;
    v5 = [(SBIconImageView *)self contentsLayerView];
    [v5 setGlassHidden:v4];
  }
}

- (void)applyGlass
{
  v5 = [(SBIconImageView *)self effectiveIconImageAppearance];
  v3 = [v5 tintColor];
  v4 = [(SBIconImageView *)self allowsGlassGrouping];
  if (v3)
  {
    [(UIView *)self sbh_applyAppIconGlassWithTintColor:v3 allowingGrouping:v4];
  }

  else
  {
    [(UIView *)self sbh_applyAppIconGlassWithGrouping:v4];
  }
}

- (BOOL)shouldBoostGlassWhitePoint
{
  v2 = [(SBIconImageView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  return v4 == 1;
}

- (void)updateImageAfterBackgroundDimmingChange
{
  v3 = [(SBIconImageView *)self contentsLayerView];
  [v3 setBoostsGlassWhitePoint:{-[SBIconImageView shouldBoostGlassWhitePoint](self, "shouldBoostGlassWhitePoint")}];
}

- (void)_updateIconEffect
{
  if ([(SBIconImageView *)self hasOpaqueImage])
  {
    [(UIView *)self->_effectView removeFromSuperview];
    effectView = self->_effectView;
    self->_effectView = 0;

    v4 = [(SBIconImageView *)self traitCollection];
    v9 = [v4 sbh_iconEffect];

    v5 = v9;
    if (v9)
    {
      v6 = [v9 makeNewEffectView];
      [(SBIconImageView *)self bounds];
      [(UIView *)v6 setFrame:?];
      v7 = self->_effectView;
      self->_effectView = v6;
      v8 = v6;

      [(SBIconImageView *)self addSubview:v8];
      [(SBIconImageView *)self _updateForegroundViewMask];
      v5 = v9;
    }
  }
}

- (id)disableImageUpdatesForReason:(id)a3
{
  v4 = a3;
  if (!self->_imageUpdateDisableAssertions)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    imageUpdateDisableAssertions = self->_imageUpdateDisableAssertions;
    self->_imageUpdateDisableAssertions = v5;
  }

  v7 = [[_SBIconImageViewDisableUpdatesAssertion alloc] initWithIconImageView:self reason:v4];
  [(NSHashTable *)self->_imageUpdateDisableAssertions addObject:v7];

  return v7;
}

- (void)invalidateImageUpdatesAssertion:(id)a3
{
  [(NSHashTable *)self->_imageUpdateDisableAssertions removeObject:a3];
  if (![(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {

    [(SBIconImageView *)self updateImageAnimated:0];
  }
}

- (void)_updateForegroundViewMask
{
  [(SBIconImageView *)self iconImageInfo];
  if (self->_showsSquareCorners)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  [(SBIconProgressView *)self->_progressView setIconImageInfo:?];
  effectView = self->_effectView;

  [(UIView *)effectView _setContinuousCornerRadius:v4];
}

- (void)clearCachedImages
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBIconImageView *)self iconImageCache];
  v4 = [(SBIconImageView *)self iconForImage];
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v3 purgeCachedImagesForIcons:v6];
  }
}

- (id)retrieveNewContentsLayerViewWithOptions:(unint64_t)a3
{
  v5 = [(SBIconImageView *)self iconForImage];
  if (v5)
  {
    v6 = [(SBIconImageView *)self effectiveTraitCollection];
    [(SBIconImageView *)self iconImageInfo];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(SBIconImageView *)self imageLoadingBehavior];
    v16 = [(SBIconImageView *)self imageLoadPriority];
    v17 = [(SBIconImageView *)self desiredImageIdentity];
    if (v15 - 1 >= 2)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = [v5 iconLayerViewWithInfo:v6 traitCollection:a3 options:v16 priority:{v8, v10, v12, v14}];
      }
    }

    else
    {
      [(SBIconImageView *)self willBeginAsynchronousImageLoadForIcon:v5 imageIdentity:v17];
      if (v15 == 2)
      {
        v18 = a3 | 4;
      }

      else
      {
        v18 = a3;
      }

      v19 = [v5 iconLayerViewWithInfo:v6 traitCollection:v18 options:v16 priority:{v8, v10, v12, v14}];
      [v19 addObserver:self];
      if ([v19 iconContentType] == 2)
      {
        v20 = [(SBIconImageView *)self icon];
        [(SBIconImageView *)self didEndAsynchronousImageLoadForIcon:v20 imageIdentity:v17];
      }
    }

    [v19 setAllowsGlassGrouping:{-[SBIconImageView allowsGlassGrouping](self, "allowsGlassGrouping")}];
    [v19 setBoostsGlassWhitePoint:{-[SBIconImageView shouldBoostGlassWhitePoint](self, "shouldBoostGlassWhitePoint")}];
    v21 = [(SBIconImageView *)self backdropGroupName];
    [v19 setBackdropGroupName:v21];

    [v19 setGlassHidden:{-[SBIconImageView isGlassHidden](self, "isGlassHidden")}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(SBIconImageView *)self iconView:a3.width];
  if (v4 || ([(SBIconImageView *)self iconImageCache], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (!self->_hasSetIconImageInfo)
  {
    v7 = [(SBIconImageView *)self contentsImage];
    [v7 size];
    v9 = v8;
    v11 = v10;

    v5 = v9;
    v6 = v11;
    goto LABEL_9;
  }

  [(SBIconImageView *)self iconImageInfo];
LABEL_9:
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)willBeginAsynchronousImageLoadForIcon:(id)a3 imageIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBIconImageView *)self iconView];
  [v8 iconImageViewWillBeginAsynchronousImageLoadForIcon:v7];

  [(SBIconImageView *)self setRequestedImageIdentity:v6];
}

- (void)didEndAsynchronousImageLoadForIcon:(id)a3 imageIdentity:(id)a4
{
  v16 = a4;
  v6 = a3;
  v7 = [(SBIconImageView *)self iconView];
  [v7 iconImageViewDidEndAsynchronousImageLoadForIcon:v6];

  v8 = [(SBIconImageView *)self requestedImageIdentity];
  v9 = BSEqualObjects();

  if (v9)
  {
    [(SBIconImageView *)self setRequestedImageIdentity:0];
    v10 = [v16 imageAppearance];
    if ([v10 hasTintColor])
    {
      v11 = [(SBIconImageView *)self desiredImageIdentity];
      v12 = [v11 imageAppearance];
      v13 = [v12 appearanceType];
      if (v13 == [v10 appearanceType] && (objc_msgSend(v12, "isEqual:", v10) & 1) == 0)
      {
        v14 = [(SBIconImageView *)self iconLayerView];
        v15 = [v12 tintColor];
        [v14 setIconTintColor:v15];
      }
    }
  }
}

- (void)didChangeContents:(id)a3 forIcon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBIconImageView *)self iconView];
  [v8 iconImageViewDidChangeContents:v7 forIcon:v6];
}

- (void)returnIconLayerToIconIfPossible:(id)a3
{
  v7 = a3;
  v4 = [(SBIconImageView *)self iconForImage];
  v5 = [v4 uniqueIdentifier];
  v6 = [v7 iconIdentifier];
  if (BSEqualObjects())
  {
    [v4 takeIconLayerIfDesired:v7];
  }
}

- (void)lowPowerModeDidChange:(id)a3
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if ((v4 & 1) == 0)
  {
    BSDispatchMain();
  }
}

- (void)iconImageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SBIconImageView *)self icon];

  if (v5 == v4)
  {
    if (![(SBIconImageView *)self isDisplayingImageLayer])
    {
      [(SBIconImageView *)self updateImageAnimated:1];
    }

    [(SBIconImageView *)self sizeToFit];
  }
}

- (void)iconImageCache:(id)a3 didUpdateImageForIcon:(id)a4 imageAppearance:(id)a5
{
  v16 = a5;
  v7 = a4;
  v8 = [(SBIconImageView *)self icon];
  v9 = [v7 isEqual:v8];

  if (v9 && ![(SBIconImageView *)self isUpdatingImage]&& ![(SBIconImageView *)self isDisplayingImageLayer])
  {
    v10 = [(SBIconImageView *)self displayedImageAppearance];
    if (!v10 || BSEqualObjects())
    {
      v11 = [(SBIconImageView *)self effectiveIconImageAppearance];
      if (!v11 || BSEqualObjects())
      {
        v12 = [(SBIconImageView *)self contentVisibility];
        [(SBIconImageView *)self alpha];
        v15 = v13 > 0.0 && v12 != 2;
        [(SBIconImageView *)self updateImageAnimated:v15];
        [(SBIconImageView *)self sizeToFit];
      }
    }
  }
}

- (void)iconLayerViewContentTypeDidChange:(id)a3
{
  v9 = a3;
  v4 = [(SBIconImageView *)self contentsLayerView];
  if (v4 == v9)
  {
    v5 = [v9 iconContentType];

    if (v5 != 2)
    {
      goto LABEL_7;
    }

    [(SBIconImageView *)self beginLightAngleUpdatesIfAllowed];
    v4 = [(SBIconImageView *)self icon];
    if ([(SBIconImageView *)self isImageLoadingBehaviorAsynchronous])
    {
      v6 = [v9 iconImageIdentity];
      [(SBIconImageView *)self didEndAsynchronousImageLoadForIcon:v4 imageIdentity:v6];
    }

    v7 = [(SBIconImageView *)self iconView];
    v8 = [v9 iconContentLayer];
    [v7 iconImageViewDidChangeContents:v8 forIcon:v4];
  }

LABEL_7:
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconImageView;
    v5 = [(SBIconImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconImageView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(SBIconImageView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  v6 = [(SBIconImageView *)self icon];
  v7 = [v4 appendObject:v6 withName:@"icon"];

  [(SBIconImageView *)self alpha];
  if (v8 < 1.0)
  {
    [(SBIconImageView *)self alpha];
    v9 = [v4 appendFloat:@"alpha" withName:?];
  }

  [(SBIconImageView *)self brightness];
  if (v10 < 1.0)
  {
    v11 = [v4 appendFloat:@"brightness" withName:?];
  }

  [(SBIconImageView *)self overlayAlpha];
  if (v12 < 1.0)
  {
    v13 = [v4 appendFloat:@"overlayAlpha" withName:?];
  }

  v14 = [v4 appendBool:-[SBIconImageView isPaused](self withName:{"isPaused"), @"isPaused"}];
  v15 = [v4 appendBool:-[SBIconImageView showsSquareCorners](self withName:{"showsSquareCorners"), @"showsSquareCorners"}];
  v16 = [v4 appendObject:self->_imageUpdateDisableAssertions withName:@"imageUpdateDisableAssertions" skipIfNil:1];
  v17 = [(SBIconImageView *)self overrideIconImageAppearance];
  v18 = [v4 appendObject:v17 withName:@"overrideIconImageAppearance" skipIfNil:1];

  v19 = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  v20 = [v4 appendObject:v19 withName:@"overrideIconImageStyleConfiguration" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconImageView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

void __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_1(&dword_1BEB18000, a2, a3, "cached image after load returned for %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke_cold_2(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [*a1 uniqueIdentifier];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Missing cached image for icon '%@' after caching should have completed", v4, 0xCu);
}

@end