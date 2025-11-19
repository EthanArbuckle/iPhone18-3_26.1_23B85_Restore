@interface CLSCurationModelSpecification
- (BOOL)isEqual:(id)a3;
- (CLSCurationModelSpecification)initWithAsset:(id)a3;
- (CLSCurationModelSpecification)initWithItemInfo:(id)a3 options:(id)a4;
- (CLSCurationModelSpecification)initWithSceneAnalysisVersion:(unint64_t)a3 mediaAnalysisVersion:(unint64_t)a4 faceAnalysisVersion:(unint64_t)a5;
@end

@implementation CLSCurationModelSpecification

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v6 = self->_sceneAnalysisVersion == v7->_sceneAnalysisVersion && self->_mediaAnalysisVersion == v7->_mediaAnalysisVersion && self->_faceAnalysisVersion == v7->_faceAnalysisVersion;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CLSCurationModelSpecification)initWithItemInfo:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"sceneAnalysisVersion"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v5 objectForKeyedSubscript:@"mediaAnalysisVersion"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"faceAnalysisVersion"];

  v11 = [v10 unsignedIntegerValue];

  return [(CLSCurationModelSpecification *)self initWithSceneAnalysisVersion:v7 mediaAnalysisVersion:v9 faceAnalysisVersion:v11];
}

- (CLSCurationModelSpecification)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneAnalysisProperties];
  v6 = [v5 sceneAnalysisVersion];
  v7 = [v4 mediaAnalysisProperties];
  v8 = [v7 mediaAnalysisVersion];
  v9 = [v4 faceAnalysisVersion];

  v10 = [(CLSCurationModelSpecification *)self initWithSceneAnalysisVersion:v6 mediaAnalysisVersion:v8 faceAnalysisVersion:v9];
  return v10;
}

- (CLSCurationModelSpecification)initWithSceneAnalysisVersion:(unint64_t)a3 mediaAnalysisVersion:(unint64_t)a4 faceAnalysisVersion:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = CLSCurationModelSpecification;
  result = [(CLSCurationModelSpecification *)&v9 init];
  if (result)
  {
    result->_sceneAnalysisVersion = a3;
    result->_mediaAnalysisVersion = a4;
    result->_faceAnalysisVersion = a5;
  }

  return result;
}

@end