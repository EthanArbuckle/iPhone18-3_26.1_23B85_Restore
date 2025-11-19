@interface PPLMutablePeopleEntitySceneSettings
- (NSURL)url;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setUrl:(id)a3;
@end

@implementation PPLMutablePeopleEntitySceneSettings

- (NSURL)url
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:9000];

  return v3;
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:9000];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PPLPeopleEntitySceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 9000)
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

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 9000)
  {
    v5 = PPLPeopleEntitySceneSettingValueDescription(9000, a4);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PPLMutablePeopleEntitySceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  return v5;
}

@end