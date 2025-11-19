@interface SBTestingDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBTestingDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"testRunnerRecoveryApplicationBundleIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBTestRunnerRecoveryApplicationBundleIdentifier" toDefaultValue:0 options:1];
}

@end