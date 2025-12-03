@interface RTWiFiManagerNotificationLinkStatusChanged
- (RTWiFiManagerNotificationLinkStatusChanged)initWithLinkStatus:(unint64_t)status accessPoints:(id)points;
@end

@implementation RTWiFiManagerNotificationLinkStatusChanged

- (RTWiFiManagerNotificationLinkStatusChanged)initWithLinkStatus:(unint64_t)status accessPoints:(id)points
{
  pointsCopy = points;
  v12.receiver = self;
  v12.super_class = RTWiFiManagerNotificationLinkStatusChanged;
  v7 = [(RTNotification *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_linkStatus = status;
    v9 = [pointsCopy copy];
    accessPoints = v8->_accessPoints;
    v8->_accessPoints = v9;
  }

  return v8;
}

@end