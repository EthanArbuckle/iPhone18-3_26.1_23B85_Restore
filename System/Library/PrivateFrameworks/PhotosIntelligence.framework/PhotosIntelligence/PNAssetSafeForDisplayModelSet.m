@interface PNAssetSafeForDisplayModelSet
- (PNAssetSafeForDisplayModelSet)initWithSceneAnalysisVersion:(signed __int16)a3;
@end

@implementation PNAssetSafeForDisplayModelSet

- (PNAssetSafeForDisplayModelSet)initWithSceneAnalysisVersion:(signed __int16)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = PNAssetSafeForDisplayModelSet;
  v4 = [(PNAssetSafeForDisplayModelSet *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_sceneAnalysisVersion = v3;
    v6 = [objc_alloc(MEMORY[0x1E69C1A48]) initWithSceneAnalysisVersion:v3];
    ivsNSFWModel = v5->_ivsNSFWModel;
    v5->_ivsNSFWModel = v6;

    v8 = [objc_alloc(MEMORY[0x1E69C1A78]) initWithSceneAnalysisVersion:v3];
    nsfwModel = v5->_nsfwModel;
    v5->_nsfwModel = v8;

    v10 = [objc_alloc(MEMORY[0x1E69C1A98]) initWithSceneAnalysisVersion:v3];
    tabooEventModel = v5->_tabooEventModel;
    v5->_tabooEventModel = v10;
  }

  return v5;
}

@end