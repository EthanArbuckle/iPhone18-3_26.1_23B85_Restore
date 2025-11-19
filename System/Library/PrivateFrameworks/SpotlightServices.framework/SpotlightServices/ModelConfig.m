@interface ModelConfig
- (ModelConfig)init;
@end

@implementation ModelConfig

- (ModelConfig)init
{
  v7.receiver = self;
  v7.super_class = ModelConfig;
  v2 = [(ModelConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    featureNames = v2->_featureNames;
    v2->_featureNames = 0;

    v3->_threshold = 0.0;
    model = v3->_model;
    v3->_model = 0;
  }

  return v3;
}

@end