@interface PPScoreInterpreterCoreMLModelFeature
- (PPScoreInterpreterCoreMLModelFeature)initWithFeatureName:(id)a3 multiArraySize:(unint64_t)a4;
@end

@implementation PPScoreInterpreterCoreMLModelFeature

- (PPScoreInterpreterCoreMLModelFeature)initWithFeatureName:(id)a3 multiArraySize:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PPScoreInterpreterCoreMLModelFeature;
  v7 = [(PPScoreInterpreterCoreMLModelFeature *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_multiArraySize = a4;
    v9 = [v6 copy];
    featureName = v8->_featureName;
    v8->_featureName = v9;

    v11 = 5;
    if (!v8->_multiArraySize)
    {
      v11 = 2;
    }

    v8->_featureType = v11;
  }

  return v8;
}

@end