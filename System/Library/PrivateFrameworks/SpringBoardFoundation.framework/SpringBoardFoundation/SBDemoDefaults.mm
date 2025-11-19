@interface SBDemoDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBDemoDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"storeDemoApplicationLockEnabled"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBStoreDemoAppLock" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowsTestingStoreDemoMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBAllowsTestingStoreDemoMode" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"menuBarDemoMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBMenuBarDemoMode" toDefaultValue:&unk_1F3D3EC70 options:1];
}

@end