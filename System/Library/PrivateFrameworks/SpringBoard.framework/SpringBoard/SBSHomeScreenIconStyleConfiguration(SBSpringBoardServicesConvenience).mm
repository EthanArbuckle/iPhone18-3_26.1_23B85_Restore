@interface SBSHomeScreenIconStyleConfiguration(SBSpringBoardServicesConvenience)
- (id)sb_iconImageStyleConfiguration;
- (uint64_t)sb_iconImageStyleConfigurationType;
- (uint64_t)sb_iconImageStyleConfigurationVariant;
@end

@implementation SBSHomeScreenIconStyleConfiguration(SBSpringBoardServicesConvenience)

- (id)sb_iconImageStyleConfiguration
{
  sb_iconImageStyleConfigurationType = [self sb_iconImageStyleConfigurationType];
  sb_iconImageStyleConfigurationVariant = [self sb_iconImageStyleConfigurationVariant];
  tintColor = [self tintColor];
  v5 = objc_alloc(MEMORY[0x277D661D8]);
  uIColor = [tintColor UIColor];
  v7 = [v5 initWithConfigurationType:sb_iconImageStyleConfigurationType variant:sb_iconImageStyleConfigurationVariant tintColor:uIColor];

  return v7;
}

- (uint64_t)sb_iconImageStyleConfigurationType
{
  result = [self updatedConfigurationType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (uint64_t)sb_iconImageStyleConfigurationVariant
{
  result = [self variant];
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