@interface SBPowerDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBPowerDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableIdleSleep"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDisableIdleSleep" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hideACPower"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBHideACPower" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hideLowPowerAlerts"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBHideLowPowerAlerts" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lowBatteryLevel"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBLowBatteryLevel" toDefaultValue:&unk_1F3D3E760 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"trackPowerEvents"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBTrackPowerEvents" toDefaultValue:v4 options:1];
}

@end