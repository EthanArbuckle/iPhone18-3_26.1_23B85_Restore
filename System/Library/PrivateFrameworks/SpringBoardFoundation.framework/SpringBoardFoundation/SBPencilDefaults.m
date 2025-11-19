@interface SBPencilDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBPencilDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"squeezeConfiguredActionArchive"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBPencilSystemShortcutAction" toDefaultValue:0 options:1];
}

@end