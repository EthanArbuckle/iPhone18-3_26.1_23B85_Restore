@interface UNCenterLocalNotification
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5;
@end

@implementation UNCenterLocalNotification

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1E38364EC(&unk_1E42C55E8, v9);
}

@end