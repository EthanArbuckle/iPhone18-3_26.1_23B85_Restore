@interface WFPlatterConfiguration
+ (id)defaultConfiguration;
- (WFPlatterConfiguration)init;
@end

@implementation WFPlatterConfiguration

- (WFPlatterConfiguration)init
{
  v6.receiver = self;
  v6.super_class = WFPlatterConfiguration;
  v2 = [(WFPlatterConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_blursBackground = 1;
    backgroundColor = v2->_backgroundColor;
    v2->_backgroundColor = 0;
  }

  return v3;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(WFPlatterConfiguration);

  return v2;
}

@end