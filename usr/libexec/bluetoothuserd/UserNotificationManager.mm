@interface UserNotificationManager
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation UserNotificationManager

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_100040AEC(notificationCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end