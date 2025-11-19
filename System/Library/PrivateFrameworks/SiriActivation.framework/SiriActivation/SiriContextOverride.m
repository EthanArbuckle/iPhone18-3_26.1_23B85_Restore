@interface SiriContextOverride
- (BOOL)accessibilityShortcutEnabledForSystemState:(id)a3;
- (BOOL)carDNDActiveForSystemState:(id)a3;
- (BOOL)deviceIsBlockedForSystemState:(id)a3;
- (BOOL)deviceIsPasscodeLockedForSystemState:(id)a3;
- (BOOL)hasUnlockedSinceBootForSystemState:(id)a3;
- (BOOL)isConnectedToCarPlayForSystemState:(id)a3;
- (BOOL)isConnectedToTrustedCarPlayForSystemState:(id)a3;
- (BOOL)isPadForSystemState:(id)a3;
- (BOOL)pocketStateShouldPreventVoiceTriggerForSystemState:(id)a3;
- (BOOL)siriIsEnabledForSystemState:(id)a3;
- (BOOL)siriIsRestrictedForSystemState:(id)a3;
- (BOOL)siriIsSupportedForSystemState:(id)a3;
- (BOOL)smartCoverClosedForSystemState:(id)a3;
- (SiriContextOverride)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentSpokenLanguageCodeForSystemState:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriContextOverride

- (id)currentSpokenLanguageCodeForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self currentSpokenLanguageCode];
  if (v5)
  {
    v6 = self;
  }

  else
  {
    v6 = v4;
  }

  v7 = [(SiriContextOverride *)v6 currentSpokenLanguageCode];

  return v7;
}

- (BOOL)hasUnlockedSinceBootForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self unlockedSinceBoot];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self unlockedSinceBoot];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 hasUnlockedSinceBoot];
  }

  return v7;
}

- (BOOL)deviceIsBlockedForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self deviceIsBlocked];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self deviceIsBlocked];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 deviceIsBlocked];
  }

  return v7;
}

- (BOOL)deviceIsPasscodeLockedForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self deviceIsPasscodeLocked];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 deviceIsPasscodeLocked];
  }

  return v7;
}

- (BOOL)pocketStateShouldPreventVoiceTriggerForSystemState:(id)a3
{
  v4 = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  if (v4)
  {
    v5 = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = +[SASSiriPocketStateManager sharedManager];
    v6 = [v5 pocketStateShouldPreventVoiceTrigger];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isPadForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self pad];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self pad];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 isPad];
  }

  return v7;
}

- (BOOL)smartCoverClosedForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self smartCoverClosed];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self smartCoverClosed];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 smartCoverClosed];
  }

  return v7;
}

- (BOOL)accessibilityShortcutEnabledForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self accessibilityShortcutEnabled];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 accessibilityShortcutEnabled];
  }

  return v7;
}

- (BOOL)carDNDActiveForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self carDNDActive];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self carDNDActive];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 carDNDActive];
  }

  return v7;
}

- (BOOL)isConnectedToCarPlayForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self connectedToCarPlay];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self connectedToCarPlay];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 isConnectedToCarPlay];
  }

  return v7;
}

- (BOOL)isConnectedToTrustedCarPlayForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self connectedToTrustedCarPlay];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 isConnectedToTrustedCarPlay];
  }

  return v7;
}

- (BOOL)siriIsEnabledForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self siriIsEnabled];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self siriIsEnabled];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 siriIsEnabled];
  }

  return v7;
}

- (BOOL)siriIsRestrictedForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self siriIsRestricted];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self siriIsRestricted];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 siriIsRestricted];
  }

  return v7;
}

- (BOOL)siriIsSupportedForSystemState:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self siriIsSupported];
  if (v5)
  {
    v6 = [(SiriContextOverride *)self siriIsSupported];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [v4 siriIsSupported];
  }

  return v7;
}

- (SiriContextOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SiriContextOverride;
  v5 = [(SiriContextOverride *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSpokenLanguageCode"];
    [(SiriContextOverride *)v5 setCurrentSpokenLanguageCode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unlockedSinceBoot"];
    [(SiriContextOverride *)v5 setUnlockedSinceBoot:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIsBlocked"];
    [(SiriContextOverride *)v5 setDeviceIsBlocked:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIsPasscodeLocked"];
    [(SiriContextOverride *)v5 setDeviceIsPasscodeLocked:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pocketStateShouldPreventVoiceTrigger"];
    [(SiriContextOverride *)v5 setPocketStateShouldPreventVoiceTrigger:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pad"];
    [(SiriContextOverride *)v5 setPad:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartCoverClosed"];
    [(SiriContextOverride *)v5 setSmartCoverClosed:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityShortcutEnabled"];
    [(SiriContextOverride *)v5 setAccessibilityShortcutEnabled:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carDNDActive"];
    [(SiriContextOverride *)v5 setCarDNDActive:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedToCarPlay"];
    [(SiriContextOverride *)v5 setConnectedToCarPlay:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedToTrustedCarPlay"];
    [(SiriContextOverride *)v5 setConnectedToTrustedCarPlay:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriIsEnabled"];
    [(SiriContextOverride *)v5 setSiriIsEnabled:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriIsRestricted"];
    [(SiriContextOverride *)v5 setSiriIsRestricted:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriIsSupported"];
    [(SiriContextOverride *)v5 setSiriIsSupported:v19];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SiriContextOverride *)self currentSpokenLanguageCode];
  [v4 encodeObject:v5 forKey:@"currentSpokenLanguageCode"];

  v6 = [(SiriContextOverride *)self unlockedSinceBoot];
  [v4 encodeObject:v6 forKey:@"unlockedSinceBoot"];

  v7 = [(SiriContextOverride *)self deviceIsBlocked];
  [v4 encodeObject:v7 forKey:@"deviceIsBlocked"];

  v8 = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  [v4 encodeObject:v8 forKey:@"deviceIsPasscodeLocked"];

  v9 = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  [v4 encodeObject:v9 forKey:@"pocketStateShouldPreventVoiceTrigger"];

  v10 = [(SiriContextOverride *)self pad];
  [v4 encodeObject:v10 forKey:@"pad"];

  v11 = [(SiriContextOverride *)self smartCoverClosed];
  [v4 encodeObject:v11 forKey:@"smartCoverClosed"];

  v12 = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  [v4 encodeObject:v12 forKey:@"accessibilityShortcutEnabled"];

  v13 = [(SiriContextOverride *)self carDNDActive];
  [v4 encodeObject:v13 forKey:@"carDNDActive"];

  v14 = [(SiriContextOverride *)self connectedToCarPlay];
  [v4 encodeObject:v14 forKey:@"connectedToCarPlay"];

  v15 = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  [v4 encodeObject:v15 forKey:@"connectedToTrustedCarPlay"];

  v16 = [(SiriContextOverride *)self siriIsEnabled];
  [v4 encodeObject:v16 forKey:@"siriIsEnabled"];

  v17 = [(SiriContextOverride *)self siriIsRestricted];
  [v4 encodeObject:v17 forKey:@"siriIsRestricted"];

  v18 = [(SiriContextOverride *)self siriIsSupported];
  [v4 encodeObject:v18 forKey:@"siriIsSupported"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SiriContextOverride);
  v5 = [(SiriContextOverride *)self currentSpokenLanguageCode];
  [(SiriContextOverride *)v4 setCurrentSpokenLanguageCode:v5];

  v6 = [(SiriContextOverride *)self unlockedSinceBoot];
  [(SiriContextOverride *)v4 setUnlockedSinceBoot:v6];

  v7 = [(SiriContextOverride *)self deviceIsBlocked];
  [(SiriContextOverride *)v4 setDeviceIsBlocked:v7];

  v8 = [(SiriContextOverride *)self deviceIsPasscodeLocked];
  [(SiriContextOverride *)v4 setDeviceIsPasscodeLocked:v8];

  v9 = [(SiriContextOverride *)self pocketStateShouldPreventVoiceTrigger];
  [(SiriContextOverride *)v4 setPocketStateShouldPreventVoiceTrigger:v9];

  v10 = [(SiriContextOverride *)self pad];
  [(SiriContextOverride *)v4 setPad:v10];

  v11 = [(SiriContextOverride *)self smartCoverClosed];
  [(SiriContextOverride *)v4 setSmartCoverClosed:v11];

  v12 = [(SiriContextOverride *)self accessibilityShortcutEnabled];
  [(SiriContextOverride *)v4 setAccessibilityShortcutEnabled:v12];

  v13 = [(SiriContextOverride *)self carDNDActive];
  [(SiriContextOverride *)v4 setCarDNDActive:v13];

  v14 = [(SiriContextOverride *)self connectedToCarPlay];
  [(SiriContextOverride *)v4 setConnectedToCarPlay:v14];

  v15 = [(SiriContextOverride *)self connectedToTrustedCarPlay];
  [(SiriContextOverride *)v4 setConnectedToTrustedCarPlay:v15];

  v16 = [(SiriContextOverride *)self siriIsEnabled];
  [(SiriContextOverride *)v4 setSiriIsEnabled:v16];

  v17 = [(SiriContextOverride *)self siriIsRestricted];
  [(SiriContextOverride *)v4 setSiriIsRestricted:v17];

  v18 = [(SiriContextOverride *)self siriIsSupported];
  [(SiriContextOverride *)v4 setSiriIsSupported:v18];

  return v4;
}

@end