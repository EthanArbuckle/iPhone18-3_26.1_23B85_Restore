@interface CLSCurationModel_v1
+ (id)baseSpecificationWithSpecification:(id)specification;
- (BOOL)asset:(id)asset isAestheticallyAwesomeWithContext:(id)context;
- (BOOL)assetIsJunkWithSceneClassifications:(id)classifications confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)junking confidenceThresholdBySceneIdentifierForJunkingScenes:(id)scenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)basedJunking forMemories:(BOOL)memories;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics;
- (BOOL)hasInterestingScenesWithAsset:(id)asset;
- (BOOL)hasPoorResolutionWithAsset:(id)asset;
- (BOOL)imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:(id)classifications forKeyAsset:(BOOL)asset forMemories:(BOOL)memories;
- (BOOL)imageAssetIsJunkFromSceneAndJunkClassifications:(id)classifications;
- (BOOL)isAestheticallyAwesomeWithAsset:(id)asset;
- (BOOL)isAestheticallyPrettyGoodWithAsset:(id)asset;
- (BOOL)isBadQualityForImageKeyAssetWithAsset:(id)asset statistics:(id *)statistics;
- (BOOL)isBlurryWithAsset:(id)asset;
- (BOOL)isInhabitedWithAsset:(id)asset;
- (BOOL)isInterestingLivePhotoWithAsset:(id)asset;
- (BOOL)isInterestingVideoWithAsset:(id)asset;
- (BOOL)isJunkWithJunkClassification:(id)classification;
- (BOOL)isJunkWithSignal:(id)signal isReliable:(BOOL *)reliable;
- (BOOL)isNonMemorableWithAsset:(id)asset;
- (BOOL)isTragicFailureWithImageAsset:(id)asset;
- (BOOL)isUtilityForImageAsset:(id)asset;
- (BOOL)isUtilityForMemoriesForImageAsset:(id)asset;
- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator;
- (BOOL)isUtilityForVideoAsset:(id)asset;
- (BOOL)isUtilityWithAsset:(id)asset;
- (CLSCurationModel_v1)initWithCurationModelSpecification:(id)specification;
- (double)scoreWithAsset:(id)asset inContext:(id)context;
- (id)faceInformationSummaryWithFaces:(id)faces detectionTraitsByFaceLocalIdentifier:(id)identifier verifiedPersonUUIDs:(id)ds hiddenPersonUUIDs:(id)iDs personUUIDByMergeCandidateUUID:(id)d userFeedbackCalculator:(id)calculator assetUUID:(id)iD;
- (id)initForTesting;
- (signed)interestingAudioClassificationsWithAsset:(id)asset;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block;
- (void)enumerateSignalModelsUsingBlock:(id)block;
@end

@implementation CLSCurationModel_v1

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)block
{
  v4 = 0;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel)
  {
    (*(block + 2))(block, junkClassificationModel, &v4);
  }
}

- (void)enumerateSignalModelsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v11 = 0;
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel || ((*(blockCopy + 2))(blockCopy, mediaPreAnalysisModel, &v11), (v11 & 1) == 0))
  {
    mediaAnalysisModel = self->_mediaAnalysisModel;
    if (!mediaAnalysisModel || ((v5)[2](v5, mediaAnalysisModel, &v11), (v11 & 1) == 0))
    {
      junkClassificationModel = self->_junkClassificationModel;
      if (!junkClassificationModel || ((v5)[2](v5, junkClassificationModel, &v11), (v11 & 1) == 0))
      {
        aestheticsModel = self->_aestheticsModel;
        if (!aestheticsModel || ((v5)[2](v5, aestheticsModel, &v11), (v11 & 1) == 0))
        {
          faceModel = self->_faceModel;
          if (faceModel)
          {
            (v5)[2](v5, faceModel, &v11);
          }
        }
      }
    }
  }
}

- (id)faceInformationSummaryWithFaces:(id)faces detectionTraitsByFaceLocalIdentifier:(id)identifier verifiedPersonUUIDs:(id)ds hiddenPersonUUIDs:(id)iDs personUUIDByMergeCandidateUUID:(id)d userFeedbackCalculator:(id)calculator assetUUID:(id)iD
{
  v63 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  dsCopy = ds;
  iDsCopy = iDs;
  v13 = [facesCopy count];
  v14 = MEMORY[0x1E695E0F8];
  if (!v13)
  {
    v40 = 0;
    v42 = 0;
    v43 = 0;
    v17 = 0;
    v41 = 0.0;
    v39 = 0.0;
    v15 = MEMORY[0x1E695E0F8];
    goto LABEL_34;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qualityNode = [(CLSFaceModel *)self->_faceModel qualityNode];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = facesCopy;
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v17)
  {

    v43 = 0;
    v42 = 0;
    v40 = 0;
    v41 = 0.0;
    v39 = 0.0 / v13;
    goto LABEL_33;
  }

  v46 = v13;
  v47 = facesCopy;
  v48 = 0;
  v49 = 0;
  v56 = v15;
  v57 = 0;
  obj = v16;
  v53 = 0;
  v55 = *v59;
  v18 = 0.0;
  v19 = 0.0;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v59 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      [v21 size];
      v23 = v22;
      [v21 quality];
      v25 = v24;
      eyesState = [v21 eyesState];
      v27 = v23 >= self->_faceSizeLowerLimit && v23 <= self->_faceSizeUpperLimit;
      if (eyesState == 2)
      {
        v28 = [qualityNode passesHighPrecisionWithConfidence:v25] & v27;
        v57 += v28 & 1;
        v29 = [qualityNode passesWithConfidence:v25] & v27;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      personLocalIdentifier = [v21 personLocalIdentifier];
      v31 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:personLocalIdentifier];
      if (!personLocalIdentifier)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        personLocalIdentifier = [uUID UUIDString];

LABEL_20:
        v38 = [CLSFaceInformation alloc];
        [v21 size];
        v37 = [CLSFaceInformation initForUnknownPersonWithFaceSize:v38 faceQuality:"initForUnknownPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v27 faceIsGood:v28 & 1 faceIsOk:v29 traits:MEMORY[0x1E695E0F0]];
        goto LABEL_21;
      }

      if ([iDsCopy containsObject:v31])
      {
        ++v53;
        v32 = [CLSFaceInformation alloc];
        [v21 size];
        v33 = v32;
        v15 = v56;
        v34 = [CLSFaceInformation initForHiddenPersonWithFaceSize:v33 faceQuality:"initForHiddenPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v27 faceIsGood:v28 & 1 faceIsOk:v29 traits:MEMORY[0x1E695E0F0]];
        goto LABEL_22;
      }

      if (!v31 || ![dsCopy containsObject:v31])
      {
        goto LABEL_20;
      }

      v18 = v18 + v25;
      ++v48;
      v49 += v28 & 1;
      v36 = [CLSFaceInformation alloc];
      [v21 size];
      v37 = [CLSFaceInformation initForKnownPersonWithFaceSize:v36 faceQuality:"initForKnownPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v27 faceIsGood:v28 & 1 faceIsOk:v29 traits:MEMORY[0x1E695E0F0]];
LABEL_21:
      v34 = v37;
      v15 = v56;
LABEL_22:
      [v15 setObject:v34 forKeyedSubscript:personLocalIdentifier];
      v19 = v19 + v25;
    }

    v17 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v17);

  v13 = v46;
  facesCopy = v47;
  v39 = v19 / v46;
  v40 = v49;
  if (v48)
  {
    v17 = v48;
  }

  else
  {
    v17 = 0;
  }

  if (v48)
  {
    v41 = v18 / v48;
  }

  else
  {
    v41 = v18;
  }

  v14 = MEMORY[0x1E695E0F8];
  v42 = v57;
  v43 = v53;
LABEL_33:

LABEL_34:
  v44 = [[CLSAssetFaceInformationSummary alloc] initWithNumberOfFaces:v13 numberOfFacesIncludingPets:0 numberOfFacesOfVerifiedPersons:v17 numberOfFacesOfHiddenPersons:v43 numberOfGoodFaces:v42 numberOfGoodFacesIncludingPets:0 numberOfGoodFacesOfVerifiedPersons:v39 averageFaceQuality:0.0 averageFaceQualityIncludingPets:v41 averageFaceQualityOfVerifiedPersons:0.0 userFeedbackScore:v40 faceInformationByPersonLocalIdentifier:v15 faceInformationByConsolidatedPersonLocalIdentifier:v14];

  return v44;
}

- (BOOL)assetIsJunkWithSceneClassifications:(id)classifications confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)junking confidenceThresholdBySceneIdentifierForJunkingScenes:(id)scenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)basedJunking forMemories:(BOOL)memories
{
  v49 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  junkingCopy = junking;
  scenesCopy = scenes;
  basedJunkingCopy = basedJunking;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = classificationsCopy;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v41 = 0;
    v38 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v45;
    v39 = junkingCopy;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        extendedSceneIdentifier = [v20 extendedSceneIdentifier];
        [v20 confidence];
        v23 = v22;
        junkClassificationModel = self->_junkClassificationModel;
        if (!junkClassificationModel || ![(CLSJunkClassificationModel *)junkClassificationModel isResponsibleForSignalIdentifier:extendedSceneIdentifier])
        {
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
          v27 = [junkingCopy objectForKeyedSubscript:v26];
          v28 = v27;
          if (v27)
          {
            [v27 doubleValue];
            if (v23 >= v29)
            {

              goto LABEL_35;
            }

            goto LABEL_31;
          }

          if (((v16 | v41) & 1) == 0)
          {
            v30 = v13;
            v31 = [basedJunkingCopy objectForKeyedSubscript:v26];
            v32 = v31;
            if (v31)
            {
              [v31 doubleValue];
              if (v23 >= v33)
              {
                v17 = 0;
                v41 = 1;
                goto LABEL_30;
              }

LABEL_29:
              v41 = 0;
            }

            else
            {
              if ((v38 & 1) == 0)
              {
                v34 = [scenesCopy objectForKeyedSubscript:v26];
                if (v34)
                {
                  v42 = v34;
                  [v34 doubleValue];
                  if (v23 >= v35)
                  {
                    v38 = 1;
                    v17 = 1;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v34 = v42;
                }

                else
                {
                  v38 = 0;
                }

                goto LABEL_29;
              }

              v41 = 0;
              v38 = 1;
            }

LABEL_30:

            v13 = v30;
            junkingCopy = v39;
          }

LABEL_31:

          continue;
        }

        v43 = 0;
        v25 = [(CLSCurationModel_v1 *)self isJunkWithSignal:v20 isReliable:&v43];
        if (v43 == 1 && !v25)
        {
          goto LABEL_35;
        }

        if (v43)
        {
          v17 = v25;
        }

        v16 |= v43;
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v15)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v17 = 0;
LABEL_36:

  return v17 & 1;
}

- (BOOL)isJunkWithSignal:(id)signal isReliable:(BOOL *)reliable
{
  signalCopy = signal;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel && ((-[CLSJunkClassificationModel negativeNode](junkClassificationModel, "negativeNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesHighPrecisionWithSignal:signalCopy], v8, (v9 & 1) != 0) || (-[CLSJunkClassificationModel nonMemorableNode](self->_junkClassificationModel, "nonMemorableNode"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "passesWithSignal:", signalCopy), v10, (v11 & 1) != 0) || (-[CLSJunkClassificationModel poorQualityNode](self->_junkClassificationModel, "poorQualityNode"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "passesWithSignal:", signalCopy), v12, (v13 & 1) != 0) || (-[CLSJunkClassificationModel legacyNode](self->_junkClassificationModel, "legacyNode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "passesWithSignal:", signalCopy), v14, v15)))
  {
    v16 = v9 ^ 1;
    *reliable = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)asset userFeedbackCalculator:(id)calculator
{
  assetCopy = asset;
  if ([assetCopy isAudio] & 1) != 0 || (objc_msgSend(assetCopy, "isTrashed") & 1) != 0 || (objc_msgSend(assetCopy, "isHidden") & 1) != 0 || (objc_msgSend(assetCopy, "clsIsScreenshotOrScreenRecording"))
  {
    v6 = 1;
  }

  else
  {
    if ([assetCopy isVideo])
    {
      v8 = [(CLSCurationModel_v1 *)self isUtilityForMemoriesWithVideoAsset:assetCopy];
    }

    else
    {
      v8 = [(CLSCurationModel_v1 *)self isUtilityForMemoriesForImageAsset:assetCopy];
    }

    v6 = v8;
  }

  return v6;
}

- (BOOL)isUtilityWithAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isAudio] & 1) != 0 || (objc_msgSend(assetCopy, "isTrashed") & 1) != 0 || (objc_msgSend(assetCopy, "isHidden") & 1) != 0 || (objc_msgSend(assetCopy, "clsIsScreenshotOrScreenRecording"))
  {
    v5 = 1;
  }

  else
  {
    if ([assetCopy isVideo])
    {
      v7 = [(CLSCurationModel_v1 *)self isUtilityForVideoAsset:assetCopy];
    }

    else
    {
      v7 = [(CLSCurationModel_v1 *)self isUtilityForImageAsset:assetCopy];
    }

    v5 = v7;
  }

  return v5;
}

- (BOOL)isUtilityForMemoriesForImageAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy clsHasCustomPlaybackVariation])
  {
    goto LABEL_5;
  }

  if (([assetCopy clsIsTragicFailure] & 1) == 0)
  {
    if (![assetCopy clsPeopleCount])
    {
      clsSceneClassifications = [assetCopy clsSceneClassifications];
      v8 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:clsSceneClassifications];

      if (!v8)
      {
        clsSceneClassifications2 = [assetCopy clsSceneClassifications];
        v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:clsSceneClassifications2 forKeyAsset:0 forMemories:1];

        goto LABEL_6;
      }

      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

LABEL_3:
  v5 = 1;
LABEL_6:

  return v5;
}

- (BOOL)isUtilityForImageAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy clsHasCustomPlaybackVariation])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (([assetCopy clsIsTragicFailure] & 1) == 0)
  {
    if (![assetCopy clsPeopleCount])
    {
      clsSceneClassifications = [assetCopy clsSceneClassifications];
      v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:clsSceneClassifications];

      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

- (BOOL)imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:(id)classifications forKeyAsset:(BOOL)asset forMemories:(BOOL)memories
{
  memoriesCopy = memories;
  if (asset)
  {
    confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes = MEMORY[0x1E695E0F8];
  }

  else
  {
    confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  }

  confidenceThresholdBySceneIdentifierForUtilityScenes = self->_confidenceThresholdBySceneIdentifierForUtilityScenes;
  v10 = confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  v11 = [(CLSCurationModel_v1 *)self assetIsJunkWithSceneClassifications:classifications confidenceThresholdBySceneIdentifierForScenesPreventingJunking:v10 confidenceThresholdBySceneIdentifierForJunkingScenes:confidenceThresholdBySceneIdentifierForUtilityScenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:v10 forMemories:memoriesCopy];

  return v11;
}

- (BOOL)imageAssetIsJunkFromSceneAndJunkClassifications:(id)classifications
{
  v36 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  v30 = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  v29 = self->_confidenceThresholdBySceneIdentifierForWhiteboardScenes;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = classificationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      junkClassificationModel = self->_junkClassificationModel;
      if (junkClassificationModel)
      {
        negativeNode = [(CLSJunkClassificationModel *)junkClassificationModel negativeNode];
        v15 = [negativeNode passesHighPrecisionWithSignal:v12];

        if (v15)
        {
          break;
        }
      }

      if (v9)
      {
        v9 = 1;
      }

      else
      {
        extendedSceneIdentifier = [v12 extendedSceneIdentifier];
        v17 = self->_junkClassificationModel;
        if (!v17 || ![(CLSJunkClassificationModel *)v17 isResponsibleForSignalIdentifier:extendedSceneIdentifier])
        {
          [v12 confidence];
          v19 = v18;
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
          v21 = [(NSDictionary *)v30 objectForKeyedSubscript:v20];

          if (v21)
          {
            [v21 doubleValue];
            if (v19 >= v22)
            {
              v9 = 1;
LABEL_21:

              goto LABEL_22;
            }
          }

          else
          {
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:extendedSceneIdentifier];
            v24 = [(NSDictionary *)v29 objectForKeyedSubscript:v23];

            if (v24)
            {
              [v24 doubleValue];
              if (v19 >= v25)
              {
                v28 = 1;
              }
            }
          }

          v9 = 0;
          goto LABEL_21;
        }

        v9 = 0;
        v8 |= [(CLSCurationModel_v1 *)self isJunkWithJunkClassification:v12];
      }

LABEL_22:
      if (v7 == ++v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        v26 = (v9 ^ 1) & (v8 | v28);
        goto LABEL_26;
      }
    }
  }

  v26 = 0;
LABEL_26:

  return v26;
}

- (BOOL)isJunkWithJunkClassification:(id)classification
{
  classificationCopy = classification;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel)
  {
    receiptOrDocumentNode = [(CLSJunkClassificationModel *)junkClassificationModel receiptOrDocumentNode];
    v7 = [receiptOrDocumentNode passesWithSignal:classificationCopy];

    if (v7 & 1) != 0 || (-[CLSJunkClassificationModel screenshotNode](self->_junkClassificationModel, "screenshotNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesWithSignal:classificationCopy], v8, (v9))
    {
      v10 = 1;
    }

    else
    {
      tragicFailureNode = [(CLSJunkClassificationModel *)self->_junkClassificationModel tragicFailureNode];
      v10 = [tragicFailureNode passesWithSignal:classificationCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isTragicFailureWithImageAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy clsIsBlurry] & 1) != 0 || (v5 = self->_aestheticsModel) != 0 && (-[CLSAestheticsModel overallAestheticScoreNode](v5, "overallAestheticScoreNode"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "clsAestheticScore"), v7 = objc_msgSend(v6, "failsHighRecallWithConfidence:"), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    aestheticProperties = [assetCopy aestheticProperties];
    aestheticsModel = self->_aestheticsModel;
    if (aestheticsModel)
    {
      failureScoreNode = [(CLSAestheticsModel *)aestheticsModel failureScoreNode];
      [aestheticProperties failureScore];
      if ([failureScoreNode failsHighRecallWithConfidence:v12])
      {
        v8 = 1;
      }

      else
      {
        tastefullyBlurredScoreNode = [(CLSAestheticsModel *)self->_aestheticsModel tastefullyBlurredScoreNode];
        [aestheticProperties tastefullyBlurredScore];
        v8 = [tastefullyBlurredScoreNode failsHighRecallWithConfidence:v14];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isBadQualityForImageKeyAssetWithAsset:(id)asset statistics:(id *)statistics
{
  assetCopy = asset;
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel || (-[CLSMediaPreAnalysisModel sharpnessNode](mediaPreAnalysisModel, "sharpnessNode"), v8 = objc_claimAutoreleasedReturnValue(), [assetCopy clsSharpnessScore], v9 = objc_msgSend(v8, "failsHighPrecisionWithConfidence:"), v8, !v9))
  {
    aestheticsModel = self->_aestheticsModel;
    if (!aestheticsModel)
    {
      v13 = 0;
      goto LABEL_17;
    }

    overallAestheticScoreNode = [(CLSAestheticsModel *)aestheticsModel overallAestheticScoreNode];
    [assetCopy clsAestheticScore];
    v12 = [overallAestheticScoreNode failsHighPrecisionWithConfidence:?];

    if (v12)
    {
      ++statistics->var1;
      goto LABEL_7;
    }

    aestheticProperties = [assetCopy aestheticProperties];
    failureScoreNode = [(CLSAestheticsModel *)self->_aestheticsModel failureScoreNode];
    [aestheticProperties failureScore];
    v17 = [failureScoreNode failsHighPrecisionWithConfidence:v16];

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      tastefullyBlurredScoreNode = [(CLSAestheticsModel *)self->_aestheticsModel tastefullyBlurredScoreNode];
      [aestheticProperties tastefullyBlurredScore];
      v21 = [tastefullyBlurredScoreNode failsHighPrecisionWithConfidence:v20];

      if (v21)
      {
        v18 = 12;
      }

      else
      {
        pleasantLightingScoreNode = [(CLSAestheticsModel *)self->_aestheticsModel pleasantLightingScoreNode];
        [aestheticProperties pleasantLightingScore];
        v24 = [pleasantLightingScoreNode failsHighPrecisionWithConfidence:v23];

        if (!v24)
        {
          v13 = 0;
          goto LABEL_16;
        }

        v18 = 16;
      }
    }

    ++*(&statistics->var0 + v18);
    v13 = 1;
LABEL_16:

    goto LABEL_17;
  }

  ++statistics->var0;
LABEL_7:
  v13 = 1;
LABEL_17:

  return v13;
}

- (BOOL)isUtilityForVideoAsset:(id)asset
{
  assetCopy = asset;
  [(CLSCurationModel_v1 *)self minimumDurationForVideoToNotBeJunk];
  v6 = v5;
  if ([assetCopy isSubtype:0x20000])
  {
    [(CLSCurationModel_v1 *)self minimumDurationForHighFramerateVideoToNotBeJunk];
  }

  else
  {
    if (![assetCopy isSubtype:0x40000])
    {
      goto LABEL_6;
    }

    [(CLSCurationModel_v1 *)self minimumDurationForTimelapseVideoToNotBeJunk];
  }

  v6 = v7;
LABEL_6:
  [assetCopy duration];
  if (v8 >= v6)
  {
    if (self->_mediaAnalysisModel)
    {
      [assetCopy clsVideoScore];
      v11 = v10;
      [(CLSMediaAnalysisModel *)self->_mediaAnalysisModel videoScoreThresholdToNotBeJunk];
      v9 = v11 < v12;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (double)scoreWithAsset:(id)asset inContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  if (![assetCopy clsIsUtility] || (v8 = 0.25, objc_msgSend(assetCopy, "isFavorite")))
  {
    if (contextCopy)
    {
      clsViewCount = [assetCopy clsViewCount];
      [contextCopy viewCountThreshold];
      if (v10 >= clsViewCount)
      {
        clsPlayCount = [assetCopy clsPlayCount];
        [contextCopy playCountThreshold];
        v11 = v17 < clsPlayCount;
      }

      else
      {
        v11 = 1;
      }

      shouldEmphasizeShared = [contextCopy shouldEmphasizeShared];
      shouldEmphasizeAdjusted = [contextCopy shouldEmphasizeAdjusted];
      HIDWORD(v33) = [contextCopy shouldEmphasizePanorama];
      shouldEmphasizeLive = [contextCopy shouldEmphasizeLive];
      HIDWORD(v31) = [contextCopy shouldEmphasizeBurst];
      LODWORD(v33) = [contextCopy shouldEmphasizeSDOF];
      LODWORD(v31) = [contextCopy audioClassificationsToEmphasize];
      v14 = shouldEmphasizeShared ^ 1;
      v13 = shouldEmphasizeAdjusted ^ 1;
      clsPeopleCount = [assetCopy clsPeopleCount];
    }

    else
    {
      v33 = 0;
      shouldEmphasizeLive = 0;
      v11 = 0;
      v13 = 1;
      v14 = 1;
      clsPeopleCount = [assetCopy clsPeopleCount];
    }

    v20 = clsPeopleCount;
    clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
    [clsFaceInformationSummary averageFaceQuality];
    v23 = v22;
    isVideo = [assetCopy isVideo];
    if ([assetCopy isFavorite] & 1) != 0 || -[CLSCurationModel_v1 asset:isAestheticallyAwesomeWithContext:](self, "asset:isAestheticallyAwesomeWithContext:", assetCopy, contextCopy) || (objc_msgSend(assetCopy, "isIncludedInCloudFeeds"))
    {
LABEL_12:
      if (!v20)
      {
        v25 = 0.0;
        goto LABEL_15;
      }

LABEL_13:
      v25 = fmin(v20 / 10.0, 1.0) * 0.4 + 0.5 + v23 * 0.1;
LABEL_15:
      v8 = v25 * 0.25 + 0.75;
LABEL_16:

      goto LABEL_17;
    }

    if (([assetCopy clsShareCount] == 0) | v14 & 1)
    {
      if (v20 > 3)
      {
        goto LABEL_13;
      }
    }

    else if ([assetCopy clsVideoFaceCount] || v20 > 3)
    {
      goto LABEL_12;
    }

    if (isVideo)
    {
      clsVideoFaceCount = [assetCopy clsVideoFaceCount];
      if (v20 <= clsVideoFaceCount)
      {
        v20 = clsVideoFaceCount;
      }
    }

    if (v20)
    {
      v28 = fmin(vcvtd_n_f64_u64(v20, 2uLL), 1.0) * 0.4 + 0.5 + v23 * 0.1;
    }

    else
    {
      v28 = 0.0;
    }

    clsIsInterestingLivePhoto = [assetCopy clsIsInterestingLivePhoto];
    if ((v13 | isVideo))
    {
      if (v11)
      {
        goto LABEL_43;
      }
    }

    else if (([assetCopy hasAdjustments] | v11))
    {
LABEL_43:
      v8 = v28 * 0.15 + 0.6;
      goto LABEL_16;
    }

    if (([assetCopy clsIsInterestingVideo] & 1) == 0 && (shouldEmphasizeLive & clsIsInterestingLivePhoto & 1) == 0 && (!HIDWORD(v33) || (objc_msgSend(assetCopy, "clsIsInterestingPanorama") & 1) == 0) && (!v33 || (objc_msgSend(assetCopy, "clsIsInterestingSDOF") & 1) == 0) && (!clsIsInterestingLivePhoto || (v30 & objc_msgSend(assetCopy, "clsInterestingAudioClassifications")) == 0) && (!v32 || !objc_msgSend(assetCopy, "representsBurst")))
    {
      if ((isVideo & (v28 * 0.25 + 0.5 < 0.6)) != 0)
      {
        v8 = 0.6;
      }

      else
      {
        v8 = v28 * 0.25 + 0.5;
      }

      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_17:

  return v8;
}

- (BOOL)asset:(id)asset isAestheticallyAwesomeWithContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  if ([assetCopy isVideo])
  {
    v8 = 0;
  }

  else
  {
    aestheticsModel = contextCopy;
    if (contextCopy || (aestheticsModel = self->_aestheticsModel) != 0)
    {
      [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAwesome];
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    [assetCopy clsAestheticScore];
    v8 = v12 >= v11;
  }

  return v8;
}

- (BOOL)isAestheticallyAwesomeWithAsset:(id)asset
{
  [asset clsAestheticScore];
  aestheticsModel = self->_aestheticsModel;
  if (aestheticsModel)
  {
    v6 = v4;
    [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAwesome];
    LOBYTE(aestheticsModel) = v6 >= v7;
  }

  return aestheticsModel;
}

- (BOOL)isAestheticallyPrettyGoodWithAsset:(id)asset
{
  [asset clsAestheticScore];
  aestheticsModel = self->_aestheticsModel;
  if (aestheticsModel)
  {
    v6 = v4;
    [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAestheticallyPrettyGood];
    LOBYTE(aestheticsModel) = v6 >= v7;
  }

  return aestheticsModel;
}

- (BOOL)isNonMemorableWithAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_junkClassificationModel)
  {
    return 0;
  }

  [asset clsSceneClassifications];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        nonMemorableNode = [(CLSJunkClassificationModel *)self->_junkClassificationModel nonMemorableNode];
        LOBYTE(v9) = [nonMemorableNode passesWithSignal:v9];

        if (v9)
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)isInterestingVideoWithAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isVideo])
  {
    mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
    mediaAnalysisTimeStamp = [mediaAnalysisProperties mediaAnalysisTimeStamp];
    if (mediaAnalysisTimeStamp)
    {
      if (self->_mediaAnalysisModel)
      {
        [mediaAnalysisProperties videoScore];
        v8 = v7;
        [(CLSMediaAnalysisModel *)self->_mediaAnalysisModel videoScoreThresholdToBeInteresting];
        v10 = v9 <= v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (signed)interestingAudioClassificationsWithAsset:(id)asset
{
  mediaAnalysisProperties = [asset mediaAnalysisProperties];
  audioClassification = [mediaAnalysisProperties audioClassification];

  return audioClassification & ~[objc_opt_class() uninterestingAudioClassifications];
}

- (BOOL)isInterestingLivePhotoWithAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isSubtype:8])
  {
    mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
    mediaAnalysisTimeStamp = [mediaAnalysisProperties mediaAnalysisTimeStamp];
    if (mediaAnalysisTimeStamp)
    {
      if (self->_mediaAnalysisModel)
      {
        [mediaAnalysisProperties autoplaySuggestionScore];
        v8 = v7;
        [(CLSMediaAnalysisModel *)self->_mediaAnalysisModel autoplaySuggestionScoreThresholdToBeInteresting];
        v10 = v9 <= v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasInterestingScenesWithAsset:(id)asset
{
  v22 = *MEMORY[0x1E69E9840];
  clsSceneClassifications = [asset clsSceneClassifications];
  if ([clsSceneClassifications count])
  {
    v5 = self->_confidenceThresholdBySceneIdentifierForInterestingScenes;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = clsSceneClassifications;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "extendedSceneIdentifier", v17)}];
          v12 = [(NSDictionary *)v5 objectForKeyedSubscript:v11];

          if (v12)
          {
            [v10 confidence];
            v14 = v13;
            [v12 doubleValue];
            if (v14 >= v15)
            {

              LOBYTE(v7) = 1;
              goto LABEL_14;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)hasPoorResolutionWithAsset:(id)asset
{
  assetCopy = asset;
  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];

  if (pixelWidth >= pixelHeight)
  {
    v6 = pixelHeight;
  }

  else
  {
    v6 = pixelWidth;
  }

  return v6 < 0x259;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)asset statistics:(id *)statistics
{
  assetCopy = asset;
  clsFaceInformationSummary = [assetCopy clsFaceInformationSummary];
  numberOfFacesOfHiddenPersons = [clsFaceInformationSummary numberOfFacesOfHiddenPersons];

  if (numberOfFacesOfHiddenPersons)
  {
    goto LABEL_2;
  }

  if (![assetCopy isPhoto])
  {
    if (![assetCopy isVideo])
    {
      goto LABEL_3;
    }

    if (([assetCopy clsIsInterestingVideo] & 1) == 0)
    {
      statistics = (statistics + 32);
      goto LABEL_2;
    }

    if (self->_mediaAnalysisModel)
    {
      [assetCopy clsAutoplaySuggestionScore];
      v12 = v11;
      [(CLSMediaAnalysisModel *)self->_mediaAnalysisModel autoplaySuggestionScoreExclusiveThresholdForVideoKeyAsset];
      if (v12 <= v13)
      {
        statistics = (statistics + 36);
        goto LABEL_2;
      }
    }

    clsLocation = [assetCopy clsLocation];

    clsHasPoorResolution = [assetCopy clsHasPoorResolution];
    if (!clsLocation && clsHasPoorResolution)
    {
      statistics = (statistics + 40);
      goto LABEL_2;
    }

LABEL_19:
    if ([CLSCurationUtilities isRiskyFileFormatWithAsset:assetCopy])
    {
      statistics = (statistics + 44);
    }

    else
    {
      curationProperties = [assetCopy curationProperties];
      importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
      v20 = [CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:importedByBundleIdentifier withExternalAppBlocklistType:0];

      if (!v20)
      {
        v9 = 0;
        goto LABEL_4;
      }

      statistics = (statistics + 48);
    }

    goto LABEL_2;
  }

  if (![assetCopy isSubtype:1])
  {
    if ([(CLSCurationModel_v1 *)self isBadQualityForImageKeyAssetWithAsset:assetCopy statistics:&statistics->var2])
    {
      goto LABEL_3;
    }

    clsSceneClassifications = [assetCopy clsSceneClassifications];
    v17 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:clsSceneClassifications forKeyAsset:1 forMemories:1];

    if (v17)
    {
      statistics = (statistics + 28);
      goto LABEL_2;
    }

    goto LABEL_19;
  }

  statistics = (statistics + 4);
LABEL_2:
  ++statistics->var0;
LABEL_3:
  v9 = 1;
LABEL_4:

  return v9;
}

- (BOOL)isInhabitedWithAsset:(id)asset
{
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = objc_getAssociatedObject(assetCopy, "clsIsInhabited");
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else if ([assetCopy clsIsUtility])
  {
    LOBYTE(v7) = 0;
  }

  else if ([assetCopy clsPeopleCount] || objc_msgSend(assetCopy, "clsVideoFaceCount"))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    clsSceneClassifications = [assetCopy clsSceneClassifications];
    if ([clsSceneClassifications count])
    {
      v10 = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = clsSceneClassifications;
      v7 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v21 = clsSceneClassifications;
        v12 = *v23;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "extendedSceneIdentifier")}];
            v16 = [(NSDictionary *)v10 objectForKeyedSubscript:v15];

            if (v16)
            {
              [v14 confidence];
              v18 = v17;
              [v16 doubleValue];
              if (v18 >= v19)
              {

                v7 = 1;
                goto LABEL_22;
              }
            }
          }

          v7 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

LABEL_22:
        clsSceneClassifications = v21;
      }
    }

    else
    {
      v7 = 0;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    objc_setAssociatedObject(assetCopy, "clsIsInhabited", v20, 3);
  }

  return v7;
}

- (BOOL)isBlurryWithAsset:(id)asset
{
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel)
  {
    return 0;
  }

  assetCopy = asset;
  sharpnessNode = [(CLSMediaPreAnalysisModel *)mediaPreAnalysisModel sharpnessNode];
  [assetCopy clsSharpnessScore];
  v7 = v6;

  LOBYTE(assetCopy) = [sharpnessNode failsHighRecallWithConfidence:v7];
  return assetCopy;
}

- (id)initForTesting
{
  v3 = [[CLSCurationModelSpecification alloc] initWithSceneAnalysisVersion:-1 mediaAnalysisVersion:-1 faceAnalysisVersion:-1];
  v4 = [(CLSCurationModel_v1 *)self initWithCurationModelSpecification:v3];

  return v4;
}

- (CLSCurationModel_v1)initWithCurationModelSpecification:(id)specification
{
  specificationCopy = specification;
  v30.receiver = self;
  v30.super_class = CLSCurationModel_v1;
  v5 = [(CLSCurationModel_v1 *)&v30 init];
  if (v5)
  {
    sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A90]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A68]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A60]) initWithMediaAnalysisVersion:{objc_msgSend(specificationCopy, "mediaAnalysisVersion")}];
    v12 = *(v5 + 3);
    *(v5 + 3) = v11;

    v13 = [objc_alloc(MEMORY[0x1E69C1A18]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    v14 = *(v5 + 4);
    *(v5 + 4) = v13;

    v15 = [objc_alloc(MEMORY[0x1E69C1A58]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    v16 = *(v5 + 5);
    *(v5 + 5) = v15;

    v17 = [objc_alloc(MEMORY[0x1E69C1A40]) initWithFaceAnalysisVersion:{objc_msgSend(specificationCopy, "faceAnalysisVersion")}];
    v18 = *(v5 + 6);
    *(v5 + 6) = v17;

    *(v5 + 56) = xmmword_1C7592FC0;
    v19 = [*(v5 + 1) confidenceThresholdBySceneIdentifierForSceneNames:&unk_1F46E5618 withThresholdType:1];
    v20 = *(v5 + 9);
    *(v5 + 9) = v19;

    v21 = [*(v5 + 1) confidenceThresholdBySceneIdentifierForSceneNames:&unk_1F46E5630 withThresholdType:1];
    v22 = *(v5 + 10);
    *(v5 + 10) = v21;

    v23 = [*(v5 + 1) confidenceThresholdBySceneIdentifierForSceneNames:&unk_1F46E5648 withThresholdType:1];
    v24 = *(v5 + 11);
    *(v5 + 11) = v23;

    v25 = [*(v5 + 1) confidenceThresholdBySceneIdentifierForSceneNames:&unk_1F46E5660 withThresholdType:1];
    v26 = *(v5 + 12);
    *(v5 + 12) = v25;

    v27 = [*(v5 + 1) confidenceThresholdBySceneIdentifierForSceneNames:&unk_1F46E5678 withThresholdType:1];
    v28 = *(v5 + 13);
    *(v5 + 13) = v27;
  }

  return v5;
}

+ (id)baseSpecificationWithSpecification:(id)specification
{
  specificationCopy = specification;
  sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
  v5 = [MEMORY[0x1E69C1A90] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  v6 = [MEMORY[0x1E69C1A68] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = [MEMORY[0x1E69C1A18] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (v5 <= v7)
  {
    v5 = v7;
  }

  v8 = [MEMORY[0x1E69C1A58] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  mediaAnalysisVersion = [specificationCopy mediaAnalysisVersion];
  v11 = [MEMORY[0x1E69C1A60] baseMediaAnalysisVersionWithMediaAnalysisVersion:mediaAnalysisVersion];
  faceAnalysisVersion = [specificationCopy faceAnalysisVersion];

  v13 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v9, v11, [MEMORY[0x1E69C1A40] baseFaceAnalysisVersionWithFaceAnalysisVersion:faceAnalysisVersion]);

  return v13;
}

@end