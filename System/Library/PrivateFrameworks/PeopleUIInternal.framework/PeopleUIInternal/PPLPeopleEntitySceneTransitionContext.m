@interface PPLPeopleEntitySceneTransitionContext
- (BOOL)shouldDismiss;
- (void)setShouldDismiss:(BOOL)a3;
@end

@implementation PPLPeopleEntitySceneTransitionContext

- (BOOL)shouldDismiss
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:9000];

  return v3;
}

- (void)setShouldDismiss:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:9000];
}

@end