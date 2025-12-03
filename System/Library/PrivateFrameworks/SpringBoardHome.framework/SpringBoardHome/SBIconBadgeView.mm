@interface SBIconBadgeView
+ (UIColor)badgeBackgroundColor;
+ (id)_checkoutImageForText:(id)text font:(id)font imageAppearance:(id)appearance style:(int64_t)style highlighted:(BOOL)highlighted;
+ (id)_createImageForText:(id)text font:(id)font color:(id)color highlighted:(BOOL)highlighted;
+ (id)badgeBackgroundColorForImageAppearance:(id)appearance;
+ (id)badgeBackgroundFiltersForImageAppearance:(id)appearance;
+ (id)badgeTextColorForImageAppearance:(id)appearance style:(int64_t)style;
+ (id)badgeTextCompositingFilterForImageAppearance:(id)appearance style:(int64_t)style;
- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds;
- (CGPoint)layoutOffset;
- (CGSize)badgeSize;
- (CGSize)intrinsicContentSize;
- (CGSize)intrinsicContentSizeForTextImage:(id)image;
- (SBHIconImageAppearance)effectiveIconImageAppearance;
- (SBIconBadgeView)init;
- (UIColor)badgeBackgroundColor;
- (UIFont)font;
- (double)badgeContentScale;
- (id)_checkoutImageForText:(id)text highlighted:(BOOL)highlighted;
- (id)accessoryTextForIcon:(id)icon infoProvider:(id)provider;
- (void)_applyParallaxSettings;
- (void)_clearText;
- (void)_configureAfterIconImageAppearanceChange;
- (void)_configureAnimatedForText:(id)text highlighted:(BOOL)highlighted animator:(id)animator;
- (void)_configureAnimatedWithoutIcon;
- (void)_configureBackgroundAfterIconImageAppearanceChange;
- (void)_configureForText:(id)text highlighted:(BOOL)highlighted;
- (void)_configureForegroundAfterIconImageAppearanceChange;
- (void)_configureTextView:(id)view forImageAppearance:(id)appearance;
- (void)_configureWithoutIcon;
- (void)_crossfadeToTextImage:(id)image animator:(id)animator;
- (void)_layOutTextImageView:(id)view;
- (void)_resizeForTextImage:(id)image;
- (void)_transitionAnimatedToTextImage:(id)image wasDisplayingAccessory:(BOOL)accessory willDisplayAccessory:(BOOL)displayAccessory animator:(id)animator;
- (void)_zoomInWithTextImage:(id)image animator:(id)animator;
- (void)configureAnimatedForIcon:(id)icon infoProvider:(id)provider animator:(id)animator;
- (void)configureForIcon:(id)icon infoProvider:(id)provider;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryBrightness:(double)brightness;
- (void)setListLayout:(id)layout;
- (void)setOverrideBadgeBackgroundColor:(id)color;
- (void)setOverrideFont:(id)font;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverridePaddingFactor:(double)factor;
- (void)setOverrideText:(id)text;
- (void)setParallaxSettings:(id)settings;
- (void)setStyle:(int64_t)style;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateShadowWithRadius:(double)radius alpha:(double)alpha imageOutset:(double)outset;
- (void)updateTopLevelLayerProperties;
- (void)updateTopLevelLayerPropertiesWithImageAppearance:(id)appearance style:(int64_t)style;
@end

@implementation SBIconBadgeView

- (void)_applyParallaxSettings
{
  v31 = *MEMORY[0x1E69E9840];
  if ((SBHPerformanceFlagEnabled(9) & 1) == 0 && [MEMORY[0x1E69DD250] _motionEffectsSupported])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    _motionEffects = [(SBIconBadgeView *)self _motionEffects];
    v4 = [_motionEffects countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        v7 = 0;
        do
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(_motionEffects);
          }

          [(SBIconBadgeView *)self _removeMotionEffect:*(*(&v26 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [_motionEffects countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    parallaxSettings = self->_parallaxSettings;
    if (parallaxSettings)
    {
      [(SBFParallaxSettings *)parallaxSettings slidePixelsX];
      v10 = v9 * [(SBFParallaxSettings *)self->_parallaxSettings slideDirectionX]* 0.5;
      [(SBFParallaxSettings *)self->_parallaxSettings slidePixelsY];
      v12 = v11 * [(SBFParallaxSettings *)self->_parallaxSettings slideDirectionY]* 0.5;
      v13 = fabs(v12);
      if (fabs(v10) >= 2.22044605e-16 && v13 >= 2.22044605e-16)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"layer.transform" type:0];
        v16 = MEMORY[0x1E696B098];
        CATransform3DMakeTranslation(&v25, -v10, 0.0, 0.0);
        v17 = [v16 valueWithCATransform3D:&v25];
        [v15 setMinimumRelativeValue:v17];

        v18 = MEMORY[0x1E696B098];
        CATransform3DMakeTranslation(&v25, v10, 0.0, 0.0);
        v19 = [v18 valueWithCATransform3D:&v25];
        [v15 setMaximumRelativeValue:v19];

        v20 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"layer.transform" type:1];
        v21 = MEMORY[0x1E696B098];
        CATransform3DMakeTranslation(&v25, 0.0, -v12, 0.0);
        v22 = [v21 valueWithCATransform3D:&v25];
        [v20 setMinimumRelativeValue:v22];

        v23 = MEMORY[0x1E696B098];
        CATransform3DMakeTranslation(&v25, 0.0, v12, 0.0);
        v24 = [v23 valueWithCATransform3D:&v25];
        [v20 setMaximumRelativeValue:v24];

        [(SBIconBadgeView *)self _addMotionEffect:v15];
        [(SBIconBadgeView *)self _addMotionEffect:v20];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  image = [(SBHIconAccessoryCountedMapImageTuple *)self->_textImageTuple image];
  [(SBIconBadgeView *)self intrinsicContentSizeForTextImage:image];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)badgeSize
{
  listLayout = [(SBIconBadgeView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessorySize(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_configureAfterIconImageAppearanceChange
{
  [(SBIconBadgeView *)self _configureBackgroundAfterIconImageAppearanceChange];

  [(SBIconBadgeView *)self _configureForegroundAfterIconImageAppearanceChange];
}

- (void)_configureBackgroundAfterIconImageAppearanceChange
{
  effectiveIconImageAppearance = [(SBIconBadgeView *)self effectiveIconImageAppearance];
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor([effectiveIconImageAppearance appearanceType]);
  style = self->_style;
  layer2 = self->_backgroundView;
  if (style == 1)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = layer2;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v16 = v8;
    if (HasTintColor)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    if (HasTintColor)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    [(UIView *)v8 setRecipe:v17];
    [(UIView *)v16 setOverrideUserInterfaceStyle:v18];
    materialGroupNameBase = [(SBIconBadgeView *)self materialGroupNameBase];
    if (materialGroupNameBase)
    {
      [(UIView *)v16 setGroupNameBase:materialGroupNameBase];
    }

    else
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
      [(UIView *)v16 setGroupNameBase:v20];
    }

    v21 = [(UIView *)v16 visualStylingProviderForCategory:1];
    v22 = v21;
    if (self->_style == 1)
    {
      if (!self->_borderView)
      {
        v23 = objc_opt_new();
        borderView = self->_borderView;
        self->_borderView = v23;

        [(UIView *)self->_borderView setAutoresizingMask:18];
        v25 = self->_borderView;
        [(UIView *)v16 bounds];
        [(UIView *)v25 setFrame:?];
        [(UIView *)v16 addSubview:self->_borderView];
      }

      [v22 automaticallyUpdateView:self->_textView withStyle:1];
      [v22 automaticallyUpdateView:self->_borderView withStyle:3];
    }

    else
    {
      [v21 stopAutomaticallyUpdatingView:self->_textView];
      [v22 stopAutomaticallyUpdatingView:self->_borderView];
    }

    layer = [(UIView *)self->_borderView layer];
    v27 = 0.0;
    if (self->_style == 1)
    {
      [(SBIconBadgeView *)self badgeContentScale];
      v27 = 1.0 / v28;
    }

    [layer setBorderWidth:v27];
    [layer borderWidth];
    [layer setBorderOffset:?];
    goto LABEL_29;
  }

  displayedBackgroundImageAppearance = [(SBIconBadgeView *)self displayedBackgroundImageAppearance];
  v10 = BSEqualObjects();

  if ((v10 & 1) == 0)
  {

    layer2 = 0;
  }

  v11 = objc_opt_self();
  v12 = [(UIView *)layer2 isMemberOfClass:v11];

  if ((v12 & 1) == 0)
  {
    overrideBadgeBackgroundColor = [(SBIconBadgeView *)self overrideBadgeBackgroundColor];
    v14 = overrideBadgeBackgroundColor;
    if (overrideBadgeBackgroundColor)
    {
      v15 = overrideBadgeBackgroundColor;
    }

    else
    {
      v15 = [objc_opt_class() badgeBackgroundColorForImageAppearance:effectiveIconImageAppearance];
    }

    v22 = v15;

    v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v16 setBackgroundColor:v22];
    layer = [objc_opt_class() badgeBackgroundFiltersForImageAppearance:effectiveIconImageAppearance];
    layer2 = [(UIView *)v16 layer];
    [(UIView *)layer2 setFilters:layer];
LABEL_29:

    layer2 = v16;
  }

  backgroundView = self->_backgroundView;
  if (layer2 != backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    [(SBIconBadgeView *)self insertSubview:layer2 atIndex:0];
    [(UIView *)layer2 addSubview:self->_textView];
    sbh_darkener = [(UIView *)layer2 sbh_darkener];
    [(SBIconBadgeView *)self brightness];
    [sbh_darkener setBrightness:?];

    layer3 = [(UIView *)self->_backgroundView layer];
    objc_storeStrong(&self->_backgroundView, layer2);
    [layer3 shadowRadius];
    v33 = v32;
    [layer3 shadowOpacity];
    v35 = v34;
    [layer3 shadowOffset];
    [(SBIconBadgeView *)self updateShadowWithRadius:v33 alpha:v35 imageOutset:v36];
    [(SBIconBadgeView *)self setDisplayedBackgroundImageAppearance:effectiveIconImageAppearance];
  }

  [(SBIconBadgeView *)self updateTopLevelLayerProperties];
}

- (SBHIconImageAppearance)effectiveIconImageAppearance
{
  overrideIconImageAppearance = [(SBIconBadgeView *)self overrideIconImageAppearance];
  traitCollection = [(SBIconBadgeView *)self traitCollection];
  v5 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection overrideIconImageAppearance:overrideIconImageAppearance];

  return v5;
}

- (void)updateTopLevelLayerProperties
{
  effectiveIconImageAppearance = [(SBIconBadgeView *)self effectiveIconImageAppearance];
  [(SBIconBadgeView *)self updateTopLevelLayerPropertiesWithImageAppearance:effectiveIconImageAppearance style:[(SBIconBadgeView *)self style]];
}

- (void)_configureForegroundAfterIconImageAppearanceChange
{
  isHighlighted = [(SBIconBadgeView *)self isHighlighted];
  text = self->_text;

  [(SBIconBadgeView *)self _configureForText:text highlighted:isHighlighted];
}

- (UIFont)font
{
  listLayout = [(SBIconBadgeView *)self listLayout];
  overrideFont = [(SBIconBadgeView *)self overrideFont];
  if (!overrideFont)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([listLayout accessoryFontForContentSizeCategory:*MEMORY[0x1E69DDC90] options:UIAccessibilityIsBoldTextEnabled()], (overrideFont = objc_claimAutoreleasedReturnValue()) == 0))
    {
      overrideFont = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    }
  }

  v5 = overrideFont;

  return v5;
}

- (void)_clearText
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_textImageTuple)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sbh_countedMapKey = [(SBHIconAccessoryCountedMapImageTuple *)self->_textImageTuple sbh_countedMapKey];
      v7 = 138412290;
      v8 = sbh_countedMapKey;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "<----\tChecking in badge _textImageTuple w/ mapkey %@", &v7, 0xCu);
    }

    v5 = SBIconAccessoryCountedMap();
    [v5 checkinValue:self->_textImageTuple];

    textImageTuple = self->_textImageTuple;
    self->_textImageTuple = 0;
  }
}

- (CGPoint)layoutOffset
{
  listLayout = [(SBIconBadgeView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessoryOffset(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBIconBadgeView;
  [(SBIconBadgeView *)&v13 layoutSubviews];
  [(SBIconBadgeView *)self bounds];
  v4 = v3;
  v6 = v5;
  backgroundView = self->_backgroundView;
  BSRectWithSize();
  [(UIView *)backgroundView setBounds:?];
  v8 = self->_backgroundView;
  UIRectGetCenter();
  [(UIView *)v8 setCenter:?];
  if (v4 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9 * 0.5;
  v11 = BSFloatEqualToFloat();
  v12 = self->_backgroundView;
  if (v11)
  {
    [(UIView *)v12 _setCornerRadius:v10];
    [(UIView *)self->_borderView _setCornerRadius:v10];
  }

  else
  {
    [(UIView *)v12 _setContinuousCornerRadius:v10];
    [(UIView *)self->_borderView _setContinuousCornerRadius:v10];
  }

  if (self->_textView)
  {
    [(SBIconBadgeView *)self _layOutTextImageView:?];
  }

  if (self->_incomingTextView)
  {
    [(SBIconBadgeView *)self _layOutTextImageView:?];
  }
}

- (double)badgeContentScale
{
  listLayout = [(SBIconBadgeView *)self listLayout];
  if (listLayout)
  {
    listLayout2 = [(SBIconBadgeView *)self listLayout];
    [listLayout2 iconImageInfo];
    v6 = v5;
  }

  else
  {
    listLayout2 = [(SBIconBadgeView *)self traitCollection];
    [listLayout2 displayScale];
    v6 = v7;
  }

  return v6;
}

+ (UIColor)badgeBackgroundColor
{
  v3 = +[SBHIconImageAppearance defaultAppearance];
  v4 = [self badgeBackgroundColorForImageAppearance:v3];

  return v4;
}

+ (id)badgeBackgroundColorForImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  appearanceType = [appearanceCopy appearanceType];
  v5 = 0;
  if (appearanceType > 3)
  {
    if (appearanceType == 4)
    {
      opaqueTintColor = [appearanceCopy opaqueTintColor];
      CAColorMatrixMakeBrightness();
      memset(v14, 0, sizeof(v14));
      v8 = [opaqueTintColor sbh_colorByApplyingColorMatrix:v14];

      v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
      v5 = [v8 _colorBlendedWithColor:v9];

      goto LABEL_12;
    }

    if (appearanceType == 5)
    {
      opaqueTintColor2 = [appearanceCopy opaqueTintColor];
      goto LABEL_11;
    }

    if (appearanceType != 6)
    {
      goto LABEL_12;
    }
  }

  else if (appearanceType >= 2)
  {
    if ((appearanceType - 2) >= 2)
    {
      goto LABEL_12;
    }

    opaqueTintColor2 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_11;
  }

  opaqueTintColor2 = [MEMORY[0x1E69DC888] systemRedColor];
LABEL_11:
  v5 = opaqueTintColor2;
LABEL_12:
  v10 = objc_alloc_init(MEMORY[0x1E69DD1B8]);
  v11 = [v10 traitCollectionByModifyingTraits:&__block_literal_global_70];

  v12 = [v5 resolvedColorWithTraitCollection:v11];

  return v12;
}

void __58__SBIconBadgeView_badgeBackgroundColorForImageAppearance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setUserInterfaceStyle:1];
  [v2 setAccessibilityContrast:0];
}

+ (id)badgeBackgroundFiltersForImageAppearance:(id)appearance
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([appearance appearanceType] == 5)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
    [v3 setValue:&unk_1F3DB2B48 forKeyPath:*MEMORY[0x1E6979990]];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)badgeTextColorForImageAppearance:(id)appearance style:(int64_t)style
{
  appearanceCopy = appearance;
  v6 = appearanceCopy;
  if (style != 1)
  {
    if (style)
    {
      style = 0;
      goto LABEL_16;
    }

    appearanceType = [appearanceCopy appearanceType];
    if (appearanceType > 3)
    {
      if (appearanceType == 4)
      {
        opaqueTintColor = [v6 opaqueTintColor];
        CAColorMatrixMakeBrightness();
        memset(v13, 0, sizeof(v13));
        style = [opaqueTintColor sbh_colorByApplyingColorMatrix:v13];

        goto LABEL_16;
      }

      if (appearanceType == 5)
      {
        v8 = MEMORY[0x1E69DC888];
        v9 = 0.55;
LABEL_14:
        whiteColor = [v8 colorWithWhite:0.0 alpha:v9];
        goto LABEL_15;
      }

      if (appearanceType != 6)
      {
        goto LABEL_16;
      }
    }

    else if (appearanceType >= 2)
    {
      if ((appearanceType - 2) >= 2)
      {
        goto LABEL_16;
      }

      v8 = MEMORY[0x1E69DC888];
      v9 = 0.65;
      goto LABEL_14;
    }
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_15:
  style = whiteColor;
LABEL_16:

  return style;
}

+ (id)badgeTextCompositingFilterForImageAppearance:(id)appearance style:(int64_t)style
{
  if (style)
  {
    v6 = 0;
  }

  else
  {
    if ([appearance appearanceType] == 5)
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (SBIconBadgeView)init
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SBIconBadgeView;
  v2 = [(SBIconBadgeView *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_brightness = 1.0;
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    badgeBackgroundColor = [objc_opt_class() badgeBackgroundColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:badgeBackgroundColor];
    [(SBIconBadgeView *)v3 addSubview:v3->_backgroundView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    textView = v3->_textView;
    v3->_textView = v7;

    [(UIView *)v3->_backgroundView addSubview:v3->_textView];
    v9 = objc_opt_self();
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = [(SBIconBadgeView *)v3 registerForTraitChanges:v10 withAction:sel__configureAfterIconImageAppearanceChange];

    v12 = objc_opt_self();
    v17 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(SBIconBadgeView *)v3 registerForTraitChanges:v13 withAction:sel__configureAfterIconImageAppearanceChange];

    [(SBIconBadgeView *)v3 _configureAfterIconImageAppearanceChange];
  }

  return v3;
}

- (void)dealloc
{
  [(SBIconBadgeView *)self _clearText];
  [(SBFParallaxSettings *)self->_parallaxSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBIconBadgeView;
  [(SBIconBadgeView *)&v3 dealloc];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(SBIconBadgeView *)self setDisplayedBackgroundImageAppearance:0];

    [(SBIconBadgeView *)self _configureAfterIconImageAppearanceChange];
  }
}

- (void)setOverrideFont:(id)font
{
  fontCopy = font;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [fontCopy copy];
    overrideFont = self->_overrideFont;
    self->_overrideFont = v4;

    text = self->_text;
    self->_text = 0;

    [(SBIconBadgeView *)self _configureAnimatedWithoutIcon];
  }
}

- (void)setOverrideText:(id)text
{
  textCopy = text;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [textCopy copy];
    overrideText = self->_overrideText;
    self->_overrideText = v4;

    [(SBIconBadgeView *)self _configureAnimatedWithoutIcon];
  }
}

- (void)setOverridePaddingFactor:(double)factor
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_overridePaddingFactor = factor;
    text = self->_text;
    self->_text = 0;

    [(SBIconBadgeView *)self _configureAnimatedWithoutIcon];
  }
}

- (void)setOverrideBadgeBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideBadgeBackgroundColor, color);
    if (!self->_style)
    {
      backgroundView = self->_backgroundView;
      badgeBackgroundColor = [(SBIconBadgeView *)self badgeBackgroundColor];
      [(UIView *)backgroundView setBackgroundColor:badgeBackgroundColor];
    }
  }
}

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    [(SBIconBadgeView *)self _configureAfterIconImageAppearanceChange];
  }
}

- (void)updateShadowWithRadius:(double)radius alpha:(double)alpha imageOutset:(double)outset
{
  layer = [(UIView *)self->_backgroundView layer];
  [layer setShadowRadius:radius];
  *&v8 = alpha;
  [layer setShadowOpacity:v8];
  [layer setShadowOffset:{0.0, outset}];
  [layer setShadowPathIsBounds:1];
}

- (void)_layOutTextImageView:(id)view
{
  viewCopy = view;
  [(SBIconBadgeView *)self badgeContentScale];
  image = [viewCopy image];
  [image size];
  [image alignmentRectInsets];
  v6 = v5;
  [(UIView *)self->_backgroundView bounds];
  UIRectCenteredRect();
  SBHEdgeInsetsInvert(v6);
  UIRectIntegralWithScale();
  [viewCopy setFrame:?];
}

- (id)accessoryTextForIcon:(id)icon infoProvider:(id)provider
{
  iconCopy = icon;
  providerCopy = provider;
  overrideText = [(SBIconBadgeView *)self overrideText];
  overrideBadgeNumberOrString = [providerCopy overrideBadgeNumberOrString];
  if (overrideText)
  {
    v10 = overrideText;
  }

  else
  {
    v11 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v16 = objc_opt_self();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        location = overrideBadgeNumberOrString;
        if ([location integerValue] < 1)
        {
          v13 = 0;
        }

        else
        {
          sbf_cachedDecimalNumberFormatter = [MEMORY[0x1E696ADA0] sbf_cachedDecimalNumberFormatter];
          v13 = [sbf_cachedDecimalNumberFormatter stringFromNumber:location];
        }
      }

      else
      {
        v20 = objc_opt_self();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          v13 = 0;
          goto LABEL_6;
        }

        location = [providerCopy location];
        v13 = [iconCopy accessoryTextForLocation:location];
      }

      goto LABEL_6;
    }

    v10 = overrideBadgeNumberOrString;
  }

  v13 = v10;
LABEL_6:
  v14 = v13;

  return v13;
}

- (void)configureAnimatedForIcon:(id)icon infoProvider:(id)provider animator:(id)animator
{
  animatorCopy = animator;
  providerCopy = provider;
  v11 = [(SBIconBadgeView *)self accessoryTextForIcon:icon infoProvider:providerCopy];
  isHighlighted = [providerCopy isHighlighted];

  [(SBIconBadgeView *)self _configureAnimatedForText:v11 highlighted:isHighlighted animator:animatorCopy];
}

- (void)configureForIcon:(id)icon infoProvider:(id)provider
{
  providerCopy = provider;
  v8 = [(SBIconBadgeView *)self accessoryTextForIcon:icon infoProvider:providerCopy];
  isHighlighted = [providerCopy isHighlighted];

  [(SBIconBadgeView *)self _configureForText:v8 highlighted:isHighlighted];
}

- (void)_configureForText:(id)text highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  textCopy = text;
  v13 = [(SBIconBadgeView *)self _checkoutImageForText:textCopy highlighted:highlightedCopy];
  imageAppearance = [v13 imageAppearance];
  [(SBIconBadgeView *)self _clearText];
  text = self->_text;
  self->_text = textCopy;
  v9 = textCopy;

  [(SBIconBadgeView *)self setTextImageTuple:v13];
  textView = self->_textView;
  image = [(SBHIconAccessoryCountedMapImageTuple *)self->_textImageTuple image];
  [(UIImageView *)textView setImage:image];

  [(UIImageView *)self->_textView setAlpha:1.0];
  [(SBIconBadgeView *)self _configureTextView:self->_textView forImageAppearance:imageAppearance];
  image2 = [(SBHIconAccessoryCountedMapImageTuple *)self->_textImageTuple image];

  [(SBIconBadgeView *)self _resizeForTextImage:image2];
  self->_displayingAccessory = self->_textImageTuple != 0;
  [(SBIconBadgeView *)self setHighlighted:highlightedCopy];
}

- (void)updateTopLevelLayerPropertiesWithImageAppearance:(id)appearance style:(int64_t)style
{
  if (style)
  {
    v5 = 1;
  }

  else
  {
    v5 = [appearance appearanceType] != 5;
  }

  layer = [(SBIconBadgeView *)self layer];
  [layer setAllowsGroupOpacity:v5];
  [layer setAllowsGroupBlending:v5];
}

- (void)prepareForReuse
{
  self->_displayingAccessory = 0;
  text = self->_text;
  self->_text = 0;

  [(SBIconBadgeView *)self setHighlighted:0];
  [(SBIconBadgeView *)self _clearText];
  [(UIImageView *)self->_textView setImage:0];
  [(SBIconBadgeView *)self _resizeForTextImage:0];
  [(SBIconBadgeView *)self setOverrideFont:0];
  [(SBIconBadgeView *)self setOverrideText:0];
  [(SBIconBadgeView *)self setOverridePaddingFactor:0.0];
  [(SBIconBadgeView *)self setOverrideBadgeBackgroundColor:0];

  [(SBIconBadgeView *)self setOverrideIconImageAppearance:0];
}

- (CGPoint)accessoryCenterForIconBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBIconBadgeView *)self layoutOffset];
  v9 = v8;
  v11 = v10;
  [(SBIconBadgeView *)self bounds];
  v13 = v12;
  v15 = v14;
  v16 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;

  v17 = SBIconBadgeViewCalculateAccessoryCenter(v16, x, y, width, height, v13, v15, v9, v11);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGSize)intrinsicContentSizeForTextImage:(id)image
{
  imageCopy = image;
  listLayout = [(SBIconBadgeView *)self listLayout];
  if (imageCopy)
  {
    [imageCopy size];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
  }

  [objc_opt_class() _textPadding];
  v9 = v8;
  if (listLayout)
  {
    [(SBIconBadgeView *)self badgeSize];
    v12 = v11;
    if (v7 + v9 >= v10)
    {
      v13 = v7 + v9;
    }

    else
    {
      v13 = v10;
    }
  }

  else
  {
    font = [(SBIconBadgeView *)self font];
    [font pointSize];
    traitCollection = [(SBIconBadgeView *)self traitCollection];
    [traitCollection displayScale];

    BSSizeCeilForScale();
    v13 = v16;
    v12 = v17;
  }

  v18 = v13;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setAccessoryBrightness:(double)brightness
{
  [(SBIconBadgeView *)self setBrightness:?];
  sbh_darkener = [(UIView *)self->_backgroundView sbh_darkener];
  [sbh_darkener setBrightness:brightness];
}

- (void)setListLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_listLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_listLayout, layout);
    [(SBIconBadgeView *)self _clearText];
    [(SBIconBadgeView *)self setNeedsLayout];
    [(SBIconBadgeView *)self layoutIfNeeded];
    layoutCopy = v6;
  }
}

- (void)_configureAnimatedWithoutIcon
{
  v4 = [(SBIconBadgeView *)self accessoryTextForIcon:0 infoProvider:0];
  v3 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:0 animations:0.3];
  [(SBIconBadgeView *)self _configureAnimatedForText:v4 highlighted:0 animator:v3];
  [v3 startAnimation];
}

- (void)_configureAnimatedForText:(id)text highlighted:(BOOL)highlighted animator:(id)animator
{
  highlightedCopy = highlighted;
  textCopy = text;
  animatorCopy = animator;
  if (SBFEqualStrings())
  {
    [(SBIconBadgeView *)self layoutIfNeeded];
  }

  else
  {
    v10 = [(SBIconBadgeView *)self _checkoutImageForText:textCopy highlighted:highlightedCopy];
    v11 = v10 != 0;
    displayingAccessory = self->_displayingAccessory;
    [(SBIconBadgeView *)self _clearText];
    objc_storeStrong(&self->_text, text);
    [(SBIconBadgeView *)self setTextImageTuple:v10];
    self->_displayingAccessory = v11;
    [(SBIconBadgeView *)self setHighlighted:highlightedCopy];
    [(SBIconBadgeView *)self _transitionAnimatedToTextImage:v10 wasDisplayingAccessory:displayingAccessory willDisplayAccessory:v11 animator:animatorCopy];
  }
}

- (void)_transitionAnimatedToTextImage:(id)image wasDisplayingAccessory:(BOOL)accessory willDisplayAccessory:(BOOL)displayAccessory animator:(id)animator
{
  displayAccessoryCopy = displayAccessory;
  accessoryCopy = accessory;
  imageCopy = image;
  animatorCopy = animator;
  if (accessoryCopy && displayAccessoryCopy)
  {
    [(SBIconBadgeView *)self _crossfadeToTextImage:imageCopy animator:animatorCopy];
  }

  else if (displayAccessoryCopy)
  {
    [(SBIconBadgeView *)self _zoomInWithTextImage:imageCopy animator:animatorCopy];
  }

  else if (accessoryCopy)
  {
    [(SBIconBadgeView *)self _zoomOutWithAnimator:animatorCopy];
  }
}

- (void)_crossfadeToTextImage:(id)image animator:(id)animator
{
  animatorCopy = animator;
  imageCopy = image;
  image = [imageCopy image];
  imageAppearance = [imageCopy imageAppearance];

  v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v10 setImage:image];
  [v10 setAlpha:0.0];
  [(SBIconBadgeView *)self _configureTextView:v10 forImageAppearance:imageAppearance];
  [(UIView *)self->_backgroundView addSubview:v10];
  objc_storeStrong(&self->_incomingTextView, v10);
  [(SBIconBadgeView *)self setNeedsLayout];
  [(SBIconBadgeView *)self layoutIfNeeded];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__SBIconBadgeView__crossfadeToTextImage_animator___block_invoke;
  v17[3] = &unk_1E8088F88;
  v17[4] = self;
  v18 = image;
  v11 = v10;
  v19 = v11;
  v12 = image;
  [animatorCopy addAnimations:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__SBIconBadgeView__crossfadeToTextImage_animator___block_invoke_2;
  v14[3] = &unk_1E808A040;
  v15 = v11;
  selfCopy = self;
  v13 = v11;
  [animatorCopy addCompletion:v14];
}

uint64_t __50__SBIconBadgeView__crossfadeToTextImage_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resizeForTextImage:*(a1 + 40)];
  [*(a1 + 48) setAlpha:1.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __50__SBIconBadgeView__crossfadeToTextImage_animator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == *(v3 + 408))
  {
    [*(v3 + 432) removeFromSuperview];
    objc_storeStrong((*(a1 + 40) + 432), *(*(a1 + 40) + 408));
    v4 = *(a1 + 40);
    v5 = *(v4 + 408);
    *(v4 + 408) = 0;
  }

  else
  {

    [v2 removeFromSuperview];
  }
}

- (void)_zoomInWithTextImage:(id)image animator:(id)animator
{
  imageCopy = image;
  image = [imageCopy image];
  imageAppearance = [imageCopy imageAppearance];

  [(UIImageView *)self->_textView setImage:image];
  [(UIImageView *)self->_textView setAlpha:1.0];
  [(SBIconBadgeView *)self _configureTextView:self->_textView forImageAppearance:imageAppearance];
  [(SBIconBadgeView *)self _resizeForTextImage:image];
  [(SBIconBadgeView *)self setNeedsLayout];
  [(SBIconBadgeView *)self layoutIfNeeded];
}

- (void)_configureTextView:(id)view forImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  viewCopy = view;
  v9 = [objc_opt_class() badgeTextCompositingFilterForImageAppearance:appearanceCopy style:{-[SBIconBadgeView style](self, "style")}];

  layer = [viewCopy layer];

  [layer setCompositingFilter:v9];
}

- (UIColor)badgeBackgroundColor
{
  overrideBadgeBackgroundColor = [(SBIconBadgeView *)self overrideBadgeBackgroundColor];
  v4 = overrideBadgeBackgroundColor;
  if (overrideBadgeBackgroundColor)
  {
    v5 = overrideBadgeBackgroundColor;
  }

  else
  {
    effectiveIconImageAppearance = [(SBIconBadgeView *)self effectiveIconImageAppearance];
    v5 = [objc_opt_class() badgeBackgroundColorForImageAppearance:effectiveIconImageAppearance];
  }

  return v5;
}

- (id)_checkoutImageForText:(id)text highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  textCopy = text;
  effectiveIconImageAppearance = [(SBIconBadgeView *)self effectiveIconImageAppearance];
  font = [(SBIconBadgeView *)self font];
  v9 = [objc_opt_class() _checkoutImageForText:textCopy font:font imageAppearance:effectiveIconImageAppearance style:-[SBIconBadgeView style](self highlighted:{"style"), highlightedCopy}];

  return v9;
}

+ (id)_checkoutImageForText:(id)text font:(id)font imageAppearance:(id)appearance style:(int64_t)style highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v46 = *MEMORY[0x1E69E9840];
  textCopy = text;
  fontCopy = font;
  appearanceCopy = appearance;
  if (textCopy)
  {
    v15 = [objc_opt_class() badgeTextColorForImageAppearance:appearanceCopy style:style];
    v35 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    [v15 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
    v16 = MEMORY[0x1E696AEC0];
    fontName = [fontCopy fontName];
    [fontCopy pointSize];
    v19 = [v16 stringWithFormat:@"%@:%@:%.1f:%u:%.2f/%.2f/%.2f/%.2f", textCopy, fontName, v18, highlightedCopy, v35, v34, v33, v32];

    v20 = SBLogIcon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v37 = v19;
      v38 = 2112;
      v39 = textCopy;
      v40 = 1024;
      v41 = highlightedCopy;
      v42 = 2112;
      v43 = fontCopy;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_INFO, "---->\tChecking out text asset w/ mapkey of '%@', text '%@' isHighlighted:%{BOOL}u, font %@, color %@", buf, 0x30u);
    }

    v21 = SBIconAccessoryCountedMap();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__SBIconBadgeView__checkoutImageForText_font_imageAppearance_style_highlighted___block_invoke;
    v25[3] = &unk_1E8090D50;
    selfCopy = self;
    v26 = textCopy;
    v27 = fontCopy;
    v28 = v15;
    v31 = highlightedCopy;
    v29 = appearanceCopy;
    v22 = v15;
    v23 = [v21 checkoutValueForKey:v19 creationBlock:v25];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

SBHIconAccessoryCountedMapImageTuple *__80__SBIconBadgeView__checkoutImageForText_font_imageAppearance_style_highlighted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 64) _createImageForText:*(a1 + 32) font:*(a1 + 40) color:*(a1 + 48) highlighted:*(a1 + 72)];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [[SBHIconAccessoryCountedMapImageTuple alloc] initWithImage:v4 text:*(a1 + 32) imageAppearance:*(a1 + 56) countedMapKey:v3];
  }

  return v6;
}

+ (id)_createImageForText:(id)text font:(id)font color:(id)color highlighted:(BOOL)highlighted
{
  v66[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  fontCopy = font;
  colorCopy = color;
  if (highlighted || ![textCopy length] || (objc_msgSend(textCopy, "isEqualToString:", @"*") & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v14 = [textCopy length] != 1;
    fontDescriptor = [fontCopy fontDescriptor];
    v65 = *MEMORY[0x1E69DB8B0];
    v16 = *MEMORY[0x1E69DB900];
    v62[0] = *MEMORY[0x1E69DB908];
    v62[1] = v16;
    v63[0] = &unk_1F3DB2A08;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v63[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
    v64 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    v66[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v21 = [fontDescriptor fontDescriptorByAddingAttributes:v20];

    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];

    defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
    v24 = [defaultParagraphStyle mutableCopy];

    [v24 setLineBreakMode:5];
    v25 = *MEMORY[0x1E69DB650];
    v60[0] = *MEMORY[0x1E69DB648];
    v60[1] = v25;
    v61[0] = v22;
    v61[1] = colorCopy;
    v60[2] = *MEMORY[0x1E69DB688];
    v61[2] = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    [v22 pointSize];
    v28 = dbl_1BEE887A0[v27 > 16.0];
    [textCopy boundingRectWithSize:1 options:v26 attributes:0 context:{v28, 1.79769313e308}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [textCopy boundingRectWithSize:0 options:v26 attributes:0 context:{v28, 1.79769313e308}];
    v51 = v38;
    v52 = v37;
    v40 = v39;
    v42 = v41;
    v68.origin.x = v30;
    v68.origin.y = v32;
    v68.size.width = v34;
    v68.size.height = v36;
    v43 = round(CGRectGetWidth(v68));
    v69.origin.x = v30;
    v69.origin.y = v32;
    v69.size.width = v34;
    v69.size.height = v36;
    v44 = round(CGRectGetHeight(v69));
    v45 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v43, v44}];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __62__SBIconBadgeView__createImageForText_font_color_highlighted___block_invoke;
    v53[3] = &unk_1E808A0E0;
    v56 = v30;
    v57 = v32;
    v58 = v34;
    v59 = v36;
    v54 = textCopy;
    v55 = v26;
    v46 = v26;
    v47 = [v45 imageWithActions:v53];
    v70.origin.y = v51;
    v70.origin.x = v52;
    v70.size.width = v40;
    v70.size.height = v42;
    v48 = fabs(CGRectGetMinY(v70));
    v49 = [v47 imageWithBaselineOffsetFromBottom:v48];

    [v22 capHeight];
    v12 = [v49 imageWithAlignmentRectInsets:{v44 - v48 - v50, 0.0, v48, 0.0}];

    fontCopy = v22;
  }

  return v12;
}

- (void)_resizeForTextImage:(id)image
{
  [(SBIconBadgeView *)self intrinsicContentSizeForTextImage:image];
  [(SBIconBadgeView *)self setBounds:0.0, 0.0, v4, v5];

  [(SBIconBadgeView *)self setNeedsLayout];
}

- (void)_configureWithoutIcon
{
  v3 = [(SBIconBadgeView *)self accessoryTextForIcon:0 infoProvider:0];
  [(SBIconBadgeView *)self _configureForText:v3 highlighted:0];
}

- (void)setParallaxSettings:(id)settings
{
  settingsCopy = settings;
  parallaxSettings = self->_parallaxSettings;
  if (parallaxSettings != settingsCopy)
  {
    v7 = settingsCopy;
    [(SBFParallaxSettings *)parallaxSettings removeKeyObserver:self];
    objc_storeStrong(&self->_parallaxSettings, settings);
    [(SBFParallaxSettings *)self->_parallaxSettings addKeyObserver:self];
    parallaxSettings = [(SBIconBadgeView *)self _applyParallaxSettings];
    settingsCopy = v7;
  }

  MEMORY[0x1EEE66BB8](parallaxSettings, settingsCopy);
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_parallaxSettings == settings)
  {
    [(SBIconBadgeView *)self _applyParallaxSettings];
  }
}

@end