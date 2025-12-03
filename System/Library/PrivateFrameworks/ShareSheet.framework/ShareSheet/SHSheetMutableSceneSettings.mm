@interface SHSheetMutableSceneSettings
- (NSString)sessionIdentifier;
- (SHSheetUIServiceClientContext)sessionContext;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sheetConfiguration;
- (int64_t)applicationState;
- (int64_t)hostProcessType;
- (int64_t)presentationStyle;
- (void)setApplicationState:(int64_t)state;
- (void)setHostProcessType:(int64_t)type;
- (void)setPresentationStyle:(int64_t)style;
- (void)setSessionContext:(id)context;
- (void)setSessionIdentifier:(id)identifier;
- (void)setSheetConfiguration:(id)configuration;
@end

@implementation SHSheetMutableSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHSheetSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)sessionIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897489];

  return v3;
}

- (void)setSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:42897489];
}

- (SHSheetUIServiceClientContext)sessionContext
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897490];

  return v3;
}

- (void)setSessionContext:(id)context
{
  contextCopy = context;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:contextCopy forSetting:42897490];
}

- (id)sheetConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897491];

  return v3;
}

- (void)setSheetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:configurationCopy forSetting:42897491];
}

- (int64_t)presentationStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897492];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setPresentationStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:42897492];
}

- (int64_t)applicationState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897493];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setApplicationState:(int64_t)state
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [otherSettings setObject:v4 forSetting:42897493];
}

- (int64_t)hostProcessType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:42897494];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setHostProcessType:(int64_t)type
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [otherSettings setObject:v4 forSetting:42897494];
}

@end