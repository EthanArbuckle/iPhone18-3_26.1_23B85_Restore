@interface UIButtonConfiguration
+ (UIButtonConfiguration)borderedButtonConfiguration;
+ (UIButtonConfiguration)borderlessButtonConfiguration;
+ (UIButtonConfiguration)filledButtonConfiguration;
+ (UIButtonConfiguration)grayButtonConfiguration;
+ (UIButtonConfiguration)plainButtonConfiguration;
+ (UIButtonConfiguration)tintedButtonConfiguration;
+ (id)_avPlayerGlassButtonConfiguration;
+ (id)_controlCenterGlassButtonConfiguration;
+ (id)_emptyButtonConfiguration;
+ (id)_homescreenCloseGlassButtonConfiguration;
+ (id)_posterSwitcherGlassButtonConfiguration;
+ (id)clearGlassButtonConfiguration;
+ (id)glassButtonConfiguration;
+ (id)prominentClearGlassButtonConfiguration;
+ (id)prominentGlassButtonConfiguration;
+ (id)tintedGlassButtonConfiguration;
- (BOOL)_hasSymbolImage;
- (BOOL)_isRoundButton;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSString)description;
- (UIButtonConfiguration)initWithCoder:(id)a3;
- (UIButtonConfiguration)updatedConfigurationForButton:(UIButton *)button;
- (double)_resolvedIndicatorPadding;
- (id)_initWithBehaviors:(id)a3;
- (id)_resolvedIndicator;
- (id)copyWithZone:(_NSZone *)a3;
- (id)symbolStyleForSize:(int64_t)a3 hasText:(BOOL)a4;
- (int64_t)_resolvedColorMaterialRenderingMode;
- (int64_t)_resolvedMacIdiomStyle;
- (int64_t)_resolvedMonochromaticTreatment;
- (int64_t)_resolvedTitleAlignment;
- (uint64_t)__updateDefaultButtonCornerRadiusIfNecessary;
- (unint64_t)hash;
- (void)_dci_setIndicator:(int64_t)a3;
- (void)_resolveValuesWithButton:(id)a3;
- (void)_setAllowGlassAdaptivity:(BOOL)a3;
- (void)_setAlwaysApplyTitleAlignment:(BOOL)a3;
- (void)_setSymbolContentTransition:(id)a3;
- (void)_setSymbolContentTransitionOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributedSubtitle:(NSAttributedString *)attributedSubtitle;
- (void)setAttributedTitle:(NSAttributedString *)attributedTitle;
- (void)setAutomaticallyUpdateForSelection:(BOOL)automaticallyUpdateForSelection;
- (void)setButtonSize:(UIButtonConfigurationSize)buttonSize;
- (void)setCornerStyle:(UIButtonConfigurationCornerStyle)cornerStyle;
- (void)setShowsActivityIndicator:(BOOL)showsActivityIndicator;
- (void)setSubtitle:(NSString *)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation UIButtonConfiguration

- (NSDirectionalEdgeInsets)contentInsets
{
  if ((*&self->_flags & 0x80) != 0)
  {
    top = self->_contentInsets.top;
    leading = self->_contentInsets.leading;
    bottom = self->_contentInsets.bottom;
    trailing = self->_contentInsets.trailing;
  }

  else
  {
    v3 = [(UIButtonConfiguration *)self _hasTitle];
    v4 = [(UIButtonConfiguration *)self _hasSubtitle];
    v5 = [(UIButtonConfiguration *)self _hasImage];
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    flags = self->_flags;
    v9 = (flags >> 4) & 3;
    if (v7 == 6)
    {
      if (((flags >> 4) & 3) > 1)
      {
        if (v9 == 3)
        {
          top = 12.0;
          leading = 24.0;
          if (!v5 || v3 || v4)
          {
            trailing = 24.0;
          }

          else
          {
            trailing = 12.0;
          }

          if (!v5 || v3 || v4)
          {
            bottom = 16.0;
          }

          else
          {
            bottom = 12.0;
          }

          if (!v5 || v3 || v4)
          {
            top = 16.0;
          }

          else
          {
            leading = 12.0;
          }
        }

        else
        {
          bottom = 6.0;
          if (!v5 || v3 || v4)
          {
            trailing = 12.0;
          }

          else
          {
            trailing = 6.0;
          }

          leading = trailing;
          top = 6.0;
        }
      }

      else
      {
        top = 10.0;
        leading = 12.0;
        if (!v5 || v3 || v4)
        {
          v12 = 20.0;
        }

        else
        {
          v12 = 10.0;
        }

        if (!v5 || v3 || v4)
        {
          top = 12.0;
        }

        else
        {
          leading = 8.0;
        }

        if (v9)
        {
          trailing = leading;
        }

        else
        {
          trailing = v12;
        }

        if (v9)
        {
          bottom = 8.0;
        }

        else
        {
          bottom = top;
        }

        if (v9)
        {
          top = 8.0;
        }

        else
        {
          leading = v12;
        }
      }
    }

    else
    {
      bottom = dbl_18A678F98[v9];
      trailing = dbl_18A678F78[v9] + ((flags >> 7) & 0xE);
      leading = trailing;
      top = bottom;
    }
  }

  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (BOOL)_isRoundButton
{
  if (self->_cornerStyle == 4)
  {
    if ((*&self->_flags & 0xC00000) != 0x400000 || [(NSAttributedString *)self->_attributedTitle length]|| [(NSAttributedString *)self->_attributedSubtitle length])
    {
      LOBYTE(v3) = 0;
    }

    else if (self->_image)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      return (*&self->_flags >> 6) & 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_resolvedIndicator
{
  v4 = (*&self->_flags >> 22) & 3;
  if (v4 == 2)
  {
    v5 = @"chevron.up.chevron.down";
LABEL_5:
    v6 = [UIImage systemImageNamed:v5, v2];

    return v6;
  }

  if (v4 == 3)
  {
    v5 = @"chevron.down";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (int64_t)_resolvedMonochromaticTreatment
{
  flags = self->_flags;
  if ((*&flags & 0x8000000) != 0)
  {
    return -1;
  }

  else
  {
    return (*&flags >> 28) & 3;
  }
}

- (int64_t)_resolvedTitleAlignment
{
  v3 = [(UIButtonConfiguration *)self _hasTitle];
  v4 = [(UIButtonConfiguration *)self _hasSubtitle];
  if (!v3 && !v4)
  {
    return 0;
  }

  flags = self->_flags;
  if (((*&flags >> 24) & 3) != 0)
  {
    if (v3 && v4)
    {
      v7 = (*&flags >> 24) & 3;
    }

    else
    {
      v7 = 0;
    }

    if ((*&flags & 0x4000000) != 0)
    {
      return (*&flags >> 24) & 3;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if ((*&flags & 0x4000000) == 0 && (!v3 || !v4) || !self->_image)
    {
      return 0;
    }

    imagePlacement = self->_imagePlacement;
    v9 = 2;
    if (imagePlacement == 8)
    {
      v9 = 3;
    }

    if (imagePlacement == 2)
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }
}

+ (UIButtonConfiguration)plainButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = [_UIButtonConfigurationStyleBehaviors plainBehaviors:0];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (UIButtonConfiguration)tintedButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors tintBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (UIButtonConfiguration)filledButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors fillBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (UIButtonConfiguration)borderlessButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = [_UIButtonConfigurationStyleBehaviors plainBehaviors:1];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

- (BOOL)_hasSymbolImage
{
  image = self->_image;
  if (image)
  {
    LOBYTE(image) = [(UIImage *)image isSymbolImage];
  }

  return image;
}

+ (UIButtonConfiguration)grayButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors grayBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

- (NSString)description
{
  v23.receiver = self;
  v23.super_class = UIButtonConfiguration;
  v3 = [(UIButtonConfiguration *)&v23 description];
  v4 = [v3 mutableCopy];

  v5 = [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors styleDescription];
  [v4 appendFormat:@" baseStyle=%@", v5];

  flags = self->_flags;
  if ((*&flags & 0xC) == 0)
  {
    [v4 appendString:*(&off_1E70FEA98 + (*&self->_flags & 3))];
    flags = self->_flags;
  }

  [v4 appendString:*(&off_1E70FEAB8 + ((*&flags >> 4) & 3))];
  v7 = self->_cornerStyle + 1;
  if (v7 < 6)
  {
    [v4 appendString:*(&off_1E70FEB38 + v7)];
  }

  if (self->_baseBackgroundColor)
  {
    [v4 appendFormat:@" baseBackgroundColor=%@", self->_baseBackgroundColor];
  }

  if (self->_baseForegroundColor)
  {
    [v4 appendFormat:@" baseForegroundColor=%@", self->_baseForegroundColor];
  }

  if ([(NSAttributedString *)self->_attributedTitle length])
  {
    attributedTitle = self->_attributedTitle;
    v9 = [(NSAttributedString *)attributedTitle string];
    [v4 appendFormat:@" title=<%p>:'%@'", attributedTitle, v9];

    if (self->_titleTextAttributesTransformer)
    {
      [v4 appendString:@" hasTitleTextAttributesTransformer"];
    }
  }

  if ([(NSAttributedString *)self->_attributedSubtitle length])
  {
    attributedSubtitle = self->_attributedSubtitle;
    v11 = [(NSAttributedString *)attributedSubtitle string];
    [v4 appendFormat:@" subTitle=<%p>:'%@'", attributedSubtitle, v11];

    if (self->_subtitleTextAttributesTransformer)
    {
      [v4 appendString:@" hasSubtitleTextAttributesTransformer"];
    }
  }

  if (self->_image)
  {
    if ((*&self->_flags & 0x40) != 0)
    {
      v12 = @"[hidden]";
    }

    else
    {
      v12 = &stru_1EFB14550;
    }

    v13 = objc_opt_class();
    image = self->_image;
    v15 = [(UIImage *)image _identityDescription];
    [v4 appendFormat:@" image%@=<%@:%p %@>", v12, v13, image, v15];

    if (self->_preferredSymbolConfigurationForImage)
    {
      [v4 appendFormat:@" preferredSymbolConfigurationForImage=%@", self->_preferredSymbolConfigurationForImage];
    }

    if (self->_symbolContentTransition)
    {
      [v4 appendFormat:@" symbolContentTransition=%@", self->_symbolContentTransition];
    }

    if (self->_imageColorTransformer)
    {
      [v4 appendString:@" hasImageColorTransformer"];
    }
  }

  v16 = self->_flags;
  v17 = (*&v16 >> 18) & 3;
  if (v17 > 1)
  {
    if (v17 == 3)
    {
      v18 = @" indicator=pulldown";
    }

    else
    {
      v18 = @" indicator=popup";
    }

    goto LABEL_31;
  }

  if (v17)
  {
    v18 = @" indicator=none";
LABEL_31:
    [v4 appendString:v18];
    v16 = self->_flags;
  }

  if ((*&v16 & 0x40) != 0)
  {
    [v4 appendString:@" showsActivityIndicator"];
    if (self->_activityIndicatorColorTransformer)
    {
      [v4 appendString:@" hasActivityIndicatorColorTransformer"];
    }
  }

  if ((*&self->_flags & 0x80) != 0)
  {
    v19 = NSStringFromDirectionalEdgeInsets(self->_contentInsets);
    [v4 appendFormat:@" contentInsets=%@", v19];
  }

  else
  {
    [v4 appendString:@" contentInsets=default"];
  }

  v20 = self->_imagePlacement - 1;
  if (v20 <= 7 && ((0x8Bu >> v20) & 1) != 0)
  {
    [v4 appendString:*(&off_1E70FEAD8 + v20)];
  }

  [v4 appendFormat:@" imagePadding=%.*g titlePadding=%.*g", 17, *&self->_imagePadding, 17, *&self->_titlePadding];
  [v4 appendString:*(&off_1E70FEB18 + ((*&self->_flags >> 24) & 3))];
  if ((*(&self->_flags + 2) & 2) != 0)
  {
    if ([(_UIButtonConfigurationStyleBehaviors *)self->_behaviors selectionStyle]== -1)
    {
      v21 = @" (automaticallyUpdateForSelection)";
    }

    else
    {
      v21 = @" automaticallyUpdateForSelection";
    }

    [v4 appendString:v21];
  }

  [v4 appendFormat:@" background=%@", self->_background];

  return v4;
}

- (id)_initWithBehaviors:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = UIButtonConfiguration;
  v6 = [(UIButtonConfiguration *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_behaviors, a3);
    v8 = +[UIBackgroundConfiguration clearConfiguration];
    background = v7->_background;
    v7->_background = v8;

    v10 = [v5 cornerStyle];
    v11 = _UISolariumEnabled();
    v12 = 5.95;
    if ((v11 & (v10 == 0)) != 0)
    {
      v12 = 17.0;
    }

    [(UIBackgroundConfiguration *)v7->_background _setCornerRadius:v12];
    v7->_cornerStyle = v10;
    v13 = +[UIColor clearColor];
    [(UIBackgroundConfiguration *)v7->_background setStrokeColor:v13];

    [(UIBackgroundConfiguration *)v7->_background setStrokeWidth:1.0];
    v7->_imagePlacement = 2;
    v7->_titlePadding = 1.0;
    v14 = [v5 selectionStyle];
    v15 = 134348800;
    if (v14 == -1)
    {
      v15 = 0x8000000;
    }

    v7->_flags = (v15 | *&v7->_flags & 0xFFFFFFFFF7FDFFFFLL);
  }

  return v7;
}

+ (UIButtonConfiguration)borderedButtonConfiguration
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    [a1 filledButtonConfiguration];
  }

  else
  {
    [a1 grayButtonConfiguration];
  }
  v5 = ;

  return v5;
}

+ (id)glassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors glassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)clearGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors clearGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)prominentGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors tintedGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)prominentClearGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors prominentClearGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)_avPlayerGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors avPlayerGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)_posterSwitcherGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors posterSwitcherGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)_homescreenCloseGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors homescreenCloseGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)_controlCenterGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors controlCenterGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

+ (id)_emptyButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors emptyBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

- (UIButtonConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = UIButtonConfiguration;
  v5 = [(UIButtonConfiguration *)&v36 init];
  if (v5)
  {
    v6 = +[_UIButtonConfigurationStyleBehaviors behaviorForStyle:](_UIButtonConfigurationStyleBehaviors, "behaviorForStyle:", [v4 decodeIntegerForKey:@"UIButtonConfigurationButtonStyle"]);
    behaviors = v5->_behaviors;
    v5->_behaviors = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationBackground"];
    background = v5->_background;
    v5->_background = v8;

    v5->_cornerStyle = [v4 decodeIntegerForKey:@"UIButtonConfigurationCornerStyle"];
    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFFFFCFLL | (16 * ([v4 decodeIntegerForKey:@"UIButtonConfigurationButtonSize"] & 3)));
    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFFFFF0 | [v4 decodeIntegerForKey:@"UIButtonConfigurationMacIdiomStyle"] & 0xF);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationBaseBackgroundColor"];
    baseBackgroundColor = v5->_baseBackgroundColor;
    v5->_baseBackgroundColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationBaseForegroundColor"];
    baseForegroundColor = v5->_baseForegroundColor;
    v5->_baseForegroundColor = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationImage"];
    image = v5->_image;
    v5->_image = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationPreferredSymbolConfigurationForImage"];
    preferredSymbolConfigurationForImage = v5->_preferredSymbolConfigurationForImage;
    v5->_preferredSymbolConfigurationForImage = v16;

    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"UIButtonConfigurationSymbolContentTransition"];
    symbolContentTransition = v5->_symbolContentTransition;
    v5->_symbolContentTransition = v19;

    v21 = [v4 decodeBoolForKey:@"UIButtonConfigurationShowsActivityIndicator"];
    v22 = 64;
    if (!v21)
    {
      v22 = 0;
    }

    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFFFFBFLL | v22);
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationTitle"];
    attributedTitle = v5->_attributedTitle;
    v5->_attributedTitle = v23;

    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFFC7FFLL | (([v4 decodeIntegerForKey:@"UIButtonConfigurationTitleLineBreakMode"] & 7) << 11));
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonConfigurationSubtitle"];
    attributedSubtitle = v5->_attributedSubtitle;
    v5->_attributedSubtitle = v25;

    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFE3FFFLL | (([v4 decodeIntegerForKey:@"UIButtonConfigurationSubtitleLineBreakMode"] & 7) << 14));
    if ([v4 containsValueForKey:@"UIButtonConfigurationContentInset"])
    {
      [v4 decodeDirectionalEdgeInsetsForKey:@"UIButtonConfigurationContentInset"];
      v5->_contentInsets.top = v27;
      v5->_contentInsets.leading = v28;
      v5->_contentInsets.bottom = v29;
      v5->_contentInsets.trailing = v30;
      *&v5->_flags |= 0x80uLL;
    }

    v5->_imagePlacement = [v4 decodeIntegerForKey:@"UIButtonConfigurationImagePlacement"];
    [v4 decodeFloatForKey:@"UIButtonConfigurationImagePadding"];
    v5->_imagePadding = v31;
    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFF3FFFFLL | (([v4 decodeIntegerForKey:@"UIButtonConfigurationIndicator"] & 3) << 18));
    [v4 decodeFloatForKey:@"UIButtonConfigurationTitlePadding"];
    v5->_titlePadding = v32;
    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFCFFFFFFLL | (([v4 decodeIntegerForKey:@"UIButtonConfigurationTitleAlignment"] & 3) << 24));
    if ([v4 containsValueForKey:@"UIButtonConfigurationAutomaticallyUpdateForSelection"])
    {
      v33 = [v4 decodeBoolForKey:@"UIButtonConfigurationAutomaticallyUpdateForSelection"];
      v34 = 0x20000;
      if (!v33)
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = ([(_UIButtonConfigurationStyleBehaviors *)v5->_behaviors selectionStyle]!= -1) << 17;
    }

    v5->_flags = (*&v5->_flags & 0xFFFFFFFFFFFDFFFFLL | v34);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeInteger:-[_UIButtonConfigurationStyleBehaviors style](self->_behaviors forKey:{"style"), @"UIButtonConfigurationButtonStyle"}];
  [v11 encodeObject:self->_background forKey:@"UIButtonConfigurationBackground"];
  [v11 encodeInteger:self->_cornerStyle forKey:@"UIButtonConfigurationCornerStyle"];
  [v11 encodeInteger:(*&self->_flags >> 4) & 3 forKey:@"UIButtonConfigurationButtonSize"];
  [v11 encodeInteger:*&self->_flags & 0xFLL forKey:@"UIButtonConfigurationMacIdiomStyle"];
  [v11 encodeObject:self->_baseBackgroundColor forKey:@"UIButtonConfigurationBaseBackgroundColor"];
  [v11 encodeObject:self->_baseForegroundColor forKey:@"UIButtonConfigurationBaseForegroundColor"];
  [v11 encodeObject:self->_image forKey:@"UIButtonConfigurationImage"];
  v4 = (*&self->_flags >> 18) & 3;
  if (v4)
  {
    [v11 encodeInteger:v4 forKey:@"UIButtonConfigurationIndicator"];
  }

  [v11 encodeObject:self->_preferredSymbolConfigurationForImage forKey:@"UIButtonConfigurationPreferredSymbolConfigurationForImage"];
  [v11 encodeObject:self->_symbolContentTransition forKey:@"UIButtonConfigurationSymbolContentTransition"];
  [v11 encodeBool:(*&self->_flags >> 6) & 1 forKey:@"UIButtonConfigurationShowsActivityIndicator"];
  [v11 encodeObject:self->_attributedTitle forKey:@"UIButtonConfigurationTitle"];
  v5 = (*&self->_flags >> 11) & 7;
  if (v5)
  {
    [v11 encodeInteger:v5 forKey:@"UIButtonConfigurationTitleLineBreakMode"];
  }

  [v11 encodeObject:self->_attributedSubtitle forKey:@"UIButtonConfigurationSubtitle"];
  flags = self->_flags;
  v7 = (*&flags >> 14) & 7;
  if (v7)
  {
    [v11 encodeInteger:v7 forKey:@"UIButtonConfigurationSubtitleLineBreakMode"];
    flags = self->_flags;
  }

  if ((*&flags & 0x80) != 0)
  {
    [v11 encodeDirectionalEdgeInsets:@"UIButtonConfigurationContentInset" forKey:{self->_contentInsets.top, self->_contentInsets.leading, self->_contentInsets.bottom, self->_contentInsets.trailing}];
  }

  [v11 encodeInteger:self->_imagePlacement forKey:@"UIButtonConfigurationImagePlacement"];
  imagePadding = self->_imagePadding;
  *&imagePadding = imagePadding;
  [v11 encodeFloat:@"UIButtonConfigurationImagePadding" forKey:imagePadding];
  titlePadding = self->_titlePadding;
  *&titlePadding = titlePadding;
  [v11 encodeFloat:@"UIButtonConfigurationTitlePadding" forKey:titlePadding];
  [v11 encodeInteger:(*&self->_flags >> 24) & 3 forKey:@"UIButtonConfigurationTitleAlignment"];
  v10 = self->_flags;
  if (((*&v10 & 0x20000) == 0) == ([(_UIButtonConfigurationStyleBehaviors *)self->_behaviors selectionStyle]!= -1))
  {
    [v11 encodeBool:(*&self->_flags >> 17) & 1 forKey:@"UIButtonConfigurationAutomaticallyUpdateForSelection"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  _UIButtonConfigurationCopy(v4, self, 1, 1);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v5;
  if (self->_behaviors != v5->_behaviors)
  {
    goto LABEL_6;
  }

  if (self->_cornerStyle != v5->_cornerStyle)
  {
    goto LABEL_6;
  }

  flags = self->_flags;
  v8 = v5->_flags;
  if (((*&v8 ^ *&flags) & 0x7F) != 0)
  {
    goto LABEL_6;
  }

  if ((*&flags & *&v8 & 0x80) != 0)
  {
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, *&v5->_contentInsets.top), vceqq_f64(*&self->_contentInsets.bottom, *&v5->_contentInsets.bottom)))) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (((*&v8 ^ *&flags) & 0x780) != 0)
  {
    goto LABEL_6;
  }

  if (((*&v8 ^ *&flags) & 0xDF800) == 0 && self->_imagePlacement == v5->_imagePlacement && self->_imagePadding == v5->_imagePadding && self->_imageReservation == v5->_imageReservation)
  {
    v9 = 0;
    if (((*&v8 ^ *&flags) & 0x7000000) != 0 || self->_titlePadding != v5->_titlePadding)
    {
      goto LABEL_7;
    }

    if (_deferringTokenEqualToToken(self->_background, v5->_background))
    {
      if (_deferringTokenEqualToToken(self->_baseForegroundColor, v6->_baseForegroundColor))
      {
        if (_deferringTokenEqualToToken(self->_baseBackgroundColor, v6->_baseBackgroundColor))
        {
          if (_deferringTokenEqualToToken(self->_image, v6->_image))
          {
            v11 = _Block_copy(self->_imageColorTransformer);
            v12 = _Block_copy(v6->_imageColorTransformer);
            v13 = _deferringTokenEqualToToken(v11, v12);

            if (v13)
            {
              if (_deferringTokenEqualToToken(self->_preferredSymbolConfigurationForImage, v6->_preferredSymbolConfigurationForImage))
              {
                if (_deferringTokenEqualToToken(self->_symbolContentTransition, v6->_symbolContentTransition))
                {
                  v14 = _Block_copy(self->_indicatorColorTransformer);
                  v15 = _Block_copy(v6->_indicatorColorTransformer);
                  v16 = _deferringTokenEqualToToken(v14, v15);

                  if (v16)
                  {
                    v17 = _Block_copy(self->_activityIndicatorColorTransformer);
                    v18 = _Block_copy(v6->_activityIndicatorColorTransformer);
                    v19 = _deferringTokenEqualToToken(v17, v18);

                    if (v19)
                    {
                      if (_deferringTokenEqualToToken(self->_attributedTitle, v6->_attributedTitle))
                      {
                        v20 = _Block_copy(self->_titleTextAttributesTransformer);
                        v21 = _Block_copy(v6->_titleTextAttributesTransformer);
                        v22 = _deferringTokenEqualToToken(v20, v21);

                        if (v22)
                        {
                          if (_deferringTokenEqualToToken(self->_attributedSubtitle, v6->_attributedSubtitle))
                          {
                            v23 = _Block_copy(self->_subtitleTextAttributesTransformer);
                            v24 = _Block_copy(v6->_subtitleTextAttributesTransformer);
                            v9 = _deferringTokenEqualToToken(v23, v24);

                            goto LABEL_7;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  v9 = 0;
LABEL_7:

LABEL_10:
  return v9;
}

- (unint64_t)hash
{
  v3 = [(UIImage *)self->_image hash];
  v4 = [(NSAttributedString *)self->_attributedTitle hash]^ v3;
  v5 = v4 ^ [(NSAttributedString *)self->_attributedSubtitle hash];
  return [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors style]+ (v5 << 8);
}

- (UIButtonConfiguration)updatedConfigurationForButton:(UIButton *)button
{
  v4 = button;
  v5 = [(UIButtonConfiguration *)self copy];
  [v5 _resolveValuesWithButton:v4];

  return v5;
}

- (uint64_t)__updateDefaultButtonCornerRadiusIfNecessary
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 104);
    if (!v2 || (*(v2 + 8) & 2) == 0)
    {
      if (_UISolariumEnabled())
      {
        v3 = *(v1 + 112) == 0;
      }

      else
      {
        v3 = 0;
      }

      v4 = (*(v1 + 96) >> 4) & 3;
      v5 = 14.0;
      if ((v4 - 1) >= 2)
      {
        if (v4)
        {
          v5 = 8.75;
          v6 = 25.0;
        }

        else
        {
          v5 = 5.95;
          v6 = 17.0;
        }

        if (v3)
        {
          v5 = v6;
        }
      }

      v7 = *(v1 + 104);

      return [v7 _setCornerRadius:v5];
    }
  }

  return result;
}

- (void)setButtonSize:(UIButtonConfigurationSize)buttonSize
{
  flags = self->_flags;
  if (((*&flags >> 4) & 3) != buttonSize)
  {
    self->_flags = (*&flags & 0xFFFFFFFFFFFFFFCFLL | (16 * (buttonSize & 3)));
    resolvedTitle = self->_resolvedTitle;
    self->_resolvedTitle = 0;

    resolvedSubtitle = self->_resolvedSubtitle;
    self->_resolvedSubtitle = 0;

    [(UIButtonConfiguration *)self __updateDefaultButtonCornerRadiusIfNecessary];
  }
}

- (void)setCornerStyle:(UIButtonConfigurationCornerStyle)cornerStyle
{
  if (self->_cornerStyle != cornerStyle)
  {
    self->_cornerStyle = cornerStyle;
    [(UIButtonConfiguration *)self __updateDefaultButtonCornerRadiusIfNecessary];
  }
}

- (int64_t)_resolvedMacIdiomStyle
{
  if ((*&self->_flags & 0xFLL) != 0)
  {
    return *&self->_flags & 0xFLL;
  }

  else
  {
    return [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors automaticMacIdiomStyle];
  }
}

- (void)setShowsActivityIndicator:(BOOL)showsActivityIndicator
{
  v3 = 64;
  if (!showsActivityIndicator)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setTitle:(NSString *)title
{
  v5 = title;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [(UIButtonConfiguration *)self setAttributedTitle:v4];
  }

  else
  {
    [(UIButtonConfiguration *)self setAttributedTitle:0];
  }
}

- (void)setAttributedTitle:(NSAttributedString *)attributedTitle
{
  v4 = attributedTitle;
  resolvedTitle = self->_attributedTitle;
  v6 = v4;
  v11 = v6;
  if (resolvedTitle == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !resolvedTitle)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)resolvedTitle isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSAttributedString *)v8 copy];
    v10 = self->_attributedTitle;
    self->_attributedTitle = v9;

    resolvedTitle = self->_resolvedTitle;
    self->_resolvedTitle = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSubtitle:(NSString *)subtitle
{
  v5 = subtitle;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [(UIButtonConfiguration *)self setAttributedSubtitle:v4];
  }

  else
  {
    [(UIButtonConfiguration *)self setAttributedSubtitle:0];
  }
}

- (void)setAttributedSubtitle:(NSAttributedString *)attributedSubtitle
{
  v4 = attributedSubtitle;
  resolvedSubtitle = self->_attributedSubtitle;
  v6 = v4;
  v11 = v6;
  if (resolvedSubtitle == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !resolvedSubtitle)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSAttributedString *)resolvedSubtitle isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSAttributedString *)v8 copy];
    v10 = self->_attributedSubtitle;
    self->_attributedSubtitle = v9;

    resolvedSubtitle = self->_resolvedSubtitle;
    self->_resolvedSubtitle = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_dci_setIndicator:(int64_t)a3
{
  if (a3 == 3)
  {
    a3 = 1;
  }

  [(UIButtonConfiguration *)self setIndicator:a3];
}

- (void)setAutomaticallyUpdateForSelection:(BOOL)automaticallyUpdateForSelection
{
  flags = self->_flags;
  if (((((*&flags & 0x20000) == 0) ^ automaticallyUpdateForSelection) & 1) == 0)
  {
    v4 = 0x20000;
    if (!automaticallyUpdateForSelection)
    {
      v4 = 0;
    }

    self->_flags = (*&flags & 0xFFFFFFFFFFFDFFFFLL | v4);
  }
}

- (void)_setAllowGlassAdaptivity:(BOOL)a3
{
  flags = self->_flags;
  if (((*&flags >> 30) & 1) == a3)
  {
    v4 = 0x40000000;
    if (a3)
    {
      v4 = 0;
    }

    self->_flags = (*&flags & 0xFFFFFFFFBFFFFFFFLL | v4);
  }
}

- (void)_setAlwaysApplyTitleAlignment:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)symbolStyleForSize:(int64_t)a3 hasText:(BOOL)a4
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v4 = &UIFontTextStyleCallout;
      return *v4;
    }

LABEL_9:
    v4 = &UIFontTextStyleTitle3;
    return *v4;
  }

  if (a3 == 2)
  {
    v4 = &UIFontTextStyleFootnote;
    return *v4;
  }

  if (a3 != 3)
  {
    goto LABEL_9;
  }

  v4 = &UIFontTextStyleTitle1;
  if (a4)
  {
    v4 = &UIFontTextStyleTitle2;
  }

  return *v4;
}

- (void)_resolveValuesWithButton:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIButtonStatesFromButton(v4);
  v6 = [v4 role];
  v7 = [v4 traitCollection];
  v8 = [v4 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = _UIContentSizeCategoryFromStringInternal(v9, buf);

  if (v10 >= 65543)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v103 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v122 = v10;
        _os_log_fault_impl(&dword_188A29000, v103, OS_LOG_TYPE_FAULT, "Unexpectedly large contentSizeCategory %lu while updating button configuration. The button this configuration is applied to will likely look wrong.", buf, 0xCu);
      }
    }

    else
    {
      v103 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1037) + 8);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v122 = v10;
        _os_log_impl(&dword_188A29000, v103, OS_LOG_TYPE_ERROR, "Unexpectedly large contentSizeCategory %lu while updating button configuration. The button this configuration is applied to will likely look wrong.", buf, 0xCu);
      }
    }
  }

  v11 = ((v10 << 8) + 256) & 0x700;
  if (v10 < 0x10000)
  {
    v11 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFFFFFFF8FFLL | v11);
  v12 = [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors behaviorForState:v5];
  if (([v4 _wantsAccessibilityUnderline] & 1) == 0)
  {
    v13 = [v12 effectiveBehaviorWithoutButtonShapes];

    v12 = v13;
  }

  image = self->_image;
  if (!image || ![(UIImage *)image isSymbolImage])
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  preferredSymbolConfigurationForImage = self->_preferredSymbolConfigurationForImage;
  if (preferredSymbolConfigurationForImage)
  {
    if ((*&preferredSymbolConfigurationForImage->_configFlags & 1) == 0)
    {
      v16 = preferredSymbolConfigurationForImage->_textStyle == 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
LABEL_12:
  v113 = [v12 effectiveForegroundColorFromBaseColor:self->_baseForegroundColor baseBackgroundColor:self->_baseBackgroundColor state:v5 traitCollection:v7];
  v17 = [(UIButtonConfiguration *)self _hasTitle];
  v18 = [(UIButtonConfiguration *)self _hasSubtitle];
  v107 = [(UIButtonConfiguration *)self _hasImage];
  flags = self->_flags;
  v110 = v5;
  if (((*&flags >> 18) & 3) == 0)
  {
    if (_UIButtonCanInferIndicator() && [v4 _menuEnabled] && objc_msgSend(v4, "showsMenuAsPrimaryAction"))
    {
      v21 = [v4 changesSelectionAsPrimaryAction];
      v22 = *&self->_flags & 0xFFFFFFFFFF3FFFFFLL;
      if (v21)
      {
        v20 = (v22 | 0x800000);
        goto LABEL_21;
      }
    }

    else
    {
      v22 = *&self->_flags & 0xFFFFFFFFFF3FFFFFLL;
    }

    v20 = (v22 | 0x400000);
    goto LABEL_21;
  }

  v20 = (*&flags & 0xFFFFFFFFFF3FFFFFLL | (((*&flags >> 18) & 3) << 22));
LABEL_21:
  self->_flags = v20;
  v108 = v17;
  v109 = v18;
  v23 = v17 || v18;
  if (!v17 && !v18 && (*&v20 & 0x40) == 0)
  {
    v24 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v116 = 0;
    goto LABEL_37;
  }

  v119 = 0;
  v120 = 0;
  v118 = 0;
  _getDefaultTitleAndSubtitleFontStylesForButtonSize((*&v20 >> 4) & 3, &v120, &v119, &v118, v7);
  v24 = v120;
  v114 = v119;
  v112 = v118;
  if (v17 || (*&self->_flags & 0x40) != 0)
  {
    if ([v7 userInterfaceIdiom] != 6 || v6 == 1)
    {
      if (v6 == 1)
      {
        v26 = v112;
      }

      else
      {
        v26 = v24;
      }

      v25 = [off_1E70ECC18 preferredFontForTextStyle:v26 compatibleWithTraitCollection:v7];
    }

    else
    {
      v25 = [off_1E70ECC18 _preferredFontForTextStyle:v24 weight:*off_1E70ECD30];
    }

    v116 = v25;
  }

  else
  {
    v116 = 0;
  }

  if (v18)
  {
    v111 = [off_1E70ECC18 preferredFontForTextStyle:v114 compatibleWithTraitCollection:v7];
    if (!v17 && !v18)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v111 = 0;
    if (!v17)
    {
LABEL_37:
      if (v16)
      {
        v27 = (*&self->_flags >> 4) & 3;
        v117 = 0;
        _getDefaultTitleAndSubtitleFontStylesForButtonSize(v27, &v117, 0, 0, v7);
        v28 = v117;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_65;
    }
  }

  v29 = v113;
  v30 = [MEMORY[0x1E695DF90] dictionary];
  v106 = v29;
  if (!v29)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v104 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v122 = self;
        v123 = 2112;
        v124 = v12;
        _os_log_fault_impl(&dword_188A29000, v104, OS_LOG_TYPE_FAULT, "textColor is nil resolving configuration (%@) effectiveBehavior (%@)", buf, 0x16u);
      }
    }

    else
    {
      v104 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D618) + 8);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v122 = self;
        v123 = 2112;
        v124 = v12;
        _os_log_impl(&dword_188A29000, v104, OS_LOG_TYPE_ERROR, "textColor is nil resolving configuration (%@) effectiveBehavior (%@)", buf, 0x16u);
      }
    }

    v29 = 0;
  }

  v105 = v6;
  [v30 setObject:v29 forKeyedSubscript:*off_1E70EC920];
  v31 = [(UIButtonConfiguration *)self _resolvedTitleAlignment];
  if (v31)
  {
    v32 = v31;
    v33 = objc_opt_new();
    v34 = [v7 layoutDirection];
    v35 = 1;
    v36 = 4;
    if (v32 == 1)
    {
      v36 = 2 * (v34 == 1);
    }

    if (v32 != 2)
    {
      v35 = v36;
    }

    if (v32 == 3)
    {
      v37 = 2 * (v34 != 1);
    }

    else
    {
      v37 = v35;
    }

    [v33 setAlignment:v37];
    [v30 setObject:v33 forKeyedSubscript:*off_1E70EC988];
  }

  v38 = +[UILabel _tooBigChars];
  if ([(NSAttributedString *)self->_attributedTitle length])
  {
    [v30 setObject:v116 forKeyedSubscript:*off_1E70EC918];
    v39 = _UIButtonUpdateStringAttributes(self->_attributedTitle, v30, self->_titleTextAttributesTransformer, v7);
    resolvedTitle = self->_resolvedTitle;
    self->_resolvedTitle = v39;

    v41 = [(NSAttributedString *)self->_resolvedTitle string];
    self->_flags = (*&self->_flags & 0xFFFFFFFFFFEFFFFFLL | (([v41 rangeOfCharacterFromSet:v38] != 0x7FFFFFFFFFFFFFFFLL) << 20));
  }

  else
  {
    *&self->_flags &= ~0x100000uLL;
  }

  if ([(NSAttributedString *)self->_attributedSubtitle length])
  {
    [v30 setObject:v111 forKeyedSubscript:*off_1E70EC918];
    v42 = _UIButtonUpdateStringAttributes(self->_attributedSubtitle, v30, self->_subtitleTextAttributesTransformer, v7);
    resolvedSubtitle = self->_resolvedSubtitle;
    self->_resolvedSubtitle = v42;

    v44 = [(NSAttributedString *)self->_resolvedSubtitle string];
    self->_flags = (*&self->_flags & 0xFFFFFFFFFFDFFFFFLL | (([v44 rangeOfCharacterFromSet:v38] != 0x7FFFFFFFFFFFFFFFLL) << 21));
  }

  else
  {
    *&self->_flags &= ~0x200000uLL;
  }

  if (v16)
  {
    v45 = [(NSAttributedString *)self->_attributedTitle length];
    v46 = v112;
    if (v105 != 1)
    {
      v46 = v24;
    }

    if (!v45)
    {
      v46 = v114;
    }

    v28 = v46;
  }

  else
  {
    v28 = 0;
  }

LABEL_65:
  v115 = v24;
  v47 = self->_preferredSymbolConfigurationForImage;
  if (v47)
  {
    v48 = v47;
    p_resolvedSymbolConfig = &self->_resolvedSymbolConfig;
    resolvedSymbolConfig = self->_resolvedSymbolConfig;
    self->_resolvedSymbolConfig = v48;
  }

  else
  {
    resolvedSymbolConfig = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    p_resolvedSymbolConfig = &self->_resolvedSymbolConfig;
    objc_storeStrong(&self->_resolvedSymbolConfig, resolvedSymbolConfig);
  }

  if ([v7 userInterfaceIdiom] != 6)
  {
    v59 = [(UIImageSymbolConfiguration *)self->_preferredSymbolConfigurationForImage _hasSpecifiedScale];
    if (v16)
    {
      v60 = *p_resolvedSymbolConfig;
      v57 = v110;
      if (v59)
      {
        [UIImageSymbolConfiguration configurationWithTextStyle:v28];
      }

      else
      {
        [UIImageSymbolConfiguration configurationWithTextStyle:v28 scale:3];
      }
      v62 = ;
      v63 = [(UIImageConfiguration *)v60 configurationByApplyingConfiguration:v62];
      v58 = v113;
    }

    else
    {
      v57 = v110;
      v58 = v113;
      if (v59)
      {
        goto LABEL_80;
      }

      v61 = *p_resolvedSymbolConfig;
      v62 = [UIImageSymbolConfiguration configurationWithScale:3];
      v63 = [(UIImageConfiguration *)v61 configurationByApplyingConfiguration:v62];
    }

    v64 = *p_resolvedSymbolConfig;
    *p_resolvedSymbolConfig = v63;

LABEL_80:
    if (*p_resolvedSymbolConfig)
    {
      v65 = +[UIFontMetrics defaultMetrics];
      [v65 scaledValueForValue:v7 compatibleWithTraitCollection:self->_imageReservation];
      self->_resolvedImageReservation = v66;
    }

    else if (self->_image)
    {
      self->_resolvedImageReservation = self->_imageReservation;
    }

    else
    {
      self->_resolvedImageReservation = 0.0;
    }

    goto LABEL_85;
  }

  if (v16)
  {
    v51 = [(UIButtonConfiguration *)self symbolStyleForSize:(*&self->_flags >> 4) & 3 hasText:v23];

    v52 = [UIImageSymbolConfiguration configurationWithTextStyle:v51];
    v53 = [UIImageSymbolConfiguration configurationWithWeight:5];
    v54 = [(UIImageConfiguration *)self->_resolvedSymbolConfig configurationByApplyingConfiguration:v52];
    v55 = [v54 configurationByApplyingConfiguration:v53];
    v56 = self->_resolvedSymbolConfig;
    self->_resolvedSymbolConfig = v55;

    v28 = v51;
  }

  v57 = v110;
  v58 = v113;
LABEL_85:
  v67 = self->_flags;
  if ((*&v67 & 0x40) != 0)
  {
    [v116 lineHeight];
    self->_resolvedActivityIndicatorSize = v70;
    resolvedImageColor = [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors effectiveActivityIndicatorColorFromEffectiveColor:v58 state:v57];
    activityIndicatorColorTransformer = self->_activityIndicatorColorTransformer;
    if (activityIndicatorColorTransformer)
    {
      resolvedActivityIndicatorColor = activityIndicatorColorTransformer[2](activityIndicatorColorTransformer, resolvedImageColor);
      objc_storeStrong(&self->_resolvedActivityIndicatorColor, resolvedActivityIndicatorColor);
    }

    else
    {
      v73 = resolvedImageColor;
      resolvedActivityIndicatorColor = self->_resolvedActivityIndicatorColor;
      self->_resolvedActivityIndicatorColor = v73;
    }
  }

  else
  {
    if (!v107)
    {
      goto LABEL_94;
    }

    imageColorTransformer = self->_imageColorTransformer;
    if (imageColorTransformer)
    {
      resolvedImageColor = imageColorTransformer[2](imageColorTransformer, v58);
      objc_storeStrong(&self->_resolvedImageColor, resolvedImageColor);
    }

    else
    {
      v86 = v58;
      resolvedImageColor = self->_resolvedImageColor;
      self->_resolvedImageColor = v86;
    }
  }

  v67 = self->_flags;
LABEL_94:
  if ((*&v67 & 0xC00000) == 0x400000)
  {
    resolvedIndicatorColor = self->_resolvedIndicatorColor;
    self->_resolvedIndicatorColor = 0;

    resolvedIndicatorSymbolConfig = self->_resolvedIndicatorSymbolConfig;
    self->_resolvedIndicatorSymbolConfig = 0;
    v76 = v115;
  }

  else
  {
    indicatorColorTransformer = self->_indicatorColorTransformer;
    if (indicatorColorTransformer)
    {
      v78 = indicatorColorTransformer[2](indicatorColorTransformer, v58);
      objc_storeStrong(&self->_resolvedIndicatorColor, v78);
    }

    else
    {
      v79 = v58;
      v78 = self->_resolvedIndicatorColor;
      self->_resolvedIndicatorColor = v79;
    }

    resolvedIndicatorSymbolConfig = @"UICTFontTextStyleBody";
    if (v108)
    {
      v76 = v115;
      v80 = [UIImageSymbolConfiguration configurationWithTextStyle:v115 scale:1];
      v81 = self->_resolvedIndicatorSymbolConfig;
      self->_resolvedIndicatorSymbolConfig = v80;
    }

    else
    {
      if (v109)
      {
        v82 = [UIImageSymbolConfiguration configurationWithTextStyle:v114 scale:1];
        v81 = self->_resolvedIndicatorSymbolConfig;
        self->_resolvedIndicatorSymbolConfig = v82;
      }

      else
      {
        v83 = *p_resolvedSymbolConfig;
        if (*p_resolvedSymbolConfig)
        {
          v81 = [UIImageSymbolConfiguration configurationWithScale:1];
          v84 = [(UIImageConfiguration *)v83 configurationByApplyingConfiguration:v81];
          v85 = self->_resolvedIndicatorSymbolConfig;
          self->_resolvedIndicatorSymbolConfig = v84;
        }

        else
        {
          v87 = [UIImageSymbolConfiguration configurationWithTextStyle:resolvedIndicatorSymbolConfig scale:1];
          v81 = self->_resolvedIndicatorSymbolConfig;
          self->_resolvedIndicatorSymbolConfig = v87;
        }

        v58 = v113;
      }

      v76 = v115;
    }
  }

  background = self->_background;
  if ((!background || (*&background->_configurationFlags & 0x10) == 0) && ([v12 effectiveBackgroundColorFromBaseColor:self->_baseBackgroundColor state:v57 traitCollection:v7], v89 = objc_claimAutoreleasedReturnValue(), -[UIBackgroundConfiguration _setBackgroundColor:](self->_background, v89), v89, (background = self->_background) == 0) || (*&background->_configurationFlags & 0x40) == 0)
  {
    v91 = [v12 effectiveBackgroundVisualEffectFromBaseColor:self->_baseBackgroundColor state:v57 traitCollection:v7];
    v92 = self->_background;
    if (v92)
    {
      objc_setProperty_nonatomic_copy(v92, v90, v91, 56);
    }
  }

  if (_UISolariumEnabled())
  {
    v93 = self->_background;
    if (!v93 || (*(&v93->_configurationFlags + 2) & 1) == 0)
    {
      v94 = [v12 effectiveMaterialFromBaseColor:self->_baseBackgroundColor state:v57 adaptive:(*&self->_flags & 0x40000000) == 0 traitCollection:v7];
      [(UIBackgroundConfiguration *)self->_background __setMaterial:v94];
    }
  }

  if ([v7 userInterfaceIdiom] == 6)
  {
    v95 = self->_background;
    if (!v95 || (*&v95->_configurationFlags & 0x80) == 0)
    {
      v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIVisualEffectViewCaptureGroupName(%p)", v4];
      [(UIBackgroundConfiguration *)self->_background __setVisualEffectGroupName:v96];
    }
  }

  self->_resolvedIdiom = [v7 userInterfaceIdiom];
  v97 = [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors effectiveMonochromaticTreatmentFromBaseColor:self->_baseForegroundColor traitCollection:v7];
  v98 = self->_flags;
  if (v97 < 0)
  {
    v99 = (*&v98 | 0x8000000);
  }

  else
  {
    v99 = (*&v98 & 0xFFFFFFFFC7FFFFFFLL | ((v97 & 3) << 28));
  }

  self->_flags = v99;
  v100 = [(_UIButtonConfigurationStyleBehaviors *)self->_behaviors contentMaterialRenderingMode];
  v101 = self->_flags;
  if (v100 <= 0)
  {
    v102 = (*&v101 | 0x80000000);
  }

  else
  {
    v102 = (*&v101 & 0xFFFFFFFC7FFFFFFFLL | ((v100 & 3) << 32));
  }

  self->_flags = v102;
}

- (void)_setSymbolContentTransition:(id)a3
{
  v4 = a3;
  symbolContentTransition = [(UISymbolContentTransition *)self->_symbolContentTransition contentTransition];
  v6 = v4;
  v11 = v6;
  if (symbolContentTransition == v6)
  {

    v9 = symbolContentTransition;
LABEL_9:

    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !symbolContentTransition)
  {

    goto LABEL_8;
  }

  v7 = [(UISymbolContentTransition *)symbolContentTransition isEqual:v6];

  v8 = v11;
  if (!v7)
  {
LABEL_8:
    v9 = [(UISymbolContentTransition *)self->_symbolContentTransition options];
    v10 = [UISymbolContentTransition transitionWithContentTransition:v11 options:v9];
    symbolContentTransition = self->_symbolContentTransition;
    self->_symbolContentTransition = v10;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setSymbolContentTransitionOptions:(id)a3
{
  v4 = a3;
  symbolContentTransition = self->_symbolContentTransition;
  if (symbolContentTransition)
  {
    v12 = v4;
    v6 = [(UISymbolContentTransition *)symbolContentTransition options];
    v7 = v12;
    v8 = v7;
    if (v6 == v7)
    {

      v10 = v6;
    }

    else
    {
      if (v7 && v6)
      {
        v9 = [(UISymbolContentTransition *)v6 isEqual:v7];

        v4 = v12;
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v10 = [(UISymbolContentTransition *)self->_symbolContentTransition contentTransition];
      v11 = [UISymbolContentTransition transitionWithContentTransition:v10 options:v8];
      v6 = self->_symbolContentTransition;
      self->_symbolContentTransition = v11;
    }

    v4 = v12;
  }

LABEL_11:
}

- (double)_resolvedIndicatorPadding
{
  result = 4.0;
  if ((*(&self->_flags + 2) & 0x80) == 0)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)_resolvedColorMaterialRenderingMode
{
  flags = self->_flags;
  if (*&flags < 0)
  {
    return 0;
  }

  else
  {
    return HIDWORD(*&flags) & 3;
  }
}

+ (id)tintedGlassButtonConfiguration
{
  v2 = [a1 alloc];
  v3 = +[_UIButtonConfigurationStyleBehaviors tintedGlassBehaviors];
  v4 = [v2 _initWithBehaviors:v3];

  return v4;
}

id __67___UIButtonConfiguration__baseAttributesTransformerForTransformer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *off_1E70EC920;
  v6 = [v3 objectForKeyedSubscript:*off_1E70EC920];
  v7 = (*(v4 + 16))(v4, v6);
  [v3 setObject:v7 forKeyedSubscript:v5];

  return v3;
}

@end