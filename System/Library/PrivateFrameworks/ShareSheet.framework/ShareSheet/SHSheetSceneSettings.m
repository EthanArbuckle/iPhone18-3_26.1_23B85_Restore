@interface SHSheetSceneSettings
- (NSString)sessionIdentifier;
- (SHSheetUIServiceClientContext)sessionContext;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sheetConfiguration;
- (int64_t)applicationState;
- (int64_t)hostProcessType;
- (int64_t)presentationStyle;
@end

@implementation SHSheetSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SHSheetMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)sessionIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897489];

  return v3;
}

- (SHSheetUIServiceClientContext)sessionContext
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897490];

  return v3;
}

- (id)sheetConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897491];

  return v3;
}

- (int64_t)presentationStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897492];

  v4 = [v3 integerValue];
  return v4;
}

- (int64_t)applicationState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897493];

  v4 = [v3 integerValue];
  return v4;
}

- (int64_t)hostProcessType
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:42897494];

  v4 = [v3 integerValue];
  return v4;
}

@end