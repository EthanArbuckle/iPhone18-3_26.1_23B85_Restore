@interface HKSHSleepApneaNotificationsBridgeSettings
+ (id)hiddenSettings;
- (HKSHSleepApneaNotificationsBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer;
@end

@implementation HKSHSleepApneaNotificationsBridgeSettings

- (HKSHSleepApneaNotificationsBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer
{
  onboardingCopy = onboarding;
  enabledCopy = enabled;
  visibleCopy = visible;
  footerCopy = footer;
  v14.receiver = self;
  v14.super_class = HKSHSleepApneaNotificationsBridgeSettings;
  v11 = [(HKSHSleepApneaNotificationsBridgeSettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKSHSleepApneaNotificationsBridgeSettings *)v11 setSettingVisible:visibleCopy];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setSettingEnabled:enabledCopy];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setShowOnboarding:onboardingCopy];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setFooter:footerCopy];
  }

  return v12;
}

+ (id)hiddenSettings
{
  v2 = [[HKSHSleepApneaNotificationsBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end