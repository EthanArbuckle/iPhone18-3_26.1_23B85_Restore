@interface RTAccountManagerNotificationCloudSyncAuthorizationStateChanged
- (RTAccountManagerNotificationCloudSyncAuthorizationStateChanged)initWithCloudSyncAuthorizationState:(int64_t)a3;
@end

@implementation RTAccountManagerNotificationCloudSyncAuthorizationStateChanged

- (RTAccountManagerNotificationCloudSyncAuthorizationStateChanged)initWithCloudSyncAuthorizationState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTAccountManagerNotificationCloudSyncAuthorizationStateChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_cloudSyncAuthorizationState = a3;
  }

  return result;
}

@end