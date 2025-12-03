@interface SettingsCenterListener
- (_TtC21UserNotificationsCore22SettingsCenterListener)init;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers;
@end

@implementation SettingsCenterListener

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers
{
  v6 = sub_1DA940E94();
  centerCopy = center;
  selfCopy = self;
  sub_1DA82FF78(centerCopy, v6);
}

- (_TtC21UserNotificationsCore22SettingsCenterListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end