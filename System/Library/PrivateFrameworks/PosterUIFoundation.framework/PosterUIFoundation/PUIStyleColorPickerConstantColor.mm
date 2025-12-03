@interface PUIStyleColorPickerConstantColor
+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUIStyleColorPickerConstantColor)colorWithVariation:(double)variation;
- (PUIStyleColorPickerConstantColor)init;
- (PUIStyleColorPickerConstantColor)initWithBSXPCCoder:(id)coder;
- (PUIStyleColorPickerConstantColor)initWithBaseUIColor:(id)color initialVariation:(double)variation;
- (PUIStyleColorPickerConstantColor)initWithCoder:(id)coder;
- (PUIStyleColorPickerConstantColor)initWithColor:(id)color initialVariation:(double)variation;
- (double)variationForLuminance:(double)luminance;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleColorPickerConstantColor

+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation
{
  v4 = variation * -0.25;
  hslValues = [color hslValues];
  [hslValues luminance];
  v7 = v6;

  result = fmax(v7 + v4, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (PUIStyleColorPickerConstantColor)init
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(PUIStyleColorPickerConstantColor *)self initWithBaseUIColor:whiteColor];

  return v4;
}

- (PUIStyleColorPickerConstantColor)initWithBaseUIColor:(id)color initialVariation:(double)variation
{
  colorCopy = color;
  v7 = [[PUIStyleColor alloc] initWithColor:colorCopy preferredStyle:0];

  v8 = [(PUIStyleColorPickerConstantColor *)self initWithColor:v7 initialVariation:variation];
  return v8;
}

- (PUIStyleColorPickerConstantColor)initWithColor:(id)color initialVariation:(double)variation
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = PUIStyleColorPickerConstantColor;
  v7 = [(PUIStyleColorPickerConstantColor *)&v11 init];
  if (v7)
  {
    v8 = [colorCopy copy];
    color = v7->_color;
    v7->_color = v8;

    v7->_initialVariation = variation;
  }

  return v7;
}

- (PUIStyleColorPickerConstantColor)colorWithVariation:(double)variation
{
  [objc_opt_class() luminanceForPosterColor:self->_color withAppliedVariation:variation];
  v4 = [(PUIStyleColor *)self->_color copyWithLuminance:?];

  return v4;
}

- (double)variationForLuminance:(double)luminance
{
  baseColor = [(PUIStyleColorPickerConstantColor *)self baseColor];
  hslValues = [baseColor hslValues];
  [hslValues luminance];
  v8 = v7;

  leftSliderColor = [(PUIStyleColorPickerConstantColor *)self leftSliderColor];
  hslValues2 = [leftSliderColor hslValues];
  [hslValues2 luminance];
  v12 = v11;

  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  rightSliderColor = [(PUIStyleColorPickerConstantColor *)self rightSliderColor];
  hslValues3 = [rightSliderColor hslValues];
  [hslValues3 luminance];
  v17 = v16;

  result = 0.0;
  v19 = fmax(v17, 0.0);
  if (v19 <= luminance && v8 >= luminance)
  {
    return (luminance - v19) / (v8 - v19) + -1.0;
  }

  if (v13 >= luminance && v8 <= luminance)
  {
    return 1.0 - (luminance - v8) / (v13 - v8);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      baseColor = [(PUIStyleColorPickerConstantColor *)self baseColor];
      baseColor2 = [(PUIStyleColorPickerConstantColor *)v7 baseColor];
      v10 = BSEqualObjects();

      if (v10 && ([(PUIStyleColorPickerConstantColor *)self initialVariation], v12 = v11, [(PUIStyleColorPickerConstantColor *)v7 initialVariation], v12 == v13))
      {
        localizedName = [(PUIStyleColorPickerConstantColor *)self localizedName];
        localizedName2 = [(PUIStyleColorPickerConstantColor *)v7 localizedName];
        v14 = BSEqualStrings();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  color = [(PUIStyleColorPickerConstantColor *)self color];
  v5 = [v3 appendObject:color];

  [(PUIStyleColorPickerConstantColor *)self initialVariation];
  v6 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    localizedName = [(PUIStyleColorPickerConstantColor *)self localizedName];
    v8 = [v3 appendObject:localizedName];
  }

  v9 = [v3 hash];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__PUIStyleColorPickerConstantColor_description__block_invoke;
  v10 = &unk_1E78548A0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  color = [(PUIStyleColorPickerConstantColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  [(PUIStyleColorPickerConstantColor *)self initialVariation];
  [coderCopy encodeDouble:@"initialVariation" forKey:?];
}

- (PUIStyleColorPickerConstantColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  [coderCopy decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PUIStyleColorPickerConstantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  color = [(PUIStyleColorPickerConstantColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  [(PUIStyleColorPickerConstantColor *)self initialVariation];
  [coderCopy encodeDouble:@"initialVariation" forKey:?];
}

- (PUIStyleColorPickerConstantColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  [coderCopy decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PUIStyleColorPickerConstantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  color = [(PUIStyleColorPickerConstantColor *)self color];
  v5 = [formatterCopy appendObject:color withName:@"color"];

  [(PUIStyleColorPickerConstantColor *)self initialVariation];
  v6 = [formatterCopy appendDouble:@"initialVariation" withName:5 decimalPrecision:?];
}

@end