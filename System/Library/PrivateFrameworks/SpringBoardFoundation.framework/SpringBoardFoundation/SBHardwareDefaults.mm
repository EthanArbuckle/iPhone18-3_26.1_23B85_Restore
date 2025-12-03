@interface SBHardwareDefaults
- (BOOL)_deviceRequiresNaturalVolumeButtonArrangement;
- (BOOL)isNaturalVolumeButtonOrientationEnabled;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBHardwareDefaults

- (void)_bindAndRegisterDefaults
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v4 = [_store bs_defaultExists:@"SBButtonForceFeel"];

  if ((v4 & 1) == 0)
  {
    _store2 = [(BSAbstractDefaultDomain *)self _store];
    [_store2 setObject:&unk_1F3D3EB50 forKey:@"SBButtonForceFeel"];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hasSeenACaseLatchCoverOnce"];
  v7 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBHasSeenACaseLatchCoverOnce" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableHomeButton"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBDisableHomeButton" toDefaultValue:v7 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableProximitySensor"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBDisableProximity" toDefaultValue:v7 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableHomeButtonDoublePress"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBDisableHomeButtonDoublePress" toDefaultValue:v7 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"homeButtonHapticType"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBButtonForceFeel" toDefaultValue:&unk_1F3D3EB50 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableNaturalVolumeButtonOrientation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBDisableNaturalVolumeButtonArrangement" toDefaultValue:v7 options:1];
}

- (BOOL)_deviceRequiresNaturalVolumeButtonArrangement
{
  if (_deviceRequiresNaturalVolumeButtonArrangement_onceToken != -1)
  {
    [SBHardwareDefaults _deviceRequiresNaturalVolumeButtonArrangement];
  }

  return _deviceRequiresNaturalVolumeButtonArrangement_sRequiredByThisHardware;
}

uint64_t __67__SBHardwareDefaults__deviceRequiresNaturalVolumeButtonArrangement__block_invoke()
{
  result = MGGetBoolAnswer();
  _deviceRequiresNaturalVolumeButtonArrangement_sRequiredByThisHardware = result;
  return result;
}

- (BOOL)isNaturalVolumeButtonOrientationEnabled
{
  if ([(SBHardwareDefaults *)self _deviceRequiresNaturalVolumeButtonArrangement])
  {
    return 1;
  }

  else
  {
    return [(SBHardwareDefaults *)self disableNaturalVolumeButtonOrientation]^ 1;
  }
}

@end