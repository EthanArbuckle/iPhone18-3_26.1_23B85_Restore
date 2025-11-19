@interface SBBiometricKitDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBBiometricKitDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"coachingHintsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"coachingHintsEnabled" toDefaultValue:MEMORY[0x277CBEC38] options:1];
}

@end