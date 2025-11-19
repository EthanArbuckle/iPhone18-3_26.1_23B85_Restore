@interface PREditorColorPickerVibrantColor
+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PREditorColorPickerVibrantColor)colorWithVariation:(double)a3;
- (PREditorColorPickerVibrantColor)initWithBSXPCCoder:(id)a3;
- (PREditorColorPickerVibrantColor)initWithCoder:(id)a3;
- (PREditorColorPickerVibrantColor)initWithColor:(id)a3 initialVariation:(double)a4;
- (id)displayColorWithVariation:(double)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREditorColorPickerVibrantColor

+ (double)luminanceForPosterColor:(id)a3 withAppliedVariation:(double)a4
{
  v4 = ((a4 + 1.0) * 0.5 + -1.0) * -0.25;
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

- (PREditorColorPickerVibrantColor)initWithColor:(id)a3 initialVariation:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PREditorColorPickerVibrantColor;
  v8 = [(PREditorColorPickerVibrantColor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_color, a3);
    v9->_initialVariation = a4;
  }

  return v9;
}

- (PREditorColorPickerVibrantColor)colorWithVariation:(double)a3
{
  v3 = [(PRPosterColor *)self->_color copyWithAlpha:(a3 + 1.0) * 0.5 + 0.0];

  return v3;
}

- (id)displayColorWithVariation:(double)a3
{
  [objc_opt_class() luminanceForPosterColor:self->_color withAppliedVariation:a3];
  v4 = [(PRPosterColor *)self->_color copyWithLuminance:?];

  return v4;
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
      v8 = [(PREditorColorPickerVibrantColor *)self color];
      v9 = [(PREditorColorPickerVibrantColor *)v7 color];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditorColorPickerVibrantColor *)self initialVariation], v12 = v11, [(PREditorColorPickerVibrantColor *)v7 initialVariation], v12 == v13))
      {
        v16 = [(PREditorColorPickerVibrantColor *)self localizedName];
        v17 = [(PREditorColorPickerVibrantColor *)v7 localizedName];
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
  v4 = [(PREditorColorPickerVibrantColor *)self color];
  v5 = [v3 appendObject:v4];

  [(PREditorColorPickerVibrantColor *)self initialVariation];
  v6 = [v3 appendCGFloat:?];
  if (self->_localizedName)
  {
    v7 = [(PREditorColorPickerVibrantColor *)self localizedName];
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
  v9 = __46__PREditorColorPickerVibrantColor_description__block_invoke;
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
  v4 = [(PREditorColorPickerVibrantColor *)self color];
  [v5 encodeObject:v4 forKey:@"color"];

  [(PREditorColorPickerVibrantColor *)self initialVariation];
  [v5 encodeDouble:@"initialVariation" forKey:?];
}

- (PREditorColorPickerVibrantColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  [v4 decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PREditorColorPickerVibrantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(PREditorColorPickerVibrantColor *)self color];
  [v5 encodeObject:v4 forKey:@"color"];

  [(PREditorColorPickerVibrantColor *)self initialVariation];
  [v5 encodeDouble:@"initialVariation" forKey:?];
}

- (PREditorColorPickerVibrantColor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"color"];

  [v4 decodeDoubleForKey:@"initialVariation"];
  v8 = v7;

  v9 = [(PREditorColorPickerVibrantColor *)self initWithColor:v6 initialVariation:v8];
  return v9;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PREditorColorPickerVibrantColor *)self color];
  v5 = [v7 appendObject:v4 withName:@"color"];

  [(PREditorColorPickerVibrantColor *)self initialVariation];
  v6 = [v7 appendDouble:@"initialVariation" withName:5 decimalPrecision:?];
}

@end