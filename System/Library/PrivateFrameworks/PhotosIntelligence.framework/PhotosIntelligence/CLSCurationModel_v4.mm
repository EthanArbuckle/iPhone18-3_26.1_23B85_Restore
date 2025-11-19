@interface CLSCurationModel_v4
+ (id)baseSpecificationWithSpecification:(id)a3;
- (BOOL)assetIsJunkWithSceneClassifications:(id)a3 confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)a4 confidenceThresholdBySceneIdentifierForJunkingScenes:(id)a5 confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)a6 forMemories:(BOOL)a7;
- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4;
- (BOOL)isMemeExclusiveWithAsset:(id)a3;
- (BOOL)isMemeWithAsset:(id)a3;
- (BOOL)isSemDevSceneDetectedForIdentifier:(unsigned int)a3 withSceneClassification:(id)a4;
- (BOOL)isUtilityForMemoriesForImageAsset:(id)a3;
- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4 blockSocialMediaImportedAssets:(BOOL)a5;
- (BOOL)isUtilityForMemoriesWithVideoAsset:(id)a3;
- (BOOL)isUtilityForSyndicationWithAsset:(id)a3;
- (BOOL)isUtilityForVideoAsset:(id)a3;
- (BOOL)isVeryPreciselyIVSNSFWExplicitWithAsset:(id)a3;
- (CLSCurationModel_v4)initWithCurationModelSpecification:(id)a3;
- (id)faceInformationSummaryWithFaces:(id)a3 detectionTraitsByFaceLocalIdentifier:(id)a4 verifiedPersonUUIDs:(id)a5 hiddenPersonUUIDs:(id)a6 personUUIDByMergeCandidateUUID:(id)a7 userFeedbackCalculator:(id)a8 assetUUID:(id)a9;
- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3;
- (void)enumerateSignalModelsUsingBlock:(id)a3;
@end

@implementation CLSCurationModel_v4

+ (id)baseSpecificationWithSpecification:(id)a3
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel_v4;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, v3);
  v5 = [v3 sceneAnalysisVersion];

  v6 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A70] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = [MEMORY[0x1E69C1AA0] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v8)
  {
    v6 = v8;
  }

  v9 = [MEMORY[0x1E69C1A48] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v6, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (void)enumerateClassificationBasedSignalModelsUsingBlock:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CLSCurationModel_v4_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27D0;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v4;
  [(CLSCurationModel_v3 *)&v10 enumerateClassificationBasedSignalModelsUsingBlock:v11];
  if ((v15[3] & 1) == 0)
  {
    v6 = [(CLSCurationModel_v4 *)self memeModel];

    if (!v6 || ([(CLSCurationModel_v4 *)self memeModel], v7 = objc_claimAutoreleasedReturnValue(), (*(v5 + 2))(v5, v7, v15 + 3), v7, (v15[3] & 1) == 0))
    {
      v8 = [(CLSCurationModel_v4 *)self ivsNSFWModel];

      if (v8)
      {
        v9 = [(CLSCurationModel_v4 *)self ivsNSFWModel];
        (*(v5 + 2))(v5, v9, v15 + 3);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
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
  v11[2] = __55__CLSCurationModel_v4_enumerateSignalModelsUsingBlock___block_invoke;
  v11[3] = &unk_1E82A27A8;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  v10.receiver = self;
  v10.super_class = CLSCurationModel_v4;
  [(CLSCurationModel_v3 *)&v10 enumerateSignalModelsUsingBlock:v11];
  if ((v15[3] & 1) == 0)
  {
    v6 = [(CLSCurationModel_v4 *)self memeModel];

    if (!v6 || ([(CLSCurationModel_v4 *)self memeModel], v7 = objc_claimAutoreleasedReturnValue(), (*(v5 + 2))(v5, v7, v15 + 3), v7, (v15[3] & 1) == 0))
    {
      v8 = [(CLSCurationModel_v4 *)self ivsNSFWModel];

      if (v8)
      {
        v9 = [(CLSCurationModel_v4 *)self ivsNSFWModel];
        (*(v5 + 2))(v5, v9, v15 + 3);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
}

- (BOOL)isSemDevSceneDetectedForIdentifier:(unsigned int)a3 withSceneClassification:(id)a4
{
  v6 = a4;
  v7 = [(CLSCurationModel_v3 *)self sdModel];
  v8 = [v7 nodeForSignalIdentifier:a3];
  v9 = [v8 passesWithSignal:v6];

  return v9;
}

- (BOOL)assetIsJunkWithSceneClassifications:(id)a3 confidenceThresholdBySceneIdentifierForScenesPreventingJunking:(id)a4 confidenceThresholdBySceneIdentifierForJunkingScenes:(id)a5 confidenceThresholdBySceneIdentifierForScenesPreventingSceneBasedJunking:(id)a6 forMemories:(BOOL)a7
{
  v7 = a7;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v52 = a4;
  v45 = a5;
  v13 = a6;
  v14 = [(CLSCurationModel_v1 *)self junkClassificationModel];
  v53 = [v14 negativeNode];
  v51 = [v14 nonMemorableNode];
  v50 = [v14 poorQualityNode];
  v15 = [(CLSCurationModel_v3 *)self sdModel];
  v49 = [v15 foodDrinkNode];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = v12;
  v57 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v57)
  {

    LOBYTE(v18) = 0;
    v41 = 0;
LABEL_44:
    v40 = v18 | (v41 != 0);
    goto LABEL_51;
  }

  v48 = v13;
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
      v22 = [v21 extendedSceneIdentifier];
      [v21 confidence];
      v24 = v23;
      if ([v14 isResponsibleForSignalIdentifier:v22])
      {
        if (v7)
        {
          if (v19 & 1) == 0 && ([v53 passesHighPrecisionWithSignal:v21])
          {
            goto LABEL_18;
          }

          if (v54 & 1) == 0 && ([v51 passesWithSignal:v21])
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v19 & 1) == 0 && ([v53 passesWithSignal:v21])
          {
LABEL_18:
            v19 = 1;
            continue;
          }

          if (v54 & 1) == 0 && ([v51 passesHighPrecisionWithSignal:v21])
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
          v18 = [v50 passesWithSignal:v21];
        }
      }

      else if ([v15 isResponsibleForSignalIdentifier:v22])
      {
        if (v17)
        {
          v17 = 1;
        }

        else
        {
          v17 = [v49 passesHighPrecisionWithSignal:v21];
        }
      }

      else
      {
        v55 = v19;
        v25 = v17;
        v26 = v18;
        v27 = v14;
        v28 = v7;
        v29 = v15;
        v30 = v16;
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
        v32 = [v52 objectForKeyedSubscript:v31];
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
            v38 = [v45 objectForKeyedSubscript:v31];
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
        v15 = v29;
        v7 = v28;
        v14 = v27;
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

    v13 = v48;
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
  v13 = v48;
LABEL_51:

  return v40 & 1;
}

- (BOOL)isUtilityForSyndicationWithAsset:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CLSCurationModel_v4;
  if (!-[CLSCurationModel_v1 isUtilityForSyndicationWithAsset:](&v16, sel_isUtilityForSyndicationWithAsset_, v4) && !-[CLSCurationModel_v4 isMemeWithAsset:](self, "isMemeWithAsset:", v4) && !-[CLSCurationModel_v4 isVeryPreciselyIVSNSFWExplicitWithAsset:](self, "isVeryPreciselyIVSNSFWExplicitWithAsset:", v4) && ([v4 clsIsTragicFailure] & 1) == 0)
  {
    v5 = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
    v6 = [v5 sharpnessNode];
    [v4 clsSharpnessScore];
    v7 = [v6 failsHighRecallWithConfidence:?];

    if ((v7 & 1) == 0)
    {
      v8 = [(CLSCurationModel_v1 *)self aestheticsModel];
      v9 = [v8 overallAestheticScoreNode];
      [v4 clsAestheticScore];
      v10 = [v9 failsHighRecallWithConfidence:?];

      if ((v10 & 1) == 0)
      {
        if ([v4 clsPeopleCount])
        {
          v11 = 0;
          goto LABEL_8;
        }

        v13 = [v4 clsSceneClassifications];
        v14 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:v13];

        if (!v14)
        {
          v15 = [v4 clsSceneClassifications];
          v11 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:v15 forKeyAsset:0 forMemories:0];

          goto LABEL_8;
        }
      }
    }
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)avoidIfPossibleForKeyAssetWithAsset:(id)a3 statistics:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CLSCurationModel_v4;
  if ([(CLSCurationModel_v3 *)&v15 avoidIfPossibleForKeyAssetWithAsset:v6 statistics:a4])
  {
    goto LABEL_4;
  }

  if ([(CLSCurationModel_v4 *)self isMemeWithAsset:v6])
  {
    ++a4->var9;
LABEL_4:
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  v8 = [v6 mediaAnalysisProperties];
  v9 = [v8 probableRotationDirection];
  if (((v9 - 1) & 0xFFFC) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [v8 probableRotationDirectionConfidence];
  v12 = v11;
  v13 = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
  v7 = [v13 isWronglyRotatedForDirection:v10 confidence:v12];

  if (v7)
  {
    ++a4->var10;
  }

LABEL_11:
  return v7;
}

- (BOOL)isUtilityForMemoriesWithAsset:(id)a3 userFeedbackCalculator:(id)a4 blockSocialMediaImportedAssets:(BOOL)a5
{
  v5 = a5;
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v61.receiver = self;
  v61.super_class = CLSCurationModel_v4;
  v10 = [(CLSCurationModel_v3 *)&v61 isUtilityForMemoriesWithAsset:v8 userFeedbackCalculator:v9];
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v11 = [v8 curationProperties];
      v12 = [v11 importedByBundleIdentifier];
      v13 = 1;
      v14 = [CLSCurationUtilities isBlocklistedImportedByBundleIdentifier:v12 withExternalAppBlocklistType:1];

      if (v14)
      {
        goto LABEL_35;
      }

LABEL_6:
      if ([(CLSCurationModel_v4 *)self isMemeWithAsset:v8])
      {
        goto LABEL_7;
      }

      v15 = [v8 mediaAnalysisProperties];
      v16 = [v15 probableRotationDirection];
      if (((v16 - 1) & 0xFFFC) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      [v15 probableRotationDirectionConfidence];
      v19 = v18;
      v20 = [(CLSCurationModel_v1 *)self mediaPreAnalysisModel];
      v21 = [v20 isWronglyRotatedForDirection:v17 confidence:v19];

      v52 = v15;
      if (v21 && ([v8 clsFaceInformationSummary], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "numberOfFaces"), v22, v23))
      {
        v24 = [(CLSCurationModel_v1 *)self confidenceThresholdBySceneIdentifierForBabyScenes];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v25 = [v8 clsSceneClassifications];
        v26 = [v25 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v26)
        {
          v27 = v26;
          v51 = v9;
          v28 = *v58;
LABEL_15:
          v29 = 0;
          while (1)
          {
            if (*v58 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v57 + 1) + 8 * v29);
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v30, "extendedSceneIdentifier", v51)}];
            v32 = [v24 objectForKeyedSubscript:v31];

            if (v32)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v57 objects:v66 count:16];
              v13 = 1;
              if (v27)
              {
                goto LABEL_15;
              }

              v9 = v51;
              goto LABEL_32;
            }
          }

          [v30 confidence];
          v34 = v33;
          [v32 doubleValue];
          v36 = v35;

          v9 = v51;
          v15 = v52;
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
        v37 = [v8 clsFaceInformationSummary];
        v38 = [v37 faceInformationByPersonLocalIdentifier];

        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v24 = v38;
        v39 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
                objc_enumerationMutation(v24);
              }

              v43 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:*(*(&v53 + 1) + 8 * i)];
              [v25 addObject:v43];
            }

            v40 = [v24 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v40);
        }

        v44 = [v8 clsIdentifier];
        v64 = v44;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        v46 = [v8 clsIdentifier];
        v62 = v46;
        v63 = v25;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [v9 scoreForAssetUUIDs:v45 personsUUIDsByAssetUUIDs:v47];
        v49 = v48;

        v13 = [MEMORY[0x1E6978B08] score:v49 meetsScoreThreshold:*MEMORY[0x1E6978FD0]];
LABEL_32:
        v15 = v52;
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

- (BOOL)isUtilityForMemoriesForImageAsset:(id)a3
{
  v4 = a3;
  if ([v4 clsHasCustomPlaybackVariation])
  {
    goto LABEL_2;
  }

  if ([v4 clsIsTragicFailure] & 1) != 0 || (-[CLSCurationModel_v1 mediaPreAnalysisModel](self, "mediaPreAnalysisModel"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sharpnessNode"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clsSharpnessScore"), v8 = objc_msgSend(v7, "failsHighRecallWithConfidence:"), v7, v6, (v8) || (-[CLSCurationModel_v1 aestheticsModel](self, "aestheticsModel"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "overallAestheticScoreNode"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clsAestheticScore"), v11 = objc_msgSend(v10, "failsHighRecallWithConfidence:"), v10, v9, (v11))
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (![v4 clsPeopleCount])
  {
    v13 = [v4 clsSceneClassifications];
    v14 = [(CLSCurationModel_v1 *)self imageAssetIsJunkFromSceneAndJunkClassifications:v13];

    if (!v14)
    {
      v15 = [v4 clsSceneClassifications];
      v5 = [(CLSCurationModel_v1 *)self imageAssetIsJunkForMemoriesFromSceneAndJunkClassifications:v15 forKeyAsset:0 forMemories:1];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)isUtilityForMemoriesWithVideoAsset:(id)a3
{
  v4 = a3;
  [v4 duration];
  if (v5 <= 60.0)
  {
    v8.receiver = self;
    v8.super_class = CLSCurationModel_v4;
    v6 = [(CLSCurationModel_v1 *)&v8 isUtilityForMemoriesWithVideoAsset:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isUtilityForVideoAsset:(id)a3
{
  v4 = a3;
  if ([v4 playbackStyle] == 5)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CLSCurationModel_v4;
    v5 = [(CLSCurationModel_v1 *)&v7 isUtilityForVideoAsset:v4];
  }

  return v5;
}

- (BOOL)isVeryPreciselyIVSNSFWExplicitWithAsset:(id)a3
{
  v4 = [a3 clsProcessedSignals];
  v5 = [(CLSCurationModel_v4 *)self ivsNSFWModel];

  if (v5)
  {
    v6 = [v4 isVeryPreciselyIVSNSFWExplicit];
  }

  else
  {
    v6 = [v4 isPreciselyNSFWExplicit];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isMemeWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(CLSCurationModel_v4 *)self memeModel];
  v6 = [v4 clsSceneClassifications];

  LOBYTE(v4) = [v5 isMemeFromSceneClassifications:v6];
  return v4;
}

- (BOOL)isMemeExclusiveWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(CLSCurationModel_v4 *)self memeModel];
  v6 = [v4 clsSceneClassifications];

  LOBYTE(v4) = [v5 isMemeExclusiveFromSceneClassifications:v6];
  return v4;
}

- (id)faceInformationSummaryWithFaces:(id)a3 detectionTraitsByFaceLocalIdentifier:(id)a4 verifiedPersonUUIDs:(id)a5 hiddenPersonUUIDs:(id)a6 personUUIDByMergeCandidateUUID:(id)a7 userFeedbackCalculator:(id)a8 assetUUID:(id)a9
{
  v109 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v86 = a4;
  v74 = a5;
  v76 = a6;
  v81 = a7;
  v16 = a8;
  v17 = a9;
  v83 = self;
  v70 = [(CLSCurationModel_v1 *)self faceModel];
  if (!v70 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v108 = v17;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "faceInformationSummaryWithFaces: Asset %@ has no face model", buf, 0xCu);
  }

  v18 = [v15 count];
  v69 = v17;
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
  v77 = [v70 qualityNode];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v20 = v15;
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
  v67 = v16;
  v68 = v15;
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
      v29 = [v28 localIdentifier];
      v93 = [v86 objectForKeyedSubscript:v29];

      v30 = [v28 detectionType];
      if (v30 != 2)
      {
        ++v23;
      }

      [v28 size];
      v32 = v31;
      [v28 quality];
      v34 = v33;
      v35 = v26 + v33;
      if (v30 == 2)
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
        v22 += v30 != 2;
        v25 = v25 + v34;
        v26 = v35;
      }

      v36 = [v28 eyesState];
      [(CLSCurationModel_v1 *)v83 faceSizeLowerLimit];
      if (v32 >= v37)
      {
        [(CLSCurationModel_v1 *)v83 faceSizeUpperLimit];
        v38 = v32 <= v39;
      }

      else
      {
        v38 = 0;
      }

      v92 = v22;
      if (v36 == 2)
      {
        v40 = [v77 passesHighPrecisionWithConfidence:v34] & v38;
        v85 += v40 & 1;
        v84 += v40 & (v30 != 2);
        v41 = [v77 passesWithConfidence:v34] & v38;
      }

      else
      {
        LOBYTE(v40) = 0;
        v41 = 0;
      }

      v42 = [v28 personLocalIdentifier];
      if (!v42)
      {
        v21 = v91;
        v22 = v92;
        goto LABEL_43;
      }

      v89 = v23;
      v43 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:v42];
      v44 = [v81 objectForKeyedSubscript:v43];
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

      if ([v76 containsObject:v43])
      {
        ++v75;
        v46 = [CLSFaceInformation alloc];
        [v28 size];
        v47 = [CLSFaceInformation initForHiddenPersonWithFaceSize:v46 faceQuality:"initForHiddenPersonWithFaceSize:faceQuality:faceSizeIsGood:faceIsGood:faceIsOk:traits:" faceSizeIsGood:v38 faceIsGood:v40 & 1 faceIsOk:v41 traits:v93];
        goto LABEL_39;
      }

      if ([v74 containsObject:v43])
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
      [v79 setObject:v47 forKeyedSubscript:v42];
      v21 = v91;
      v22 = v92;
      if (!v45 || ([v87 objectForKeyedSubscript:v45], v52 = objc_claimAutoreleasedReturnValue(), v52, v53 = v45, v52))
      {
        v53 = v42;
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

  v16 = v67;
  v15 = v68;
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
  [v16 scoreForAssetUUIDs:v61 personsUUIDsByAssetUUIDs:v62];
  v64 = v63;

  v65 = [[CLSAssetFaceInformationSummary alloc] initWithNumberOfFaces:v90 numberOfFacesIncludingPets:v18 numberOfFacesOfVerifiedPersons:v72 numberOfFacesOfHiddenPersons:v75 numberOfGoodFaces:v84 numberOfGoodFacesIncludingPets:v85 numberOfGoodFacesOfVerifiedPersons:v26 averageFaceQuality:v25 averageFaceQualityIncludingPets:v24 averageFaceQualityOfVerifiedPersons:v64 userFeedbackScore:v73 faceInformationByPersonLocalIdentifier:v55 faceInformationByConsolidatedPersonLocalIdentifier:v87];

  return v65;
}

- (CLSCurationModel_v4)initWithCurationModelSpecification:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CLSCurationModel_v4;
  v5 = [(CLSCurationModel_v3 *)&v14 initWithCurationModelSpecification:v4];
  if (v5)
  {
    v6 = [v4 sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A70]) initWithSceneAnalysisVersion:v6];
    memeModel = v5->_memeModel;
    v5->_memeModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1AA0]) initWithSceneAnalysisVersion:v6];
    trendsSceneModel = v5->_trendsSceneModel;
    v5->_trendsSceneModel = v9;

    v11 = [objc_alloc(MEMORY[0x1E69C1A48]) initWithSceneAnalysisVersion:v6];
    ivsNSFWModel = v5->_ivsNSFWModel;
    v5->_ivsNSFWModel = v11;
  }

  return v5;
}

@end