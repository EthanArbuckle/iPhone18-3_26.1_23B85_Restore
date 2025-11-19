@interface SBMultiUserDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBMultiUserDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceLoginWindow"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBForceLoginWindow" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disablesInternalDebugBlockingTasksUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBDisablesInternalDebugBlockingTasksUI" toDefaultValue:v4 options:1];
}

@end