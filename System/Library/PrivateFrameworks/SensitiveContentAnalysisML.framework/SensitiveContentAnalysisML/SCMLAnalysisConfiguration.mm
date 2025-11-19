@interface SCMLAnalysisConfiguration
- (SCMLAnalysisConfiguration)initWithOptions:(id)a3;
@end

@implementation SCMLAnalysisConfiguration

- (SCMLAnalysisConfiguration)initWithOptions:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCMLAnalysisConfiguration;
  v5 = [(SCMLAnalysisConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_deviceType = 0;
    v7 = [v4 objectForKeyedSubscript:@"SCMLAnalysisConfigurationDeviceType"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"SCMLAnalysisConfigurationDeviceType"];
      v6->_deviceType = [v8 unsignedIntValue];
    }
  }

  return v6;
}

@end