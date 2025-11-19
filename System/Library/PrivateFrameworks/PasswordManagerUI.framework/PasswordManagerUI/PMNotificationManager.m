@interface PMNotificationManager
- (void)notificationManager:(id)a3 didReceiveResponseOfType:(int64_t)a4 toNotificationOfType:(int64_t)a5 withUserInfo:(id)a6;
@end

@implementation PMNotificationManager

- (void)notificationManager:(id)a3 didReceiveResponseOfType:(int64_t)a4 toNotificationOfType:(int64_t)a5 withUserInfo:(id)a6
{
  v10 = sub_21CB85474();
  v11 = a3;
  v12 = self;
  sub_21CA48E24(a4, a5, v10);
}

@end