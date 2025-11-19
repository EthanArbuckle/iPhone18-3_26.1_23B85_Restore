@interface PREditorColorPickerConstantColor
+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PREditorColorPickerConstantColor)colorWithVariation:(double)a3;
- (PREditorColorPickerConstantColor)init;
- (PREditorColorPickerConstantColor)initWithBSXPCCoder:(id)a3;
- (PREditorColorPickerConstantColor)initWithBaseUIColor:(id)a3 initialVariation:(double)a4;
- (PREditorColorPickerConstantColor)initWithCoder:(id)a3;
- (PREditorColorPickerConstantColor)initWithColor:(id)a3 initialVariation:(double)a4;
- (double)variationForLuminance:(double)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREditorColorPickerConstantColor

+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4
{
  v4 = a4 * -0.25;
  v5 = [a3 hslValues];
  [v5 luminance];
  v7 = v6;

  result = fmax(v7 + v4, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (PREditorColorPickerConstantColor)init
{
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(PREditorColorPickerConstantColor *)self initWithBaseUIColor:v3];

  return v4;
}

- (PREditorColorPickerConstantColor)initWithBaseUIColor:(id)a3 initialVariation:(double)a4
{
  v6 = a3;
  v7 = [[PRPosterColor alloc] initWithColor:v6 preferredStyle:0];

  v8 = [(PREditorColorPickerConstantColor *)self initWithColor:v7 initialVariation:a4];
  return v8;
}

- (PREditorColorPickerConstantColor)initWithColor:(id)a3 initialVariation:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PREditorColorPickerConstantColor;
  v7 = [(PREditorColorPickerConstantColor *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    color = v7->_color;
    v7->_color = v8;

    v7->_initialVariation = a4;
  }

  return v7;
}

- (PREditorColorPickerConstantColor)colorWithVariation:(double)a3
{
  [objc_opt_class() luminanceForPosterColor:self->_color withAppliedVariation:a3];
  v4 = [(PRPosterColor *)self->_color copyWithLuminance:?];

  return v4;
}

- (double)variationForLuminance:(double)a3
{
  v5 = [(PREditorColorPickerConstantColor *)self baseColor];
  v6 = [v5 hslValues];
  [v6 luminance];
  v8 = v7;

  v9 = [(PREditorColorPickerConstantColor *)self leftSliderColor];
  v10 = [v9 hslValues];
  [v10 luminance];
  v12 = v11;

  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = [(PREditorColorPickerConstantColor *)self rightSliderColor];
  v15 = [v14 hslValues];
  [v15 luminance];
  v17 = v16;

  result = 0.0;
  v19 = fmax(v17, 0.0);
  if (v19 <= a3 && v8 >= a3)
  {
    return (a3 - v19) / (v8 - v19) + -1.0;
  }

  if (v13 >= a3 && v8 <= a3)
  {
    return 1.0 - (a3 - v8) / (v13 - v8);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PREditorColorPickerConstantColor *)self baseColor];
      v9 = [(PREditorColorPickerConstantColor *)v7 baseColor];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditorColorPickerConstantColor *)self initialVariation], v12 = v11, [(PREditorColorPickerConstantColor *)v7 initialVariation], v12 == v13))
      {
        v16 = [(PREditorColorPickerConstantColor *)self localizedName];
        v17 = [(PREditorColorPickerConstantColor *)v7 localizedName];
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
  v4 = [(PREditorColorPickerConstantColor *)self color];
  v5 = [v3 appendObject:v4];

  [(PREditorColorPickerConstantColor *)self initialVariation];
  v6 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    v7 = [(PREditorColorPickerConstantColor *)self localizedName];
    v8 = [v3 appendObject:v7];
  }

  v9 = [v3 hash];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__PREditorColorPickerConstantColor_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PREditorColorPickerConstantColor *)self color];
  [v5 encodeObject:v4 forKey:@"color"];

  [(PREditorColorPickerConstantColor *)self initialVariation];
  [v5 encodeDouble:@"initialVariation" forKey:?];
}

- (PREditorColorPickerConstantColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  [v4 decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PREditorColorPickerConstantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(PREditorColorPickerConstantColor *)self color];
  [v5 encodeObject:v4 forKey:@"color"];

  [(PREditorColorPickerConstantColor *)self initialVariation];
  [v5 encodeDouble:@"initialVariation" forKey:?];
}

- (PREditorColorPickerConstantColor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  [v4 decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PREditorColorPickerConstantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PREditorColorPickerConstantColor *)self color];
  v5 = [v7 appendObject:v4 withName:@"color"];

  [(PREditorColorPickerConstantColor *)self initialVariation];
  v6 = [v7 appendDouble:@"initialVariation" withName:5 decimalPrecision:?];
}

@end