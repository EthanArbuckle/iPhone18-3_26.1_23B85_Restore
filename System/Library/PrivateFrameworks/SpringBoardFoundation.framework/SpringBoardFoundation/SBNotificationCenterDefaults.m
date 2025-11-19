@interface SBNotificationCenterDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBNotificationCenterDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useDuetRecommendations"];
  v4 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBNotificationCenterUseDuet" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"batteryWidgetAlwaysAvailable"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBBatteryWidgetAlwaysAvailable" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"widgetSnapshottingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBWidgetSnapshottingEnabled" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"widgetLoggingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBWidgetLogging" toDefaultValue:v6 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showWidgetSnapshotDebugLabels"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBWidgetSnapshotDebugLabels" toDefaultValue:v6 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPurgeNonCAMLSnapshots"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBDidPurgeNonCAMLSnapshots" toDefaultValue:v6 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPurgeNonASTCSnapshots"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBDidPurgeNonASTCSnapshots" toDefaultValue:v6 options:1];
}

@end