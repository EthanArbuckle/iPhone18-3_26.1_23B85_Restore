@interface CLSCurationModel_v1
+ (id)baseSpecificationWithSpecification:(id)a3;
- (BOOL)asset:(id)a3 isAestheticallyAwesomeWithContext:(id)a4;
- (BOOL)assetIsJunkWithSceneClassifications:(id)a3 confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)a4 confidenceThresholdBySceneIdentifierForJunkingScenes:(id)a5 confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)a6 forMemories:(BOOL)a7;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4;
- (BOOL)hasInterestingScenesWithAsset:(id)a3;
- (BOOL)hasPoorResolutionWithAsset:(id)a3;
- (BOOL)imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:(id)a3 forKeyAsset:(BOOL)a4 forMemories:(BOOL)a5;
- (BOOL)imageAssetIsJunkFromSceneAndJunkClassifications:(id)a3;
- (BOOL)isAestheticallyAwesomeWithAsset:(id)a3;
- (BOOL)isAestheticallyPrettyGoodWithAsset:(id)a3;
- (BOOL)isBadQualityForImageKeyAssetWithAsset:(id)a3 statistics:(id *)a4;
- (BOOL)isBlurryWithAsset:(id)a3;
- (BOOL)isInhabitedWithAsset:(id)a3;
- (BOOL)isInterestingLivePhotoWithAsset:(id)a3;
- (BOOL)isInterestingVideoWithAsset:(id)a3;
- (BOOL)isJunkWithJunkClassification:(id)a3;
- (BOOL)isJunkWithSignal:(id)a3 isReliable:(BOOL *)a4;
- (BOOL)isNonMemorableWithAsset:(id)a3;
- (BOOL)isTragicFailureWithImageAsset:(id)a3;
- (BOOL)isUtilityForImageAsset:(id)a3;
- (BOOL)isUtilityForMemoriesForImageAsset:(id)a3;
- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4;
- (BOOL)isUtilityForVideoAsset:(id)a3;
- (BOOL)isUtilityWithAsset:(id)a3;
- (CLSCurationModel_v1)initWithCurationModelSpecification:(id)a3;
- (double)scoreWithAsset:(id)a3 inContext:(id)a4;
- (id)faceInformationSummaryWithFaces:(id)a3 detectionTraitsByFaceLocalIdentifier:(id)a4 verifiedPersonUUIDs:(id)a5 hiddenPersonUUIDs:(id)a6 personUUIDByMergeCandidateUUID:(id)a7 userFeedbackCalculator:(id)a8 assetUUID:(id)a9;
- (id)initForTesting;
- (signed)interestingAudioClassificationsWithAsset:(id)a3;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3;
- (void)enumerateSignalModelsUsingBlock:(id)a3;
@end

@implementation CLSCurationModel_v1

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3
{
  v4 = 0;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel)
  {
    (*(a3 + 2))(a3, junkClassificationModel, &v4);
  }
}

- (void)enumerateSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel || ((*(v4 + 2))(v4, mediaPreAnalysisModel, &v11), (v11 & 1) == 0))
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

- (id)faceInformationSummaryWithFaces:(id)a3 detectionTraitsByFaceLocalIdentifier:(id)a4 verifiedPersonUUIDs:(id)a5 hiddenPersonUUIDs:(id)a6 personUUIDByMergeCandidateUUID:(id)a7 userFeedbackCalculator:(id)a8 assetUUID:(id)a9
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v50 = a5;
  v54 = a6;
  v13 = [v12 count];
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
  v51 = [(CLSFaceModel *)self->_faceModel qualityNode];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = v12;
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
  v47 = v12;
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
      v26 = [v21 eyesState];
      v27 = v23 >= self->_faceSizeLowerLimit && v23 <= self->_faceSizeUpperLimit;
      if (v26 == 2)
      {
        v28 = [v51 passesHighPrecisionWithConfidence:v25] & v27;
        v57 += v28 & 1;
        v29 = [v51 passesWithConfidence:v25] & v27;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v30 = [v21 personLocalIdentifier];
      v31 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:v30];
      if (!v30)
      {
        v35 = [MEMORY[0x1E696AFB0] UUID];
        v30 = [v35 UUIDString];

LABEL_20:
        v38 = [CLSFaceInformation alloc];
        [v21 size];
        v37 = [CLSFaceInformation initForUnknownPersonWithFaceSize:v38 faceQuality:"initForUnknownPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v27 faceIsGood:v28 & 1 faceIsOk:v29 traits:MEMORY[0x1E695E0F0]];
        goto LABEL_21;
      }

      if ([v54 containsObject:v31])
      {
        ++v53;
        v32 = [CLSFaceInformation alloc];
        [v21 size];
        v33 = v32;
        v15 = v56;
        v34 = [CLSFaceInformation initForHiddenPersonWithFaceSize:v33 faceQuality:"initForHiddenPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v27 faceIsGood:v28 & 1 faceIsOk:v29 traits:MEMORY[0x1E695E0F0]];
        goto LABEL_22;
      }

      if (!v31 || ![v50 containsObject:v31])
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
      [v15 setObject:v34 forKeyedSubscript:v30];
      v19 = v19 + v25;
    }

    v17 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v17);

  v13 = v46;
  v12 = v47;
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

- (BOOL)assetIsJunkWithSceneClassifications:(id)a3 confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)a4 confidenceThresholdBySceneIdentifierForJunkingScenes:(id)a5 confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)a6 forMemories:(BOOL)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v37 = a5;
  v40 = a6;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v41 = 0;
    v38 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v45;
    v39 = v12;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = [v20 extendedSceneIdentifier];
        [v20 confidence];
        v23 = v22;
        junkClassificationModel = self->_junkClassificationModel;
        if (!junkClassificationModel || ![(CLSJunkClassificationModel *)junkClassificationModel isResponsibleForSignalIdentifier:v21])
        {
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];
          v27 = [v12 objectForKeyedSubscript:v26];
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
            v31 = [v40 objectForKeyedSubscript:v26];
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
                v34 = [v37 objectForKeyedSubscript:v26];
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
            v12 = v39;
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

- (BOOL)isJunkWithSignal:(id)a3 isReliable:(BOOL *)a4
{
  v6 = a3;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel && ((-[CLSJunkClassificationModel negativeNode](junkClassificationModel, "negativeNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesHighPrecisionWithSignal:v6], v8, (v9 & 1) != 0) || (-[CLSJunkClassificationModel nonMemorableNode](self->_junkClassificationModel, "nonMemorableNode"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "passesWithSignal:", v6), v10, (v11 & 1) != 0) || (-[CLSJunkClassificationModel poorQualityNode](self->_junkClassificationModel, "poorQualityNode"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "passesWithSignal:", v6), v12, (v13 & 1) != 0) || (-[CLSJunkClassificationModel legacyNode](self->_junkClassificationModel, "legacyNode"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "passesWithSignal:", v6), v14, v15)))
  {
    v16 = v9 ^ 1;
    *a4 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4
{
  v5 = a3;
  if ([v5 isAudio] & 1) != 0 || (objc_msgSend(v5, "isTrashed") & 1) != 0 || (objc_msgSend(v5, "isHidden") & 1) != 0 || (objc_msgSend(v5, "clsIsScreenshotOrScreenRecording"))
  {
    v6 = 1;
  }

  else
  {
    if ([v5 isVideo])
    {
      v8 = [(CLSCurationModel_v1 *)self isUtilityForMemoriesWithVideoAsset:v5];
    }

    else
    {
      v8 = [(CLSCurationModel_v1 *)self isUtilityForMemoriesForImageAsset:v5];
    }

    v6 = v8;
  }

  return v6;
}

- (BOOL)isUtilityWithAsset:(id)a3
{
  v4 = a3;
  if ([v4 isAudio] & 1) != 0 || (objc_msgSend(v4, "isTrashed") & 1) != 0 || (objc_msgSend(v4, "isHidden") & 1) != 0 || (objc_msgSend(v4, "clsIsScreenshotOrScreenRecording"))
  {
    v5 = 1;
  }

  else
  {
    if ([v4 isVideo])
    {
      v7 = [(CLSCurationModel_v1 *)self isUtilityForVideoAsset:v4];
    }

    else
    {
      v7 = [(CLSCurationModel_v1 *)self isUtilityForImageAsset:v4];
    }

    v5 = v7;
  }

  return v5;
}

- (BOOL)isUtilityForMemoriesForImageAsset:(id)a3
{
  v4 = a3;
  if ([v4 clsHasCustomPlaybackVariation])
  {
    goto LABEL_5;
  }

  if (([v4 clsIsTragicFailure] & 1) == 0)
  {
    if (![v4 clsPeopleCount])
    {
      v7 = [v4 clsSceneClassifications];
      v8 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:v7];

      if (!v8)
      {
        v9 = [v4 clsSceneClassifications];
        v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:v9 forKeyAsset:0 forMemories:1];

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

- (BOOL)isUtilityForImageAsset:(id)a3
{
  v4 = a3;
  if ([v4 clsHasCustomPlaybackVariation])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (([v4 clsIsTragicFailure] & 1) == 0)
  {
    if (![v4 clsPeopleCount])
    {
      v7 = [v4 clsSceneClassifications];
      v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:v7];

      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

- (BOOL)imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:(id)a3 forKeyAsset:(BOOL)a4 forMemories:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes = MEMORY[0x1E695E0F8];
  }

  else
  {
    confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  }

  confidenceThresholdBySceneIdentifierForUtilityScenes = self->_confidenceThresholdBySceneIdentifierForUtilityScenes;
  v10 = confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  v11 = [(CLSCurationModel_v1 *)self assetIsJunkWithSceneClassifications:a3 confidenceThresholdBySceneIdentifierForScenesPreventingJunking:v10 confidenceThresholdBySceneIdentifierForJunkingScenes:confidenceThresholdBySceneIdentifierForUtilityScenes confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:v10 forMemories:v5];

  return v11;
}

- (BOOL)imageAssetIsJunkFromSceneAndJunkClassifications:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
  v29 = self->_confidenceThresholdBySceneIdentifierForWhiteboardScenes;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v4;
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
        v14 = [(CLSJunkClassificationModel *)junkClassificationModel negativeNode];
        v15 = [v14 passesHighPrecisionWithSignal:v12];

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
        v16 = [v12 extendedSceneIdentifier];
        v17 = self->_junkClassificationModel;
        if (!v17 || ![(CLSJunkClassificationModel *)v17 isResponsibleForSignalIdentifier:v16])
        {
          [v12 confidence];
          v19 = v18;
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
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
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
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

- (BOOL)isJunkWithJunkClassification:(id)a3
{
  v4 = a3;
  junkClassificationModel = self->_junkClassificationModel;
  if (junkClassificationModel)
  {
    v6 = [(CLSJunkClassificationModel *)junkClassificationModel receiptOrDocumentNode];
    v7 = [v6 passesWithSignal:v4];

    if (v7 & 1) != 0 || (-[CLSJunkClassificationModel screenshotNode](self->_junkClassificationModel, "screenshotNode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 passesWithSignal:v4], v8, (v9))
    {
      v10 = 1;
    }

    else
    {
      v11 = [(CLSJunkClassificationModel *)self->_junkClassificationModel tragicFailureNode];
      v10 = [v11 passesWithSignal:v4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isTragicFailureWithImageAsset:(id)a3
{
  v4 = a3;
  if ([v4 clsIsBlurry] & 1) != 0 || (v5 = self->_aestheticsModel) != 0 && (-[CLSAestheticsModel overallAestheticScoreNode](v5, "overallAestheticScoreNode"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clsAestheticScore"), v7 = objc_msgSend(v6, "failsHighRecallWithConfidence:"), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = [v4 aestheticProperties];
    aestheticsModel = self->_aestheticsModel;
    if (aestheticsModel)
    {
      v11 = [(CLSAestheticsModel *)aestheticsModel failureScoreNode];
      [v9 failureScore];
      if ([v11 failsHighRecallWithConfidence:v12])
      {
        v8 = 1;
      }

      else
      {
        v13 = [(CLSAestheticsModel *)self->_aestheticsModel tastefullyBlurredScoreNode];
        [v9 tastefullyBlurredScore];
        v8 = [v13 failsHighRecallWithConfidence:v14];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isBadQualityForImageKeyAssetWithAsset:(id)a3 statistics:(id *)a4
{
  v6 = a3;
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel || (-[CLSMediaPreAnalysisModel sharpnessNode](mediaPreAnalysisModel, "sharpnessNode"), v8 = objc_claimAutoreleasedReturnValue(), [v6 clsSharpnessScore], v9 = objc_msgSend(v8, "failsHighPrecisionWithConfidence:"), v8, !v9))
  {
    aestheticsModel = self->_aestheticsModel;
    if (!aestheticsModel)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v11 = [(CLSAestheticsModel *)aestheticsModel overallAestheticScoreNode];
    [v6 clsAestheticScore];
    v12 = [v11 failsHighPrecisionWithConfidence:?];

    if (v12)
    {
      ++a4->var1;
      goto LABEL_7;
    }

    v14 = [v6 aestheticProperties];
    v15 = [(CLSAestheticsModel *)self->_aestheticsModel failureScoreNode];
    [v14 failureScore];
    v17 = [v15 failsHighPrecisionWithConfidence:v16];

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v19 = [(CLSAestheticsModel *)self->_aestheticsModel tastefullyBlurredScoreNode];
      [v14 tastefullyBlurredScore];
      v21 = [v19 failsHighPrecisionWithConfidence:v20];

      if (v21)
      {
        v18 = 12;
      }

      else
      {
        v22 = [(CLSAestheticsModel *)self->_aestheticsModel pleasantLightingScoreNode];
        [v14 pleasantLightingScore];
        v24 = [v22 failsHighPrecisionWithConfidence:v23];

        if (!v24)
        {
          v13 = 0;
          goto LABEL_16;
        }

        v18 = 16;
      }
    }

    ++*(&a4->var0 + v18);
    v13 = 1;
LABEL_16:

    goto LABEL_17;
  }

  ++a4->var0;
LABEL_7:
  v13 = 1;
LABEL_17:

  return v13;
}

- (BOOL)isUtilityForVideoAsset:(id)a3
{
  v4 = a3;
  [(CLSCurationModel_v1 *)self minimumDurationForVideoToNotBeJunk];
  v6 = v5;
  if ([v4 isSubtype:0x20000])
  {
    [(CLSCurationModel_v1 *)self minimumDurationForHighFramerateVideoToNotBeJunk];
  }

  else
  {
    if (![v4 isSubtype:0x40000])
    {
      goto LABEL_6;
    }

    [(CLSCurationModel_v1 *)self minimumDurationForTimelapseVideoToNotBeJunk];
  }

  v6 = v7;
LABEL_6:
  [v4 duration];
  if (v8 >= v6)
  {
    if (self->_mediaAnalysisModel)
    {
      [v4 clsVideoScore];
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

- (double)scoreWithAsset:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 clsIsUtility] || (v8 = 0.25, objc_msgSend(v6, "isFavorite")))
  {
    if (v7)
    {
      v9 = [v6 clsViewCount];
      [v7 viewCountThreshold];
      if (v10 >= v9)
      {
        v16 = [v6 clsPlayCount];
        [v7 playCountThreshold];
        v11 = v17 < v16;
      }

      else
      {
        v11 = 1;
      }

      v18 = [v7 shouldEmphasizeShared];
      v19 = [v7 shouldEmphasizeAdjusted];
      HIDWORD(v33) = [v7 shouldEmphasizePanorama];
      v12 = [v7 shouldEmphasizeLive];
      HIDWORD(v31) = [v7 shouldEmphasizeBurst];
      LODWORD(v33) = [v7 shouldEmphasizeSDOF];
      LODWORD(v31) = [v7 audioClassificationsToEmphasize];
      v14 = v18 ^ 1;
      v13 = v19 ^ 1;
      v15 = [v6 clsPeopleCount];
    }

    else
    {
      v33 = 0;
      v12 = 0;
      v11 = 0;
      v13 = 1;
      v14 = 1;
      v15 = [v6 clsPeopleCount];
    }

    v20 = v15;
    v21 = [v6 clsFaceInformationSummary];
    [v21 averageFaceQuality];
    v23 = v22;
    v24 = [v6 isVideo];
    if ([v6 isFavorite] & 1) != 0 || -[CLSCurationModel_v1 asset:isAestheticallyAwesomeWithContext:](self, "asset:isAestheticallyAwesomeWithContext:", v6, v7) || (objc_msgSend(v6, "isIncludedInCloudFeeds"))
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

    if (([v6 clsShareCount] == 0) | v14 & 1)
    {
      if (v20 > 3)
      {
        goto LABEL_13;
      }
    }

    else if ([v6 clsVideoFaceCount] || v20 > 3)
    {
      goto LABEL_12;
    }

    if (v24)
    {
      v27 = [v6 clsVideoFaceCount];
      if (v20 <= v27)
      {
        v20 = v27;
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

    v29 = [v6 clsIsInterestingLivePhoto];
    if ((v13 | v24))
    {
      if (v11)
      {
        goto LABEL_43;
      }
    }

    else if (([v6 hasAdjustments] | v11))
    {
LABEL_43:
      v8 = v28 * 0.15 + 0.6;
      goto LABEL_16;
    }

    if (([v6 clsIsInterestingVideo] & 1) == 0 && (v12 & v29 & 1) == 0 && (!HIDWORD(v33) || (objc_msgSend(v6, "clsIsInterestingPanorama") & 1) == 0) && (!v33 || (objc_msgSend(v6, "clsIsInterestingSDOF") & 1) == 0) && (!v29 || (v30 & objc_msgSend(v6, "clsInterestingAudioClassifications")) == 0) && (!v32 || !objc_msgSend(v6, "representsBurst")))
    {
      if ((v24 & (v28 * 0.25 + 0.5 < 0.6)) != 0)
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

- (BOOL)asset:(id)a3 isAestheticallyAwesomeWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isVideo])
  {
    v8 = 0;
  }

  else
  {
    aestheticsModel = v7;
    if (v7 || (aestheticsModel = self->_aestheticsModel) != 0)
    {
      [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAwesome];
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    [v6 clsAestheticScore];
    v8 = v12 >= v11;
  }

  return v8;
}

- (BOOL)isAestheticallyAwesomeWithAsset:(id)a3
{
  [a3 clsAestheticScore];
  aestheticsModel = self->_aestheticsModel;
  if (aestheticsModel)
  {
    v6 = v4;
    [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAwesome];
    LOBYTE(aestheticsModel) = v6 >= v7;
  }

  return aestheticsModel;
}

- (BOOL)isAestheticallyPrettyGoodWithAsset:(id)a3
{
  [a3 clsAestheticScore];
  aestheticsModel = self->_aestheticsModel;
  if (aestheticsModel)
  {
    v6 = v4;
    [(CLSAestheticsModel *)aestheticsModel aestheticScoreThresholdToBeAestheticallyPrettyGood];
    LOBYTE(aestheticsModel) = v6 >= v7;
  }

  return aestheticsModel;
}

- (BOOL)isNonMemorableWithAsset:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_junkClassificationModel)
  {
    return 0;
  }

  [a3 clsSceneClassifications];
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
        v10 = [(CLSJunkClassificationModel *)self->_junkClassificationModel nonMemorableNode];
        LOBYTE(v9) = [v10 passesWithSignal:v9];

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

- (BOOL)isInterestingVideoWithAsset:(id)a3
{
  v4 = a3;
  if ([v4 isVideo])
  {
    v5 = [v4 mediaAnalysisProperties];
    v6 = [v5 mediaAnalysisTimeStamp];
    if (v6)
    {
      if (self->_mediaAnalysisModel)
      {
        [v5 videoScore];
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

- (signed)interestingAudioClassificationsWithAsset:(id)a3
{
  v3 = [a3 mediaAnalysisProperties];
  v4 = [v3 audioClassification];

  return v4 & ~[objc_opt_class() uninterestingAudioClassifications];
}

- (BOOL)isInterestingLivePhotoWithAsset:(id)a3
{
  v4 = a3;
  if ([v4 isSubtype:8])
  {
    v5 = [v4 mediaAnalysisProperties];
    v6 = [v5 mediaAnalysisTimeStamp];
    if (v6)
    {
      if (self->_mediaAnalysisModel)
      {
        [v5 autoplaySuggestionScore];
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

- (BOOL)hasInterestingScenesWithAsset:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 clsSceneClassifications];
  if ([v4 count])
  {
    v5 = self->_confidenceThresholdBySceneIdentifierForInterestingScenes;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
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

- (BOOL)hasPoorResolutionWithAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 pixelWidth];
  v5 = [v3 pixelHeight];

  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6 < 0x259;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4
{
  v6 = a3;
  v7 = [v6 clsFaceInformationSummary];
  v8 = [v7 numberOfFacesOfHiddenPersons];

  if (v8)
  {
    goto LABEL_2;
  }

  if (![v6 isPhoto])
  {
    if (![v6 isVideo])
    {
      goto LABEL_3;
    }

    if (([v6 clsIsInterestingVideo] & 1) == 0)
    {
      a4 = (a4 + 32);
      goto LABEL_2;
    }

    if (self->_mediaAnalysisModel)
    {
      [v6 clsAutoplaySuggestionScore];
      v12 = v11;
      [(CLSMediaAnalysisModel *)self->_mediaAnalysisModel autoplaySuggestionScoreExclusiveThresholdForVideoKeyAsset];
      if (v12 <= v13)
      {
        a4 = (a4 + 36);
        goto LABEL_2;
      }
    }

    v14 = [v6 clsLocation];

    v15 = [v6 clsHasPoorResolution];
    if (!v14 && v15)
    {
      a4 = (a4 + 40);
      goto LABEL_2;
    }

LABEL_19:
    if ([CLSCurationUtilities isRiskyFileFormatWithAsset:v6])
    {
      a4 = (a4 + 44);
    }

    else
    {
      v18 = [v6 curationProperties];
      v19 = [v18 importedByBundleIdentifier];
      v20 = [CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:v19 withExternalAppBlocklistType:0];

      if (!v20)
      {
        v9 = 0;
        goto LABEL_4;
      }

      a4 = (a4 + 48);
    }

    goto LABEL_2;
  }

  if (![v6 isSubtype:1])
  {
    if ([(CLSCurationModel_v1 *)self isBadQualityForImageKeyAssetWithAsset:v6 statistics:&a4->var2])
    {
      goto LABEL_3;
    }

    v16 = [v6 clsSceneClassifications];
    v17 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:v16 forKeyAsset:1 forMemories:1];

    if (v17)
    {
      a4 = (a4 + 28);
      goto LABEL_2;
    }

    goto LABEL_19;
  }

  a4 = (a4 + 4);
LABEL_2:
  ++a4->var0;
LABEL_3:
  v9 = 1;
LABEL_4:

  return v9;
}

- (BOOL)isInhabitedWithAsset:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, "clsIsInhabited");
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else if ([v4 clsIsUtility])
  {
    LOBYTE(v7) = 0;
  }

  else if ([v4 clsPeopleCount] || objc_msgSend(v4, "clsVideoFaceCount"))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v9 = [v4 clsSceneClassifications];
    if ([v9 count])
    {
      v10 = self->_confidenceThresholdBySceneIdentifierForBabyChildTeenAdultAndPetScenes;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v7 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v21 = v9;
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
        v9 = v21;
      }
    }

    else
    {
      v7 = 0;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    objc_setAssociatedObject(v4, "clsIsInhabited", v20, 3);
  }

  return v7;
}

- (BOOL)isBlurryWithAsset:(id)a3
{
  mediaPreAnalysisModel = self->_mediaPreAnalysisModel;
  if (!mediaPreAnalysisModel)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(CLSMediaPreAnalysisModel *)mediaPreAnalysisModel sharpnessNode];
  [v4 clsSharpnessScore];
  v7 = v6;

  LOBYTE(v4) = [v5 failsHighRecallWithConfidence:v7];
  return v4;
}

- (id)initForTesting
{
  v3 = [[CLSCurationModelSpecification alloc] initWithSceneAnalysisVersion:-1 mediaAnalysisVersion:-1 faceAnalysisVersion:-1];
  v4 = [(CLSCurationModel_v1 *)self initWithCurationModelSpecification:v3];

  return v4;
}

- (CLSCurationModel_v1)initWithCurationModelSpecification:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CLSCurationModel_v1;
  v5 = [(CLSCurationModel_v1 *)&v30 init];
  if (v5)
  {
    v6 = [v4 sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A90]) initWithSceneAnalysisVersion:v6];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A68]) initWithSceneAnalysisVersion:v6];
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A60]) initWithMediaAnalysisVersion:{objc_msgSend(v4, "mediaAnalysisVersion")}];
    v12 = *(v5 + 3);
    *(v5 + 3) = v11;

    v13 = [objc_alloc(MEMORY[0x1E69C1A18]) initWithSceneAnalysisVersion:v6];
    v14 = *(v5 + 4);
    *(v5 + 4) = v13;

    v15 = [objc_alloc(MEMORY[0x1E69C1A58]) initWithSceneAnalysisVersion:v6];
    v16 = *(v5 + 5);
    *(v5 + 5) = v15;

    v17 = [objc_alloc(MEMORY[0x1E69C1A40]) initWithFaceAnalysisVersion:{objc_msgSend(v4, "faceAnalysisVersion")}];
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

+ (id)baseSpecificationWithSpecification:(id)a3
{
  v3 = a3;
  v4 = [v3 sceneAnalysisVersion];
  v5 = [MEMORY[0x1E69C1A90] baseSceneAnalysisVersionWithSceneAnalysisVersion:v4];
  v6 = [MEMORY[0x1E69C1A68] baseSceneAnalysisVersionWithSceneAnalysisVersion:v4];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = [MEMORY[0x1E69C1A18] baseSceneAnalysisVersionWithSceneAnalysisVersion:v4];
  if (v5 <= v7)
  {
    v5 = v7;
  }

  v8 = [MEMORY[0x1E69C1A58] baseSceneAnalysisVersionWithSceneAnalysisVersion:v4];
  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v3 mediaAnalysisVersion];
  v11 = [MEMORY[0x1E69C1A60] baseMediaAnalysisVersionWithMediaAnalysisVersion:v10];
  v12 = [v3 faceAnalysisVersion];

  v13 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v9, v11, [MEMORY[0x1E69C1A40] baseFaceAnalysisVersionWithFaceAnalysisVersion:v12]);

  return v13;
}

@end