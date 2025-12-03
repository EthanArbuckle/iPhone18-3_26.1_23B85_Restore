@interface CLSCurationModel_v3
+ (id)baseSpecificationWithSpecification:(id)specification;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics;
- (BOOL)avoidIfPossibleForKeyAssetWithProcessedSignals:(id)signals statistics:(id *)statistics;
- (BOOL)avoidIfPossibleForKeyAssetWithSignals:(id)signals statistics:(id *)statistics;
- (BOOL)filterForFoodieWithClassification:(id)classification;
- (BOOL)hasPoorResolutionWithAsset:(id)asset;
- (BOOL)isJunkWithJunkClassification:(id)classification;
- (BOOL)isShowcasingFoodWithSceneClassification:(id)classification;
- (BOOL)isTragicFailureWithImageAsset:(id)asset;
- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator;
- (CLSCurationModel_v3)initWithCurationModelSpecification:(id)specification;
- (id)processedSignalsFromSignals:(id)signals;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block;
- (void)enumerateSignalModelsUsingBlock:(id)block;
@end

@implementation CLSCurationModel_v3

+ (id)baseSpecificationWithSpecification:(id)specification
{
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___CLSCurationModel_v3;
  specificationCopy = specification;
  v4 = objc_msgSendSuper2(&v13, sel_baseSpecificationWithSpecification_, specificationCopy);
  sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];

  sceneAnalysisVersion2 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A78] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v7)
  {
    sceneAnalysisVersion2 = v7;
  }

  v8 = [MEMORY[0x1E69C1A98] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v8)
  {
    sceneAnalysisVersion2 = v8;
  }

  v9 = [MEMORY[0x1E69C1A80] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v9)
  {
    sceneAnalysisVersion2 = v9;
  }

  v10 = [MEMORY[0x1E69C1A88] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v10)
  {
    sceneAnalysisVersion2 = v10;
  }

  v11 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", sceneAnalysisVersion2, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v11;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CLSCurationModel_v3_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v12[3] = &unk_1E82A27D0;
  v5 = blockCopy;
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

- (void)enumerateSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CLSCurationModel_v3_enumerateSignalModelsUsingBlock___block_invoke;
  v12[3] = &unk_1E82A27A8;
  v5 = blockCopy;
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

- (BOOL)isShowcasingFoodWithSceneClassification:(id)classification
{
  sdModel = self->_sdModel;
  classificationCopy = classification;
  foodDrinkNode = [(CLSSDModel *)sdModel foodDrinkNode];
  v6 = [foodDrinkNode passesWithSignal:classificationCopy];

  return v6;
}

- (id)processedSignalsFromSignals:(id)signals
{
  signalsCopy = signals;
  v5 = objc_alloc_init(CLSAssetProcessedSignals);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CLSCurationModel_v3_processedSignalsFromSignals___block_invoke;
  v11[3] = &unk_1E82A25D8;
  v12 = signalsCopy;
  v6 = v5;
  v13 = v6;
  v7 = signalsCopy;
  [(CLSCurationModel_v3 *)self enumerateClassificationBasedSignalModelsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (BOOL)filterForFoodieWithClassification:(id)classification
{
  classificationCopy = classification;
  junkClassificationModel = [(CLSCurationModel_v1 *)self junkClassificationModel];
  medicalReferenceNode = [junkClassificationModel medicalReferenceNode];
  v7 = [medicalReferenceNode passesWithSignal:classificationCopy];

  if (v7 & 1) != 0 || (-[CLSTabooEventModel bloodNode](self->_tabooEventModel, "bloodNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesHighRecallWithSignal:classificationCopy], v8, (v9))
  {
    v10 = 1;
  }

  else
  {
    hospitalNode = [(CLSTabooEventModel *)self->_tabooEventModel hospitalNode];
    v10 = [hospitalNode passesHighRecallWithSignal:classificationCopy];
  }

  return v10;
}

- (BOOL)isJunkWithJunkClassification:(id)classification
{
  classificationCopy = classification;
  if (self->_r14j9IsAvailable)
  {
    junkClassificationModel = [(CLSCurationModel_v1 *)self junkClassificationModel];
    receiptOrDocumentNode = [junkClassificationModel receiptOrDocumentNode];
    v7 = [receiptOrDocumentNode passesWithSignal:classificationCopy];

    if (v7 & 1) != 0 || ([junkClassificationModel screenshotNode], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "passesWithSignal:", classificationCopy), v8, (v9))
    {
      v10 = 1;
    }

    else
    {
      textDocumentNode = [junkClassificationModel textDocumentNode];
      v10 = [textDocumentNode passesWithSignal:classificationCopy];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CLSCurationModel_v3;
    v10 = [(CLSCurationModel_v1 *)&v13 isJunkWithJunkClassification:classificationCopy];
  }

  return v10;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator
{
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v3;
  if ([(CLSCurationModel_v1 *)&v10 isUtilityForMemoriesWithAsset:assetCopy userFeedbackCalculator:calculator])
  {
    v7 = 1;
  }

  else
  {
    clsProcessedSignals = [assetCopy clsProcessedSignals];
    v7 = [(CLSCurationModel_v3 *)self isUtilityForMemoriesWithProcessedSignals:clsProcessedSignals];
  }

  return v7;
}

- (BOOL)hasPoorResolutionWithAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isPhoto])
  {
    v4 = 480;
  }

  else
  {
    v4 = 600;
  }

  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];

  if (pixelWidth >= pixelHeight)
  {
    v7 = pixelHeight;
  }

  else
  {
    v7 = pixelWidth;
  }

  return v7 < v4;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics
{
  assetCopy = asset;
  if ([assetCopy isPhoto] && objc_msgSend(assetCopy, "clsHasPoorResolution"))
  {
    ++statistics->var11;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CLSCurationModel_v3;
    if (![(CLSCurationModel_v1 *)&v12 avoidIfPossibleForKeyAssetWithAsset:assetCopy statistics:statistics])
    {
      clsProcessedSignals = [assetCopy clsProcessedSignals];
      v8 = [(CLSCurationModel_v3 *)self avoidIfPossibleForKeyAssetWithProcessedSignals:clsProcessedSignals statistics:&statistics->var13];

      if (!v8)
      {
        clsSceneClassifications = [assetCopy clsSceneClassifications];
        v9 = [(CLSCurationModel_v3 *)self avoidIfPossibleForKeyAssetWithSignals:clsSceneClassifications statistics:&statistics->var14];

        goto LABEL_7;
      }
    }
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)avoidIfPossibleForKeyAssetWithProcessedSignals:(id)signals statistics:(id *)statistics
{
  isRecallinglyNSFWExplicit = [signals isRecallinglyNSFWExplicit];
  if (isRecallinglyNSFWExplicit)
  {
    ++statistics->var0;
  }

  return isRecallinglyNSFWExplicit;
}

- (BOOL)avoidIfPossibleForKeyAssetWithSignals:(id)signals statistics:(id *)statistics
{
  v33 = *MEMORY[0x1E69E9840];
  signalsCopy = signals;
  if (self->_r14j9IsAvailable)
  {
    junkClassificationModel = [(CLSCurationModel_v1 *)self junkClassificationModel];
    tragicFailureNode = [junkClassificationModel tragicFailureNode];
  }

  else
  {
    tragicFailureNode = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = signalsCopy;
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
        if ([tragicFailureNode passesHighRecallWithSignal:v13])
        {
          ++statistics->var0;
LABEL_36:
          v25 = 1;
          goto LABEL_37;
        }

        tabooEventModel = self->_tabooEventModel;
        if (tabooEventModel)
        {
          bloodNode = [(CLSTabooEventModel *)tabooEventModel bloodNode];
          if ([bloodNode passesHighRecallWithSignal:v13])
          {
            var1 = statistics->var1;
            statistics->var1 = var1 + 1;

            if (var1 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          funeralNode = [(CLSTabooEventModel *)self->_tabooEventModel funeralNode];
          if ([funeralNode passesHighRecallWithSignal:v13])
          {
            var2 = statistics->var2;
            statistics->var2 = var2 + 1;

            if (var2 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          hospitalNode = [(CLSTabooEventModel *)self->_tabooEventModel hospitalNode];
          if ([hospitalNode passesHighRecallWithSignal:v13])
          {
            var3 = statistics->var3;
            statistics->var3 = var3 + 1;

            if (var3 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          vehicleCrashNode = [(CLSTabooEventModel *)self->_tabooEventModel vehicleCrashNode];
          if ([vehicleCrashNode passesHighRecallWithSignal:v13])
          {
            var4 = statistics->var4;
            statistics->var4 = var4 + 1;

            if (var4 != -1)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }

          warNode = [(CLSTabooEventModel *)self->_tabooEventModel warNode];
          if ([warNode passesHighRecallWithSignal:v13])
          {
            var5 = statistics->var5;
            statistics->var5 = var5 + 1;

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

- (BOOL)isTragicFailureWithImageAsset:(id)asset
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = assetCopy;
  if (self->_r14j9IsAvailable)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    clsSceneClassifications = [assetCopy clsSceneClassifications];
    v7 = [clsSceneClassifications countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(clsSceneClassifications);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 extendedSceneIdentifier] == 2147483631)
          {
            [v12 confidence];
            v8 = v13;
            goto LABEL_12;
          }
        }

        v9 = [clsSceneClassifications countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    junkClassificationModel = [(CLSCurationModel_v1 *)self junkClassificationModel];
    tragicFailureNode = [junkClassificationModel tragicFailureNode];

    if ([tragicFailureNode passesHighPrecisionWithConfidence:v8])
    {
      clsIsBlurry = 1;
    }

    else if ([tragicFailureNode passesHighRecallWithConfidence:v8])
    {
      clsIsBlurry = [v5 clsIsBlurry];
    }

    else
    {
      clsIsBlurry = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = CLSCurationModel_v3;
    clsIsBlurry = [(CLSCurationModel_v1 *)&v22 isTragicFailureWithImageAsset:assetCopy];
  }

  return clsIsBlurry;
}

- (CLSCurationModel_v3)initWithCurationModelSpecification:(id)specification
{
  specificationCopy = specification;
  v17.receiver = self;
  v17.super_class = CLSCurationModel_v3;
  v5 = [(CLSCurationModel_v1 *)&v17 initWithCurationModelSpecification:specificationCopy];
  if (v5)
  {
    sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A78]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    nsfwModel = v5->_nsfwModel;
    v5->_nsfwModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A98]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    tabooEventModel = v5->_tabooEventModel;
    v5->_tabooEventModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A80]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    potentialLandmarkModel = v5->_potentialLandmarkModel;
    v5->_potentialLandmarkModel = v11;

    v13 = [objc_alloc(MEMORY[0x1E69C1A88]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    sdModel = v5->_sdModel;
    v5->_sdModel = v13;

    junkClassificationModel = [(CLSCurationModel_v1 *)v5 junkClassificationModel];
    v5->_r14j9IsAvailable = [junkClassificationModel version] > 0x27;
  }

  return v5;
}

@end