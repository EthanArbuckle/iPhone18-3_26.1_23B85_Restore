@interface CLSCurationModelSpecification
- (BOOL)isEqual:(id)equal;
- (CLSCurationModelSpecification)initWithAsset:(id)asset;
- (CLSCurationModelSpecification)initWithItemInfo:(id)info options:(id)options;
- (CLSCurationModelSpecification)initWithSceneAnalysisVersion:(unint64_t)version mediaAnalysisVersion:(unint64_t)analysisVersion faceAnalysisVersion:(unint64_t)faceAnalysisVersion;
@end

@implementation CLSCurationModelSpecification

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v6 = self->_sceneAnalysisVersion == v7->_sceneAnalysisVersion && self->_mediaAnalysisVersion == v7->_mediaAnalysisVersion && self->_faceAnalysisVersion == v7->_faceAnalysisVersion;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CLSCurationModelSpecification)initWithItemInfo:(id)info options:(id)options
{
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:@"sceneAnalysisVersion"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [infoCopy objectForKeyedSubscript:@"mediaAnalysisVersion"];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  v10 = [infoCopy objectForKeyedSubscript:@"faceAnalysisVersion"];

  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  return [(CLSCurationModelSpecification *)self initWithSceneAnalysisVersion:unsignedIntegerValue mediaAnalysisVersion:unsignedIntegerValue2 faceAnalysisVersion:unsignedIntegerValue3];
}

- (CLSCurationModelSpecification)initWithAsset:(id)asset
{
  assetCopy = asset;
  sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  mediaAnalysisVersion = [mediaAnalysisProperties mediaAnalysisVersion];
  faceAnalysisVersion = [assetCopy faceAnalysisVersion];

  v10 = [(CLSCurationModelSpecification *)self initWithSceneAnalysisVersion:sceneAnalysisVersion mediaAnalysisVersion:mediaAnalysisVersion faceAnalysisVersion:faceAnalysisVersion];
  return v10;
}

- (CLSCurationModelSpecification)initWithSceneAnalysisVersion:(unint64_t)version mediaAnalysisVersion:(unint64_t)analysisVersion faceAnalysisVersion:(unint64_t)faceAnalysisVersion
{
  v9.receiver = self;
  v9.super_class = CLSCurationModelSpecification;
  result = [(CLSCurationModelSpecification *)&v9 init];
  if (result)
  {
    result->_sceneAnalysisVersion = version;
    result->_mediaAnalysisVersion = analysisVersion;
    result->_faceAnalysisVersion = faceAnalysisVersion;
  }

  return result;
}

@end