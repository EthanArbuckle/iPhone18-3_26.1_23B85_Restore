@interface RTBatteryManagerNotificationChargerConnected
- (RTBatteryManagerNotificationChargerConnected)initWithChargerConnected:(BOOL)a3;
@end

@implementation RTBatteryManagerNotificationChargerConnected

- (RTBatteryManagerNotificationChargerConnected)initWithChargerConnected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTBatteryManagerNotificationChargerConnected;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_connected = a3;
  }

  return result;
}

@end