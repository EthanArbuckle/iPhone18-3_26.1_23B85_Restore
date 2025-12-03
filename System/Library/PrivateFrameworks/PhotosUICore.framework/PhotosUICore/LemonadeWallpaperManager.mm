@interface LemonadeWallpaperManager
- (void)preferencesDidChange;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation LemonadeWallpaperManager

- (void)preferencesDidChange
{
  selfCopy = self;
  sub_1A3C5D148();
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  selfCopy = self;
  isWallpaperModificationAllowed = [notificationCopy isWallpaperModificationAllowed];
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v8 = sub_1A524C634();
  [standardUserDefaults setBool:isWallpaperModificationAllowed forKey:v8];

  sub_1A3C5D148();
}

@end