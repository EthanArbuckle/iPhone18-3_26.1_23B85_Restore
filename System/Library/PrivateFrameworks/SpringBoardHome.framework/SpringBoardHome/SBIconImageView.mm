@interface SBIconImageView
+ (BSAnimationSettings)iconUpdateAnimationSettings;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)areLightAngleUpdatesAllowed;
- (BOOL)isDisplayingImageLayer;
- (BOOL)isDisplayingRealImageContents;
- (BOOL)needsContentsLayerUpdate;
- (BOOL)shouldBoostGlassWhitePoint;
- (BOOL)shouldDisplayImageLayer;
- (BOOL)shouldForceBitmapImages;
- (BOOL)updateImageContentsFromCacheAnimated:(BOOL)animated;
- (CALayer)alternateContentsLayer;
- (CGRect)visibleBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ICRIconLayer)ICRIconLayer;
- (SBHIconImageAppearance)displayedImageAppearance;
- (SBHIconImageAppearance)effectiveIconImageAppearance;
- (SBHIconImageAppearance)requestedImageAppearance;
- (SBHIconImageStyleConfiguration)effectiveIconImageStyleConfiguration;
- (SBIconImageInfo)iconImageInfo;
- (SBIconImageView)initWithFrame:(CGRect)frame;
- (SBIconView)iconView;
- (id)contentsImage;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)desiredImageIdentity;
- (id)disableImageUpdatesForReason:(id)reason;
- (id)displayedImageIdentity;
- (id)effectiveTraitCollection;
- (id)retrieveNewContentsLayerViewWithOptions:(unint64_t)options;
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
- (void)applyImageLayerView:(id)view animated:(BOOL)animated shouldClearDisplayedImage:(BOOL)image;
- (void)applyOrRemoveGlassIfNecessary;
- (void)beginLightAngleUpdates;
- (void)beginLightAngleUpdatesIfAllowed;
- (void)clearCachedImages;
- (void)clearDisplayedICRIconLayerAfterDelayIfContentHidden;
- (void)clearDisplayedImage;
- (void)clearIconImageInfo;
- (void)configureIconUpdateAnimation:(id)animation;
- (void)dealloc;
- (void)didAddSublayer;
- (void)didAnimateIconImageInfoChange;
- (void)didAnimateListLayoutProviderChange:(id)change context:(id)context;
- (void)didChangeContents:(id)contents forIcon:(id)icon;
- (void)didEndAsynchronousImageLoadForIcon:(id)icon imageIdentity:(id)identity;
- (void)effectiveIconImageAppearanceDidChange;
- (void)iconImageCache:(id)cache didUpdateImageForIcon:(id)icon imageAppearance:(id)appearance;
- (void)iconImageDidUpdate:(id)update;
- (void)iconImageInfoDidChange;
- (void)iconLayerViewContentTypeDidChange:(id)change;
- (void)invalidateImageUpdatesAssertion:(id)assertion;
- (void)layoutSubviews;
- (void)loadContentsImageAnimated:(BOOL)animated;
- (void)loadContentsImageFromCache:(id)cache animated:(BOOL)animated;
- (void)loadContentsImageFromIconAnimated:(BOOL)animated;
- (void)lowPowerModeDidChange:(id)change;
- (void)pauseLightAngleUpdates;
- (void)pauseLightAngleUpdatesForIconLayer:(id)layer;
- (void)prepareForReuse;
- (void)progressViewCanBeRemoved:(id)removed;
- (void)returnIconLayerToIconIfPossible:(id)possible;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setBackdropGroupName:(id)name;
- (void)setBrightness:(double)brightness;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setGlassHidden:(BOOL)hidden;
- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated;
- (void)setIconImageCache:(id)cache;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setJittering:(BOOL)jittering;
- (void)setOverlayAlpha:(double)alpha;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverrideIconImageStyleConfiguration:(id)configuration;
- (void)setPaused:(BOOL)paused;
- (void)setPrefersFlatImageLayers:(BOOL)layers;
- (void)setProgressState:(int64_t)state paused:(BOOL)paused percent:(double)percent animated:(BOOL)animated;
- (void)setShowsSquareCorners:(BOOL)corners;
- (void)updateBackgroundAppearanceAnimated:(BOOL)animated;
- (void)updateExistingIconLayerAnimated:(BOOL)animated;
- (void)updateImageAfterBackgroundDimmingChange;
- (void)updateImageAfterTraitChange;
- (void)updateImageAnimated:(BOOL)animated;
- (void)updateImageAnimatedIfShowingRealContentImage;
- (void)updateImageContentsAnimated:(BOOL)animated;
- (void)updateImageContentsWithImage:(id)image imageAppearance:(id)appearance animated:(BOOL)animated shouldClearDisplayedLayer:(BOOL)layer;
- (void)updateImageSublayerAnimated:(BOOL)animated;
- (void)updateOngoingAnimationState;
- (void)willBeginAsynchronousImageLoadForIcon:(id)icon imageIdentity:(id)identity;
@end

@implementation SBIconImageView

- (void)pauseLightAngleUpdates
{
  iCRIconLayer = [(SBIconImageView *)self ICRIconLayer];
  if (iCRIconLayer)
  {
    [(SBIconImageView *)self pauseLightAngleUpdatesForIconLayer:iCRIconLayer];
  }

  MEMORY[0x1EEE66BB8]();
}

- (ICRIconLayer)ICRIconLayer
{
  iconLayerView = [(SBIconImageView *)self iconLayerView];
  iconContentLayer = [iconLayerView iconContentLayer];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = iconContentLayer;
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
  cGColor = [v5 CGColor];
  [(CAFilter *)multiplyFilter setValue:cGColor forKey:*MEMORY[0x1E6979AA0]];
}

- (void)clearDisplayedImage
{
  [(SBIconImageView *)self updateImageContentsWithImage:0 imageAppearance:0 animated:0 shouldClearDisplayedLayer:0];

  [(SBIconImageView *)self applyImageLayerView:0 animated:0 shouldClearDisplayedImage:0];
}

- (SBIconImageInfo)iconImageInfo
{
  selfCopy = self;
  if (LOBYTE(self[14].size.height) != 1)
  {
    iconView = [(SBIconImageInfo *)self iconView];
    iconImageCache = [(SBIconImageInfo *)selfCopy iconImageCache];
    listLayoutProvider = [(SBIconImageInfo *)selfCopy listLayoutProvider];
    location = [(SBIconImageInfo *)selfCopy location];
    v8 = [listLayoutProvider layoutForIconLocation:location];

    v9 = iconView;
    if (iconView || (v9 = iconImageCache) != 0 || (v9 = v8) != 0)
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
  icon = [(SBIconImageView *)self icon];
  iCRIconLayer = [(SBIconImageView *)self ICRIconLayer];
  if (icon && iCRIconLayer)
  {
    v4 = +[SBHLightSourceManager sharedManager];
    [v4 addLayer:iCRIconLayer inView:self];
  }
}

- (id)displayedImageIdentity
{
  iconLayerView = [(SBIconImageView *)self iconLayerView];
  iconImageIdentity = [iconLayerView iconImageIdentity];
  if (!iconImageIdentity)
  {
    displayedImage = [(SBIconImageView *)self displayedImage];
    iconImageIdentity = [displayedImage sbh_iconImageIdentity];
  }

  return iconImageIdentity;
}

- (BOOL)isDisplayingRealImageContents
{
  iconLayerView = [(SBIconImageView *)self iconLayerView];
  v4 = iconLayerView;
  if (iconLayerView)
  {
    isDisplayingRealIconContent = [iconLayerView isDisplayingRealIconContent];
  }

  else
  {
    displayedImageIdentity = [(SBIconImageView *)self displayedImageIdentity];
    isDisplayingRealIconContent = displayedImageIdentity != 0;
  }

  return isDisplayingRealIconContent;
}

- (BOOL)needsContentsLayerUpdate
{
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    iconImageOptions = [(SBIconImageView *)self iconImageOptions];
    if (iconImageOptions == [contentsLayerView iconImageOptions])
    {
      desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
      requestedImageIdentity = [(SBIconImageView *)self requestedImageIdentity];
      if (BSEqualObjects())
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        displayedImageIdentity = [(SBIconImageView *)self displayedImageIdentity];
        if (BSEqualObjects())
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          imageAppearance = [desiredImageIdentity imageAppearance];
          if (requestedImageIdentity && (v11 = [requestedImageIdentity imageGeneration], v11 == objc_msgSend(desiredImageIdentity, "imageGeneration")))
          {
            appearanceType = [imageAppearance appearanceType];
            imageAppearance2 = [requestedImageIdentity imageAppearance];
            if (appearanceType == [imageAppearance2 appearanceType])
            {
              v8 = [imageAppearance hasTintColor] ^ 1;
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
  overrideIconImageAppearance = [(SBIconImageView *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  traitCollectionForIconImageAppearance = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollectionForIconImageAppearance overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v6;
}

- (id)effectiveTraitCollection
{
  effectiveIconImageStyleConfiguration = [(SBIconImageView *)self effectiveIconImageStyleConfiguration];
  traitCollectionForIconImageAppearance = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v5 = [traitCollectionForIconImageAppearance sbh_traitCollectionWithIconImageStyleConfiguration:effectiveIconImageStyleConfiguration];

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
    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    iconContentLayer = [contentsLayerView iconContentLayer];
  }

  else
  {
    iconContentLayer = [(SBIconImageView *)self layer];
  }

  return iconContentLayer;
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
  contentsLayerView = [(SBIconImageView *)self contentsLayerView];
  [contentsLayerView bounds];
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
  [contentsLayerView setTransform:&v22];
  UIRectGetCenter();
  [contentsLayerView setCenter:?];
}

- (void)updateImageAfterTraitChange
{
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    v7 = iconForImage;
    displayedImageAppearance = [(SBIconImageView *)self displayedImageAppearance];
    requestedImageAppearance = [(SBIconImageView *)self requestedImageAppearance];
    effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
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

    iconForImage = v7;
  }
}

- (SBHIconImageAppearance)displayedImageAppearance
{
  displayedImageIdentity = [(SBIconImageView *)self displayedImageIdentity];
  imageAppearance = [displayedImageIdentity imageAppearance];

  return imageAppearance;
}

- (SBHIconImageAppearance)requestedImageAppearance
{
  requestedImageIdentity = [(SBIconImageView *)self requestedImageIdentity];
  imageAppearance = [requestedImageIdentity imageAppearance];

  return imageAppearance;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];

  [(SBIcon *)self->_icon removeObserver:self];
  [(SBIconImageView *)self pauseLightAngleUpdates];
  v4.receiver = self;
  v4.super_class = SBIconImageView;
  [(SBIconImageView *)&v4 dealloc];
}

- (void)effectiveIconImageAppearanceDidChange
{
  isDisplayingRealImageContents = [(SBIconImageView *)self isDisplayingRealImageContents];
  [(SBIconImageView *)self updateImageAnimated:isDisplayingRealImageContents];

  [(SBIconImageView *)self updateBackgroundAppearanceAnimated:isDisplayingRealImageContents];
}

- (void)prepareForReuse
{
  cacheRequestCancellation = [(SBIconImageView *)self cacheRequestCancellation];
  [cacheRequestCancellation cancel];

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
    displayedImage = [(SBIconImageView *)self displayedImage];
  }

  else
  {
    displayedImage = 0;
  }

  return displayedImage;
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

- (SBIconImageView)initWithFrame:(CGRect)frame
{
  v27[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SBIconImageView;
  v3 = [(SBIconImageView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }

  return v4;
}

- (void)setIcon:(id)icon location:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  iconCopy = icon;
  locationCopy = location;
  icon = self->_icon;
  if (icon != iconCopy)
  {
    if ([(SBIconImageView *)self isDisplayingRealImageContents])
    {
      [(SBIconImageView *)self clearDisplayedImage];
    }

    [(SBIcon *)self->_icon removeObserver:self];
    objc_storeStrong(&self->_icon, icon);
    [(SBIcon *)self->_icon addObserver:self];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [(SBIconImageView *)self setLocation:locationCopy];
  }

  if (icon != iconCopy)
  {
    [(SBIconImageView *)self updateImageAnimated:animatedCopy];
    [(SBIconImageView *)self updateBackgroundAppearanceAnimated:animatedCopy];
    [(SBIconImageView *)self sizeToFit];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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
  iconView = [(SBIconImageView *)self iconView];

  if (!iconView)
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

- (void)didAnimateListLayoutProviderChange:(id)change context:(id)context
{
  [(SBIconImageView *)self setAnimatingListLayoutProviderChange:0, context];

  [(SBIconImageView *)self updateImageAnimated:0];
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  iconImageCache = self->_iconImageCache;
  if (iconImageCache != cacheCopy)
  {
    v7 = cacheCopy;
    [(SBHIconImageCache *)iconImageCache removeObserver:self];
    objc_storeStrong(&self->_iconImageCache, cache);
    [(SBHIconImageCache *)self->_iconImageCache addObserver:self];
    [(SBIconImageView *)self updateImageAnimated:0];
    [(SBIconImageView *)self iconImageInfoDidChange];
    iconImageCache = [(SBIconImageView *)self invalidateIntrinsicContentSize];
    cacheCopy = v7;
  }

  MEMORY[0x1EEE66BB8](iconImageCache, cacheCopy);
}

- (void)setBrightness:(double)brightness
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self->_brightness != brightness)
  {
    self->_brightness = brightness;
    multiplyFilter = self->_multiplyFilter;
    if (brightness >= 1.0)
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
        layer = [(SBIconImageView *)self layer];
        v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
        [layer setValue:objc_msgSend(v13 forKeyPath:{"CGColor"), @"filters.brightness.inputColor"}];

        layer2 = [(SBIconImageView *)self layer];
        [layer2 addAnimation:v9 forKey:@"filters.brightness.inputColor"];

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
        layer3 = [(SBIconImageView *)self layer];
        v16[0] = self->_multiplyFilter;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
        [layer3 setFilters:v8];
      }

      [(SBIconImageView *)self _updateOverlayAlpha];
    }

    [(SBIconImageView *)self _updateOverlayAlpha];
  }
}

- (void)setOverlayAlpha:(double)alpha
{
  if (self->_overlayAlpha != alpha)
  {
    self->_overlayAlpha = alpha;
    [(SBIconImageView *)self _updateOverlayAlpha];
  }
}

- (void)setProgressState:(int64_t)state paused:(BOOL)paused percent:(double)percent animated:(BOOL)animated
{
  animatedCopy = animated;
  pausedCopy = paused;
  progressView = self->_progressView;
  if (!state || progressView)
  {

    [SBIconProgressView setState:"setState:paused:fractionLoaded:animated:" paused:? fractionLoaded:? animated:?];
  }

  else
  {
    v12 = objc_alloc_init(SBIconProgressView);
    v13 = self->_progressView;
    self->_progressView = v12;

    [(SBIconProgressView *)self->_progressView setDelegate:self];
    layer = [(SBIconProgressView *)self->_progressView layer];
    [layer setAllowsEdgeAntialiasing:{-[SBIconImageView isJittering](self, "isJittering")}];

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
    [(SBIconProgressView *)self->_progressView setState:state paused:pausedCopy fractionLoaded:animatedCopy & v16 animated:percent];
    v17 = self->_progressView;

    [(SBIconProgressView *)v17 setCanAnimate:v16];
  }
}

- (void)progressViewCanBeRemoved:(id)removed
{
  if (self->_progressView == removed)
  {
    [(SBIconImageView *)self _clearProgressView];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(SBIconImageView *)self updateOngoingAnimationState];
  }
}

- (BOOL)areLightAngleUpdatesAllowed
{
  areOngoingAnimationsAllowed = [(SBIconImageView *)self areOngoingAnimationsAllowed];
  if (areOngoingAnimationsAllowed)
  {
    contentVisibility = [(SBIconImageView *)self contentVisibility];

    LOBYTE(areOngoingAnimationsAllowed) = SBHContentVisibilityIsVisible(contentVisibility);
  }

  return areOngoingAnimationsAllowed;
}

- (void)beginLightAngleUpdatesIfAllowed
{
  if ([(SBIconImageView *)self areLightAngleUpdatesAllowed])
  {

    [(SBIconImageView *)self beginLightAngleUpdates];
  }
}

- (void)pauseLightAngleUpdatesForIconLayer:(id)layer
{
  layerCopy = layer;
  v4 = +[SBHLightSourceManager sharedManager];
  [v4 removeLayer:layerCopy];
}

- (void)setContentVisibility:(unint64_t)visibility
{
  contentVisibility = self->_contentVisibility;
  if (contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    [(SBIconProgressView *)self->_progressView setCanAnimate:[(SBIconImageView *)self canAnimateProgress]];
    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    [contentsLayerView setContentVisibility:visibility];

    [(SBIconImageView *)self updateOngoingAnimationState];
    if (visibility == 2)
    {
      iCRIconLayer = [(SBIconImageView *)self ICRIconLayer];

      if (iCRIconLayer)
      {
        [(SBIconImageView *)self clearDisplayedICRIconLayerAfterDelayIfContentHidden];
      }

      [(SBIconImageView *)self delayedImageUpdateDueToContentVisibility];
    }

    else if ([(SBIconImageView *)self delayedImageUpdateDueToContentVisibility])
    {
      [(SBIconImageView *)self setDelayedImageUpdateDueToContentVisibility:0];
      isDisplayingRealImageContents = [(SBIconImageView *)self isDisplayingRealImageContents];
      v9 = contentVisibility != 2 && isDisplayingRealImageContents;

      [(SBIconImageView *)self updateImageAnimated:v9];
    }
  }
}

- (void)setShowsSquareCorners:(BOOL)corners
{
  if (self->_showsSquareCorners != corners)
  {
    self->_showsSquareCorners = corners;
    [(SBIconImageView *)self updateImageAnimated:0];

    [(SBIconImageView *)self _updateForegroundViewMask];
  }
}

- (void)setPrefersFlatImageLayers:(BOOL)layers
{
  if (self->_prefersFlatImageLayers != layers)
  {
    self->_prefersFlatImageLayers = layers;
    [(SBIconImageView *)self updateImageAnimated:0];
  }
}

- (BOOL)shouldForceBitmapImages
{
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  if ([effectiveIconImageAppearance hasGlass])
  {
    v4 = 0;
  }

  else if ([(SBIconImageView *)self prefersFlatImageLayers]|| [(SBIconImageView *)self showsSquareCorners])
  {
    v4 = 1;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v4 = ([processInfo isLowPowerModeEnabled] & 1) != 0 || (objc_msgSend(processInfo, "thermalState") & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  return v4;
}

- (void)setJittering:(BOOL)jittering
{
  if (self->_jittering != jittering)
  {
    jitteringCopy = jittering;
    self->_jittering = jittering;
    layer = [(SBIconImageView *)self layer];
    [layer setAllowsEdgeAntialiasing:jitteringCopy];

    layer2 = [(SBIconProgressView *)self->_progressView layer];
    [layer2 setAllowsEdgeAntialiasing:jitteringCopy];
  }
}

- (BOOL)shouldDisplayImageLayer
{
  if ([objc_opt_class() allowsImageLayer])
  {
    if ([(SBIconImageView *)self showsSquareCorners])
    {
      effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
      hasGlass = [effectiveIconImageAppearance hasGlass];
    }

    else
    {
      hasGlass = 1;
    }
  }

  else
  {
    hasGlass = 0;
  }

  return hasGlass & 1;
}

- (BOOL)isDisplayingImageLayer
{
  contentsLayerView = [(SBIconImageView *)self contentsLayerView];
  v3 = contentsLayerView != 0;

  return v3;
}

- (void)updateImageAnimatedIfShowingRealContentImage
{
  isDisplayingRealImageContents = [(SBIconImageView *)self isDisplayingRealImageContents];

  [(SBIconImageView *)self updateImageAnimated:isDisplayingRealImageContents];
}

- (void)updateImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBIconImageView *)self canUpdateImage])
  {
    ++self->_updateImageDepth;
    icon = [(SBIconImageView *)self icon];

    if (icon)
    {
      if ([(SBIconImageView *)self shouldDisplayImageLayer])
      {
        [(SBIconImageView *)self updateImageSublayerAnimated:animatedCopy];
      }

      else
      {
        [(SBIconImageView *)self updateImageContentsAnimated:animatedCopy];
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
  contentVisibility = [(SBIconImageView *)self contentVisibility];
  if (contentVisibility > 3)
  {
    return 0;
  }

  else
  {
    return qword_1BEE887C8[contentVisibility];
  }
}

- (id)traitCollectionForIconImageAppearance
{
  iconView = [(SBIconImageView *)self iconView];
  traitCollection = [(SBIconImageView *)self traitCollection];
  if ([iconView usesSceneUserInterfaceStyleForImage])
  {
    window = [(SBIconImageView *)self window];
    windowScene = [window windowScene];

    traitCollection2 = [windowScene traitCollection];
    v8 = traitCollection2;
    if (traitCollection2)
    {
      userInterfaceStyle = [traitCollection2 userInterfaceStyle];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__SBIconImageView_traitCollectionForIconImageAppearance__block_invoke;
      v12[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
      v12[4] = userInterfaceStyle;
      v10 = [traitCollection traitCollectionByModifyingTraits:v12];

      traitCollection = v10;
    }
  }

  return traitCollection;
}

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    [(SBIconImageView *)self effectiveIconImageAppearanceDidChange];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    [(SBIconImageView *)self effectiveIconImageAppearanceDidChange];
  }
}

- (SBHIconImageStyleConfiguration)effectiveIconImageStyleConfiguration
{
  overrideIconImageAppearance = [(SBIconImageView *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  traitCollectionForIconImageAppearance = [(SBIconImageView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollectionForIconImageAppearance overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v6;
}

- (id)desiredImageIdentity
{
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
    [(SBIconImageView *)self iconImageInfo];
    v9 = [iconForImage iconImageIdentityWithIconImageInfo:effectiveIconImageAppearance imageAppearance:-[SBIconImageView showsSquareCorners](self masked:{"showsSquareCorners") ^ 1, v5, v6, v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateImageContentsFromCacheAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    iconImageCache = [(SBIconImageView *)self iconImageCache];
    effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
    v8 = [iconImageCache imageForIcon:iconForImage imageAppearance:effectiveIconImageAppearance options:{-[SBIconImageView imageCacheRetrievalOptions](self, "imageCacheRetrievalOptions") | 4}];
    v9 = v8 != 0;
    if (v8)
    {
      [(SBIconImageView *)self updateImageContentsWithImage:v8 imageAppearance:effectiveIconImageAppearance animated:animatedCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadContentsImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconImageCache = [(SBIconImageView *)self iconImageCache];
  v6 = iconImageCache;
  if (iconImageCache)
  {
    [(SBIconImageView *)self loadContentsImageFromCache:iconImageCache animated:animatedCopy];
  }

  else
  {
    [(SBIconImageView *)self loadContentsImageFromIconAnimated:animatedCopy];
  }
}

- (void)loadContentsImageFromCache:(id)cache animated:(BOOL)animated
{
  animatedCopy = animated;
  cacheCopy = cache;
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
    imageAppearance = [desiredImageIdentity imageAppearance];
    imageLoadingBehavior = [(SBIconImageView *)self imageLoadingBehavior];
    requestedImageIdentity = [(SBIconImageView *)self requestedImageIdentity];
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

      if (imageLoadingBehavior - 1 < 2)
      {
        [(SBIconImageView *)self willBeginAsynchronousImageLoadForIcon:iconForImage imageIdentity:desiredImageIdentity];
        hasIconImage = [iconForImage hasIconImage];
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
          if (imageLoadingBehavior == 1 && hasIconImage)
          {
            v16 = [cacheCopy cachingPlaceholderImageWithImageAppearance:imageAppearance options:0];
          }

          v18 = SBLogIconImageView();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [SBIconImageView loadContentsImageFromCache:animated:];
          }

          [(SBIconImageView *)self updateImageContentsWithImage:v16 imageAppearance:imageAppearance animated:animatedCopy];
        }

        v19 = [(SBIconImageView *)self imageCacheRetrievalOptions]| 4;
        imageCacheOptions = [(SBIconImageView *)self imageCacheOptions];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __55__SBIconImageView_loadContentsImageFromCache_animated___block_invoke;
        v25[3] = &unk_1E8090D78;
        v25[4] = self;
        v26 = desiredImageIdentity;
        v27 = iconForImage;
        v28 = cacheCopy;
        v29 = imageAppearance;
        v30 = v19;
        v31 = hasIconImage;
        v32 = animatedCopy;
        v20 = [v28 cacheImageForIcon:v27 imageAppearance:v29 priority:3 reason:@"SBIconImageView loadContentsImage" options:imageCacheOptions completionHandler:v25];
        cacheRequestCancellation = [(SBIconImageView *)self cacheRequestCancellation];
        [cacheRequestCancellation cancel];

        requestedImageIdentities = [v20 requestedImageIdentities];
        firstObject = [requestedImageIdentities firstObject];

        [(SBIconImageView *)self setRequestedImageIdentity:firstObject];
        [(SBIconImageView *)self setCacheRequestCancellation:v20];

        goto LABEL_25;
      }

      if (imageLoadingBehavior)
      {
LABEL_25:

        goto LABEL_26;
      }

      v17 = SBLogIconImageView();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SBIconImageView loadContentsImageFromCache:animated:];
      }

      v13 = [cacheCopy imageForIcon:iconForImage imageAppearance:imageAppearance options:{-[SBIconImageView imageCacheRetrievalOptions](self, "imageCacheRetrievalOptions")}];
      [(SBIconImageView *)self updateImageContentsWithImage:v13 imageAppearance:imageAppearance animated:animatedCopy];
    }

    goto LABEL_25;
  }

  desiredImageIdentity = SBLogIconImageView();
  if (os_log_type_enabled(desiredImageIdentity, OS_LOG_TYPE_DEBUG))
  {
    [SBIconImageView loadContentsImageFromCache:desiredImageIdentity animated:?];
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

- (void)loadContentsImageFromIconAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    v13 = iconForImage;
    effectiveTraitCollection = [(SBIconImageView *)self effectiveTraitCollection];
    sbh_iconImageAppearance = [effectiveTraitCollection sbh_iconImageAppearance];
    [(SBIconImageView *)self iconImageInfo];
    v12 = [v13 iconImageWithInfo:effectiveTraitCollection traitCollection:-[SBIconImageView iconImageOptions](self options:{"iconImageOptions"), v8, v9, v10, v11}];
    [(SBIconImageView *)self updateImageContentsWithImage:v12 imageAppearance:sbh_iconImageAppearance animated:animatedCopy];

    iconForImage = v13;
  }
}

- (void)updateImageContentsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconView = [(SBIconImageView *)self iconView];
  overrideImage = [iconView overrideImage];
  if (overrideImage)
  {
    effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
    [(SBIconImageView *)self updateImageContentsWithImage:overrideImage imageAppearance:effectiveIconImageAppearance animated:animatedCopy];
  }

  else if (![(SBIconImageView *)self updateImageContentsFromCacheAnimated:animatedCopy])
  {
    [(SBIconImageView *)self loadContentsImageAnimated:animatedCopy];
  }
}

- (void)updateImageContentsWithImage:(id)image imageAppearance:(id)appearance animated:(BOOL)animated shouldClearDisplayedLayer:(BOOL)layer
{
  layerCopy = layer;
  animatedCopy = animated;
  imageCopy = image;
  displayedImage = [(SBIconImageView *)self displayedImage];
  if (displayedImage != imageCopy)
  {
    cGImage = [imageCopy CGImage];
    layer = [(SBIconImageView *)self layer];
    v12 = cGImage;
    if (animatedCopy)
    {
      contents = [layer contents];
      if (contents == v12)
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"contents"];
      [v14 setFromValue:contents];
      [v14 setToValue:v12];
      [(SBIconImageView *)self configureIconUpdateAnimation:v14];
      v15 = MEMORY[0x1E696AEC0];
      updateImageCount = self->_updateImageCount;
      self->_updateImageCount = updateImageCount + 1;
      updateImageCount = [v15 stringWithFormat:@"SBIconImageViewContents:%u", updateImageCount];
      [layer addAnimation:v14 forKey:updateImageCount];

      [layer setContents:v12];
    }

    else
    {
      [layer setContents:v12];
    }

    [(SBIconImageView *)self setDisplayedImage:imageCopy];
    if (layerCopy)
    {
      contentsLayerView = [(SBIconImageView *)self contentsLayerView];

      if (contentsLayerView)
      {
        [(SBIconImageView *)self applyImageLayerView:0 animated:animatedCopy shouldClearDisplayedImage:0];
      }
    }

    contents = [(SBIconImageView *)self icon];
    [(SBIconImageView *)self didChangeContents:v12 forIcon:contents];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)configureIconUpdateAnimation:(id)animation
{
  animationCopy = animation;
  [animationCopy setDuration:0.3388];
  [animationCopy setMass:1.0];
  [animationCopy setStiffness:343.985];
  [animationCopy setDamping:37.0937];
  [animationCopy setInitialVelocity:0.0];
  [animationCopy setFillMode:*MEMORY[0x1E69797E8]];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [animationCopy setPreferredFrameRateRange:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
  [animationCopy setHighFrameRateReason:1114148];
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

- (void)updateImageSublayerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(SBIconImageView *)self needsContentsLayerUpdate])
  {
    return;
  }

  iconForImage = [(SBIconImageView *)self iconForImage];
  uniqueIdentifier = [iconForImage uniqueIdentifier];
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
  iconImageOptions = [(SBIconImageView *)self iconImageOptions];
  iconLayerView = [(SBIconImageView *)self iconLayerView];
  iconIdentifier = [iconLayerView iconIdentifier];
  iconImageIdentity = [iconLayerView iconImageIdentity];
  if (![iconIdentifier isEqualToString:uniqueIdentifier])
  {
    goto LABEL_8;
  }

  if (![desiredImageIdentity isEqualToIconImageIdentityExcludingImageGeneration:iconImageIdentity])
  {
    if ([iconLayerView canUpdateIconTintColorFromImageIdentity:desiredImageIdentity])
    {
      tintColor = [effectiveIconImageAppearance tintColor];
      [iconLayerView setIconTintColor:tintColor];

      goto LABEL_9;
    }

LABEL_8:
    v13 = [(SBIconImageView *)self retrieveNewContentsLayerViewWithOptions:iconImageOptions];
    [(SBIconImageView *)self applyImageLayerView:v13 animated:animatedCopy];

    goto LABEL_9;
  }

  [(SBIconImageView *)self updateExistingIconLayerAnimated:animatedCopy];
LABEL_9:
}

- (void)updateExistingIconLayerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconForImage = [(SBIconImageView *)self iconForImage];
  iconLayerView = [(SBIconImageView *)self iconLayerView];
  effectiveTraitCollection = [(SBIconImageView *)self effectiveTraitCollection];
  iconImageOptions = [(SBIconImageView *)self iconImageOptions];
  desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
  [(SBIconImageView *)self setRequestedImageIdentity:desiredImageIdentity];
  iCRIconLayer = [(SBIconImageView *)self ICRIconLayer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SBIconImageView_updateExistingIconLayerAnimated___block_invoke;
  v13[3] = &unk_1E808EF70;
  v13[4] = self;
  v14 = iCRIconLayer;
  v15 = desiredImageIdentity;
  v11 = desiredImageIdentity;
  v12 = iCRIconLayer;
  [iconForImage updateIconLayerView:iconLayerView traitCollection:effectiveTraitCollection options:iconImageOptions animated:animatedCopy completionHandler:v13];
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

- (void)applyImageLayerView:(id)view animated:(BOOL)animated shouldClearDisplayedImage:(BOOL)image
{
  imageCopy = image;
  animatedCopy = animated;
  viewCopy = view;
  contentsLayerView = [(SBIconImageView *)self contentsLayerView];
  [(SBIconImageView *)self iconImageInfo];
  v11 = v10;
  v13 = v12;
  [(SBIconImageView *)self pauseLightAngleUpdates];
  if (viewCopy)
  {
    [viewCopy setContentVisibility:{-[SBIconImageView contentVisibility](self, "contentVisibility")}];
    [(SBIconImageView *)self bounds];
    [viewCopy setBounds:{0.0, 0.0, v11, v13}];
    UIRectGetCenter();
    [viewCopy setCenter:?];
    [(SBIconImageView *)self insertSubview:viewCopy atIndex:0];
  }

  if (animatedCopy)
  {
    v14 = +[SBIconImageView iconUpdateAnimationSettings];
    [viewCopy setAlpha:0.0];
    v15 = MEMORY[0x1E698E7D0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke;
    v25[3] = &unk_1E8088F18;
    v26 = contentsLayerView;
    v27 = viewCopy;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __74__SBIconImageView_applyImageLayerView_animated_shouldClearDisplayedImage___block_invoke_2;
    v22 = &unk_1E80893F0;
    v23 = v26;
    selfCopy = self;
    [v15 animateWithSettings:v14 actions:v25 completion:&v19];
  }

  else
  {
    [contentsLayerView removeFromSuperview];
    if (contentsLayerView)
    {
      [(SBIconImageView *)self returnIconLayerToIconIfPossible:contentsLayerView];
    }
  }

  [(SBIconImageView *)self setContentsLayerView:viewCopy, v19, v20, v21, v22];
  [(SBIconImageView *)self updateOngoingAnimationState];
  if (imageCopy)
  {
    displayedImage = [(SBIconImageView *)self displayedImage];

    if (displayedImage)
    {
      [(SBIconImageView *)self updateImageContentsWithImage:0 imageAppearance:0 animated:animatedCopy shouldClearDisplayedLayer:0];
    }
  }

  icon = [(SBIconImageView *)self icon];
  iconContentLayer = [viewCopy iconContentLayer];
  [(SBIconImageView *)self didChangeContents:iconContentLayer forIcon:icon];
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

- (void)updateBackgroundAppearanceAnimated:(BOOL)animated
{
  if (animated)
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

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    groupingCopy = grouping;
    self->_allowsGlassGrouping = grouping;
    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    [contentsLayerView setAllowsGlassGrouping:groupingCopy];

    [(SBIconImageView *)self applyOrRemoveGlassIfNecessary];
  }
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [nameCopy copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    [contentsLayerView setBackdropGroupName:nameCopy];
  }
}

- (void)setGlassHidden:(BOOL)hidden
{
  if (self->_glassHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_glassHidden = hidden;
    contentsLayerView = [(SBIconImageView *)self contentsLayerView];
    [contentsLayerView setGlassHidden:hiddenCopy];
  }
}

- (void)applyGlass
{
  effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
  tintColor = [effectiveIconImageAppearance tintColor];
  allowsGlassGrouping = [(SBIconImageView *)self allowsGlassGrouping];
  if (tintColor)
  {
    [(UIView *)self sbh_applyAppIconGlassWithTintColor:tintColor allowingGrouping:allowsGlassGrouping];
  }

  else
  {
    [(UIView *)self sbh_applyAppIconGlassWithGrouping:allowsGlassGrouping];
  }
}

- (BOOL)shouldBoostGlassWhitePoint
{
  traitCollection = [(SBIconImageView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection valueForNSIntegerTrait:v3];

  return v4 == 1;
}

- (void)updateImageAfterBackgroundDimmingChange
{
  contentsLayerView = [(SBIconImageView *)self contentsLayerView];
  [contentsLayerView setBoostsGlassWhitePoint:{-[SBIconImageView shouldBoostGlassWhitePoint](self, "shouldBoostGlassWhitePoint")}];
}

- (void)_updateIconEffect
{
  if ([(SBIconImageView *)self hasOpaqueImage])
  {
    [(UIView *)self->_effectView removeFromSuperview];
    effectView = self->_effectView;
    self->_effectView = 0;

    traitCollection = [(SBIconImageView *)self traitCollection];
    sbh_iconEffect = [traitCollection sbh_iconEffect];

    v5 = sbh_iconEffect;
    if (sbh_iconEffect)
    {
      makeNewEffectView = [sbh_iconEffect makeNewEffectView];
      [(SBIconImageView *)self bounds];
      [(UIView *)makeNewEffectView setFrame:?];
      v7 = self->_effectView;
      self->_effectView = makeNewEffectView;
      v8 = makeNewEffectView;

      [(SBIconImageView *)self addSubview:v8];
      [(SBIconImageView *)self _updateForegroundViewMask];
      v5 = sbh_iconEffect;
    }
  }
}

- (id)disableImageUpdatesForReason:(id)reason
{
  reasonCopy = reason;
  if (!self->_imageUpdateDisableAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    imageUpdateDisableAssertions = self->_imageUpdateDisableAssertions;
    self->_imageUpdateDisableAssertions = weakObjectsHashTable;
  }

  v7 = [[_SBIconImageViewDisableUpdatesAssertion alloc] initWithIconImageView:self reason:reasonCopy];
  [(NSHashTable *)self->_imageUpdateDisableAssertions addObject:v7];

  return v7;
}

- (void)invalidateImageUpdatesAssertion:(id)assertion
{
  [(NSHashTable *)self->_imageUpdateDisableAssertions removeObject:assertion];
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
  iconImageCache = [(SBIconImageView *)self iconImageCache];
  iconForImage = [(SBIconImageView *)self iconForImage];
  v5 = iconForImage;
  if (iconForImage)
  {
    v7[0] = iconForImage;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [iconImageCache purgeCachedImagesForIcons:v6];
  }
}

- (id)retrieveNewContentsLayerViewWithOptions:(unint64_t)options
{
  iconForImage = [(SBIconImageView *)self iconForImage];
  if (iconForImage)
  {
    effectiveTraitCollection = [(SBIconImageView *)self effectiveTraitCollection];
    [(SBIconImageView *)self iconImageInfo];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    imageLoadingBehavior = [(SBIconImageView *)self imageLoadingBehavior];
    imageLoadPriority = [(SBIconImageView *)self imageLoadPriority];
    desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
    if (imageLoadingBehavior - 1 >= 2)
    {
      if (imageLoadingBehavior)
      {
        v19 = 0;
      }

      else
      {
        v19 = [iconForImage iconLayerViewWithInfo:effectiveTraitCollection traitCollection:options options:imageLoadPriority priority:{v8, v10, v12, v14}];
      }
    }

    else
    {
      [(SBIconImageView *)self willBeginAsynchronousImageLoadForIcon:iconForImage imageIdentity:desiredImageIdentity];
      if (imageLoadingBehavior == 2)
      {
        optionsCopy = options | 4;
      }

      else
      {
        optionsCopy = options;
      }

      v19 = [iconForImage iconLayerViewWithInfo:effectiveTraitCollection traitCollection:optionsCopy options:imageLoadPriority priority:{v8, v10, v12, v14}];
      [v19 addObserver:self];
      if ([v19 iconContentType] == 2)
      {
        icon = [(SBIconImageView *)self icon];
        [(SBIconImageView *)self didEndAsynchronousImageLoadForIcon:icon imageIdentity:desiredImageIdentity];
      }
    }

    [v19 setAllowsGlassGrouping:{-[SBIconImageView allowsGlassGrouping](self, "allowsGlassGrouping")}];
    [v19 setBoostsGlassWhitePoint:{-[SBIconImageView shouldBoostGlassWhitePoint](self, "shouldBoostGlassWhitePoint")}];
    backdropGroupName = [(SBIconImageView *)self backdropGroupName];
    [v19 setBackdropGroupName:backdropGroupName];

    [v19 setGlassHidden:{-[SBIconImageView isGlassHidden](self, "isGlassHidden")}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(SBIconImageView *)self iconView:fits.width];
  if (v4 || ([(SBIconImageView *)self iconImageCache], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (!self->_hasSetIconImageInfo)
  {
    contentsImage = [(SBIconImageView *)self contentsImage];
    [contentsImage size];
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

- (void)willBeginAsynchronousImageLoadForIcon:(id)icon imageIdentity:(id)identity
{
  identityCopy = identity;
  iconCopy = icon;
  iconView = [(SBIconImageView *)self iconView];
  [iconView iconImageViewWillBeginAsynchronousImageLoadForIcon:iconCopy];

  [(SBIconImageView *)self setRequestedImageIdentity:identityCopy];
}

- (void)didEndAsynchronousImageLoadForIcon:(id)icon imageIdentity:(id)identity
{
  identityCopy = identity;
  iconCopy = icon;
  iconView = [(SBIconImageView *)self iconView];
  [iconView iconImageViewDidEndAsynchronousImageLoadForIcon:iconCopy];

  requestedImageIdentity = [(SBIconImageView *)self requestedImageIdentity];
  v9 = BSEqualObjects();

  if (v9)
  {
    [(SBIconImageView *)self setRequestedImageIdentity:0];
    imageAppearance = [identityCopy imageAppearance];
    if ([imageAppearance hasTintColor])
    {
      desiredImageIdentity = [(SBIconImageView *)self desiredImageIdentity];
      imageAppearance2 = [desiredImageIdentity imageAppearance];
      appearanceType = [imageAppearance2 appearanceType];
      if (appearanceType == [imageAppearance appearanceType] && (objc_msgSend(imageAppearance2, "isEqual:", imageAppearance) & 1) == 0)
      {
        iconLayerView = [(SBIconImageView *)self iconLayerView];
        tintColor = [imageAppearance2 tintColor];
        [iconLayerView setIconTintColor:tintColor];
      }
    }
  }
}

- (void)didChangeContents:(id)contents forIcon:(id)icon
{
  iconCopy = icon;
  contentsCopy = contents;
  iconView = [(SBIconImageView *)self iconView];
  [iconView iconImageViewDidChangeContents:contentsCopy forIcon:iconCopy];
}

- (void)returnIconLayerToIconIfPossible:(id)possible
{
  possibleCopy = possible;
  iconForImage = [(SBIconImageView *)self iconForImage];
  uniqueIdentifier = [iconForImage uniqueIdentifier];
  iconIdentifier = [possibleCopy iconIdentifier];
  if (BSEqualObjects())
  {
    [iconForImage takeIconLayerIfDesired:possibleCopy];
  }
}

- (void)lowPowerModeDidChange:(id)change
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if ((isLowPowerModeEnabled & 1) == 0)
  {
    BSDispatchMain();
  }
}

- (void)iconImageDidUpdate:(id)update
{
  updateCopy = update;
  icon = [(SBIconImageView *)self icon];

  if (icon == updateCopy)
  {
    if (![(SBIconImageView *)self isDisplayingImageLayer])
    {
      [(SBIconImageView *)self updateImageAnimated:1];
    }

    [(SBIconImageView *)self sizeToFit];
  }
}

- (void)iconImageCache:(id)cache didUpdateImageForIcon:(id)icon imageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  iconCopy = icon;
  icon = [(SBIconImageView *)self icon];
  v9 = [iconCopy isEqual:icon];

  if (v9 && ![(SBIconImageView *)self isUpdatingImage]&& ![(SBIconImageView *)self isDisplayingImageLayer])
  {
    displayedImageAppearance = [(SBIconImageView *)self displayedImageAppearance];
    if (!displayedImageAppearance || BSEqualObjects())
    {
      effectiveIconImageAppearance = [(SBIconImageView *)self effectiveIconImageAppearance];
      if (!effectiveIconImageAppearance || BSEqualObjects())
      {
        contentVisibility = [(SBIconImageView *)self contentVisibility];
        [(SBIconImageView *)self alpha];
        v15 = v13 > 0.0 && contentVisibility != 2;
        [(SBIconImageView *)self updateImageAnimated:v15];
        [(SBIconImageView *)self sizeToFit];
      }
    }
  }
}

- (void)iconLayerViewContentTypeDidChange:(id)change
{
  changeCopy = change;
  contentsLayerView = [(SBIconImageView *)self contentsLayerView];
  if (contentsLayerView == changeCopy)
  {
    iconContentType = [changeCopy iconContentType];

    if (iconContentType != 2)
    {
      goto LABEL_7;
    }

    [(SBIconImageView *)self beginLightAngleUpdatesIfAllowed];
    contentsLayerView = [(SBIconImageView *)self icon];
    if ([(SBIconImageView *)self isImageLoadingBehaviorAsynchronous])
    {
      iconImageIdentity = [changeCopy iconImageIdentity];
      [(SBIconImageView *)self didEndAsynchronousImageLoadForIcon:contentsLayerView imageIdentity:iconImageIdentity];
    }

    iconView = [(SBIconImageView *)self iconView];
    iconContentLayer = [changeCopy iconContentLayer];
    [iconView iconImageViewDidChangeContents:iconContentLayer forIcon:contentsLayerView];
  }

LABEL_7:
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconImageView;
    v5 = [(SBIconImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconImageView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(SBIconImageView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  icon = [(SBIconImageView *)self icon];
  v7 = [v4 appendObject:icon withName:@"icon"];

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
  overrideIconImageAppearance = [(SBIconImageView *)self overrideIconImageAppearance];
  v18 = [v4 appendObject:overrideIconImageAppearance withName:@"overrideIconImageAppearance" skipIfNil:1];

  overrideIconImageStyleConfiguration = [(SBIconImageView *)self overrideIconImageStyleConfiguration];
  v20 = [v4 appendObject:overrideIconImageStyleConfiguration withName:@"overrideIconImageStyleConfiguration" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconImageView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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