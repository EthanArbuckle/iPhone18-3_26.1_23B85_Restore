@interface SPUISearchViewSceneTransitionContext
- (BOOL)shouldBackground;
- (BOOL)shouldDismiss;
- (void)setShouldBackground:(BOOL)a3;
- (void)setShouldDismiss:(BOOL)a3;
@end

@implementation SPUISearchViewSceneTransitionContext

- (BOOL)shouldDismiss
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:1000];

  return v3;
}

- (void)setShouldDismiss:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1000];
}

- (BOOL)shouldBackground
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:1001];

  return v3;
}

- (void)setShouldBackground:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1001];
}

@end