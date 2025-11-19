@interface SBSUIInCallSceneSettings
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)isBeingShownAboveCoverSheet;
- (BOOL)isScreenSharingPresentation;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSUUID)requestedPresentationConfigurationIdentifier;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)inCallPresentationMode;
@end

@implementation SBSUIInCallSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIMutableInCallSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (int64_t)inCallPresentationMode
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3001];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isAttachedToWindowedAccessory
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3002];
  v4 = [v3 BOOLValue];

  return v4;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3003];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3004];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3005];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isBeingShownAboveCoverSheet
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3006];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSUUID)requestedPresentationConfigurationIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3007];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 3001 > 6)
  {
    v5.receiver = self;
    v5.super_class = SBSUIInCallSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SBSUIInCallSceneClientSettingKeyDescription_0(a3);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 - 3001 > 6)
  {
    v7.receiver = self;
    v7.super_class = SBSUIInCallSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription_0(a5, a4);
  }

  return v5;
}

@end