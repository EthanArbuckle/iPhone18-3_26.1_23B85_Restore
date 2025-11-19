@interface TATrackingAvoidanceServiceStateContext
- (TATrackingAvoidanceServiceStateContext)init;
@end

@implementation TATrackingAvoidanceServiceStateContext

- (TATrackingAvoidanceServiceStateContext)init
{
  v3.receiver = self;
  v3.super_class = TATrackingAvoidanceServiceStateContext;
  result = [(TATrackingAvoidanceServiceStateContext *)&v3 init];
  if (result)
  {
    *&result->_serviceEnabled = 1;
    result->_locationServicesEnabled = 1;
    *&result->_restartRequired = 0;
    *&result->_hasKoreaCountryCode = 0;
  }

  return result;
}

@end