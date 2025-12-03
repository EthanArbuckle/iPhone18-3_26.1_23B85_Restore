@interface WAAQIGradientStop
+ (id)gradientStopWithColor:(id)color location:(float)location;
- (WAAQIGradientStop)initWithColor:(id)color location:(float)location;
@end

@implementation WAAQIGradientStop

+ (id)gradientStopWithColor:(id)color location:(float)location
{
  colorCopy = color;
  v7 = [self alloc];
  *&v8 = location;
  v9 = [v7 initWithColor:colorCopy location:v8];

  return v9;
}

- (WAAQIGradientStop)initWithColor:(id)color location:(float)location
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = WAAQIGradientStop;
  v7 = [(WAAQIGradientStop *)&v11 init];
  if (v7)
  {
    v8 = [colorCopy copy];
    color = v7->_color;
    v7->_color = v8;

    v7->_location = location;
  }

  return v7;
}

@end