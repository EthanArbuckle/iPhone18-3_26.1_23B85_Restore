@interface SBScreenLongevityDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBScreenLongevityDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dimInterval"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBScreenLongevityDimInterval" toDefaultValue:&unk_1F3D3E880 options:1];
}

@end