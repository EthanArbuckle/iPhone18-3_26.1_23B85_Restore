@interface PUInitialHysteresisValueFilter
- (double)outputValueDerivative;
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
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

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  if (self->_didReachThreshold)
  {
    return a4 - self->_initialHysteresis;
  }

  [(PUInitialHysteresisValueFilter *)self thresholdValue];
  if (v6 <= a4 || (v6 = -v6, v6 >= a4))
  {
    self->_initialHysteresis = v6;
    self->_didReachThreshold = 1;
    return a4 - self->_initialHysteresis;
  }

  result = 0.0;
  if (self->_didReachThreshold)
  {
    return a4 - self->_initialHysteresis;
  }

  return result;
}

@end