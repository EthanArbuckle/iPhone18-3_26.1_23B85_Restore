@interface SBSHomeScreenIconStyleConfiguration(SBSpringBoardServicesConvenience)
- (id)sb_iconImageStyleConfiguration;
- (uint64_t)sb_iconImageStyleConfigurationType;
- (uint64_t)sb_iconImageStyleConfigurationVariant;
@end

@implementation SBSHomeScreenIconStyleConfiguration(SBSpringBoardServicesConvenience)

- (id)sb_iconImageStyleConfiguration
{
  v2 = [a1 sb_iconImageStyleConfigurationType];
  v3 = [a1 sb_iconImageStyleConfigurationVariant];
  v4 = [a1 tintColor];
  v5 = objc_alloc(MEMORY[0x277D661D8]);
  v6 = [v4 UIColor];
  v7 = [v5 initWithConfigurationType:v2 variant:v3 tintColor:v6];

  return v7;
}

- (uint64_t)sb_iconImageStyleConfigurationType
{
  result = [a1 updatedConfigurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (uint64_t)sb_iconImageStyleConfigurationVariant
{
  result = [a1 variant];
  v2 = 3;
  if (result == 1)
  {
    v2 = 1;
  }

  if (result != 2)
  {
    return v2;
  }

  return result;
}

@end