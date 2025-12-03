@interface PRPosterColorHSLValues
- (PRPosterColorHSLValues)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance;
- (id)hsbValues;
@end

@implementation PRPosterColorHSLValues

- (PRPosterColorHSLValues)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance
{
  v9.receiver = self;
  v9.super_class = PRPosterColorHSLValues;
  result = [(PRPosterColorHSLValues *)&v9 init];
  if (result)
  {
    result->_hue = hue;
    result->_saturation = saturation;
    result->_luminance = luminance;
  }

  return result;
}

- (id)hsbValues
{
  luminance = self->_luminance;
  v3 = 1.0 - luminance;
  if (luminance < 1.0 - luminance)
  {
    v3 = self->_luminance;
  }

  v4 = luminance + self->_saturation * v3;
  v5 = 0.0;
  if (v4 > 0.0)
  {
    v5 = 2.0 - (luminance + luminance) / v4;
  }

  v6 = [[PRPosterColorHSBValues alloc] initWithHue:self->_hue saturation:v5 brightness:v4];

  return v6;
}

@end