@interface IdFeatureConfig
- (IdFeatureConfig)init;
@end

@implementation IdFeatureConfig

- (IdFeatureConfig)init
{
  v3.receiver = self;
  v3.super_class = IdFeatureConfig;
  result = [(FeatureConfig *)&v3 init];
  if (result)
  {
    result->_hashing = 0;
  }

  return result;
}

@end