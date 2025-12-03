@interface _UIBackgroundViewConfiguration
+ (_UIBackgroundViewConfiguration)defaultGroupedListCellConfigurationForState:(void *)state traitCollection:;
+ (_UIBackgroundViewConfiguration)defaultGroupedListHeaderFooterConfigurationForState:traitCollection:;
+ (_UIBackgroundViewConfiguration)defaultOutlineCellConfigurationForState:(void *)state traitCollection:;
+ (_UIBackgroundViewConfiguration)defaultOutlineRootParentCellConfigurationForState:(void *)state traitCollection:;
+ (_UIBackgroundViewConfiguration)defaultPlainListCellConfigurationForState:(void *)state traitCollection:;
+ (_UIBackgroundViewConfiguration)defaultPlainListHeaderFooterConfigurationForState:(void *)state traitCollection:;
+ (id)defaultGroupedListCellConfigurationForState:(unint64_t)state;
+ (id)defaultGroupedListHeaderFooterConfigurationForState:(unint64_t)state;
+ (id)defaultInsetGroupedListCellConfigurationForState:(unint64_t)state;
+ (id)defaultInsetGroupedListCellConfigurationForState:(void *)state traitCollection:;
+ (id)defaultInsetGroupedListHeaderFooterConfigurationForState:(uint64_t)state traitCollection:(void *)collection;
+ (id)defaultInsetGroupedListHeaderFooterConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state;
+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)state;
+ (id)defaultPlainListCellConfigurationForState:(unint64_t)state;
+ (id)defaultPlainListHeaderFooterConfigurationForState:(unint64_t)state;
- (BOOL)_backgroundFillIsEqual:(id)equal withTintColor:(id)color;
- (BOOL)_hasStroke;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)backgroundInsets;
- (NSString)description;
- (_UIBackgroundViewConfiguration)init;
- (_UIBackgroundViewConfiguration)initWithCoder:(id)coder;
- (id)_updatedConfigurationForState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedBackgroundColorForTintColor:(id)color;
- (id)resolvedStrokeColorForTintColor:(id)color;
- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection;
- (unint64_t)hash;
- (void)_setBackgroundColor:(uint64_t)color;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColorMode:(int64_t)mode;
- (void)setCustomView:(id)view;
- (void)setStrokeColor:(id)color;
- (void)setStrokeColorMode:(int64_t)mode;
- (void)shadowProperties;
@end

@implementation _UIBackgroundViewConfiguration

+ (id)defaultPlainListCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultPlainListCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UIBackgroundViewConfiguration)defaultPlainListCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  v5 = _UITableConstantsForTraitCollection(stateCopy);
  v6 = objc_alloc_init(_UIBackgroundViewConfiguration);
  v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v5)
  {
    [v5 defaultCellBackgroundPropertiesForTableViewStyle:0 state:v7 traitCollection:stateCopy];
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v9, v10);
  _UIBackgroundViewConfigurationApplyProperties(v6, v9, stateCopy);
  if (v6)
  {
    v6->_defaultStyle = 1;
  }

  __destructor_8_s8_s16_s24_s80(v10);

  return v6;
}

+ (id)defaultPlainListHeaderFooterConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultPlainListHeaderFooterConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UIBackgroundViewConfiguration)defaultPlainListHeaderFooterConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  v5 = _UITableConstantsForTraitCollection(stateCopy);
  v6 = objc_alloc_init(_UIBackgroundViewConfiguration);
  v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v5)
  {
    [v5 defaultHeaderFooterBackgroundPropertiesForTableViewStyle:0 cellConfigurationState:v7 traitCollection:stateCopy floating:(a2 >> 11) & 1];
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v9, v10);
  _UIBackgroundViewConfigurationApplyProperties(v6, v9, stateCopy);
  if (v6)
  {
    v6->_defaultStyle = 2;
  }

  __destructor_8_s8_s16_s24_s80(v10);

  return v6;
}

+ (id)defaultGroupedListCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultGroupedListCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UIBackgroundViewConfiguration)defaultGroupedListCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  v5 = _UITableConstantsForTraitCollection(stateCopy);
  v6 = objc_alloc_init(_UIBackgroundViewConfiguration);
  v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v5)
  {
    [v5 defaultCellBackgroundPropertiesForTableViewStyle:1 state:v7 traitCollection:stateCopy];
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v9, v10);
  _UIBackgroundViewConfigurationApplyProperties(v6, v9, stateCopy);
  if (v6)
  {
    v6->_defaultStyle = 3;
  }

  __destructor_8_s8_s16_s24_s80(v10);

  return v6;
}

+ (id)defaultInsetGroupedListCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultInsetGroupedListCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (id)defaultInsetGroupedListCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  v5 = objc_opt_self();
  v6 = [(_UIBackgroundViewConfiguration *)v5 defaultGroupedListCellConfigurationForState:a2 traitCollection:stateCopy];

  return v6;
}

+ (id)defaultInsetGroupedListHeaderFooterConfigurationForState:(unint64_t)state
{
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [_UIBackgroundViewConfiguration defaultInsetGroupedListHeaderFooterConfigurationForState:self traitCollection:v4];

  return v5;
}

+ (id)defaultInsetGroupedListHeaderFooterConfigurationForState:(uint64_t)state traitCollection:(void *)collection
{
  collectionCopy = collection;
  objc_opt_self();
  if ([collectionCopy userInterfaceIdiom] == 6)
  {
    v3 = objc_alloc_init(_UIBackgroundViewConfiguration);
    v4 = v3;
    if (v3)
    {
      v3->_defaultStyle = 8;
    }
  }

  else
  {
    v4 = +[_UIBackgroundViewConfiguration defaultGroupedListHeaderFooterConfigurationForState:traitCollection:];
  }

  return v4;
}

+ (_UIBackgroundViewConfiguration)defaultGroupedListHeaderFooterConfigurationForState:traitCollection:
{
  objc_opt_self();
  v0 = objc_alloc_init(_UIBackgroundViewConfiguration);
  if (v0)
  {
    v0->_defaultStyle = 4;
  }

  return v0;
}

+ (id)defaultGroupedListHeaderFooterConfigurationForState:(unint64_t)state
{
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = +[_UIBackgroundViewConfiguration defaultGroupedListHeaderFooterConfigurationForState:traitCollection:];

  return v4;
}

+ (id)defaultOutlineParentCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultOutlineRootParentCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UIBackgroundViewConfiguration)defaultOutlineRootParentCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  v5 = objc_alloc_init(_UIBackgroundViewConfiguration);
  v6 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = _UITableConstantsForTraitCollection(stateCopy);
  v8 = v7;
  if (v7)
  {
    [v7 defaultSidebarHeaderBackgroundPropertiesWithState:v6 traitCollection:stateCopy];
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v10, &v11);
  _UIBackgroundViewConfigurationApplyProperties(v5, v10, stateCopy);
  if (v5)
  {
    v5->_defaultStyle = 6;
  }

  __destructor_8_s8_s16_s24_s80(&v11);

  return v5;
}

+ (id)defaultOutlineCellConfigurationForState:(unint64_t)state
{
  v5 = +[UITraitCollection _fallbackTraitCollection];
  v6 = [(_UIBackgroundViewConfiguration *)self defaultOutlineCellConfigurationForState:state traitCollection:v5];

  return v6;
}

+ (_UIBackgroundViewConfiguration)defaultOutlineCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  objc_opt_self();
  _splitViewControllerContext = [stateCopy _splitViewControllerContext];
  v6 = objc_alloc_init(_UIBackgroundViewConfiguration);
  v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:a2];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = _UITableConstantsForTraitCollection(stateCopy);
  v9 = v8;
  if (v8)
  {
    if (_splitViewControllerContext == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [v8 defaultSidebarCellBackgroundPropertiesForStyle:v10 state:v7 traitCollection:stateCopy];
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v12, &v13);
  _UIBackgroundViewConfigurationApplyProperties(v6, v12, stateCopy);
  if (v6)
  {
    v6->_defaultStyle = 5;
  }

  __destructor_8_s8_s16_s24_s80(&v13);

  return v6;
}

- (id)updatedConfigurationForState:(unint64_t)state traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [(_UIBackgroundViewConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle)
  {
    v9 = collectionCopy;
    v10 = objc_opt_self();
    if (!v9)
    {
      v9 = +[UITraitCollection _fallbackTraitCollection];
    }

    if (defaultStyle > 4)
    {
      if (defaultStyle > 6)
      {
        if (defaultStyle == 7)
        {
          v11 = [(_UIBackgroundViewConfiguration *)v10 defaultInsetGroupedListCellConfigurationForState:state traitCollection:v9];
          goto LABEL_22;
        }

        if (defaultStyle == 8)
        {
          v11 = [_UIBackgroundViewConfiguration defaultInsetGroupedListHeaderFooterConfigurationForState:v10 traitCollection:v9];
          goto LABEL_22;
        }

        goto LABEL_72;
      }

      if (defaultStyle == 5)
      {
        [(_UIBackgroundViewConfiguration *)v10 defaultOutlineCellConfigurationForState:state traitCollection:v9];
      }

      else
      {
        [(_UIBackgroundViewConfiguration *)v10 defaultOutlineRootParentCellConfigurationForState:state traitCollection:v9];
      }
    }

    else
    {
      if (defaultStyle <= 2)
      {
        if (defaultStyle == 1)
        {
          v11 = [(_UIBackgroundViewConfiguration *)v10 defaultPlainListCellConfigurationForState:state traitCollection:v9];
          goto LABEL_22;
        }

        if (defaultStyle == 2)
        {
          v11 = [(_UIBackgroundViewConfiguration *)v10 defaultPlainListHeaderFooterConfigurationForState:state traitCollection:v9];
LABEL_22:
          v12 = v11;
          goto LABEL_23;
        }

LABEL_72:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__defaultConfigurationForStyle_state_traitCollection_ object:v10 file:@"_UIBackgroundViewConfiguration.m" lineNumber:436 description:{@"Unknown style: %ld", defaultStyle}];

        v12 = 0;
LABEL_23:

        configurationFlags = self->_configurationFlags;
        if (configurationFlags)
        {
          if ((configurationFlags & 2) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v12)
          {
            v18 = *(v12 + 16);
          }

          else
          {
            v18 = 0;
          }

          [(UIBackgroundConfiguration *)v7 _setCustomView:v18];
          configurationFlags = self->_configurationFlags;
          if ((configurationFlags & 2) != 0)
          {
LABEL_27:
            if ((configurationFlags & 4) != 0)
            {
              goto LABEL_34;
            }

LABEL_31:
            if (v12)
            {
              v15 = *(v12 + 144);
              v16 = *(v12 + 160);
              if (!v7)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v15 = 0uLL;
              v16 = 0uLL;
              if (!v7)
              {
LABEL_34:
                if ((configurationFlags & 8) != 0)
                {
                  goto LABEL_38;
                }

                if (v12)
                {
                  v19 = *(v12 + 32);
                  if (!v7)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v19 = 0;
                  if (!v7)
                  {
LABEL_38:
                    if ((configurationFlags & 0x10) == 0)
                    {
                      if (v12)
                      {
                        if (v7)
                        {
                          v20 = *(v12 + 40);
                          *(v7 + 40) = v20;
                          if (v20)
                          {
                            v21 = *(v7 + 48);
                            *(v7 + 48) = 0;
                          }
                        }

                        v22 = *(v12 + 48);
                      }

                      else
                      {
                        v22 = 0;
                        if (v7)
                        {
                          *(v7 + 40) = 0;
                        }
                      }

                      [(_UIBackgroundViewConfiguration *)v7 _setBackgroundColor:v22];
                      configurationFlags = self->_configurationFlags;
                    }

                    if ((configurationFlags & 0x20) == 0)
                    {
                      if (v12)
                      {
                        v14 = *(v12 + 56);
                        if (!v7)
                        {
                          goto LABEL_49;
                        }

                        goto LABEL_48;
                      }

                      v14 = 0;
                      if (v7)
                      {
LABEL_48:
                        objc_setProperty_nonatomic_copy(v7, v13, v14, 56);
                        configurationFlags = self->_configurationFlags;
                      }
                    }

LABEL_49:
                    if ((configurationFlags & 0x40) != 0)
                    {
                      goto LABEL_56;
                    }

                    if (v12)
                    {
                      v23 = *(v12 + 64);
                      if (!v7)
                      {
LABEL_53:
                        if (v12)
                        {
                          v24 = *(v12 + 72);
                        }

                        else
                        {
                          v24 = 0;
                        }

                        [(UIBackgroundConfiguration *)v7 _setImage:v24];
                        configurationFlags = self->_configurationFlags;
LABEL_56:
                        if ((configurationFlags & 0x80) != 0)
                        {
                          goto LABEL_60;
                        }

                        if (v12)
                        {
                          *&v15 = *(v12 + 80);
                          if (!v7)
                          {
                            goto LABEL_60;
                          }
                        }

                        else
                        {
                          *&v15 = 0;
                          if (!v7)
                          {
LABEL_60:
                            if ((configurationFlags & 0x100) != 0)
                            {
                              goto LABEL_64;
                            }

                            if (v12)
                            {
                              *&v15 = *(v12 + 88);
                              if (!v7)
                              {
                                goto LABEL_64;
                              }
                            }

                            else
                            {
                              *&v15 = 0;
                              if (!v7)
                              {
LABEL_64:
                                [v7 __setMaskedCorners:{objc_msgSend(v12, "__maskedCorners", v14, *&v15, *&v16)}];
                                __visualEffectGroupName = [v12 __visualEffectGroupName];
                                [v7 __setVisualEffectGroupName:__visualEffectGroupName];

                                [v7 __setVisualEffectblurClippingMode:{objc_msgSend(v12, "__visualEffectblurClippingMode")}];
                                [v7 _setStrokeLocation:{objc_msgSend(v12, "_strokeLocation")}];
                                _shadowProperties = [v7 _shadowProperties];
                                if (_shadowProperties)
                                {
                                }

                                else
                                {
                                  _shadowProperties2 = [v12 _shadowProperties];

                                  if (!_shadowProperties2)
                                  {
LABEL_68:

                                    goto LABEL_69;
                                  }
                                }

                                shadowProperties = [(_UIBackgroundViewConfiguration *)v7 shadowProperties];
                                shadowProperties2 = [(_UIBackgroundViewConfiguration *)v12 shadowProperties];
                                [shadowProperties _applyPropertiesFromDefaultProperties:shadowProperties2];

                                goto LABEL_68;
                              }
                            }

                            *(v7 + 88) = v15;
                            goto LABEL_64;
                          }
                        }

                        *(v7 + 80) = v15;
                        configurationFlags = self->_configurationFlags;
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      v23 = 0;
                      if (!v7)
                      {
                        goto LABEL_53;
                      }
                    }

                    *(v7 + 64) = v23;
                    goto LABEL_53;
                  }
                }

                *(v7 + 32) = v19;
                configurationFlags = self->_configurationFlags;
                goto LABEL_38;
              }
            }

            *(v7 + 144) = v15;
            *(v7 + 160) = v16;
            configurationFlags = self->_configurationFlags;
            goto LABEL_34;
          }
        }

        [v12 _cornerRadius];
        [v7 _setCornerRadius:?];
        configurationFlags = self->_configurationFlags;
        if ((configurationFlags & 4) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (defaultStyle == 3)
      {
        [(_UIBackgroundViewConfiguration *)v10 defaultGroupedListCellConfigurationForState:state traitCollection:v9];
      }

      else
      {
        +[_UIBackgroundViewConfiguration defaultGroupedListHeaderFooterConfigurationForState:traitCollection:];
      }
    }
    v11 = ;
    goto LABEL_22;
  }

LABEL_69:

  return v7;
}

- (void)_setBackgroundColor:(uint64_t)color
{
  v4 = a2;
  if (color)
  {
    v5 = v4;
    objc_storeStrong((color + 48), a2);
    v4 = v5;
    if (v5)
    {
      *(color + 40) = 0;
    }
  }
}

- (void)shadowProperties
{
  if (self)
  {
    selfCopy = self;
    v3 = self[12];
    if (!v3)
    {
      v4 = objc_alloc_init(UIShadowProperties);
      v5 = selfCopy[12];
      selfCopy[12] = v4;

      v3 = selfCopy[12];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (_UIBackgroundViewConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIBackgroundViewConfiguration;
  result = [(_UIBackgroundViewConfiguration *)&v3 init];
  if (result)
  {
    result->_strokeLocation = 0;
    result->_maskedCorners = 15;
    result->_defaultStyle = 0;
  }

  return result;
}

- (_UIBackgroundViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = _UIBackgroundViewConfiguration;
  v5 = [(_UIBackgroundViewConfiguration *)&v47 init];
  if (v5)
  {
    if (([coderCopy requiresSecureCoding] & 1) == 0)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customView"];
      customView = v5->_customView;
      v5->_customView = v6;
    }

    [coderCopy decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v8;
    v5->_maskedCorners = [coderCopy decodeIntegerForKey:@"maskedCorners"];
    v5->_backgroundColorMode = [coderCopy decodeIntegerForKey:@"backgroundColorMode"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visualEffect"];
    visualEffect = v5->_visualEffect;
    v5->_visualEffect = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visualEffectGroupName"];
    visualEffectGroupName = v5->_visualEffectGroupName;
    v5->_visualEffectGroupName = v13;

    if ([coderCopy containsValueForKey:@"visualEffectblurClippingMode"])
    {
      v15 = [coderCopy decodeIntegerForKey:@"visualEffectblurClippingMode"];
    }

    else
    {
      v15 = [coderCopy decodeBoolForKey:@"visualEffectAllowsTransparentBlurring"];
    }

    v5->_visualEffectblurClippingMode = v15;
    [coderCopy decodeDirectionalEdgeInsetsForKey:@"backgroundInsets"];
    v5->_backgroundInsets.top = v16;
    v5->_backgroundInsets.leading = v17;
    v5->_backgroundInsets.bottom = v18;
    v5->_backgroundInsets.trailing = v19;
    v5->_edgesAddingLayoutMarginsToBackgroundInsets = [coderCopy decodeIntegerForKey:@"edgesAddingLayoutMarginsToBackgroundInsets"];
    v5->_strokeColorMode = [coderCopy decodeIntegerForKey:@"strokeColorMode"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
    strokeColor = v5->_strokeColor;
    v5->_strokeColor = v20;

    [coderCopy decodeDoubleForKey:@"strokeWidth"];
    v5->_strokeWidth = v22;
    [coderCopy decodeDoubleForKey:@"strokeOutset"];
    v5->_strokeOutset = v23;
    v5->_strokeLocation = [coderCopy decodeIntegerForKey:@"strokeLocation"];
    if ([coderCopy containsValueForKey:@"shadowProperties"])
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowProperties"];
      shadowProperties = v5->_shadowProperties;
      v5->_shadowProperties = v24;
    }

    else
    {
      v26 = [coderCopy decodeIntegerForKey:@"shadowType"];
      shadowProperties = +[UITraitCollection _fallbackTraitCollection];
      v27 = _UIShadowPropertiesFromShadowType(v26, shadowProperties);
      v28 = v5->_shadowProperties;
      v5->_shadowProperties = v27;
    }

    v5->_defaultStyle = [coderCopy decodeIntegerForKey:@"defaultStyle"];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"customView"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFE | [coderCopy decodeBoolForKey:v29];

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([coderCopy decodeBoolForKey:v30])
    {
      v31 = 2;
    }

    else
    {
      v31 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFD | v31;

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundInsets"];
    if ([coderCopy decodeBoolForKey:v32])
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFB | v33;

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"edgesAddingLayoutMarginsToBackgroundInsets"];
    if ([coderCopy decodeBoolForKey:v34])
    {
      v35 = 8;
    }

    else
    {
      v35 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFF7 | v35;

    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColor"];
    if ([coderCopy decodeBoolForKey:v36])
    {
      v37 = 16;
    }

    else
    {
      v37 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFEF | v37;

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffect"];
    if ([coderCopy decodeBoolForKey:v38])
    {
      v39 = 32;
    }

    else
    {
      v39 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFDF | v39;

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
    if ([coderCopy decodeBoolForKey:v40])
    {
      v41 = 64;
    }

    else
    {
      v41 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFBF | v41;

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
    if ([coderCopy decodeBoolForKey:v42])
    {
      v43 = 128;
    }

    else
    {
      v43 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFF7F | v43;

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeOutset"];
    if ([coderCopy decodeBoolForKey:v44])
    {
      v45 = 256;
    }

    else
    {
      v45 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFEFF | v45;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy requiresSecureCoding] & 1) == 0)
  {
    [coderCopy encodeObject:self->_customView forKey:@"customView"];
  }

  [coderCopy encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coderCopy encodeInteger:self->_maskedCorners forKey:@"maskedCorners"];
  [coderCopy encodeInteger:self->_backgroundColorMode forKey:@"backgroundColorMode"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeObject:self->_visualEffect forKey:@"visualEffect"];
  [coderCopy encodeObject:self->_visualEffectGroupName forKey:@"visualEffectGroupName"];
  [coderCopy encodeInteger:self->_visualEffectblurClippingMode forKey:@"visualEffectblurClippingMode"];
  [coderCopy encodeDirectionalEdgeInsets:@"backgroundInsets" forKey:{self->_backgroundInsets.top, self->_backgroundInsets.leading, self->_backgroundInsets.bottom, self->_backgroundInsets.trailing}];
  [coderCopy encodeInteger:self->_edgesAddingLayoutMarginsToBackgroundInsets forKey:@"edgesAddingLayoutMarginsToBackgroundInsets"];
  [coderCopy encodeInteger:self->_strokeColorMode forKey:@"strokeColorMode"];
  [coderCopy encodeObject:self->_strokeColor forKey:@"strokeColor"];
  [coderCopy encodeDouble:@"strokeWidth" forKey:self->_strokeWidth];
  [coderCopy encodeDouble:@"strokeOutset" forKey:self->_strokeOutset];
  [coderCopy encodeInteger:self->_strokeLocation forKey:@"strokeLocation"];
  shadowProperties = self->_shadowProperties;
  if (shadowProperties)
  {
    [coderCopy encodeInteger:-[UIShadowProperties _backgroundConfigurationShadowType](shadowProperties forKey:{"_backgroundConfigurationShadowType"), @"shadowType"}];
    [coderCopy encodeObject:self->_shadowProperties forKey:@"shadowProperties"];
  }

  [coderCopy encodeInteger:self->_defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"customView"];
  [coderCopy encodeBool:configurationFlags & 1 forKey:v6];

  v7 = (*&self->_configurationFlags >> 1) & 1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [coderCopy encodeBool:v7 forKey:v8];

  v9 = (*&self->_configurationFlags >> 2) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundInsets"];
  [coderCopy encodeBool:v9 forKey:v10];

  v11 = (*&self->_configurationFlags >> 3) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"edgesAddingLayoutMarginsToBackgroundInsets"];
  [coderCopy encodeBool:v11 forKey:v12];

  v13 = (*&self->_configurationFlags >> 4) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColor"];
  [coderCopy encodeBool:v13 forKey:v14];

  v15 = (*&self->_configurationFlags >> 5) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffect"];
  [coderCopy encodeBool:v15 forKey:v16];

  v17 = (*&self->_configurationFlags >> 6) & 1;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
  [coderCopy encodeBool:v17 forKey:v18];

  v19 = (*&self->_configurationFlags >> 7) & 1;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
  [coderCopy encodeBool:v19 forKey:v20];

  v21 = HIBYTE(*&self->_configurationFlags) & 1;
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeOutset"];
  [coderCopy encodeBool:v21 forKey:v22];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 16), self->_customView);
    *(v6 + 24) = self->_cornerRadius;
    *(v6 + 120) = self->_maskedCorners;
    *(v6 + 40) = self->_backgroundColorMode;
    objc_storeStrong((v6 + 48), self->_backgroundColor);
    v7 = [(UIVisualEffect *)self->_visualEffect copy];
    v8 = *(v6 + 56);
    *(v6 + 56) = v7;

    v9 = [(NSString *)self->_visualEffectGroupName copy];
    v10 = *(v6 + 128);
    *(v6 + 128) = v9;

    *(v6 + 136) = self->_visualEffectblurClippingMode;
    v11 = *&self->_backgroundInsets.bottom;
    *(v6 + 144) = *&self->_backgroundInsets.top;
    *(v6 + 160) = v11;
    *(v6 + 32) = self->_edgesAddingLayoutMarginsToBackgroundInsets;
    *(v6 + 64) = self->_strokeColorMode;
    objc_storeStrong((v6 + 72), self->_strokeColor);
    *(v6 + 80) = self->_strokeWidth;
    *(v6 + 88) = self->_strokeOutset;
    *(v6 + 112) = self->_strokeLocation;
    v12 = [(UIShadowProperties *)self->_shadowProperties copyWithZone:zone];
    v13 = *(v6 + 96);
    *(v6 + 96) = v12;

    *(v6 + 104) = self->_defaultStyle;
    *(v6 + 8) = self->_configurationFlags;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    v8 = self->_defaultStyle == v6->_defaultStyle && self->_customView == v6->_customView && self->_cornerRadius == v6->_cornerRadius && self->_maskedCorners == v6->_maskedCorners && self->_strokeLocation == v6->_strokeLocation && self->_backgroundColorMode == v6->_backgroundColorMode && self->_backgroundColor == v6->_backgroundColor && _deferringTokenEqualToToken(self->_visualEffect, v6->_visualEffect) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_backgroundInsets.top, *&v7->_backgroundInsets.top), vceqq_f64(*&self->_backgroundInsets.bottom, *&v7->_backgroundInsets.bottom)))) & 1) != 0 && self->_edgesAddingLayoutMarginsToBackgroundInsets == v7->_edgesAddingLayoutMarginsToBackgroundInsets && self->_strokeColorMode == v7->_strokeColorMode && self->_strokeColor == v7->_strokeColor && self->_strokeWidth == v7->_strokeWidth && self->_strokeOutset == v7->_strokeOutset && _deferringTokenEqualToToken(self->_shadowProperties, v7->_shadowProperties) && _deferringTokenEqualToToken(self->_visualEffectGroupName, v7->_visualEffectGroupName) && self->_visualEffectblurClippingMode == v7->_visualEffectblurClippingMode;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(UIView *)self->_customView hash];
  cornerRadius = self->_cornerRadius;
  v5 = v3 ^ self->_backgroundColorMode;
  v6 = v5 ^ [(UIColor *)self->_backgroundColor hash];
  v7 = v6 ^ [(UIVisualEffect *)self->_visualEffect hash]^ self->_strokeColorMode;
  return v7 ^ [(UIColor *)self->_strokeColor hash]^ cornerRadius ^ self->_strokeWidth;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle >= 9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIBackgroundViewConfigurationStyleToString(_UIBackgroundViewConfigurationStyle)"];
    [currentHandler handleFailureInFunction:v8 file:@"_UIBackgroundViewConfiguration.m" lineNumber:56 description:{@"Unknown style: %ld", defaultStyle}];

    v6 = 0;
  }

  else
  {
    v6 = off_1E711F610[defaultStyle];
  }

  v9 = [v4 stringWithFormat:@"Base Style = %@", v6];
  [v3 addObject:v9];

  if (self->_cornerRadius > 0.0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cornerRadius = %g", *&self->_cornerRadius];
    [v3 addObject:v10];
  }

  v11 = *&self->_backgroundInsets.top;
  v12 = *&self->_backgroundInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v11), vceqzq_f64(v12))))))
  {
    leading = self->_backgroundInsets.leading;
    v14 = MEMORY[0x1E696AEC0];
    trailing = self->_backgroundInsets.trailing;
    v16 = NSStringFromDirectionalEdgeInsets(*v11.f64);
    v17 = [v14 stringWithFormat:@"backgroundInsets = %@", v16];
    [v3 addObject:v17];
  }

  edgesAddingLayoutMarginsToBackgroundInsets = self->_edgesAddingLayoutMarginsToBackgroundInsets;
  if (edgesAddingLayoutMarginsToBackgroundInsets)
  {
    v19 = MEMORY[0x1E696AEC0];
    if (edgesAddingLayoutMarginsToBackgroundInsets == 15)
    {
      v20 = @"All";
LABEL_17:
      v25 = [v19 stringWithFormat:@"edgesAddingLayoutMarginsToBackgroundInsets = %@", v20];
      [v3 addObject:v25];

      goto LABEL_18;
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = v21;
    if (edgesAddingLayoutMarginsToBackgroundInsets)
    {
      [v21 addObject:@"Top"];
      if ((edgesAddingLayoutMarginsToBackgroundInsets & 2) == 0)
      {
LABEL_13:
        if ((edgesAddingLayoutMarginsToBackgroundInsets & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_43;
      }
    }

    else if ((edgesAddingLayoutMarginsToBackgroundInsets & 2) == 0)
    {
      goto LABEL_13;
    }

    [v22 addObject:@"Leading"];
    if ((edgesAddingLayoutMarginsToBackgroundInsets & 4) == 0)
    {
LABEL_14:
      if ((edgesAddingLayoutMarginsToBackgroundInsets & 8) == 0)
      {
LABEL_16:
        v23 = MEMORY[0x1E696AEC0];
        v24 = [v22 componentsJoinedByString:{@", "}];
        v20 = [v23 stringWithFormat:@"[%@]", v24];

        goto LABEL_17;
      }

LABEL_15:
      [v22 addObject:@"Trailing"];
      goto LABEL_16;
    }

LABEL_43:
    [v22 addObject:@"Bottom"];
    if ((edgesAddingLayoutMarginsToBackgroundInsets & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_18:
  if ([(_UIBackgroundViewConfiguration *)self _hasBackgroundColor])
  {
    backgroundColorMode = self->_backgroundColorMode;
    v27 = MEMORY[0x1E696AEC0];
    if (backgroundColorMode)
    {
      v28 = _stringForColorMode(backgroundColorMode);
      v29 = [v27 stringWithFormat:@"backgroundColorMode = %@", v28];
      [v3 addObject:v29];
    }

    else
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"backgroundColor = %@", self->_backgroundColor];
      [v3 addObject:v28];
    }
  }

  if (self->_visualEffect)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"visualEffect = %@", self->_visualEffect];
    [v3 addObject:v30];
  }

  if ([(_UIBackgroundViewConfiguration *)self _hasStroke])
  {
    strokeColorMode = self->_strokeColorMode;
    v32 = MEMORY[0x1E696AEC0];
    if (strokeColorMode)
    {
      v33 = _stringForColorMode(strokeColorMode);
      v34 = [v32 stringWithFormat:@"strokeColorMode = %@", v33];
      [v3 addObject:v34];
    }

    else
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeColor = %@", self->_strokeColor];
      [v3 addObject:v33];
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeWidth = %g", *&self->_strokeWidth];
    [v3 addObject:v35];

    if (self->_strokeOutset > 0.0)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeOutset = %g", *&self->_strokeOutset];
      [v3 addObject:v36];
    }
  }

  if (self->_shadowProperties)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shadowProperties = %@", self->_shadowProperties];
    [v3 addObject:v37];
  }

  if (self->_customView)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"customView = %@", self->_customView];
    [v3 addObject:v38];
  }

  if ([v3 count])
  {
    v39 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v39 = @"empty configuration";
  }

  v40 = MEMORY[0x1E696AEC0];
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = [v40 stringWithFormat:@"<%@: %p %@>", v42, self, v39];;

  return v43;
}

- (BOOL)_hasStroke
{
  if (self->_strokeWidth <= 0.0)
  {
    return 0;
  }

  if (self->_strokeColorMode)
  {
    return 1;
  }

  return self->_strokeColor != 0;
}

- (BOOL)_backgroundFillIsEqual:(id)equal withTintColor:(id)color
{
  equalCopy = equal;
  colorCopy = color;
  if (equalCopy)
  {
    customView = self->_customView;
    customView = [equalCopy customView];
    if (customView != customView)
    {
LABEL_20:

LABEL_21:
      LOBYTE(v18) = 0;
      goto LABEL_22;
    }

    v10 = [(_UIBackgroundViewConfiguration *)self resolvedBackgroundColorForTintColor:colorCopy];
    v11 = [equalCopy resolvedBackgroundColorForTintColor:colorCopy];
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = v13;
      v16 = v12;
      if (!v12)
      {
        goto LABEL_18;
      }

      v15 = v13;
      v16 = v12;
      if (!v13)
      {
        goto LABEL_18;
      }

      v17 = [(UIVisualEffect *)v12 isEqual:v13];

      if (!v17)
      {
        goto LABEL_19;
      }
    }

    visualEffect = self->_visualEffect;
    visualEffect = [equalCopy visualEffect];
    v15 = visualEffect;
    v21 = visualEffect;
    v16 = v21;
    if (v15 == v21)
    {

LABEL_16:
      LOBYTE(v18) = 1;
      goto LABEL_22;
    }

    if (v15 && v21)
    {
      v22 = [(UIVisualEffect *)v15 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  v18 = ![(_UIBackgroundViewConfiguration *)self _hasBackgroundFill];
LABEL_22:

  return v18;
}

- (void)setCustomView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  v9 = viewCopy;
  if (viewCopy)
  {
    translatesAutoresizingMaskIntoConstraints = [viewCopy translatesAutoresizingMaskIntoConstraints];
    v6 = v9;
    if ((translatesAutoresizingMaskIntoConstraints & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBackgroundViewConfiguration.m" lineNumber:769 description:{@"Custom view must have translatesAutoresizingMaskIntoConstraints enabled, even if auto layout constraints are used inside it. Custom view: %@", v9}];

      v6 = v9;
    }
  }

  *&self->_configurationFlags |= 1u;
  [(UIBackgroundConfiguration *)self _setCustomView:v6];
}

- (NSDirectionalEdgeInsets)backgroundInsets
{
  top = self->_backgroundInsets.top;
  leading = self->_backgroundInsets.leading;
  bottom = self->_backgroundInsets.bottom;
  trailing = self->_backgroundInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)setBackgroundColorMode:(int64_t)mode
{
  *&self->_configurationFlags |= 0x10u;
  self->_backgroundColorMode = mode;
  if (mode)
  {
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = 0;
  }
}

- (void)setStrokeColorMode:(int64_t)mode
{
  *&self->_configurationFlags |= 0x40u;
  self->_strokeColorMode = mode;
  if (mode)
  {
    strokeColor = self->_strokeColor;
    self->_strokeColor = 0;
  }
}

- (void)setStrokeColor:(id)color
{
  *&self->_configurationFlags |= 0x40u;
  [(UIBackgroundConfiguration *)self _setImage:color];
  if (color)
  {
    self->_strokeColorMode = 0;
  }
}

- (id)_updatedConfigurationForState:(id)state
{
  stateCopy = state;
  v5 = [UICellConfigurationState _readonlyCellState:stateCopy];
  _viewConfigurationState = [v5 _viewConfigurationState];

  traitCollection = [stateCopy traitCollection];

  v8 = [(_UIBackgroundViewConfiguration *)self updatedConfigurationForState:_viewConfigurationState traitCollection:traitCollection];

  return v8;
}

- (id)resolvedBackgroundColorForTintColor:(id)color
{
  colorCopy = color;
  backgroundColor = colorCopy;
  if (!self->_backgroundColorMode)
  {
    backgroundColor = self->_backgroundColor;
  }

  v6 = backgroundColor;
  v7 = _colorTransformIdentifierForColorMode(self->_backgroundColorMode);
  v8 = _UIConfigurationColorTransformerForIdentifier(v7);
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 16))(v8, v6);
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[UIColor clearColor];
  }

  v13 = v12;

  return v13;
}

- (id)resolvedStrokeColorForTintColor:(id)color
{
  colorCopy = color;
  strokeColor = colorCopy;
  if (!self->_strokeColorMode)
  {
    strokeColor = self->_strokeColor;
  }

  v6 = strokeColor;
  v7 = _colorTransformIdentifierForColorMode(self->_strokeColorMode);
  v8 = _UIConfigurationColorTransformerForIdentifier(v7);
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 16))(v8, v6);
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[UIColor clearColor];
  }

  v13 = v12;

  return v13;
}

@end