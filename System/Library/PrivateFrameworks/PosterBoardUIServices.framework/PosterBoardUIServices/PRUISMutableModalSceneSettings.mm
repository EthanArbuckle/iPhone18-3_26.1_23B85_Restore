@interface PRUISMutableModalSceneSettings
- (BOOL)shouldInheritHostDisplayConfiguration;
- (PRUISModalEntryPoint)entryPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEntryPoint:(id)point;
- (void)setShouldInheritHostDisplayConfiguration:(BOOL)configuration;
@end

@implementation PRUISMutableModalSceneSettings

- (void)setEntryPoint:(id)point
{
  pointCopy = point;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:pointCopy forSetting:2606278161];
}

- (PRUISModalEntryPoint)entryPoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2606278161];

  return v3;
}

- (void)setShouldInheritHostDisplayConfiguration:(BOOL)configuration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:2606278162];
}

- (BOOL)shouldInheritHostDisplayConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:2606278162];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRUISModalSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end