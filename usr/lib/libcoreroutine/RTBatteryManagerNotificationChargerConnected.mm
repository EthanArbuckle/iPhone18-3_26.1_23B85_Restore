@interface RTBatteryManagerNotificationChargerConnected
- (RTBatteryManagerNotificationChargerConnected)initWithChargerConnected:(BOOL)connected;
@end

@implementation RTBatteryManagerNotificationChargerConnected

- (RTBatteryManagerNotificationChargerConnected)initWithChargerConnected:(BOOL)connected
{
  v5.receiver = self;
  v5.super_class = RTBatteryManagerNotificationChargerConnected;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_connected = connected;
  }

  return result;
}

@end