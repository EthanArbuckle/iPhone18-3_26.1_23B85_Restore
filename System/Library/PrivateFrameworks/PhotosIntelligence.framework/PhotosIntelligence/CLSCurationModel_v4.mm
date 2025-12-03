@interface CLSCurationModel_v4
+ (id)baseSpecificationWithSpecification:(id)specification;
- (BOOL)assetIsJunkWithSceneClassifications:(id)classifications confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)junking confidenceThresholdBySceneIdentifierForJunkingScenes:(id)scenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)basedJunking forMemories:(BOOL)memories;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics;
- (BOOL)isMemeExclusiveWithAsset:(id)asset;
- (BOOL)isMemeWithAsset:(id)asset;
- (BOOL)isSemDevSceneDetectedForIdentifier:(unsigned int)identifier withSceneClassification:(id)classification;
- (BOOL)isUtilityForMemoriesForImageAsset:(id)asset;
- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator blockSocialMediaImportedAssets:(BOOL)assets;
- (BOOL)isUtilityForMemoriesWithVideoAsset:(id)asset;
- (BOOL)isUtilityForSyndicationWithAsset:(id)asset;
- (BOOL)isUtilityForVideoAsset:(id)asset;
- (BOOL)isVeryPreciselyIVSNSFWExplicitWithAsset:(id)asset;
- (CLSCurationModel_v4)initWithCurationModelSpecification:(id)specification;
- (id)faceInformationSummaryWithFaces:(id)faces detectionTraitsByFaceLocalIdentifier:(id)identifier verifiedPersonUUIDs:(id)ds hiddenPersonUUIDs:(id)iDs personUUIDByMergeCandidateUUID:(id)d userFeedbackCalculator:(id)calculator assetUUID:(id)iD;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block;
- (void)enumerateSignalModelsUsingBlock:(id)block;
@end

@implementation CLSCurationModel_v4

+ (id)baseSpecificationWithSpecification:(id)specification
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel_v4;
  specificationCopy = specification;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, specificationCopy);
  sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];

  sceneAnalysisVersion2 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A70] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v7)
  {
    sceneAnalysisVersion2 = v7;
  }

  v8 = [MEMORY[0x1E69C1AA0] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v8)
  {
    sceneAnalysisVersion2 = v8;
  }

  v9 = [MEMORY[0x1E69C1A48] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v9)
  {
    sceneAnalysisVersion2 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", sceneAnalysisVersion2, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CLSCurationModel_v4_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27D0;
  v5 = blockCopy;
  v12 = v5;
  v13 = &v14;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v4;
  [(CLSCurationModel_v3 *)&v10 enumerateClassificationBasedSignalModelsUsingBlock:v11];
  if ((v15[3] & 1) == 0)
  {
    memeModel = [(CLSCurationModel_v4 *)self memeModel];

    if (!memeModel || ([(CLSCurationModel_v4 *)self memeModel], v7 = objc_claimAutoreleasedReturnValue(), (*(v5 + 2))(v5, v7, v15 + 3), v7, (v15[3] & 1) == 0))
    {
      ivsNSFWModel = [(CLSCurationModel_v4 *)self ivsNSFWModel];

      if (ivsNSFWModel)
      {
        ivsNSFWModel2 = [(CLSCurationModel_v4 *)self ivsNSFWModel];
        (*(v5 + 2))(v5, ivsNSFWModel2, v15 + 3);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
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
  v11[2] = __55__CLSCurationModel_v4_enumerateSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27A8;
  v5 = blockCopy;
  v12 = v5;
  v13 = &v14;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v4;
  [(CLSCurationModel_v3 *)&v10 enumerateSignalModelsUsingBlock:v11];
  if ((v15[3] & 1) == 0)
  {
    memeModel = [(CLSCurationModel_v4 *)self memeModel];

    if (!memeModel || ([(CLSCurationModel_v4 *)self memeModel], v7 = objc_claimAutoreleasedReturnValue(), (*(v5 + 2))(v5, v7, v15 + 3), v7, (v15[3] & 1) == 0))
    {
      ivsNSFWModel = [(CLSCurationModel_v4 *)self ivsNSFWModel];

      if (ivsNSFWModel)
      {
        ivsNSFWModel2 = [(CLSCurationModel_v4 *)self ivsNSFWModel];
        (*(v5 + 2))(v5, ivsNSFWModel2, v15 + 3);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
}

- (BOOL)isSemDevSceneDetectedForIdentifier:(unsigned int)identifier withSceneClassification:(id)classification
{
  classificationCopy = classification;
  sdModel = [(CLSCurationModel_v3 *)self sdModel];
  v8 = [sdModel nodeForSignalIdentifier:identifier];
  v9 = [v8 passesWithSignal:classificationCopy];

  return v9;
}

- (BOOL)assetIsJunkWithSceneClassifications:(id)classifications confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)junking confidenceThresholdBySceneIdentifierForJunkingScenes:(id)scenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)basedJunking forMemories:(BOOL)memories
{
  memoriesCopy = memories;
  v63 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  junkingCopy = junking;
  scenesCopy = scenes;
  basedJunkingCopy = basedJunking;
  junkClassificationModel = [(CLSCurationModel_v1 *)self junkClassificationModel];
  negativeNode = [junkClassificationModel negativeNode];
  nonMemorableNode = [junkClassificationModel nonMemorableNode];
  poorQualityNode = [junkClassificationModel poorQualityNode];
  sdModel = [(CLSCurationModel_v3 *)self sdModel];
  foodDrinkNode = [sdModel foodDrinkNode];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = classificationsCopy;
  v57 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v57)
  {

    LOBYTE(v18) = 0;
    v41 = 0;
LABEL_44:
    v40 = v18 | (v41 != 0);
    goto LABEL_51;
  }

  v48 = basedJunkingCopy;
  v44 = 0;
  v47 = 0;
  v17 = 0;
  v18 = 0;
  v54 = 0;
  v19 = 0;
  v43 = 0;
  v56 = *v59;
  do
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v59 != v56)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      extendedSceneIdentifier = [v21 extendedSceneIdentifier];
      [v21 confidence];
      v24 = v23;
      if ([junkClassificationModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
      {
        if (memoriesCopy)
        {
          if (v19 & 1) == 0 && ([negativeNode passesHighPrecisionWithSignal:v21])
          {
            goto LABEL_18;
          }

          if (v54 & 1) == 0 && ([nonMemorableNode passesWithSignal:v21])
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v19 & 1) == 0 && ([negativeNode passesWithSignal:v21])
          {
LABEL_18:
            v19 = 1;
            continue;
          }

          if (v54 & 1) == 0 && ([nonMemorableNode passesHighPrecisionWithSignal:v21])
          {
LABEL_24:
            v54 = 1;
            continue;
          }
        }

        if (v18)
        {
          v18 = 1;
        }

        else
        {
          v18 = [poorQualityNode passesWithSignal:v21];
        }
      }

      else if ([sdModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
      {
        if (v17)
        {
          v17 = 1;
        }

        else
        {
          v17 = [foodDrinkNode passesHighPrecisionWithSignal:v21];
        }
      }

      else
      {
        v55 = v19;
        v25 = v17;
        v26 = v18;
        v27 = junkClassificationModel;
        v28 = memoriesCopy;
        v29 = sdModel;
        v30 = v16;
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
        v32 = [junkingCopy objectForKeyedSubscript:v31];
        v33 = v32;
        if (v32)
        {
          [v32 doubleValue];
          if (v24 >= v34)
          {
            v47 = 1;
          }
        }

        else
        {
          v35 = [v48 objectForKeyedSubscript:v31];
          v36 = v35;
          if (v35)
          {
            [v35 doubleValue];
            if (v24 >= v37)
            {
              v44 = 1;
            }
          }

          else
          {
            v38 = [scenesCopy objectForKeyedSubscript:v31];
            if (v38)
            {
              v46 = v38;
              [v38 doubleValue];
              if (v24 >= v39)
              {
                ++v43;
              }

              v38 = v46;
            }
          }
        }

        v16 = v30;
        sdModel = v29;
        memoriesCopy = v28;
        junkClassificationModel = v27;
        v18 = v26;
        v17 = v25;
        v19 = v55;
      }
    }

    v57 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v57);

  if ((v47 & 1) == 0)
  {
    v41 = v43;
    if (v44)
    {
      v41 = 0;
    }

    basedJunkingCopy = v48;
    if (v19)
    {
      v40 = v54 & v17 & (v41 != 0);
      goto LABEL_51;
    }

    if (v54)
    {
      v40 = 1;
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  v40 = 0;
  basedJunkingCopy = v48;
LABEL_51:

  return v40 & 1;
}

- (BOOL)isUtilityForSyndicationWithAsset:(id)asset
{
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = CLSCurationModel_v4;
  if (!-[CLSCurationModel_v1 isUtilityForSyndicationWithAsset:](&v16, sel_isUtilityForSyndicationWithAsset_, assetCopy) && !-[CLSCurationModel_v4 isMemeWithAsset:](self, "isMemeWithAsset:", assetCopy) && !-[CLSCurationModel_v4 isVeryPreciselyIVSNSFWExplicitWithAsset:](self, "isVeryPreciselyIVSNSFWExplicitWithAsset:", assetCopy) && ([assetCopy clsIsTragicFailure] & 1) == 0)
  {
    mediaPreAnalysisModel = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
    sharpnessNode = [mediaPreAnalysisModel sharpnessNode];
    [assetCopy clsSharpnessScore];
    v7 = [sharpnessNode failsHighRecallWithConfidence:?];

    if ((v7 & 1) == 0)
    {
      aestheticsModel = [(CLSCurationModel_v1 *)self aestheticsModel];
      overallAestheticScoreNode = [aestheticsModel overallAestheticScoreNode];
      [assetCopy clsAestheticScore];
      v10 = [overallAestheticScoreNode failsHighRecallWithConfidence:?];

      if ((v10 & 1) == 0)
      {
        if ([assetCopy clsPeopleCount])
        {
          v11 = 0;
          goto LABEL_8;
        }

        clsSceneClassifications = [assetCopy clsSceneClassifications];
        v14 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:clsSceneClassifications];

        if (!v14)
        {
          clsSceneClassifications2 = [assetCopy clsSceneClassifications];
          v11 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:clsSceneClassifications2 forKeyAsset:0 forMemories:0];

          goto LABEL_8;
        }
      }
    }
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics
{
  assetCopy = asset;
  v15.receiver = self;
  v15.super_class = CLSCurationModel_v4;
  if ([(CLSCurationModel_v3 *)&v15 avoidIfPossibleForKeyAssetWithAsset:assetCopy statistics:statistics])
  {
    goto LABEL_4;
  }

  if ([(CLSCurationModel_v4 *)self isMemeWithAsset:assetCopy])
  {
    ++statistics->var9;
LABEL_4:
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  probableRotationDirection = [mediaAnalysisProperties probableRotationDirection];
  if (((probableRotationDirection - 1) & 0xFFFC) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = probableRotationDirection;
  }

  [mediaAnalysisProperties probableRotationDirectionConfidence];
  v12 = v11;
  mediaPreAnalysisModel = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
  v7 = [mediaPreAnalysisModel isWronglyRotatedForDirection:v10 confidence:v12];

  if (v7)
  {
    ++statistics->var10;
  }

LABEL_11:
  return v7;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator blockSocialMediaImportedAssets:(BOOL)assets
{
  assetsCopy = assets;
  v67 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  calculatorCopy = calculator;
  v61.receiver = self;
  v61.super_class = CLSCurationModel_v4;
  v10 = [(CLSCurationModel_v3 *)&v61 isUtilityForMemoriesWithAsset:assetCopy userFeedbackCalculator:calculatorCopy];
  if (assetsCopy)
  {
    if ((v10 & 1) == 0)
    {
      curationProperties = [assetCopy curationProperties];
      importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
      v13 = 1;
      v14 = [CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:importedByBundleIdentifier withExternalAppBlocklistType:1];

      if (v14)
      {
        goto LABEL_35;
      }

LABEL_6:
      if ([(CLSCurationModel_v4 *)self isMemeWithAsset:assetCopy])
      {
        goto LABEL_7;
      }

      mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
      probableRotationDirection = [mediaAnalysisProperties probableRotationDirection];
      if (((probableRotationDirection - 1) & 0xFFFC) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = probableRotationDirection;
      }

      [mediaAnalysisProperties probableRotationDirectionConfidence];
      v19 = v18;
      mediaPreAnalysisModel = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
      v21 = [mediaPreAnalysisModel isWronglyRotatedForDirection:v17 confidence:v19];

      v52 = mediaAnalysisProperties;
      if (v21 && ([assetCopy clsFaceInformationSummary], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "numberOfFaces"), v22, v23))
      {
        confidenceThresholdBySceneIdentifierForBabyScenes = [(CLSCurationModel_v1 *)self confidenceThresholdBySceneIdentifierForBabyScenes];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        clsSceneClassifications = [assetCopy clsSceneClassifications];
        v26 = [clsSceneClassifications countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v26)
        {
          v27 = v26;
          v51 = calculatorCopy;
          v28 = *v58;
LABEL_15:
          v29 = 0;
          while (1)
          {
            if (*v58 != v28)
            {
              objc_enumerationMutation(clsSceneClassifications);
            }

            v30 = *(*(&v57 + 1) + 8 * v29);
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v30, "extendedSceneIdentifier", v51)}];
            v32 = [confidenceThresholdBySceneIdentifierForBabyScenes objectForKeyedSubscript:v31];

            if (v32)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [clsSceneClassifications countByEnumeratingWithState:&v57 objects:v66 count:16];
              v13 = 1;
              if (v27)
              {
                goto LABEL_15;
              }

              calculatorCopy = v51;
              goto LABEL_32;
            }
          }

          [v30 confidence];
          v34 = v33;
          [v32 doubleValue];
          v36 = v35;

          calculatorCopy = v51;
          mediaAnalysisProperties = v52;
          if (v34 >= v36)
          {
            goto LABEL_24;
          }

          v13 = 1;
          goto LABEL_34;
        }

        v13 = 1;
      }

      else
      {
LABEL_24:
        clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
        faceInformationByPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByPersonLocalIdentifier];

        clsSceneClassifications = objc_alloc_init(MEMORY[0x1E695DF70]);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        confidenceThresholdBySceneIdentifierForBabyScenes = faceInformationByPersonLocalIdentifier;
        v39 = [confidenceThresholdBySceneIdentifierForBabyScenes countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v54;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v54 != v41)
              {
                objc_enumerationMutation(confidenceThresholdBySceneIdentifierForBabyScenes);
              }

              v43 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:*(*(&v53 + 1) + 8 * i)];
              [clsSceneClassifications addObject:v43];
            }

            v40 = [confidenceThresholdBySceneIdentifierForBabyScenes countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v40);
        }

        clsIdentifier = [assetCopy clsIdentifier];
        v64 = clsIdentifier;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        clsIdentifier2 = [assetCopy clsIdentifier];
        v62 = clsIdentifier2;
        v63 = clsSceneClassifications;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [calculatorCopy scoreForAssetUUIDs:v45 personsUUIDsByAssetUUIDs:v47];
        v49 = v48;

        v13 = [MEMORY[0x1E6978B08] score:v49 meetsScoreThreshold:*MEMORY[0x1E6978FD0]];
LABEL_32:
        mediaAnalysisProperties = v52;
      }

LABEL_34:
      goto LABEL_35;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = 1;
LABEL_35:

  return v13;
}

- (BOOL)isUtilityForMemoriesForImageAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy clsHasCustomPlaybackVariation])
  {
    goto LABEL_2;
  }

  if ([assetCopy clsIsTragicFailure] & 1) != 0 || (-[CLSCurationModel_v1 mediaPreAnalysisModel](self, "mediaPreAnalysisModel"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sharpnessNode"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "clsSharpnessScore"), v8 = objc_msgSend(v7, "failsHighRecallWithConfidence:"), v7, v6, (v8) || (-[CLSCurationModel_v1 aestheticsModel](self, "aestheticsModel"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "overallAestheticScoreNode"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "clsAestheticScore"), v11 = objc_msgSend(v10, "failsHighRecallWithConfidence:"), v10, v9, (v11))
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (![assetCopy clsPeopleCount])
  {
    clsSceneClassifications = [assetCopy clsSceneClassifications];
    v14 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:clsSceneClassifications];

    if (!v14)
    {
      clsSceneClassifications2 = [assetCopy clsSceneClassifications];
      v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:clsSceneClassifications2 forKeyAsset:0 forMemories:1];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)isUtilityForMemoriesWithVideoAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy duration];
  if (v5 <= 60.0)
  {
    v8.receiver = self;
    v8.super_class = CLSCurationModel_v4;
    v6 = [(CLSCurationModel_v1 *)&v8 isUtilityForMemoriesWithVideoAsset:assetCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isUtilityForVideoAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy playbackStyle] == 5)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CLSCurationModel_v4;
    v5 = [(CLSCurationModel_v1 *)&v7 isUtilityForVideoAsset:assetCopy];
  }

  return v5;
}

- (BOOL)isVeryPreciselyIVSNSFWExplicitWithAsset:(id)asset
{
  clsProcessedSignals = [asset clsProcessedSignals];
  ivsNSFWModel = [(CLSCurationModel_v4 *)self ivsNSFWModel];

  if (ivsNSFWModel)
  {
    isVeryPreciselyIVSNSFWExplicit = [clsProcessedSignals isVeryPreciselyIVSNSFWExplicit];
  }

  else
  {
    isVeryPreciselyIVSNSFWExplicit = [clsProcessedSignals isPreciselyNSFWExplicit];
  }

  v7 = isVeryPreciselyIVSNSFWExplicit;

  return v7;
}

- (BOOL)isMemeWithAsset:(id)asset
{
  assetCopy = asset;
  memeModel = [(CLSCurationModel_v4 *)self memeModel];
  clsSceneClassifications = [assetCopy clsSceneClassifications];

  LOBYTE(assetCopy) = [memeModel isMemeFromSceneClassifications:clsSceneClassifications];
  return assetCopy;
}

- (BOOL)isMemeExclusiveWithAsset:(id)asset
{
  assetCopy = asset;
  memeModel = [(CLSCurationModel_v4 *)self memeModel];
  clsSceneClassifications = [assetCopy clsSceneClassifications];

  LOBYTE(assetCopy) = [memeModel isMemeExclusiveFromSceneClassifications:clsSceneClassifications];
  return assetCopy;
}

- (id)faceInformationSummaryWithFaces:(id)faces detectionTraitsByFaceLocalIdentifier:(id)identifier verifiedPersonUUIDs:(id)ds hiddenPersonUUIDs:(id)iDs personUUIDByMergeCandidateUUID:(id)d userFeedbackCalculator:(id)calculator assetUUID:(id)iD
{
  v109 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  identifierCopy = identifier;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  calculatorCopy = calculator;
  iDCopy = iD;
  selfCopy = self;
  faceModel = [(CLSCurationModel_v1 *)self faceModel];
  if (!faceModel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v108 = iDCopy;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "faceInformationSummaryWithFaces: Asset %@ has no face model", buf, 0xCu);
  }

  v18 = [facesCopy count];
  v69 = iDCopy;
  if (!v18)
  {
    v72 = 0;
    v73 = 0;
    v84 = 0;
    v85 = 0;
    v75 = 0;
    v90 = 0;
    v24 = 0.0;
    v19 = MEMORY[0x1E695E0F8];
    v87 = MEMORY[0x1E695E0F8];
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_54;
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
  v87 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
  qualityNode = [faceModel qualityNode];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v20 = facesCopy;
  v88 = [v20 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (!v88)
  {

    v23 = 0;
    v72 = 0;
    v73 = 0;
    v75 = 0;
    v84 = 0;
    v85 = 0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
    goto LABEL_53;
  }

  obj = v20;
  v79 = v19;
  v67 = calculatorCopy;
  v68 = facesCopy;
  v71 = 0;
  v72 = 0;
  v21 = 0;
  v22 = 0;
  v73 = 0;
  v84 = 0;
  v85 = 0;
  v75 = 0;
  v23 = 0;
  v82 = *v99;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v80 = v18;
  do
  {
    for (i = 0; i != v88; ++i)
    {
      if (*v99 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v98 + 1) + 8 * i);
      localIdentifier = [v28 localIdentifier];
      v93 = [identifierCopy objectForKeyedSubscript:localIdentifier];

      detectionType = [v28 detectionType];
      if (detectionType != 2)
      {
        ++v23;
      }

      [v28 size];
      v32 = v31;
      [v28 quality];
      v34 = v33;
      v35 = v26 + v33;
      if (detectionType == 2)
      {
        v35 = v26;
      }

      if (v34 >= 0.0)
      {
        ++v21;
      }

      v91 = v21;
      if (v34 >= 0.0)
      {
        v22 += detectionType != 2;
        v25 = v25 + v34;
        v26 = v35;
      }

      eyesState = [v28 eyesState];
      [(CLSCurationModel_v1 *)selfCopy faceSizeLowerLimit];
      if (v32 >= v37)
      {
        [(CLSCurationModel_v1 *)selfCopy faceSizeUpperLimit];
        v38 = v32 <= v39;
      }

      else
      {
        v38 = 0;
      }

      v92 = v22;
      if (eyesState == 2)
      {
        v40 = [qualityNode passesHighPrecisionWithConfidence:v34] & v38;
        v85 += v40 & 1;
        v84 += v40 & (detectionType != 2);
        v41 = [qualityNode passesWithConfidence:v34] & v38;
      }

      else
      {
        LOBYTE(v40) = 0;
        v41 = 0;
      }

      personLocalIdentifier = [v28 personLocalIdentifier];
      if (!personLocalIdentifier)
      {
        v21 = v91;
        v22 = v92;
        goto LABEL_43;
      }

      v89 = v23;
      v43 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:personLocalIdentifier];
      v44 = [dCopy objectForKeyedSubscript:v43];
      if (v44)
      {
        v45 = [MEMORY[0x1E6978980] localIdentifierWithUUID:v44];
        if (!v43)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v45 = 0;
        if (!v43)
        {
          goto LABEL_38;
        }
      }

      if ([iDsCopy containsObject:v43])
      {
        ++v75;
        v46 = [CLSFaceInformation alloc];
        [v28 size];
        v47 = [CLSFaceInformation initForHiddenPersonWithFaceSize:v46 faceQuality:"initForHiddenPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v38 faceIsGood:v40 & 1 faceIsOk:v41 traits:v93];
        goto LABEL_39;
      }

      if ([dsCopy containsObject:v43])
      {
        v48 = v71;
        if (v34 >= 0.0)
        {
          v48 = v71 + 1;
        }

        v71 = v48;
        ++v72;
        if (v34 >= 0.0)
        {
          v24 = v24 + v34;
        }

        v73 += v40 & 1;
        v49 = [CLSFaceInformation alloc];
        [v28 size];
        v47 = [CLSFaceInformation initForKnownPersonWithFaceSize:v49 faceQuality:"initForKnownPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v38 faceIsGood:v40 & 1 faceIsOk:v41 traits:v93];
        goto LABEL_39;
      }

LABEL_38:
      v50 = [CLSFaceInformation alloc];
      [v28 size];
      v47 = [CLSFaceInformation initForUnknownPersonWithFaceSize:v50 faceQuality:"initForUnknownPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v38 faceIsGood:v40 & 1 faceIsOk:v41 traits:v93];
LABEL_39:
      v51 = v47;
      v19 = v79;
      [v79 setObject:v47 forKeyedSubscript:personLocalIdentifier];
      v21 = v91;
      v22 = v92;
      if (!v45 || ([v87 objectForKeyedSubscript:v45], v52 = objc_claimAutoreleasedReturnValue(), v52, v53 = v45, v52))
      {
        v53 = personLocalIdentifier;
      }

      [v87 setObject:v51 forKeyedSubscript:v53];

      v18 = v80;
      v23 = v89;
LABEL_43:
    }

    v88 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
  }

  while (v88);

  if (v21)
  {
    v25 = v25 / v21;
  }

  if (v22)
  {
    v26 = v26 / v22;
  }

  calculatorCopy = v67;
  facesCopy = v68;
  if (v71)
  {
    v24 = v24 / v71;
  }

LABEL_53:
  v90 = v23;

LABEL_54:
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v55 = v19;
  v56 = [v55 countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v95;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v95 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:*(*(&v94 + 1) + 8 * j)];
        [v54 addObject:v60];
      }

      v57 = [v55 countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v57);
  }

  v104 = v69;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v102 = v69;
  v103 = v54;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
  [calculatorCopy scoreForAssetUUIDs:v61 personsUUIDsByAssetUUIDs:v62];
  v64 = v63;

  v65 = [[CLSAssetFaceInformationSummary alloc] initWithNumberOfFaces:v90 numberOfFacesIncludingPets:v18 numberOfFacesOfVerifiedPersons:v72 numberOfFacesOfHiddenPersons:v75 numberOfGoodFaces:v84 numberOfGoodFacesIncludingPets:v85 numberOfGoodFacesOfVerifiedPersons:v26 averageFaceQuality:v25 averageFaceQualityIncludingPets:v24 averageFaceQualityOfVerifiedPersons:v64 userFeedbackScore:v73 faceInformationByPersonLocalIdentifier:v55 faceInformationByConsolidatedPersonLocalIdentifier:v87];

  return v65;
}

- (CLSCurationModel_v4)initWithCurationModelSpecification:(id)specification
{
  specificationCopy = specification;
  v14.receiver = self;
  v14.super_class = CLSCurationModel_v4;
  v5 = [(CLSCurationModel_v3 *)&v14 initWithCurationModelSpecification:specificationCopy];
  if (v5)
  {
    sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A70]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    memeModel = v5->_memeModel;
    v5->_memeModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1AA0]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    trendsSceneModel = v5->_trendsSceneModel;
    v5->_trendsSceneModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A48]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    ivsNSFWModel = v5->_ivsNSFWModel;
    v5->_ivsNSFWModel = v11;
  }

  return v5;
}

@end