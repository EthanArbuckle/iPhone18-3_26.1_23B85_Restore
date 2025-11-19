@interface SBTestSecureIndicatorMinimumOnTimeProvider
- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4;
@end

@implementation SBTestSecureIndicatorMinimumOnTimeProvider

- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)a3 error:(id *)a4
{
  minimumOnTimeRequestedHandler = self->_minimumOnTimeRequestedHandler;
  if (minimumOnTimeRequestedHandler)
  {
    minimumOnTimeRequestedHandler[2](minimumOnTimeRequestedHandler, a3);
  }

  if (a4)
  {
    *a4 = self->_error;
  }

  return self->_remainingTimeToSatisfyMinimumOnTime;
}

@end