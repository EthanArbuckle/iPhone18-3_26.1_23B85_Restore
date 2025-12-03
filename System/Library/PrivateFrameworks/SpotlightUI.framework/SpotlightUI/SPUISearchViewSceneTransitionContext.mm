@interface SPUISearchViewSceneTransitionContext
- (BOOL)shouldBackground;
- (BOOL)shouldDismiss;
- (void)setShouldBackground:(BOOL)background;
- (void)setShouldDismiss:(BOOL)dismiss;
@end

@implementation SPUISearchViewSceneTransitionContext

- (BOOL)shouldDismiss
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1000];

  return v3;
}

- (void)setShouldDismiss:(BOOL)dismiss
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1000];
}

- (BOOL)shouldBackground
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1001];

  return v3;
}

- (void)setShouldBackground:(BOOL)background
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1001];
}

@end