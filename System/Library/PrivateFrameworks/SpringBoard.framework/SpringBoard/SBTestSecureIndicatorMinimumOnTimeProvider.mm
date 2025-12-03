@interface SBTestSecureIndicatorMinimumOnTimeProvider
- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error;
@end

@implementation SBTestSecureIndicatorMinimumOnTimeProvider

- (double)remainingTimeToSatisfyMinimumOnTimeForIndicators:(int64_t)indicators error:(id *)error
{
  minimumOnTimeRequestedHandler = self->_minimumOnTimeRequestedHandler;
  if (minimumOnTimeRequestedHandler)
  {
    minimumOnTimeRequestedHandler[2](minimumOnTimeRequestedHandler, indicators);
  }

  if (error)
  {
    *error = self->_error;
  }

  return self->_remainingTimeToSatisfyMinimumOnTime;
}

@end