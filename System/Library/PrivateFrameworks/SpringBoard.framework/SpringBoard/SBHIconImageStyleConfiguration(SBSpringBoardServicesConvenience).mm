@interface SBHIconImageStyleConfiguration(SBSpringBoardServicesConvenience)
- (id)sb_homeScreenIconStyleConfiguration;
- (uint64_t)sb_homeScreenIconStyleConfigurationType;
- (uint64_t)sb_homeScreenIconStyleConfigurationVariant;
@end

@implementation SBHIconImageStyleConfiguration(SBSpringBoardServicesConvenience)

- (uint64_t)sb_homeScreenIconStyleConfigurationType
{
  result = [self configurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)sb_homeScreenIconStyleConfiguration
{
  sb_homeScreenIconStyleConfigurationType = [self sb_homeScreenIconStyleConfigurationType];
  sb_homeScreenIconStyleConfigurationVariant = [self sb_homeScreenIconStyleConfigurationVariant];
  tintColor = [self tintColor];
  v5 = objc_alloc(MEMORY[0x277D66AB0]);
  bSColor = [tintColor BSColor];
  v7 = [v5 initWithConfigurationType:sb_homeScreenIconStyleConfigurationType variant:sb_homeScreenIconStyleConfigurationVariant tintColor:bSColor];

  return v7;
}

- (uint64_t)sb_homeScreenIconStyleConfigurationVariant
{
  result = [self variant];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

@end