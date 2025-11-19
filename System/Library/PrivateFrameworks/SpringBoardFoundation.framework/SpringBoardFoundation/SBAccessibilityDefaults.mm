@interface SBAccessibilityDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBAccessibilityDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reallyDisableReachability"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBReallyDisableReachability" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowReachability"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBReachabilityEnabled" toDefaultValue:MEMORY[0x1E695E118] options:1];
}

@end