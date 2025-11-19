@interface CLSCurationModel_v5
+ (id)baseSpecificationWithSpecification:(id)a3;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4;
- (BOOL)isShowcasingFoodWithAsset:(id)a3;
- (CLSCurationModel_v5)initWithCurationModelSpecification:(id)a3;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3;
- (void)enumerateSignalModelsUsingBlock:(id)a3;
@end

@implementation CLSCurationModel_v5

+ (id)baseSpecificationWithSpecification:(id)a3
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel_v5;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, v3);
  v5 = [v3 sceneAnalysisVersion];

  v6 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1AA8] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = [MEMORY[0x1E69C1A20] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v8)
  {
    v6 = v8;
  }

  v9 = [MEMORY[0x1E69C1A28] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v6, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CLSCurationModel_v5;
  if ([(CLSCurationModel_v4 *)&v11 avoidIfPossibleForKeyAssetWithAsset:v6 statistics:a4])
  {
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E6978B08];
  v8 = [v6 clsFaceInformationSummary];
  [v8 userFeedbackScore];
  LOBYTE(v7) = [v7 score:? meetsScoreThreshold:?];

  if ((v7 & 1) == 0)
  {
    ++a4->var12;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CLSCurationModel_v5_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v8[3] = &unk_1E82A27D0;
  v5 = v4;
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

- (void)enumerateSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CLSCurationModel_v5_enumerateSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27A8;
  v5 = v4;
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

- (BOOL)isShowcasingFoodWithAsset:(id)a3
{
  v3 = [a3 clsProcessedSignals];
  v4 = [v3 isShowcasingFood];

  return v4;
}

- (CLSCurationModel_v5)initWithCurationModelSpecification:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CLSCurationModel_v5;
  v5 = [(CLSCurationModel_v4 *)&v14 initWithCurationModelSpecification:v4];
  if (v5)
  {
    v6 = [v4 sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1AA8]) initWithSceneAnalysisVersion:v6];
    wallpaperScoreModel = v5->_wallpaperScoreModel;
    v5->_wallpaperScoreModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A20]) initWithSceneAnalysisVersion:v6];
    CLIPprintModel = v5->_CLIPprintModel;
    v5->_CLIPprintModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A28]) initWithSceneAnalysisVersion:v6];
    cityNatureModel = v5->_cityNatureModel;
    v5->_cityNatureModel = v11;
  }

  return v5;
}

@end