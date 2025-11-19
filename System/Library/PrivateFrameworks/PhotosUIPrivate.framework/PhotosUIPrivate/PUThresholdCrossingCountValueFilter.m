@interface PUThresholdCrossingCountValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUThresholdCrossingCountValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  [(PUThresholdCrossingCountValueFilter *)self thresholdValue];
  v8 = v7;
  crossingCount = self->_crossingCount;
  if (v7 > a3 != v7 > a4)
  {
    self->_crossingCount = ++crossingCount;
  }

  if (crossingCount >= [(PUThresholdCrossingCountValueFilter *)self maximumCrossingCount])
  {
    return v8;
  }

  else
  {
    return a4;
  }
}

@end