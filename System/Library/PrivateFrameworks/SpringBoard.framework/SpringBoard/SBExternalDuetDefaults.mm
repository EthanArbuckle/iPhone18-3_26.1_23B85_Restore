@interface SBExternalDuetDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalDuetDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"duetAllowedApps"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"DuetWhitelistedApps" toDefaultValue:0 options:1];
}

@end