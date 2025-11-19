@interface SBInCallPresentationDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBInCallPresentationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assertNoZombieInCallScenes"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBAssertNoZombieInCallScenes" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"skipPromptUnlockEntitlementCheck"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBSkipPromptUnlockEntitlementCheck" toDefaultValue:v4 options:1];
}

@end