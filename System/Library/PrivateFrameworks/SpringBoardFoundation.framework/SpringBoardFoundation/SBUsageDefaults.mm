@interface SBUsageDefaults
- (void)_bindAndRegisterDefaults;
- (void)clearUsageDefaults;
@end

@implementation SBUsageDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"standbyTime"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBStandByTime" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"batteryUsageTime"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBBatteryUsageTime" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hasChargedPartially"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBWHaveChargedPartially" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

- (void)clearUsageDefaults
{
  v3 = [(BSAbstractDefaultDomain *)self _store];
  [v3 removeObjectForKey:@"SBStandByTime"];
  [v3 removeObjectForKey:@"SBBatteryUsageTime"];
  [v3 removeObjectForKey:@"SBWHaveChargedPartially"];
  [v3 removeObjectForKey:@"SBInitialStandByTime"];
  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
}

@end