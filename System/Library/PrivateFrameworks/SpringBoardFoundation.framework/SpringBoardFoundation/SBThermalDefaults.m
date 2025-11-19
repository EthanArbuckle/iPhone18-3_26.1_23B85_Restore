@interface SBThermalDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBThermalDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wasConnectedToWiFiWhenBrickedForThermalConditions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"ThermalLockoutWiFiWasEnabled" toDefaultValue:MEMORY[0x1E695E110] options:4];
}

@end