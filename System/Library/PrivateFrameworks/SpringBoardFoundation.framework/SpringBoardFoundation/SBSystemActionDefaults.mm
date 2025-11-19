@interface SBSystemActionDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBSystemActionDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"configuredActionArchive"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBSystemActionConfiguredActionArchive" toDefaultValue:0 options:1];
}

@end