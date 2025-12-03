@interface UIImageSymbolConfiguration
+ (UIImageSymbolConfiguration)configurationPreferringMonochrome;
+ (UIImageSymbolConfiguration)configurationPreferringMulticolor;
+ (UIImageSymbolConfiguration)configurationWithColorRenderingMode:(int64_t)mode;
+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font;
+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font scale:(UIImageSymbolScale)scale;
+ (UIImageSymbolConfiguration)configurationWithHierarchicalColor:(UIColor *)hierarchicalColor;
+ (UIImageSymbolConfiguration)configurationWithPaletteColors:(NSArray *)paletteColors;
+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize;
+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight;
+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight scale:(UIImageSymbolScale)scale;
+ (UIImageSymbolConfiguration)configurationWithScale:(UIImageSymbolScale)scale;
+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle;
+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle scale:(UIImageSymbolScale)scale;
+ (UIImageSymbolConfiguration)configurationWithVariableValueMode:(int64_t)mode;
+ (UIImageSymbolConfiguration)configurationWithWeight:(UIImageSymbolWeight)weight;
+ (id)_configurationWithHierarchicalColors:(id)colors;
+ (id)_configurationWithNamedColorStyles:(id)styles;
+ (id)_unspecifiedConfiguration;
- (BOOL)_hasColorConfigurationWithTintColor;
- (BOOL)_hasSpecifiedHierarchicalColors;
- (BOOL)_isEquivalentToConfiguration:(id)configuration;
- (BOOL)_isUnspecified;
- (BOOL)_shouldApplyConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(UIImageSymbolConfiguration *)otherConfiguration;
- (UIImageSymbolConfiguration)configurationWithoutPointSizeAndWeight;
- (UIImageSymbolConfiguration)configurationWithoutScale;
- (UIImageSymbolConfiguration)configurationWithoutTextStyle;
- (UIImageSymbolConfiguration)configurationWithoutWeight;
- (UIImageSymbolConfiguration)initWithCoder:(id)coder;
- (double)pointSizeForScalingWithTextStyle;
- (id)_colorForNamedStyle:(id)style renditionContext:(id)context resolveDynamicColors:(BOOL)colors;
- (id)_configurationByReplacingColors:(id)colors;
- (id)_configurationSuppressingMaterialRendering;
- (id)_hierarchicalColorForLayerLevel:(int64_t)level renditionContext:(id)context resolveDynamicColors:(BOOL)colors;
- (id)_initWithTraitCollection:(id)collection;
- (id)_paletteColorsWithRenditionContext:(id)context resolveDynamicColors:(BOOL)colors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_applyConfigurationValuesTo:(id)to;
- (void)_clearSpecificsExceptScale;
- (void)_deriveGlyphSize:(int64_t *)size weight:(int64_t *)weight pointSize:(double *)pointSize;
- (void)_setPrefersMonochrome:(uint64_t)monochrome;
- (void)_setPrefersMulticolor:(uint64_t)multicolor;
- (void)_setUsesHierarchical:(void *)hierarchical colors:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIImageSymbolConfiguration

+ (id)_unspecifiedConfiguration
{
  if (_MergedGlobals_7_15 != -1)
  {
    dispatch_once(&_MergedGlobals_7_15, &__block_literal_global_720);
  }

  v3 = qword_1ED49AEC0;

  return v3;
}

- (BOOL)_isUnspecified
{
  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    return 0;
  }

  if (self)
  {
    configFlags = self->_configFlags;
    if ((configFlags & 1) != 0 || self->_weight || self->_textStyle || self->_namedColorStyles)
    {
      return 0;
    }

    v4 = (configFlags & 0x28) == 0 && self->_colors == 0;
    if (!v4 || [(UIImageSymbolConfiguration *)self variableValueMode]|| [(UIImageSymbolConfiguration *)self colorRenderingMode])
    {
      return 0;
    }
  }

  if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UIImageSymbolConfiguration;
  return [(UIImageConfiguration *)&v6 _isUnspecified];
}

- (unint64_t)hash
{
  v3 = self->_weight ^ self->_scale;
  v4 = vcvtmd_u64_f64(self->_pointSize * 100.0);
  v5 = v3 ^ [(NSString *)self->_textStyle hash];
  firstObject = [(NSArray *)self->_colors firstObject];
  v7 = v5 ^ [firstObject hash];
  v10.receiver = self;
  v10.super_class = UIImageSymbolConfiguration;
  v8 = v7 ^ [(UIImageConfiguration *)&v10 hash];

  return v8 ^ v4;
}

- (BOOL)_hasSpecifiedHierarchicalColors
{
  if (self->_colors)
  {
    return (*&self->_configFlags >> 1) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

+ (UIImageSymbolConfiguration)configurationPreferringMonochrome
{
  _init = [objc_alloc(objc_opt_self()) _init];
  [(UIImageSymbolConfiguration *)_init _setPrefersMonochrome:?];

  return _init;
}

- (double)pointSizeForScalingWithTextStyle
{
  result = 0.0;
  if ((*&self->_configFlags & 1) == 0)
  {
    return self->_pointSize;
  }

  return result;
}

void __55__UIImageSymbolConfiguration__unspecifiedConfiguration__block_invoke()
{
  v0 = [(UIImageConfiguration *)[UIImageSymbolConfiguration alloc] _init];
  v1 = qword_1ED49AEC0;
  qword_1ED49AEC0 = v0;
}

+ (UIImageSymbolConfiguration)configurationPreferringMulticolor
{
  _init = [objc_alloc(objc_opt_self()) _init];
  [(UIImageSymbolConfiguration *)_init _setPrefersMulticolor:?];

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithScale:(UIImageSymbolScale)scale
{
  _init = [[self alloc] _init];
  _init[8] = scale;

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize
{
  _init = [[self alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v5;
  }

  if (_init)
  {
    v6 = 0.0;
    if (pointSize >= 0.0)
    {
      v6 = pointSize;
    }

    *(_init + 32) = v6;
    *(_init + 40) |= 1u;
  }

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithWeight:(UIImageSymbolWeight)weight
{
  _init = [[self alloc] _init];
  _init[9] = weight;

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight
{
  _init = [[self alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v7;
  }

  if (_init)
  {
    v8 = 0.0;
    if (pointSize >= 0.0)
    {
      v8 = pointSize;
    }

    *(_init + 32) = v8;
    *(_init + 40) |= 1u;
  }

  *(_init + 72) = weight;

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight scale:(UIImageSymbolScale)scale
{
  _init = [[self alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v9;
  }

  if (_init)
  {
    v10 = 0.0;
    if (pointSize >= 0.0)
    {
      v10 = pointSize;
    }

    *(_init + 32) = v10;
    *(_init + 40) |= 1u;
  }

  *(_init + 72) = weight;
  *(_init + 64) = scale;

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle
{
  v4 = textStyle;
  _init = [[self alloc] _init];
  v6 = _init[10];
  _init[10] = v4;

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle scale:(UIImageSymbolScale)scale
{
  result = [self configurationWithTextStyle:textStyle];
  result->_scale = scale;
  return result;
}

+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font
{
  v3 = font;
  _init = [(UIImageConfiguration *)[UIImageSymbolConfiguration alloc] _init];
  _textStyle = [(UIFont *)v3 _textStyle];
  v6 = dyld_program_sdk_at_least() ^ 1;
  textStyleForScaling = [(UIFont *)v3 textStyleForScaling];
  if (textStyleForScaling)
  {
  }

  else if ([objc_opt_class() _isSupportedDynamicFontTextStyle:_textStyle])
  {
    goto LABEL_9;
  }

  textStyleForScaling2 = [(UIFont *)v3 textStyleForScaling];
  if (textStyleForScaling2)
  {
    v9 = objc_opt_class();
    textStyleForScaling3 = [(UIFont *)v3 textStyleForScaling];
    LODWORD(v9) = [v9 _isSupportedDynamicFontTextStyle:textStyleForScaling3];

    if (v9)
    {
      textStyleForScaling2 = [(UIFont *)v3 textStyleForScaling];
      v6 = 1;
    }

    else
    {
      textStyleForScaling2 = 0;
    }
  }

  _textStyle = textStyleForScaling2;
LABEL_9:
  CTFontGetWeight();
  *(_init + 9) = UISIndexForFontWeight();
  if (_textStyle)
  {
    if (v6)
    {
      [(UIFont *)v3 pointSizeForScaling];
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      *(_init + 4) = v11;
      *(_init + 20) &= ~1u;
      goto LABEL_22;
    }

    if (!dyld_program_sdk_at_least())
    {
LABEL_22:
      objc_storeStrong(_init + 10, _textStyle);
      goto LABEL_25;
    }

    v13 = [off_1E70ECC18 _normalizedContentSizeCategory:0 default:0];
    CTFontDescriptorGetTextStyleSize();
    v15 = v14;
    [(UIFont *)v3 pointSize];
    if (v15 == v16)
    {
      objc_storeStrong(_init + 10, _textStyle);
    }

    else
    {
      [(UIFont *)v3 pointSize];
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      *(_init + 4) = v17;
      *(_init + 20) |= 1u;
    }
  }

  else
  {
    [(UIFont *)v3 pointSize];
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    *(_init + 4) = v12;
    *(_init + 20) |= 1u;
  }

LABEL_25:
  v18 = CTFontGetUIFontDesign();
  v19 = *off_1E70ECCA8;
  v20 = v18;
  v21 = v20;
  if (v20 == v19)
  {

    goto LABEL_40;
  }

  if (!v20 || !v19)
  {

    goto LABEL_32;
  }

  v22 = [v20 isEqual:v19];

  if ((v22 & 1) == 0)
  {
LABEL_32:
    [(UIFont *)v3 pointSize];
    CTFontGetCapHeightForSystemFontOfSize();
    v24 = v23;
    [(UIFont *)v3 capHeight];
    if (v24 == 0.0 || v25 == 0.0)
    {
      CTFontGetAscentForSystemFontOfSize();
      v28 = v27;
      CTFontGetDescentForSystemFontOfSize();
      v30 = v28 + v29;
      [(UIFont *)v3 lineHeight];
      if (v30 == 0.0 || v31 == 0.0)
      {
        *(_init + 11) = 0x3FF0000000000000;
        goto LABEL_40;
      }

      v26 = v31 / v30;
    }

    else
    {
      v26 = v25 / v24;
    }

    *(_init + 11) = v26;
  }

LABEL_40:

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font scale:(UIImageSymbolScale)scale
{
  result = [self configurationWithFont:font];
  result->_scale = scale;
  return result;
}

+ (id)_configurationWithNamedColorStyles:(id)styles
{
  stylesCopy = styles;
  _init = [[self alloc] _init];
  v6 = [stylesCopy copy];

  v7 = _init[6];
  _init[6] = v6;

  [(UIImageSymbolConfiguration *)_init _setPrefersMulticolor:?];

  return _init;
}

- (void)_setPrefersMulticolor:(uint64_t)multicolor
{
  if (multicolor)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(multicolor + 40) = *(multicolor + 40) & 0xFFFB | v2;
    *(multicolor + 40) |= 8u;
    if (a2)
    {
      *(multicolor + 40) &= ~0x10u;
      *(multicolor + 40) |= 0x20u;
      [(UIImageSymbolConfiguration *)multicolor _setUsesHierarchical:0 colors:?];
    }
  }
}

+ (id)_configurationWithHierarchicalColors:(id)colors
{
  colorsCopy = colors;
  if (![colorsCopy count])
  {
    firstObject = +[UIColor tintColor];
    goto LABEL_5;
  }

  if ([colorsCopy count] == 1)
  {
    firstObject = [colorsCopy firstObject];
LABEL_5:
    v6 = firstObject;
    v7 = [self configurationWithHierarchicalColor:firstObject];

    goto LABEL_7;
  }

  v7 = [self configurationWithPaletteColors:colorsCopy];
LABEL_7:

  return v7;
}

- (id)_configurationByReplacingColors:(id)colors
{
  colorsCopy = colors;
  v5 = [(UIImageSymbolConfiguration *)self copy];
  v6 = [colorsCopy copy];

  v7 = v5[7];
  v5[7] = v6;

  return v5;
}

+ (UIImageSymbolConfiguration)configurationWithHierarchicalColor:(UIColor *)hierarchicalColor
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = hierarchicalColor;
  if (!v4)
  {
    v4 = +[UIColor tintColor];
  }

  _init = [[self alloc] _init];
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(UIImageSymbolConfiguration *)_init _setUsesHierarchical:v6 colors:?];

  return _init;
}

- (void)_setUsesHierarchical:(void *)hierarchical colors:
{
  hierarchicalCopy = hierarchical;
  if (self)
  {
    v8 = hierarchicalCopy;
    objc_storeStrong((self + 56), hierarchical);
    hierarchicalCopy = v8;
    v7 = a2 ? 2 : 0;
    *(self + 40) = *(self + 40) & 0xFFFD | v7;
    if (v8)
    {
      *(self + 40) &= ~4u;
      *(self + 40) |= 8u;
      *(self + 40) &= ~0x10u;
      *(self + 40) |= 0x20u;
    }
  }
}

+ (UIImageSymbolConfiguration)configurationWithPaletteColors:(NSArray *)paletteColors
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = paletteColors;
  if (!v4)
  {
    v5 = +[UIColor tintColor];
    v8[0] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  _init = [[self alloc] _init];
  [(UIImageSymbolConfiguration *)_init _setUsesHierarchical:v4 colors:?];

  return _init;
}

- (void)_setPrefersMonochrome:(uint64_t)monochrome
{
  if (monochrome)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(monochrome + 40) = *(monochrome + 40) & 0xFFEF | v2;
    *(monochrome + 40) |= 0x20u;
    if (a2)
    {
      *(monochrome + 40) &= ~4u;
      *(monochrome + 40) |= 8u;
      [(UIImageSymbolConfiguration *)monochrome _setUsesHierarchical:0 colors:?];
    }
  }
}

+ (UIImageSymbolConfiguration)configurationWithVariableValueMode:(int64_t)mode
{
  modeCopy = mode;
  _init = [[self alloc] _init];
  if (_init)
  {
    _init[20] = _init[20] & 0xFF3F | ((modeCopy & 3) << 6);
  }

  return _init;
}

+ (UIImageSymbolConfiguration)configurationWithColorRenderingMode:(int64_t)mode
{
  modeCopy = mode;
  _init = [[self alloc] _init];
  if (_init)
  {
    _init[20] = _init[20] & 0xFCFF | ((modeCopy & 3) << 8);
  }

  return _init;
}

- (id)_configurationSuppressingMaterialRendering
{
  v2 = [(UIImageSymbolConfiguration *)self copy];
  if (v2)
  {
    v2[20] |= 0x400u;
  }

  return v2;
}

- (id)_initWithTraitCollection:(id)collection
{
  v7.receiver = self;
  v7.super_class = UIImageSymbolConfiguration;
  v3 = [(UIImageConfiguration *)&v7 _initWithTraitCollection:collection];
  v4 = v3;
  if (v3)
  {
    *(v3 + 8) = 0;
    *(v3 + 11) = 0x3FF0000000000000;
    *(v3 + 4) = 0;
    *(v3 + 20) &= ~1u;
    *(v3 + 9) = 0;
    v5 = *(v3 + 10);
    *(v3 + 10) = 0;
  }

  return v4;
}

- (void)_clearSpecificsExceptScale
{
  *(self + 32) = 0;
  *(self + 40) &= ~1u;
  *(self + 72) = 0;
  v1 = *(self + 80);
  *(self + 80) = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = UIImageSymbolConfiguration;
  v4 = [(UIImageConfiguration *)&v8 copyWithZone:zone];
  if (v4 && ![(UIImageSymbolConfiguration *)self _isUnspecified])
  {
    *(v4 + 8) = self->_scale;
    v5 = [(NSString *)self->_textStyle copy];
    v6 = *(v4 + 10);
    *(v4 + 10) = v5;

    *(v4 + 4) = *&self->_pointSize;
    *(v4 + 11) = *&self->_customFontPointSizeMultiplier;
    *(v4 + 9) = self->_weight;
    *(v4 + 10) = self->_configFlags;
    objc_storeStrong(v4 + 6, self->_namedColorStyles);
    objc_storeStrong(v4 + 7, self->_colors);
  }

  return v4;
}

- (UIImageSymbolConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = UIImageSymbolConfiguration;
  v5 = [(UIImageConfiguration *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"UISymbolScale"])
    {
      v5->_scale = [coderCopy decodeIntegerForKey:@"UISymbolScale"];
    }

    if ([coderCopy containsValueForKey:@"UIPointSizeScaleFactor"])
    {
      [coderCopy decodeFloatForKey:@"UIPointSizeScaleFactor"];
      v5->_customFontPointSizeMultiplier = v6;
    }

    if ([coderCopy containsValueForKey:@"UISymbolWeight"])
    {
      v5->_weight = [coderCopy decodeIntegerForKey:@"UISymbolWeight"];
    }

    if ([coderCopy containsValueForKey:@"UITextStyle"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UITextStyle"];
      textStyle = v5->_textStyle;
      v5->_textStyle = v7;
    }

    if ([coderCopy containsValueForKey:@"UIPointSize"])
    {
      v9 = v5->_textStyle;
      [coderCopy decodeFloatForKey:@"UIPointSize"];
      v11 = v10;
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v5->_pointSize = v11;
      v12 = *&v5->_configFlags & 0xFFFE;
      if (!v9)
      {
        ++v12;
      }

      *&v5->_configFlags = v12;
    }

    if ([coderCopy containsValueForKey:@"UINamedColorStyles"])
    {
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"UINamedColorStyles"];
      namedColorStyles = v5->_namedColorStyles;
      v5->_namedColorStyles = v17;

      [(UIImageSymbolConfiguration *)v5 _setPrefersMulticolor:?];
    }

    if ([coderCopy containsValueForKey:@"UIHierarchicalColors"])
    {
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
      v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"UIHierarchicalColors"];

      -[UIImageSymbolConfiguration _setUsesHierarchical:colors:](v5, [coderCopy decodeBoolForKey:@"UIDerivativeHierarchicalColors"], v23);
    }

    if ([coderCopy containsValueForKey:@"UISpecifiedPrefersMulticolor"] && objc_msgSend(coderCopy, "decodeBoolForKey:", @"UISpecifiedPrefersMulticolor"))
    {
      -[UIImageSymbolConfiguration _setPrefersMulticolor:](v5, [coderCopy decodeBoolForKey:@"UIPrefersMulticolor"]);
    }

    if ([coderCopy containsValueForKey:@"UISpecifiedPrefersMonochrome"] && objc_msgSend(coderCopy, "decodeBoolForKey:", @"UISpecifiedPrefersMonochrome"))
    {
      -[UIImageSymbolConfiguration _setPrefersMonochrome:](v5, [coderCopy decodeBoolForKey:@"UIPrefersMonochrome"]);
    }

    if ([coderCopy containsValueForKey:@"UIVariableValueMode"])
    {
      *&v5->_configFlags = *&v5->_configFlags & 0xFF3F | (([coderCopy decodeIntegerForKey:@"UIVariableValueMode"] & 3) << 6);
    }

    if ([coderCopy containsValueForKey:@"UIColorRenderingMode"])
    {
      *&v5->_configFlags = *&v5->_configFlags & 0xFCFF | (([coderCopy decodeIntegerForKey:@"UIColorRenderingMode"] & 3) << 8);
    }

    if ([coderCopy containsValueForKey:@"UISuppressesMaterialRendering"])
    {
      if ([coderCopy decodeBoolForKey:@"UISuppressesMaterialRendering"])
      {
        v24 = 1024;
      }

      else
      {
        v24 = 0;
      }

      *&v5->_configFlags = *&v5->_configFlags & 0xFBFF | v24;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIImageSymbolConfiguration;
  [(UIImageConfiguration *)&v12 encodeWithCoder:coderCopy];
  if (![(UIImageSymbolConfiguration *)self _isUnspecified])
  {
    if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
    {
      [coderCopy encodeInteger:self->_scale forKey:@"UISymbolScale"];
    }

    pointSize = self->_pointSize;
    if (pointSize != 0.0)
    {
      *&pointSize = pointSize;
      [coderCopy encodeFloat:@"UIPointSize" forKey:pointSize];
    }

    customFontPointSizeMultiplier = self->_customFontPointSizeMultiplier;
    if (customFontPointSizeMultiplier != 1.0)
    {
      *&customFontPointSizeMultiplier = customFontPointSizeMultiplier;
      [coderCopy encodeFloat:@"UIPointSizeScaleFactor" forKey:customFontPointSizeMultiplier];
    }

    weight = self->_weight;
    if (weight)
    {
      [coderCopy encodeInt:weight forKey:@"UISymbolWeight"];
    }

    textStyle = self->_textStyle;
    if (textStyle)
    {
      [coderCopy encodeObject:textStyle forKey:@"UITextStyle"];
    }

    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles)
    {
      [coderCopy encodeObject:namedColorStyles forKey:@"UINamedColorStyles"];
    }

    colors = self->_colors;
    if (colors)
    {
      [coderCopy encodeObject:colors forKey:@"UIHierarchicalColors"];
      [coderCopy encodeBool:(*&self->_configFlags >> 1) & 1 forKey:@"UIDerivativeHierarchicalColors"];
    }

    configFlags = self->_configFlags;
    if ((configFlags & 8) != 0)
    {
      [coderCopy encodeBool:1 forKey:@"UISpecifiedPrefersMulticolor"];
      [coderCopy encodeBool:(*&self->_configFlags >> 2) & 1 forKey:@"UIPrefersMulticolor"];
      configFlags = self->_configFlags;
    }

    if ((configFlags & 0x20) != 0)
    {
      [coderCopy encodeBool:1 forKey:@"UISpecifiedPrefersMonochrome"];
      [coderCopy encodeBool:(*&self->_configFlags >> 4) & 1 forKey:@"UIPrefersMonochrome"];
    }

    if ([(UIImageSymbolConfiguration *)self variableValueMode])
    {
      [coderCopy encodeInteger:-[UIImageSymbolConfiguration variableValueMode](self forKey:{"variableValueMode"), @"UIVariableValueMode"}];
    }

    if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
    {
      [coderCopy encodeInteger:-[UIImageSymbolConfiguration colorRenderingMode](self forKey:{"colorRenderingMode"), @"UIColorRenderingMode"}];
    }

    if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
    {
      [coderCopy encodeBool:(*&self->_configFlags >> 10) & 1 forKey:@"UISuppressesMaterialRendering"];
    }
  }
}

- (BOOL)_hasColorConfigurationWithTintColor
{
  if (self)
  {
    selfCopy = self;
    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles && ([(NSDictionary *)namedColorStyles objectForKeyedSubscript:@"tintColor"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      LOBYTE(self) = 1;
    }

    else
    {
      colors = selfCopy->_colors;
      if (colors)
      {
        v6 = +[UIColor tintColor];
        v7 = [(NSArray *)colors containsObject:v6];

        LOBYTE(self) = v7;
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  return self;
}

- (BOOL)_shouldApplyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = UIImageSymbolConfiguration;
  if ([(UIImageConfiguration *)&v7 _shouldApplyConfiguration:configurationCopy])
  {
    v5 = ![(UIImageSymbolConfiguration *)self isEqualToConfiguration:configurationCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_applyConfigurationValuesTo:(id)to
{
  toCopy = to;
  if (!toCopy)
  {
    goto LABEL_63;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v35.receiver = self;
  v35.super_class = UIImageSymbolConfiguration;
  [(UIImageConfiguration *)&v35 _applyConfigurationValuesTo:toCopy];
  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    *(toCopy + 8) = [(UIImageSymbolConfiguration *)self scale];
  }

  if (dyld_program_sdk_at_least())
  {
    if (self)
    {
      if (self->_weight)
      {
        *(toCopy + 9) = [(UIImageSymbolConfiguration *)self weight];
      }

      if (self->_textStyle)
      {
        *(toCopy + 4) = 0;
        *(toCopy + 20) &= ~1u;
        textStyle = [(UIImageSymbolConfiguration *)self textStyle];
        v8 = *(toCopy + 10);
        *(toCopy + 10) = textStyle;

        [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
        if (v9 < 0.0)
        {
          v9 = 0.0;
        }

        *(toCopy + 4) = v9;
        v10 = *(toCopy + 20) & 0xFFFE;
LABEL_16:
        *(toCopy + 20) = v10;
LABEL_46:
        if (self->_namedColorStyles)
        {
          v25 = [*(toCopy + 6) mutableCopy];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = objc_opt_new();
          }

          v28 = v27;

          [v28 addEntriesFromDictionary:self->_namedColorStyles];
          v29 = [v28 copy];
          v30 = *(toCopy + 6);
          *(toCopy + 6) = v29;
        }

        colors = self->_colors;
        if (colors)
        {
          [(UIImageSymbolConfiguration *)toCopy _setUsesHierarchical:colors colors:?];
        }

        configFlags = self->_configFlags;
        if ((*&configFlags & 8) != 0)
        {
          [(UIImageSymbolConfiguration *)toCopy _setPrefersMulticolor:?];
          configFlags = self->_configFlags;
        }

        if ((*&configFlags & 0x20) != 0)
        {
          [(UIImageSymbolConfiguration *)toCopy _setPrefersMonochrome:?];
        }

        if ([(UIImageSymbolConfiguration *)self variableValueMode])
        {
          *(toCopy + 20) = *(toCopy + 20) & 0xFF3F | (([(UIImageSymbolConfiguration *)self variableValueMode]& 3) << 6);
        }

        if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
        {
          *(toCopy + 20) = *(toCopy + 20) & 0xFCFF | (([(UIImageSymbolConfiguration *)self colorRenderingMode]& 3) << 8);
        }

        goto LABEL_61;
      }

      if ((*&self->_configFlags & 1) == 0)
      {
        goto LABEL_46;
      }

      v15 = *(toCopy + 10);
      *(toCopy + 10) = 0;

      goto LABEL_25;
    }
  }

  else if (self)
  {
    if (self->_textStyle)
    {
      *(toCopy + 4) = 0;
      *(toCopy + 20) &= ~1u;
      *(toCopy + 9) = 0;
      v11 = *(toCopy + 10);
      *(toCopy + 10) = 0;

      textStyle2 = [(UIImageSymbolConfiguration *)self textStyle];
      v13 = *(toCopy + 10);
      *(toCopy + 10) = textStyle2;

      [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
      if (v14 < 0.0)
      {
        v14 = 0.0;
      }

      *(toCopy + 4) = v14;
      *(toCopy + 20) &= ~1u;
      if (self->_weight)
      {
        *(toCopy + 9) = [(UIImageSymbolConfiguration *)self weight];
      }

      goto LABEL_46;
    }

    weight = self->_weight;
    if ((*&self->_configFlags & 1) == 0)
    {
      if (!weight)
      {
        goto LABEL_46;
      }

      if ((*(toCopy + 20) & 1) == 0)
      {
        [(UIImageSymbolConfiguration *)toCopy _clearSpecificsExceptScale];
        *(toCopy + 9) = [(UIImageSymbolConfiguration *)self weight];
        goto LABEL_46;
      }

      v33 = *(toCopy + 4);
      [(UIImageSymbolConfiguration *)toCopy _clearSpecificsExceptScale];
      *(toCopy + 9) = [(UIImageSymbolConfiguration *)self weight];
      v34 = 0.0;
      if (v33 >= 0.0)
      {
        v34 = v33;
      }

      *(toCopy + 4) = v34;
      v10 = *(toCopy + 20) | 1;
      goto LABEL_16;
    }

    if (weight)
    {
      *(toCopy + 4) = 0;
      *(toCopy + 20) &= ~1u;
      *(toCopy + 9) = 0;
      v19 = *(toCopy + 10);
      *(toCopy + 10) = 0;

      v20 = 0.0;
      pointSize = 0.0;
      if (*&self->_configFlags)
      {
        pointSize = self->_pointSize;
      }

      if (pointSize >= 0.0)
      {
        v20 = pointSize;
      }

      *(toCopy + 4) = v20;
      *(toCopy + 20) |= 1u;
      *(toCopy + 9) = [(UIImageSymbolConfiguration *)self weight];
      goto LABEL_46;
    }

    if (*(toCopy + 9))
    {
      weight = [toCopy weight];
      [(UIImageSymbolConfiguration *)toCopy _clearSpecificsExceptScale];
      v23 = 0.0;
      v24 = 0.0;
      if (*&self->_configFlags)
      {
        v24 = self->_pointSize;
      }

      if (v24 >= 0.0)
      {
        v23 = v24;
      }

      *(toCopy + 4) = v23;
      *(toCopy + 20) |= 1u;
      *(toCopy + 9) = weight;
      goto LABEL_46;
    }

    [(UIImageSymbolConfiguration *)toCopy _clearSpecificsExceptScale];
LABEL_25:
    v16 = 0.0;
    v17 = 0.0;
    if (*&self->_configFlags)
    {
      v17 = self->_pointSize;
    }

    if (v17 >= 0.0)
    {
      v16 = v17;
    }

    *(toCopy + 4) = v16;
    *(toCopy + 20) |= 1u;
    goto LABEL_46;
  }

LABEL_61:
  if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
  {
    *(toCopy + 20) = *(toCopy + 20) & 0xFBFF | *&self->_configFlags & 0x400;
  }

LABEL_63:
}

- (UIImageSymbolConfiguration)configurationWithoutTextStyle
{
  if (self)
  {
    if (self->_textStyle)
    {
      selfCopy = [(UIImageSymbolConfiguration *)self copy];
      traitCollection = [(UIImageConfiguration *)selfCopy traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

      if (preferredContentSizeCategory == @"_UICTContentSizeCategoryUnspecified")
      {
        selfCopy->_pointSize = 0.0;
        v6 = *&selfCopy->_configFlags & 0xFFFE;
      }

      else
      {
        [(UIImageSymbolConfiguration *)self _deriveGlyphSize:0 weight:0 pointSize:&selfCopy->_pointSize];
        v6 = *&selfCopy->_configFlags | 1;
      }

      *&selfCopy->_configFlags = v6;
      textStyle = selfCopy->_textStyle;
      selfCopy->_textStyle = 0;
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UIImageSymbolConfiguration)configurationWithoutScale
{
  if (self)
  {
    if (self->_scale)
    {
      self = [(UIImageSymbolConfiguration *)self copy];
      self->_scale = 0;
    }

    else
    {
      self = self;
    }

    v2 = vars8;
  }

  return self;
}

- (UIImageSymbolConfiguration)configurationWithoutWeight
{
  if (self)
  {
    if (self->_weight)
    {
      self = [(UIImageSymbolConfiguration *)self copy];
      self->_weight = 0;
    }

    else
    {
      self = self;
    }

    v2 = vars8;
  }

  return self;
}

- (UIImageSymbolConfiguration)configurationWithoutPointSizeAndWeight
{
  if (self)
  {
    if ((*&self->_configFlags & 1) != 0 || self->_weight)
    {
      self = [(UIImageSymbolConfiguration *)self copy];
      *&self->_configFlags &= ~1u;
      self->_pointSize = 0.0;
      self->_weight = 0;
    }

    else
    {
      self = self;
    }

    v2 = vars8;
  }

  return self;
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(UIImageSymbolConfiguration *)self _isUnspecified])
  {
    goto LABEL_53;
  }

  if (self)
  {
    if (self->_textStyle)
    {
      [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
      v5 = v4;
      v6 = MEMORY[0x1E696AEC0];
      textStyle = [(UIImageSymbolConfiguration *)self textStyle];
      v8 = textStyle;
      if (v5 <= 0.0)
      {
        [v6 stringWithFormat:@"textStyle=%@", textStyle, v41];
      }

      else
      {
        [v6 stringWithFormat:@"textStyle=%@ (scaled from %gpt)", textStyle, *&v5];
      }
      v9 = ;
      [array addObject:v9];
    }

    else
    {
      if ((*&self->_configFlags & 1) == 0)
      {
        goto LABEL_11;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pointSize=%g", *&self->_pointSize];
      [array addObject:v8];
    }

LABEL_11:
    if (self->_weight)
    {
      v10 = _NSStringFromUIImageSymbolWeight([(UIImageSymbolConfiguration *)self weight]);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"weight=%@", v10];
      [array addObject:v11];
    }
  }

  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    scale = [(UIImageSymbolConfiguration *)self scale];
    if ((scale + 1) > 4)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E712BC08[scale + 1];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scale=%@", v13];
    [array addObject:v14];
  }

  if (self)
  {
    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles)
    {
      v16 = MEMORY[0x1E696AEC0];
      allKeys = [(NSDictionary *)namedColorStyles allKeys];
      v18 = [allKeys componentsJoinedByString:{@", "}];
      v19 = [v16 stringWithFormat:@"styled colors (%@)", v18];
      [array addObject:v19];
    }
  }

  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedHierarchicalColors]|| [(UIImageSymbolConfiguration *)self _hasSpecifiedPaletteColors])
  {
    v20 = [(NSArray *)self->_colors componentsJoinedByString:@", "];
    if ([(UIImageSymbolConfiguration *)self _hasSpecifiedHierarchicalColors])
    {
      v21 = @"hierarchical color (%@)";
    }

    else
    {
      if (![(UIImageSymbolConfiguration *)self _hasSpecifiedPaletteColors])
      {
LABEL_28:

LABEL_35:
        if ([(UIImageSymbolConfiguration *)self variableValueMode])
        {
          variableValueMode = [(UIImageSymbolConfiguration *)self variableValueMode];
          if (variableValueMode > 2)
          {
            v25 = @"?";
          }

          else
          {
            v25 = off_1E712BC30[variableValueMode];
          }

          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"variableValueMode=%@", v25];
          [array addObject:v26];
        }

        if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
        {
          colorRenderingMode = [(UIImageSymbolConfiguration *)self colorRenderingMode];
          if (colorRenderingMode > 2)
          {
            v28 = @"?";
          }

          else
          {
            v28 = off_1E712BC48[colorRenderingMode];
          }

          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"colorRenderingMode=%@", v28];
          [array addObject:v29];
        }

        goto LABEL_45;
      }

      v21 = @"palette colors (%@)";
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:v21, v20];
    [array addObject:v22];

    goto LABEL_28;
  }

  if ([(UIImageSymbolConfiguration *)self _prefersMulticolor])
  {
    v23 = @"prefers multicolor";
  }

  else
  {
    if (![(UIImageSymbolConfiguration *)self _prefersMonochrome])
    {
      goto LABEL_34;
    }

    v23 = @"prefers monochrome";
  }

  [array addObject:v23];
LABEL_34:
  if (self)
  {
    goto LABEL_35;
  }

LABEL_45:
  if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
  {
    [array addObject:@"suppresses material rendering"];
  }

  traitCollection = [(UIImageConfiguration *)self traitCollection];

  if (traitCollection)
  {
    v31 = MEMORY[0x1E696AEC0];
    traitCollection2 = [(UIImageConfiguration *)self traitCollection];
    _traitsDescription = [traitCollection2 _traitsDescription];
    v34 = [v31 stringWithFormat:@"traits=(%@)", _traitsDescription];
    [array addObject:v34];
  }

  locale = [(UIImageConfiguration *)self locale];

  if (locale)
  {
    v36 = MEMORY[0x1E696AEC0];
    locale2 = [(UIImageConfiguration *)self locale];
    v38 = [v36 stringWithFormat:@"locale=(%@)", locale2];
    [array addObject:v38];
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    [array addObject:@"ignores dynamic type"];
  }

LABEL_53:
  if ([array count])
  {
    v39 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v39 = @"unspecified";
  }

  return v39;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIImageSymbolConfiguration *)self isEqualToConfiguration:equalCopy];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = UIImageSymbolConfiguration;
      v5 = [(UIImageConfiguration *)&v8 isEqual:equalCopy];
    }

    v6 = v5;
  }

  return v6;
}

- (BOOL)isEqualToConfiguration:(UIImageSymbolConfiguration *)otherConfiguration
{
  v4 = otherConfiguration;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    if (!v5)
    {
      goto LABEL_44;
    }
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  _hasSpecifiedScale = [(UIImageSymbolConfiguration *)self _hasSpecifiedScale];
  if (_hasSpecifiedScale != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedScale])
  {
    goto LABEL_44;
  }

  scale = [(UIImageSymbolConfiguration *)self scale];
  if (scale != [(UIImageSymbolConfiguration *)v5 scale])
  {
    goto LABEL_44;
  }

  if (self)
  {
    if ((self->_textStyle != 0) != (v5->_textStyle != 0))
    {
      goto LABEL_44;
    }
  }

  else if (v5->_textStyle)
  {
    goto LABEL_44;
  }

  textStyle = [(UIImageSymbolConfiguration *)self textStyle];
  textStyle2 = [(UIImageSymbolConfiguration *)v5 textStyle];
  v12 = textStyle;
  v13 = textStyle2;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

LABEL_43:
      goto LABEL_44;
    }

    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
  v17 = v16;
  [(UIImageSymbolConfiguration *)v5 pointSizeForScalingWithTextStyle];
  v19 = v18;

  if (v17 != v19)
  {
    goto LABEL_44;
  }

  if (self)
  {
    configFlags = self->_configFlags;
    v21 = v5->_configFlags;
    if ((*&configFlags ^ *&v21))
    {
      goto LABEL_44;
    }

    v22 = 0.0;
    pointSize = 0.0;
    if (*&configFlags)
    {
      pointSize = self->_pointSize;
    }

    if (*&v21)
    {
      v22 = v5->_pointSize;
    }

    if (pointSize != v22)
    {
      goto LABEL_44;
    }
  }

  else if (*&v5->_configFlags)
  {
    goto LABEL_44;
  }

  [(UIImageSymbolConfiguration *)self customFontPointSizeMultiplier];
  v25 = v24;
  [(UIImageSymbolConfiguration *)v5 customFontPointSizeMultiplier];
  if (v25 != v26)
  {
LABEL_44:
    v41 = 0;
    goto LABEL_45;
  }

  if (self)
  {
    if ((self->_weight != 0) != (v5->_weight != 0))
    {
      goto LABEL_44;
    }
  }

  else if (v5->_weight)
  {
    goto LABEL_44;
  }

  weight = [(UIImageSymbolConfiguration *)self weight];
  if (weight != [(UIImageSymbolConfiguration *)v5 weight])
  {
    goto LABEL_44;
  }

  if (self)
  {
    if ((self->_namedColorStyles != 0) == (v5->_namedColorStyles != 0))
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  if (v5->_namedColorStyles)
  {
    goto LABEL_44;
  }

LABEL_32:
  _namedColorStyles = [(UIImageSymbolConfiguration *)self _namedColorStyles];
  _namedColorStyles2 = [(UIImageSymbolConfiguration *)v5 _namedColorStyles];
  v30 = _deferringTokenEqualToToken(_namedColorStyles, _namedColorStyles2);

  if (!v30)
  {
    goto LABEL_44;
  }

  _hasSpecifiedHierarchicalColors = [(UIImageSymbolConfiguration *)self _hasSpecifiedHierarchicalColors];
  if (_hasSpecifiedHierarchicalColors != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedHierarchicalColors])
  {
    goto LABEL_44;
  }

  _hasSpecifiedPaletteColors = [(UIImageSymbolConfiguration *)self _hasSpecifiedPaletteColors];
  if (_hasSpecifiedPaletteColors != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedPaletteColors])
  {
    goto LABEL_44;
  }

  _colors = [(UIImageSymbolConfiguration *)self _colors];
  _colors2 = [(UIImageSymbolConfiguration *)v5 _colors];
  v35 = _deferringTokenEqualToToken(_colors, _colors2);

  if (!v35)
  {
    goto LABEL_44;
  }

  _prefersMulticolor = [(UIImageSymbolConfiguration *)self _prefersMulticolor];
  if (_prefersMulticolor != [(UIImageSymbolConfiguration *)v5 _prefersMulticolor])
  {
    goto LABEL_44;
  }

  _prefersMonochrome = [(UIImageSymbolConfiguration *)self _prefersMonochrome];
  if (_prefersMonochrome != [(UIImageSymbolConfiguration *)v5 _prefersMonochrome])
  {
    goto LABEL_44;
  }

  variableValueMode = [(UIImageSymbolConfiguration *)self variableValueMode];
  if (variableValueMode != [(UIImageSymbolConfiguration *)v5 variableValueMode])
  {
    goto LABEL_44;
  }

  colorRenderingMode = [(UIImageSymbolConfiguration *)self colorRenderingMode];
  if (colorRenderingMode != [(UIImageSymbolConfiguration *)v5 colorRenderingMode])
  {
    goto LABEL_44;
  }

  _suppressesMaterialRendering = [(UIImageSymbolConfiguration *)self _suppressesMaterialRendering];
  if (_suppressesMaterialRendering != [(UIImageSymbolConfiguration *)v5 _suppressesMaterialRendering])
  {
    goto LABEL_44;
  }

  v43.receiver = self;
  v43.super_class = UIImageSymbolConfiguration;
  v41 = [(UIImageConfiguration *)&v43 isEqualToConfiguration:v5];
LABEL_45:

  return v41;
}

- (BOOL)_isEquivalentToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = +[UIImageSymbolConfiguration unspecifiedConfiguration];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21.receiver = self;
    v21.super_class = UIImageSymbolConfiguration;
    v5 = [(UIImageConfiguration *)&v21 _isEquivalentToConfiguration:configurationCopy];
    goto LABEL_8;
  }

  if (!-[UIImageSymbolConfiguration _isUnspecified](self, "_isUnspecified") && ([configurationCopy _isUnspecified] & 1) == 0)
  {
    if (-[UIImageSymbolConfiguration _hasSpecifiedScale](self, "_hasSpecifiedScale") && [configurationCopy _hasSpecifiedScale])
    {
      scale = [(UIImageSymbolConfiguration *)self scale];
      scale2 = [configurationCopy scale];
      goto LABEL_28;
    }

    if (self)
    {
      if (self->_textStyle)
      {
        if (!configurationCopy)
        {
          goto LABEL_30;
        }

        if (*(configurationCopy + 10))
        {
          textStyle = [(UIImageSymbolConfiguration *)self textStyle];
          textStyle2 = [configurationCopy textStyle];
          v11 = textStyle;
          v12 = textStyle2;
          v13 = v12;
          if (v11 == v12)
          {
          }

          else
          {
            if (!v11 || !v12)
            {

LABEL_39:
              goto LABEL_6;
            }

            v14 = [v11 isEqual:v12];

            if (!v14)
            {
              goto LABEL_39;
            }
          }

          [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
          v18 = v17;
          [configurationCopy pointSizeForScalingWithTextStyle];
          v20 = v19;

          if (v18 != v20)
          {
            goto LABEL_6;
          }

LABEL_36:
          v16 = 1;
          goto LABEL_37;
        }
      }

      if (*&self->_configFlags & 1) != 0 && configurationCopy && (*(configurationCopy + 20))
      {
        if (self->_pointSize != *(configurationCopy + 4))
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }

      if (self->_weight && configurationCopy && *(configurationCopy + 9))
      {
        scale = [(UIImageSymbolConfiguration *)self weight];
        scale2 = [configurationCopy weight];
LABEL_28:
        if (scale != scale2)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }
    }

LABEL_30:
    v22.receiver = self;
    v22.super_class = UIImageSymbolConfiguration;
    v15 = [(UIImageConfiguration *)&v22 _isEquivalentToConfiguration:configurationCopy];
    v16 = 0;
    v5 = 0;
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_37:
    v5 = v16;
    goto LABEL_8;
  }

LABEL_6:
  v5 = 0;
LABEL_8:

  return v5;
}

- (void)_deriveGlyphSize:(int64_t *)size weight:(int64_t *)weight pointSize:(double *)pointSize
{
  [off_1E70ECC18 defaultFontSize];
  v10 = v9;
  _effectiveTraitCollectionForImageLookup = [(UIImageConfiguration *)self _effectiveTraitCollectionForImageLookup];
  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    v12 = [(UIImageSymbolConfiguration *)self scale]+ 1;
    if (v12 > 4)
    {
      v13 = 0;
      if (!self)
      {
LABEL_30:
        weight = 4;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = qword_18A683CD0[v12];
      if (!self)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v13 = 2;
    if (!self)
    {
      goto LABEL_30;
    }
  }

  if (!self->_textStyle)
  {
    if (*&self->_configFlags)
    {
      pointSize = self->_pointSize;
      [(UIImageSymbolConfiguration *)self customFontPointSizeMultiplier];
      v10 = pointSize * v25;
    }

    if (self->_weight)
    {
      weight = [(UIImageSymbolConfiguration *)self weight];
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  textStyle = [(UIImageSymbolConfiguration *)self textStyle];
  preferredContentSizeCategory = [_effectiveTraitCollectionForImageLookup preferredContentSizeCategory];
  v16 = [off_1E70ECC18 _normalizedContentSizeCategory:preferredContentSizeCategory default:0];

  CTFontDescriptorGetTextStyleSize();
  v18 = v17;
  [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
  if (v19 > 0.0)
  {
    [UIFontMetrics scaledValueForValue:textStyle withTextStyle:_effectiveTraitCollectionForImageLookup bodyLeading:self->_pointSize compatibleWithTraitCollection:0.0];
    v18 = v20;
  }

  [(UIImageSymbolConfiguration *)self customFontPointSizeMultiplier:0];
  v22 = v21;
  if (self->_weight)
  {
    weight2 = [(UIImageSymbolConfiguration *)self weight];
  }

  else
  {
    weight2 = UISIndexForFontWeight();
  }

  weight = weight2;
  v10 = v18 * v22;

LABEL_19:
  if ([_effectiveTraitCollectionForImageLookup legibilityWeight] == 1)
  {
    UISFontWeightForIndex();
    CTFontGetAccessibilityBoldWeightOfWeight();
    weight = UISIndexForFontWeight();
  }

  v27 = 4;
  if ((weight - 1) < 9)
  {
    v27 = weight;
  }

  if (size)
  {
    *size = v13;
  }

  if (weight)
  {
    *weight = v27;
  }

  if (pointSize)
  {
    *pointSize = v10;
  }
}

- (id)_colorForNamedStyle:(id)style renditionContext:(id)context resolveDynamicColors:(BOOL)colors
{
  colorsCopy = colors;
  styleCopy = style;
  contextCopy = context;
  traitCollectionForResolvingDynamicColors = [(_UIImageContentRenditionContext *)contextCopy traitCollectionForResolvingDynamicColors];
  _namedColorStyles = [(UIImageSymbolConfiguration *)self _namedColorStyles];
  v12 = [_namedColorStyles objectForKeyedSubscript:styleCopy];

  if (!v12)
  {
    v13 = [UIColor _systemColorWithUnvalidatedName:styleCopy];
    if (v13)
    {
LABEL_3:
      v12 = v13;
      goto LABEL_4;
    }

    if ([styleCopy isEqualToString:@"white"])
    {
      v18 = +[UIColor whiteColor];
    }

    else
    {
      if (![styleCopy isEqualToString:@"black"])
      {
        goto LABEL_17;
      }

      v18 = +[UIColor blackColor];
    }

    v12 = v18;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (([styleCopy isEqualToString:@"controlAccentColor"] & 1) != 0 || objc_msgSend(styleCopy, "isEqualToString:", @"tintColor"))
    {
      v13 = +[UIColor tintColor];
      if (v13)
      {
        goto LABEL_3;
      }
    }

    if (contextCopy)
    {
      WeakRetained = objc_loadWeakRetained(contextCopy + 3);
      v20 = WeakRetained;
      if (WeakRetained)
      {
        v12 = [WeakRetained _colorForName:styleCopy withTraitCollection:traitCollectionForResolvingDynamicColors];
LABEL_25:

        goto LABEL_4;
      }
    }

    else
    {
      v20 = 0;
    }

    v12 = 0;
    goto LABEL_25;
  }

LABEL_4:
  v14 = +[UIColor tintColor];

  if (v12 == v14)
  {
    v15 = _TintColorFromTraitCollection(traitCollectionForResolvingDynamicColors);

    v12 = v15;
  }

  if (colorsCopy && traitCollectionForResolvingDynamicColors)
  {
    v16 = [v12 resolvedColorWithTraitCollection:traitCollectionForResolvingDynamicColors];

    v12 = v16;
  }

  return v12;
}

- (id)_hierarchicalColorForLayerLevel:(int64_t)level renditionContext:(id)context resolveDynamicColors:(BOOL)colors
{
  colorsCopy = colors;
  v35 = *MEMORY[0x1E69E9840];
  traitCollectionForResolvingDynamicColors = [(_UIImageContentRenditionContext *)context traitCollectionForResolvingDynamicColors];
  v9 = [(NSArray *)self->_colors count];
  if (v9 < 2)
  {
    firstObject = [(NSArray *)self->_colors firstObject];
    v15 = +[UIColor tintColor];

    if (firstObject == v15)
    {
      v16 = _TintColorFromTraitCollection(traitCollectionForResolvingDynamicColors);

      firstObject = v16;
    }

    if ([traitCollectionForResolvingDynamicColors userInterfaceStyle] == 2)
    {
      v17 = +[UIColor systemRedColor];
      if ([firstObject isEqual:v17])
      {

LABEL_16:
        v20 = 0.2;
        goto LABEL_17;
      }

      v21 = +[UIColor systemPinkColor];
      v22 = [firstObject isEqual:v21];

      v20 = 0.25;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = +[UIColor systemYellowColor];
      v19 = [firstObject isEqual:v18];

      if (v19)
      {
        v20 = 0.3;
      }

      else
      {
        v20 = 0.25;
      }
    }

LABEL_17:
    if (colorsCopy && traitCollectionForResolvingDynamicColors)
    {
      v23 = [firstObject resolvedColorWithTraitCollection:traitCollectionForResolvingDynamicColors];

      firstObject = v23;
    }

    if (level == 1)
    {
      [firstObject alphaComponent];
      v26 = v25 * 0.5;
    }

    else
    {
      if (!level)
      {
        v24 = firstObject;
LABEL_26:
        v13 = v24;

        goto LABEL_27;
      }

      [firstObject alphaComponent];
      v26 = v20 * v27;
    }

    v24 = [firstObject colorWithAlphaComponent:v26];
    goto LABEL_26;
  }

  v10 = v9;
  v11 = v9 - 1;
  if (v9 - 1 >= level)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v30 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = 134218240;
        v32 = v10;
        v33 = 2048;
        levelCopy2 = level;
        _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "Only %lu hierarchical colors specified for a symbol with a layer at level %lu; please adopt +configurationWithHierarchicalColor: or +configurationWithPaletteColors: API", &v31, 0x16u);
      }
    }

    else
    {
      v29 = *(__UILogGetCategoryCachedImpl("Assert", &_hierarchicalColorForLayerLevel_renditionContext_resolveDynamicColors____s_category) + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = 134218240;
        v32 = v10;
        v33 = 2048;
        levelCopy2 = level;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Only %lu hierarchical colors specified for a symbol with a layer at level %lu; please adopt +configurationWithHierarchicalColor: or +configurationWithPaletteColors: API", &v31, 0x16u);
      }
    }
  }

  if (v11 >= level)
  {
    levelCopy3 = level;
  }

  else
  {
    levelCopy3 = v11;
  }

  v13 = [(NSArray *)self->_colors objectAtIndexedSubscript:levelCopy3];
LABEL_27:

  return v13;
}

- (id)_paletteColorsWithRenditionContext:(id)context resolveDynamicColors:(BOOL)colors
{
  colorsCopy = colors;
  traitCollectionForResolvingDynamicColors = [(_UIImageContentRenditionContext *)context traitCollectionForResolvingDynamicColors];
  v7 = [(NSArray *)self->_colors mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    if (traitCollectionForResolvingDynamicColors)
    {
      v9 = colorsCopy;
    }

    else
    {
      v9 = 0;
    }

    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v8];
      v11 = +[UIColor tintColor];

      if (v10 == v11)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (++v8 >= [v7 count])
      {
        goto LABEL_12;
      }
    }

    v14 = _TintColorFromTraitCollection(traitCollectionForResolvingDynamicColors);
    [v7 setObject:v14 atIndexedSubscript:v8];

    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    v12 = [v7 objectAtIndexedSubscript:v8];
    v13 = [v12 resolvedColorWithTraitCollection:traitCollectionForResolvingDynamicColors];
    [v7 setObject:v13 atIndexedSubscript:v8];

    goto LABEL_8;
  }

LABEL_12:
  v15 = [v7 copy];

  return v15;
}

@end