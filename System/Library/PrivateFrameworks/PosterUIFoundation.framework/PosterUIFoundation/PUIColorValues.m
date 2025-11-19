@interface PUIColorValues
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (PUIColorValues)initWithColor:(id)a3;
- (PUIColorValues)initWithColor:(id)a3 hsbValues:(id)a4 hslValues:(id)a5 alpha:(double)a6;
- (PUIColorValues)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6;
- (id)copyWithAlpha:(double)a3;
- (id)copyWithLuminance:(double)a3;
- (id)copyWithLuminance:(double)a3 saturation:(double)a4;
- (unint64_t)hash;
@end

@implementation PUIColorValues

- (PUIColorValues)initWithColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v10 = 1.0;
  if (v4)
  {
    [v4 getWhite:0 alpha:&v10];
  }

  v6 = [[PUIColorHSBValues alloc] initWithColor:v5];
  v7 = [(PUIColorHSBValues *)v6 hslValues];
  v8 = [(PUIColorValues *)self initWithColor:v5 hsbValues:v6 hslValues:v7 alpha:v10];

  return v8;
}

- (PUIColorValues)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6
{
  v8 = [[PUIColorHSLValues alloc] initWithHue:a3 saturation:a4 luminance:a5];
  v9 = [(PUIColorHSLValues *)v8 hsbValues];
  v10 = [v9 colorWithAlpha:a6];
  v11 = [(PUIColorValues *)self initWithColor:v10 hsbValues:v9 hslValues:v8 alpha:a6];

  return v11;
}

- (PUIColorValues)initWithColor:(id)a3 hsbValues:(id)a4 hslValues:(id)a5 alpha:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = PUIColorValues;
  v13 = [(PUIColorValues *)&v17 init];
  if (v13)
  {
    v14 = [v10 copy];
    color = v13->_color;
    v13->_color = v14;

    objc_storeStrong(&v13->_hsbValues, a4);
    objc_storeStrong(&v13->_hslValues, a5);
    v13->_alpha = a6;
  }

  return v13;
}

- (NSString)identifier
{
  v3 = [(PUIColorValues *)self hslValues];
  [(PUIColorValues *)self alpha];
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  [v3 hue];
  v8 = v7;
  [v3 saturation];
  v10 = v9;
  [v3 luminance];
  v12 = [v6 stringWithFormat:@"%.5f:%.5f:%.5f:%.2f", v8, v10, v11, v5];

  return v12;
}

- (unint64_t)hash
{
  v2 = [(PUIColorValues *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PUIColorValues *)self identifier];
      v9 = [(PUIColorValues *)v7 identifier];

      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithLuminance:(double)a3
{
  v5 = [(PUIColorValues *)self hslValues];
  [v5 saturation];
  v7 = [(PUIColorValues *)self copyWithLuminance:a3 saturation:v6];

  return v7;
}

- (id)copyWithLuminance:(double)a3 saturation:(double)a4
{
  v7 = [(PUIColorValues *)self hslValues];
  v8 = [PUIColorValues alloc];
  [v7 hue];
  v10 = v9;
  [(PUIColorValues *)self alpha];
  v12 = [(PUIColorValues *)v8 initWithHue:v10 saturation:a4 luminance:a3 alpha:v11];

  return v12;
}

- (id)copyWithAlpha:(double)a3
{
  v4 = [(PUIColorValues *)self hslValues];
  v5 = [PUIColorValues alloc];
  [v4 hue];
  v7 = v6;
  [v4 saturation];
  v9 = v8;
  [v4 luminance];
  v11 = [(PUIColorValues *)v5 initWithHue:v7 saturation:v9 luminance:v10 alpha:a3];

  return v11;
}

@end