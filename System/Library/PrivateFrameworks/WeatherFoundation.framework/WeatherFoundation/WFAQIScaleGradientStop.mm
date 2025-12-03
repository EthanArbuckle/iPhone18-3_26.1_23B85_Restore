@interface WFAQIScaleGradientStop
- (WFAQIScaleGradientStop)initWithCoder:(id)coder;
- (WFAQIScaleGradientStop)initWithLocation:(float)location color:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAQIScaleGradientStop

- (WFAQIScaleGradientStop)initWithLocation:(float)location color:(id)color
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = WFAQIScaleGradientStop;
  v7 = [(WFAQIScaleGradientStop *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_location = location;
    v9 = [colorCopy copy];
    color = v8->_color;
    v8->_color = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFAQIScaleGradientStop alloc];
  [(WFAQIScaleGradientStop *)self location];
  v6 = v5;
  color = [(WFAQIScaleGradientStop *)self color];
  LODWORD(v8) = v6;
  v9 = [(WFAQIScaleGradientStop *)v4 initWithLocation:color color:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(WFAQIScaleGradientStop *)self location];
  [coderCopy encodeFloat:@"WFAQIScaleGradientLocationKey" forKey:?];
  color = [(WFAQIScaleGradientStop *)self color];
  [coderCopy encodeObject:color forKey:@"WFAQIScaleGradientColorKey"];
}

- (WFAQIScaleGradientStop)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"WFAQIScaleGradientLocationKey"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleGradientColorKey"];

  LODWORD(v8) = v6;
  v9 = [(WFAQIScaleGradientStop *)self initWithLocation:v7 color:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(WFAQIScaleGradientStop *)self location];
  v5 = v4;
  color = [(WFAQIScaleGradientStop *)self color];
  v7 = [v3 stringWithFormat:@"<WFAQIScaleGradient location: %f, color: %@", *&v5, color];

  return v7;
}

@end