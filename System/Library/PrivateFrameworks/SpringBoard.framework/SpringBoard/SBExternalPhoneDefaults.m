@interface SBExternalPhoneDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalPhoneDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hideMyPhoneNumber"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"HideMyNumber" toDefaultValue:MEMORY[0x277CBEC28] options:1];
}

@end