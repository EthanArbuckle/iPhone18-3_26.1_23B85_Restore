@interface SBSUIStarkNotificationsSceneTransitionContext
- (BOOL)dismissNotification;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setDismissNotification:(BOOL)notification;
@end

@implementation SBSUIStarkNotificationsSceneTransitionContext

- (BOOL)dismissNotification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2998744415];

  return v3;
}

- (void)setDismissNotification:(BOOL)notification
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2998744415];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 2998744415)
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

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 2998744415)
  {
    v5 = BSSettingFlagDescription();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBSUIStarkNotificationsSceneTransitionContext;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  return v5;
}

@end