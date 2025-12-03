@interface SHSheetSceneSettings
- (NSString)sessionIdentifier;
- (SHSheetUIServiceClientContext)sessionContext;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sheetConfiguration;
- (int64_t)applicationState;
- (int64_t)hostProcessType;
- (int64_t)presentationStyle;
@end

@implementation SHSheetSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SHSheetMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)sessionIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897489];

  return v3;
}

- (SHSheetUIServiceClientContext)sessionContext
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897490];

  return v3;
}

- (id)sheetConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897491];

  return v3;
}

- (int64_t)presentationStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897492];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (int64_t)applicationState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897493];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (int64_t)hostProcessType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897494];

  integerValue = [v3 integerValue];
  return integerValue;
}

@end