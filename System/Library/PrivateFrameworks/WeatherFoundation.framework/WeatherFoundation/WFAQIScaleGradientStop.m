@interface WFAQIScaleGradientStop
- (WFAQIScaleGradientStop)initWithCoder:(id)a3;
- (WFAQIScaleGradientStop)initWithLocation:(float)a3 color:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAQIScaleGradientStop

- (WFAQIScaleGradientStop)initWithLocation:(float)a3 color:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WFAQIScaleGradientStop;
  v7 = [(WFAQIScaleGradientStop *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_location = a3;
    v9 = [v6 copy];
    color = v8->_color;
    v8->_color = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFAQIScaleGradientStop alloc];
  [(WFAQIScaleGradientStop *)self location];
  v6 = v5;
  v7 = [(WFAQIScaleGradientStop *)self color];
  LODWORD(v8) = v6;
  v9 = [(WFAQIScaleGradientStop *)v4 initWithLocation:v7 color:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(WFAQIScaleGradientStop *)self location];
  [v4 encodeFloat:@"WFAQIScaleGradientLocationKey" forKey:?];
  v5 = [(WFAQIScaleGradientStop *)self color];
  [v4 encodeObject:v5 forKey:@"WFAQIScaleGradientColorKey"];
}

- (WFAQIScaleGradientStop)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"WFAQIScaleGradientLocationKey"];
  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleGradientColorKey"];

  LODWORD(v8) = v6;
  v9 = [(WFAQIScaleGradientStop *)self initWithLocation:v7 color:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(WFAQIScaleGradientStop *)self location];
  v5 = v4;
  v6 = [(WFAQIScaleGradientStop *)self color];
  v7 = [v3 stringWithFormat:@"<WFAQIScaleGradient location: %f, color: %@", *&v5, v6];

  return v7;
}

@end