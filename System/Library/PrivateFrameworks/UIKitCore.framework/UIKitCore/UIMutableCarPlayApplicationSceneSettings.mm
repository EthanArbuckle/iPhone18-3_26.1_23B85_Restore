@interface UIMutableCarPlayApplicationSceneSettings
- (BOOL)blackWallpaperModeEnabled;
- (BOOL)disableFiveRowKeyboards;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setBlackWallpaperModeEnabled:(BOOL)enabled;
- (void)setDisableFiveRowKeyboards:(BOOL)keyboards;
@end

@implementation UIMutableCarPlayApplicationSceneSettings

- (BOOL)disableFiveRowKeyboards
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:34];

  return v3;
}

- (void)setDisableFiveRowKeyboards:(BOOL)keyboards
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:34];
}

- (BOOL)blackWallpaperModeEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:45];

  return v3;
}

- (void)setBlackWallpaperModeEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:45];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UICarPlayApplicationSceneSettings allocWithZone:zone];

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
    v10.super_class = UIMutableCarPlayApplicationSceneSettings;
    if ([(UIMutableCarPlayApplicationSceneSettings *)&v10 respondsToSelector:a2])
    {
      v9.receiver = self;
      v9.super_class = UIMutableCarPlayApplicationSceneSettings;
      v7 = [(UIMutableApplicationSceneSettings *)&v9 keyDescriptionForSetting:setting];
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
    v13.super_class = UIMutableCarPlayApplicationSceneSettings;
    if ([(UIMutableCarPlayApplicationSceneSettings *)&v13 respondsToSelector:a2])
    {
      v12.receiver = self;
      v12.super_class = UIMutableCarPlayApplicationSceneSettings;
      v10 = [(UIMutableApplicationSceneSettings *)&v12 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end