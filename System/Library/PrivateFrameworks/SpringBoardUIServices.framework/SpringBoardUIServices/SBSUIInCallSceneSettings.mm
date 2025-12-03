@interface SBSUIInCallSceneSettings
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)isBeingShownAboveCoverSheet;
- (BOOL)isScreenSharingPresentation;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSUUID)requestedPresentationConfigurationIdentifier;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)inCallPresentationMode;
@end

@implementation SBSUIInCallSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIMutableInCallSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (int64_t)inCallPresentationMode
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3001];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isAttachedToWindowedAccessory
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3002];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

- (BOOL)isScreenSharingPresentation
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3004];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3005];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isBeingShownAboveCoverSheet
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3006];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSUUID)requestedPresentationConfigurationIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3007];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 3001 > 6)
  {
    v5.receiver = self;
    v5.super_class = SBSUIInCallSceneSettings;
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
    v7.super_class = SBSUIInCallSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription_0(setting, object);
  }

  return v5;
}

@end