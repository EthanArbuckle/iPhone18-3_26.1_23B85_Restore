@interface SUICSigmoid
+ (float)sigmoid:(float)sigmoid;
+ (float)sigmoid_norm:(float)sigmoid_norm;
@end

@implementation SUICSigmoid

+ (float)sigmoid:(float)sigmoid
{
  result = 0.0;
  if (sigmoid > -10.0)
  {
    result = 1.0;
    if (sigmoid < 10.0)
    {
      return sigmoid_vals[((sigmoid + 10.0) * 10.0)];
    }
  }

  return result;
}

+ (float)sigmoid_norm:(float)sigmoid_norm
{
  *&v3 = sigmoid_norm * 12.0;
  [self sigmoid:v3];
  return result;
}

@end