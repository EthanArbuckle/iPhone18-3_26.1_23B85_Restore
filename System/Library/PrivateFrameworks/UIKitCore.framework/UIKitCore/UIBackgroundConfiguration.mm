@interface UIBackgroundConfiguration
+ (UIBackgroundConfiguration)clearConfiguration;
+ (UIBackgroundConfiguration)listAccompaniedSidebarCellConfiguration;
+ (UIBackgroundConfiguration)listGroupedCellConfiguration;
+ (UIBackgroundConfiguration)listGroupedHeaderFooterConfiguration;
+ (UIBackgroundConfiguration)listPlainCellConfiguration;
+ (UIBackgroundConfiguration)listPlainHeaderFooterConfiguration;
+ (UIBackgroundConfiguration)listSidebarCellConfiguration;
+ (UIBackgroundConfiguration)listSidebarHeaderConfiguration;
+ (id)_defaultListInsetGroupedCellConfigurationForState:(void *)state traitCollection:;
+ (id)_defaultListInsetGroupedHeaderFooterConfigurationForState:(void *)state traitCollection:;
+ (id)_listInsetGroupedCellConfiguration;
+ (id)_listInsetGroupedHeaderFooterConfiguration;
+ (id)_sidebarPlainCellConfiguration;
+ (id)listCellConfiguration;
+ (id)listFooterConfiguration;
+ (id)listHeaderConfiguration;
+ (void)_defaultListGroupedCellConfigurationForState:(void *)state traitCollection:;
+ (void)_defaultListGroupedHeaderFooterConfigurationForState:(void *)state traitCollection:;
+ (void)_defaultListPlainCellConfigurationForState:(void *)state traitCollection:;
+ (void)_defaultListPlainHeaderFooterConfigurationForState:(void *)state traitCollection:;
+ (void)_defaultListSidebarCellConfigurationForState:(void *)state traitCollection:(int)collection isAccompanied:;
+ (void)_defaultListSidebarHeaderConfigurationForState:(void *)state traitCollection:;
+ (void)_defaultListSidebarPlainCellConfigurationForState:(void *)state traitCollection:;
- (BOOL)_backgroundFillIsEqual:(id)equal withTintColor:(id)color;
- (BOOL)_hasBackgroundColor;
- (BOOL)_hasStroke;
- (BOOL)_isEqualToInternalConfigurationLayoutOnly:(id)only;
- (BOOL)_isEqualToInternalConfigurationQuick:(id)quick;
- (BOOL)isEqual:(id)equal;
- (NSDirectionalEdgeInsets)backgroundInsets;
- (NSString)description;
- (UIBackgroundConfiguration)initWithCoder:(id)coder;
- (UIBackgroundConfiguration)updatedConfigurationForState:(id)state;
- (UIColor)resolvedBackgroundColorForTintColor:(UIColor *)tintColor;
- (UIColor)resolvedStrokeColorForTintColor:(UIColor *)tintColor;
- (UIConfigurationColorTransformer)backgroundColorTransformer;
- (UIConfigurationColorTransformer)strokeColorTransformer;
- (UIShadowProperties)shadowProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_isEqualToConfiguration:(uint64_t)configuration;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick;
- (unint64_t)hash;
- (void)__setMaterial:(uint64_t)material;
- (void)_init;
- (void)_setBackgroundColor:(uint64_t)color;
- (void)_setBackgroundColorTransformer:(uint64_t)transformer;
- (void)_setBackgroundColorTransformerIdentifier:(uint64_t)identifier;
- (void)_setCustomView:(uint64_t)view;
- (void)_setImage:(uint64_t)image;
- (void)_setStrokeColor:(uint64_t)color;
- (void)_setStrokeColorTransformer:(uint64_t)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)setCustomView:(UIView *)customView;
@end

@implementation UIBackgroundConfiguration

- (void)_init
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = UIBackgroundConfiguration;
  v1 = objc_msgSendSuper2(&v8, sel_init);
  v2 = v1;
  if (v1)
  {
    v1[18] = 0;
    v3 = +[UIColor clearColor];
    v4 = v2[5];
    v2[5] = v3;

    v5 = +[UIColor clearColor];
    v6 = v2[11];
    v2[11] = v5;

    v2[16] = 15;
    v2[21] = 0;
  }

  return v2;
}

- (BOOL)_hasBackgroundColor
{
  backgroundColor = self->_backgroundColor;
  v3 = +[UIColor clearColor];
  LOBYTE(backgroundColor) = backgroundColor != v3;

  return backgroundColor;
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

- (BOOL)_hasStroke
{
  if (self->_strokeWidth <= 0.0)
  {
    return 0;
  }

  strokeColor = self->_strokeColor;
  v3 = +[UIColor clearColor];
  v4 = strokeColor != v3;

  return v4;
}

+ (UIBackgroundConfiguration)clearConfiguration
{
  _init = [[UIBackgroundConfiguration alloc] _init];

  return _init;
}

+ (id)listCellConfiguration
{
  v2 = [UICellConfigurationState _readonlyCellState:?];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [UIBackgroundConfiguration _defaultListPlainCellConfigurationForState:v2 traitCollection:v3];

  if (v4)
  {
    v4[18] = 11;
  }

  return v4;
}

+ (UIBackgroundConfiguration)listPlainCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListPlainCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)listHeaderConfiguration
{
  v2 = [UICellConfigurationState _readonlyCellState:?];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [UIBackgroundConfiguration _defaultListPlainHeaderFooterConfigurationForState:v2 traitCollection:v3];

  if (v4)
  {
    v4[18] = 12;
  }

  return v4;
}

- (UIShadowProperties)shadowProperties
{
  shadowProperties = self->_shadowProperties;
  if (!shadowProperties)
  {
    v4 = objc_alloc_init(UIShadowProperties);
    v5 = self->_shadowProperties;
    self->_shadowProperties = v4;

    shadowProperties = self->_shadowProperties;
  }

  return shadowProperties;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle >= 0xE)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown style (%ld)", self->_defaultStyle];
  }

  else
  {
    v6 = off_1E70F6600[defaultStyle];
  }

  v7 = [v4 stringWithFormat:@"Base Style = %@", v6];
  [v3 addObject:v7];

  if (self->_cornerRadius > 0.0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cornerRadius = %g", *&self->_cornerRadius];
    [v3 addObject:v8];
  }

  v9 = *&self->_backgroundInsets.top;
  v10 = *&self->_backgroundInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v9), vceqzq_f64(v10))))))
  {
    leading = self->_backgroundInsets.leading;
    v12 = MEMORY[0x1E696AEC0];
    trailing = self->_backgroundInsets.trailing;
    v14 = NSStringFromDirectionalEdgeInsets(*v9.f64);
    v15 = [v12 stringWithFormat:@"backgroundInsets = %@", v14];
    [v3 addObject:v15];
  }

  edgesAddingLayoutMarginsToBackgroundInsets = self->_edgesAddingLayoutMarginsToBackgroundInsets;
  if (edgesAddingLayoutMarginsToBackgroundInsets)
  {
    v17 = MEMORY[0x1E696AEC0];
    if (edgesAddingLayoutMarginsToBackgroundInsets == 15)
    {
      v18 = @"All";
LABEL_17:
      v23 = [v17 stringWithFormat:@"edgesAddingLayoutMarginsToBackgroundInsets = %@", v18];
      [v3 addObject:v23];

      goto LABEL_18;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = v19;
    if (edgesAddingLayoutMarginsToBackgroundInsets)
    {
      [v19 addObject:@"Top"];
      if ((edgesAddingLayoutMarginsToBackgroundInsets & 2) == 0)
      {
LABEL_13:
        if ((edgesAddingLayoutMarginsToBackgroundInsets & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_48;
      }
    }

    else if ((edgesAddingLayoutMarginsToBackgroundInsets & 2) == 0)
    {
      goto LABEL_13;
    }

    [v20 addObject:@"Leading"];
    if ((edgesAddingLayoutMarginsToBackgroundInsets & 4) == 0)
    {
LABEL_14:
      if ((edgesAddingLayoutMarginsToBackgroundInsets & 8) == 0)
      {
LABEL_16:
        v21 = MEMORY[0x1E696AEC0];
        v22 = [v20 componentsJoinedByString:{@", "}];
        v18 = [v21 stringWithFormat:@"[%@]", v22];

        goto LABEL_17;
      }

LABEL_15:
      [v20 addObject:@"Trailing"];
      goto LABEL_16;
    }

LABEL_48:
    [v20 addObject:@"Bottom"];
    if ((edgesAddingLayoutMarginsToBackgroundInsets & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_18:
  if ([(UIBackgroundConfiguration *)self _hasBackgroundColor])
  {
    if (self->_backgroundColor)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"backgroundColor = %@", self->_backgroundColor];
      [v3 addObject:v24];
    }

    else
    {
      [v3 addObject:@"backgroundColor = Inherited Tint Color"];
    }

    backgroundColorTransformerIdentifier = self->_backgroundColorTransformerIdentifier;
    if (backgroundColorTransformerIdentifier)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = _UIConfigurationColorTransformerIdentifierToString(backgroundColorTransformerIdentifier);
      v28 = [v26 stringWithFormat:@"backgroundColorTransformer = %@", v27];
      [v3 addObject:v28];
    }
  }

  if (self->_visualEffect)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"visualEffect = %@", self->_visualEffect];
    [v3 addObject:v29];
  }

  if (self->_image)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"image = %@", self->_image];
    [v3 addObject:v30];

    v31 = MEMORY[0x1E696AEC0];
    v32 = _UIViewContentModeToString(self->_imageContentMode);
    v33 = [v31 stringWithFormat:@"imageContentMode = %@", v32];
    [v3 addObject:v33];
  }

  if ([(UIBackgroundConfiguration *)self _hasStroke])
  {
    if (self->_strokeColor)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeColor = %@", self->_strokeColor];
      [v3 addObject:v34];
    }

    else
    {
      [v3 addObject:@"strokeColor = Inherited Tint Color"];
    }

    strokeColorTransformerIdentifier = self->_strokeColorTransformerIdentifier;
    if (strokeColorTransformerIdentifier)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = _UIConfigurationColorTransformerIdentifierToString(strokeColorTransformerIdentifier);
      v38 = [v36 stringWithFormat:@"strokeColorTransformer = %@", v37];
      [v3 addObject:v38];
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeWidth = %g", *&self->_strokeWidth];
    [v3 addObject:v39];

    if (self->_strokeOutset > 0.0)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeOutset = %g", *&self->_strokeOutset];
      [v3 addObject:v40];
    }
  }

  if (self->_shadowProperties)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shadowProperties = %@", self->_shadowProperties];
    [v3 addObject:v41];
  }

  if (self->_customView)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"customView = %@", self->_customView];
    [v3 addObject:v42];
  }

  if ([v3 count])
  {
    v43 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v43 = @"empty configuration";
  }

  v44 = MEMORY[0x1E696AEC0];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [v44 stringWithFormat:@"<%@: %p %@>", v46, self, v43];;

  return v47;
}

+ (void)_defaultListPlainCellConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(stateCopy);
  v7 = +[UIBackgroundConfiguration clearConfiguration];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v6)
  {
    [v6 defaultCellBackgroundPropertiesForTableViewStyle:0 state:v4 traitCollection:stateCopy];
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v9, v10);
  _UIBackgroundConfigurationApplyProperties(v7, v9, stateCopy);
  if (v7)
  {
    v7[18] = 1;
  }

  __destructor_8_s8_s16_s24_s80(v10);

  return v7;
}

+ (void)_defaultListPlainHeaderFooterConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(stateCopy);
  v7 = +[UIBackgroundConfiguration clearConfiguration];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  isPinned = [v4 isPinned];
  if (v6)
  {
    [v6 defaultHeaderFooterBackgroundPropertiesForTableViewStyle:0 cellConfigurationState:v4 traitCollection:stateCopy floating:isPinned];
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
  _UIBackgroundConfigurationApplyProperties(v7, v10, stateCopy);
  if (v7)
  {
    v7[18] = 2;
  }

  __destructor_8_s8_s16_s24_s80(&v11);

  return v7;
}

+ (id)listFooterConfiguration
{
  v2 = [UICellConfigurationState _readonlyCellState:?];
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [UIBackgroundConfiguration _defaultListPlainHeaderFooterConfigurationForState:v2 traitCollection:v3];

  if (v4)
  {
    v4[18] = 13;
  }

  return v4;
}

+ (void)_defaultListGroupedCellConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  v6 = objc_opt_self();
  if ([stateCopy userInterfaceIdiom] == 6 && dyld_program_sdk_at_least())
  {
    v7 = [(UIBackgroundConfiguration *)v6 _defaultListInsetGroupedCellConfigurationForState:v4 traitCollection:stateCopy];
  }

  else
  {
    v8 = _UITableConstantsForTraitCollection(stateCopy);
    v7 = +[UIBackgroundConfiguration clearConfiguration];
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    if (v8)
    {
      [v8 defaultCellBackgroundPropertiesForTableViewStyle:1 state:v4 traitCollection:stateCopy];
    }

    __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v10, v11);
    _UIBackgroundConfigurationApplyProperties(v7, v10, stateCopy);
    if (v7)
    {
      v7[18] = 3;
    }

    __destructor_8_s8_s16_s24_s80(v11);
  }

  return v7;
}

+ (id)_defaultListInsetGroupedCellConfigurationForState:(void *)state traitCollection:
{
  stateCopy = state;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(UIBackgroundConfiguration *)v6 _defaultListGroupedCellConfigurationForState:v5 traitCollection:stateCopy];

  return v7;
}

+ (void)_defaultListGroupedHeaderFooterConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(stateCopy);
  v7 = +[UIBackgroundConfiguration clearConfiguration];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v6)
  {
    [v6 defaultHeaderFooterBackgroundPropertiesForTableViewStyle:1 cellConfigurationState:v4 traitCollection:stateCopy floating:0];
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v9, v10);
  _UIBackgroundConfigurationApplyProperties(v7, v9, stateCopy);
  if (v7)
  {
    v7[18] = 4;
  }

  __destructor_8_s8_s16_s24_s80(v10);

  return v7;
}

+ (id)_defaultListInsetGroupedHeaderFooterConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  v6 = objc_opt_self();
  if ([stateCopy userInterfaceIdiom] == 6)
  {
    v7 = +[UIBackgroundConfiguration clearConfiguration];
    v8 = v7;
    if (v7)
    {
      *(v7 + 144) = 9;
    }
  }

  else
  {
    v8 = [(UIBackgroundConfiguration *)v6 _defaultListGroupedHeaderFooterConfigurationForState:v4 traitCollection:stateCopy];
  }

  return v8;
}

+ (void)_defaultListSidebarHeaderConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  v6 = +[UIBackgroundConfiguration clearConfiguration];
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
    [v7 defaultSidebarHeaderBackgroundPropertiesWithState:v4 traitCollection:stateCopy];
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
  _UIBackgroundConfigurationApplyProperties(v6, v10, stateCopy);
  if (v6)
  {
    v6[18] = 6;
  }

  __destructor_8_s8_s16_s24_s80(&v11);

  return v6;
}

+ (UIBackgroundConfiguration)listAccompaniedSidebarCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListSidebarCellConfigurationForState:v3 traitCollection:v4 isAccompanied:1];

  return v5;
}

+ (void)_defaultListSidebarCellConfigurationForState:(void *)state traitCollection:(int)collection isAccompanied:
{
  v6 = a2;
  stateCopy = state;
  objc_opt_self();
  v8 = +[UIBackgroundConfiguration clearConfiguration];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = _UITableConstantsForTraitCollection(stateCopy);
  v10 = v9;
  if (v9)
  {
    if (collection)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [v9 defaultSidebarCellBackgroundPropertiesForStyle:v11 state:v6 traitCollection:stateCopy];
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v14, &v15);
  _UIBackgroundConfigurationApplyProperties(v8, v14, stateCopy);
  if (v8)
  {
    v12 = 5;
    if (collection)
    {
      v12 = 7;
    }

    v8[18] = v12;
  }

  __destructor_8_s8_s16_s24_s80(&v15);

  return v8;
}

+ (id)_sidebarPlainCellConfiguration
{
  v0 = objc_opt_self();
  v1 = [UICellConfigurationState _readonlyCellState:?];
  v2 = +[UITraitCollection _fallbackTraitCollection];
  v3 = [(UIBackgroundConfiguration *)v0 _defaultListSidebarPlainCellConfigurationForState:v1 traitCollection:v2];

  return v3;
}

+ (void)_defaultListSidebarPlainCellConfigurationForState:(void *)state traitCollection:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  v6 = +[UIBackgroundConfiguration clearConfiguration];
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
    [v7 defaultSidebarCellBackgroundPropertiesForStyle:3 state:v4 traitCollection:stateCopy];
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
  _UIBackgroundConfigurationApplyProperties(v6, v10, stateCopy);
  if (v6)
  {
    v6[18] = 10;
  }

  __destructor_8_s8_s16_s24_s80(&v11);

  return v6;
}

+ (UIBackgroundConfiguration)listPlainHeaderFooterConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListPlainHeaderFooterConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIBackgroundConfiguration)listGroupedCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListGroupedCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIBackgroundConfiguration)listGroupedHeaderFooterConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListGroupedHeaderFooterConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_listInsetGroupedCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListInsetGroupedCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_listInsetGroupedHeaderFooterConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListInsetGroupedHeaderFooterConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIBackgroundConfiguration)listSidebarCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListSidebarCellConfigurationForState:v3 traitCollection:v4 isAccompanied:0];

  return v5;
}

+ (UIBackgroundConfiguration)listSidebarHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIBackgroundConfiguration *)self _defaultListSidebarHeaderConfigurationForState:v3 traitCollection:v4];

  return v5;
}

- (UIBackgroundConfiguration)updatedConfigurationForState:(id)state
{
  v4 = state;
  v5 = [(UIBackgroundConfiguration *)self copy];
  defaultStyle = self->_defaultStyle;
  if (defaultStyle)
  {
    v7 = v4;
    v8 = objc_opt_self();
    if ((defaultStyle - 11) < 3)
    {
      traitCollection = [v7 traitCollection];
      v10 = [UICellConfigurationState _readonlyCellState:v7];
      listEnvironment = [traitCollection listEnvironment];
      if (defaultStyle == 13)
      {
        if (listEnvironment > 4)
        {
          if (listEnvironment != 5)
          {
LABEL_33:
            v12 = [(UIBackgroundConfiguration *)v8 _defaultListPlainHeaderFooterConfigurationForState:v10 traitCollection:traitCollection];
            goto LABEL_50;
          }

          goto LABEL_34;
        }

LABEL_19:
        if (listEnvironment != 3)
        {
          if (listEnvironment == 4)
          {
            v12 = [(UIBackgroundConfiguration *)v8 _defaultListInsetGroupedHeaderFooterConfigurationForState:v10 traitCollection:traitCollection];
            goto LABEL_50;
          }

          goto LABEL_33;
        }

LABEL_34:
        v12 = [(UIBackgroundConfiguration *)v8 _defaultListGroupedHeaderFooterConfigurationForState:v10 traitCollection:traitCollection];
        goto LABEL_50;
      }

      if (defaultStyle == 12)
      {
        if (listEnvironment > 4)
        {
          if (listEnvironment == 5)
          {
            v12 = [(UIBackgroundConfiguration *)v8 _defaultListSidebarHeaderConfigurationForState:v10 traitCollection:traitCollection];
            goto LABEL_50;
          }

          goto LABEL_33;
        }

        goto LABEL_19;
      }

      if (listEnvironment > 4)
      {
        if (listEnvironment != 5)
        {
          if (listEnvironment == 6)
          {
            v12 = [(UIBackgroundConfiguration *)v8 _defaultListSidebarPlainCellConfigurationForState:v10 traitCollection:traitCollection];
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        v12 = +[UIBackgroundConfiguration _defaultListSidebarCellConfigurationForState:traitCollection:isAccompanied:](v8, v10, traitCollection, [traitCollection _splitViewControllerContext] == 2);
      }

      else
      {
        if (listEnvironment != 3)
        {
          if (listEnvironment == 4)
          {
            v12 = [(UIBackgroundConfiguration *)v8 _defaultListInsetGroupedCellConfigurationForState:v10 traitCollection:traitCollection];
            goto LABEL_50;
          }

LABEL_47:
          v12 = [(UIBackgroundConfiguration *)v8 _defaultListPlainCellConfigurationForState:v10 traitCollection:traitCollection];
          goto LABEL_50;
        }

        v12 = [(UIBackgroundConfiguration *)v8 _defaultListGroupedCellConfigurationForState:v10 traitCollection:traitCollection];
      }

LABEL_50:
      v20 = v12;
      if (v12)
      {
        *(v12 + 144) = defaultStyle;
      }

LABEL_52:

      configurationFlags = self->_configurationFlags;
      if (*&configurationFlags)
      {
        if ((*&configurationFlags & 2) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v20)
        {
          v25 = *(v20 + 16);
        }

        else
        {
          v25 = 0;
        }

        [(UIBackgroundConfiguration *)v5 _setCustomView:v25];
        configurationFlags = self->_configurationFlags;
        if ((*&configurationFlags & 2) != 0)
        {
LABEL_56:
          if ((*&configurationFlags & 4) != 0)
          {
            goto LABEL_63;
          }

LABEL_60:
          if (v20)
          {
            v23 = *(v20 + 192);
            v26 = *(v20 + 208);
            if (!v5)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v23 = 0uLL;
            v26 = 0uLL;
            if (!v5)
            {
LABEL_63:
              if ((*&configurationFlags & 8) != 0)
              {
                goto LABEL_67;
              }

              if (v20)
              {
                v27 = *(v20 + 32);
                if (!v5)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v27 = 0;
                if (!v5)
                {
LABEL_67:
                  if ((*&configurationFlags & 0x10) != 0)
                  {
                    if ((*&configurationFlags & 0x20) != 0)
                    {
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    if (v20)
                    {
                      v28 = *(v20 + 40);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    [(UIBackgroundConfiguration *)v5 _setBackgroundColor:v28];
                    configurationFlags = self->_configurationFlags;
                    if ((*&configurationFlags & 0x20) != 0)
                    {
LABEL_71:
                      if ((*&configurationFlags & 0x40) != 0)
                      {
                        goto LABEL_80;
                      }

LABEL_77:
                      if (v20)
                      {
                        v22 = *(v20 + 56);
                        if (!v5)
                        {
                          goto LABEL_80;
                        }

                        goto LABEL_79;
                      }

                      v22 = 0;
                      if (v5)
                      {
LABEL_79:
                        objc_setProperty_nonatomic_copy(v5, v21, v22, 56);
                        configurationFlags = self->_configurationFlags;
                      }

LABEL_80:
                      if ((*&configurationFlags & 0x80) != 0)
                      {
                        if ((*&configurationFlags & 0x100) != 0)
                        {
LABEL_82:
                          if ((*&configurationFlags & 0x200) == 0)
                          {
                            goto LABEL_83;
                          }

                          goto LABEL_89;
                        }
                      }

                      else
                      {
                        __visualEffectGroupName = [v20 __visualEffectGroupName];
                        [v5 __setVisualEffectGroupName:__visualEffectGroupName];

                        configurationFlags = self->_configurationFlags;
                        if ((*&configurationFlags & 0x100) != 0)
                        {
                          goto LABEL_82;
                        }
                      }

                      [v5 __setVisualEffectblurClippingMode:{objc_msgSend(v20, "__visualEffectblurClippingMode")}];
                      configurationFlags = self->_configurationFlags;
                      if ((*&configurationFlags & 0x200) == 0)
                      {
LABEL_83:
                        if (v20)
                        {
                          v31 = *(v20 + 72);
                        }

                        else
                        {
                          v31 = 0;
                        }

                        [(UIBackgroundConfiguration *)v5 _setImage:v31];
                        configurationFlags = self->_configurationFlags;
                        if ((*&configurationFlags & 0x400) != 0)
                        {
                          goto LABEL_93;
                        }

                        goto LABEL_90;
                      }

LABEL_89:
                      if ((*&configurationFlags & 0x400) != 0)
                      {
                        goto LABEL_93;
                      }

LABEL_90:
                      if (v20)
                      {
                        v32 = *(v20 + 80);
                        if (!v5)
                        {
                          goto LABEL_93;
                        }

                        goto LABEL_92;
                      }

                      v32 = 0;
                      if (v5)
                      {
LABEL_92:
                        *(v5 + 80) = v32;
                        configurationFlags = self->_configurationFlags;
                      }

LABEL_93:
                      if ((*&configurationFlags & 0x800) != 0)
                      {
                        if ((*&configurationFlags & 0x1000) != 0)
                        {
                          goto LABEL_97;
                        }
                      }

                      else
                      {
                        if (v20)
                        {
                          v33 = *(v20 + 88);
                        }

                        else
                        {
                          v33 = 0;
                        }

                        [(UIBackgroundConfiguration *)v5 _setStrokeColor:v33];
                        configurationFlags = self->_configurationFlags;
                        if ((*&configurationFlags & 0x1000) != 0)
                        {
LABEL_97:
                          if ((*&configurationFlags & 0x2000) != 0)
                          {
                            goto LABEL_106;
                          }

LABEL_103:
                          if (v20)
                          {
                            *&v23 = *(v20 + 104);
                            if (!v5)
                            {
                              goto LABEL_106;
                            }

                            goto LABEL_105;
                          }

                          *&v23 = 0;
                          if (v5)
                          {
LABEL_105:
                            *(v5 + 104) = v23;
                            configurationFlags = self->_configurationFlags;
                          }

LABEL_106:
                          if ((*&configurationFlags & 0x4000) != 0)
                          {
                            goto LABEL_110;
                          }

                          if (v20)
                          {
                            *&v23 = *(v20 + 112);
                            if (!v5)
                            {
                              goto LABEL_110;
                            }
                          }

                          else
                          {
                            *&v23 = 0;
                            if (!v5)
                            {
LABEL_110:
                              if ((*&configurationFlags & 0x8000) == 0)
                              {
                                [v5 __setMaskedCorners:{objc_msgSend(v20, "__maskedCorners", *&v23)}];
                              }

                              _shadowProperties = [v5 _shadowProperties];
                              if (_shadowProperties)
                              {
                              }

                              else
                              {
                                _shadowProperties2 = [v20 _shadowProperties];

                                if (!_shadowProperties2)
                                {
LABEL_116:
                                  [v5 _setStrokeLocation:{objc_msgSend(v20, "_strokeLocation")}];

                                  goto LABEL_117;
                                }
                              }

                              shadowProperties = [v5 shadowProperties];
                              shadowProperties2 = [v20 shadowProperties];
                              [shadowProperties _applyPropertiesFromDefaultProperties:shadowProperties2];

                              goto LABEL_116;
                            }
                          }

                          *(v5 + 112) = v23;
                          configurationFlags = self->_configurationFlags;
                          goto LABEL_110;
                        }
                      }

                      if (v20)
                      {
                        v34 = *(v20 + 96);
                      }

                      else
                      {
                        v34 = 0;
                      }

                      [(UIBackgroundConfiguration *)v5 _setStrokeColorTransformer:v34];
                      configurationFlags = self->_configurationFlags;
                      if ((*&configurationFlags & 0x2000) != 0)
                      {
                        goto LABEL_106;
                      }

                      goto LABEL_103;
                    }
                  }

                  if (v20)
                  {
                    v29 = *(v20 + 48);
                  }

                  else
                  {
                    v29 = 0;
                  }

                  [(UIBackgroundConfiguration *)v5 _setBackgroundColorTransformer:v29];
                  configurationFlags = self->_configurationFlags;
                  if ((*&configurationFlags & 0x40) != 0)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_77;
                }
              }

              *(v5 + 32) = v27;
              configurationFlags = self->_configurationFlags;
              goto LABEL_67;
            }
          }

          *(v5 + 192) = v23;
          *(v5 + 208) = v26;
          configurationFlags = self->_configurationFlags;
          goto LABEL_63;
        }
      }

      [v20 _cornerRadius];
      [v5 _setCornerRadius:?];
      configurationFlags = self->_configurationFlags;
      if ((*&configurationFlags & 4) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    traitCollection = v7;
    v13 = objc_opt_self();
    v10 = [UICellConfigurationState _readonlyCellState:traitCollection];
    if (defaultStyle > 5)
    {
      if (defaultStyle <= 7)
      {
        if (defaultStyle == 6)
        {
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListSidebarHeaderConfigurationForState:v10 traitCollection:v9TraitCollection];
          goto LABEL_44;
        }

        v9TraitCollection = [traitCollection traitCollection];
        v15 = v13;
        v16 = v10;
        v17 = v9TraitCollection;
        v18 = 1;
        goto LABEL_31;
      }

      switch(defaultStyle)
      {
        case 8:
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListInsetGroupedCellConfigurationForState:v10 traitCollection:v9TraitCollection];
          goto LABEL_44;
        case 9:
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListInsetGroupedHeaderFooterConfigurationForState:v10 traitCollection:v9TraitCollection];
          goto LABEL_44;
        case 10:
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListSidebarPlainCellConfigurationForState:v10 traitCollection:v9TraitCollection];
LABEL_44:
          v20 = v19;
LABEL_45:

          goto LABEL_52;
      }
    }

    else
    {
      if (defaultStyle > 2)
      {
        if (defaultStyle == 3)
        {
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListGroupedCellConfigurationForState:v10 traitCollection:v9TraitCollection];
          goto LABEL_44;
        }

        if (defaultStyle == 4)
        {
          v9TraitCollection = [traitCollection traitCollection];
          v19 = [(UIBackgroundConfiguration *)v13 _defaultListGroupedHeaderFooterConfigurationForState:v10 traitCollection:v9TraitCollection];
          goto LABEL_44;
        }

        v9TraitCollection = [traitCollection traitCollection];
        v15 = v13;
        v16 = v10;
        v17 = v9TraitCollection;
        v18 = 0;
LABEL_31:
        v19 = [(UIBackgroundConfiguration *)v15 _defaultListSidebarCellConfigurationForState:v16 traitCollection:v17 isAccompanied:v18];
        goto LABEL_44;
      }

      if (defaultStyle == 1)
      {
        v9TraitCollection = [traitCollection traitCollection];
        v19 = [(UIBackgroundConfiguration *)v13 _defaultListPlainCellConfigurationForState:v10 traitCollection:v9TraitCollection];
        goto LABEL_44;
      }

      if (defaultStyle == 2)
      {
        v9TraitCollection = [traitCollection traitCollection];
        v19 = [(UIBackgroundConfiguration *)v13 _defaultListPlainHeaderFooterConfigurationForState:v10 traitCollection:v9TraitCollection];
        goto LABEL_44;
      }
    }

    v9TraitCollection = [MEMORY[0x1E696AAA8] currentHandler];
    [v9TraitCollection handleFailureInMethod:sel__defaultConfigurationForFixedStyle_state_ object:v13 file:@"UIBackgroundConfiguration.m" lineNumber:624 description:{@"Unknown style: %ld", defaultStyle}];
    v20 = 0;
    goto LABEL_45;
  }

LABEL_117:

  return v5;
}

- (void)_setCustomView:(uint64_t)view
{
  if (view)
  {
    objc_storeStrong((view + 16), a2);
  }
}

- (void)_setBackgroundColor:(uint64_t)color
{
  if (color)
  {
    objc_storeStrong((color + 40), a2);
  }
}

- (void)_setBackgroundColorTransformer:(uint64_t)transformer
{
  if (transformer)
  {
    v3 = a2;
    *(transformer + 152) = _UIConfigurationIdentifierForColorTransformer(v3);
    v4 = [v3 copy];

    v5 = *(transformer + 48);
    *(transformer + 48) = v4;
  }
}

- (void)_setImage:(uint64_t)image
{
  if (image)
  {
    objc_storeStrong((image + 72), a2);
  }
}

- (void)_setStrokeColor:(uint64_t)color
{
  if (color)
  {
    objc_storeStrong((color + 88), a2);
  }
}

- (void)_setStrokeColorTransformer:(uint64_t)transformer
{
  if (transformer)
  {
    v3 = a2;
    *(transformer + 160) = _UIConfigurationIdentifierForColorTransformer(v3);
    v4 = [v3 copy];

    v5 = *(transformer + 96);
    *(transformer + 96) = v4;
  }
}

- (UIBackgroundConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v73.receiver = self;
  v73.super_class = UIBackgroundConfiguration;
  v5 = [(UIBackgroundConfiguration *)&v73 init];
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
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v9;

    -[UIBackgroundConfiguration _setBackgroundColorTransformerIdentifier:](v5, [coderCopy decodeIntegerForKey:@"backgroundColorTransformerIdentifier"]);
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
      v15 = [coderCopy decodeBoolForKey:@"visualEffectAllowsTransparentBlurring"] ^ 1;
    }

    v5->_visualEffectblurClippingMode = v15;
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v16;

    v5->_imageContentMode = [coderCopy decodeIntegerForKey:@"imageContentMode"];
    [coderCopy decodeDirectionalEdgeInsetsForKey:@"backgroundInsets"];
    v5->_backgroundInsets.top = v18;
    v5->_backgroundInsets.leading = v19;
    v5->_backgroundInsets.bottom = v20;
    v5->_backgroundInsets.trailing = v21;
    v5->_edgesAddingLayoutMarginsToBackgroundInsets = [coderCopy decodeIntegerForKey:@"edgesAddingLayoutMarginsToBackgroundInsets"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
    strokeColor = v5->_strokeColor;
    v5->_strokeColor = v22;

    v24 = [coderCopy decodeIntegerForKey:@"strokeColorTransformerIdentifier"];
    v25 = _UIConfigurationColorTransformerForIdentifier(v24);
    strokeColorTransformer = v5->_strokeColorTransformer;
    v5->_strokeColorTransformer = v25;

    if (v5->_strokeColorTransformer)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    v5->_strokeColorTransformerIdentifier = v27;
    [coderCopy decodeDoubleForKey:@"strokeWidth"];
    v5->_strokeWidth = v28;
    [coderCopy decodeDoubleForKey:@"strokeOutset"];
    v5->_strokeOutset = v29;
    v5->_strokeLocation = [coderCopy decodeIntegerForKey:@"strokeLocation"];
    if ([coderCopy containsValueForKey:@"shadowProperties"])
    {
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowProperties"];
      shadowProperties = v5->_shadowProperties;
      v5->_shadowProperties = v30;
    }

    else
    {
      v32 = [coderCopy decodeIntegerForKey:@"shadowType"];
      shadowProperties = +[UITraitCollection _fallbackTraitCollection];
      v33 = _UIShadowPropertiesFromShadowType(v32, shadowProperties);
      v34 = v5->_shadowProperties;
      v5->_shadowProperties = v33;
    }

    if ([coderCopy containsValueForKey:@"defaultStyle_v2"])
    {
      v35 = @"defaultStyle_v2";
    }

    else
    {
      v35 = @"defaultStyle";
    }

    v36 = [coderCopy decodeIntegerForKey:v35];
    if ((v36 - 1) >= 0xD)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    v5->_defaultStyle = v37;
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"customView"];
    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFE | [coderCopy decodeBoolForKey:v38]);

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([coderCopy decodeBoolForKey:v39])
    {
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFD | v40);

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundInsets"];
    if ([coderCopy decodeBoolForKey:v41])
    {
      v42 = 4;
    }

    else
    {
      v42 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFB | v42);

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"edgesAddingLayoutMarginsToBackgroundInsets"];
    if ([coderCopy decodeBoolForKey:v43])
    {
      v44 = 8;
    }

    else
    {
      v44 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFF7 | v44);

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColor"];
    if ([coderCopy decodeBoolForKey:v45])
    {
      v46 = 16;
    }

    else
    {
      v46 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFEF | v46);

    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColorTransformerIdentifier"];
    if ([coderCopy decodeBoolForKey:v47])
    {
      v48 = 32;
    }

    else
    {
      v48 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFDF | v48);

    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffect"];
    if ([coderCopy decodeBoolForKey:v49])
    {
      v50 = 64;
    }

    else
    {
      v50 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFBF | v50);

    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffectGroupName"];
    if ([coderCopy decodeBoolForKey:v51])
    {
      v52 = 128;
    }

    else
    {
      v52 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFF7F | v52);

    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffectblurClippingMode"];
    v54 = [coderCopy containsValueForKey:v53];

    v55 = @"visualEffectAllowsTransparentBlurring";
    if (v54)
    {
      v55 = @"visualEffectblurClippingMode";
    }

    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", v55];
    if ([coderCopy decodeBoolForKey:v56])
    {
      v57 = 256;
    }

    else
    {
      v57 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFEFF | v57);

    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
    if ([coderCopy decodeBoolForKey:v58])
    {
      v59 = 512;
    }

    else
    {
      v59 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFDFF | v59);

    v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageContentMode"];
    if ([coderCopy decodeBoolForKey:v60])
    {
      v61 = 1024;
    }

    else
    {
      v61 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFBFF | v61);

    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
    if ([coderCopy decodeBoolForKey:v62])
    {
      v63 = 2048;
    }

    else
    {
      v63 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFF7FF | v63);

    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColorTransformerIdentifier"];
    if ([coderCopy decodeBoolForKey:v64])
    {
      v65 = 4096;
    }

    else
    {
      v65 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFEFFF | v65);

    v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
    if ([coderCopy decodeBoolForKey:v66])
    {
      v67 = 0x2000;
    }

    else
    {
      v67 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFDFFF | v67);

    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeOutset"];
    if ([coderCopy decodeBoolForKey:v68])
    {
      v69 = 0x4000;
    }

    else
    {
      v69 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFBFFF | v69);

    v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maskedCorners"];
    if ([coderCopy decodeBoolForKey:v70])
    {
      v71 = 0x8000;
    }

    else
    {
      v71 = 0;
    }

    v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFF7FFF | v71);
  }

  return v5;
}

- (void)_setBackgroundColorTransformerIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v4 = _UIConfigurationColorTransformerForIdentifier(a2);
    v5 = *(identifier + 48);
    *(identifier + 48) = v4;

    if (*(identifier + 48))
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    *(identifier + 152) = v6;
  }
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
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeInteger:self->_backgroundColorTransformerIdentifier forKey:@"backgroundColorTransformerIdentifier"];
  [coderCopy encodeObject:self->_visualEffect forKey:@"visualEffect"];
  [coderCopy encodeObject:self->_visualEffectGroupName forKey:@"visualEffectGroupName"];
  [coderCopy encodeInteger:self->_visualEffectblurClippingMode forKey:@"visualEffectblurClippingMode"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeInteger:self->_imageContentMode forKey:@"imageContentMode"];
  [coderCopy encodeDirectionalEdgeInsets:@"backgroundInsets" forKey:{self->_backgroundInsets.top, self->_backgroundInsets.leading, self->_backgroundInsets.bottom, self->_backgroundInsets.trailing}];
  [coderCopy encodeInteger:self->_edgesAddingLayoutMarginsToBackgroundInsets forKey:@"edgesAddingLayoutMarginsToBackgroundInsets"];
  [coderCopy encodeObject:self->_strokeColor forKey:@"strokeColor"];
  [coderCopy encodeInteger:self->_strokeColorTransformerIdentifier forKey:@"strokeColorTransformerIdentifier"];
  [coderCopy encodeDouble:@"strokeWidth" forKey:self->_strokeWidth];
  [coderCopy encodeDouble:@"strokeOutset" forKey:self->_strokeOutset];
  [coderCopy encodeInteger:self->_strokeLocation forKey:@"strokeLocation"];
  shadowProperties = self->_shadowProperties;
  if (shadowProperties)
  {
    [coderCopy encodeObject:shadowProperties forKey:@"shadowProperties"];
    [coderCopy encodeInteger:-[UIShadowProperties _backgroundConfigurationShadowType](self->_shadowProperties forKey:{"_backgroundConfigurationShadowType"), @"shadowType"}];
  }

  defaultStyle = self->_defaultStyle;
  [coderCopy encodeInteger:defaultStyle forKey:@"defaultStyle_v2"];
  if ((defaultStyle & 0x8000000000000000) != 0)
  {
    defaultStyle = 0;
    v7 = coderCopy;
  }

  else
  {
    v6 = defaultStyle - 10;
    v7 = coderCopy;
    if (defaultStyle >= 0xA)
    {
      if (v6 > 3)
      {
        defaultStyle = 1;
      }

      else
      {
        defaultStyle = qword_18A677AE0[v6];
      }
    }
  }

  [v7 encodeInteger:defaultStyle forKey:@"defaultStyle"];
  configurationFlags = self->_configurationFlags;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"customView"];
  [coderCopy encodeBool:*&configurationFlags & 1 forKey:v9];

  v10 = (*&self->_configurationFlags >> 1) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [coderCopy encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 2) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundInsets"];
  [coderCopy encodeBool:v12 forKey:v13];

  v14 = (*&self->_configurationFlags >> 3) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"edgesAddingLayoutMarginsToBackgroundInsets"];
  [coderCopy encodeBool:v14 forKey:v15];

  v16 = (*&self->_configurationFlags >> 4) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColor"];
  [coderCopy encodeBool:v16 forKey:v17];

  v18 = (*&self->_configurationFlags >> 5) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"backgroundColorTransformerIdentifier"];
  [coderCopy encodeBool:v18 forKey:v19];

  v20 = (*&self->_configurationFlags >> 6) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffect"];
  [coderCopy encodeBool:v20 forKey:v21];

  v22 = (*&self->_configurationFlags >> 7) & 1;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"visualEffectGroupName"];
  [coderCopy encodeBool:v22 forKey:v23];

  v24 = (*&self->_configurationFlags >> 9) & 1;
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
  [coderCopy encodeBool:v24 forKey:v25];

  v26 = (*&self->_configurationFlags >> 10) & 1;
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageContentMode"];
  [coderCopy encodeBool:v26 forKey:v27];

  v28 = (*&self->_configurationFlags >> 11) & 1;
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
  [coderCopy encodeBool:v28 forKey:v29];

  v30 = (*&self->_configurationFlags >> 12) & 1;
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColorTransformerIdentifier"];
  [coderCopy encodeBool:v30 forKey:v31];

  v32 = (*&self->_configurationFlags >> 13) & 1;
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
  [coderCopy encodeBool:v32 forKey:v33];

  v34 = (*&self->_configurationFlags >> 14) & 1;
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeOutset"];
  [coderCopy encodeBool:v34 forKey:v35];

  v36 = (*&self->_configurationFlags >> 15) & 1;
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maskedCorners"];
  [coderCopy encodeBool:v36 forKey:v37];
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [+[UIBackgroundConfiguration allocWithZone:](UIBackgroundConfiguration _init];
  v5 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, self->_customView);
    v5[3] = *&self->_cornerRadius;
    v5[16] = self->_maskedCorners;
    objc_storeStrong(v5 + 5, self->_backgroundColor);
    v6 = [self->_backgroundColorTransformer copy];
    v7 = v5[6];
    v5[6] = v6;

    v5[19] = self->_backgroundColorTransformerIdentifier;
    v8 = [(UIVisualEffect *)self->_visualEffect copy];
    v9 = v5[7];
    v5[7] = v8;

    v10 = [(NSString *)self->_visualEffectGroupName copy];
    v11 = v5[8];
    v5[8] = v10;

    v5[17] = self->_visualEffectblurClippingMode;
    objc_storeStrong(v5 + 9, self->_image);
    v5[10] = self->_imageContentMode;
    v12 = *&self->_backgroundInsets.bottom;
    *(v5 + 12) = *&self->_backgroundInsets.top;
    *(v5 + 13) = v12;
    v5[4] = self->_edgesAddingLayoutMarginsToBackgroundInsets;
    objc_storeStrong(v5 + 11, self->_strokeColor);
    v13 = [self->_strokeColorTransformer copy];
    v14 = v5[12];
    v5[12] = v13;

    v5[20] = self->_strokeColorTransformerIdentifier;
    v5[13] = *&self->_strokeWidth;
    v5[14] = *&self->_strokeOutset;
    v5[21] = self->_strokeLocation;
    v15 = [(UIShadowProperties *)self->_shadowProperties copy];
    v16 = v5[15];
    v5[15] = v15;

    v5[18] = self->_defaultStyle;
    *(v5 + 2) = self->_configurationFlags;
    objc_storeStrong(v5 + 23, self->_material);
    objc_storeStrong(v5 + 22, self->_contentView);
    *(v5 + 12) = self->_contentViewIgnoresBackgroundInsets;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(UIBackgroundConfiguration *)self _isEqualToConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (configuration)
  {
    if (v3 == configuration)
    {
      configuration = 1;
    }

    else if (*(configuration + 144) == v3[18] && *(configuration + 16) == v3[2] && *(configuration + 176) == v3[22] && *(configuration + 12) == *(v3 + 12) && *(configuration + 24) == *(v3 + 3) && *(configuration + 128) == v3[16] && *(configuration + 32) == v3[4] && *(configuration + 104) == *(v3 + 13) && *(configuration + 112) == *(v3 + 14) && *(configuration + 80) == v3[10] && *(configuration + 168) == v3[21] && *(configuration + 136) == v3[17])
    {
      v7 = v3;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(configuration + 192), *(v3 + 12)), vceqq_f64(*(configuration + 208), *(v3 + 13))))) & 1) != 0 && (v4 = *(configuration + 152), v4 == v3[19]) && (v4 != 1 || *(configuration + 48) == v3[6]) && (v5 = *(configuration + 160), v5 == v3[20]) && (v5 != 1 || *(configuration + 96) == v3[12]) && _deferringTokenEqualToToken(*(configuration + 40), v3[5]) && _deferringTokenEqualToToken(*(configuration + 88), v7[11]) && _deferringTokenEqualToToken(*(configuration + 64), v7[8]) && _deferringTokenEqualToToken(*(configuration + 56), v7[7]) && _deferringTokenEqualToToken(*(configuration + 72), v7[9]) && _deferringTokenEqualToToken(*(configuration + 120), v7[15]))
      {
        configuration = _deferringTokenEqualToToken(*(configuration + 184), v7[23]);
        v3 = v7;
      }

      else
      {
        configuration = 0;
        v3 = v7;
      }
    }

    else
    {
      configuration = 0;
    }
  }

  return configuration;
}

- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)quick
{
  v3 = a2;
  if (quick)
  {
    if (v3 == quick)
    {
      quick = 1;
    }

    else if (*(quick + 144) == v3[18] && *(quick + 40) == v3[5] && *(quick + 16) == v3[2] && *(quick + 176) == v3[22] && *(quick + 12) == *(v3 + 12) && *(quick + 24) == *(v3 + 3) && *(quick + 128) == v3[16] && *(quick + 32) == v3[4] && *(quick + 88) == v3[11] && *(quick + 104) == *(v3 + 13) && *(quick + 112) == *(v3 + 14))
    {
      v7 = v3;
      if (*(quick + 72) == v3[9] && *(quick + 80) == v3[10] && *(quick + 168) == v3[21] && *(quick + 136) == v3[17] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(quick + 192), *(v3 + 12)), vceqq_f64(*(quick + 208), *(v3 + 13))))) & 1) != 0 && (v5 = *(quick + 152), v5 == v3[19]) && (v5 != 1 || *(quick + 48) == v3[6]) && (v6 = *(quick + 160), v6 == v3[20]) && (v6 != 1 || *(quick + 96) == v3[12]) && _deferringTokenEqualToToken(*(quick + 120), v3[15]) && _deferringTokenEqualToToken(*(quick + 64), v7[8]) && _deferringTokenEqualToToken(*(quick + 56), v7[7]))
      {
        quick = _deferringTokenEqualToToken(*(quick + 184), v7[23]);
        v3 = v7;
      }

      else
      {
        quick = 0;
        v3 = v7;
      }
    }

    else
    {
      quick = 0;
    }
  }

  return quick;
}

- (unint64_t)hash
{
  v3 = [(UIView *)self->_customView hash];
  cornerRadius = self->_cornerRadius;
  v5 = v3 ^ [(UIColor *)self->_backgroundColor hash];
  v6 = v5 ^ [(UIVisualEffect *)self->_visualEffect hash];
  v7 = v6 ^ [(UIImage *)self->_image hash];
  return v7 ^ [(UIColor *)self->_strokeColor hash]^ cornerRadius ^ self->_strokeWidth;
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
LABEL_29:

LABEL_30:
      LOBYTE(v18) = 0;
      goto LABEL_31;
    }

    v10 = [(UIBackgroundConfiguration *)self resolvedBackgroundColorForTintColor:colorCopy];
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
        goto LABEL_26;
      }

      v15 = v13;
      v16 = v12;
      if (!v13)
      {
        goto LABEL_26;
      }

      v17 = [(UIVisualEffect *)v12 isEqual:v13];

      if (!v17)
      {
        goto LABEL_28;
      }
    }

    visualEffect = self->_visualEffect;
    visualEffect = [equalCopy visualEffect];
    v15 = visualEffect;
    v21 = visualEffect;
    v16 = v21;
    if (v15 == v21)
    {
    }

    else
    {
      if (!v15 || !v21)
      {
        v25 = v21;
LABEL_25:

LABEL_26:
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v22 = [(UIVisualEffect *)v15 isEqual:v21];

      if (!v22)
      {
        goto LABEL_27;
      }
    }

    image = self->_image;
    image = [equalCopy image];
    v25 = image;
    v26 = image;
    v15 = v26;
    if (v25 == v26)
    {

LABEL_23:
      LOBYTE(v18) = 1;
      goto LABEL_31;
    }

    if (v25 && v26)
    {
      v27 = [(UIImage *)v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v18 = ![(UIBackgroundConfiguration *)self _hasBackgroundFill];
LABEL_31:

  return v18;
}

- (void)setCustomView:(UIView *)customView
{
  v5 = customView;
  v6 = v5;
  v9 = v5;
  if (v5)
  {
    translatesAutoresizingMaskIntoConstraints = [(UIView *)v5 translatesAutoresizingMaskIntoConstraints];
    v6 = v9;
    if (!translatesAutoresizingMaskIntoConstraints)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIBackgroundConfiguration.m" lineNumber:1108 description:{@"Custom view must have translatesAutoresizingMaskIntoConstraints enabled, even if auto layout constraints are used inside it. Custom view: %@", v9}];

      v6 = v9;
    }
  }

  *&self->_configurationFlags |= 1u;
  [(UIBackgroundConfiguration *)self _setCustomView:v6];
}

- (UIConfigurationColorTransformer)backgroundColorTransformer
{
  v2 = _Block_copy(self->_backgroundColorTransformer);

  return v2;
}

- (void)__setMaterial:(uint64_t)material
{
  if (material)
  {
    objc_storeStrong((material + 184), a2);
  }
}

- (UIConfigurationColorTransformer)strokeColorTransformer
{
  v2 = _Block_copy(self->_strokeColorTransformer);

  return v2;
}

- (UIColor)resolvedBackgroundColorForTintColor:(UIColor *)tintColor
{
  v4 = tintColor;
  v5 = v4;
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    backgroundColor = v4;
  }

  v7 = backgroundColor;
  backgroundColorTransformer = self->_backgroundColorTransformer;
  if (backgroundColorTransformer)
  {
    v9 = backgroundColorTransformer[2](backgroundColorTransformer, v7);
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (UIColor)resolvedStrokeColorForTintColor:(UIColor *)tintColor
{
  v4 = tintColor;
  v5 = v4;
  strokeColor = self->_strokeColor;
  if (!strokeColor)
  {
    strokeColor = v4;
  }

  v7 = strokeColor;
  strokeColorTransformer = self->_strokeColorTransformer;
  if (strokeColorTransformer)
  {
    v9 = strokeColorTransformer[2](strokeColorTransformer, v7);
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (BOOL)_isEqualToInternalConfigurationQuick:(id)quick
{
  quickCopy = quick;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIBackgroundConfiguration *)self _isEqualToConfigurationQuick:quickCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isEqualToInternalConfigurationLayoutOnly:(id)only
{
  onlyCopy = only;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = onlyCopy;
    if (self)
    {
      if (v5 == self)
      {
        LOBYTE(self) = 1;
      }

      else if (self->_defaultStyle == *&v5[9].f64[0] && self->_customView == *&v5[1].f64[0] && self->_contentView == *&v5[11].f64[0] && self->_contentViewIgnoresBackgroundInsets == BYTE4(v5->f64[1]) && self->_edgesAddingLayoutMarginsToBackgroundInsets == *&v5[2].f64[0] && self->_image == *&v5[4].f64[1] && self->_imageContentMode == *&v5[5].f64[0])
      {
        LOBYTE(self) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_backgroundInsets.top, v5[12]), vceqq_f64(*&self->_backgroundInsets.bottom, v5[13]))));
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

@end