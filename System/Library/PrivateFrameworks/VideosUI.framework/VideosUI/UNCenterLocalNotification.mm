@interface UNCenterLocalNotification
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
@end

@implementation UNCenterLocalNotification

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = center;
  v9[3] = notification;
  v9[4] = v8;
  v9[5] = self;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42C55E8, v9);
}

@end