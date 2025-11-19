@interface FeatureConfig
- (FeatureConfig)init;
@end

@implementation FeatureConfig

- (FeatureConfig)init
{
  v6.receiver = self;
  v6.super_class = FeatureConfig;
  v2 = [(FeatureConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;
  }

  return v3;
}

@end