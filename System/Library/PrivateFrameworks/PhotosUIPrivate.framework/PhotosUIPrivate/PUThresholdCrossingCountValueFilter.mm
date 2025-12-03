@interface PUThresholdCrossingCountValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUThresholdCrossingCountValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  [(PUThresholdCrossingCountValueFilter *)self thresholdValue];
  v8 = v7;
  crossingCount = self->_crossingCount;
  if (v7 > value != v7 > targetValue)
  {
    self->_crossingCount = ++crossingCount;
  }

  if (crossingCount >= [(PUThresholdCrossingCountValueFilter *)self maximumCrossingCount])
  {
    return v8;
  }

  else
  {
    return targetValue;
  }
}

@end