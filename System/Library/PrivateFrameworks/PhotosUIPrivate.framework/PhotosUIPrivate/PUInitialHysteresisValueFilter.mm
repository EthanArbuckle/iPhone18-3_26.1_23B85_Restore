@interface PUInitialHysteresisValueFilter
- (double)outputValueDerivative;
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUInitialHysteresisValueFilter

- (double)outputValueDerivative
{
  result = 0.0;
  if (self->_didReachThreshold)
  {
    return 1.0;
  }

  return result;
}

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  if (self->_didReachThreshold)
  {
    return targetValue - self->_initialHysteresis;
  }

  [(PUInitialHysteresisValueFilter *)self thresholdValue];
  if (v6 <= targetValue || (v6 = -v6, v6 >= targetValue))
  {
    self->_initialHysteresis = v6;
    self->_didReachThreshold = 1;
    return targetValue - self->_initialHysteresis;
  }

  result = 0.0;
  if (self->_didReachThreshold)
  {
    return targetValue - self->_initialHysteresis;
  }

  return result;
}

@end