@interface UserNotificationSettings
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation UserNotificationSettings

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4
{
  sub_231E11A60();
  v6 = a3;
  v7 = self;
  sub_231D579B8();
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_231D57D94(v8, v7);
}

@end