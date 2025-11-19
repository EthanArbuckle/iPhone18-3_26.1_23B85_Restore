@interface PRUISModalSceneSettings
- (BOOL)shouldInheritHostDisplayConfiguration;
- (PRUISModalEntryPoint)entryPoint;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation PRUISModalSceneSettings

- (PRUISModalEntryPoint)entryPoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2606278161];

  return v3;
}

- (BOOL)shouldInheritHostDisplayConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2606278162];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRUISMutableModalSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end