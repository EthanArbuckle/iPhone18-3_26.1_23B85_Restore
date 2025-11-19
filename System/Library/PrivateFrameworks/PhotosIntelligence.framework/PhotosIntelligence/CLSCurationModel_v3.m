@interface CLSCurationModel_v3
+ (id)baseSpecificationWithSpecification:(id)a3;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4;
- (BOOL)avoidIfPossibleForKeyAssetWithProcessedSignals:(id)a3 statistics:(id *)a4;
- (BOOL)avoidIfPossibleForKeyAssetWithSignals:(id)a3 statistics:(id *)a4;
- (BOOL)filterForFoodieWithClassification:(id)a3;
- (BOOL)hasPoorResolutionWithAsset:(id)a3;
- (BOOL)isJunkWithJunkClassification:(id)a3;
- (BOOL)isShowcasingFoodWithSceneClassification:(id)a3;
- (BOOL)isTragicFailureWithImageAsset:(id)a3;
- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4;
- (CLSCurationModel_v3)initWithCurationModelSpecification:(id)a3;
- (id)processedSignalsFromSignals:(id)a3;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3;
- (void)enumerateSignalModelsUsingBlock:(id)a3;
@end

@implementation CLSCurationModel_v3

+ (id)baseSpecificationWithSpecification:(id)a3
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CLSCurationModel_v3;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v13, sel_baseSpecificationWithSpecification_, v3);
  v5 = [v3 sceneAnalysisVersion];

  v6 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A78] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = [MEMORY[0x1E69C1A98] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v8)
  {
    v6 = v8;
  }

  v9 = [MEMORY[0x1E69C1A80] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = [MEMORY[0x1E69C1A88] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v10)
  {
    v6 = v10;
  }

  v11 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v6, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v11;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CLSCurationModel_v3_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v12[3] = &unk_1E82A27D0;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v11.receiver = self;
  v11.super_class = CLSCurationModel_v3;
  [(CLSCurationModel_v1 *)&v11 enumerateClassificationBasedSignalModelsUsingBlock:v12];
  v6 = v16;
  if ((v16[3] & 1) == 0)
  {
    nsfwModel = self->_nsfwModel;
    if (!nsfwModel || ((*(v5 + 2))(v5, nsfwModel, v16 + 3), v6 = v16, (v16[3] & 1) == 0))
    {
      tabooEventModel = self->_tabooEventModel;
      if (!tabooEventModel || ((*(v5 + 2))(v5, tabooEventModel, v6 + 3), v6 = v16, (v16[3] & 1) == 0))
      {
        potentialLandmarkModel = self->_potentialLandmarkModel;
        if (!potentialLandmarkModel || ((*(v5 + 2))(v5, potentialLandmarkModel, v6 + 3), v6 = v16, (v16[3] & 1) == 0))
        {
          sdModel = self->_sdModel;
          if (sdModel)
          {
            (*(v5 + 2))(v5, sdModel, v6 + 3);
          }
        }
      }
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (void)enumerateSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CLSCurationModel_v3_enumerateSignalModelsUsingBlock___block_invoke;
  v12[3] = &unk_1E82A27A8;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v11.receiver = self;
  v11.super_class = CLSCurationModel_v3;
  [(CLSCurationModel_v1 *)&v11 enumerateSignalModelsUsingBlock:v12];
  v6 = v16;
  if ((v16[3] & 1) == 0)
  {
    nsfwModel = self->_nsfwModel;
    if (!nsfwModel || ((*(v5 + 2))(v5, nsfwModel, v16 + 3), v6 = v16, (v16[3] & 1) == 0))
    {
      tabooEventModel = self->_tabooEventModel;
      if (!tabooEventModel || ((*(v5 + 2))(v5, tabooEventModel, v6 + 3), v6 = v16, (v16[3] & 1) == 0))
      {
        potentialLandmarkModel = self->_potentialLandmarkModel;
        if (!potentialLandmarkModel || ((*(v5 + 2))(v5, potentialLandmarkModel, v6 + 3), v6 = v16, (v16[3] & 1) == 0))
        {
          sdModel = self->_sdModel;
          if (sdModel)
          {
            (*(v5 + 2))(v5, sdModel, v6 + 3);
          }
        }
      }
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (BOOL)isShowcasingFoodWithSceneClassification:(id)a3
{
  sdModel = self->_sdModel;
  v4 = a3;
  v5 = [(CLSSDModel *)sdModel foodDrinkNode];
  v6 = [v5 passesWithSignal:v4];

  return v6;
}

- (id)processedSignalsFromSignals:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CLSAssetProcessedSignals);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CLSCurationModel_v3_processedSignalsFromSignals___block_invoke;
  v11[3] = &unk_1E82A25D8;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [(CLSCurationModel_v3 *)self enumerateClassificationBasedSignalModelsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (BOOL)filterForFoodieWithClassification:(id)a3
{
  v4 = a3;
  v5 = [(CLSCurationModel_v1 *)self junkClassificationModel];
  v6 = [v5 medicalReferenceNode];
  v7 = [v6 passesWithSignal:v4];

  if (v7 & 1) != 0 || (-[CLSTabooEventModel bloodNode](self->_tabooEventModel, "bloodNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesHighRecallWithSignal:v4], v8, (v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = [(CLSTabooEventModel *)self->_tabooEventModel hospitalNode];
    v10 = [v11 passesHighRecallWithSignal:v4];
  }

  return v10;
}

- (BOOL)isJunkWithJunkClassification:(id)a3
{
  v4 = a3;
  if (self->_r14j9IsAvailable)
  {
    v5 = [(CLSCurationModel_v1 *)self junkClassificationModel];
    v6 = [v5 receiptOrDocumentNode];
    v7 = [v6 passesWithSignal:v4];

    if (v7 & 1) != 0 || ([v5 screenshotNode], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "passesWithSignal:", v4), v8, (v9))
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 textDocumentNode];
      v10 = [v11 passesWithSignal:v4];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CLSCurationModel_v3;
    v10 = [(CLSCurationModel_v1 *)&v13 isJunkWithJunkClassification:v4];
  }

  return v10;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v3;
  if ([(CLSCurationModel_v1 *)&v10 isUtilityForMemoriesWithAsset:v6 userFeedbackCalculator:a4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 clsProcessedSignals];
    v7 = [(CLSCurationModel_v3 *)self isUtilityForMemoriesWithProcessedSignals:v8];
  }

  return v7;
}

- (BOOL)hasPoorResolutionWithAsset:(id)a3
{
  v3 = a3;
  if ([v3 isPhoto])
  {
    v4 = 480;
  }

  else
  {
    v4 = 600;
  }

  v5 = [v3 pixelWidth];
  v6 = [v3 pixelHeight];

  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return v7 < v4;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4
{
  v6 = a3;
  if ([v6 isPhoto] && objc_msgSend(v6, "clsHasPoorResolution"))
  {
    ++a4->var11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CLSCurationModel_v3;
    if (![(CLSCurationModel_v1 *)&v12 avoidIfPossibleForKeyAssetWithAsset:v6 statistics:a4])
    {
      v7 = [v6 clsProcessedSignals];
      v8 = [(CLSCurationModel_v3 *)self avoidIfPossibleForKeyAssetWithProcessedSignals:v7 statistics:&a4->var13];

      if (!v8)
      {
        v11 = [v6 clsSceneClassifications];
        v9 = [(CLSCurationModel_v3 *)self avoidIfPossibleForKeyAssetWithSignals:v11 statistics:&a4->var14];

        goto LABEL_7;
      }
    }
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)avoidIfPossibleForKeyAssetWithProcessedSignals:(id)a3 statistics:(id *)a4
{
  v5 = [a3 isRecallinglyNSFWExplicit];
  if (v5)
  {
    ++a4->var0;
  }

  return v5;
}

- (BOOL)avoidIfPossibleForKeyAssetWithSignals:(id)a3 statistics:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_r14j9IsAvailable)
  {
    v7 = [(CLSCurationModel_v1 *)self junkClassificationModel];
    v8 = [v7 tragicFailureNode];
  }

  else
  {
    v8 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v8 passesHighRecallWithSignal:v13])
        {
          ++a4->var0;
LABEL_36:
          v25 = 1;
          goto LABEL_37;
        }

        tabooEventModel = self->_tabooEventModel;
        if (tabooEventModel)
        {
          v15 = [(CLSTabooEventModel *)tabooEventModel bloodNode];
          if ([v15 passesHighRecallWithSignal:v13])
          {
            var1 = a4->var1;
            a4->var1 = var1 + 1;

            if (var1 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          v17 = [(CLSTabooEventModel *)self->_tabooEventModel funeralNode];
          if ([v17 passesHighRecallWithSignal:v13])
          {
            var2 = a4->var2;
            a4->var2 = var2 + 1;

            if (var2 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          v19 = [(CLSTabooEventModel *)self->_tabooEventModel hospitalNode];
          if ([v19 passesHighRecallWithSignal:v13])
          {
            var3 = a4->var3;
            a4->var3 = var3 + 1;

            if (var3 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          v21 = [(CLSTabooEventModel *)self->_tabooEventModel vehicleCrashNode];
          if ([v21 passesHighRecallWithSignal:v13])
          {
            var4 = a4->var4;
            a4->var4 = var4 + 1;

            if (var4 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          v23 = [(CLSTabooEventModel *)self->_tabooEventModel warNode];
          if ([v23 passesHighRecallWithSignal:v13])
          {
            var5 = a4->var5;
            a4->var5 = var5 + 1;

            if (var5 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v25 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_37:

  return v25;
}

- (BOOL)isTragicFailureWithImageAsset:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_r14j9IsAvailable)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 clsSceneClassifications];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    v8 = 0.0;
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 extendedSceneIdentifier] == 2147483631)
          {
            [v12 confidence];
            v8 = v13;
            goto LABEL_12;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v14 = [(CLSCurationModel_v1 *)self junkClassificationModel];
    v15 = [v14 tragicFailureNode];

    if ([v15 passesHighPrecisionWithConfidence:v8])
    {
      v16 = 1;
    }

    else if ([v15 passesHighRecallWithConfidence:v8])
    {
      v16 = [v5 clsIsBlurry];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = CLSCurationModel_v3;
    v16 = [(CLSCurationModel_v1 *)&v22 isTragicFailureWithImageAsset:v4];
  }

  return v16;
}

- (CLSCurationModel_v3)initWithCurationModelSpecification:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CLSCurationModel_v3;
  v5 = [(CLSCurationModel_v1 *)&v17 initWithCurationModelSpecification:v4];
  if (v5)
  {
    v6 = [v4 sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A78]) initWithSceneAnalysisVersion:v6];
    nsfwModel = v5->_nsfwModel;
    v5->_nsfwModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A98]) initWithSceneAnalysisVersion:v6];
    tabooEventModel = v5->_tabooEventModel;
    v5->_tabooEventModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A80]) initWithSceneAnalysisVersion:v6];
    potentialLandmarkModel = v5->_potentialLandmarkModel;
    v5->_potentialLandmarkModel = v11;

    v13 = [objc_alloc(MEMORY[0x1E69C1A88]) initWithSceneAnalysisVersion:v6];
    sdModel = v5->_sdModel;
    v5->_sdModel = v13;

    v15 = [(CLSCurationModel_v1 *)v5 junkClassificationModel];
    v5->_r14j9IsAvailable = [v15 version] > 0x27;
  }

  return v5;
}

@end