@interface SBApplicationDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBApplicationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forcesMedusaAdoption"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBForceMedusaAdoption" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ignoresDeclaredNetworkUsage"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBIgnoreSBUsesNetwork" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowInternalApplications"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBShowInternalApps" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldAllowScreenshotsInLoginWindow"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBAllowScreenshotsInLoginWindow" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bundleIdentifierToForceHomeAffordanceInset"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBBundleIdentifierToForceHomeAffordanceInset" toDefaultValue:0 options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldAllowUseOfNonRecapPPT"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBAllowUseOfNonRecapPPT" toDefaultValue:v4 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"laserForLaunchPPT"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBLaserForLaunchPPT" toDefaultValue:v4 options:1];
}

@end