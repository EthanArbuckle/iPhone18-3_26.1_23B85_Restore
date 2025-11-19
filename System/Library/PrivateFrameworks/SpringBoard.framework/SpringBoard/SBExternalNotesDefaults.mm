@interface SBExternalNotesDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalNotesDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"quickNotesDisabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"DisableOnLockScreen" toDefaultValue:MEMORY[0x277CBEC28] options:1];
}

@end