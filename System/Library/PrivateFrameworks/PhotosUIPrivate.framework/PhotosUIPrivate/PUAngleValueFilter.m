@interface PUAngleValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUAngleValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  for (i = a4 - a3; a4 - a3 > 3.14159265; i = a4 - a3)
  {
    a4 = a4 + -6.28318531;
  }

  if (i < -3.14159265)
  {
    do
    {
      a4 = a4 + 6.28318531;
    }

    while (a4 - a3 < -3.14159265);
  }

  return a4;
}

@end