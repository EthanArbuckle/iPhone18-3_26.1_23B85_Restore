@interface SBIdleTimerConfigurationDisablesTimerSetting
- (SBIdleTimerConfigurationDisablesTimerSetting)initWithPrecedence:(unint64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBIdleTimerConfigurationDisablesTimerSetting

- (SBIdleTimerConfigurationDisablesTimerSetting)initWithPrecedence:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBIdleTimerConfigurationDisablesTimerSetting;
  result = [(SBIdleTimerConfigurationDisablesTimerSetting *)&v5 init];
  if (result)
  {
    result->_precedence = a3;
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(SBIdleTimerConfigurationDisablesTimerSetting *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = NSStringFromSBIdleTimerConfigSettingPrecedence();
  [v2 appendString:v3 withName:@"precedence"];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerConfigurationDisablesTimerSetting *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end