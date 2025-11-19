@interface SPUIMutableLegibilitySceneSettings
- (_UILegibilitySettings)legibilitySettings;
- (id)keyDescriptionForSetting:(int64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation SPUIMutableLegibilitySceneSettings

- (_UILegibilitySettings)legibilitySettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2000];

  return v3;
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2000];
}

- (id)keyDescriptionForSetting:(int64_t)a3
{
  if (a3 == 2000)
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

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(int64_t)a5
{
  if (a5 == 2000)
  {
    v7 = 0;
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SPUIMutableLegibilitySceneSettings;
    v7 = [(FBSSettings *)&v9 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  return v7;
}

@end