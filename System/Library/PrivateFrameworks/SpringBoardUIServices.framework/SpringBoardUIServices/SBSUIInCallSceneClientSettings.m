@interface SBSUIInCallSceneClientSettings
- (BOOL)acceptsKeyboardFocus;
- (BOOL)isCallConnected;
- (BOOL)prefersBannersHiddenFromClonedDisplay;
- (BOOL)prefersHiddenWhenDismissed;
- (BOOL)prefersLockedIdleDurationOnCoversheet;
- (BOOL)shouldBecomeVisibleWhenWakingDisplay;
- (BOOL)shouldNeverBeShownWhenLaunchingFaceTime;
- (BOOL)supportsDeviceLockActions;
- (BOOL)transientOverlayHomeIndicatorAutoHidden;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (UIEdgeInsets)expanseHUDDodgingInsets;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
@end

@implementation SBSUIInCallSceneClientSettings

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2002];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIMutableInCallSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (unint64_t)preferredHardwareButtonEventTypes
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2001];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)preferredStatusBarStyleOverridesToSuppress
{
  v2 = [(SBSUIInCallSceneClientSettings *)self preferredBackgroundActivitiesToSuppress];

  return soft_STUIStyleOverridesForBackgroundActivityIdentifiers(v2);
}

- (BOOL)supportsDeviceLockActions
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2003];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldBecomeVisibleWhenWakingDisplay
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2005];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)transientOverlayHomeIndicatorAutoHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2004];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isCallConnected
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2006];
  v4 = [v3 BOOLValue];

  return v4;
}

- (UIEdgeInsets)expanseHUDDodgingInsets
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2007];
  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)prefersBannersHiddenFromClonedDisplay
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2008];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)prefersHiddenWhenDismissed
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2009];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldNeverBeShownWhenLaunchingFaceTime
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2010];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)prefersLockedIdleDurationOnCoversheet
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2011];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)acceptsKeyboardFocus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2012];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 2001 > 0xB || a3 == 2007)
  {
    v6.receiver = self;
    v6.super_class = SBSUIInCallSceneClientSettings;
    v4 = [(FBSSettings *)&v6 keyDescriptionForSetting:?];
  }

  else
  {
    v4 = SBSUIInCallSceneClientSettingKeyDescription(a3);
  }

  return v4;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  if (a5 - 2001 > 0xB || a5 == 2007)
  {
    v13.receiver = self;
    v13.super_class = SBSUIInCallSceneClientSettings;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  else
  {
    v10 = SBSUIInCallSceneClientSettingValueDescription(a5, v8);
  }

  v11 = v10;

  return v11;
}

@end