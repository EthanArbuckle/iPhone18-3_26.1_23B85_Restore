@interface RTIntermittentGNSSNotificationRemoteStatusUpdated
- (RTIntermittentGNSSNotificationRemoteStatusUpdated)initWithRemoteStatus:(int64_t)status;
@end

@implementation RTIntermittentGNSSNotificationRemoteStatusUpdated

- (RTIntermittentGNSSNotificationRemoteStatusUpdated)initWithRemoteStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = RTIntermittentGNSSNotificationRemoteStatusUpdated;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_remoteStatus = status;
  }

  return result;
}

@end