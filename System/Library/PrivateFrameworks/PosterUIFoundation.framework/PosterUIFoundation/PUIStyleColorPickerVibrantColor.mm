@interface PUIStyleColorPickerVibrantColor
+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUIStyleColorPickerVibrantColor)colorWithVariation:(double)variation;
- (PUIStyleColorPickerVibrantColor)initWithBSXPCCoder:(id)coder;
- (PUIStyleColorPickerVibrantColor)initWithCoder:(id)coder;
- (PUIStyleColorPickerVibrantColor)initWithColor:(id)color initialVariation:(double)variation;
- (id)displayColorWithVariation:(double)variation;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleColorPickerVibrantColor

+ (double)luminanceForPosterColor:(id)color withAppliedVariation:(double)variation
{
  v4 = ((variation + 1.0) * 0.5 + -1.0) * -0.25;
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

- (PUIStyleColorPickerVibrantColor)initWithColor:(id)color initialVariation:(double)variation
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = PUIStyleColorPickerVibrantColor;
  v8 = [(PUIStyleColorPickerVibrantColor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, color);
    v9->_initialVariation = variation;
  }

  return v9;
}

- (PUIStyleColorPickerVibrantColor)colorWithVariation:(double)variation
{
  v3 = [(PUIStyleColor *)self->_color copyWithAlpha:(variation + 1.0) * 0.5 + 0.0];

  return v3;
}

- (id)displayColorWithVariation:(double)variation
{
  [objc_opt_class() luminanceForPosterColor:self->_color withAppliedVariation:variation];
  v4 = [(PUIStyleColor *)self->_color copyWithLuminance:?];

  return v4;
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
      color = [(PUIStyleColorPickerVibrantColor *)self color];
      color2 = [(PUIStyleColorPickerVibrantColor *)v7 color];
      v10 = BSEqualObjects();

      if (v10 && ([(PUIStyleColorPickerVibrantColor *)self initialVariation], v12 = v11, [(PUIStyleColorPickerVibrantColor *)v7 initialVariation], v12 == v13))
      {
        localizedName = [(PUIStyleColorPickerVibrantColor *)self localizedName];
        localizedName2 = [(PUIStyleColorPickerVibrantColor *)v7 localizedName];
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
  color = [(PUIStyleColorPickerVibrantColor *)self color];
  v5 = [v3 appendObject:color];

  [(PUIStyleColorPickerVibrantColor *)self initialVariation];
  v6 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    localizedName = [(PUIStyleColorPickerVibrantColor *)self localizedName];
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
  v9 = __46__PUIStyleColorPickerVibrantColor_description__block_invoke;
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
  color = [(PUIStyleColorPickerVibrantColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  [(PUIStyleColorPickerVibrantColor *)self initialVariation];
  [coderCopy encodeDouble:@"initialVariation" forKey:?];
}

- (PUIStyleColorPickerVibrantColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  [coderCopy decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PUIStyleColorPickerVibrantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  color = [(PUIStyleColorPickerVibrantColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  [(PUIStyleColorPickerVibrantColor *)self initialVariation];
  [coderCopy encodeDouble:@"initialVariation" forKey:?];
}

- (PUIStyleColorPickerVibrantColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"color"];

  [coderCopy decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PUIStyleColorPickerVibrantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  color = [(PUIStyleColorPickerVibrantColor *)self color];
  v5 = [formatterCopy appendObject:color withName:@"color"];

  [(PUIStyleColorPickerVibrantColor *)self initialVariation];
  v6 = [formatterCopy appendDouble:@"initialVariation" withName:5 decimalPrecision:?];
}

@end