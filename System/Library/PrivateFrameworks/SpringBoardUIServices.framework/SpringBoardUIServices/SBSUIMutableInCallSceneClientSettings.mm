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
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
- (void)setAcceptsKeyboardFocus:(BOOL)a3;
- (void)setCallConnected:(BOOL)a3;
- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)a3;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3;
- (void)setPreferredHardwareButtonEventTypes:(unint64_t)a3;
- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)a3;
- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)a3;
- (void)setPrefersHiddenWhenDismissed:(BOOL)a3;
- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)a3;
- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)a3;
- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)a3;
- (void)setSupportsDeviceLockActions:(BOOL)a3;
- (void)setTransientOverlayHomeIndicatorAutoHidden:(BOOL)a3;
@end

@implementation SBSUIMutableInCallSceneClientSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSUIInCallSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (unint64_t)preferredHardwareButtonEventTypes
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2001];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2002];

  return v3;
}

- (unint64_t)preferredStatusBarStyleOverridesToSuppress
{
  v2 = [(SBSUIMutableInCallSceneClientSettings *)self preferredBackgroundActivitiesToSuppress];

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

- (void)setPreferredHardwareButtonEventTypes:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:2001];
}

- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)a3
{
  v4 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(a3);
  [(SBSUIMutableInCallSceneClientSettings *)self setPreferredBackgroundActivitiesToSuppress:v4];
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2002];
}

- (void)setSupportsDeviceLockActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2003];
}

- (void)setTransientOverlayHomeIndicatorAutoHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2004];
}

- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2005];
}

- (void)setCallConnected:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2006];
}

- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(FBSSettings *)self otherSettings];
  *v9 = top;
  *&v9[1] = left;
  *&v9[2] = bottom;
  *&v9[3] = right;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{UIEdgeInsets=dddd}"];
  [v7 setObject:v8 forSetting:2007];
}

- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2008];
}

- (void)setPrefersHiddenWhenDismissed:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2009];
}

- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2010];
}

- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2011];
}

- (void)setAcceptsKeyboardFocus:(BOOL)a3
{
  v3 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setObject:v4 forSetting:2012];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 2001 > 0xB)
  {
    v5.receiver = self;
    v5.super_class = SBSUIMutableInCallSceneClientSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = SBSUIInCallSceneClientSettingKeyDescription(a3);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 - 2001 > 0xB)
  {
    v7.receiver = self;
    v7.super_class = SBSUIMutableInCallSceneClientSettings;
    v5 = [(FBSSettings *)&v7 valueDescriptionForFlag:a3 object:a4 ofSetting:?];
  }

  else
  {
    v5 = SBSUIInCallSceneClientSettingValueDescription(a5, a4);
  }

  return v5;
}

@end