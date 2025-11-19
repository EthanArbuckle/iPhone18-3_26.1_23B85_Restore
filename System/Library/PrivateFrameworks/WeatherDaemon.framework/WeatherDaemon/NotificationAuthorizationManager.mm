@interface NotificationAuthorizationManager
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
@end

@implementation NotificationAuthorizationManager

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000EB84(v8, v7);
}

@end