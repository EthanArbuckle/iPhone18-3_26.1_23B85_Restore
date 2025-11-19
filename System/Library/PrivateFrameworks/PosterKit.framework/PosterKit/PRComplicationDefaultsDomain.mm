@interface PRComplicationDefaultsDomain
- (void)_bindAndRegisterDefaults;
@end

@implementation PRComplicationDefaultsDomain

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hasShownPortraitEducation"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"PRPortraitEducationPresented" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hasShownLandscapeEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"PRLandscapeEducationPresented" toDefaultValue:v4 options:1];
}

@end