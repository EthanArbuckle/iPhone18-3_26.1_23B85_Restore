@interface SBControlCenterDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBControlCenterDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dismissControlCenterElsewhereOnPresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDismissControlCenterElsewhereOnPresentation" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hijackSpotlightButtonActionForPrototyping"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBHijackSpotlightButtonActionForPrototyping" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end