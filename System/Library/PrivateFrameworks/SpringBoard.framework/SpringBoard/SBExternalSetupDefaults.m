@interface SBExternalSetupDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalSetupDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"deviceSetup"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SetupDone" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"setupState"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SetupState" toDefaultValue:0 options:1];
}

@end