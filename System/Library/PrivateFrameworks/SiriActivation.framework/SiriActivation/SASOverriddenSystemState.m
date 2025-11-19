@interface SASOverriddenSystemState
- (BOOL)accessibilityShortcutEnabled;
- (BOOL)carDNDActive;
- (BOOL)deviceIsBlocked;
- (BOOL)deviceIsPasscodeLocked;
- (BOOL)hasUnlockedSinceBoot;
- (BOOL)isConnectedToCarPlay;
- (BOOL)isConnectedToTrustedCarPlay;
- (BOOL)isPad;
- (BOOL)pocketStateShouldPreventVoiceTrigger;
- (BOOL)siriIsEnabled;
- (BOOL)siriIsRestricted;
- (BOOL)siriIsSupported;
- (BOOL)smartCoverClosed;
- (SASOverriddenSystemState)initWithSystemState:(id)a3 contextOverride:(id)a4;
- (id)currentSpokenLanguageCode;
- (id)lockStateMonitor;
- (void)setLockStateMonitor:(id)a3;
@end

@implementation SASOverriddenSystemState

- (SASOverriddenSystemState)initWithSystemState:(id)a3 contextOverride:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SASOverriddenSystemState;
  v8 = [(SASSystemState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SASOverriddenSystemState *)v8 setSystemState:v6];
    [(SASOverriddenSystemState *)v9 setContextOverride:v7];
  }

  return v9;
}

- (id)lockStateMonitor
{
  v2 = [(SASOverriddenSystemState *)self systemState];
  v3 = [v2 lockStateMonitor];

  return v3;
}

- (void)setLockStateMonitor:(id)a3
{
  v4 = a3;
  v5 = [(SASOverriddenSystemState *)self systemState];
  [v5 setLockStateMonitor:v4];
}

- (id)currentSpokenLanguageCode
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 currentSpokenLanguageCodeForSystemState:v4];

  return v5;
}

- (BOOL)hasUnlockedSinceBoot
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 hasUnlockedSinceBootForSystemState:v4];

  return v5;
}

- (BOOL)deviceIsBlocked
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 deviceIsBlockedForSystemState:v4];

  return v5;
}

- (BOOL)deviceIsPasscodeLocked
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 deviceIsPasscodeLockedForSystemState:v4];

  return v5;
}

- (BOOL)pocketStateShouldPreventVoiceTrigger
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 pocketStateShouldPreventVoiceTriggerForSystemState:v4];

  return v5;
}

- (BOOL)isPad
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 isPadForSystemState:v4];

  return v5;
}

- (BOOL)smartCoverClosed
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 smartCoverClosedForSystemState:v4];

  return v5;
}

- (BOOL)accessibilityShortcutEnabled
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 accessibilityShortcutEnabledForSystemState:v4];

  return v5;
}

- (BOOL)carDNDActive
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 carDNDActiveForSystemState:v4];

  return v5;
}

- (BOOL)isConnectedToCarPlay
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 isConnectedToCarPlayForSystemState:v4];

  return v5;
}

- (BOOL)isConnectedToTrustedCarPlay
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 isConnectedToTrustedCarPlayForSystemState:v4];

  return v5;
}

- (BOOL)siriIsEnabled
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 siriIsEnabledForSystemState:v4];

  return v5;
}

- (BOOL)siriIsRestricted
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 siriIsRestrictedForSystemState:v4];

  return v5;
}

- (BOOL)siriIsSupported
{
  v3 = [(SASOverriddenSystemState *)self contextOverride];
  v4 = [(SASOverriddenSystemState *)self systemState];
  v5 = [v3 siriIsSupportedForSystemState:v4];

  return v5;
}

@end