@interface SBIdleTimerConfigurationDisablesTimerSetting
- (SBIdleTimerConfigurationDisablesTimerSetting)initWithPrecedence:(unint64_t)precedence;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBIdleTimerConfigurationDisablesTimerSetting

- (SBIdleTimerConfigurationDisablesTimerSetting)initWithPrecedence:(unint64_t)precedence
{
  v5.receiver = self;
  v5.super_class = SBIdleTimerConfigurationDisablesTimerSetting;
  result = [(SBIdleTimerConfigurationDisablesTimerSetting *)&v5 init];
  if (result)
  {
    result->_precedence = precedence;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerConfigurationDisablesTimerSetting *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = NSStringFromSBIdleTimerConfigSettingPrecedence();
  [v2 appendString:v3 withName:@"precedence"];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerConfigurationDisablesTimerSetting *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end