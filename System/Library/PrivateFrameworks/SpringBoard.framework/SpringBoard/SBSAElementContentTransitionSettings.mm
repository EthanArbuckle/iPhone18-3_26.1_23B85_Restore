@interface SBSAElementContentTransitionSettings
+ (id)_childSettingsKeyPathsToTitles;
@end

@implementation SBSAElementContentTransitionSettings

+ (id)_childSettingsKeyPathsToTitles
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___SBSAElementContentTransitionSettings;
  v2 = objc_msgSendSuper2(&v5, sel__childSettingsKeyPathsToTitles);
  v3 = [v2 mutableCopy];

  [v3 setObject:@"Sensor Shadow Behavior Settings" forKeyedSubscript:@"sensorObscuringShadowBehaviorSettings"];
  [v3 setObject:@"Subcomponent Behavior Settings" forKeyedSubscript:@"subcomponentBehaviorSettings"];
  [v3 setObject:@"Custom Content Behavior Settings" forKeyedSubscript:@"customContentBehaviorSettings"];
  [v3 setObject:@"Snapshot Behavior Settings" forKeyedSubscript:@"snapshotBehaviorSettings"];

  return v3;
}

@end