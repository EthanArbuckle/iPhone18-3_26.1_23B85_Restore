@interface SBHIconImageStyleConfiguration(SBSpringBoardServicesConvenience)
- (id)sb_homeScreenIconStyleConfiguration;
- (uint64_t)sb_homeScreenIconStyleConfigurationType;
- (uint64_t)sb_homeScreenIconStyleConfigurationVariant;
@end

@implementation SBHIconImageStyleConfiguration(SBSpringBoardServicesConvenience)

- (uint64_t)sb_homeScreenIconStyleConfigurationType
{
  result = [a1 configurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)sb_homeScreenIconStyleConfiguration
{
  v2 = [a1 sb_homeScreenIconStyleConfigurationType];
  v3 = [a1 sb_homeScreenIconStyleConfigurationVariant];
  v4 = [a1 tintColor];
  v5 = objc_alloc(MEMORY[0x277D66AB0]);
  v6 = [v4 BSColor];
  v7 = [v5 initWithConfigurationType:v2 variant:v3 tintColor:v6];

  return v7;
}

- (uint64_t)sb_homeScreenIconStyleConfigurationVariant
{
  result = [a1 variant];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

@end