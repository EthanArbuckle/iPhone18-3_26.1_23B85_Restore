@interface SBRecentDisplayItemsDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBRecentDisplayItemsDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"commandTabPlistRepresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDefaultKeyCommandTabPlistRepresentation" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dockRecentsPlistRepresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBDefaultKeyDockRecentsPlistRepresentation" toDefaultValue:0 options:1];
}

@end