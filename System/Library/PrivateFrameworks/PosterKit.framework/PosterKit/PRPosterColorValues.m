@interface PRPosterColorValues
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (PRPosterColorValues)initWithColor:(id)a3;
- (PRPosterColorValues)initWithColor:(id)a3 hsbValues:(id)a4 hslValues:(id)a5 alpha:(double)a6;
- (PRPosterColorValues)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6;
- (id)copyWithAlpha:(double)a3;
- (id)copyWithLuminance:(double)a3;
- (unint64_t)hash;
@end

@implementation PRPosterColorValues

- (PRPosterColorValues)initWithColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v10 = 1.0;
  if (v4)
  {
    [v4 getWhite:0 alpha:&v10];
  }

  v6 = [[PRPosterColorHSBValues alloc] initWithColor:v5];
  v7 = [(PRPosterColorHSBValues *)v6 hslValues];
  v8 = [(PRPosterColorValues *)self initWithColor:v5 hsbValues:v6 hslValues:v7 alpha:v10];

  return v8;
}

- (PRPosterColorValues)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6
{
  v8 = [[PRPosterColorHSLValues alloc] initWithHue:a3 saturation:a4 luminance:a5];
  v9 = [(PRPosterColorHSLValues *)v8 hsbValues];
  v10 = [v9 colorWithAlpha:a6];
  v11 = [(PRPosterColorValues *)self initWithColor:v10 hsbValues:v9 hslValues:v8 alpha:a6];

  return v11;
}

- (PRPosterColorValues)initWithColor:(id)a3 hsbValues:(id)a4 hslValues:(id)a5 alpha:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = PRPosterColorValues;
  v13 = [(PRPosterColorValues *)&v17 init];
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
  v3 = [(PRPosterColorValues *)self hslValues];
  [(PRPosterColorValues *)self alpha];
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
      v8 = [(PRPosterColorValues *)self identifier];
      v9 = [(PRPosterColorValues *)v7 identifier];

      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(PRPosterColorValues *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithLuminance:(double)a3
{
  v5 = [(PRPosterColorValues *)self hslValues];
  v6 = [PRPosterColorValues alloc];
  [v5 hue];
  v8 = v7;
  [v5 saturation];
  v10 = v9;
  [(PRPosterColorValues *)self alpha];
  v12 = [(PRPosterColorValues *)v6 initWithHue:v8 saturation:v10 luminance:a3 alpha:v11];

  return v12;
}

- (id)copyWithAlpha:(double)a3
{
  v4 = [(PRPosterColorValues *)self hslValues];
  v5 = [PRPosterColorValues alloc];
  [v4 hue];
  v7 = v6;
  [v4 saturation];
  v9 = v8;
  [v4 luminance];
  v11 = [(PRPosterColorValues *)v5 initWithHue:v7 saturation:v9 luminance:v10 alpha:a3];

  return v11;
}

@end