@interface CLSCurationModel_v5
+ (id)baseSpecificationWithSpecification:(id)specification;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics;
- (BOOL)isShowcasingFoodWithAsset:(id)asset;
- (CLSCurationModel_v5)initWithCurationModelSpecification:(id)specification;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block;
- (void)enumerateSignalModelsUsingBlock:(id)block;
@end

@implementation CLSCurationModel_v5

+ (id)baseSpecificationWithSpecification:(id)specification
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel_v5;
  specificationCopy = specification;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, specificationCopy);
  sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];

  sceneAnalysisVersion2 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1AA8] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v7)
  {
    sceneAnalysisVersion2 = v7;
  }

  v8 = [MEMORY[0x1E69C1A20] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v8)
  {
    sceneAnalysisVersion2 = v8;
  }

  v9 = [MEMORY[0x1E69C1A28] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v9)
  {
    sceneAnalysisVersion2 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", sceneAnalysisVersion2, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics
{
  assetCopy = asset;
  v11.receiver = self;
  v11.super_class = CLSCurationModel_v5;
  if ([(CLSCurationModel_v4 *)&v11 avoidIfPossibleForKeyAssetWithAsset:assetCopy statistics:statistics])
  {
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E6978B08];
  clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
  [clsFaceInformationSummary userFeedbackScore];
  LOBYTE(v7) = [v7 score:? meetsScoreThreshold:?];

  if ((v7 & 1) == 0)
  {
    ++statistics->var12;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CLSCurationModel_v5_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v8[3] = &unk_1E82A27D0;
  v5 = blockCopy;
  v9 = v5;
  v10 = &v11;
  v7.receiver = self;
  v7.super_class = CLSCurationModel_v5;
  [(CLSCurationModel_v4 *)&v7 enumerateClassificationBasedSignalModelsUsingBlock:v8];
  if ((v12[3] & 1) == 0)
  {
    cityNatureModel = self->_cityNatureModel;
    if (cityNatureModel)
    {
      (*(v5 + 2))(v5, cityNatureModel, v12 + 3);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)enumerateSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CLSCurationModel_v5_enumerateSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27A8;
  v5 = blockCopy;
  v12 = v5;
  v13 = &v14;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v5;
  [(CLSCurationModel_v4 *)&v10 enumerateSignalModelsUsingBlock:v11];
  v6 = v15;
  if ((v15[3] & 1) == 0)
  {
    wallpaperScoreModel = self->_wallpaperScoreModel;
    if (!wallpaperScoreModel || ((*(v5 + 2))(v5, wallpaperScoreModel, v15 + 3), v6 = v15, (v15[3] & 1) == 0))
    {
      CLIPprintModel = self->_CLIPprintModel;
      if (!CLIPprintModel || ((*(v5 + 2))(v5, CLIPprintModel, v6 + 3), v6 = v15, (v15[3] & 1) == 0))
      {
        cityNatureModel = self->_cityNatureModel;
        if (cityNatureModel)
        {
          (*(v5 + 2))(v5, cityNatureModel, v6 + 3);
        }
      }
    }
  }

  _Block_object_dispose(&v14, 8);
}

- (BOOL)isShowcasingFoodWithAsset:(id)asset
{
  clsProcessedSignals = [asset clsProcessedSignals];
  isShowcasingFood = [clsProcessedSignals isShowcasingFood];

  return isShowcasingFood;
}

- (CLSCurationModel_v5)initWithCurationModelSpecification:(id)specification
{
  specificationCopy = specification;
  v14.receiver = self;
  v14.super_class = CLSCurationModel_v5;
  v5 = [(CLSCurationModel_v4 *)&v14 initWithCurationModelSpecification:specificationCopy];
  if (v5)
  {
    sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1AA8]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    wallpaperScoreModel = v5->_wallpaperScoreModel;
    v5->_wallpaperScoreModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A20]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    CLIPprintModel = v5->_CLIPprintModel;
    v5->_CLIPprintModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A28]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    cityNatureModel = v5->_cityNatureModel;
    v5->_cityNatureModel = v11;
  }

  return v5;
}

@end