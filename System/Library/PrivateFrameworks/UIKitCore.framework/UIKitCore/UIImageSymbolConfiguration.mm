@interface UIImageSymbolConfiguration
+ (UIImageSymbolConfiguration)configurationPreferringMonochrome;
+ (UIImageSymbolConfiguration)configurationPreferringMulticolor;
+ (UIImageSymbolConfiguration)configurationWithColorRenderingMode:(int64_t)a3;
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
+ (UIImageSymbolConfiguration)configurationWithVariableValueMode:(int64_t)a3;
+ (UIImageSymbolConfiguration)configurationWithWeight:(UIImageSymbolWeight)weight;
+ (id)_configurationWithHierarchicalColors:(id)a3;
+ (id)_configurationWithNamedColorStyles:(id)a3;
+ (id)_unspecifiedConfiguration;
- (BOOL)_hasColorConfigurationWithTintColor;
- (BOOL)_hasSpecifiedHierarchicalColors;
- (BOOL)_isEquivalentToConfiguration:(id)a3;
- (BOOL)_isUnspecified;
- (BOOL)_shouldApplyConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(UIImageSymbolConfiguration *)otherConfiguration;
- (UIImageSymbolConfiguration)configurationWithoutPointSizeAndWeight;
- (UIImageSymbolConfiguration)configurationWithoutScale;
- (UIImageSymbolConfiguration)configurationWithoutTextStyle;
- (UIImageSymbolConfiguration)configurationWithoutWeight;
- (UIImageSymbolConfiguration)initWithCoder:(id)a3;
- (double)pointSizeForScalingWithTextStyle;
- (id)_colorForNamedStyle:(id)a3 renditionContext:(id)a4 resolveDynamicColors:(BOOL)a5;
- (id)_configurationByReplacingColors:(id)a3;
- (id)_configurationSuppressingMaterialRendering;
- (id)_hierarchicalColorForLayerLevel:(int64_t)a3 renditionContext:(id)a4 resolveDynamicColors:(BOOL)a5;
- (id)_initWithTraitCollection:(id)a3;
- (id)_paletteColorsWithRenditionContext:(id)a3 resolveDynamicColors:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_applyConfigurationValuesTo:(id)a3;
- (void)_clearSpecificsExceptScale;
- (void)_deriveGlyphSize:(int64_t *)a3 weight:(int64_t *)a4 pointSize:(double *)a5;
- (void)_setPrefersMonochrome:(uint64_t)a1;
- (void)_setPrefersMulticolor:(uint64_t)a1;
- (void)_setUsesHierarchical:(void *)a3 colors:;
- (void)encodeWithCoder:(id)a3;
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
  v6 = [(NSArray *)self->_colors firstObject];
  v7 = v5 ^ [v6 hash];
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
  v2 = [objc_alloc(objc_opt_self()) _init];
  [(UIImageSymbolConfiguration *)v2 _setPrefersMonochrome:?];

  return v2;
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
  v2 = [objc_alloc(objc_opt_self()) _init];
  [(UIImageSymbolConfiguration *)v2 _setPrefersMulticolor:?];

  return v2;
}

+ (UIImageSymbolConfiguration)configurationWithScale:(UIImageSymbolScale)scale
{
  v4 = [[a1 alloc] _init];
  v4[8] = scale;

  return v4;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize
{
  v4 = [[a1 alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v5;
  }

  if (v4)
  {
    v6 = 0.0;
    if (pointSize >= 0.0)
    {
      v6 = pointSize;
    }

    *(v4 + 32) = v6;
    *(v4 + 40) |= 1u;
  }

  return v4;
}

+ (UIImageSymbolConfiguration)configurationWithWeight:(UIImageSymbolWeight)weight
{
  v4 = [[a1 alloc] _init];
  v4[9] = weight;

  return v4;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight
{
  v6 = [[a1 alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v7;
  }

  if (v6)
  {
    v8 = 0.0;
    if (pointSize >= 0.0)
    {
      v8 = pointSize;
    }

    *(v6 + 32) = v8;
    *(v6 + 40) |= 1u;
  }

  *(v6 + 72) = weight;

  return v6;
}

+ (UIImageSymbolConfiguration)configurationWithPointSize:(CGFloat)pointSize weight:(UIImageSymbolWeight)weight scale:(UIImageSymbolScale)scale
{
  v8 = [[a1 alloc] _init];
  if (pointSize <= 0.0)
  {
    [off_1E70ECC18 defaultFontSize];
    pointSize = v9;
  }

  if (v8)
  {
    v10 = 0.0;
    if (pointSize >= 0.0)
    {
      v10 = pointSize;
    }

    *(v8 + 32) = v10;
    *(v8 + 40) |= 1u;
  }

  *(v8 + 72) = weight;
  *(v8 + 64) = scale;

  return v8;
}

+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle
{
  v4 = textStyle;
  v5 = [[a1 alloc] _init];
  v6 = v5[10];
  v5[10] = v4;

  return v5;
}

+ (UIImageSymbolConfiguration)configurationWithTextStyle:(UIFontTextStyle)textStyle scale:(UIImageSymbolScale)scale
{
  result = [a1 configurationWithTextStyle:textStyle];
  result->_scale = scale;
  return result;
}

+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font
{
  v3 = font;
  v4 = [(UIImageConfiguration *)[UIImageSymbolConfiguration alloc] _init];
  v5 = [(UIFont *)v3 _textStyle];
  v6 = dyld_program_sdk_at_least() ^ 1;
  v7 = [(UIFont *)v3 textStyleForScaling];
  if (v7)
  {
  }

  else if ([objc_opt_class() _isSupportedDynamicFontTextStyle:v5])
  {
    goto LABEL_9;
  }

  v8 = [(UIFont *)v3 textStyleForScaling];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [(UIFont *)v3 textStyleForScaling];
    LODWORD(v9) = [v9 _isSupportedDynamicFontTextStyle:v10];

    if (v9)
    {
      v8 = [(UIFont *)v3 textStyleForScaling];
      v6 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v5 = v8;
LABEL_9:
  CTFontGetWeight();
  *(v4 + 9) = UISIndexForFontWeight();
  if (v5)
  {
    if (v6)
    {
      [(UIFont *)v3 pointSizeForScaling];
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      *(v4 + 4) = v11;
      *(v4 + 20) &= ~1u;
      goto LABEL_22;
    }

    if (!dyld_program_sdk_at_least())
    {
LABEL_22:
      objc_storeStrong(v4 + 10, v5);
      goto LABEL_25;
    }

    v13 = [off_1E70ECC18 _normalizedContentSizeCategory:0 default:0];
    CTFontDescriptorGetTextStyleSize();
    v15 = v14;
    [(UIFont *)v3 pointSize];
    if (v15 == v16)
    {
      objc_storeStrong(v4 + 10, v5);
    }

    else
    {
      [(UIFont *)v3 pointSize];
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      *(v4 + 4) = v17;
      *(v4 + 20) |= 1u;
    }
  }

  else
  {
    [(UIFont *)v3 pointSize];
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    *(v4 + 4) = v12;
    *(v4 + 20) |= 1u;
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
        *(v4 + 11) = 0x3FF0000000000000;
        goto LABEL_40;
      }

      v26 = v31 / v30;
    }

    else
    {
      v26 = v25 / v24;
    }

    *(v4 + 11) = v26;
  }

LABEL_40:

  return v4;
}

+ (UIImageSymbolConfiguration)configurationWithFont:(UIFont *)font scale:(UIImageSymbolScale)scale
{
  result = [a1 configurationWithFont:font];
  result->_scale = scale;
  return result;
}

+ (id)_configurationWithNamedColorStyles:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _init];
  v6 = [v4 copy];

  v7 = v5[6];
  v5[6] = v6;

  [(UIImageSymbolConfiguration *)v5 _setPrefersMulticolor:?];

  return v5;
}

- (void)_setPrefersMulticolor:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFFFB | v2;
    *(a1 + 40) |= 8u;
    if (a2)
    {
      *(a1 + 40) &= ~0x10u;
      *(a1 + 40) |= 0x20u;
      [(UIImageSymbolConfiguration *)a1 _setUsesHierarchical:0 colors:?];
    }
  }
}

+ (id)_configurationWithHierarchicalColors:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v5 = +[UIColor tintColor];
    goto LABEL_5;
  }

  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
LABEL_5:
    v6 = v5;
    v7 = [a1 configurationWithHierarchicalColor:v5];

    goto LABEL_7;
  }

  v7 = [a1 configurationWithPaletteColors:v4];
LABEL_7:

  return v7;
}

- (id)_configurationByReplacingColors:(id)a3
{
  v4 = a3;
  v5 = [(UIImageSymbolConfiguration *)self copy];
  v6 = [v4 copy];

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

  v5 = [[a1 alloc] _init];
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(UIImageSymbolConfiguration *)v5 _setUsesHierarchical:v6 colors:?];

  return v5;
}

- (void)_setUsesHierarchical:(void *)a3 colors:
{
  v6 = a3;
  if (a1)
  {
    v8 = v6;
    objc_storeStrong((a1 + 56), a3);
    v6 = v8;
    v7 = a2 ? 2 : 0;
    *(a1 + 40) = *(a1 + 40) & 0xFFFD | v7;
    if (v8)
    {
      *(a1 + 40) &= ~4u;
      *(a1 + 40) |= 8u;
      *(a1 + 40) &= ~0x10u;
      *(a1 + 40) |= 0x20u;
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

  v6 = [[a1 alloc] _init];
  [(UIImageSymbolConfiguration *)v6 _setUsesHierarchical:v4 colors:?];

  return v6;
}

- (void)_setPrefersMonochrome:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFFEF | v2;
    *(a1 + 40) |= 0x20u;
    if (a2)
    {
      *(a1 + 40) &= ~4u;
      *(a1 + 40) |= 8u;
      [(UIImageSymbolConfiguration *)a1 _setUsesHierarchical:0 colors:?];
    }
  }
}

+ (UIImageSymbolConfiguration)configurationWithVariableValueMode:(int64_t)a3
{
  v3 = a3;
  v4 = [[a1 alloc] _init];
  if (v4)
  {
    v4[20] = v4[20] & 0xFF3F | ((v3 & 3) << 6);
  }

  return v4;
}

+ (UIImageSymbolConfiguration)configurationWithColorRenderingMode:(int64_t)a3
{
  v3 = a3;
  v4 = [[a1 alloc] _init];
  if (v4)
  {
    v4[20] = v4[20] & 0xFCFF | ((v3 & 3) << 8);
  }

  return v4;
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

- (id)_initWithTraitCollection:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIImageSymbolConfiguration;
  v3 = [(UIImageConfiguration *)&v7 _initWithTraitCollection:a3];
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
  *(a1 + 32) = 0;
  *(a1 + 40) &= ~1u;
  *(a1 + 72) = 0;
  v1 = *(a1 + 80);
  *(a1 + 80) = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = UIImageSymbolConfiguration;
  v4 = [(UIImageConfiguration *)&v8 copyWithZone:a3];
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

- (UIImageSymbolConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = UIImageSymbolConfiguration;
  v5 = [(UIImageConfiguration *)&v26 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"UISymbolScale"])
    {
      v5->_scale = [v4 decodeIntegerForKey:@"UISymbolScale"];
    }

    if ([v4 containsValueForKey:@"UIPointSizeScaleFactor"])
    {
      [v4 decodeFloatForKey:@"UIPointSizeScaleFactor"];
      v5->_customFontPointSizeMultiplier = v6;
    }

    if ([v4 containsValueForKey:@"UISymbolWeight"])
    {
      v5->_weight = [v4 decodeIntegerForKey:@"UISymbolWeight"];
    }

    if ([v4 containsValueForKey:@"UITextStyle"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UITextStyle"];
      textStyle = v5->_textStyle;
      v5->_textStyle = v7;
    }

    if ([v4 containsValueForKey:@"UIPointSize"])
    {
      v9 = v5->_textStyle;
      [v4 decodeFloatForKey:@"UIPointSize"];
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

    if ([v4 containsValueForKey:@"UINamedColorStyles"])
    {
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"UINamedColorStyles"];
      namedColorStyles = v5->_namedColorStyles;
      v5->_namedColorStyles = v17;

      [(UIImageSymbolConfiguration *)v5 _setPrefersMulticolor:?];
    }

    if ([v4 containsValueForKey:@"UIHierarchicalColors"])
    {
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"UIHierarchicalColors"];

      -[UIImageSymbolConfiguration _setUsesHierarchical:colors:](v5, [v4 decodeBoolForKey:@"UIDerivativeHierarchicalColors"], v23);
    }

    if ([v4 containsValueForKey:@"UISpecifiedPrefersMulticolor"] && objc_msgSend(v4, "decodeBoolForKey:", @"UISpecifiedPrefersMulticolor"))
    {
      -[UIImageSymbolConfiguration _setPrefersMulticolor:](v5, [v4 decodeBoolForKey:@"UIPrefersMulticolor"]);
    }

    if ([v4 containsValueForKey:@"UISpecifiedPrefersMonochrome"] && objc_msgSend(v4, "decodeBoolForKey:", @"UISpecifiedPrefersMonochrome"))
    {
      -[UIImageSymbolConfiguration _setPrefersMonochrome:](v5, [v4 decodeBoolForKey:@"UIPrefersMonochrome"]);
    }

    if ([v4 containsValueForKey:@"UIVariableValueMode"])
    {
      *&v5->_configFlags = *&v5->_configFlags & 0xFF3F | (([v4 decodeIntegerForKey:@"UIVariableValueMode"] & 3) << 6);
    }

    if ([v4 containsValueForKey:@"UIColorRenderingMode"])
    {
      *&v5->_configFlags = *&v5->_configFlags & 0xFCFF | (([v4 decodeIntegerForKey:@"UIColorRenderingMode"] & 3) << 8);
    }

    if ([v4 containsValueForKey:@"UISuppressesMaterialRendering"])
    {
      if ([v4 decodeBoolForKey:@"UISuppressesMaterialRendering"])
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIImageSymbolConfiguration;
  [(UIImageConfiguration *)&v12 encodeWithCoder:v4];
  if (![(UIImageSymbolConfiguration *)self _isUnspecified])
  {
    if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
    {
      [v4 encodeInteger:self->_scale forKey:@"UISymbolScale"];
    }

    pointSize = self->_pointSize;
    if (pointSize != 0.0)
    {
      *&pointSize = pointSize;
      [v4 encodeFloat:@"UIPointSize" forKey:pointSize];
    }

    customFontPointSizeMultiplier = self->_customFontPointSizeMultiplier;
    if (customFontPointSizeMultiplier != 1.0)
    {
      *&customFontPointSizeMultiplier = customFontPointSizeMultiplier;
      [v4 encodeFloat:@"UIPointSizeScaleFactor" forKey:customFontPointSizeMultiplier];
    }

    weight = self->_weight;
    if (weight)
    {
      [v4 encodeInt:weight forKey:@"UISymbolWeight"];
    }

    textStyle = self->_textStyle;
    if (textStyle)
    {
      [v4 encodeObject:textStyle forKey:@"UITextStyle"];
    }

    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles)
    {
      [v4 encodeObject:namedColorStyles forKey:@"UINamedColorStyles"];
    }

    colors = self->_colors;
    if (colors)
    {
      [v4 encodeObject:colors forKey:@"UIHierarchicalColors"];
      [v4 encodeBool:(*&self->_configFlags >> 1) & 1 forKey:@"UIDerivativeHierarchicalColors"];
    }

    configFlags = self->_configFlags;
    if ((configFlags & 8) != 0)
    {
      [v4 encodeBool:1 forKey:@"UISpecifiedPrefersMulticolor"];
      [v4 encodeBool:(*&self->_configFlags >> 2) & 1 forKey:@"UIPrefersMulticolor"];
      configFlags = self->_configFlags;
    }

    if ((configFlags & 0x20) != 0)
    {
      [v4 encodeBool:1 forKey:@"UISpecifiedPrefersMonochrome"];
      [v4 encodeBool:(*&self->_configFlags >> 4) & 1 forKey:@"UIPrefersMonochrome"];
    }

    if ([(UIImageSymbolConfiguration *)self variableValueMode])
    {
      [v4 encodeInteger:-[UIImageSymbolConfiguration variableValueMode](self forKey:{"variableValueMode"), @"UIVariableValueMode"}];
    }

    if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
    {
      [v4 encodeInteger:-[UIImageSymbolConfiguration colorRenderingMode](self forKey:{"colorRenderingMode"), @"UIColorRenderingMode"}];
    }

    if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
    {
      [v4 encodeBool:(*&self->_configFlags >> 10) & 1 forKey:@"UISuppressesMaterialRendering"];
    }
  }
}

- (BOOL)_hasColorConfigurationWithTintColor
{
  if (self)
  {
    v2 = self;
    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles && ([(NSDictionary *)namedColorStyles objectForKeyedSubscript:@"tintColor"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      LOBYTE(self) = 1;
    }

    else
    {
      colors = v2->_colors;
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

- (BOOL)_shouldApplyConfiguration:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIImageSymbolConfiguration;
  if ([(UIImageConfiguration *)&v7 _shouldApplyConfiguration:v4])
  {
    v5 = ![(UIImageSymbolConfiguration *)self isEqualToConfiguration:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_applyConfigurationValuesTo:(id)a3
{
  v4 = a3;
  if (!v4)
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
  [(UIImageConfiguration *)&v35 _applyConfigurationValuesTo:v4];
  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    *(v4 + 8) = [(UIImageSymbolConfiguration *)self scale];
  }

  if (dyld_program_sdk_at_least())
  {
    if (self)
    {
      if (self->_weight)
      {
        *(v4 + 9) = [(UIImageSymbolConfiguration *)self weight];
      }

      if (self->_textStyle)
      {
        *(v4 + 4) = 0;
        *(v4 + 20) &= ~1u;
        v7 = [(UIImageSymbolConfiguration *)self textStyle];
        v8 = *(v4 + 10);
        *(v4 + 10) = v7;

        [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
        if (v9 < 0.0)
        {
          v9 = 0.0;
        }

        *(v4 + 4) = v9;
        v10 = *(v4 + 20) & 0xFFFE;
LABEL_16:
        *(v4 + 20) = v10;
LABEL_46:
        if (self->_namedColorStyles)
        {
          v25 = [*(v4 + 6) mutableCopy];
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
          v30 = *(v4 + 6);
          *(v4 + 6) = v29;
        }

        colors = self->_colors;
        if (colors)
        {
          [(UIImageSymbolConfiguration *)v4 _setUsesHierarchical:colors colors:?];
        }

        configFlags = self->_configFlags;
        if ((*&configFlags & 8) != 0)
        {
          [(UIImageSymbolConfiguration *)v4 _setPrefersMulticolor:?];
          configFlags = self->_configFlags;
        }

        if ((*&configFlags & 0x20) != 0)
        {
          [(UIImageSymbolConfiguration *)v4 _setPrefersMonochrome:?];
        }

        if ([(UIImageSymbolConfiguration *)self variableValueMode])
        {
          *(v4 + 20) = *(v4 + 20) & 0xFF3F | (([(UIImageSymbolConfiguration *)self variableValueMode]& 3) << 6);
        }

        if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
        {
          *(v4 + 20) = *(v4 + 20) & 0xFCFF | (([(UIImageSymbolConfiguration *)self colorRenderingMode]& 3) << 8);
        }

        goto LABEL_61;
      }

      if ((*&self->_configFlags & 1) == 0)
      {
        goto LABEL_46;
      }

      v15 = *(v4 + 10);
      *(v4 + 10) = 0;

      goto LABEL_25;
    }
  }

  else if (self)
  {
    if (self->_textStyle)
    {
      *(v4 + 4) = 0;
      *(v4 + 20) &= ~1u;
      *(v4 + 9) = 0;
      v11 = *(v4 + 10);
      *(v4 + 10) = 0;

      v12 = [(UIImageSymbolConfiguration *)self textStyle];
      v13 = *(v4 + 10);
      *(v4 + 10) = v12;

      [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
      if (v14 < 0.0)
      {
        v14 = 0.0;
      }

      *(v4 + 4) = v14;
      *(v4 + 20) &= ~1u;
      if (self->_weight)
      {
        *(v4 + 9) = [(UIImageSymbolConfiguration *)self weight];
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

      if ((*(v4 + 20) & 1) == 0)
      {
        [(UIImageSymbolConfiguration *)v4 _clearSpecificsExceptScale];
        *(v4 + 9) = [(UIImageSymbolConfiguration *)self weight];
        goto LABEL_46;
      }

      v33 = *(v4 + 4);
      [(UIImageSymbolConfiguration *)v4 _clearSpecificsExceptScale];
      *(v4 + 9) = [(UIImageSymbolConfiguration *)self weight];
      v34 = 0.0;
      if (v33 >= 0.0)
      {
        v34 = v33;
      }

      *(v4 + 4) = v34;
      v10 = *(v4 + 20) | 1;
      goto LABEL_16;
    }

    if (weight)
    {
      *(v4 + 4) = 0;
      *(v4 + 20) &= ~1u;
      *(v4 + 9) = 0;
      v19 = *(v4 + 10);
      *(v4 + 10) = 0;

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

      *(v4 + 4) = v20;
      *(v4 + 20) |= 1u;
      *(v4 + 9) = [(UIImageSymbolConfiguration *)self weight];
      goto LABEL_46;
    }

    if (*(v4 + 9))
    {
      v22 = [v4 weight];
      [(UIImageSymbolConfiguration *)v4 _clearSpecificsExceptScale];
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

      *(v4 + 4) = v23;
      *(v4 + 20) |= 1u;
      *(v4 + 9) = v22;
      goto LABEL_46;
    }

    [(UIImageSymbolConfiguration *)v4 _clearSpecificsExceptScale];
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

    *(v4 + 4) = v16;
    *(v4 + 20) |= 1u;
    goto LABEL_46;
  }

LABEL_61:
  if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
  {
    *(v4 + 20) = *(v4 + 20) & 0xFBFF | *&self->_configFlags & 0x400;
  }

LABEL_63:
}

- (UIImageSymbolConfiguration)configurationWithoutTextStyle
{
  if (self)
  {
    if (self->_textStyle)
    {
      v3 = [(UIImageSymbolConfiguration *)self copy];
      v4 = [(UIImageConfiguration *)v3 traitCollection];
      v5 = [v4 preferredContentSizeCategory];

      if (v5 == @"_UICTContentSizeCategoryUnspecified")
      {
        v3->_pointSize = 0.0;
        v6 = *&v3->_configFlags & 0xFFFE;
      }

      else
      {
        [(UIImageSymbolConfiguration *)self _deriveGlyphSize:0 weight:0 pointSize:&v3->_pointSize];
        v6 = *&v3->_configFlags | 1;
      }

      *&v3->_configFlags = v6;
      textStyle = v3->_textStyle;
      v3->_textStyle = 0;
    }

    else
    {
      v3 = self;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [MEMORY[0x1E695DF70] array];
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
      v7 = [(UIImageSymbolConfiguration *)self textStyle];
      v8 = v7;
      if (v5 <= 0.0)
      {
        [v6 stringWithFormat:@"textStyle=%@", v7, v41];
      }

      else
      {
        [v6 stringWithFormat:@"textStyle=%@ (scaled from %gpt)", v7, *&v5];
      }
      v9 = ;
      [v3 addObject:v9];
    }

    else
    {
      if ((*&self->_configFlags & 1) == 0)
      {
        goto LABEL_11;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pointSize=%g", *&self->_pointSize];
      [v3 addObject:v8];
    }

LABEL_11:
    if (self->_weight)
    {
      v10 = _NSStringFromUIImageSymbolWeight([(UIImageSymbolConfiguration *)self weight]);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"weight=%@", v10];
      [v3 addObject:v11];
    }
  }

  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    v12 = [(UIImageSymbolConfiguration *)self scale];
    if ((v12 + 1) > 4)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E712BC08[v12 + 1];
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scale=%@", v13];
    [v3 addObject:v14];
  }

  if (self)
  {
    namedColorStyles = self->_namedColorStyles;
    if (namedColorStyles)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [(NSDictionary *)namedColorStyles allKeys];
      v18 = [v17 componentsJoinedByString:{@", "}];
      v19 = [v16 stringWithFormat:@"styled colors (%@)", v18];
      [v3 addObject:v19];
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
          v24 = [(UIImageSymbolConfiguration *)self variableValueMode];
          if (v24 > 2)
          {
            v25 = @"?";
          }

          else
          {
            v25 = off_1E712BC30[v24];
          }

          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"variableValueMode=%@", v25];
          [v3 addObject:v26];
        }

        if ([(UIImageSymbolConfiguration *)self colorRenderingMode])
        {
          v27 = [(UIImageSymbolConfiguration *)self colorRenderingMode];
          if (v27 > 2)
          {
            v28 = @"?";
          }

          else
          {
            v28 = off_1E712BC48[v27];
          }

          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"colorRenderingMode=%@", v28];
          [v3 addObject:v29];
        }

        goto LABEL_45;
      }

      v21 = @"palette colors (%@)";
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:v21, v20];
    [v3 addObject:v22];

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

  [v3 addObject:v23];
LABEL_34:
  if (self)
  {
    goto LABEL_35;
  }

LABEL_45:
  if ([(UIImageSymbolConfiguration *)self _suppressesMaterialRendering])
  {
    [v3 addObject:@"suppresses material rendering"];
  }

  v30 = [(UIImageConfiguration *)self traitCollection];

  if (v30)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = [(UIImageConfiguration *)self traitCollection];
    v33 = [v32 _traitsDescription];
    v34 = [v31 stringWithFormat:@"traits=(%@)", v33];
    [v3 addObject:v34];
  }

  v35 = [(UIImageConfiguration *)self locale];

  if (v35)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = [(UIImageConfiguration *)self locale];
    v38 = [v36 stringWithFormat:@"locale=(%@)", v37];
    [v3 addObject:v38];
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    [v3 addObject:@"ignores dynamic type"];
  }

LABEL_53:
  if ([v3 count])
  {
    v39 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v39 = @"unspecified";
  }

  return v39;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIImageSymbolConfiguration *)self isEqualToConfiguration:v4];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = UIImageSymbolConfiguration;
      v5 = [(UIImageConfiguration *)&v8 isEqual:v4];
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

  v8 = [(UIImageSymbolConfiguration *)self _hasSpecifiedScale];
  if (v8 != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedScale])
  {
    goto LABEL_44;
  }

  v9 = [(UIImageSymbolConfiguration *)self scale];
  if (v9 != [(UIImageSymbolConfiguration *)v5 scale])
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

  v10 = [(UIImageSymbolConfiguration *)self textStyle];
  v11 = [(UIImageSymbolConfiguration *)v5 textStyle];
  v12 = v10;
  v13 = v11;
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

  v27 = [(UIImageSymbolConfiguration *)self weight];
  if (v27 != [(UIImageSymbolConfiguration *)v5 weight])
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
  v28 = [(UIImageSymbolConfiguration *)self _namedColorStyles];
  v29 = [(UIImageSymbolConfiguration *)v5 _namedColorStyles];
  v30 = _deferringTokenEqualToToken(v28, v29);

  if (!v30)
  {
    goto LABEL_44;
  }

  v31 = [(UIImageSymbolConfiguration *)self _hasSpecifiedHierarchicalColors];
  if (v31 != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedHierarchicalColors])
  {
    goto LABEL_44;
  }

  v32 = [(UIImageSymbolConfiguration *)self _hasSpecifiedPaletteColors];
  if (v32 != [(UIImageSymbolConfiguration *)v5 _hasSpecifiedPaletteColors])
  {
    goto LABEL_44;
  }

  v33 = [(UIImageSymbolConfiguration *)self _colors];
  v34 = [(UIImageSymbolConfiguration *)v5 _colors];
  v35 = _deferringTokenEqualToToken(v33, v34);

  if (!v35)
  {
    goto LABEL_44;
  }

  v36 = [(UIImageSymbolConfiguration *)self _prefersMulticolor];
  if (v36 != [(UIImageSymbolConfiguration *)v5 _prefersMulticolor])
  {
    goto LABEL_44;
  }

  v37 = [(UIImageSymbolConfiguration *)self _prefersMonochrome];
  if (v37 != [(UIImageSymbolConfiguration *)v5 _prefersMonochrome])
  {
    goto LABEL_44;
  }

  v38 = [(UIImageSymbolConfiguration *)self variableValueMode];
  if (v38 != [(UIImageSymbolConfiguration *)v5 variableValueMode])
  {
    goto LABEL_44;
  }

  v39 = [(UIImageSymbolConfiguration *)self colorRenderingMode];
  if (v39 != [(UIImageSymbolConfiguration *)v5 colorRenderingMode])
  {
    goto LABEL_44;
  }

  v40 = [(UIImageSymbolConfiguration *)self _suppressesMaterialRendering];
  if (v40 != [(UIImageSymbolConfiguration *)v5 _suppressesMaterialRendering])
  {
    goto LABEL_44;
  }

  v43.receiver = self;
  v43.super_class = UIImageSymbolConfiguration;
  v41 = [(UIImageConfiguration *)&v43 isEqualToConfiguration:v5];
LABEL_45:

  return v41;
}

- (BOOL)_isEquivalentToConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21.receiver = self;
    v21.super_class = UIImageSymbolConfiguration;
    v5 = [(UIImageConfiguration *)&v21 _isEquivalentToConfiguration:v4];
    goto LABEL_8;
  }

  if (!-[UIImageSymbolConfiguration _isUnspecified](self, "_isUnspecified") && ([v4 _isUnspecified] & 1) == 0)
  {
    if (-[UIImageSymbolConfiguration _hasSpecifiedScale](self, "_hasSpecifiedScale") && [v4 _hasSpecifiedScale])
    {
      v7 = [(UIImageSymbolConfiguration *)self scale];
      v8 = [v4 scale];
      goto LABEL_28;
    }

    if (self)
    {
      if (self->_textStyle)
      {
        if (!v4)
        {
          goto LABEL_30;
        }

        if (*(v4 + 10))
        {
          v9 = [(UIImageSymbolConfiguration *)self textStyle];
          v10 = [v4 textStyle];
          v11 = v9;
          v12 = v10;
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
          [v4 pointSizeForScalingWithTextStyle];
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

      if (*&self->_configFlags & 1) != 0 && v4 && (*(v4 + 20))
      {
        if (self->_pointSize != *(v4 + 4))
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }

      if (self->_weight && v4 && *(v4 + 9))
      {
        v7 = [(UIImageSymbolConfiguration *)self weight];
        v8 = [v4 weight];
LABEL_28:
        if (v7 != v8)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }
    }

LABEL_30:
    v22.receiver = self;
    v22.super_class = UIImageSymbolConfiguration;
    v15 = [(UIImageConfiguration *)&v22 _isEquivalentToConfiguration:v4];
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

- (void)_deriveGlyphSize:(int64_t *)a3 weight:(int64_t *)a4 pointSize:(double *)a5
{
  [off_1E70ECC18 defaultFontSize];
  v10 = v9;
  v11 = [(UIImageConfiguration *)self _effectiveTraitCollectionForImageLookup];
  if ([(UIImageSymbolConfiguration *)self _hasSpecifiedScale])
  {
    v12 = [(UIImageSymbolConfiguration *)self scale]+ 1;
    if (v12 > 4)
    {
      v13 = 0;
      if (!self)
      {
LABEL_30:
        v26 = 4;
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
      v26 = [(UIImageSymbolConfiguration *)self weight];
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  v14 = [(UIImageSymbolConfiguration *)self textStyle];
  v15 = [v11 preferredContentSizeCategory];
  v16 = [off_1E70ECC18 _normalizedContentSizeCategory:v15 default:0];

  CTFontDescriptorGetTextStyleSize();
  v18 = v17;
  [(UIImageSymbolConfiguration *)self pointSizeForScalingWithTextStyle];
  if (v19 > 0.0)
  {
    [UIFontMetrics scaledValueForValue:v14 withTextStyle:v11 bodyLeading:self->_pointSize compatibleWithTraitCollection:0.0];
    v18 = v20;
  }

  [(UIImageSymbolConfiguration *)self customFontPointSizeMultiplier:0];
  v22 = v21;
  if (self->_weight)
  {
    v23 = [(UIImageSymbolConfiguration *)self weight];
  }

  else
  {
    v23 = UISIndexForFontWeight();
  }

  v26 = v23;
  v10 = v18 * v22;

LABEL_19:
  if ([v11 legibilityWeight] == 1)
  {
    UISFontWeightForIndex();
    CTFontGetAccessibilityBoldWeightOfWeight();
    v26 = UISIndexForFontWeight();
  }

  v27 = 4;
  if ((v26 - 1) < 9)
  {
    v27 = v26;
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v27;
  }

  if (a5)
  {
    *a5 = v10;
  }
}

- (id)_colorForNamedStyle:(id)a3 renditionContext:(id)a4 resolveDynamicColors:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(_UIImageContentRenditionContext *)v9 traitCollectionForResolvingDynamicColors];
  v11 = [(UIImageSymbolConfiguration *)self _namedColorStyles];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (!v12)
  {
    v13 = [UIColor _systemColorWithUnvalidatedName:v8];
    if (v13)
    {
LABEL_3:
      v12 = v13;
      goto LABEL_4;
    }

    if ([v8 isEqualToString:@"white"])
    {
      v18 = +[UIColor whiteColor];
    }

    else
    {
      if (![v8 isEqualToString:@"black"])
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
    if (([v8 isEqualToString:@"controlAccentColor"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"tintColor"))
    {
      v13 = +[UIColor tintColor];
      if (v13)
      {
        goto LABEL_3;
      }
    }

    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(v9 + 3);
      v20 = WeakRetained;
      if (WeakRetained)
      {
        v12 = [WeakRetained _colorForName:v8 withTraitCollection:v10];
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
    v15 = _TintColorFromTraitCollection(v10);

    v12 = v15;
  }

  if (v5 && v10)
  {
    v16 = [v12 resolvedColorWithTraitCollection:v10];

    v12 = v16;
  }

  return v12;
}

- (id)_hierarchicalColorForLayerLevel:(int64_t)a3 renditionContext:(id)a4 resolveDynamicColors:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v8 = [(_UIImageContentRenditionContext *)a4 traitCollectionForResolvingDynamicColors];
  v9 = [(NSArray *)self->_colors count];
  if (v9 < 2)
  {
    v14 = [(NSArray *)self->_colors firstObject];
    v15 = +[UIColor tintColor];

    if (v14 == v15)
    {
      v16 = _TintColorFromTraitCollection(v8);

      v14 = v16;
    }

    if ([v8 userInterfaceStyle] == 2)
    {
      v17 = +[UIColor systemRedColor];
      if ([v14 isEqual:v17])
      {

LABEL_16:
        v20 = 0.2;
        goto LABEL_17;
      }

      v21 = +[UIColor systemPinkColor];
      v22 = [v14 isEqual:v21];

      v20 = 0.25;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = +[UIColor systemYellowColor];
      v19 = [v14 isEqual:v18];

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
    if (v5 && v8)
    {
      v23 = [v14 resolvedColorWithTraitCollection:v8];

      v14 = v23;
    }

    if (a3 == 1)
    {
      [v14 alphaComponent];
      v26 = v25 * 0.5;
    }

    else
    {
      if (!a3)
      {
        v24 = v14;
LABEL_26:
        v13 = v24;

        goto LABEL_27;
      }

      [v14 alphaComponent];
      v26 = v20 * v27;
    }

    v24 = [v14 colorWithAlphaComponent:v26];
    goto LABEL_26;
  }

  v10 = v9;
  v11 = v9 - 1;
  if (v9 - 1 >= a3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v30 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = 134218240;
        v32 = v10;
        v33 = 2048;
        v34 = a3;
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
        v34 = a3;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Only %lu hierarchical colors specified for a symbol with a layer at level %lu; please adopt +configurationWithHierarchicalColor: or +configurationWithPaletteColors: API", &v31, 0x16u);
      }
    }
  }

  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(NSArray *)self->_colors objectAtIndexedSubscript:v12];
LABEL_27:

  return v13;
}

- (id)_paletteColorsWithRenditionContext:(id)a3 resolveDynamicColors:(BOOL)a4
{
  v4 = a4;
  v6 = [(_UIImageContentRenditionContext *)a3 traitCollectionForResolvingDynamicColors];
  v7 = [(NSArray *)self->_colors mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    if (v6)
    {
      v9 = v4;
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

    v14 = _TintColorFromTraitCollection(v6);
    [v7 setObject:v14 atIndexedSubscript:v8];

    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    v12 = [v7 objectAtIndexedSubscript:v8];
    v13 = [v12 resolvedColorWithTraitCollection:v6];
    [v7 setObject:v13 atIndexedSubscript:v8];

    goto LABEL_8;
  }

LABEL_12:
  v15 = [v7 copy];

  return v15;
}

@end