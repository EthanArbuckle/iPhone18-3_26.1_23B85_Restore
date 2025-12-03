@interface SBSUILoginUISceneClientSettings
- (NSString)statusBarUserNameOverride;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)idleTimerMode;
- (int64_t)rotationMode;
- (unint64_t)wallpaperMode;
@end

@implementation SBSUILoginUISceneClientSettings

- (int64_t)idleTimerMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:736840726];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)statusBarUserNameOverride
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:736840727];

  return v3;
}

- (int64_t)rotationMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:736840728];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)wallpaperMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:736840729];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIMutableLoginUISceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 736840726 > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUILoginUISceneClientSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E789F250[setting - 736840726];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = SBSUILoginUISceneClientSettingValueDescription(setting, objectCopy);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUILoginUISceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end