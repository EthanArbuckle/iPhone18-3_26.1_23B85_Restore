@interface NotificationController
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation NotificationController

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1002C5684(responseCopy);
  _Block_release(v8);
}

@end