@interface PRChronoDefaultsDomain
- (void)_bindAndRegisterDefaults;
@end

@implementation PRChronoDefaultsDomain

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowInternalWidgets"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"showInternalWidgets" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end