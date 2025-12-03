@interface UICarPlayApplicationSceneSettings
- (BOOL)blackWallpaperModeEnabled;
- (BOOL)disableFiveRowKeyboards;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation UICarPlayApplicationSceneSettings

- (BOOL)blackWallpaperModeEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:45];

  return v3;
}

- (BOOL)disableFiveRowKeyboards
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:34];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableCarPlayApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v6 = @"blackWallpaperModeEnabled";
  if (setting != 45)
  {
    v6 = 0;
  }

  if (setting == 34)
  {
    v6 = @"disableFiveRowKeyboards";
  }

  v7 = v6;
  if (!v7)
  {
    v10.receiver = self;
    v10.super_class = UICarPlayApplicationSceneSettings;
    if ([(UICarPlayApplicationSceneSettings *)&v10 respondsToSelector:a2])
    {
      v9.receiver = self;
      v9.super_class = UICarPlayApplicationSceneSettings;
      v7 = [(UIApplicationSceneSettings *)&v9 keyDescriptionForSetting:setting];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v10 = UICarPlayApplicationSceneSettingValueDescription(setting, flag, objectCopy);
  if (!v10)
  {
    v13.receiver = self;
    v13.super_class = UICarPlayApplicationSceneSettings;
    if ([(UICarPlayApplicationSceneSettings *)&v13 respondsToSelector:a2])
    {
      v12.receiver = self;
      v12.super_class = UICarPlayApplicationSceneSettings;
      v10 = [(UIApplicationSceneSettings *)&v12 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end