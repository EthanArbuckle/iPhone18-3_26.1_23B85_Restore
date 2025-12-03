@interface PUMaximumChangeRateValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue timeInterval:(double)interval;
@end

@implementation PUMaximumChangeRateValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue timeInterval:(double)interval
{
  [(PUMaximumChangeRateValueFilter *)self maximumChangeRate];
  targetValueCopy = value - v8 * interval;
  if (targetValueCopy < targetValue)
  {
    targetValueCopy = targetValue;
  }

  result = value + v8 * interval;
  if (result >= targetValue)
  {
    result = targetValue;
  }

  if (value >= targetValue)
  {
    return targetValueCopy;
  }

  return result;
}

@end