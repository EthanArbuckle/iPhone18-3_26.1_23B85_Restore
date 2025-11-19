@interface UIApplicationSceneTransitionContext(SBSUIInCallSceneAdditions)
- (id)SBSUI_inCallAnalyticsSource;
- (void)SBSUI_setInCallAnalyticsSource:()SBSUIInCallSceneAdditions;
@end

@implementation UIApplicationSceneTransitionContext(SBSUIInCallSceneAdditions)

- (id)SBSUI_inCallAnalyticsSource
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:34567876];

  return v2;
}

- (void)SBSUI_setInCallAnalyticsSource:()SBSUIInCallSceneAdditions
{
  v4 = a3;
  v6 = [a1 otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:34567876];
}

@end