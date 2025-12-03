@interface PPLMutablePeopleEntitySceneSettings
- (NSURL)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setUrl:(id)url;
@end

@implementation PPLMutablePeopleEntitySceneSettings

- (NSURL)url
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:9000];

  return v3;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:urlCopy forSetting:9000];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PPLPeopleEntitySceneSettings alloc];

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
    v7.super_class = PPLMutablePeopleEntitySceneSettings;
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
    v7.super_class = PPLMutablePeopleEntitySceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  return v5;
}

@end