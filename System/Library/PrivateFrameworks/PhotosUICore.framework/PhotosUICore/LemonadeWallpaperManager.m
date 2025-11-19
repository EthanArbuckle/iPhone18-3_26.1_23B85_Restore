@interface LemonadeWallpaperManager
- (void)preferencesDidChange;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation LemonadeWallpaperManager

- (void)preferencesDidChange
{
  v2 = self;
  sub_1A3C5D148();
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = a3;
  v9 = self;
  v6 = [v5 isWallpaperModificationAllowed];
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1A524C634();
  [v7 setBool:v6 forKey:v8];

  sub_1A3C5D148();
}

@end