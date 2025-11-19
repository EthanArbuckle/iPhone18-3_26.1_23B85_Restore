@interface HKSHSleepApneaNotificationsBridgeSettings
+ (id)hiddenSettings;
- (HKSHSleepApneaNotificationsBridgeSettings)initWithSettingVisible:(BOOL)a3 settingEnabled:(BOOL)a4 showOnboarding:(BOOL)a5 footer:(id)a6;
@end

@implementation HKSHSleepApneaNotificationsBridgeSettings

- (HKSHSleepApneaNotificationsBridgeSettings)initWithSettingVisible:(BOOL)a3 settingEnabled:(BOOL)a4 showOnboarding:(BOOL)a5 footer:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v14.receiver = self;
  v14.super_class = HKSHSleepApneaNotificationsBridgeSettings;
  v11 = [(HKSHSleepApneaNotificationsBridgeSettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HKSHSleepApneaNotificationsBridgeSettings *)v11 setSettingVisible:v8];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setSettingEnabled:v7];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setShowOnboarding:v6];
    [(HKSHSleepApneaNotificationsBridgeSettings *)v12 setFooter:v10];
  }

  return v12;
}

+ (id)hiddenSettings
{
  v2 = [[HKSHSleepApneaNotificationsBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end