@interface SBSUIStarkNotificationsSceneClientSettings
- (BOOL)isDisplayingNotification;
- (BOOL)shouldBorrowScreen;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation SBSUIStarkNotificationsSceneClientSettings

- (BOOL)isDisplayingNotification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744415];

  return v3;
}

- (BOOL)shouldBorrowScreen
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744416];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIMutableStarkNotificationsSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 2998744416)
  {
    v5 = @"shouldBorrowScreen";
  }

  else
  {
    v5 = 0;
  }

  if (setting == 2998744415)
  {
    v6 = @"displayingNotification";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBSUIStarkNotificationsSceneClientSettings;
    v9 = [(FBSSettings *)&v12 keyDescriptionForSetting:setting];
  }

  v10 = v9;

  return v10;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = SBSUIStarkNotificationsSceneClientSettingValueDescription(setting);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUIStarkNotificationsSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end