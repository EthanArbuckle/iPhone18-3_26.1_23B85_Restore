@interface SCMLAnalysisConfiguration
- (SCMLAnalysisConfiguration)initWithOptions:(id)options;
@end

@implementation SCMLAnalysisConfiguration

- (SCMLAnalysisConfiguration)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = SCMLAnalysisConfiguration;
  v5 = [(SCMLAnalysisConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_deviceType = 0;
    v7 = [optionsCopy objectForKeyedSubscript:@"SCMLAnalysisConfigurationDeviceType"];

    if (v7)
    {
      v8 = [optionsCopy objectForKeyedSubscript:@"SCMLAnalysisConfigurationDeviceType"];
      v6->_deviceType = [v8 unsignedIntValue];
    }
  }

  return v6;
}

@end