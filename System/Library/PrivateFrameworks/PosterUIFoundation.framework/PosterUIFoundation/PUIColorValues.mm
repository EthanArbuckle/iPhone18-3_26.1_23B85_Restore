@interface PUIColorValues
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (PUIColorValues)initWithColor:(id)color;
- (PUIColorValues)initWithColor:(id)color hsbValues:(id)values hslValues:(id)hslValues alpha:(double)alpha;
- (PUIColorValues)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha;
- (id)copyWithAlpha:(double)alpha;
- (id)copyWithLuminance:(double)luminance;
- (id)copyWithLuminance:(double)luminance saturation:(double)saturation;
- (unint64_t)hash;
@end

@implementation PUIColorValues

- (PUIColorValues)initWithColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  v10 = 1.0;
  if (colorCopy)
  {
    [colorCopy getWhite:0 alpha:&v10];
  }

  v6 = [[PUIColorHSBValues alloc] initWithColor:v5];
  hslValues = [(PUIColorHSBValues *)v6 hslValues];
  v8 = [(PUIColorValues *)self initWithColor:v5 hsbValues:v6 hslValues:hslValues alpha:v10];

  return v8;
}

- (PUIColorValues)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha
{
  v8 = [[PUIColorHSLValues alloc] initWithHue:hue saturation:saturation luminance:luminance];
  hsbValues = [(PUIColorHSLValues *)v8 hsbValues];
  v10 = [hsbValues colorWithAlpha:alpha];
  v11 = [(PUIColorValues *)self initWithColor:v10 hsbValues:hsbValues hslValues:v8 alpha:alpha];

  return v11;
}

- (PUIColorValues)initWithColor:(id)color hsbValues:(id)values hslValues:(id)hslValues alpha:(double)alpha
{
  colorCopy = color;
  valuesCopy = values;
  hslValuesCopy = hslValues;
  v17.receiver = self;
  v17.super_class = PUIColorValues;
  v13 = [(PUIColorValues *)&v17 init];
  if (v13)
  {
    v14 = [colorCopy copy];
    color = v13->_color;
    v13->_color = v14;

    objc_storeStrong(&v13->_hsbValues, values);
    objc_storeStrong(&v13->_hslValues, hslValues);
    v13->_alpha = alpha;
  }

  return v13;
}

- (NSString)identifier
{
  hslValues = [(PUIColorValues *)self hslValues];
  [(PUIColorValues *)self alpha];
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  [hslValues hue];
  v8 = v7;
  [hslValues saturation];
  v10 = v9;
  [hslValues luminance];
  v12 = [v6 stringWithFormat:@"%.5f:%.5f:%.5f:%.2f", v8, v10, v11, v5];

  return v12;
}

- (unint64_t)hash
{
  identifier = [(PUIColorValues *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = [(PUIColorValues *)self identifier];
      identifier2 = [(PUIColorValues *)v7 identifier];

      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithLuminance:(double)luminance
{
  hslValues = [(PUIColorValues *)self hslValues];
  [hslValues saturation];
  v7 = [(PUIColorValues *)self copyWithLuminance:luminance saturation:v6];

  return v7;
}

- (id)copyWithLuminance:(double)luminance saturation:(double)saturation
{
  hslValues = [(PUIColorValues *)self hslValues];
  v8 = [PUIColorValues alloc];
  [hslValues hue];
  v10 = v9;
  [(PUIColorValues *)self alpha];
  v12 = [(PUIColorValues *)v8 initWithHue:v10 saturation:saturation luminance:luminance alpha:v11];

  return v12;
}

- (id)copyWithAlpha:(double)alpha
{
  hslValues = [(PUIColorValues *)self hslValues];
  v5 = [PUIColorValues alloc];
  [hslValues hue];
  v7 = v6;
  [hslValues saturation];
  v9 = v8;
  [hslValues luminance];
  v11 = [(PUIColorValues *)v5 initWithHue:v7 saturation:v9 luminance:v10 alpha:alpha];

  return v11;
}

@end