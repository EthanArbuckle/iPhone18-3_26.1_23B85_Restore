@interface RTWiFiFootprintStateNotification
- (RTWiFiFootprintStateNotification)initWithFootprintState:(int64_t)state;
@end

@implementation RTWiFiFootprintStateNotification

- (RTWiFiFootprintStateNotification)initWithFootprintState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = RTWiFiFootprintStateNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_state = state;
  }

  return result;
}

@end