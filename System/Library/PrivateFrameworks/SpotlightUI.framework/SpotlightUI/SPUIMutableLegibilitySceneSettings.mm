@interface SPUIMutableLegibilitySceneSettings
- (_UILegibilitySettings)legibilitySettings;
- (id)keyDescriptionForSetting:(int64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SPUIMutableLegibilitySceneSettings

- (_UILegibilitySettings)legibilitySettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2000];

  return v3;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:2000];
}

- (id)keyDescriptionForSetting:(int64_t)setting
{
  if (setting == 2000)
  {
    v5 = @"legibilitySettings";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SPUIMutableLegibilitySceneSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(int64_t)setting
{
  if (setting == 2000)
  {
    v7 = 0;
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SPUIMutableLegibilitySceneSettings;
    v7 = [(FBSSettings *)&v9 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  return v7;
}

@end