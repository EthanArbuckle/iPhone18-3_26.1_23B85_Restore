@interface RTIntermittentGNSSNotificationRemoteStatusUpdated
- (RTIntermittentGNSSNotificationRemoteStatusUpdated)initWithRemoteStatus:(int64_t)a3;
@end

@implementation RTIntermittentGNSSNotificationRemoteStatusUpdated

- (RTIntermittentGNSSNotificationRemoteStatusUpdated)initWithRemoteStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTIntermittentGNSSNotificationRemoteStatusUpdated;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_remoteStatus = a3;
  }

  return result;
}

@end