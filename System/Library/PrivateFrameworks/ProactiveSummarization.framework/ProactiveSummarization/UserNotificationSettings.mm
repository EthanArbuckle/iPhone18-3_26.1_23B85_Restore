@interface UserNotificationSettings
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings;
@end

@implementation UserNotificationSettings

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers
{
  sub_231E11A60();
  centerCopy = center;
  selfCopy = self;
  sub_231D579B8();
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  sub_231D57D94(selfCopy, settingsCopy);
}

@end