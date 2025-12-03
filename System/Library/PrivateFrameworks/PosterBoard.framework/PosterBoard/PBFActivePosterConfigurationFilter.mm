@interface PBFActivePosterConfigurationFilter
- (BOOL)shouldIncludePosterConfiguration:(id)configuration inSwitcherConfiguration:(id)switcherConfiguration;
@end

@implementation PBFActivePosterConfigurationFilter

- (BOOL)shouldIncludePosterConfiguration:(id)configuration inSwitcherConfiguration:(id)switcherConfiguration
{
  switcherConfigurationCopy = switcherConfiguration;
  v6 = uuidForPosterConfiguration(configuration);
  activeConfiguration = [switcherConfigurationCopy activeConfiguration];

  v8 = uuidForPosterConfiguration(activeConfiguration);
  v9 = [v6 isEqual:v8];

  return v9;
}

@end