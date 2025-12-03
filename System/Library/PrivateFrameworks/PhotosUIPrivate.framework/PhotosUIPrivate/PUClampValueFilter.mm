@interface PUClampValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUClampValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  [(PUClampValueFilter *)self minimumValue];
  if (v6 > targetValue)
  {
    targetValue = v6;
  }

  [(PUClampValueFilter *)self maximumValue];
  if (targetValue < result)
  {
    return targetValue;
  }

  return result;
}

@end