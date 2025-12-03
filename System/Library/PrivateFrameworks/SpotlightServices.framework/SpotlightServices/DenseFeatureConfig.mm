@interface DenseFeatureConfig
- (DenseFeatureConfig)init;
- (DenseFeatureConfig)initWithConfig:(id)config name:(id)name;
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

- (DenseFeatureConfig)initWithConfig:(id)config name:(id)name
{
  configCopy = config;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = DenseFeatureConfig;
  v8 = [(FeatureConfig *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v20.receiver = v8;
    v20.super_class = DenseFeatureConfig;
    [(FeatureConfig *)&v20 setName:nameCopy];
    [configCopy defaultValue];
    v9->_defaultValue = v10;
    v9->_normalization = [configCopy normalization];
    normalizationType = [configCopy normalizationType];
    normalizationType = v9->_normalizationType;
    v9->_normalizationType = normalizationType;

    [configCopy normalizationMin];
    v9->_normalizationMin = v13;
    [configCopy normalizationMax];
    v9->_normalizationMax = v14;
    v9->_transform = [configCopy transform];
    transformType = [configCopy transformType];
    transformType = v9->_transformType;
    v9->_transformType = transformType;

    originalFeatureName = [configCopy originalFeatureName];
    originalFeatureName = v9->_originalFeatureName;
    v9->_originalFeatureName = originalFeatureName;
  }

  return v9;
}

@end