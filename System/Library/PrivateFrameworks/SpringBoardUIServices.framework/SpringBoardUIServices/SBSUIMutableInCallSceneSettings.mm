@interface SBSUIMutableInCallSceneSettings
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setAttachedToWindowedAccessory:(BOOL)accessory;
- (void)setBeingShownAboveCoverSheet:(BOOL)sheet;
- (void)setDeactivationReasons:(unint64_t)reasons;
- (void)setInCallPresentationMode:(int64_t)mode;
- (void)setRequestedPresentationConfigurationIdentifier:(id)identifier;
- (void)setScreenSharingPresentation:(BOOL)presentation;
- (void)setSystemControlsShouldPresentAsEmbedded:(BOOL)embedded;
- (void)setWindowedAccessoryCutoutFrameInScreen:(CGRect)screen;
@end

@implementation SBSUIMutableInCallSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIInCallSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setInCallPresentationMode:(int64_t)mode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [otherSettings setObject:v4 forSetting:3001];
}

- (BOOL)isAttachedToWindowedAccessory
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3002];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAttachedToWindowedAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:accessoryCopy];
  [otherSettings setObject:v4 forSetting:3002];
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3003];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setWindowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  height = screen.size.height;
  width = screen.size.width;
  y = screen.origin.y;
  x = screen.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [otherSettings setObject:v7 forSetting:3003];
}

- (void)setScreenSharingPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:presentationCopy];
  [otherSettings setObject:v4 forSetting:3004];
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3005];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setSystemControlsShouldPresentAsEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:embeddedCopy];
  [otherSettings setObject:v4 forSetting:3005];
}

- (void)setBeingShownAboveCoverSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  otherSettings = [(FBSSettings *)self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:sheetCopy];
  [otherSettings setObject:v6 forSetting:3006];

  if (sheetCopy)
  {
    v7.receiver = self;
    v7.super_class = SBSUIMutableInCallSceneSettings;
    [(SBSUIMutableInCallSceneSettings *)&v7 setDeactivationReasons:[(SBSUIMutableInCallSceneSettings *)self deactivationReasons]& 0xFFFFFFFFFFFFFFFDLL];
  }
}

- (void)setDeactivationReasons:(unint64_t)reasons
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v6 = [otherSettings objectForSetting:3006];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    reasonsCopy = reasons & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    reasonsCopy = reasons;
  }

  v9.receiver = self;
  v9.super_class = SBSUIMutableInCallSceneSettings;
  [(SBSUIMutableInCallSceneSettings *)&v9 setDeactivationReasons:reasonsCopy];
}

- (void)setRequestedPresentationConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:3007];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 3001 > 6)
  {
    v5.receiver = self;
    v5.super_class = SBSUIMutableInCallSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SBSUIInCallSceneClientSettingKeyDescription_0(setting);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting - 3001 > 6)
  {
    v7.receiver = self;
    v7.super_class = SBSUIMutableInCallSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription_0(setting, object);
  }

  return v5;
}

@end