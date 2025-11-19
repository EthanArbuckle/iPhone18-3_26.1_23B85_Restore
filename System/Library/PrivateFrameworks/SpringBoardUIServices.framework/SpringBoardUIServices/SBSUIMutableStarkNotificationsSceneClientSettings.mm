@interface SBSUIMutableStarkNotificationsSceneClientSettings
- (BOOL)isDisplayingNotification;
- (BOOL)shouldBorrowScreen;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setDisplayingNotification:(BOOL)a3;
- (void)setShouldBorrowScreen:(BOOL)a3;
@end

@implementation SBSUIMutableStarkNotificationsSceneClientSettings

- (BOOL)isDisplayingNotification
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2998744415];

  return v3;
}

- (void)setDisplayingNotification:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2998744415];
}

- (BOOL)shouldBorrowScreen
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2998744416];

  return v3;
}

- (void)setShouldBorrowScreen:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2998744416];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIStarkNotificationsSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 2998744416)
  {
    v5 = @"shouldBorrowScreen";
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 2998744415)
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
    v12.super_class = SBSUIMutableStarkNotificationsSceneClientSettings;
    v9 = [(FBSSettings *)&v12 keyDescriptionForSetting:a3];
  }

  v10 = v9;

  return v10;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = SBSUIStarkNotificationsSceneClientSettingValueDescription(a5);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBSUIMutableStarkNotificationsSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end