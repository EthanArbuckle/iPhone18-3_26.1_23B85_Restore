@interface PUIColorHSBValues
- (PUIColorHSBValues)initWithColor:(id)color;
- (PUIColorHSBValues)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness;
- (id)colorWithAlpha:(double)alpha;
- (id)hslValues;
@end

@implementation PUIColorHSBValues

- (id)hslValues
{
  brightness = self->_brightness;
  v3 = brightness + brightness * self->_saturation * -0.5;
  v4 = 1.0 - v3;
  if (v3 < 1.0 - v3)
  {
    v4 = brightness + brightness * self->_saturation * -0.5;
  }

  v5 = 0.0;
  if (v4 > 0.0)
  {
    v5 = (brightness - v3) / v4;
  }

  v6 = [[PUIColorHSLValues alloc] initWithHue:self->_hue saturation:v5 luminance:v3];

  return v6;
}

- (PUIColorHSBValues)initWithColor:(id)color
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 1.0;
  [color getHue:&v7 saturation:&v6 brightness:&v5 alpha:0];
  return [(PUIColorHSBValues *)self initWithHue:v7 saturation:v6 brightness:v5];
}

- (PUIColorHSBValues)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness
{
  v9.receiver = self;
  v9.super_class = PUIColorHSBValues;
  result = [(PUIColorHSBValues *)&v9 init];
  if (result)
  {
    result->_hue = hue;
    result->_saturation = saturation;
    result->_brightness = brightness;
  }

  return result;
}

- (id)colorWithAlpha:(double)alpha
{
  v5 = MEMORY[0x1E69DC888];
  [(PUIColorHSBValues *)self hue];
  v7 = v6;
  [(PUIColorHSBValues *)self saturation];
  v9 = v8;
  [(PUIColorHSBValues *)self brightness];

  return [v5 colorWithHue:v7 saturation:v9 brightness:v10 alpha:alpha];
}

@end