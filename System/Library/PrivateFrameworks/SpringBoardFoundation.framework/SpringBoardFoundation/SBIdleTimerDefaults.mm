@interface SBIdleTimerDefaults
- (BOOL)disableAutoDim;
- (BOOL)disableAutoDimExists;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBIdleTimerDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"minimumLockscreenIdleTime"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBMinimumLockscreenIdleTime" toDefaultValue:&unk_1F3D3EB38 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableAutoDim"];
  v5 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBDisableAutoDim" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dontDimOrLockWhileConnectedToPower"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBDontDimOrLockOnAC" toDefaultValue:v5 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"supportLiftToWake"];
  v8 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBSupportLiftToWake" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"supportTapToWake"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBSupportTapToWake" toDefaultValue:v8 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableAttentionAwareness"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBDisableAttentionAwareness" toDefaultValue:v5 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"backlightLoggingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBEnableExtraBacklightLogging" toDefaultValue:v5 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"notificationVisibleIdleTimer"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBNotificationVisibleIdleTimer" toDefaultValue:&unk_1F3D3F3A8 options:1];
}

- (BOOL)disableAutoDim
{
  disableAutoDimExists = [(SBIdleTimerDefaults *)self disableAutoDimExists];
  if (disableAutoDimExists)
  {
    _store = [(BSAbstractDefaultDomain *)self _store];
    v5 = [_store BOOLForKey:@"SBDisableAutoDim"];

    LOBYTE(disableAutoDimExists) = v5;
  }

  return disableAutoDimExists;
}

- (BOOL)disableAutoDimExists
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v3 = [_store bs_defaultExists:@"SBDisableAutoDim"];

  return v3;
}

@end