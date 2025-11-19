@interface RTWiFiFootprintStateNotification
- (RTWiFiFootprintStateNotification)initWithFootprintState:(int64_t)a3;
@end

@implementation RTWiFiFootprintStateNotification

- (RTWiFiFootprintStateNotification)initWithFootprintState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTWiFiFootprintStateNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_state = a3;
  }

  return result;
}

@end