@interface NotificationAuthorizationManager
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
@end

@implementation NotificationAuthorizationManager

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  sub_10000EB84(selfCopy, settingsCopy);
}

@end