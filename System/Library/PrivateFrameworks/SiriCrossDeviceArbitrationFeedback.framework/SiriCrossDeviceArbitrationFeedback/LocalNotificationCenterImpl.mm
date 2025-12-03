@interface LocalNotificationCenterImpl
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation LocalNotificationCenterImpl

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_266A8C5A4(centerCopy, notificationCopy, selfCopy, v8);
  _Block_release(v8);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  LocalNotificationCenterImpl.userNotificationCenter(_:didReceive:withCompletionHandler:)(centerCopy, responseCopy, sub_266A8CB9C, v9);
}

@end