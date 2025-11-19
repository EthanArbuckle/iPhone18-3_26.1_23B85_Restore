@interface PRUISMutableModalSceneSettings
- (BOOL)shouldInheritHostDisplayConfiguration;
- (PRUISModalEntryPoint)entryPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEntryPoint:(id)a3;
- (void)setShouldInheritHostDisplayConfiguration:(BOOL)a3;
@end

@implementation PRUISMutableModalSceneSettings

- (void)setEntryPoint:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2606278161];
}

- (PRUISModalEntryPoint)entryPoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2606278161];

  return v3;
}

- (void)setShouldInheritHostDisplayConfiguration:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:2606278162];
}

- (BOOL)shouldInheritHostDisplayConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:2606278162];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRUISModalSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end