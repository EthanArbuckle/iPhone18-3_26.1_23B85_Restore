@interface PRUISModalSceneSettings
- (BOOL)shouldInheritHostDisplayConfiguration;
- (PRUISModalEntryPoint)entryPoint;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation PRUISModalSceneSettings

- (PRUISModalEntryPoint)entryPoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2606278161];

  return v3;
}

- (BOOL)shouldInheritHostDisplayConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2606278162];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRUISMutableModalSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end