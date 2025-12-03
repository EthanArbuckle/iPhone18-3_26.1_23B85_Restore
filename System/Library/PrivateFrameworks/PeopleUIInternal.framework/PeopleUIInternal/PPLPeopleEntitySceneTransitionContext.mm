@interface PPLPeopleEntitySceneTransitionContext
- (BOOL)shouldDismiss;
- (void)setShouldDismiss:(BOOL)dismiss;
@end

@implementation PPLPeopleEntitySceneTransitionContext

- (BOOL)shouldDismiss
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:9000];

  return v3;
}

- (void)setShouldDismiss:(BOOL)dismiss
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:9000];
}

@end