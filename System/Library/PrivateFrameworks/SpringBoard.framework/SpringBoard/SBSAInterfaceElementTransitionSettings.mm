@interface SBSAInterfaceElementTransitionSettings
+ (id)_childSettingsKeyPathsToTitles;
@end

@implementation SBSAInterfaceElementTransitionSettings

+ (id)_childSettingsKeyPathsToTitles
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___SBSAInterfaceElementTransitionSettings;
  v2 = objc_msgSendSuper2(&v5, sel__childSettingsKeyPathsToTitles);
  v3 = [v2 mutableCopy];

  [v3 setObject:@"Center Behavior Settings" forKeyedSubscript:@"centerBehaviorSettings"];
  [v3 setObject:@"Bounds Behavior Settings" forKeyedSubscript:@"boundsBehaviorSettings"];
  [v3 setObject:@"Corner Radius Behavior Settings" forKeyedSubscript:@"cornerRadiusBehaviorSettings"];
  [v3 setObject:@"Alpha Behavior Settings" forKeyedSubscript:@"alphaBehaviorSettings"];
  [v3 setObject:@"Background Color Behavior Settings" forKeyedSubscript:@"backgroundColorBehaviorSettings"];

  return v3;
}

@end