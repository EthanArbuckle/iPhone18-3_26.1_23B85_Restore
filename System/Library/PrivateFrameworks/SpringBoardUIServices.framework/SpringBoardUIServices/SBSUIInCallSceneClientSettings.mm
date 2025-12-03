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
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
@end

@implementation SBSUIInCallSceneClientSettings

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2002];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIMutableInCallSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (unint64_t)preferredHardwareButtonEventTypes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2001];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)preferredStatusBarStyleOverridesToSuppress
{
  preferredBackgroundActivitiesToSuppress = [(SBSUIInCallSceneClientSettings *)self preferredBackgroundActivitiesToSuppress];

  return soft_STUIStyleOverridesForBackgroundActivityIdentifiers(preferredBackgroundActivitiesToSuppress);
}

- (BOOL)supportsDeviceLockActions
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2003];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldBecomeVisibleWhenWakingDisplay
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2005];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)transientOverlayHomeIndicatorAutoHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2004];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCallConnected
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2006];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (UIEdgeInsets)expanseHUDDodgingInsets
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2007];
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
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2008];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)prefersHiddenWhenDismissed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2009];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldNeverBeShownWhenLaunchingFaceTime
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2010];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)prefersLockedIdleDurationOnCoversheet
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2011];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)acceptsKeyboardFocus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2012];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 2001 > 0xB || setting == 2007)
  {
    v6.receiver = self;
    v6.super_class = SBSUIInCallSceneClientSettings;
    v4 = [(FBSSettings *)&v6 keyDescriptionForSetting:?];
  }

  else
  {
    v4 = SBSUIInCallSceneClientSettingKeyDescription(setting);
  }

  return v4;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  if (setting - 2001 > 0xB || setting == 2007)
  {
    v13.receiver = self;
    v13.super_class = SBSUIInCallSceneClientSettings;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  else
  {
    v10 = SBSUIInCallSceneClientSettingValueDescription(setting, objectCopy);
  }

  v11 = v10;

  return v11;
}

@end