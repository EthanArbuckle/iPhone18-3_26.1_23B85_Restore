@interface RTWiFiManagerNotificationPowerStatusChanged
- (RTWiFiManagerNotificationPowerStatusChanged)initWithPowerStatus:(unint64_t)status;
@end

@implementation RTWiFiManagerNotificationPowerStatusChanged

- (RTWiFiManagerNotificationPowerStatusChanged)initWithPowerStatus:(unint64_t)status
{
  v5.receiver = self;
  v5.super_class = RTWiFiManagerNotificationPowerStatusChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_powerStatus = status;
  }

  return result;
}

@end