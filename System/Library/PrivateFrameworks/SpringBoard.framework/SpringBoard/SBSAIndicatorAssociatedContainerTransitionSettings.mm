@interface SBSAIndicatorAssociatedContainerTransitionSettings
+ (id)_childSettingsKeyPathsToTitles;
@end

@implementation SBSAIndicatorAssociatedContainerTransitionSettings

+ (id)_childSettingsKeyPathsToTitles
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___SBSAIndicatorAssociatedContainerTransitionSettings;
  v2 = objc_msgSendSuper2(&v5, sel__childSettingsKeyPathsToTitles);
  v3 = [v2 mutableCopy];

  [v3 setObject:@"Bounds Behavior Settings" forKeyedSubscript:@"boundsBehaviorSettings"];
  [v3 setObject:@"Center Behavior Settings" forKeyedSubscript:@"centerBehaviorSettings"];
  [v3 setObject:@"Content Bounds Behavior Settings" forKeyedSubscript:@"contentBoundsBehaviorSettings"];
  [v3 setObject:@"Content Center Behavior Settings" forKeyedSubscript:@"contentCenterBehaviorSettings"];
  [v3 setObject:@"Content Scale Behavior Settings" forKeyedSubscript:@"contentScaleBehaviorSettings"];
  [v3 setObject:@"Sensor Shadow Behavior Settings" forKeyedSubscript:@"sensorObscuringShadowProgressBehaviorSettings"];

  return v3;
}

@end