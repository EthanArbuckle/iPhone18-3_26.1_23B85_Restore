@interface RTWiFiManagerNotificationLinkStatusChanged
- (RTWiFiManagerNotificationLinkStatusChanged)initWithLinkStatus:(unint64_t)a3 accessPoints:(id)a4;
@end

@implementation RTWiFiManagerNotificationLinkStatusChanged

- (RTWiFiManagerNotificationLinkStatusChanged)initWithLinkStatus:(unint64_t)a3 accessPoints:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RTWiFiManagerNotificationLinkStatusChanged;
  v7 = [(RTNotification *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_linkStatus = a3;
    v9 = [v6 copy];
    accessPoints = v8->_accessPoints;
    v8->_accessPoints = v9;
  }

  return v8;
}

@end