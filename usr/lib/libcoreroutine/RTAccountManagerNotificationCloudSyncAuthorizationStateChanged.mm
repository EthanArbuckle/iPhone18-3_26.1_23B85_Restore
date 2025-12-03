@interface RTAccountManagerNotificationCloudSyncAuthorizationStateChanged
- (RTAccountManagerNotificationCloudSyncAuthorizationStateChanged)initWithCloudSyncAuthorizationState:(int64_t)state;
@end

@implementation RTAccountManagerNotificationCloudSyncAuthorizationStateChanged

- (RTAccountManagerNotificationCloudSyncAuthorizationStateChanged)initWithCloudSyncAuthorizationState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = RTAccountManagerNotificationCloudSyncAuthorizationStateChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_cloudSyncAuthorizationState = state;
  }

  return result;
}

@end