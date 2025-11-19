@interface PRXFlowConfiguration
+ (PRXFlowConfiguration)defaultConfiguration;
- (PRXFlowConfiguration)init;
@end

@implementation PRXFlowConfiguration

+ (PRXFlowConfiguration)defaultConfiguration
{
  if (defaultConfiguration_onceToken != -1)
  {
    +[PRXFlowConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration_flowConfiguration;

  return v3;
}

uint64_t __44__PRXFlowConfiguration_defaultConfiguration__block_invoke()
{
  v0 = objc_alloc_init(PRXFlowConfiguration);
  v1 = defaultConfiguration_flowConfiguration;
  defaultConfiguration_flowConfiguration = v0;

  v2 = defaultConfiguration_flowConfiguration;

  return [v2 setSupportsDarkMode:1];
}

- (PRXFlowConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PRXFlowConfiguration;
  result = [(PRXFlowConfiguration *)&v3 init];
  result->_overrideInterfaceStyle = 0;
  return result;
}

@end