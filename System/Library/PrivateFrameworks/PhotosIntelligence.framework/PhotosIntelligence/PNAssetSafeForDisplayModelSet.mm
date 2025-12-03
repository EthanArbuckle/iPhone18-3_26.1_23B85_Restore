@interface PNAssetSafeForDisplayModelSet
- (PNAssetSafeForDisplayModelSet)initWithSceneAnalysisVersion:(signed __int16)version;
@end

@implementation PNAssetSafeForDisplayModelSet

- (PNAssetSafeForDisplayModelSet)initWithSceneAnalysisVersion:(signed __int16)version
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = PNAssetSafeForDisplayModelSet;
  v4 = [(PNAssetSafeForDisplayModelSet *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_sceneAnalysisVersion = versionCopy;
    v6 = [objc_alloc(MEMORY[0x1E69C1A48]) initWithSceneAnalysisVersion:versionCopy];
    ivsNSFWModel = v5->_ivsNSFWModel;
    v5->_ivsNSFWModel = v6;

    v8 = [objc_alloc(MEMORY[0x1E69C1A78]) initWithSceneAnalysisVersion:versionCopy];
    nsfwModel = v5->_nsfwModel;
    v5->_nsfwModel = v8;

    v10 = [objc_alloc(MEMORY[0x1E69C1A98]) initWithSceneAnalysisVersion:versionCopy];
    tabooEventModel = v5->_tabooEventModel;
    v5->_tabooEventModel = v10;
  }

  return v5;
}

@end