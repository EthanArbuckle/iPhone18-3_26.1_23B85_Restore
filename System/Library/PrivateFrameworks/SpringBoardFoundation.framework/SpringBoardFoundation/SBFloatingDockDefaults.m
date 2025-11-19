@interface SBFloatingDockDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBFloatingDockDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"appLibraryEnabled"];
  v4 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBAppLibraryInDockEnabled" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"recentsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBRecentsEnabled" toDefaultValue:v4 options:1];
}

@end