@interface PUIDiscreteGradientVariatedCustomStyle
+ (double)hueForLegacyVariation:(double)variation;
+ (double)maxLuminanceForStyle:(id)style;
+ (double)minLuminanceForStyle:(id)style;
+ (double)variationForHue:(double)hue;
+ (id)discreteGradientVariatedColors;
+ (id)variatedColorForVariation:(double)variation fromColors:(id)colors usingSaturation:(id)saturation alpha:(double)alpha;
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (NSArray)variationAppliedColors;
- (NSString)identifier;
- (PUIDiscreteGradientVariatedCustomStyle)initWithCoder:(id)coder;
- (PUIDiscreteGradientVariatedCustomStyle)initWithHue:(double)hue saturation:(double)saturation luminanceValue:(double)value alpha:(double)alpha;
- (PUIDiscreteGradientVariatedCustomStyle)initWithVariation:(double)variation luminance:(double)luminance saturation:(double)saturation alpha:(double)alpha;
- (UIColor)luminanceAppliedColor;
- (id)copyWithLuminance:(double)luminance saturation:(double)saturation alpha:(double)alpha;
- (id)copyWithResetSaturation;
- (id)copyWithVariatedColor:(id)color;
- (id)copyWithVariation:(double)variation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nonVariatedIdentifier;
- (id)variatedColorResettingSaturation:(BOOL)saturation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIDiscreteGradientVariatedCustomStyle

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)discreteGradientVariatedColors
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.917647059 green:0.258823529 blue:0.231372549 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.960784314 green:0.882352941 blue:0.333333333 alpha:{1.0, v2}];
  v11[1] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.458823529 green:0.984313725 blue:0.568627451 alpha:1.0];
  v11[2] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.435294118 green:0.937254902 blue:0.968627451 alpha:1.0];
  v11[3] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.0392156863 green:0.549019608 blue:0.960784314 alpha:1.0];
  v11[4] = v6;
  v7 = [MEMORY[0x1E69DC888] colorWithRed:0.756862745 green:0.392156863 blue:0.945098039 alpha:1.0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.298039216 blue:0.262745098 alpha:1.0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (double)minLuminanceForStyle:(id)style
{
  styleCopy = style;
  variationAppliedColors = [styleCopy variationAppliedColors];
  firstObject = [variationAppliedColors firstObject];

  [firstObject pui_minLuminance];
  v7 = v6;
  [styleCopy luminance];
  v9 = v8;

  if (v9 < v7)
  {
    [&unk_1F1C92D20 bs_CGFloatValue];
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      v7 = v9;
    }
  }

  return v7;
}

+ (double)maxLuminanceForStyle:(id)style
{
  variationAppliedColors = [style variationAppliedColors];
  firstObject = [variationAppliedColors firstObject];

  [firstObject pui_maxLuminance];
  v6 = v5;

  return v6;
}

- (PUIDiscreteGradientVariatedCustomStyle)initWithVariation:(double)variation luminance:(double)luminance saturation:(double)saturation alpha:(double)alpha
{
  [objc_opt_class() hueForLegacyVariation:variation];
  v11 = v10;
  [objc_opt_class() luminanceForLegacyLuminance:luminance];

  return [(PUIDiscreteGradientVariatedCustomStyle *)self initWithHue:v11 saturation:saturation luminanceValue:v12 alpha:alpha];
}

- (PUIDiscreteGradientVariatedCustomStyle)initWithHue:(double)hue saturation:(double)saturation luminanceValue:(double)value alpha:(double)alpha
{
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v19.receiver = self;
  v19.super_class = PUIDiscreteGradientVariatedCustomStyle;
  v13 = [(PUIStyleCustom *)&v19 initWithIdentifier:v12 localizedName:@"Gradient Variated Custom Style Localized Name"];

  if (v13)
  {
    discreteGradientVariatedColors = [objc_opt_class() discreteGradientVariatedColors];
    colors = v13->_colors;
    v13->_colors = discreteGradientVariatedColors;

    v13->_hue = hue;
    v13->_luminanceValue = value;
    v13->_saturation = saturation;
    v13->_alpha = alpha;
    [objc_opt_class() variationForHue:hue];
    v13->_variation = v16;
    [objc_opt_class() legacyLuminanceForLuminanceValue:v13->_luminanceValue];
    v13->_luminance = v17;
    v13->_version = [objc_opt_class() currentVersion];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIDiscreteGradientVariatedCustomStyle *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  v7 = styleCopy;
  if (styleCopy == self)
  {
    v11 = 1;
  }

  else if (styleCopy && _PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy) && (-[PUIDiscreteGradientVariatedCustomStyle colors](self, "colors"), v8 = objc_claimAutoreleasedReturnValue(), -[PUIDiscreteGradientVariatedCustomStyle colors](v7, "colors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToArray:v9], v9, v8, v10) && (-[PUIDiscreteGradientVariatedCustomStyle hue](self, "hue"), -[PUIDiscreteGradientVariatedCustomStyle hue](v7, "hue"), BSFloatEqualToFloat()) && (-[PUIDiscreteGradientVariatedCustomStyle luminanceValue](self, "luminanceValue"), -[PUIDiscreteGradientVariatedCustomStyle luminanceValue](v7, "luminanceValue"), BSFloatEqualToFloat()) && (-[PUIDiscreteGradientVariatedCustomStyle saturation](self, "saturation"), -[PUIDiscreteGradientVariatedCustomStyle saturation](v7, "saturation"), BSFloatEqualToFloat()))
  {
    [(PUIDiscreteGradientVariatedCustomStyle *)self alpha];
    [(PUIDiscreteGradientVariatedCustomStyle *)v7 alpha];
    v11 = BSFloatEqualToFloat();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendObject:self->_colors];
  v5 = [v3 appendCGFloat:self->_hue];
  v6 = [v3 appendCGFloat:self->_luminanceValue];
  v7 = [v3 appendCGFloat:self->_alpha];
  v8 = [v3 appendUnsignedInteger:self->_version];
  v9 = [v3 hash];

  return v9;
}

- (id)nonVariatedIdentifier
{
  v3 = NSStringFromPUIStyleType([(PUIDiscreteGradientVariatedCustomStyle *)self type]);
  colors = [(PUIDiscreteGradientVariatedCustomStyle *)self colors];
  v5 = [colors bs_map:&__block_literal_global_313];
  v6 = [v5 componentsJoinedByString:@"_"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_hue];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_luminanceValue];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_saturation];
  v10 = [v3 stringByAppendingFormat:@"-%@-hue-%@-lum%@-sat%@", v6, v7, v8, v9];

  return v10;
}

uint64_t __63__PUIDiscreteGradientVariatedCustomStyle_nonVariatedIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

- (UIColor)luminanceAppliedColor
{
  v2 = [[PUIColorValues alloc] initWithHue:self->_hue saturation:self->_saturation luminance:self->_luminanceValue alpha:self->_alpha];
  color = [(PUIColorValues *)v2 color];

  return color;
}

- (NSArray)variationAppliedColors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PUIDiscreteGradientVariatedCustomStyle *)self variatedColorResettingSaturation:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)variatedColorResettingSaturation:(BOOL)saturation
{
  v5 = objc_opt_class();
  variation = self->_variation;
  colors = self->_colors;
  if (saturation)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_saturation];
  }

  v9 = [v5 variatedColorForVariation:colors fromColors:v8 usingSaturation:variation alpha:self->_alpha];
  if (!saturation)
  {
  }

  return v9;
}

+ (id)variatedColorForVariation:(double)variation fromColors:(id)colors usingSaturation:(id)saturation alpha:(double)alpha
{
  colorsCopy = colors;
  saturationCopy = saturation;
  alphaCopy = alpha;
  v11 = [colorsCopy count];
  v12 = (variation + 1.0) * 0.5 + 0.0;
  v13 = vcvtmd_s64_f64(v12 / (1.0 / (v11 - 1)));
  if (v11 - 1 <= v13)
  {
    color = [colorsCopy objectAtIndexedSubscript:?];
  }

  else
  {
    v34 = 0.0;
    v35 = 0.0;
    v14 = (v12 - v13 / (v11 - 1)) / ((v13 + 1.0) / (v11 - 1) - v13 / (v11 - 1)) + 0.0;
    v33 = 0.0;
    v15 = [colorsCopy objectAtIndexedSubscript:v13];
    [v15 getRed:&v35 green:&v34 blue:&v33 alpha:&alphaCopy];
    v31 = 0.0;
    v32 = 0.0;
    v30 = 0.0;
    v16 = [colorsCopy objectAtIndexedSubscript:v13 + 1];
    [v16 getRed:&v32 green:&v31 blue:&v30 alpha:&alphaCopy];
    v17 = v14 * v32 + (1.0 - v14) * v35;
    v18 = v14 * v31 + (1.0 - v14) * v34;
    v19 = v14 * v30 + (1.0 - v14) * v33;
    v20 = objc_alloc(MEMORY[0x1E69DC888]);
    v21 = [v20 initWithRed:v17 green:v18 blue:v19 alpha:alphaCopy];
    color = v21;
    if (saturationCopy)
    {
      v23 = [[PUIColorValues alloc] initWithColor:v21];
      hslValues = [(PUIColorValues *)v23 hslValues];
      [hslValues luminance];
      v26 = v25;
      [saturationCopy bs_CGFloatValue];
      v28 = [(PUIColorValues *)v23 copyWithLuminance:v26 saturation:v27];

      color = [v28 color];
    }
  }

  return color;
}

- (id)copyWithVariation:(double)variation
{
  [objc_opt_class() hueForLegacyVariation:variation];
  v5 = v4;
  v6 = [PUIDiscreteGradientVariatedCustomStyle alloc];
  saturation = self->_saturation;
  luminanceValue = self->_luminanceValue;
  alpha = self->_alpha;

  return [(PUIDiscreteGradientVariatedCustomStyle *)v6 initWithHue:v5 saturation:saturation luminanceValue:luminanceValue alpha:alpha];
}

- (id)copyWithLuminance:(double)luminance saturation:(double)saturation alpha:(double)alpha
{
  v9 = [PUIDiscreteGradientVariatedCustomStyle alloc];
  hue = self->_hue;

  return [(PUIDiscreteGradientVariatedCustomStyle *)v9 initWithHue:hue saturation:saturation luminanceValue:luminance alpha:alpha];
}

- (id)copyWithResetSaturation
{
  v3 = [(PUIDiscreteGradientVariatedCustomStyle *)self variatedColorResettingSaturation:1];
  pui_hslValues = [v3 pui_hslValues];
  [pui_hslValues saturation];
  v6 = v5;

  v7 = [[PUIDiscreteGradientVariatedCustomStyle alloc] initWithHue:self->_hue saturation:v6 luminanceValue:self->_luminanceValue alpha:self->_alpha];
  return v7;
}

- (id)copyWithVariatedColor:(id)color
{
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  v4 = MEMORY[0x1E69DC888];
  colorCopy = color;
  colors = [(PUIDiscreteGradientVariatedCustomStyle *)self colors];
  [v4 pui_determineVarianceAndLuminanceForColor:colorCopy amongstColors:colors minLuminance:0 maxLuminance:0 outHue:&v11 outSaturation:&v9 outLuminance:&v10];

  v7 = [PUIDiscreteGradientVariatedCustomStyle alloc];
  return [(PUIDiscreteGradientVariatedCustomStyle *)v7 initWithHue:v11 saturation:v9 luminanceValue:v10 alpha:self->_alpha];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUIDiscreteGradientVariatedCustomStyle allocWithZone:zone];
  hue = self->_hue;
  saturation = self->_saturation;
  luminanceValue = self->_luminanceValue;
  alpha = self->_alpha;

  return [(PUIDiscreteGradientVariatedCustomStyle *)v4 initWithHue:hue saturation:saturation luminanceValue:luminanceValue alpha:alpha];
}

+ (double)hueForLegacyVariation:(double)variation
{
  discreteGradientVariatedColors = [self discreteGradientVariatedColors];
  v6 = [self variatedColorForVariation:discreteGradientVariatedColors fromColors:0 usingSaturation:variation alpha:1.0];

  pui_hslValues = [v6 pui_hslValues];
  [pui_hslValues hue];
  v9 = v8;

  return v9;
}

+ (double)variationForHue:(double)hue
{
  v4 = MEMORY[0x1E69DC888];
  discreteGradientVariatedColors = [self discreteGradientVariatedColors];
  [v4 pui_determineVarianceForHue:discreteGradientVariatedColors forColors:hue];
  v7 = v6;

  return v7;
}

- (PUIDiscreteGradientVariatedCustomStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_luminanceValue"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_saturation"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alpha"];
  v10 = v9;
  v11 = &unk_1F1C929C8;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  [v7 bs_CGFloatValue];
  v14 = v13;
  [v8 bs_CGFloatValue];
  v16 = v15;
  [v6 bs_CGFloatValue];
  v18 = v17;
  [v12 bs_CGFloatValue];
  v20 = v19;

  if (!v5)
  {
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_variation"];
    [v21 bs_CGFloatValue];
    v23 = v22;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_luminance"];
    [v24 bs_CGFloatValue];
    v26 = v25;
    [objc_opt_class() hueForLegacyVariation:v23];
    v18 = v27;
    [objc_opt_class() luminanceForLegacyLuminance:v26];
    v14 = v28;
  }

  v29 = [(PUIDiscreteGradientVariatedCustomStyle *)self initWithHue:v18 saturation:v16 luminanceValue:v14 alpha:v20];

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  version = self->_version;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:version];
  [coderCopy encodeObject:v7 forKey:@"_version"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_hue];
  [coderCopy encodeObject:v8 forKey:@"_hue"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_luminanceValue];
  [coderCopy encodeObject:v9 forKey:@"_luminanceValue"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_luminance];
  [coderCopy encodeObject:v10 forKey:@"_luminance"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_saturation];
  [coderCopy encodeObject:v11 forKey:@"_saturation"];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alpha];
  [coderCopy encodeObject:v12 forKey:@"_alpha"];
}

@end