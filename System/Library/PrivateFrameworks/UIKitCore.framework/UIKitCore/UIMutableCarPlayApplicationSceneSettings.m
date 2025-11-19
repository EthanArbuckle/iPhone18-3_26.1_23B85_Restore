@interface UIMutableCarPlayApplicationSceneSettings
- (BOOL)blackWallpaperModeEnabled;
- (BOOL)disableFiveRowKeyboards;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setBlackWallpaperModeEnabled:(BOOL)a3;
- (void)setDisableFiveRowKeyboards:(BOOL)a3;
@end

@implementation UIMutableCarPlayApplicationSceneSettings

- (BOOL)disableFiveRowKeyboards
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:34];

  return v3;
}

- (void)setDisableFiveRowKeyboards:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:34];
}

- (BOOL)blackWallpaperModeEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:45];

  return v3;
}

- (void)setBlackWallpaperModeEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:45];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UICarPlayApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v6 = @"blackWallpaperModeEnabled";
  if (a3 != 45)
  {
    v6 = 0;
  }

  if (a3 == 34)
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
      v7 = [(UIMutableApplicationSceneSettings *)&v9 keyDescriptionForSetting:a3];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v9 = a4;
  v10 = UICarPlayApplicationSceneSettingValueDescription(a5, a3, v9);
  if (!v10)
  {
    v13.receiver = self;
    v13.super_class = UIMutableCarPlayApplicationSceneSettings;
    if ([(UIMutableCarPlayApplicationSceneSettings *)&v13 respondsToSelector:a2])
    {
      v12.receiver = self;
      v12.super_class = UIMutableCarPlayApplicationSceneSettings;
      v10 = [(UIMutableApplicationSceneSettings *)&v12 valueDescriptionForFlag:a3 object:v9 ofSetting:a5];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end