@interface PPLPeopleEntitySceneSettings
- (NSURL)url;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation PPLPeopleEntitySceneSettings

- (NSURL)url
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:9000];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PPLMutablePeopleEntitySceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 9000)
  {
    v5 = @"URL";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PPLPeopleEntitySceneSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 9000)
  {
    v5 = PPLPeopleEntitySceneSettingValueDescription(9000, object);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PPLPeopleEntitySceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  return v5;
}

@end