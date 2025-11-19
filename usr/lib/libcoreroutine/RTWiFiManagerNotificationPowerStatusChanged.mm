@interface RTWiFiManagerNotificationPowerStatusChanged
- (RTWiFiManagerNotificationPowerStatusChanged)initWithPowerStatus:(unint64_t)a3;
@end

@implementation RTWiFiManagerNotificationPowerStatusChanged

- (RTWiFiManagerNotificationPowerStatusChanged)initWithPowerStatus:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTWiFiManagerNotificationPowerStatusChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_powerStatus = a3;
  }

  return result;
}

@end