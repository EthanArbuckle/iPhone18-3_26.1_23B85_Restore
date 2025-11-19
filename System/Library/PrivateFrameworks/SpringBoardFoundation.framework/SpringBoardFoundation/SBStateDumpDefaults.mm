@interface SBStateDumpDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBStateDumpDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"remoteDumpEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBRemoteDumpEnabled" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"remoteDumpTimeout"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBRemoteDumpTimeout" toDefaultValue:0 options:1];
}

@end