@interface SBSetupDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBSetupDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"inSetupModeForActivationChange"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBInBuddyForActivationChange" toDefaultValue:MEMORY[0x1E695E110] options:4];
}

@end