@interface UICarPlayApplicationSceneSettings
- (BOOL)blackWallpaperModeEnabled;
- (BOOL)disableFiveRowKeyboards;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation UICarPlayApplicationSceneSettings

- (BOOL)blackWallpaperModeEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:45];

  return v3;
}

- (BOOL)disableFiveRowKeyboards
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:34];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableCarPlayApplicationSceneSettings allocWithZone:a3];

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
    v10.super_class = UICarPlayApplicationSceneSettings;
    if ([(UICarPlayApplicationSceneSettings *)&v10 respondsToSelector:a2])
    {
      v9.receiver = self;
      v9.super_class = UICarPlayApplicationSceneSettings;
      v7 = [(UIApplicationSceneSettings *)&v9 keyDescriptionForSetting:a3];
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
    v13.super_class = UICarPlayApplicationSceneSettings;
    if ([(UICarPlayApplicationSceneSettings *)&v13 respondsToSelector:a2])
    {
      v12.receiver = self;
      v12.super_class = UICarPlayApplicationSceneSettings;
      v10 = [(UIApplicationSceneSettings *)&v12 valueDescriptionForFlag:a3 object:v9 ofSetting:a5];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end