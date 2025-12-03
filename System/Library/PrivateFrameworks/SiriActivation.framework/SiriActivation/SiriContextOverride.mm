@interface SiriContextOverride
- (BOOL)accessibilityShortcutEnabledForSystemState:(id)state;
- (BOOL)carDNDActiveForSystemState:(id)state;
- (BOOL)deviceIsBlockedForSystemState:(id)state;
- (BOOL)deviceIsPasscodeLockedForSystemState:(id)state;
- (BOOL)hasUnlockedSinceBootForSystemState:(id)state;
- (BOOL)isConnectedToCarPlayForSystemState:(id)state;
- (BOOL)isConnectedToTrustedCarPlayForSystemState:(id)state;
- (BOOL)isPadForSystemState:(id)state;
- (BOOL)pocketStateShouldPreventVoiceTriggerForSystemState:(id)state;
- (BOOL)siriIsEnabledForSystemState:(id)state;
- (BOOL)siriIsRestrictedForSystemState:(id)state;
- (BOOL)siriIsSupportedForSystemState:(id)state;
- (BOOL)smartCoverClosedForSystemState:(id)state;
- (SiriContextOverride)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentSpokenLanguageCodeForSystemState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriContextOverride

- (id)currentSpokenLanguageCodeForSystemState:(id)state
{
  stateCopy = state;
  currentSpokenLanguageCode = [(SiriContextOverride *)self currentSpokenLanguageCode];
  if (currentSpokenLanguageCode)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = stateCopy;
  }

  currentSpokenLanguageCode2 = [(SiriContextOverride *)selfCopy currentSpokenLanguageCode];

  return currentSpokenLanguageCode2;
}

- (BOOL)hasUnlockedSinceBootForSystemState:(id)state
{
  stateCopy = state;
  unlockedSinceBoot = [(SiriContextOverride *)self unlockedSinceBoot];
  if (unlockedSinceBoot)
  {
    unlockedSinceBoot2 = [(SiriContextOverride *)self unlockedSinceBoot];
    bOOLValue = [unlockedSinceBoot2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy hasUnlockedSinceBoot];
  }

  return bOOLValue;
}

- (BOOL)deviceIsBlockedForSystemState:(id)state
{
  stateCopy = state;
  deviceIsBlocked = [(SiriContextOverride *)self deviceIsBlocked];
  if (deviceIsBlocked)
  {
    deviceIsBlocked2 = [(SiriContextOverride *)self deviceIsBlocked];
    bOOLValue = [deviceIsBlocked2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy deviceIsBlocked];
  }

  return bOOLValue;
}

- (BOOL)deviceIsPasscodeLockedForSystemState:(id)state
{
  stateCopy = state;
  deviceIsPasscodeLocked = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  if (deviceIsPasscodeLocked)
  {
    deviceIsPasscodeLocked2 = [(SiriContextOverride *)self deviceIsPasscodeLocked];
    bOOLValue = [deviceIsPasscodeLocked2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy deviceIsPasscodeLocked];
  }

  return bOOLValue;
}

- (BOOL)pocketStateShouldPreventVoiceTriggerForSystemState:(id)state
{
  pocketStateShouldPreventVoiceTrigger = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  if (pocketStateShouldPreventVoiceTrigger)
  {
    pocketStateShouldPreventVoiceTrigger2 = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
    bOOLValue = [pocketStateShouldPreventVoiceTrigger2 BOOLValue];
  }

  else
  {
    pocketStateShouldPreventVoiceTrigger2 = +[SASSiriPocketStateManager sharedManager];
    bOOLValue = [pocketStateShouldPreventVoiceTrigger2 pocketStateShouldPreventVoiceTrigger];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)isPadForSystemState:(id)state
{
  stateCopy = state;
  v5 = [(SiriContextOverride *)self pad];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self pad];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy isPad];
  }

  return bOOLValue;
}

- (BOOL)smartCoverClosedForSystemState:(id)state
{
  stateCopy = state;
  smartCoverClosed = [(SiriContextOverride *)self smartCoverClosed];
  if (smartCoverClosed)
  {
    smartCoverClosed2 = [(SiriContextOverride *)self smartCoverClosed];
    bOOLValue = [smartCoverClosed2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy smartCoverClosed];
  }

  return bOOLValue;
}

- (BOOL)accessibilityShortcutEnabledForSystemState:(id)state
{
  stateCopy = state;
  accessibilityShortcutEnabled = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  if (accessibilityShortcutEnabled)
  {
    accessibilityShortcutEnabled2 = [(SiriContextOverride *)self accessibilityShortcutEnabled];
    bOOLValue = [accessibilityShortcutEnabled2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy accessibilityShortcutEnabled];
  }

  return bOOLValue;
}

- (BOOL)carDNDActiveForSystemState:(id)state
{
  stateCopy = state;
  carDNDActive = [(SiriContextOverride *)self carDNDActive];
  if (carDNDActive)
  {
    carDNDActive2 = [(SiriContextOverride *)self carDNDActive];
    bOOLValue = [carDNDActive2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy carDNDActive];
  }

  return bOOLValue;
}

- (BOOL)isConnectedToCarPlayForSystemState:(id)state
{
  stateCopy = state;
  connectedToCarPlay = [(SiriContextOverride *)self connectedToCarPlay];
  if (connectedToCarPlay)
  {
    connectedToCarPlay2 = [(SiriContextOverride *)self connectedToCarPlay];
    bOOLValue = [connectedToCarPlay2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy isConnectedToCarPlay];
  }

  return bOOLValue;
}

- (BOOL)isConnectedToTrustedCarPlayForSystemState:(id)state
{
  stateCopy = state;
  connectedToTrustedCarPlay = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  if (connectedToTrustedCarPlay)
  {
    connectedToTrustedCarPlay2 = [(SiriContextOverride *)self connectedToTrustedCarPlay];
    bOOLValue = [connectedToTrustedCarPlay2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy isConnectedToTrustedCarPlay];
  }

  return bOOLValue;
}

- (BOOL)siriIsEnabledForSystemState:(id)state
{
  stateCopy = state;
  siriIsEnabled = [(SiriContextOverride *)self siriIsEnabled];
  if (siriIsEnabled)
  {
    siriIsEnabled2 = [(SiriContextOverride *)self siriIsEnabled];
    bOOLValue = [siriIsEnabled2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy siriIsEnabled];
  }

  return bOOLValue;
}

- (BOOL)siriIsRestrictedForSystemState:(id)state
{
  stateCopy = state;
  siriIsRestricted = [(SiriContextOverride *)self siriIsRestricted];
  if (siriIsRestricted)
  {
    siriIsRestricted2 = [(SiriContextOverride *)self siriIsRestricted];
    bOOLValue = [siriIsRestricted2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy siriIsRestricted];
  }

  return bOOLValue;
}

- (BOOL)siriIsSupportedForSystemState:(id)state
{
  stateCopy = state;
  siriIsSupported = [(SiriContextOverride *)self siriIsSupported];
  if (siriIsSupported)
  {
    siriIsSupported2 = [(SiriContextOverride *)self siriIsSupported];
    bOOLValue = [siriIsSupported2 BOOLValue];
  }

  else
  {
    bOOLValue = [stateCopy siriIsSupported];
  }

  return bOOLValue;
}

- (SiriContextOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SiriContextOverride;
  v5 = [(SiriContextOverride *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSpokenLanguageCode"];
    [(SiriContextOverride *)v5 setCurrentSpokenLanguageCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unlockedSinceBoot"];
    [(SiriContextOverride *)v5 setUnlockedSinceBoot:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIsBlocked"];
    [(SiriContextOverride *)v5 setDeviceIsBlocked:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIsPasscodeLocked"];
    [(SiriContextOverride *)v5 setDeviceIsPasscodeLocked:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pocketStateShouldPreventVoiceTrigger"];
    [(SiriContextOverride *)v5 setPocketStateShouldPreventVoiceTrigger:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pad"];
    [(SiriContextOverride *)v5 setPad:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartCoverClosed"];
    [(SiriContextOverride *)v5 setSmartCoverClosed:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityShortcutEnabled"];
    [(SiriContextOverride *)v5 setAccessibilityShortcutEnabled:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carDNDActive"];
    [(SiriContextOverride *)v5 setCarDNDActive:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedToCarPlay"];
    [(SiriContextOverride *)v5 setConnectedToCarPlay:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedToTrustedCarPlay"];
    [(SiriContextOverride *)v5 setConnectedToTrustedCarPlay:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriIsEnabled"];
    [(SiriContextOverride *)v5 setSiriIsEnabled:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriIsRestricted"];
    [(SiriContextOverride *)v5 setSiriIsRestricted:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriIsSupported"];
    [(SiriContextOverride *)v5 setSiriIsSupported:v19];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  currentSpokenLanguageCode = [(SiriContextOverride *)self currentSpokenLanguageCode];
  [coderCopy encodeObject:currentSpokenLanguageCode forKey:@"currentSpokenLanguageCode"];

  unlockedSinceBoot = [(SiriContextOverride *)self unlockedSinceBoot];
  [coderCopy encodeObject:unlockedSinceBoot forKey:@"unlockedSinceBoot"];

  deviceIsBlocked = [(SiriContextOverride *)self deviceIsBlocked];
  [coderCopy encodeObject:deviceIsBlocked forKey:@"deviceIsBlocked"];

  deviceIsPasscodeLocked = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  [coderCopy encodeObject:deviceIsPasscodeLocked forKey:@"deviceIsPasscodeLocked"];

  pocketStateShouldPreventVoiceTrigger = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  [coderCopy encodeObject:pocketStateShouldPreventVoiceTrigger forKey:@"pocketStateShouldPreventVoiceTrigger"];

  v10 = [(SiriContextOverride *)self pad];
  [coderCopy encodeObject:v10 forKey:@"pad"];

  smartCoverClosed = [(SiriContextOverride *)self smartCoverClosed];
  [coderCopy encodeObject:smartCoverClosed forKey:@"smartCoverClosed"];

  accessibilityShortcutEnabled = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  [coderCopy encodeObject:accessibilityShortcutEnabled forKey:@"accessibilityShortcutEnabled"];

  carDNDActive = [(SiriContextOverride *)self carDNDActive];
  [coderCopy encodeObject:carDNDActive forKey:@"carDNDActive"];

  connectedToCarPlay = [(SiriContextOverride *)self connectedToCarPlay];
  [coderCopy encodeObject:connectedToCarPlay forKey:@"connectedToCarPlay"];

  connectedToTrustedCarPlay = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  [coderCopy encodeObject:connectedToTrustedCarPlay forKey:@"connectedToTrustedCarPlay"];

  siriIsEnabled = [(SiriContextOverride *)self siriIsEnabled];
  [coderCopy encodeObject:siriIsEnabled forKey:@"siriIsEnabled"];

  siriIsRestricted = [(SiriContextOverride *)self siriIsRestricted];
  [coderCopy encodeObject:siriIsRestricted forKey:@"siriIsRestricted"];

  siriIsSupported = [(SiriContextOverride *)self siriIsSupported];
  [coderCopy encodeObject:siriIsSupported forKey:@"siriIsSupported"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SiriContextOverride);
  currentSpokenLanguageCode = [(SiriContextOverride *)self currentSpokenLanguageCode];
  [(SiriContextOverride *)v4 setCurrentSpokenLanguageCode:currentSpokenLanguageCode];

  unlockedSinceBoot = [(SiriContextOverride *)self unlockedSinceBoot];
  [(SiriContextOverride *)v4 setUnlockedSinceBoot:unlockedSinceBoot];

  deviceIsBlocked = [(SiriContextOverride *)self deviceIsBlocked];
  [(SiriContextOverride *)v4 setDeviceIsBlocked:deviceIsBlocked];

  deviceIsPasscodeLocked = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  [(SiriContextOverride *)v4 setDeviceIsPasscodeLocked:deviceIsPasscodeLocked];

  pocketStateShouldPreventVoiceTrigger = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  [(SiriContextOverride *)v4 setPocketStateShouldPreventVoiceTrigger:pocketStateShouldPreventVoiceTrigger];

  v10 = [(SiriContextOverride *)self pad];
  [(SiriContextOverride *)v4 setPad:v10];

  smartCoverClosed = [(SiriContextOverride *)self smartCoverClosed];
  [(SiriContextOverride *)v4 setSmartCoverClosed:smartCoverClosed];

  accessibilityShortcutEnabled = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  [(SiriContextOverride *)v4 setAccessibilityShortcutEnabled:accessibilityShortcutEnabled];

  carDNDActive = [(SiriContextOverride *)self carDNDActive];
  [(SiriContextOverride *)v4 setCarDNDActive:carDNDActive];

  connectedToCarPlay = [(SiriContextOverride *)self connectedToCarPlay];
  [(SiriContextOverride *)v4 setConnectedToCarPlay:connectedToCarPlay];

  connectedToTrustedCarPlay = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  [(SiriContextOverride *)v4 setConnectedToTrustedCarPlay:connectedToTrustedCarPlay];

  siriIsEnabled = [(SiriContextOverride *)self siriIsEnabled];
  [(SiriContextOverride *)v4 setSiriIsEnabled:siriIsEnabled];

  siriIsRestricted = [(SiriContextOverride *)self siriIsRestricted];
  [(SiriContextOverride *)v4 setSiriIsRestricted:siriIsRestricted];

  siriIsSupported = [(SiriContextOverride *)self siriIsSupported];
  [(SiriContextOverride *)v4 setSiriIsSupported:siriIsSupported];

  return v4;
}

@end