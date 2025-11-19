@interface SBSUIMutableInCallSceneSettings
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)setAttachedToWindowedAccessory:(BOOL)a3;
- (void)setBeingShownAboveCoverSheet:(BOOL)a3;
- (void)setDeactivationReasons:(unint64_t)a3;
- (void)setInCallPresentationMode:(int64_t)a3;
- (void)setRequestedPresentationConfigurationIdentifier:(id)a3;
- (void)setScreenSharingPresentation:(BOOL)a3;
- (void)setSystemControlsShouldPresentAsEmbedded:(BOOL)a3;
- (void)setWindowedAccessoryCutoutFrameInScreen:(CGRect)a3;
@end

@implementation SBSUIMutableInCallSceneSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIInCallSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setInCallPresentationMode:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:3001];
}

- (BOOL)isAttachedToWindowedAccessory
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3002];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setAttachedToWindowedAccessory:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:3002];
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

- (void)setWindowedAccessoryCutoutFrameInScreen:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v7 forSetting:3003];
}

- (void)setScreenSharingPresentation:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:3004];
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3005];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setSystemControlsShouldPresentAsEmbedded:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:3005];
}

- (void)setBeingShownAboveCoverSheet:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v6 forSetting:3006];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = SBSUIMutableInCallSceneSettings;
    [(SBSUIMutableInCallSceneSettings *)&v7 setDeactivationReasons:[(SBSUIMutableInCallSceneSettings *)self deactivationReasons]& 0xFFFFFFFFFFFFFFFDLL];
  }
}

- (void)setDeactivationReasons:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v6 = [v5 objectForSetting:3006];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = a3 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v8 = a3;
  }

  v9.receiver = self;
  v9.super_class = SBSUIMutableInCallSceneSettings;
  [(SBSUIMutableInCallSceneSettings *)&v9 setDeactivationReasons:v8];
}

- (void)setRequestedPresentationConfigurationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3007];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 3001 > 6)
  {
    v5.receiver = self;
    v5.super_class = SBSUIMutableInCallSceneSettings;
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
    v7.super_class = SBSUIMutableInCallSceneSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription_0(a5, a4);
  }

  return v5;
}

@end