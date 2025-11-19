@interface SBSAIndicatorContainerElementTransitionSettings
+ (id)_childSettingsKeyPathsToTitles;
@end

@implementation SBSAIndicatorContainerElementTransitionSettings

+ (id)_childSettingsKeyPathsToTitles
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___SBSAIndicatorContainerElementTransitionSettings;
  v2 = objc_msgSendSuper2(&v5, sel__childSettingsKeyPathsToTitles);
  v3 = [v2 mutableCopy];

  [v3 setObject:@"Indicator Container Bounds Behavior Settings" forKeyedSubscript:@"indicatorContainerBoundsBehaviorSettings"];
  [v3 setObject:@"Indicator Container Center Behavior Settings" forKeyedSubscript:@"indicatorContainerCenterBehaviorSettings"];
  [v3 setObject:@"Indicator Element Alpha Behavior Settings" forKeyedSubscript:@"indicatorElementViewAlphaBehaviorSettings"];
  [v3 setObject:@"Indicator Element Blur Behavior Settings" forKeyedSubscript:@"indicatorElementViewBlurProgressBehaviorSettings"];
  [v3 setObject:@"Indicator Element Transform Behavior Settings" forKeyedSubscript:@"indicatorElementViewTransformBehaviorSettings"];
  [v3 setObject:@"Fixed Indicator Element Alpha Behavior Settings" forKeyedSubscript:@"fixedIndicatorElementViewAlphaBehaviorSettings"];
  [v3 setObject:@"Fixed Indicator Element Blur Behavior Settings" forKeyedSubscript:@"fixedIndicatorElementViewBlurProgressBehaviorSettings"];
  [v3 setObject:@"Fixed Indicator Element Transform Behavior Settings" forKeyedSubscript:@"fixedIndicatorElementViewTransformBehaviorSettings"];

  return v3;
}

@end