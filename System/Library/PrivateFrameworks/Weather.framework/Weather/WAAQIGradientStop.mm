@interface WAAQIGradientStop
+ (id)gradientStopWithColor:(id)a3 location:(float)a4;
- (WAAQIGradientStop)initWithColor:(id)a3 location:(float)a4;
@end

@implementation WAAQIGradientStop

+ (id)gradientStopWithColor:(id)a3 location:(float)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  *&v8 = a4;
  v9 = [v7 initWithColor:v6 location:v8];

  return v9;
}

- (WAAQIGradientStop)initWithColor:(id)a3 location:(float)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WAAQIGradientStop;
  v7 = [(WAAQIGradientStop *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    color = v7->_color;
    v7->_color = v8;

    v7->_location = a4;
  }

  return v7;
}

@end