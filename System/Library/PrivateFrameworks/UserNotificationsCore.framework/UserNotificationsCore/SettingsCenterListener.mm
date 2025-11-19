@interface SettingsCenterListener
- (_TtC21UserNotificationsCore22SettingsCenterListener)init;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4;
@end

@implementation SettingsCenterListener

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4
{
  v6 = sub_1DA940E94();
  v7 = a3;
  v8 = self;
  sub_1DA82FF78(v7, v6);
}

- (_TtC21UserNotificationsCore22SettingsCenterListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end