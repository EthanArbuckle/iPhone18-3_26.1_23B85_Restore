@interface PUMaximumChangeRateValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4 timeInterval:(double)a5;
@end

@implementation PUMaximumChangeRateValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4 timeInterval:(double)a5
{
  [(PUMaximumChangeRateValueFilter *)self maximumChangeRate];
  v9 = a3 - v8 * a5;
  if (v9 < a4)
  {
    v9 = a4;
  }

  result = a3 + v8 * a5;
  if (result >= a4)
  {
    result = a4;
  }

  if (a3 >= a4)
  {
    return v9;
  }

  return result;
}

@end