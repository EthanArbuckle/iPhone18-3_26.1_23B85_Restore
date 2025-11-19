@interface SBWorkspaceDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBWorkspaceDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"medusaDeviceSimulation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBMedusaDeviceSimulation" toDefaultValue:&unk_1F3D3E850 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"breadcrumbDisabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBNeverBreadcrumb" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end