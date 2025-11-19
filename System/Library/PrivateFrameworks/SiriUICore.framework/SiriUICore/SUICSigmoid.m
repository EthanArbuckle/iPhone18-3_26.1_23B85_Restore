@interface SUICSigmoid
+ (float)sigmoid:(float)a3;
+ (float)sigmoid_norm:(float)a3;
@end

@implementation SUICSigmoid

+ (float)sigmoid:(float)a3
{
  result = 0.0;
  if (a3 > -10.0)
  {
    result = 1.0;
    if (a3 < 10.0)
    {
      return sigmoid_vals[((a3 + 10.0) * 10.0)];
    }
  }

  return result;
}

+ (float)sigmoid_norm:(float)a3
{
  *&v3 = a3 * 12.0;
  [a1 sigmoid:v3];
  return result;
}

@end