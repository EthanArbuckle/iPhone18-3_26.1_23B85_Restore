@interface SBSUILoginUISceneClientSettings
- (NSString)statusBarUserNameOverride;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)idleTimerMode;
- (int64_t)rotationMode;
- (unint64_t)wallpaperMode;
@end

@implementation SBSUILoginUISceneClientSettings

- (int64_t)idleTimerMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:736840726];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)statusBarUserNameOverride
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:736840727];

  return v3;
}

- (int64_t)rotationMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:736840728];
  v4 = [v3 integerValue];

  return v4;
}

- (unint64_t)wallpaperMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:736840729];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIMutableLoginUISceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 736840726 > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUILoginUISceneClientSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E789F250[a3 - 736840726];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = SBSUILoginUISceneClientSettingValueDescription(a5, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUILoginUISceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end