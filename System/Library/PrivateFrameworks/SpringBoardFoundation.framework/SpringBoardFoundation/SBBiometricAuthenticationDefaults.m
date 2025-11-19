@interface SBBiometricAuthenticationDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBBiometricAuthenticationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"logTimestampsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBLogMesaTimestamps" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end