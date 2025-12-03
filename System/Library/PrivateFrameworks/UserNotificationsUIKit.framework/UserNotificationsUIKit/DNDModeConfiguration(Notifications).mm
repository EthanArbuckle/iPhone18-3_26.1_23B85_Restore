@interface DNDModeConfiguration(Notifications)
- (BOOL)nc_modeConfigurationHasExclusiveAppConfigurationType;
@end

@implementation DNDModeConfiguration(Notifications)

- (BOOL)nc_modeConfigurationHasExclusiveAppConfigurationType
{
  configuration = [self configuration];
  applicationConfigurationType = [configuration applicationConfigurationType];

  return applicationConfigurationType == 0;
}

@end