@interface SBSHomeScreenIconStyleConfiguration(SBHUtilities)
- (SBHIconImageStyleConfiguration)sbh_iconImageStyleConfiguration;
- (uint64_t)sbh_configurationType;
- (uint64_t)sbh_configurationVariant;
@end

@implementation SBSHomeScreenIconStyleConfiguration(SBHUtilities)

- (SBHIconImageStyleConfiguration)sbh_iconImageStyleConfiguration
{
  v2 = [a1 sbh_configurationType];
  v3 = [a1 sbh_configurationVariant];
  v4 = [a1 tintColor];
  v5 = [v4 UIColor];

  v6 = [[SBHIconImageStyleConfiguration alloc] initWithConfigurationType:v2 variant:v3 tintColor:v5];

  return v6;
}

- (uint64_t)sbh_configurationVariant
{
  result = [a1 variant];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (uint64_t)sbh_configurationType
{
  result = [a1 updatedConfigurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

@end