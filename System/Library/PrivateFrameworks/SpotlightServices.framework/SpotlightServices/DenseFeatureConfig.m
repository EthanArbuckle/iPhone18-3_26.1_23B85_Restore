@interface DenseFeatureConfig
- (DenseFeatureConfig)init;
- (DenseFeatureConfig)initWithConfig:(id)a3 name:(id)a4;
@end

@implementation DenseFeatureConfig

- (DenseFeatureConfig)init
{
  v3.receiver = self;
  v3.super_class = DenseFeatureConfig;
  result = [(FeatureConfig *)&v3 init];
  if (result)
  {
    result->_defaultValue = 0.0;
    result->_normalization = 0;
    result->_transform = 0;
  }

  return result;
}

- (DenseFeatureConfig)initWithConfig:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = DenseFeatureConfig;
  v8 = [(FeatureConfig *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v20.receiver = v8;
    v20.super_class = DenseFeatureConfig;
    [(FeatureConfig *)&v20 setName:v7];
    [v6 defaultValue];
    v9->_defaultValue = v10;
    v9->_normalization = [v6 normalization];
    v11 = [v6 normalizationType];
    normalizationType = v9->_normalizationType;
    v9->_normalizationType = v11;

    [v6 normalizationMin];
    v9->_normalizationMin = v13;
    [v6 normalizationMax];
    v9->_normalizationMax = v14;
    v9->_transform = [v6 transform];
    v15 = [v6 transformType];
    transformType = v9->_transformType;
    v9->_transformType = v15;

    v17 = [v6 originalFeatureName];
    originalFeatureName = v9->_originalFeatureName;
    v9->_originalFeatureName = v17;
  }

  return v9;
}

@end