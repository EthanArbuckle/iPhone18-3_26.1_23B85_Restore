@interface SBStatusBarDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBStatusBarDefaults

- (void)_bindAndRegisterDefaults
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"countryCodesShowingEmergencyOnlyStatus"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBCountryCodesShowingEmergencyOnly" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressStatusBarOverrideForScreenSharing"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBSuppressScreenSharingStatusBarOverridePreferenceKey" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showBatteryLevel"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBShowBatteryLevel" toDefaultValue:v6 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showBatteryPercentage"];
  v9 = MEMORY[0x1E696AD98];
  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v10)
  {
    v12 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [currentDevice userInterfaceIdiom] == 1;
  }

  v13 = [v9 numberWithInt:v12];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBShowBatteryPercentage" toDefaultValue:v13 options:1];

  if ((v11 & 1) == 0)
  {
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showOptimalCellDataForCarPlay"];
  v15 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBCarPlayShowOptimalCellData" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showOverridesForRecording"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"SBShowStatusBarOverridesForRecording" toDefaultValue:v15 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showRSSI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"SBShowRSSI" toDefaultValue:v15 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"statusBarLogLevel"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"SBStatusBarishLogOptions" toDefaultValue:&unk_1F3D3E7D8 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showThermalWarning"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"SBShowThermalWarning" toDefaultValue:v15 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showRingerState"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"SBShowRingerState" toDefaultValue:MEMORY[0x1E695E118] options:1];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      return;
    }
  }

  _store = [(BSAbstractDefaultDomain *)self _store];
  if (([_store bs_defaultExists:@"SBShowBatteryPercentage"] & 1) == 0)
  {
    [_store setBool:1 forKey:@"SBShowBatteryPercentage"];
  }
}

@end