@interface SBExternalDemoDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalDemoDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldLockIconsInStoreDemoMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"LockIcons" toDefaultValue:MEMORY[0x277CBEC28] options:1];
}

@end