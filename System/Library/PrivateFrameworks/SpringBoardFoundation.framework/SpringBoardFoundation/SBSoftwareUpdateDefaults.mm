@interface SBSoftwareUpdateDefaults
- (void)_bindAndRegisterDefaults;
- (void)clearDeveloperInstallBrickAlerts;
@end

@implementation SBSoftwareUpdateDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"developerInstallBrickAlertShown7DayWarning"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDeveloperBrickAlert1" toDefaultValue:MEMORY[0x1E695E110] options:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"developerInstallBrickAlertShown3DayWarning"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBDeveloperBrickAlert2" toDefaultValue:v4 options:4];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"developerInstallBrickAlertShownTomorrowWarning"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBDeveloperBrickAlert3" toDefaultValue:v4 options:4];
}

- (void)clearDeveloperInstallBrickAlerts
{
  [(SBSoftwareUpdateDefaults *)self setDeveloperInstallBrickAlertShown7DayWarning:0];
  [(SBSoftwareUpdateDefaults *)self setDeveloperInstallBrickAlertShown3DayWarning:0];

  [(SBSoftwareUpdateDefaults *)self setDeveloperInstallBrickAlertShownTomorrowWarning:0];
}

@end