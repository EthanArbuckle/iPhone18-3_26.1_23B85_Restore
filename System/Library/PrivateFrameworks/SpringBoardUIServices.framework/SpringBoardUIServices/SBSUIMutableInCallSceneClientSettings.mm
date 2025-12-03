@interface SBSUIMutableInCallSceneClientSettings
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
- (void)setAcceptsKeyboardFocus:(BOOL)focus;
- (void)setCallConnected:(BOOL)connected;
- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)insets;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress;
- (void)setPreferredHardwareButtonEventTypes:(unint64_t)types;
- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)suppress;
- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)display;
- (void)setPrefersHiddenWhenDismissed:(BOOL)dismissed;
- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)coversheet;
- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)display;
- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)time;
- (void)setSupportsDeviceLockActions:(BOOL)actions;
- (void)setTransientOverlayHomeIndicatorAutoHidden:(BOOL)hidden;
@end

@implementation SBSUIMutableInCallSceneClientSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSUIInCallSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (unint64_t)preferredHardwareButtonEventTypes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2001];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2002];

  return v3;
}

- (unint64_t)preferredStatusBarStyleOverridesToSuppress
{
  preferredBackgroundActivitiesToSuppress = [(SBSUIMutableInCallSceneClientSettings *)self preferredBackgroundActivitiesToSuppress];

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

- (void)setPreferredHardwareButtonEventTypes:(unint64_t)types
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:types];
  [otherSettings setObject:v4 forSetting:2001];
}

- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)suppress
{
  v4 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(suppress);
  [(SBSUIMutableInCallSceneClientSettings *)self setPreferredBackgroundActivitiesToSuppress:v4];
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:suppressCopy forSetting:2002];
}

- (void)setSupportsDeviceLockActions:(BOOL)actions
{
  actionsCopy = actions;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:actionsCopy];
  [otherSettings setObject:v4 forSetting:2003];
}

- (void)setTransientOverlayHomeIndicatorAutoHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:hiddenCopy];
  [otherSettings setObject:v4 forSetting:2004];
}

- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)display
{
  displayCopy = display;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:displayCopy];
  [otherSettings setObject:v4 forSetting:2005];
}

- (void)setCallConnected:(BOOL)connected
{
  connectedCopy = connected;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:connectedCopy];
  [otherSettings setObject:v4 forSetting:2006];
}

- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [otherSettings setObject:v8 forSetting:2007];
}

- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)display
{
  displayCopy = display;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:displayCopy];
  [otherSettings setObject:v4 forSetting:2008];
}

- (void)setPrefersHiddenWhenDismissed:(BOOL)dismissed
{
  dismissedCopy = dismissed;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:dismissedCopy];
  [otherSettings setObject:v4 forSetting:2009];
}

- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)time
{
  timeCopy = time;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:timeCopy];
  [otherSettings setObject:v4 forSetting:2010];
}

- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)coversheet
{
  coversheetCopy = coversheet;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:coversheetCopy];
  [otherSettings setObject:v4 forSetting:2011];
}

- (void)setAcceptsKeyboardFocus:(BOOL)focus
{
  focusCopy = focus;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:focusCopy];
  [otherSettings setObject:v4 forSetting:2012];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 2001 > 0xB)
  {
    v5.receiver = self;
    v5.super_class = SBSUIMutableInCallSceneClientSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SBSUIInCallSceneClientSettingKeyDescription(setting);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting - 2001 > 0xB)
  {
    v7.receiver = self;
    v7.super_class = SBSUIMutableInCallSceneClientSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:flag object:object ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription(setting, object);
  }

  return v5;
}

@end