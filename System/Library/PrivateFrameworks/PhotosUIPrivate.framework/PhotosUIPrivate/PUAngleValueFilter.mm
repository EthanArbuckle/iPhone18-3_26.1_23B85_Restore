@interface PUAngleValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUAngleValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  for (i = targetValue - value; targetValue - value > 3.14159265; i = targetValue - value)
  {
    targetValue = targetValue + -6.28318531;
  }

  if (i < -3.14159265)
  {
    do
    {
      targetValue = targetValue + 6.28318531;
    }

    while (targetValue - value < -3.14159265);
  }

  return targetValue;
}

@end