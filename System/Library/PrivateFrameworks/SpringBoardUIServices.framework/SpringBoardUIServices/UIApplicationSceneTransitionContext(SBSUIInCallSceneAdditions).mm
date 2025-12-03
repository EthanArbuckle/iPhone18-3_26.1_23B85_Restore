@interface UIApplicationSceneTransitionContext(SBSUIInCallSceneAdditions)
- (id)SBSUI_inCallAnalyticsSource;
- (void)SBSUI_setInCallAnalyticsSource:()SBSUIInCallSceneAdditions;
@end

@implementation UIApplicationSceneTransitionContext(SBSUIInCallSceneAdditions)

- (id)SBSUI_inCallAnalyticsSource
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:34567876];

  return v2;
}

- (void)SBSUI_setInCallAnalyticsSource:()SBSUIInCallSceneAdditions
{
  v4 = a3;
  otherSettings = [self otherSettings];
  v5 = [v4 copy];

  [otherSettings setObject:v5 forSetting:34567876];
}

@end