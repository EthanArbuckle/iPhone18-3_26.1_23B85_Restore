@interface SBSUIStarkNotificationsSceneTransitionContext
- (BOOL)dismissNotification;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setDismissNotification:(BOOL)a3;
@end

@implementation SBSUIStarkNotificationsSceneTransitionContext

- (BOOL)dismissNotification
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2998744415];

  return v3;
}

- (void)setDismissNotification:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2998744415];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 2998744415)
  {
    v5 = @"dismissNotification";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SBSUIStarkNotificationsSceneTransitionContext;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 2998744415)
  {
    v5 = BSSettingFlagDescription();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBSUIStarkNotificationsSceneTransitionContext;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  return v5;
}

@end