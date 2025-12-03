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
- (SASOverriddenSystemState)initWithSystemState:(id)state contextOverride:(id)override;
- (id)currentSpokenLanguageCode;
- (id)lockStateMonitor;
- (void)setLockStateMonitor:(id)monitor;
@end

@implementation SASOverriddenSystemState

- (SASOverriddenSystemState)initWithSystemState:(id)state contextOverride:(id)override
{
  stateCopy = state;
  overrideCopy = override;
  v11.receiver = self;
  v11.super_class = SASOverriddenSystemState;
  v8 = [(SASSystemState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SASOverriddenSystemState *)v8 setSystemState:stateCopy];
    [(SASOverriddenSystemState *)v9 setContextOverride:overrideCopy];
  }

  return v9;
}

- (id)lockStateMonitor
{
  systemState = [(SASOverriddenSystemState *)self systemState];
  lockStateMonitor = [systemState lockStateMonitor];

  return lockStateMonitor;
}

- (void)setLockStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  systemState = [(SASOverriddenSystemState *)self systemState];
  [systemState setLockStateMonitor:monitorCopy];
}

- (id)currentSpokenLanguageCode
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride currentSpokenLanguageCodeForSystemState:systemState];

  return v5;
}

- (BOOL)hasUnlockedSinceBoot
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride hasUnlockedSinceBootForSystemState:systemState];

  return v5;
}

- (BOOL)deviceIsBlocked
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride deviceIsBlockedForSystemState:systemState];

  return v5;
}

- (BOOL)deviceIsPasscodeLocked
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride deviceIsPasscodeLockedForSystemState:systemState];

  return v5;
}

- (BOOL)pocketStateShouldPreventVoiceTrigger
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride pocketStateShouldPreventVoiceTriggerForSystemState:systemState];

  return v5;
}

- (BOOL)isPad
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride isPadForSystemState:systemState];

  return v5;
}

- (BOOL)smartCoverClosed
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride smartCoverClosedForSystemState:systemState];

  return v5;
}

- (BOOL)accessibilityShortcutEnabled
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride accessibilityShortcutEnabledForSystemState:systemState];

  return v5;
}

- (BOOL)carDNDActive
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride carDNDActiveForSystemState:systemState];

  return v5;
}

- (BOOL)isConnectedToCarPlay
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride isConnectedToCarPlayForSystemState:systemState];

  return v5;
}

- (BOOL)isConnectedToTrustedCarPlay
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride isConnectedToTrustedCarPlayForSystemState:systemState];

  return v5;
}

- (BOOL)siriIsEnabled
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride siriIsEnabledForSystemState:systemState];

  return v5;
}

- (BOOL)siriIsRestricted
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride siriIsRestrictedForSystemState:systemState];

  return v5;
}

- (BOOL)siriIsSupported
{
  contextOverride = [(SASOverriddenSystemState *)self contextOverride];
  systemState = [(SASOverriddenSystemState *)self systemState];
  v5 = [contextOverride siriIsSupportedForSystemState:systemState];

  return v5;
}

@end