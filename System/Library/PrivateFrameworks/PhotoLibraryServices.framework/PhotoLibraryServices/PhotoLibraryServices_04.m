id PLSearchSceneLookupIdentifier(unint64_t a1, uint64_t a2)
{
  if (a1 <= 7 && ((0xFDu >> a1) & 1) != 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%llu", off_1E756F338[a1], a2, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PLSearchLookupIdentifierForStickerSuggestionType(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E756F378[a1 - 1];
  }

  v2 = [(__CFString *)v1 length];
  if (v2)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"sticker", v1];
  }

  return v2;
}

id PLSearchContributorUUIDFromLookupIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"contributor"])
  {
    v2 = [v1 lastPathComponent];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PLSearchSceneIdentifierFromLookupIdentifier(void *a1)
{
  v1 = a1;
  if (([v1 hasPrefix:@"scene"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"parseRichLabel") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"privateEncryptedComputeKGID") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"privateEncryptedComputeMUID") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"privateEncryptedComputeAMP") & 1) != 0 || objc_msgSend(v1, "hasPrefix:", @"audio"))
  {
    v2 = [v1 lastPathComponent];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLSearchHumanActionIdentifierFromLookupIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"humanAction"])
  {
    v2 = [v1 lastPathComponent];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLSearchSeasonFromLookupIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"season"])
  {
    v2 = [v1 lastPathComponent];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLSearchMeaningFromLookupIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"meaning"])
  {
    v2 = [v1 lastPathComponent];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLSearchDominantSceneWithIdentifierInSceneClassifications(void *a1, int a2, void *a3, double *a4, _OWORD *a5)
{
  v27 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = *(MEMORY[0x1E695F050] + 16);
  v33 = *MEMORY[0x1E695F050];
  v34 = v9;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v30;
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    v16 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if (PLSearchDominantSceneAny == a2 || [*(*(&v29 + 1) + 8 * i) sceneIdentifier] == a2)
        {
          [v18 packedBoundingBoxRect];
          PLSplitToCGRectFromInt64();
          v19 = v14 == 0.0 && v15 == 0.0;
          if (v19 || ![v8 nodeRefForExtendedSceneClassId:{objc_msgSend(v18, "sceneIdentifier")}] || (PFSceneTaxonomyNodeHighRecallThreshold(), v21 = v20, objc_msgSend(v18, "confidence"), v22 < v21) || (v23 = 0.0 * 0.0, 0.0 * 0.0 <= v16))
          {
            v23 = v16;
          }

          else
          {
            v24 = v18;

            v33 = 0u;
            v34 = 0u;
            v12 = v24;
          }

          v16 = v23;
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v16 = 0.0;
  }

  if (v27)
  {
    *v27 = v16;
  }

  if (a5)
  {
    v25 = v34;
    *a5 = v33;
    a5[1] = v25;
  }

  return v12;
}

uint64_t PLSearchAssetContainsDetectionTypeDog(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (PLSearchAssetContainsDetectionTypeDog_onceToken != -1)
  {
    dispatch_once(&PLSearchAssetContainsDetectionTypeDog_onceToken, &__block_literal_global_64264);
  }

  if (PLSearchAssetContainsDetectionTypeDog_indexIgnoreANOD)
  {
    v5 = 1;
  }

  else
  {
    [v4 allDetectedFaces];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v13 = 0u;
    v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) detectionType] == 3)
          {
            v5 = 1;
            goto LABEL_15;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v5;
}

void __PLSearchAssetContainsDetectionTypeDog_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE230]())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    PLSearchAssetContainsDetectionTypeDog_indexIgnoreANOD = [v0 BOOLForKey:@"indexIgnoreANOD"];

    v1 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      if (PLSearchAssetContainsDetectionTypeDog_indexIgnoreANOD)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v3 = v2;
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_19BF1F000, v1, OS_LOG_TYPE_DEFAULT, "indexIgnoreANOD: %@.", &v4, 0xCu);
    }
  }
}

uint64_t PLSearchImageSensitivityForSceneClassifications(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v17 = v4;
      v8 = *v19;
      v9 = *MEMORY[0x1E69CA7B0];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (([v11 classificationType] & 0xFFFFFFFD) == 0)
          {
            v12 = [v11 sceneIdentifier];
            if (v12 == 2147481854)
            {
              v13 = MEMORY[0x1E69CA708];
              [v11 confidence];
              if ([v13 isImageSensitiveForLabel:v9 confidenceScore:3 classificationMode:?])
              {
                goto LABEL_18;
              }
            }

            else if (a2 <= 0x3C && v12 == 2147483383)
            {
              [v11 confidence];
              if (v14 > 0.09)
              {
LABEL_18:
                v4 = v17;
                v15 = 2;
                goto LABEL_20;
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v15 = 1;
      v4 = v17;
    }

    else
    {
      v15 = 1;
    }

LABEL_20:
  }

  return v15;
}

double PLSearchHighRecallThresholdForTabooSceneID(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 2147482870) <= 9)
  {
    return *(&unk_19C60BFE0 + a1 - 2147482870);
  }

  return result;
}

uint64_t PLSearchContainsTabooScene(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [v5 sceneIdentifier] - 2147482870;
        if (v6 <= 9)
        {
          v7 = dbl_19C60BFE0[v6];
          [v5 confidence];
          if (v8 >= v7)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

uint64_t PLSearchIsAssetSafeForStickers(void *a1, int a2)
{
  v3 = a1;
  if (PLSearchImageSensitivityForSceneClassifications(v3, a2) == 1)
  {
    v4 = PLSearchContainsTabooScene(v3) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void PLSearchEnumerateSearchStringsForUtilityCollections(void *a1, void *a2, void *a3)
{
  v25 = a1;
  v5 = a2;
  v6 = a3;
  if (!_os_feature_enabled_impl() || !objc_opt_class() || [v25 kind] == 1)
  {
    goto LABEL_11;
  }

  v7 = [v5 utilityAssetPool];
  v8 = [v5 sceneTaxonomyProvider];
  v9 = [PLUtilityAsset utilityAssetFromManagedAsset:v25 usingPool:v7];
  v10 = [v8 searchIndexSceneTaxonomyForSceneAnalysisVersion:{objc_msgSend(v9, "sceneAnalysisVersion")}];
  v11 = [objc_alloc(MEMORY[0x1E69C1A38]) initWithSceneTaxonomy:v10];
  v12 = [MEMORY[0x1E69C1AC0] utilityTypesDetectedInAsset:v9 usingSceneModel:v11];
  [v7 recycleAsset:v9];

  if (v12)
  {
    v15 = PLServicesLocalizedFrameworkString();
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 1];
    v6[2](v6, 1, v15, v16);

    if ((v12 & 2) == 0)
    {
LABEL_6:
      if ((v12 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_6;
  }

  v17 = PLServicesLocalizedFrameworkString();
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 2];
  v6[2](v6, 2, v17, v18);

  if ((v12 & 4) == 0)
  {
LABEL_7:
    if ((v12 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v21 = PLServicesLocalizedFrameworkString();
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 4];
    v6[2](v6, 8, v21, v22);

    if ((v12 & 0x20) == 0)
    {
LABEL_9:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_16:
  v19 = PLServicesLocalizedFrameworkString();
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 3];
  v6[2](v6, 4, v19, v20);

  if ((v12 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_18:
  v23 = PLServicesLocalizedFrameworkString();
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 6];
  v6[2](v6, 32, v23, v24);

  if ((v12 & 0x10) != 0)
  {
LABEL_10:
    v13 = PLServicesLocalizedFrameworkString();
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"utilityCollection", 5];
    v6[2](v6, 16, v13, v14);
  }

LABEL_11:
}

uint64_t PLSearchSearchStringsForPersonAgeType(int a1, void *a2)
{
  v8 = a2;
  if ((a1 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E756F3B0[(a1 - 1)];
  }

  v4 = [(__CFString *)v3 length];
  if (v4)
  {
    v5 = PLServicesLocalizedFrameworkString();
    v6 = PLSearchLocalizedSynonymsForKey(v3);
    v8[2](v8, v5, v6);
  }

  return MEMORY[0x1EEE66BE0](v4);
}

void PLSearchStringsForPersonRelation(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [v3 relationTypeConfidence];
  if (v5 >= 1.0)
  {
    v7 = [v3 relationType] - 1;
    if (v7 > 0x13)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_1E756F3D8 + v7);
    }

    if ([v8 length])
    {
      v9 = PLServicesLocalizedFrameworkString();
      v10 = PLSearchLocalizedSynonymsForKey(v8);
      v4[2](v4, v9, v10);
    }
  }

  else
  {
    v6 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "PersonRelation below threshold, skipping. PersonRelation: %@", &v11, 0xCu);
    }

    v4[2](v4, 0, 0);
  }
}

void PLSearchEnumerateSearchStringsForDetectionTraits(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 1)
        {
          v10 = [v9 value] - 2;
          if (v10 > 0x17)
          {
            v12 = 0;
            v11 = 0.0;
          }

          else
          {
            v11 = dbl_19C60C030[v10];
            v12 = off_1E756F478[v10];
          }

          [v9 score];
          if (v13 >= v11 && [(__CFString *)v12 length])
          {
            v14 = PLServicesLocalizedFrameworkString();
            v15 = PLSearchLocalizedSynonymsForKey(v12);
            v4[2](v4, v9, v14, v15);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void PLSearchEnumerateSearchStringsForAudioClassifications(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PLSearchEnumerateSearchStringsForAudioClassifications_block_invoke;
  v5[3] = &unk_1E756F2A0;
  v6 = v3;
  v4 = v3;
  [a1 enumerateObjectsUsingBlock:v5];
}

void __PLSearchEnumerateSearchStringsForAudioClassifications_block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 classificationType];
  v4 = v10;
  if (v3 == 3)
  {
    v5 = [v10 sceneIdentifier] - 1;
    v6 = v5 > 5 ? 0 : off_1E756F538[v5];
    v7 = [(__CFString *)v6 length];
    v4 = v10;
    if (v7)
    {
      v8 = PLServicesLocalizedFrameworkString();
      v9 = PLSearchLocalizedSynonymsForKey(v6);
      (*(*(a1 + 32) + 16))();

      v4 = v10;
    }
  }
}

uint64_t PLSearchStickerSuggestionTypeForSceneID(uint64_t a1)
{
  if ((a1 - 15) > 0x6E5)
  {
    return 0;
  }

  else
  {
    return qword_19C60C0F0[a1 - 15];
  }
}

float PLStickerSuggestionConfidenceThreshold()
{
  if (PLStickerSuggestionConfidenceThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionConfidenceThreshold_token, &__block_literal_global_273_64457);
  }

  return *&PLStickerSuggestionConfidenceThreshold_stickerSuggestionConfidenceThreshold;
}

void __PLStickerSuggestionConfidenceThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLSearchIndexStickerSuggestionConfidenceThreshold"];

  if (v1)
  {
    [v1 floatValue];
    PLStickerSuggestionConfidenceThreshold_stickerSuggestionConfidenceThreshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = *&PLStickerSuggestionConfidenceThreshold_stickerSuggestionConfidenceThreshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding Sticker confidence with user default value: %f", &v4, 0xCu);
    }
  }
}

float PLLiveStickerSuggestionConfidenceThreshold()
{
  if (PLLiveStickerSuggestionConfidenceThreshold_token != -1)
  {
    dispatch_once(&PLLiveStickerSuggestionConfidenceThreshold_token, &__block_literal_global_278_64465);
  }

  return *&PLLiveStickerSuggestionConfidenceThreshold_liveStickerSuggestionConfidenceThreshold;
}

void __PLLiveStickerSuggestionConfidenceThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLSearchIndexLiveStickerSuggestionConfidenceThreshold"];

  if (v1)
  {
    [v1 floatValue];
    PLLiveStickerSuggestionConfidenceThreshold_liveStickerSuggestionConfidenceThreshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = *&PLLiveStickerSuggestionConfidenceThreshold_liveStickerSuggestionConfidenceThreshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding Live Sticker confidence with user default value: %f", &v4, 0xCu);
    }
  }
}

double PLStickerSuggestionDominantSceneAreaMinThreshold()
{
  if (PLStickerSuggestionDominantSceneAreaMinThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneAreaMinThreshold_token, &__block_literal_global_283_64473);
  }

  return *&PLStickerSuggestionDominantSceneAreaMinThreshold_threshold;
}

void __PLStickerSuggestionDominantSceneAreaMinThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLStickerSuggestionDominantSceneAreaMinThreshold"];

  if (v1)
  {
    [v1 doubleValue];
    PLStickerSuggestionDominantSceneAreaMinThreshold_threshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = PLStickerSuggestionDominantSceneAreaMinThreshold_threshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding PLStickerSuggestionDominantSceneAreaMinThreshold with user default value: %f", &v4, 0xCu);
    }
  }
}

double PLStickerSuggestionDominantSceneAreaMaxThreshold()
{
  if (PLStickerSuggestionDominantSceneAreaMaxThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneAreaMaxThreshold_token, &__block_literal_global_288);
  }

  return *&PLStickerSuggestionDominantSceneAreaMaxThreshold_threshold;
}

void __PLStickerSuggestionDominantSceneAreaMaxThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLStickerSuggestionDominantSceneAreaMaxThreshold"];

  if (v1)
  {
    [v1 doubleValue];
    PLStickerSuggestionDominantSceneAreaMaxThreshold_threshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = PLStickerSuggestionDominantSceneAreaMaxThreshold_threshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding PLStickerSuggestionDominantSceneAreaMaxThreshold with user default value: %f", &v4, 0xCu);
    }
  }
}

double PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold()
{
  if (PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_token, &__block_literal_global_293);
  }

  return *&PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_threshold;
}

void __PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold"];

  if (v1)
  {
    [v1 doubleValue];
    PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_threshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_threshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold with user default value: %f", &v4, 0xCu);
    }
  }
}

double PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold()
{
  if (PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_token, &__block_literal_global_298);
  }

  return *&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_stickerSuggestionConfidenceThreshold;
}

void __PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold"];

  if (v1)
  {
    [v1 floatValue];
    PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_stickerSuggestionConfidenceThreshold = v2;
    v3 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = *&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_stickerSuggestionConfidenceThreshold;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Overriding PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold with user default value: %f", &v4, 0xCu);
    }
  }
}

__CFString *PLPhotolibraryWellKnownIdentifierDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"invalid identifer";
  }

  else
  {
    return off_1E756F568[a1];
  }
}

__CFString *PLPhotolibraryWellKnownIdentifierDescriptionForPhotoLibrary(void *a1)
{
  v1 = [a1 libraryServicesManager];
  v2 = [v1 wellKnownPhotoLibraryIdentifier];

  if (v2 > 3)
  {
    return @"invalid identifer";
  }

  else
  {
    return off_1E756F568[v2];
  }
}

void PLSearchIndexEnumeratePlacesFromBigToSmall(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PLSearchIndexEnumeratePlacesFromBigToSmall_block_invoke;
  aBlock[3] = &unk_1E756F2C8;
  v16 = v5;
  v22 = v16;
  v15 = v4;
  v23 = v15;
  v24 = &v25;
  v6 = _Block_copy(aBlock);
  if (v3)
  {
    v7 = &qword_19C60BF68;
    do
    {
      v8 = *v7;
      if (*v7 == 1)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
        v10 = [v3 objectForKeyedSubscript:v9];

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v29 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v6[2](v6, *(*(&v17 + 1) + 8 * i), 1);
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v29 count:16];
          }

          while (v11);
        }
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*v7, v15, v16}];
        v14 = [v3 objectForKeyedSubscript:v10];
        (v6)[2](v6, v14, v8);
      }

      if (v26[3])
      {
        break;
      }

      --v7;
    }

    while (v7 >= PLSearchIndexEnumeratePlacesFromBigToSmall_PLRevGeoOrderTypes);
  }

  _Block_object_dispose(&v25, 8);
}

void __PLSearchIndexEnumeratePlacesFromBigToSmall_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([v5 length] && (a3 <= 0xC && ((1 << a3) & 0x1420) != 0 || (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0))
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) addObject:v5];
  }
}

id PLSearchCreatePlaceNamesSortedByCategory(void *a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 locationInfo];
  if (v4)
  {
    v5 = [v3 placeAnnotation];
    v6 = [v4 placeWithAnnotation:v5];

    if (v6 || !a2)
    {
      v12 = [[PSIObject alloc] initForReverse];
      v13 = v6;
      v14 = [v12 tokens];
      if ([v14 count])
      {
        __assert_rtn("_PSIAddPlaceInfoToObject", "PLSearchIndexUtilities.m", 1750, "tokens.count == 0");
      }

      v39 = v6;
      v40 = v4;
      v41 = v3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___PSIAddPlaceInfoToObject_block_invoke;
      aBlock[3] = &unk_1E756F318;
      v37 = v14;
      v51 = v37;
      v38 = v12;
      v52 = v38;
      v15 = _Block_copy(aBlock);
      v16 = &qword_19C60BFD8;
      do
      {
        v17 = *v16;
        v18 = [v13 placeInfosForOrderType];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
        v20 = [v18 objectForKeyedSubscript:v19];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v47;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v47 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v46 + 1) + 8 * i) placeName];
              v15[2](v15, v26, v17);
            }

            v23 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v23);
        }

        --v16;
      }

      while (v16 >= _PSIAddPlaceInfoToObject_PLRevGeoOrderTypes);
      v7 = v38;
      [v38 reverse];

      v27 = [v38 tokens];
      v11 = [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v9 = v27;
      v28 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v9);
            }

            v32 = *(*(&v42 + 1) + 8 * j);
            v33 = [v32 text];
            v34 = [v33 length];

            if (v34)
            {
              v35 = [v32 text];
              [v11 addObject:v35];
            }
          }

          v29 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v29);
      }

      v4 = v40;
      v3 = v41;
      v6 = v39;
    }

    else
    {
      v7 = [v4 compoundNameInfo];
      v8 = [v7 sortedNames];
      v9 = [v8 firstObject];

      if ([v9 isEqualToString:@"_$!<Home>!$_"])
      {
        v10 = PLMomentsLocalizedFrameworkString(@"MOMENT_HOME");

        v9 = v10;
      }

      if ([v9 length])
      {
        v54 = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

__CFString *PLSearchLocalizedHomeString()
{
  v0 = PLMomentsLocalizedFrameworkString(@"MOMENT_HOME");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Home?";
  }

  v3 = v2;

  return v2;
}

uint64_t CSUSearchableKnowledgeObjectIdTypeForPLSceneClassificationType(unint64_t a1)
{
  if (a1 > 7)
  {
    return 1;
  }

  else
  {
    return word_19C60B090[a1];
  }
}

uint64_t PLSearchIndexCategoryForPLSceneClassificationType(unint64_t a1)
{
  if (a1 > 7)
  {
    return 1510;
  }

  else
  {
    return qword_19C60F820[a1];
  }
}

__CFString *PLDebugStringForCSSceneType(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756F588[a1];
  }
}

id PLSearchStringByTrimmingApostrophes(void *a1)
{
  v1 = a1;
  if (PLSearchStringByTrimmingApostrophes_onceToken != -1)
  {
    dispatch_once(&PLSearchStringByTrimmingApostrophes_onceToken, &__block_literal_global_362);
  }

  if ([v1 length])
  {
    v2 = [v1 mutableCopy];
    v3 = [v2 rangeOfCharacterFromSet:PLSearchStringByTrimmingApostrophes_apostropheCharacterSet];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v3; i != 0x7FFFFFFFFFFFFFFFLL; i = [v2 rangeOfCharacterFromSet:PLSearchStringByTrimmingApostrophes_apostropheCharacterSet])
      {
        [v2 deleteCharactersInRange:{i, v4}];
      }
    }

    v6 = [v2 copy];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

void __PLSearchStringByTrimmingApostrophes_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'’ʻʼ"];
  v1 = PLSearchStringByTrimmingApostrophes_apostropheCharacterSet;
  PLSearchStringByTrimmingApostrophes_apostropheCharacterSet = v0;
}

uint64_t PLSearchStringsForAdjustmentStyleCast(unsigned int a1, void *a2)
{
  v7 = a2;
  if (a1 > 0x10)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E756F5D0[a1];
  }

  if ([(__CFString *)v3 length])
  {
    v4 = PLServicesLocalizedFrameworkString();
    v5 = PLSearchLocalizedSynonymsForKey(v3);
    v7[2](v7, v4, v5);
  }

  return MEMORY[0x1EEE66BE0]();
}

void sub_19C36B648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65189(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PLCentroidForCoordinates(double a1, double a2, double a3, CLLocationDegrees a4, CLLocationDegrees a5, double a6)
{
  v12 = CLLocationCoordinate2DIsValid(*&a1);
  v27.latitude = a4;
  v27.longitude = a5;
  v13 = CLLocationCoordinate2DIsValid(v27);
  if ((v12 || v13) && v12 && v13)
  {
    v14 = a3 + a6;
    if (a3 + a6 != 0.0)
    {
      v26 = a2 * 3.14159265 / 180.0;
      v15 = __sincos_stret(a4 * 3.14159265 / 180.0);
      v16 = __sincos_stret(a1 * 3.14159265 / 180.0);
      v17 = a3 / v14;
      v18 = a6 / v14;
      v19 = __sincos_stret(v26);
      v20 = __sincos_stret(a5 * 3.14159265 / 180.0);
      v21 = v18 * (v15.__cosval * v20.__cosval) + v16.__cosval * v19.__cosval * v17;
      v22 = v18 * (v15.__cosval * v20.__sinval) + v16.__cosval * v19.__sinval * v17;
      v23 = v18 * v15.__sinval + v16.__sinval * v17;
      v24 = atan2(v22, v21);
      v25 = atan2(v23, sqrt(v22 * v22 + v21 * v21));
      CLLocationCoordinate2DMake(v25 * 180.0 / 3.14159265, v24 * 180.0 / 3.14159265);
    }
  }
}

double PLCentroidForMoments(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v22 + 1) + 8 * i) pl_coordinate];
        v11 = v10 * 3.14159265 / 180.0;
        v12 = __sincos_stret(v9 * 3.14159265 / 180.0);
        v13 = __sincos_stret(v11);
        v7 = v7 + v12.__cosval * v13.__cosval;
        v6 = v6 + v12.__cosval * v13.__sinval;
        v5 = v5 + v12.__sinval;
      }

      v3 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v14 = [v1 count];
  v15 = v7 / v14;
  v16 = v6 / v14;
  v17 = v5 / v14;
  v18 = atan2(v16, v15);
  v19 = atan2(v17, sqrt(v16 * v16 + v15 * v15));
  *&v20 = *&CLLocationCoordinate2DMake(v19 * 180.0 / 3.14159265, v18 * 180.0 / 3.14159265);

  return v20;
}

void PLAzimuthBetweenCoordinates(double *a1, double *a2)
{
  v2 = *a1 * 3.14159265 / 180.0;
  v3 = a1[1] * 3.14159265 / 180.0;
  v4 = a2[1] * 3.14159265 / 180.0;
  v5 = __sincos_stret(*a2 * 3.14159265 / 180.0);
  v6 = __sincos_stret(v4 - v3);
  v7 = __sincos_stret(v2);
  atan2(v5.__cosval * v6.__sinval, -(v7.__sinval * v5.__cosval) * v6.__cosval + v7.__cosval * v5.__sinval);
}

double PLAzimuthDistancePairFrom(double a1, double a2, double a3, double a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  PLAzimuthBetweenCoordinates(v8, v7);
  v5 = v4;
  CLLocationCoordinate2DGetDistanceFrom();
  return v5;
}

id PhotosString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 localizedStringForKey:v3 value:&stru_1F0F06D80 table:v4];

  if ([v6 isEqualToString:v3])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-GM", v4];
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 localizedStringForKey:v3 value:&stru_1F0F06D80 table:v7];

    v6 = v9;
  }

  return v6;
}

void sub_19C370C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65835(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C372C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_19C374E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C375EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3770EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3772E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _allocationSizeForEntry(_BYTE *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if ((v1 - 177) <= 0x13)
  {
    return ((v1 << 11) - 360448);
  }

  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109376;
    v5[1] = v1;
    v6 = 2048;
    v7 = a1;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "LOFR: unexpected marker value %hhu at position: %p", v5, 0x12u);
  }

  return -1;
}

void sub_19C37A870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C37C624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66776(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C37D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLStringFromPLComputeCacheRestoreStateShort(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"PLComputeCacheRestoreStateCompleted";
  }

  else
  {
    v1 = off_1E756FF70[a1 - 1];
  }

  v2 = -[__CFString substringFromIndex:](v1, "substringFromIndex:", [@"PLComputeCacheRestoreState" length]);
  v3 = [v2 lowercaseString];

  return v3;
}

void sub_19C37DDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_19C37EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C381378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3818E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3840EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67058(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3848E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C3850D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C385890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_Staged(void *a1, unsigned int a2, int a3)
{
  v4 = a3 == 16117 && a2 >> 2 < 0xFBB;
  v5 = a3 == 16117 && a2 > 0x3E80;
  v6 = a2 >> 2 < 0xFBB && v5;
  v7 = a1;
  [v7 registerStagedActionClass:objc_opt_class() onCondition:a3 == 15110];
  [v7 registerStagedActionClass:objc_opt_class() onCondition:v4];
  [v7 registerStagedActionClass:objc_opt_class() onCondition:v6];
  [v7 registerStagedActionClass:objc_opt_class() onCondition:v5];
}

id _PLCMMDateStringForStartAndEndDates(void *a1, void *a2)
{
  v3 = _PLCMMDateStringForStartAndEndDates_predicate;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&_PLCMMDateStringForStartAndEndDates_predicate, &__block_literal_global_67224);
  }

  v6 = [_PLCMMDateStringForStartAndEndDates__dateRangeFormatter stringFromDate:v5 toDate:v4];

  return v6;
}

void PLCMMTitleAndSubtitleForTitleAndFallbackDates(void *a1, void *a2, void *a3, __CFString **a4, __CFString **a5)
{
  v13 = a1;
  v9 = _PLCMMDateStringForStartAndEndDates(a2, a3);
  if ([v13 length])
  {
    *a4 = v13;
    v10 = v9;
    v11 = v9;
  }

  else
  {
    v12 = v9;
    *a4 = v9;
    v11 = &stru_1F0F06D80;
  }

  *a5 = v11;
}

void sub_19C388C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67484(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C389E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void writeToTemporaryMediaFileWithExtension(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeToTemporaryMediaFileWithExtension(NSString *__strong, NSMutableSet *__strong, BOOL (^__strong)(NSString *__strong))"}];
    [v30 handleFailureInFunction:v31 file:@"PLCloudStreamShareJob.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"temporaryMediaFilePaths"}];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeToTemporaryMediaFileWithExtension(NSString *__strong, NSMutableSet *__strong, BOOL (^__strong)(NSString *__strong))"}];
  [v28 handleFailureInFunction:v29 file:@"PLCloudStreamShareJob.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"pathExtension"}];

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_13:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeToTemporaryMediaFileWithExtension(NSString *__strong, NSMutableSet *__strong, BOOL (^__strong)(NSString *__strong))"}];
  [v32 handleFailureInFunction:v33 file:@"PLCloudStreamShareJob.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"writeBlock"}];

LABEL_4:
  v8 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v9 = [v8 lastObject];
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [v9 stringByAppendingPathComponent:v11];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v35 = 0;
  v14 = [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v35];
  v15 = v35;

  if ((v14 & 1) == 0)
  {
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Error creating directory for PLCloudStreamShareJob: %@", buf, 0xCu);
    }
  }

  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];
  v19 = [v18 stringByAppendingPathExtension:v5];

  v20 = [v12 stringByAppendingPathComponent:v19];
  if (v7[2](v7, v20))
  {
    [MEMORY[0x1E695DFF8] fileURLWithPath:v20];
    v34 = v12;
    v21 = v15;
    v22 = v9;
    v23 = v7;
    v24 = v8;
    v25 = v5;
    v27 = v26 = v6;
    [PLCacheDeleteSupport markPurgeableForFileAtURL:v27 withUrgency:0 outInode:0];

    v6 = v26;
    v5 = v25;
    v8 = v24;
    v7 = v23;
    v9 = v22;
    v15 = v21;
    v12 = v34;
    [v6 addObject:v20];
  }
}

id _descriptionOfManagedObjectIDArray(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  count = xpc_array_get_count(v10);
  v12 = [MEMORY[0x1E695DF70] array];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = ___descriptionOfManagedObjectIDArray_block_invoke;
  applier[3] = &unk_1E75701D0;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v12;
  v24 = count;
  v13 = v12;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  xpc_array_apply(v10, applier);

  v17 = [v13 componentsJoinedByString:{@", "}];

  return v17;
}

BOOL ___descriptionOfManagedObjectIDArray_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 0x1C)
  {
    v22 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"... (%zu more)", *(a1 + 64) - a2];
    [v22 addObject:v9];
  }

  else
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v6);
    v9 = CFURLCreateWithBytes(0, bytes_ptr, length, 0x600u, 0);
    v10 = [v9 pathComponents];
    if ([v10 count] >= 3)
    {
      v11 = [v10 subarrayWithRange:{objc_msgSend(v10, "count") - 2, 2}];

      v10 = v11;
    }

    v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v10];
    v13 = *(a1 + 32);
    if (v13 && *(a1 + 40))
    {
      uint64 = xpc_array_get_uint64(v13, a2);
      v24 = xpc_array_get_uint64(*(a1 + 40), a2);
      v25 = PLManagedObjectIDFromXPCValue();
      v14 = [v25 entity];
      v15 = [v14 name];
      v26 = [PLPropertyIndexMapping attributeNamesForIndexValues:uint64 entity:v15];

      v16 = [v25 entity];
      v17 = [v16 name];
      v18 = [PLPropertyIndexMapping relationshipNamesForIndexValues:v24 entity:v17];

      v19 = [v26 componentsJoinedByString:{@", "}];
      v20 = [v18 componentsJoinedByString:{@", "}];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [(%llu)%@, (%llu)%@]", v12, uint64, v19, v24, v20];

      v12 = v21;
    }

    [*(a1 + 56) addObject:v12];
  }

  return a2 < 0x1D;
}

void sub_19C38D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void diffOrderedSets(void *a1, void *a2, void *a3, void *a4, size_t *a5, void *a6, CFTypeRef *a7, void *a8)
{
  v111 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v98 = a3;
  v94 = a4;
  *a4 = 0;
  v95 = a5;
  *a5 = 0;
  v96 = a6;
  *a6 = 0;
  v99 = a7;
  *a7 = 0;
  v97 = a8;
  *a8 = 0;
  v93 = objc_autoreleasePoolPush();
  v17 = [v16 count];
  v18 = [v15 count];
  v92 = [MEMORY[0x1E695DF88] dataWithLength:8 * (v18 + v17)];
  v19 = [v92 mutableBytes];
  v20 = &v19[8 * v18];
  [v15 getObjects:v19 range:{0, v18}];
  v102 = v16;
  [v16 getObjects:v20 range:{0, v17}];
  v91 = [MEMORY[0x1E695DF88] dataWithLength:8 * (v18 + v17)];
  v21 = [v91 mutableBytes];
  v103 = &v21[v18];
  qsort_b(v19, v18, 8uLL, &__block_literal_global_67848);
  qsort_b(v20, v17, 8uLL, &__block_literal_global_67848);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v18 && v17)
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    do
    {
      v26 = *&v19[8 * v23];
      v27 = *&v20[8 * v22];
      if (v26 >= v27)
      {
        if (v26 == v27)
        {
          ++v23;
        }

        else
        {
          v103[v24++] = v27;
        }

        ++v22;
      }

      else
      {
        v21[v25++] = v26;
        ++v23;
      }
    }

    while (v23 < v18 && v22 < v17);
  }

  v28 = v18 - v23;
  if (v18 > v23)
  {
    v29 = v28 + v25;
    v30 = &v21[v25];
    v31 = &v19[8 * v23];
    do
    {
      v32 = *v31;
      v31 += 8;
      *v30++ = v32;
      --v28;
    }

    while (v28);
    v25 = v29;
  }

  v33 = v17 - v22;
  if (v17 > v22)
  {
    v34 = v33 + v24;
    v35 = &v21[v18 + v24];
    v36 = &v19[8 * v18 + 8 * v22];
    do
    {
      v37 = *v36;
      v36 += 8;
      *v35++ = v37;
      --v33;
    }

    while (v33);
    v24 = v34;
  }

  v104 = v17;
  if (v25)
  {
    [v15 getObjects:v19 range:{0, v18}];
    v38 = [MEMORY[0x1E696AD50] indexSet];
    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        if (bsearch_b(v19, v21, v25, 8uLL, &__block_literal_global_67848))
        {
          [v38 addIndex:i];
        }

        v19 += 8;
      }
    }

    v40 = v38;
    v41 = [v15 mutableCopy];
    [v41 removeObjectsAtIndexes:v40];

    v17 = v104;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v90 = v40;
  v42 = [v102 getObjects:v20 range:{0, v17}];
  v100 = v15;
  if (v24)
  {
    v101 = v41;
    v89 = &v89;
    v43 = 8 * v24;
    MEMORY[0x1EEE9AC00](v42);
    v44 = &v89 - ((8 * v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v44, 8 * v24);
    v45 = [MEMORY[0x1E696AD50] indexSet];
    if (v17)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        if (bsearch_b(&v20[v46], v103, v24, 8uLL, &__block_literal_global_67848))
        {
          [v45 addIndex:v48];
          objc_storeStrong(&v44[8 * v47++], *&v20[8 * v48]);
        }

        ++v48;
        v46 += 8;
      }

      while (v104 != v48);
    }

    else
    {
      v47 = 0;
    }

    v24 = v45;
    v41 = v101;
    if (!v101)
    {
      v41 = [v100 mutableCopy];
    }

    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0) count:v47];
    [v41 insertObjects:v49 atIndexes:v24];

    v50 = v44 - 8;
    do
    {

      v43 -= 8;
    }

    while (v43);
    v15 = v100;
  }

  if (v41)
  {
    v51 = [v41 count];
    v15 = v41;
    if (v51 != [v102 count])
    {
      v84 = [MEMORY[0x1E696AAA8] currentHandler];
      v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void diffOrderedSets(NSOrderedSet *__strong, NSOrderedSet *__strong, NSArray *__strong, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, CFArrayRef *, NSIndexSet *__autoreleasing *)"}];
      v86 = [v41 count];
      [v84 handleFailureInFunction:v85 file:@"NSOrderedSetAdditions.m" lineNumber:278 description:{@"Mismatched value counts after additions and subtractions: set: %p, set.count: %tu, newSet: %p, newSet.count: %tu", v41, v86, v102, objc_msgSend(v102, "count")}];

      v15 = v41;
    }
  }

  v101 = v41;
  v52 = v15;
  v53 = [v52 count];
  v54 = v53;
  if (v53 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53;
  }

  if (v53 >= 0x201)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55;
  }

  v57 = 8 * v56;
  MEMORY[0x1EEE9AC00](v53);
  v59 = &v89 - v58;
  bzero(&v89 - v58, v57);
  if (v54 > 0x200)
  {
    v59 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v59, v57);
  }

  [v52 getObjects:v59 range:{0, v54}];
  v60 = [MEMORY[0x1E696AD50] indexSet];
  if (v54)
  {
    for (j = 0; j != v54; ++j)
    {
      if (*&v20[8 * j] != *&v59[8 * j])
      {
        [v60 addIndex:j];
      }
    }
  }

  if ([v60 count])
  {
    v62 = [v60 copy];
    callBacks = *byte_1F0F04E18;
    v63 = CFArrayCreateMutable(0, [v60 count], &callBacks);
    v64 = v99;
    *v99 = v63;
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __diffOrderedSets_block_invoke_2;
    v105[3] = &unk_1E7570268;
    v106 = v60;
    v107 = v20;
    v108 = v59;
    v109 = v63;
    [v62 enumerateIndexesUsingBlock:v105];
    Count = CFArrayGetCount(*v64);
    if (Count != [v62 count])
    {
      v87 = [MEMORY[0x1E696AAA8] currentHandler];
      v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void diffOrderedSets(NSOrderedSet *__strong, NSOrderedSet *__strong, NSArray *__strong, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, CFArrayRef *, NSIndexSet *__autoreleasing *)"}];
      [v87 handleFailureInFunction:v88 file:@"NSOrderedSetAdditions.m" lineNumber:328 description:@"Mismatched move counts."];
    }
  }

  else
  {
    v62 = 0;
  }

  if (v54 >= 0x201)
  {
    NSZoneFree(0, v59);
  }

  v66 = v98;
  if ([v98 count])
  {
    v67 = [v66 count];
    v68 = v67;
    if (v67 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = v67;
    }

    if (v67 >= 0x201)
    {
      v70 = 1;
    }

    else
    {
      v70 = v69;
    }

    v71 = 8 * v70;
    MEMORY[0x1EEE9AC00](v67);
    v73 = &v89 - v72;
    bzero(&v89 - v72, v71);
    if (v68 > 0x200)
    {
      v73 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v73, v71);
    }

    [v66 getObjects:v73 range:{0, v68}];
    qsort_b(v73, v68, 8uLL, &__block_literal_global_67848);
    v76 = [MEMORY[0x1E696AD50] indexSet];
    if (v104)
    {
      v77 = 0;
      v78 = 0;
      while (1)
      {
        if (bsearch_b(v20, v73, v68, 8uLL, &__block_literal_global_67848))
        {
          [v76 addIndex:v77];
          if (++v78 == v68)
          {
            break;
          }
        }

        ++v77;
        v20 += 8;
        if (v104 == v77)
        {
          goto LABEL_84;
        }
      }

      v78 = v68;
LABEL_84:
      if (v78)
      {
        v79 = [v24 count];
        v66 = v98;
        if (v79)
        {
          [v76 removeIndexes:v24];
        }

        v74 = v76;
      }

      else
      {
        v74 = 0;
        v66 = v98;
      }
    }

    else
    {
      v74 = 0;
    }

    v75 = v90;
    if (v68 >= 0x201)
    {
      NSZoneFree(0, v73);
    }
  }

  else
  {
    v74 = 0;
    v75 = v90;
  }

  objc_autoreleasePoolPop(v93);
  v80 = v75;
  *v94 = v75;
  v81 = v24;
  *v95 = v24;
  v82 = v62;
  *v96 = v62;
  if (*v99)
  {
    CFAutorelease(*v99);
  }

  v83 = v74;
  *v97 = v74;
}

void __diffOrderedSets_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __diffOrderedSets_block_invoke_3;
  v7[3] = &unk_1E7570240;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[6] = a2;
  v7[7] = v6;
  v7[4] = &v8;
  v7[5] = v5;
  [v4 enumerateIndexesUsingBlock:v7];
  if (v9[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) removeIndex:?];
    v3 = v9[3];
  }

  CFArrayAppendValue(*(a1 + 56), v3);
  _Block_object_dispose(&v8, 8);
}

void *__diffOrderedSets_block_invoke_3(void *result, uint64_t a2, _BYTE *a3)
{
  if (*(result[5] + 8 * result[6]) == *(result[7] + 8 * a2))
  {
    *a3 = 1;
    *(*(result[4] + 8) + 24) = a2;
  }

  return result;
}

uint64_t __diffOrderedSets_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 >= *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_19C38E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C38F7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLSearchSuggestionCategoriesTypeForSearchIndexCategory(uint64_t a1)
{
  result = 1;
  if (a1 <= 1609)
  {
    if (a1 <= 1202)
    {
      if (a1 <= 1008)
      {
        if (a1 > 1002)
        {
          if ((a1 - 1003) >= 4)
          {
            return result;
          }

          return 0;
        }

        if (!a1)
        {
          return 0;
        }

        if (a1 != 1000)
        {
          v13 = a1 == 1001;
          v14 = 3;
          goto LABEL_69;
        }
      }

      else
      {
        if ((a1 - 1100) < 0xA)
        {
          return 4;
        }

        if ((a1 - 1200) < 3)
        {
          return 5;
        }

        if (a1 != 1009)
        {
          return result;
        }
      }

      return 2;
    }

    if (a1 <= 1401)
    {
      if (a1 <= 1319)
      {
        if ((a1 - 1203) < 3)
        {
          return 6;
        }

        if ((a1 - 1300) < 2)
        {
          return 7;
        }

        if (a1 != 1310)
        {
          return result;
        }

        return 0;
      }

      if (a1 <= 1399)
      {
        v10 = a1 - 1320;
        v11 = (a1 - 1330) >= 2;
        v12 = 9;
        if (v11)
        {
          v12 = 1;
        }

        if (v10 >= 2)
        {
          return v12;
        }

        else
        {
          return 8;
        }
      }

      if (a1 != 1400)
      {
        v13 = a1 == 1401;
        v14 = 11;
LABEL_69:
        if (v13)
        {
          return v14;
        }

        return result;
      }

      return 10;
    }

    v3 = a1 + 36;
    if ((a1 - 1500) > 0x29)
    {
      goto LABEL_24;
    }

    if (((1 << v3) & 0xC03) != 0)
    {
      return 12;
    }

    if (((1 << v3) & 0xC0000000) == 0)
    {
      if (((1 << v3) & 0x30000000000) != 0)
      {
        return 0;
      }

LABEL_24:
      if ((a1 - 1600) >= 2)
      {
        if (a1 != 1402)
        {
          return result;
        }

        return 10;
      }

      return 12;
    }

    return 13;
  }

  if (a1 > 1999)
  {
    if (a1 <= 2499)
    {
      v4 = 38;
      v5 = 39;
      v6 = 40;
      if (a1 != 2401)
      {
        v6 = 1;
      }

      if (a1 != 2400)
      {
        v5 = v6;
      }

      if (a1 != 2300)
      {
        v4 = v5;
      }

      v7 = 35;
      v8 = 36;
      v9 = 37;
      if (a1 != 2200)
      {
        v9 = 1;
      }

      if (a1 != 2100)
      {
        v8 = v9;
      }

      if (a1 != 2000)
      {
        v7 = v8;
      }

      if (a1 <= 2299)
      {
        return v7;
      }

      else
      {
        return v4;
      }
    }

    if (a1 > 2699)
    {
      if ((a1 - 2900) < 2)
      {
        return 43;
      }

      if (a1 == 2700 || a1 == 2800)
      {
        return 0;
      }
    }

    else
    {
      if ((a1 - 2500) < 2)
      {
        return 41;
      }

      if ((a1 - 2600) < 2)
      {
        return 12;
      }
    }
  }

  else
  {
    if (a1 > 1899)
    {
      switch(a1)
      {
        case 1900:
          result = 15;
          break;
        case 1901:
          result = 16;
          break;
        case 1902:
          result = 17;
          break;
        case 1903:
          result = 18;
          break;
        case 1904:
          result = 19;
          break;
        case 1905:
          result = 20;
          break;
        case 1906:
          result = 21;
          break;
        case 1907:
          result = 22;
          break;
        case 1908:
          result = 23;
          break;
        case 1909:
          result = 24;
          break;
        case 1910:
          result = 25;
          break;
        case 1911:
          result = 26;
          break;
        case 1912:
          result = 27;
          break;
        case 1913:
          result = 28;
          break;
        case 1914:
          result = 29;
          break;
        case 1915:
        case 1916:
          result = 30;
          break;
        case 1917:
          result = 31;
          break;
        case 1918:
          result = 32;
          break;
        case 1919:
          result = 33;
          break;
        case 1920:
          result = 34;
          break;
        default:
          return result;
      }

      return result;
    }

    if ((a1 - 1800) < 4)
    {
      return 14;
    }

    if ((a1 - 1610) < 2)
    {
      return 42;
    }

    if ((a1 - 1700) < 2)
    {
      return 13;
    }
  }

  return result;
}

id PLSearchIndexCategoriesForPLSearchSuggestionCategoriesType(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = v2;
  v4 = 1001;
  switch(a1)
  {
    case 1:
      [v2 addIndex:1];
      [v3 addIndex:2];
      [v3 addIndex:3];
      [v3 addIndex:4];
      [v3 addIndex:5];
      [v3 addIndex:6];
      [v3 addIndex:7];
      [v3 addIndex:8];
      [v3 addIndex:9];
      [v3 addIndex:10];
      [v3 addIndex:11];
      [v3 addIndex:12];
      [v3 addIndex:13];
      [v3 addIndex:14];
      [v3 addIndex:1007];
      [v3 addIndex:1008];
      [v3 addIndex:1520];
      [v3 addIndex:1521];
      v4 = 1010;
      goto LABEL_44;
    case 2:
      [v2 addIndex:1000];
      v4 = 1009;
      goto LABEL_44;
    case 3:
      goto LABEL_44;
    case 4:
      [v2 addIndex:1100];
      [v3 addIndex:1101];
      [v3 addIndex:1102];
      [v3 addIndex:1103];
      [v3 addIndex:1104];
      [v3 addIndex:1105];
      [v3 addIndex:1106];
      [v3 addIndex:1108];
      [v3 addIndex:1107];
      v4 = 1109;
      goto LABEL_44;
    case 5:
      [v2 addIndex:1200];
      [v3 addIndex:1201];
      v4 = 1202;
      goto LABEL_44;
    case 6:
      [v2 addIndex:1203];
      v4 = 1204;
      goto LABEL_44;
    case 7:
      [v2 addIndex:1300];
      v4 = 1301;
      goto LABEL_44;
    case 8:
      [v2 addIndex:1320];
      v4 = 1321;
      goto LABEL_44;
    case 9:
      [v2 addIndex:1330];
      v4 = 1331;
      goto LABEL_44;
    case 10:
      [v2 addIndex:1400];
      v4 = 1402;
      goto LABEL_44;
    case 11:
      v4 = 1401;
      goto LABEL_44;
    case 12:
      [v2 addIndex:1500];
      [v3 addIndex:1501];
      [v3 addIndex:1600];
      [v3 addIndex:1601];
      [v3 addIndex:2600];
      [v3 addIndex:2601];
      [v3 addIndex:1510];
      v4 = 1511;
      goto LABEL_44;
    case 13:
      [v2 addIndex:1700];
      [v3 addIndex:1701];
      [v3 addIndex:1530];
      v4 = 1531;
      goto LABEL_44;
    case 14:
      [v2 addIndex:1800];
      [v3 addIndex:1801];
      [v3 addIndex:1802];
      v4 = 1803;
      goto LABEL_44;
    case 15:
      v4 = 1900;
      goto LABEL_44;
    case 16:
      v4 = 1901;
      goto LABEL_44;
    case 17:
      v4 = 1902;
      goto LABEL_44;
    case 18:
      v4 = 1903;
      goto LABEL_44;
    case 19:
      v4 = 1904;
      goto LABEL_44;
    case 20:
      v4 = 1905;
      goto LABEL_44;
    case 21:
      v4 = 1906;
      goto LABEL_44;
    case 22:
      v4 = 1907;
      goto LABEL_44;
    case 23:
      v4 = 1908;
      goto LABEL_44;
    case 24:
      v4 = 1909;
      goto LABEL_44;
    case 25:
      v4 = 1910;
      goto LABEL_44;
    case 26:
      v4 = 1911;
      goto LABEL_44;
    case 27:
      v4 = 1912;
      goto LABEL_44;
    case 28:
      v4 = 1913;
      goto LABEL_44;
    case 29:
      v4 = 1914;
      goto LABEL_44;
    case 30:
      [v2 addIndex:1915];
      v4 = 1916;
      goto LABEL_44;
    case 31:
      v4 = 1917;
      goto LABEL_44;
    case 32:
      v4 = 1918;
      goto LABEL_44;
    case 33:
      v4 = 1919;
      goto LABEL_44;
    case 34:
      v4 = 1920;
      goto LABEL_44;
    case 35:
      v4 = 2000;
      goto LABEL_44;
    case 36:
      v4 = 2100;
      goto LABEL_44;
    case 37:
      v4 = 2200;
      goto LABEL_44;
    case 38:
      v4 = 2300;
      goto LABEL_44;
    case 39:
      v4 = 2400;
      goto LABEL_44;
    case 40:
      v4 = 2401;
      goto LABEL_44;
    case 41:
      [v2 addIndex:2500];
      v4 = 2501;
      goto LABEL_44;
    case 42:
      [v2 addIndex:1610];
      v4 = 1611;
      goto LABEL_44;
    case 43:
      [v2 addIndex:2900];
      v4 = 2901;
LABEL_44:
      [v3 addIndex:v4];
      break;
    default:
      break;
  }

  v5 = [v3 copy];

  return v5;
}

__CFString *PLDebugStringForPLSearchSuggestionCategoriesType(unint64_t a1)
{
  if (a1 > 0x2C)
  {
    return @"undefined";
  }

  else
  {
    return off_1E75702D8[a1];
  }
}

id PLDebugStringsForPLSearchSuggestionCategoriesTypes(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PLDebugStringsForPLSearchSuggestionCategoriesTypes_block_invoke;
  v7[3] = &unk_1E7576338;
  v8 = v3;
  v4 = v3;
  [v2 enumerateIndexesUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

void __PLDebugStringsForPLSearchSuggestionCategoriesTypes_block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x2C)
  {
    v3 = @"undefined";
  }

  else
  {
    v3 = off_1E75702D8[a2];
  }

  v4 = v3;
  [*(a1 + 32) addObject:v4];
}

void *_PLRemoveKeysForStoreMetadataFilterPolicy(uint64_t a1)
{
  v1 = &unk_1F0FBFE38;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

id PLFilteredStoreMetadataWithPolicy(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 mutableCopy];
    v6 = v5;
    if (a2 == 1)
    {
      v7 = &unk_1F0FBFE38;
    }

    else
    {
      v7 = 0;
    }

    [v5 removeObjectsForKeys:v7];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

id PLFilteredDescriptionForAddPersistentStoreError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 code] == 134100)
  {
    v3 = [v1 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = PLFilteredStoreMetadataWithPolicy(v4, 1);
      if (v5)
      {
        v6 = [v3 mutableCopy];
        [v6 setObject:v5 forKeyedSubscript:@"metadata"];

        v3 = v6;
      }
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = [v1 domain];
    v2 = [v7 errorWithDomain:v8 code:objc_msgSend(v1 userInfo:{"code"), v3}];
  }

  v9 = [v2 description];

  return v9;
}

void sub_19C391F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C392D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3942D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, os_signpost_id_t a31, os_activity_scope_state_s a32, SEL sel)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v34 - 160), 8);
  if (a29 == 1)
  {
    os_activity_scope_leave(&a32);
  }

  if (a31)
  {
    v36 = PLRequestGetLog();
    v37 = v36;
    v38 = a31;
    if (a31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      Name = sel_getName(sel);
      *(v34 - 160) = 136446210;
      *(v33 + 132) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v37, OS_SIGNPOST_INTERVAL_END, v38, "##### %s %@ entitled:%d", "%{public}s", (v34 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C3949FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C3951B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36, os_signpost_id_t a37, os_activity_scope_state_s a38, SEL sel)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v39 - 160), 8);
  _Block_object_dispose(&a31, 8);
  if (a35 == 1)
  {
    os_activity_scope_leave(&a38);
  }

  if (a37)
  {
    v41 = PLRequestGetLog();
    v42 = v41;
    v43 = a37;
    if (a37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      Name = sel_getName(sel);
      *(v39 - 160) = 136446210;
      *(v39 - 156) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v42, OS_SIGNPOST_INTERVAL_END, v43, "##### %s %@ entitled:%d", "%{public}s", (v39 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C396B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "##### %s %@ entitled:%d", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

__CFString *PLDescriptionForLibraryCreateOptions(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (a1)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"NoPhotoAnalysis", 1];
    [v2 addObject:v7];

    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"NoSearchIndex", 2];
  [v2 addObject:v8];

  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"ForceRebuild", 4];
  [v2 addObject:v9];

  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"WaitForRebuild", 8];
  [v2 addObject:v10];

  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"NoMediaAnalysis", 16];
  [v2 addObject:v11];

  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"IncludeCloudBackup", 32];
  [v2 addObject:v12];

  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"NoBackgroundJobs", 64];
  [v2 addObject:v13];

  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"ForUnitTesting", 128];
  [v2 addObject:v14];

  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"WaitForMomentGenerationAfterSave", 256];
  [v2 addObject:v15];

  if ((a1 & 0x200) != 0)
  {
LABEL_11:
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", @"NoRebuildJournals", 512];
    [v2 addObject:v3];
  }

LABEL_12:
  if ([v2 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v2 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"%ld {%@}", a1, v5];
  }

  else
  {
    v6 = @"None[0]";
  }

  return v6;
}

void sub_19C39B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C39FFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3A1368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69718(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLStringFromDaemonJobOperation(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return @"ERR";
  }

  else
  {
    return off_1E7570A40[a1];
  }
}

uint64_t __Block_byref_object_copy__69991(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3A57A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    v15 = v14;
    if (v13)
    {
      v16 = MEMORY[0x1E696ABC0];
      a12 = *MEMORY[0x1E696A578];
      v17 = [v14 reason];
      a13 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a13 forKeys:&a12 count:1];
      *v13 = [v16 errorWithDomain:*MEMORY[0x1E69BFF48] code:51003 userInfo:v18];
    }

    objc_end_catch();
    JUMPOUT(0x19C3A53FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C3A7720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 184), 8);
  _Block_object_dispose((v69 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3A80F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3A8278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3A8E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C3AA964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_19C3B22C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71158(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3B4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3B7BCC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_19C3BE2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPICompositionSerializerMetadataClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_71901();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionSerializerMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionSerializerMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionSerializerMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditPersistenceManager.m" lineNumber:37 description:{@"Unable to find class %s", "PICompositionSerializerMetadata"}];

    __break(1u);
  }
}

id getPICompositionSerializerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPICompositionSerializerClass_softClass;
  v7 = getPICompositionSerializerClass_softClass;
  if (!getPICompositionSerializerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPICompositionSerializerClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPICompositionSerializerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C3BE4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPICompositionSerializerClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_71901();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionSerializer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionSerializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionSerializerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditPersistenceManager.m" lineNumber:35 description:{@"Unable to find class %s", "PICompositionSerializer"}];

    __break(1u);
  }
}

void *PhotoImagingLibrary_71901()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_71911)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotoImagingLibraryCore_block_invoke_71912;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7571120;
    v6 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_71911 = _sl_dlopen();
  }

  v0 = PhotoImagingLibraryCore_frameworkLibrary_71911;
  if (!PhotoImagingLibraryCore_frameworkLibrary_71911)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLPhotoEditPersistenceManager.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotoImagingLibraryCore_block_invoke_71912()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_71911 = result;
  return result;
}

id getPIPhotoEditHelperClass_71962()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPIPhotoEditHelperClass_softClass_71963;
  v7 = getPIPhotoEditHelperClass_softClass_71963;
  if (!getPIPhotoEditHelperClass_softClass_71963)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPIPhotoEditHelperClass_block_invoke_71964;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPIPhotoEditHelperClass_block_invoke_71964(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C3BEC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPIPhotoEditHelperClass_block_invoke_71964(uint64_t a1)
{
  PhotoImagingLibrary_71901();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PIPhotoEditHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPIPhotoEditHelperClass_softClass_71963 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIPhotoEditHelperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditPersistenceManager.m" lineNumber:39 description:{@"Unable to find class %s", "PIPhotoEditHelper"}];

    __break(1u);
  }
}

void *__getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_71901();
  result = dlsym(v2, "PIPhotoEditFormatIdentifierVideoSloMo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIPhotoEditFormatIdentifierVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_71901();
  result = dlsym(v2, "PIPhotoEditFormatIdentifierVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIPhotoEditFormatIdentifierVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C3BFE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNUSourceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary_72070)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __NeutrinoCoreLibraryCore_block_invoke_72071;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7571138;
    v8 = 0;
    NeutrinoCoreLibraryCore_frameworkLibrary_72070 = _sl_dlopen();
  }

  if (!NeutrinoCoreLibraryCore_frameworkLibrary_72070)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NeutrinoCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLPhotoEditPersistenceManager.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NUSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUSourceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLPhotoEditPersistenceManager.m" lineNumber:29 description:{@"Unable to find class %s", "NUSource"}];

LABEL_10:
    __break(1u);
  }

  getNUSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NeutrinoCoreLibraryCore_block_invoke_72071()
{
  result = _sl_dlopen();
  NeutrinoCoreLibraryCore_frameworkLibrary_72070 = result;
  return result;
}

void sub_19C3C30AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C41B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C42B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C4398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C4478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C4558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C4638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3C4A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t PLSearchThumbnailMapVerboseLoggingEnabled()
{
  if (PLSearchThumbnailMapVerboseLoggingEnabled_once != -1)
  {
    dispatch_once(&PLSearchThumbnailMapVerboseLoggingEnabled_once, &__block_literal_global_72857);
  }

  return PLSearchThumbnailMapVerboseLoggingEnabled_verboseLoggingEnabled;
}

void __PLSearchThumbnailMapVerboseLoggingEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"PLSearchThumbnailMapVerboseLoggingEnabled"];

  if (v1)
  {
    PLSearchThumbnailMapVerboseLoggingEnabled_verboseLoggingEnabled = 1;
    v2 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "PLSearchThumbnailMapVerboseLoggingEnabled: YES", v3, 2u);
    }
  }
}

__CFString *PLSearchIndexingEntityDescription(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"invalid";
  }

  else
  {
    return off_1E7571300[a1];
  }
}

__CFString *PLSearchIndexingStatusDescription(uint64_t a1)
{
  if (!a1)
  {
    v4 = @"none";
    goto LABEL_13;
  }

  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (v1)
  {
    [v2 addObject:@"asset rebuild finished"];
    if ((v1 & 2) == 0)
    {
LABEL_4:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"album rebuild finished"];
  if ((v1 & 0x20) == 0)
  {
LABEL_5:
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"collectionShare rebuild finished"];
  if ((v1 & 4) == 0)
  {
LABEL_6:
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    [v3 addObject:@"memory rebuild finished"];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  [v3 addObject:@"highlight rebuild finished"];
  if ((v1 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v1 & 0x10) != 0)
  {
LABEL_8:
    [v3 addObject:@"search entity rebuild finished"];
  }

LABEL_9:
  if (![v3 count])
  {
    [v3 addObject:@"unknown values"];
  }

  v4 = [v3 componentsJoinedByString:@"|"];

LABEL_13:

  return v4;
}

__CFString *PLSearchIndexFeatureSettingsDescription()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v0 count])
  {
    v1 = [v0 componentsJoinedByString:@"|"];
  }

  else
  {
    v1 = @"none";
  }

  return v1;
}

__CFString *PLSearchIndexRebuildReasonsDescriptionWithSpotlightReason(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = v4;
    if (a1)
    {
      [v4 addObject:@"version"];
      if ((a1 & 0x40) == 0)
      {
LABEL_4:
        if ((a1 & 0x80) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((a1 & 0x40) == 0)
    {
      goto LABEL_4;
    }

    [v5 addObject:@"embeddingVersion"];
    if ((a1 & 0x80) == 0)
    {
LABEL_5:
      if ((a1 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v5 addObject:@"utilityTypeClassifierVersion"];
    if ((a1 & 2) == 0)
    {
LABEL_6:
      if ((a1 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v5 addObject:@"locale"];
    if ((a1 & 4) == 0)
    {
LABEL_7:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_22:
    [v5 addObject:@"scene taxonomy SHA"];
    if ((a1 & 0x10) == 0)
    {
LABEL_8:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    [v5 addObject:@"resume"];
    if ((a1 & 0x20) == 0)
    {
LABEL_9:
      if ((a1 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    [v5 addObject:@"drop"];
    if ((a1 & 8) == 0)
    {
LABEL_10:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_11;
      }

LABEL_34:
      [v5 addObject:@"spotlight client state missing"];
      if ((a1 & 0x200) == 0)
      {
LABEL_12:
        if ((a1 & 0x400) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_36;
      }

LABEL_35:
      [v5 addObject:@"client dropped index"];
      if ((a1 & 0x400) == 0)
      {
LABEL_13:
        if ((a1 & 0x800) == 0)
        {
LABEL_15:
          if ([v5 count])
          {
            v6 = [v5 componentsJoinedByString:@"|"];
          }

          else
          {
            v6 = @"unknown values";
          }

          goto LABEL_30;
        }

LABEL_14:
        [v5 addObject:@"restore from backup"];
        goto LABEL_15;
      }

LABEL_36:
      [v5 addObject:@"new library/rebuild"];
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_25:
    if (v3)
    {
      v7 = [@"spotlight reason: " stringByAppendingString:v3];
      [v5 addObject:v7];

      if ((a1 & 0x100) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      [v5 addObject:@"spotlight requested"];
      if ((a1 & 0x100) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  v6 = @"none";
LABEL_30:

  return v6;
}

unint64_t PLSearchIndexingStatusShowingRebuildFinished()
{
  result = 0;
  v1 = 1;
  do
  {
    v2 = v1 | result;
    if (((1 << (v1 - 1)) & 0x800000008000808BLL) == 0)
    {
      v2 = result;
    }

    if (v1 - 1 <= 0x3F)
    {
      result = v2;
    }

    v3 = v1 >= 0x21;
    v1 *= 2;
  }

  while (!v3);
  return result;
}

uint64_t PLSearchIndexingStatusRebuildFlagForEntity(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_19C60FB90[a1];
  }
}

uint64_t PLSearchIndexingEntityForEntityName(void *a1)
{
  v1 = a1;
  v2 = +[PLManagedAsset entityName];
  v3 = [v1 isEqualToString:v2];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[PLManagedAlbum entityName];
    v6 = [v1 isEqualToString:v5];

    if (v6 & 1) != 0 || (+[PLFetchingAlbum entityName](PLFetchingAlbum, "entityName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v1 isEqualToString:v7], v7, (v8))
    {
      v4 = 3;
    }

    else
    {
      v10 = +[PLCollectionShare entityName];
      v11 = [v1 isEqualToString:v10];

      if (v11)
      {
        v4 = 9;
      }

      else
      {
        v12 = +[PLPhotosHighlight entityName];
        v13 = [v1 isEqualToString:v12];

        if (v13)
        {
          v4 = 4;
        }

        else
        {
          v14 = +[PLMemory entityName];
          v15 = [v1 isEqualToString:v14];

          if (v15)
          {
            v4 = 5;
          }

          else
          {
            v16 = +[PLPerson entityName];
            v17 = [v1 isEqualToString:v16];

            if (v17)
            {
              v4 = 6;
            }

            else
            {
              v18 = +[PLDetectedFace entityName];
              v19 = [v1 isEqualToString:v18];

              if (v19)
              {
                v4 = 2;
              }

              else
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t PLFeaturesEnabledForCoreAnalyticsReporting()
{
  v0 = PLSearchSemanticSearchIndexingSupported();
  if (_os_feature_enabled_impl())
  {
    return v0 | 2;
  }

  else
  {
    return v0;
  }
}

uint64_t PLSearchSemanticSearchIndexingSupported()
{
  if (PLPlatformGenerativeModelSystemsSupported())
  {
    return 1;
  }

  result = MEMORY[0x19EAEE230]();
  if (result)
  {
    pl_dispatch_once();
    return PLSearchSemanticSearchIndexingSupported_semanticSearchOverride;
  }

  return result;
}

void __PLSearchSemanticSearchIndexingSupported_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = v3;
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "PlatformGenerativeModelSystemsSupported: %@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PLSearchSemanticSearchSupported"];

  if (v6)
  {
    PLSearchSemanticSearchIndexingSupported_semanticSearchOverride = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLSearchSemanticSearchSupported is overridden to YES via defaults.", &v7, 2u);
    }
  }
}

uint64_t PLSearchSemanticSearchQueriesSupported()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.photos.semanticSearch";
  v0 = 1;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  if ([getGMAvailabilityWrapperClass() currentWithUseCaseIdentifiers:v1])
  {
    if (MEMORY[0x19EAEE230]())
    {
      pl_dispatch_once();
      v0 = PLSearchSemanticSearchQueriesSupported_semanticSearchOverride;
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

id getGMAvailabilityWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGMAvailabilityWrapperClass_softClass;
  v7 = getGMAvailabilityWrapperClass_softClass;
  if (!getGMAvailabilityWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGMAvailabilityWrapperClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getGMAvailabilityWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C3C67C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLSearchSemanticSearchQueriesSupported_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "GMAvailabilityStatus: %tu", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PLSearchSemanticSearchSupported"];

  if (v5)
  {
    PLSearchSemanticSearchQueriesSupported_semanticSearchOverride = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PLSearchSemanticSearchSupported is overridden to YES via defaults.", &v6, 2u);
    }
  }
}

Class __getGMAvailabilityWrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GenerativeModelsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E75712E8;
    v8 = 0;
    GenerativeModelsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GenerativeModelsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLSearchDefines.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGMAvailabilityWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLSearchDefines.m" lineNumber:31 description:{@"Unable to find class %s", "GMAvailabilityWrapper"}];

LABEL_10:
    __break(1u);
  }

  getGMAvailabilityWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GenerativeModelsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GenerativeModelsLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t PLSearchSemanticSearchQueriesSupportedForWhatsNew()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.photos.semanticSearch";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v1 = [getGMAvailabilityWrapperClass() currentWithUseCaseIdentifiers:v0];
  v2 = PLSearchSemanticSearchQueriesSupported();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id PLSearchFileProtectionTypes()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E696A388];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v0;
}

void sub_19C3CF378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74294(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3D1AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x19C3D17FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C3D2C14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C3D4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3D78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3D8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3D8DBC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C3D9EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3DA908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3DC1A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_19C3DCFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75175(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_PLDebugStringForDisambiguationType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PLDisambiguationTypeUndefined";
  }

  else
  {
    return off_1E7571920[a1 - 1];
  }
}

void sub_19C3E1EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75749(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3E29C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3E4F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3E8534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C3E8908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      *(v21 - 80) = 136446210;
      *(v21 - 76) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "%{public}s", (v21 - 80), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C3E8E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 64) = 136446210;
      *(v19 - 60) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 64), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C3E9278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 80) = 136446210;
      *(v19 - 76) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 80), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t PLBatchSizeForJobFlags(__int16 a1)
{
  v2 = PLBackgroundJobSearchIndexingEntitiesFromJobFlags(a1);
  if ([v2 count] && objc_msgSend(v2, "count") == 1)
  {
    v3 = [v2 firstObject];
    v4 = [v3 unsignedIntegerValue];

    v5 = 100;
    v6 = 100;
    if ((a1 & 0x100) != 0)
    {
      v6 = 1;
    }

    if (v4 == 6)
    {
      v5 = v6;
    }

    if ((v4 - 7) >= 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

id PLBackgroundJobSearchIndexingEntitiesFromJobFlags(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 0x10) != 0)
  {
    [v2 addObject:&unk_1F0FBD978];
  }

  if ((a1 & 0xC) != 0)
  {
    [v3 addObject:&unk_1F0FBD990];
  }

  if ((a1 & 0x20) != 0)
  {
    [v3 addObject:&unk_1F0FBD9A8];
    if ((a1 & 0x1000) == 0)
    {
LABEL_7:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  [v3 addObject:&unk_1F0FBD9C0];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  [v3 addObject:&unk_1F0FBD9D8];
  if ((a1 & 0x80) != 0)
  {
LABEL_9:
    [v3 addObject:&unk_1F0FBD9F0];
  }

LABEL_10:
  if ((a1 & 0x2100) != 0)
  {
    [v3 addObject:&unk_1F0FBDA08];
  }

  if ((a1 & 0x600) != 0)
  {
    [v3 addObject:&unk_1F0FBDA20];
  }

  if ((a1 & 0x800) != 0)
  {
    [v3 addObject:&unk_1F0FBDA38];
  }

  return v3;
}

void sub_19C3F0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_PreSchema(void *a1)
{
  v3 = a1;
  v1 = [v3 migrationContext];
  v2 = [v1 previousStoreVersion];

  [v3 registerPreSchemaActionClass:objc_opt_class() onCondition:(v2 - 18003) < 0x420];
  [v3 registerPreSchemaActionClass:objc_opt_class() onCondition:(v2 - 19026) < 0x16];
}

void sub_19C3F1250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76612(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3F7A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_19C3F7EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

id PLDescriptionForUpdateProperties(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 sortedArrayUsingComparator:&__block_literal_global_25_77340];

  v3 = [v2 _pl_map:&__block_literal_global_77341];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" {%@}", v4];

  return v5;
}

id __PLDescriptionForUpdateProperties_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = &stru_1F0F06D80;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = @"[R]";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = @"[F]";
      }

      else
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", objc_opt_class()];
      }
    }
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v2 name];
  v6 = [v4 stringWithFormat:@"%@%@", v5, v3];

  return v6;
}

uint64_t __sSortUpdateddProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sPropertyTypeSortOrder(v4);
  v7 = sPropertyTypeSortOrder(v5);
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  if (!v8)
  {
    v9 = [v4 name];
    v10 = [v5 name];
    v8 = [v9 caseInsensitiveCompare:v10];
  }

  return v8;
}

uint64_t sPropertyTypeSortOrder(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }
  }

  return v2;
}

void sub_19C3FA8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3FAB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3FBA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FBCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FC3D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C3FCFA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19C3FD0F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C3FD5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FD7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FD9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FDBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3FE668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FEA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FEC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C3FF128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3FF3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C3FF8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_19C40027C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4003DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C400564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4007A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C400AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4010B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C40140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C401968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19C4020C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_19C402554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4027B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C402A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C402CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4031D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_19C4037B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_19C404570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_19C404F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_19C4059A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_19C405FB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_19C406680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C406D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C407014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C407274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C407470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C407668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C407A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getSCSensitivityAnalyzerClass_block_invoke(uint64_t a1)
{
  SensitiveContentAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SCSensitivityAnalyzer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSCSensitivityAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCSensitivityAnalyzerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLNotificationManager.m" lineNumber:71 description:{@"Unable to find class %s", "SCSensitivityAnalyzer"}];

    __break(1u);
  }
}

void sub_19C409164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSCSensitivityAnalysisClass_block_invoke(uint64_t a1)
{
  SensitiveContentAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SCSensitivityAnalysis");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSCSensitivityAnalysisClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCSensitivityAnalysisClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLNotificationManager.m" lineNumber:72 description:{@"Unable to find class %s", "SCSensitivityAnalysis"}];

    __break(1u);
  }
}

void SensitiveContentAnalysisLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SensitiveContentAnalysisLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SensitiveContentAnalysisLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7572160;
    v5 = 0;
    SensitiveContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SensitiveContentAnalysisLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SensitiveContentAnalysisLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLNotificationManager.m" lineNumber:70 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SensitiveContentAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C4094EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void logString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = PLPhotosStateGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v13 = PLPhotosStatusGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

id PLPhotosStateGetLog()
{
  if (PLPhotosStateGetLog_predicate != -1)
  {
    dispatch_once(&PLPhotosStateGetLog_predicate, &__block_literal_global_77939);
  }

  v1 = PLPhotosStateGetLog_log;

  return v1;
}

void __PLPhotosStateGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BDD98], "PhotosState");
  v1 = PLPhotosStateGetLog_log;
  PLPhotosStateGetLog_log = v0;
}

void logTitleWithIndent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
  v13 = @"-";
  if (!a1)
  {
    v13 = @"=";
  }

  v14 = v13;
  v15 = [&stru_1F0F06D80 stringByPaddingToLength:a1 withString:@"\t" startingAtIndex:0];
  logTitle(v14, @"%@%@", v16, v17, v18, v19, v20, v21, v15);

  objc_autoreleasePoolPop(v11);
}

void logTitle(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = MEMORY[0x1E696AEC0];
  v12 = a2;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v15 = [v13 stringByTrimmingCharactersInSet:v14];

  v16 = [v13 rangeOfString:v15];
  v18 = v17;
  v19 = [v13 substringToIndex:v16];
  v20 = [v13 substringFromIndex:v16 + v18];
  v21 = PLPhotosStateGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v22 = PLPhotosStateGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [&stru_1F0F06D80 stringByPaddingToLength:objc_msgSend(v15 withString:"length") startingAtIndex:{v10, 0}];
    *buf = 138412802;
    v25 = v19;
    v26 = 2112;
    v27 = v23;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%@%@%@", buf, 0x20u);
  }
}

void logStringWithIndent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
  v13 = [&stru_1F0F06D80 stringByPaddingToLength:a1 withString:@"\t" startingAtIndex:0];
  logString(@"%@%@", v14, v15, v16, v17, v18, v19, v20, v13);

  objc_autoreleasePoolPop(v11);
}

void sub_19C40FA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C410314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4127E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C412A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78803(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C416200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19C416B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79662(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4178FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C419D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80013(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLOptimizedInternalPredicateForMediaProcessingTaskID(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, float a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = objc_alloc_init(MEMORY[0x1E69BF1E8]);
  v13 = v11;
  if (v13)
  {
    v14 = [[PLMediaProcessingPredicateBuilder alloc] initWithProcessed:a4 exactVersionMatch:a5];
    v15 = 0;
    if (a1 <= 17)
    {
      if (a1 == 10)
      {
        v23 = -[PLMediaProcessingPredicateBuilder optimizedPredicateWithKeyPath:version:](v14, "optimizedPredicateWithKeyPath:version:", @"characterRecognitionVersion", [v13 characterRecognitionAlgorithmVersion]);
      }

      else
      {
        if (a1 != 12)
        {
          if (a1 == 16)
          {
            v16 = [v13 vaAnalysisVersion];
            v17 = @"vaAnalysisVersion";
LABEL_15:
            v24 = [(PLMediaProcessingPredicateBuilder *)v14 directPredicateWithKeyPath:v17 version:v16];
            v25 = v24;
            if (a4)
            {
              v15 = v24;
            }

            else
            {
              v26 = MEMORY[0x1E696AB28];
              v36 = v24;
              v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"visualSearchVersion", objc_msgSend(v13, "visualSearchAlgorithmVersion")];
              v37 = v27;
              v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:2];
              v15 = [v26 andPredicateWithSubpredicates:v28];
            }
          }

LABEL_26:

          goto LABEL_27;
        }

        v23 = -[PLMediaProcessingPredicateBuilder optimizedSearchPredicateWithSearchKeyPath:searchVersion:stickerConfidenceKeyPath:stickConfidenceVersion:](v14, "optimizedSearchPredicateWithSearchKeyPath:searchVersion:stickerConfidenceKeyPath:stickConfidenceVersion:", @"visualSearchVersion", [v13 visualSearchAlgorithmVersion], @"visualSearchStickerConfidenceVersion", objc_msgSend(v13, "stickerConfidenceAlgorithmVersion"));
      }

      v15 = v23;
      goto LABEL_26;
    }

    switch(a1)
    {
      case 18:
        v16 = [v13 vaLocationAnalysisVersion];
        v17 = @"vaLocationAnalysisVersion";
        goto LABEL_15;
      case 19:
        v18 = -[PLMediaProcessingPredicateBuilder optimizedPredicateWithKeyPath:version:](v14, "optimizedPredicateWithKeyPath:version:", @"textUnderstandingVersion", [v13 textUnderstandingAlgorithmVersion]);
        if (!a4)
        {
          v19 = [[PLMediaProcessingPredicateBuilder alloc] initWithProcessed:1 exactVersionMatch:a5];
          v20 = MEMORY[0x1E696AB28];
          v36 = v18;
          v21 = [v13 textUnderstandingGatingVersion];
          v22 = @"textUnderstandingVersion";
          goto LABEL_24;
        }

        break;
      case 20:
        v18 = -[PLMediaProcessingPredicateBuilder optimizedPredicateWithKeyPath:version:](v14, "optimizedPredicateWithKeyPath:version:", @"textUnderstandingVersion", [v13 textUnderstandingGatingVersion]);
        if (!a4)
        {
          v19 = [[PLMediaProcessingPredicateBuilder alloc] initWithProcessed:1 exactVersionMatch:a5];
          v20 = MEMORY[0x1E696AB28];
          v36 = v18;
          v21 = [v13 characterRecognitionAlgorithmVersion];
          v22 = @"characterRecognitionVersion";
LABEL_24:
          v29 = [(PLMediaProcessingPredicateBuilder *)v19 optimizedPredicateWithKeyPath:v22 version:v21];
          v37 = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:2];
          v15 = [v20 andPredicateWithSubpredicates:v30];

          goto LABEL_25;
        }

        break;
      default:
        goto LABEL_26;
    }

    v15 = v18;
LABEL_25:

    goto LABEL_26;
  }

  v15 = 0;
LABEL_27:

  [v12 addPredicate:v15];
  if (a1 != 10)
  {
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    v31 = @"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K >= %f).@count > 0";
    goto LABEL_33;
  }

  if (a2 != 2)
  {
LABEL_31:
    v32 = 0;
    goto LABEL_34;
  }

  v31 = @"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K >= %f).@count = 0";
LABEL_33:
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:v31, @"asset.additionalAttributes.sceneClassifications", @"sceneIdentifier", 2147482063, @"confidence", a6];
LABEL_34:
  [v12 addPredicate:v32];
  v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"asset"];
  [v12 addPredicate:v33];
  v34 = [v12 buildAndPredicateOrNil];

  return v34;
}

id PLInternalPredicateForMediaProcessingTaskID(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, float a6)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69BF1E8];
  v12 = a3;
  v13 = objc_alloc_init(v11);
  v14 = PLAssetKindPredicateForTaskID(a1);
  [v13 addPredicate:v14];
  v15 = PLProcessingPredicateForTaskID(a1, v12, a4, a5);

  [v13 addPredicate:v15];
  v16 = 0;
  if (a1 <= 8)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          goto LABEL_42;
        }

        if (a2 != 3)
        {
          if (a2 == 2)
          {
            v17 = MEMORY[0x1E696AB28];
            v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
            [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K > %f).@count = 0", @"additionalAttributes.sceneClassifications", @"sceneIdentifier", 881, @"confidence", a6, v18];
            goto LABEL_40;
          }

          if (a2 == 1)
          {
            v17 = MEMORY[0x1E696AB28];
            v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
            [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K > %f).@count > 0", @"additionalAttributes.sceneClassifications", @"sceneIdentifier", 881, @"confidence", a6, v18];
            v22 = LABEL_40:;
            v34[1] = v22;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
            v16 = [v17 andPredicateWithSubpredicates:v28];

            goto LABEL_41;
          }

LABEL_26:
          v16 = 0;
          goto LABEL_42;
        }

LABEL_27:
        v23 = MEMORY[0x1E696AE18];
        v24 = @"kindSubtype";
LABEL_31:
        [v23 predicateWithFormat:@"%K == %d", v24, 1, v31, v32, v33];
        goto LABEL_34;
      }

LABEL_14:
      if (a2 != 3)
      {
        if (a2 != 2)
        {
          if (a2 != 1)
          {
            goto LABEL_26;
          }

          v21 = PLExtendedAssetsInHighlightPredicate();
LABEL_35:
          v16 = v21;
          goto LABEL_42;
        }

        [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 1, v31, v32, v33];
        v21 = LABEL_34:;
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    v16 = 0;
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          goto LABEL_42;
        }

        v23 = MEMORY[0x1E696AE18];
        v24 = @"kind";
        goto LABEL_31;
      }

      v17 = MEMORY[0x1E696AB28];
      v18 = PLExtendedAssetsInHighlightPredicate();
      v34[0] = v18;
      v25 = MEMORY[0x1E696AE18];
      v26 = 1;
      v27 = @"kind";
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_42;
        }

        v19 = MEMORY[0x1E696AB28];
        v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 2];
        goto LABEL_22;
      }

      v17 = MEMORY[0x1E696AB28];
      v18 = PLExtendedAssetsInHighlightPredicate();
      v34[0] = v18;
      v25 = MEMORY[0x1E696AE18];
      v26 = 2;
      v27 = @"kindSubtype";
    }

    [v25 predicateWithFormat:@"%K == %d", v27, v26, v31, v32, v33, v34[0]];
    goto LABEL_40;
  }

  if (a1 == 9)
  {
    goto LABEL_14;
  }

  if (a1 == 10)
  {
    if (a2 == 2)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K >= %f).@count = 0", @"additionalAttributes.sceneClassifications", @"sceneIdentifier", 2147482063, @"confidence", a6];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_26;
      }

      [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $s, $s.%K = %d AND $s.%K >= %f).@count > 0", @"additionalAttributes.sceneClassifications", @"sceneIdentifier", 2147482063, @"confidence", a6];
    }

    goto LABEL_34;
  }

  if (a1 != 17)
  {
    goto LABEL_42;
  }

  if (a2 != 1)
  {
    goto LABEL_26;
  }

  v19 = MEMORY[0x1E696AB28];
  v20 = PLExtendedAssetsInHighlightPredicate();
LABEL_22:
  v18 = v20;
  v34[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v16 = [v19 andPredicateWithSubpredicates:v22];
LABEL_41:

LABEL_42:
  [v13 addPredicate:v16];
  v29 = [v13 buildAndPredicateOrNil];

  return v29;
}

id PLAssetKindPredicateForTaskID(unint64_t a1)
{
  v1 = 0;
  v7[2] = *MEMORY[0x1E69E9840];
  if (a1 <= 0x14)
  {
    if (((1 << a1) & 0x51200) != 0)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
      goto LABEL_6;
    }

    if (((1 << a1) & 0x180400) != 0)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
      v1 = LABEL_6:;
      goto LABEL_9;
    }

    if (((1 << a1) & 0x802) != 0)
    {
      v2 = MEMORY[0x1E696AB28];
      v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kindSubtype", 2];
      v7[0] = v3;
      v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
      v7[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
      v1 = [v2 orPredicateWithSubpredicates:v5];
    }
  }

LABEL_9:

  return v1;
}

id PLProcessingPredicateForTaskID(uint64_t a1, void *a2, int a3, int a4)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    if (a3)
    {
      v8 = a4 == 0;
      if (a4)
      {
        v9 = @"%K != NULL && %K == %d && %K == %d";
      }

      else
      {
        v9 = @"%K != NULL && %K >= %d && %K >= %d";
      }

      if (a4)
      {
        v10 = @"%K != NULL && %K == %d";
      }

      else
      {
        v10 = @"%K != NULL && %K >= %d";
      }

      v11 = @"%K >= %d";
      v12 = @"%K == %d";
    }

    else
    {
      v8 = a4 == 0;
      if (a4)
      {
        v9 = @"%K == NULL || %K != %d || %K != %d";
      }

      else
      {
        v9 = @"%K == NULL || %K < %d || %K < %d";
      }

      if (a4)
      {
        v10 = @"%K == NULL || %K != %d";
      }

      else
      {
        v10 = @"%K == NULL || %K < %d";
      }

      v11 = @"%K < %d";
      v12 = @"%K != %d";
    }

    if (v8)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v15 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAllowedForMediaAnalysis"), 0}];
    switch(a1)
    {
      case 0:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 13:
      case 14:
      case 15:
        goto LABEL_22;
      case 1:
      case 11:
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v7 mediaAnalysisVersion])
        {
          v18 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.mediaAnalysisVersion", objc_msgSend(v7, "mediaAnalysisVersion")];
          [v17 addObject:v18];
        }

        if ([v7 videoEmbeddingVersion])
        {
          v19 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.videoEmbeddingVersion", objc_msgSend(v7, "videoEmbeddingVersion")];
          [v17 addObject:v19];
        }

        v20 = PLOptionalCaptionGenerationVersion(v7);
        if (!v20)
        {
          goto LABEL_46;
        }

        [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.videoCaptionVersion", v20];
        goto LABEL_45;
      case 2:
        v21 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAllowedForSceneAnalysis"), 0}];

        v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v7 sceneAnalysisVersion])
        {
          v23 = [MEMORY[0x1E696AE18] predicateWithFormat:v14, @"additionalAttributes.sceneAnalysisVersion", objc_msgSend(v7, "sceneAnalysisVersion")];
          [v22 addObject:v23];
        }

        if ([v7 imageEmbeddingVersion])
        {
          v24 = PLImageEmbeddingVersionPredicate(v10, v7);
          [v22 addObject:v24];
        }

        if (a3)
        {
          [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v22];
        }

        else
        {
          [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v22];
        }
        v32 = ;

        v15 = v21;
        goto LABEL_59;
      case 3:
        v25 = MEMORY[0x1E696AE18];
        v26 = [v7 faceAnalysisVersion];
        v27 = @"additionalAttributes.faceAnalysisVersion";
        goto LABEL_56;
      case 10:
        v25 = MEMORY[0x1E696AE18];
        v26 = [v7 characterRecognitionAlgorithmVersion];
        v27 = @"mediaAnalysisAttributes.characterRecognitionVersion";
        goto LABEL_56;
      case 12:
        [MEMORY[0x1E696AE18] predicateWithFormat:v9, @"mediaAnalysisAttributes.visualSearchAttributes", @"mediaAnalysisAttributes.visualSearchVersion", objc_msgSend(v7, "visualSearchAlgorithmVersion"), @"mediaAnalysisAttributes.visualSearchStickerConfidenceVersion", objc_msgSend(v7, "stickerConfidenceAlgorithmVersion")];
        goto LABEL_57;
      case 16:
        v43 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.vaAnalysisVersion", objc_msgSend(v7, "vaAnalysisVersion")];
        v35 = v43;
        if (a3)
        {
          goto LABEL_67;
        }

        v36 = MEMORY[0x1E696AB28];
        v50[0] = v43;
        v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"mediaAnalysisAttributes.visualSearchVersion", objc_msgSend(v7, "visualSearchAlgorithmVersion")];
        v50[1] = v37;
        v38 = MEMORY[0x1E695DEC8];
        v39 = v50;
        goto LABEL_71;
      case 17:
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v7 mediaAnalysisImageVersion])
        {
          v28 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.mediaAnalysisImageVersion", objc_msgSend(v7, "mediaAnalysisImageVersion")];
          [v17 addObject:v28];
        }

        if ([v7 imageEmbeddingVersion])
        {
          v29 = PLImageEmbeddingVersionPredicate(v10, v7);
          [v17 addObject:v29];
        }

        v30 = PLOptionalCaptionGenerationVersion(v7);
        if (!v30)
        {
          goto LABEL_46;
        }

        [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.imageCaptionVersion", v30];
        v31 = LABEL_45:;
        [v17 addObject:v31];

LABEL_46:
        if (a3)
        {
          [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v17];
        }

        else
        {
          [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v17];
        }
        v32 = ;

        goto LABEL_59;
      case 18:
        v34 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.vaLocationAnalysisVersion", objc_msgSend(v7, "vaLocationAnalysisVersion")];
        v35 = v34;
        if (a3)
        {
LABEL_67:
          v32 = v35;
        }

        else
        {
          v36 = MEMORY[0x1E696AB28];
          v49[0] = v34;
          v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"mediaAnalysisAttributes.visualSearchVersion", objc_msgSend(v7, "visualSearchAlgorithmVersion")];
          v49[1] = v37;
          v38 = MEMORY[0x1E695DEC8];
          v39 = v49;
LABEL_71:
          v44 = [v38 arrayWithObjects:v39 count:2];
          v32 = [v36 andPredicateWithSubpredicates:v44];
        }

        goto LABEL_59;
      case 19:
        v25 = MEMORY[0x1E696AE18];
        v33 = [v7 textUnderstandingAlgorithmVersion];
        goto LABEL_55;
      case 20:
        v25 = MEMORY[0x1E696AE18];
        v33 = [v7 textUnderstandingGatingVersion];
LABEL_55:
        v26 = v33;
        v27 = @"mediaAnalysisAttributes.textUnderstandingVersion";
LABEL_56:
        [v25 predicateWithFormat:v14, v27, v26, v45, v46, v47];
        v16 = LABEL_57:;
        goto LABEL_58;
      default:
        if (a1 != 0x7FFFFFFF)
        {
          goto LABEL_61;
        }

LABEL_22:
        v16 = [MEMORY[0x1E696AE18] predicateWithValue:a3 ^ 1u];
LABEL_58:
        v32 = v16;
LABEL_59:
        if (v32)
        {
          v40 = MEMORY[0x1E696AB28];
          v48[0] = v32;
          v48[1] = v15;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
          v13 = [v40 andPredicateWithSubpredicates:v41];
        }

        else
        {
LABEL_61:
          v13 = 0;
        }

        break;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id PLExtendedAssetsInHighlightPredicate()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AB28];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"highlightBeingExtendedAssets"];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"dayGroupHighlightBeingExtendedAssets", v1];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v0 orPredicateWithSubpredicates:v3];

  return v4;
}

id PLImageEmbeddingVersionPredicate(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a1;
  v5 = [v3 predicateWithFormat:v4, @"mediaAnalysisAttributes", @"mediaAnalysisAttributes.imageEmbeddingVersion", objc_msgSend(a2, "imageEmbeddingVersion")];

  return v5;
}

uint64_t PLOptionalCaptionGenerationVersion(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 captionGenerationVersion];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PLStillImagesInternalPredicate()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AB28];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v6[0] = v1;
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 2];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v0 andPredicateWithSubpredicates:v3];

  return v4;
}

uint64_t PLResetStateForMediaProcessingTaskID(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  if (!v9 && a1 == 3 && a3 == 0x40000)
  {
    goto LABEL_8;
  }

  v28 = a5;
  if (v9)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v9];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v11 = ;
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  [v14 setPredicate:v11];
  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v16 = [PLEnumerateAndSaveController alloc];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PLResetStateForMediaProcessingTaskID(PLMediaProcessingTaskID, NSArray<NSString *> * _Nullable __strong, PLMediaProcessingResetOptions, PLPhotoLibrary *__strong _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)"}];
  v18 = [v10 managedObjectContext];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __PLResetStateForMediaProcessingTaskID_block_invoke;
  v36[3] = &unk_1E7575B30;
  v37 = v10;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __PLResetStateForMediaProcessingTaskID_block_invoke_2;
  v34[3] = &unk_1E7572578;
  v35 = v15;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __PLResetStateForMediaProcessingTaskID_block_invoke_3;
  v30[3] = &unk_1E75725A0;
  v31 = v35;
  v32 = a1;
  v33 = a3;
  v19 = v35;
  v20 = [(PLEnumerateAndSaveController *)v16 initWithName:v17 fetchRequest:v14 context:v18 options:0 generateContextBlock:v36 didFetchObjectIDsBlock:v34 processResultBlock:v30];

  v21 = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:v28];
  if ((a3 & 0x40000) != 0)
  {
LABEL_8:
    v40 = @"state";
    v41[0] = &unk_1F0FBDAF8;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v23 = +[PLFaceCrop entityName];
    v24 = [v10 managedObjectContext];
    v29 = 0;
    v21 = [PLModelMigrator executeBatchUpdateWithEntityName:v23 predicate:0 propertiesToUpdate:v22 managedObjectContext:v24 error:&v29];
    v25 = v29;

    if ((v21 & 1) == 0)
    {
      v26 = PLBackendGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to batch set face crops to dirty: %@", buf, 0xCu);
      }
    }
  }

  return v21;
}

uint64_t __PLResetStateForMediaProcessingTaskID_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 count];
  v4 = *(a1 + 32);

  return [v4 setTotalUnitCount:v3];
}

void __PLResetStateForMediaProcessingTaskID_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    PLResetMediaProcessingStateOnAsset(*(a1 + 40), v6, *(a1 + 48));
    [*(a1 + 32) resignCurrent];
  }
}

void PLResetMediaProcessingStateOnAsset(uint64_t a1, void *a2, unint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1 > 15)
  {
    if (a1 <= 18)
    {
      if (a1 == 16)
      {
        v8 = v5;
        v48 = [v8 mediaAnalysisAttributes];
        v25 = v48;
        if (a3)
        {
          if ([v48 vaAnalysisVersion])
          {
            [v25 setVaAnalysisVersion:0];
          }

          v49 = [v25 vaAnalysisTimestamp];

          if (v49)
          {
            [v25 setVaAnalysisTimestamp:0];
          }
        }

        if ((a3 & 4) != 0)
        {
          PLResetSceneClassificationsOnAsset(v8, 16);
        }

        goto LABEL_96;
      }

      if (a1 != 17)
      {
        v20 = [v5 mediaAnalysisAttributes];
        v8 = v20;
        if (a3)
        {
          [v20 setVaLocationAnalysisVersion:0];
          [v8 setVaAnalysisTimestamp:0];
        }

        goto LABEL_97;
      }

      v8 = v5;
      v28 = [v8 mediaAnalysisAttributes];
      v25 = v28;
      if (v28)
      {
        if ((a3 & 1) != 0 && [v28 mediaAnalysisImageVersion])
        {
          [v25 setMediaAnalysisImageVersion:0];
        }

        if ((a3 & 0x1000) != 0 && [v25 imageCaptionVersion])
        {
          [v25 setImageCaptionVersion:0];
        }

        if ((a3 & 0x400) != 0 && [v25 imageEmbeddingVersion])
        {
          [v25 setImageEmbeddingVersion:0];
        }
      }

      PLResetMediaAnalysisCommonOnAsset(v8, a3, 17);
      if ((a3 & 0x4000) == 0)
      {
        goto LABEL_96;
      }

      v27 = &unk_1F0FBFEE0;
      goto LABEL_66;
    }

    if ((a1 - 19) >= 2)
    {
      goto LABEL_99;
    }

    v23 = [v5 mediaAnalysisAttributes];
    [v23 resetTextUnderstandingAttributesResetVersion:(a3 & 0x80001) != 0 resetData:(a3 >> 19) & 1];
    goto LABEL_118;
  }

  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 11)
      {
        goto LABEL_35;
      }

      if (a1 != 12)
      {
        goto LABEL_99;
      }

      v21 = v5;
      v8 = v21;
      if ((a3 & 0x200) != 0)
      {
        v51 = [v21 mediaAnalysisAttributes];
        v52 = [v51 visualSearchAttributes];

        if (v52)
        {
          v53 = [v8 managedObjectContext];
          [v53 deleteObject:v52];
        }
      }

      else if ((a3 & 1) == 0)
      {
LABEL_109:
        if ((a3 & 2) != 0)
        {
          LODWORD(v22) = -1.0;
          [v8 setStickerConfidenceScore:v22];
        }

        goto LABEL_97;
      }

      v54 = [v8 mediaAnalysisAttributes];
      v55 = [v54 visualSearchVersion];

      if (v55)
      {
        v56 = [v8 mediaAnalysisAttributes];
        [v56 setVisualSearchVersion:0];
      }

      v57 = [v8 mediaAnalysisAttributes];
      v58 = [v57 visualSearchStickerConfidenceVersion];

      if (v58)
      {
        v59 = [v8 mediaAnalysisAttributes];
        [v59 setVisualSearchStickerConfidenceVersion:0];
      }

      goto LABEL_109;
    }

    v23 = [v5 mediaAnalysisAttributes];
    [v23 resetCharacterRecognitionAttributesResetVersion:(a3 & 0x101) != 0 resetData:(a3 >> 8) & 1];
LABEL_118:

    goto LABEL_119;
  }

  switch(a1)
  {
    case 1:
LABEL_35:
      v8 = v5;
      v24 = [v8 mediaAnalysisAttributes];
      v25 = v24;
      if (v24)
      {
        if (a3)
        {
          if ([v24 mediaAnalysisVersion])
          {
            [v25 setMediaAnalysisVersion:0];
          }

          v26 = [v25 mediaAnalysisTimeStamp];

          if (v26)
          {
            [v25 setMediaAnalysisTimeStamp:0];
          }
        }

        if ((a3 & 0x2000) != 0 && [v25 videoCaptionVersion])
        {
          [v25 setVideoCaptionVersion:0];
        }

        if ((a3 & 0x800) != 0 && [v25 videoEmbeddingVersion])
        {
          [v25 setVideoEmbeddingVersion:0];
        }

        if ((a3 & 0x10000) != 0 && [v25 videoSensitivityAnalysisVersion])
        {
          [v25 setVideoSensitivityAnalysisVersion:0];
        }

        if ((a3 & 0x20000) != 0)
        {
          [v8 setCompactSCSensitivityAnalysis:0];
          [v8 setSensitivityAnalysisState:0];
        }
      }

      PLResetMediaAnalysisCommonOnAsset(v8, a3, 1);
      if ((a3 & 0x8000) == 0)
      {
        goto LABEL_96;
      }

      v27 = &unk_1F0FBFEC8;
LABEL_66:
      [PLGeneratedAssetDescription resetGeneratedAssetDescriptionsForAsset:v8 sourceTypes:v27];
LABEL_96:

LABEL_97:
      goto LABEL_119;
    case 2:
      v29 = v5;
      v30 = [v29 additionalAttributes];
      v31 = v30;
      if (a3)
      {
        if ([v30 sceneAnalysisVersion])
        {
          [v31 setSceneAnalysisVersion:0];
        }

        v32 = [v31 sceneAnalysisTimestamp];

        if (v32)
        {
          [v31 setSceneAnalysisTimestamp:0];
        }
      }

      if ((a3 & 8) != 0)
      {
        v33 = [v29 additionalAttributes];
        v34 = [v33 sceneprint];

        if (v34)
        {
          v35 = [v29 additionalAttributes];
          [v35 setSceneprint:0];
        }
      }

      if ((a3 & 2) != 0)
      {
        [v29 pl_safeSetValue:&unk_1F0FC04A8 forKey:@"overallAestheticScore" valueDidChangeHandler:0];
        [v29 pl_safeSetValue:&unk_1F0FC04B8 forKey:@"iconicScore" valueDidChangeHandler:0];
        v36 = [MEMORY[0x1E696AD98] numberWithLongLong:PLCombineToInt64()];
        [v29 pl_safeSetValue:v36 forKey:@"packedAcceptableCropRect" valueDidChangeHandler:0];

        v37 = [MEMORY[0x1E696AD98] numberWithLongLong:PLCombineToInt64()];
        [v29 pl_safeSetValue:v37 forKey:@"packedPreferredCropRect" valueDidChangeHandler:0];

        v38 = [v29 mediaAnalysisAttributes];
        [v38 pl_safeSetValue:&unk_1F0FC04A8 forKey:@"wallpaperScore" valueDidChangeHandler:0];

        v39 = [v29 mediaAnalysisAttributes];
        [v39 pl_safeSetValue:&unk_1F0FBDB40 forKey:@"probableRotationDirection" valueDidChangeHandler:0];

        v40 = [v29 mediaAnalysisAttributes];
        [v40 pl_safeSetValue:&unk_1F0FBDB40 forKey:@"probableRotationDirectionConfidence" valueDidChangeHandler:0];

        v41 = [v29 mediaAnalysisAttributes];
        [v41 pl_safeSetValue:0 forKey:@"colorNormalizationData" valueDidChangeHandler:0];
      }

      v23 = v29;
      v42 = [v23 computedAttributes];
      if (!v42)
      {
        goto LABEL_113;
      }

      if ((a3 & 0x80) != 0)
      {
        v43 = [v23 managedObjectContext];
        [v43 deleteObject:v42];
      }

      else
      {
        if ((a3 & 2) == 0)
        {
LABEL_113:

          if ((a3 & 4) != 0)
          {
            PLResetSceneClassificationsOnAsset(v23, 2);
          }

          if ((a3 & 0x20000) != 0)
          {
            [v23 setCompactSCSensitivityAnalysis:0];
            [v23 setSensitivityAnalysisState:0];
          }

          goto LABEL_118;
        }

        *&buf = @"wellFramedSubjectScore";
        *(&buf + 1) = @"wellChosenSubjectScore";
        v69 = @"tastefullyBlurredScore";
        v70 = @"sharplyFocusedSubjectScore";
        v71 = @"wellTimedShotScore";
        v72 = @"pleasantLightingScore";
        v73 = @"pleasantReflectionsScore";
        v74 = @"harmoniousColorScore";
        v75 = @"livelyColorScore";
        v76 = @"pleasantSymmetryScore";
        v77 = @"pleasantPatternScore";
        v78 = @"immersivenessScore";
        v79 = @"pleasantPerspectiveScore";
        v80 = @"pleasantPostProcessingScore";
        v81 = @"noiseScore";
        v82 = @"failureScore";
        v83 = @"pleasantCompositionScore";
        v84 = @"interestingSubjectScore";
        v85 = @"intrusiveObjectPresenceScore";
        v86 = @"pleasantCameraTiltScore";
        v87 = @"lowLight";
        [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:21];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v43 = v63 = 0u;
        v44 = [v43 countByEnumeratingWithState:&v60 objects:&v64 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v61;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v61 != v46)
              {
                objc_enumerationMutation(v43);
              }

              [v42 pl_safeSetValue:&unk_1F0FC0890 forKey:*(*(&v60 + 1) + 8 * i) valueDidChangeHandler:{0, v60}];
            }

            v45 = [v43 countByEnumeratingWithState:&v60 objects:&v64 count:16];
          }

          while (v45);
        }
      }

      goto LABEL_113;
    case 3:
      v7 = v5;
      v8 = v7;
      if (a3)
      {
        v9 = [v7 additionalAttributes];
        v10 = [v9 faceAnalysisVersion];

        if (v10)
        {
          v11 = [v8 additionalAttributes];
          [v11 setFaceAnalysisVersion:0];
        }

        v12 = [v8 faceAdjustmentVersion];

        if (v12)
        {
          [v8 setFaceAdjustmentVersion:0];
        }
      }

      if ((a3 & 0x10) != 0)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v13 = [v8 allDetectedFaces];
        v14 = [v13 countByEnumeratingWithState:&v64 objects:&buf count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v65;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v65 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v64 + 1) + 8 * j) faceprint];
              if (v18)
              {
                v19 = [v8 managedObjectContext];
                [v19 deleteObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v64 objects:&buf count:16];
          }

          while (v15);
        }
      }

      goto LABEL_97;
  }

LABEL_99:
  v50 = PLBackendGetLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "Unexpected reset with task ID %tu", &buf, 0xCu);
  }

LABEL_119:
}

void PLResetMediaAnalysisCommonOnAsset(void *a1, char a2, uint64_t a3)
{
  v21 = a1;
  v5 = [v21 mediaAnalysisAttributes];
  v6 = v5;
  if ((a2 & 2) != 0)
  {
    if ([v5 faceCount])
    {
      [v6 setFaceCount:0];
    }

    if ([v6 bestVideoRangeDurationTimeScale])
    {
      [v6 setBestVideoRangeDurationTimeScale:0];
    }

    if ([v6 bestVideoRangeDurationValue])
    {
      [v6 setBestVideoRangeDurationValue:0];
    }

    if ([v6 bestVideoRangeStartTimeScale])
    {
      [v6 setBestVideoRangeStartTimeScale:0];
    }

    if ([v6 bestVideoRangeStartValue])
    {
      [v6 setBestVideoRangeStartValue:0];
    }

    [v6 autoplaySuggestionScore];
    if (*&v7 != 0.5)
    {
      LODWORD(v7) = 0.5;
      [v6 setAutoplaySuggestionScore:v7];
    }

    if ([v6 audioClassification])
    {
      [v6 setAudioClassification:0];
    }

    [v6 activityScore];
    if (*&v8 != 0.5)
    {
      LODWORD(v8) = 0.5;
      [v6 setActivityScore:v8];
    }

    [v6 audioScore];
    if (*&v9 != 0.5)
    {
      LODWORD(v9) = 0.5;
      [v6 setAudioScore:v9];
    }

    if ([v6 screenTimeDeviceImageSensitivity] != -1)
    {
      [v6 setScreenTimeDeviceImageSensitivity:0xFFFFFFFFLL];
    }

    if ([v6 packedBestPlaybackRect])
    {
      [v6 setPackedBestPlaybackRect:0];
    }

    if ([v21 isPhotoIris])
    {
      [v6 settlingEffectScore];
      if (*&v10 != -1.0)
      {
        LODWORD(v10) = -1.0;
        [v6 setSettlingEffectScore:v10];
      }

      v11 = [v21 additionalAttributes];
      v12 = v11;
      if (v11 && [v11 variationSuggestionStates])
      {
        [v12 setVariationSuggestionStates:0];
      }
    }
  }

  if ((a2 & 0x40) != 0)
  {
    v13 = [v21 managedObjectContext];
    if (v6)
    {
      if ([v6 isInserted])
      {
        goto LABEL_36;
      }

      [v13 deleteObject:v6];
    }

    v6 = [(PLManagedObject *)PLMediaAnalysisAssetAttributes insertInManagedObjectContext:v13];
    [v21 setMediaAnalysisAttributes:v6];
LABEL_36:
    [PLGeneratedAssetDescription resetGeneratedAssetDescriptionsForAsset:v21];
    v14 = [v21 computeSyncAttributes];
    v15 = [v14 cloudComputeStateAdjustmentFingerprint];
    v16 = [v21 additionalAttributes];
    v17 = [v16 adjustedStableHash];
    v18 = [v15 isEqualToString:v17];

    if ((v18 & 1) == 0)
    {
      [v21 deleteComputeSyncResourceIfExists];
      v19 = [v21 computeSyncAttributes];
      v20 = [v19 hasValidLocalProperties];

      if (v20)
      {
        [PLComputeSyncAttributes resetLocalComputeSyncAttributesForAsset:v21];
      }
    }
  }

  if ((a2 & 4) != 0)
  {
    PLResetSceneClassificationsOnAsset(v21, a3);
  }
}

void PLResetSceneClassificationsOnAsset(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v3 = 0;
  v6[0] = xmmword_19C60B010;
  v6[1] = xmmword_19C60B020;
  v6[2] = xmmword_19C60B030;
  v7 = 7;
  do
  {
    v4 = *(v6 + v3);
    if (v4 > 7)
    {
      goto LABEL_12;
    }

    if (((1 << v4) & 0xF2) != 0)
    {
      if (a2 == 16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (((1 << v4) & 0xC) == 0)
      {
        if (a2 != 2)
        {
          goto LABEL_12;
        }

        v4 = 0;
LABEL_11:
        [v5 removeSceneClassificationsOfType:v4];
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v3 += 8;
  }

  while (v3 != 56);
}

void PLCheckForMediaAnalysisVersionBump(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 managedObjectContext];
  v3 = [[PLGlobalValues alloc] initWithManagedObjectContext:v2];
  v4 = [(PLGlobalValues *)v3 mediaAnalysisEmbeddingVersion];
  v5 = +[PLMediaAnalysisServiceRequestAdapter currentImageEmbeddingVersion];
  v6 = v5;
  if (v5)
  {
    if (!v4 || (v7 = [v5 intValue], v7 > objc_msgSend(v4, "intValue")))
    {
      v8 = [v6 intValue];
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 1024;
        v17 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Updating GlobalValue mediaAnalysisEmbeddingVersion from %{public}@ to %d", &v14, 0x12u);
      }

      v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      [(PLGlobalValues *)v3 setMediaAnalysisEmbeddingVersion:v10];

      v11 = [MEMORY[0x1E695DF00] now];
      [(PLGlobalValues *)v3 setMediaAnalysisEmbeddingVersionBumpDate:v11];
    }

    v12 = [v1 libraryServicesManager];
    v13 = [v12 availabilityComputer];

    [v13 updatePersistedSnapshotIfNeededWithLightweightVersionCheckForPhotoLibrary:v1];
  }

  else
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "PLCheckForMediaAnalysisVersionBump currentImageEmbeddingVersion is nil", &v14, 2u);
    }
  }
}

void __PLArrayMapSlowPath_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _pl_addNonNilObject:v2];
}

id PLArrayFromEnumeration(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];

  return v8;
}

void sub_19C41FE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4205B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C420FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_19C421640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C421AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4222DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C422B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80721(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C424010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C4264B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_19C426ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C426F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C427D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C428414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C428A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C428FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C429858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_19C42D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81385(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLFaceCropTypeDescription(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"none";
  }

  else
  {
    return off_1E7572868[(a1 - 1)];
  }
}

__CFString *PLFaceCropStateDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7572890[a1];
  }
}

id PLUTTypeFromUniformFileType(uint64_t a1)
{
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, &__block_literal_global_81513);
  }

  v2 = kFileTypesToIdentifiers;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];

  return v5;
}

uint64_t PLFileTypeFromIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, &__block_literal_global_81513);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [kIdentifiersToFileTypes objectForKeyedSubscript:v2];
  v4 = [v3 intValue];

LABEL_6:
  return v4;
}

void sub_19C432F88(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x660], 8);
  _Unwind_Resume(a1);
}

id PLStringFromPLComputeCacheSnapshotAllowPolicyShort(uint64_t a1)
{
  v1 = @"PLComputeCacheSnapshotAllowPolicyCurrent";
  if (a1 == 1)
  {
    v1 = @"PLComputeCacheSnapshotAllowPolicyExceededDate";
  }

  if (a1 == 2)
  {
    v1 = @"PLComputeCacheSnapshotAllowPolicyExceededExpungeLimit";
  }

  v2 = v1;
  v3 = -[__CFString substringFromIndex:](v2, "substringFromIndex:", [@"PLComputeCacheSnapshotAllowPolicy" length]);

  v4 = [v3 lowercaseString];

  return v4;
}

id PLStringFromPLComputeCacheSnapshotDenyPolicyShort(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v1 = @"PLComputeCacheSnapshotDenyPolicyAllow";
  }

  else
  {
    v1 = off_1E7572B80[a1 - 1];
  }

  v2 = -[__CFString substringFromIndex:](v1, "substringFromIndex:", [@"PLComputeCacheSnapshotDenyPolicy" length]);
  v3 = [v2 lowercaseString];

  return v3;
}

__CFString *PLComputeCacheSnapshotDenyPolicyReason(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Snapshot enabled. Check allow policy";
  }

  else
  {
    return off_1E7572BA8[a1 - 1];
  }
}

__CFString *PLComputeCacheSnapshotAllowPolicyReason(uint64_t a1)
{
  v1 = @"Snapshot disabled. Snapshot is current";
  if (a1 == 1)
  {
    v1 = @"Snapshot required. Snapshot is out of date";
  }

  if (a1 == 2)
  {
    return @"Snapshot required. Snapshot has deleted asset records";
  }

  else
  {
    return v1;
  }
}

void sub_19C4379F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C43A684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82652(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C43ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C43DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C43E250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C43FB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C451D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84349(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C452384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C454584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel, __int128 buf)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "failed to load photo library %{public}s with url %@, %@", "Connection opened for client with PID: %d, bundle ID: %@ at QoS: %{public}@", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C4556F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C456994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C456C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C456F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4571D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C457494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C457754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C457A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C457CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C457F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C458254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C458514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4587D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C458A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C458D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C459014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C4592D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C459594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C459854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C459B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C459DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C45AEEC(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

double __Block_byref_object_copy__84934(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *&result = 1024;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = xmmword_19C60B040;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 256;
  *(a1 + 136) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 1024;
  v3 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  *(a2 + 56) = 0;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v7;
  v8 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  LOBYTE(v8) = *(a1 + 118);
  *(a1 + 118) = *(a2 + 118);
  *(a2 + 118) = v8;
  LOBYTE(v8) = *(a1 + 119);
  *(a1 + 119) = *(a2 + 119);
  *(a2 + 119) = v8;
  v9 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v9;
  LOBYTE(v9) = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v9;
  LOBYTE(v9) = *(a1 + 129);
  *(a1 + 129) = *(a2 + 129);
  *(a2 + 129) = v9;
  v10 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v10;
  return result;
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v4 = *(this + 6);
  *(v4 - 4) = 0;
  v4 -= 4;
  *(this + 6) = v4;
  v5 = *(this + 4) - v4 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v6 = 4;
  }

  else
  {
    v6 = (*(this + 34) + 2);
  }

  *(this + 34) = v6;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v6);
  v7 = (*(this + 6) - v6);
  *(this + 6) = v7;
  bzero(v7, v6);
  v8 = v5 - a2;
  if ((v5 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v9 = *(this + 6);
  if (!v9)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v9[1] = v8;
  *v9 = *(this + 34);
  v10 = *(this + 7);
  if (!v10)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v11 = *(this + 16);
  v12 = v10 - 8 * v11;
  if (v11)
  {
    v13 = (v10 - 8 * v11);
    do
    {
      v14 = *(v13 + 2);
      if (*(v9 + v14))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v15 = *v13;
      v13 += 2;
      *(v9 + v14) = v5 - v15;
    }

    while (v13 < v10);
  }

  *(this + 7) = v12;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v17 = *(this + 4);
  v16 = *(this + 5);
  LODWORD(v18) = v17 - v9 + v16;
  if (*(this + 81))
  {
    if (!v16)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v16 < v12)
    {
      v19 = *v9;
      v20 = v16 + v17;
      v21 = *(this + 5);
      while (1)
      {
        v18 = *v21;
        if (v19 == *(v20 - v18) && !memcmp((v20 - v18), v9, v19))
        {
          break;
        }

        if (++v21 >= v12)
        {
          LODWORD(v18) = v17 - v9 + v16;
          goto LABEL_21;
        }
      }

      v9 = (v9 + (v17 - v9 + v16 - v5));
      *(this + 6) = v9;
    }
  }

LABEL_21:
  if (v18 == v17 + v16 - v9)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v18;
    *(this + 7) = v22 + 1;
    v17 = *(this + 4);
    v16 = *(this + 5);
  }

  *(v16 + v17 - v5) = v18 - v5;
  *(this + 70) = 0;
  return v5;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(v2 + 8));
    MEMORY[0x19EAEF020](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x19EAEF000](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*a1);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x19EAEF000);
  }
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_1F0F05528;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_1F0F05528;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return v6 + 4;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  if (*(this + 9) <= 3uLL)
  {
    *(this + 9) = 4;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (*(this + 12) - (*(this + 8) + *(this + 10))) & 3);
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 4uLL);
    v6 = *(v5 + 6);
    *(v6 - 4) = a3;
    v6 -= 4;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = a3;
  v8 = result;
  while (2)
  {
    v126 = &a2[-1] + 1;
    v120 = &a2[-2] + 1;
    v122 = a2 - 1;
    v134 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = (a2 - v8) >> 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v51 = *(*v6 + 32);
                v52 = *(*v6 + 40);

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v8, v8 + 1, v126, v51, v52);
              case 4:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v8, v8 + 1, &v8[1], *(*v6 + 32), *(*v6 + 40));
                v53 = *v126;
                v54 = *(*v6 + 40) + *(*v6 + 32);
                v55 = v8[1].u32[0];
                result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v54 - v53), (v54 - v55));
                if (result)
                {
                  v8[1].i32[0] = v53;
                  *v126 = v55;
                  v57 = v8->u32[1];
                  v56 = v8[1].u32[0];
                  result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v54 - v56), (v54 - v57));
                  if (result)
                  {
                    v8->i32[1] = v56;
                    v8[1].i32[0] = v57;
                    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v54 - v56), (v54 - v8->u32[0]));
                    if (result)
                    {
                      *v8 = vrev64_s32(*v8);
                    }
                  }
                }

                return result;
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v8, v8 + 1, &v8[1], &v8[1] + 1, v126, v6);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v48 = *v126;
              v49 = *(*v6 + 40) + *(*v6 + 32);
              v50 = v8->u32[0];
              result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v49 - v48), (v49 - v50));
              if (result)
              {
                v8->i32[0] = v48;
                *v126 = v50;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v58 = v8 + 1;
            v60 = v8 == a2 || v58 == a2;
            if (a5)
            {
              if (!v60)
              {
                v61 = 0;
                v62 = *(*v6 + 40) + *(*v6 + 32);
                v63 = v8;
                do
                {
                  v65 = v63->u32[0];
                  v64 = v63->u32[1];
                  v63 = v58;
                  result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v62 - v64), (v62 - v65));
                  if (result)
                  {
                    v66 = *v6;
                    v67 = v61;
                    while (1)
                    {
                      *(&v8->i32[1] + v67) = v65;
                      if (!v67)
                      {
                        break;
                      }

                      v68 = *(v66 + 40) + *(v66 + 32);
                      v65 = *(&v8->u32[-1] + v67);
                      result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v68 - v64), (v68 - v65));
                      v67 -= 4;
                      if ((result & 1) == 0)
                      {
                        v69 = (v8 + v67 + 4);
                        goto LABEL_87;
                      }
                    }

                    v69 = v8;
LABEL_87:
                    v69->i32[0] = v64;
                    a2 = v134;
                    v6 = a3;
                  }

                  v58 = v63 + 1;
                  v61 += 4;
                }

                while (&v63->u8[4] != a2);
              }
            }

            else if (!v60)
            {
              v116 = *(*v6 + 40) + *(*v6 + 32);
              do
              {
                v118 = v9->u32[0];
                v117 = v9->u32[1];
                v9 = v58;
                result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v116 - v117), (v116 - v118));
                if (result)
                {
                  v119 = v9;
                  do
                  {
                    v119->i32[0] = v118;
                    v118 = v119[-1].u32[0];
                    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v116 - v117), (v116 - v118));
                    v119 = (v119 - 4);
                  }

                  while ((result & 1) != 0);
                  v119->i32[0] = v117;
                  a2 = v134;
                }

                v58 = v9 + 1;
              }

              while (&v9->u8[4] != a2);
            }

            return result;
          }

          v136 = v8;
          if (!a4)
          {
            if (v8 != a2)
            {
              v70 = (v10 - 2) >> 1;
              v121 = *v6;
              v71 = v70;
              do
              {
                v72 = v71;
                if (v70 >= v71)
                {
                  v73 = (2 * v71) | 1;
                  v74 = v136 + v73;
                  v75 = 2 * v71 + 2;
                  v123 = v71;
                  if (v75 >= v10)
                  {
                    LODWORD(v76) = *v74;
                    v78 = *(v121 + 32);
                    v77 = *(v121 + 40);
                  }

                  else
                  {
                    v76 = *v74;
                    v78 = *(v121 + 32);
                    v77 = *(v121 + 40);
                    v79 = v74[1];
                    v80 = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v77 + v78 - v76), (v77 + v78 - v79));
                    if (v80)
                    {
                      LODWORD(v76) = v79;
                    }

                    v72 = v123;
                    if (v80)
                    {
                      ++v74;
                    }

                    v6 = a3;
                    if (v80)
                    {
                      v73 = v75;
                    }
                  }

                  v81 = v136 + v72;
                  v82 = v77 + v78;
                  v83 = (v77 + v78 - v76);
                  v84 = *v81;
                  result = pl::SearchThumbnailMapEntry::KeyCompareLessThan(v83, (v82 - v84));
                  a2 = v134;
                  v70 = (v10 - 2) >> 1;
                  if ((result & 1) == 0)
                  {
                    v132 = -v84;
                    v129 = *v6;
                    v125 = v84;
                    do
                    {
                      *v81 = v76;
                      v81 = v74;
                      if (v70 < v73)
                      {
                        break;
                      }

                      v85 = (2 * v73) | 1;
                      v74 = v136 + v85;
                      v73 = 2 * v73 + 2;
                      if (v73 >= v10)
                      {
                        LODWORD(v76) = *v74;
                        v73 = v85;
                        v86 = *(v129 + 32);
                        v87 = *(v129 + 40);
                      }

                      else
                      {
                        v76 = *v74;
                        v86 = *(v129 + 32);
                        v87 = *(v129 + 40);
                        v88 = v74[1];
                        v89 = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v87 + v86 - v76), (v87 + v86 - v88));
                        if (v89)
                        {
                          LODWORD(v76) = v88;
                          ++v74;
                        }

                        LODWORD(v84) = v125;
                        v70 = (v10 - 2) >> 1;
                        if (!v89)
                        {
                          v73 = v85;
                        }
                      }

                      result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v87 + v86 - v76), (v87 + v86 + v132));
                    }

                    while (!result);
                    *v81 = v84;
                    a2 = v134;
                    v6 = a3;
                    v72 = v123;
                  }
                }

                v71 = v72 - 1;
              }

              while (v72);
              v130 = *v6;
              v90 = v136;
              do
              {
                v135 = a2;
                v91 = 0;
                v133 = v90->i32[0];
                v92 = *v6;
                v93 = v90;
                do
                {
                  v94 = v93 + v91;
                  v95 = v94 + 1;
                  v96 = (2 * v91) | 1;
                  v97 = 2 * v91 + 2;
                  if (v97 >= v10)
                  {
                    v103 = *v95;
                    v91 = (2 * v91) | 1;
                  }

                  else
                  {
                    v100 = v94[2];
                    v98 = v94 + 2;
                    v99 = v100;
                    v101 = *(v98 - 1);
                    v102 = *(v92 + 40) + *(v92 + 32);
                    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v102 - v101), (v102 - v100));
                    if (result)
                    {
                      v103 = v99;
                    }

                    else
                    {
                      v103 = v101;
                    }

                    if (result)
                    {
                      v95 = v98;
                      v91 = v97;
                    }

                    else
                    {
                      v91 = v96;
                    }
                  }

                  v93->i32[0] = v103;
                  v93 = v95;
                }

                while (v91 <= (v10 - 2) / 2);
                v104 = &v135[-1] + 1;
                if (v95 == &v135[-1].u8[4])
                {
                  v105 = (v135 - 4);
                  *v95 = v133;
                  v90 = v136;
                }

                else
                {
                  *v95 = *v104;
                  v105 = (v135 - 4);
                  *v104 = v133;
                  v90 = v136;
                  v106 = (v95 - v136 + 4) >> 2;
                  v107 = v106 < 2;
                  v108 = v106 - 2;
                  if (!v107)
                  {
                    v109 = v108 >> 1;
                    v110 = v136 + (v108 >> 1);
                    v111 = *v110;
                    v112 = *(v130 + 40) + *(v130 + 32);
                    v113 = *v95;
                    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v112 - v111), (v112 - v113));
                    if (result)
                    {
                      v114 = *a3;
                      do
                      {
                        *v95 = v111;
                        v95 = v110;
                        if (!v109)
                        {
                          break;
                        }

                        v109 = (v109 - 1) >> 1;
                        v110 = v136 + v109;
                        v111 = *v110;
                        v115 = *(v114 + 40) + *(v114 + 32);
                        result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v115 - v111), (v115 - v113));
                      }

                      while ((result & 1) != 0);
                      *v95 = v113;
                    }
                  }
                }

                v107 = v10-- <= 2;
                a2 = v105;
                v6 = a3;
              }

              while (!v107);
            }

            return result;
          }

          v11 = v8 + (v10 >> 1);
          v12 = *(*v6 + 32);
          v13 = *(*v6 + 40);
          if (v10 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v9 + (v10 >> 1), v9, v126, v12, v13);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v9, v9 + (v10 >> 1), v126, v12, v13);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v9 + 1, v11 - 1, v122, *(*v6 + 32), *(*v6 + 40));
            v14 = v9 + (v10 >> 1) + 1;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(&v136[1], v14, v120, *(*v6 + 32), *(*v6 + 40));
            v9 = v136;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(v11 - 1, v11, v14, *(*v6 + 32), *(*v6 + 40));
            v15 = v136->i32[0];
            v136->i32[0] = *v11;
            *v11 = v15;
          }

          --a4;
          v16 = v9->u32[0];
          v17 = *v6;
          v131 = a4;
          if (a5)
          {
            break;
          }

          v18 = *(v17 + 32);
          v19 = *(v17 + 40);
          v21 = v19 + v18;
          v22 = (v19 + v18 - v9[-1].u32[1]);
          v23 = (v19 + v18 - v16);
          if (pl::SearchThumbnailMapEntry::KeyCompareLessThan(v22, v23))
          {
            v20 = -v16;
            v9 = v136;
            goto LABEL_19;
          }

          result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v19 + v18 - v16), (v21 - *v126));
          if (result)
          {
            v8 = v136;
            do
            {
              v39 = v8->u32[1];
              v8 = (v8 + 4);
              result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v19 + v18 - v16), (v21 - v39));
            }

            while ((result & 1) == 0);
          }

          else
          {
            v40 = (v136 + 4);
            do
            {
              v8 = v40;
              if (v40 >= v134)
              {
                break;
              }

              v40 = (v40 + 4);
              result = pl::SearchThumbnailMapEntry::KeyCompareLessThan(v23, (v21 - v8->u32[0]));
            }

            while (!result);
          }

          v41 = v134;
          if (v8 < v134)
          {
            v41 = v134;
            do
            {
              v42 = v41[-1].u32[1];
              v41 = (v41 - 4);
              result = pl::SearchThumbnailMapEntry::KeyCompareLessThan(v23, (v21 - v42));
            }

            while ((result & 1) != 0);
          }

          if (v8 < v41)
          {
            v43 = v8->i32[0];
            v44 = v41->i32[0];
            do
            {
              v8->i32[0] = v44;
              v41->i32[0] = v43;
              do
              {
                v45 = v8->u32[1];
                v8 = (v8 + 4);
                v43 = v45;
              }

              while (!pl::SearchThumbnailMapEntry::KeyCompareLessThan(v23, (v21 - v45)));
              do
              {
                v46 = v41[-1].u32[1];
                v41 = (v41 - 4);
                v44 = v46;
                result = pl::SearchThumbnailMapEntry::KeyCompareLessThan(v23, (v21 - v46));
              }

              while ((result & 1) != 0);
            }

            while (v8 < v41);
          }

          v47 = &v8[-1] + 1;
          a2 = v134;
          if (&v8[-1].u8[4] != v136)
          {
            v136->i32[0] = *v47;
          }

          a5 = 0;
          *v47 = v16;
          v6 = a3;
        }

        v18 = *(v17 + 32);
        v19 = *(v17 + 40);
        v20 = -v16;
LABEL_19:
        v24 = v19 + v18;
        v25 = v9;
        do
        {
          v26 = v25;
          v28 = v25->u32[1];
          v25 = (v25 + 4);
          v27 = v28;
        }

        while (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v28), (v24 + v20)));
        v128 = v16;
        a2 = v134;
        v29 = v134;
        if (v26 == v136)
        {
          v29 = v134;
          do
          {
            if (v25 >= v29)
            {
              break;
            }

            v31 = v29[-1].u32[1];
            v29 = (v29 - 4);
          }

          while (!pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v31), (v24 + v20)));
        }

        else
        {
          do
          {
            v30 = v29[-1].u32[1];
            v29 = (v29 - 4);
          }

          while (!pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v30), (v24 + v20)));
        }

        if (v25 < v29)
        {
          v32 = v29->i32[0];
          v33 = v27;
          v34 = v25;
          v35 = v29;
          do
          {
            v34->i32[0] = v32;
            v35->i32[0] = v33;
            do
            {
              v26 = v34;
              v36 = v34->u32[1];
              v34 = (v34 + 4);
              v33 = v36;
            }

            while (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v36), (v24 + v20)));
            do
            {
              v37 = v35[-1].u32[1];
              v35 = (v35 - 4);
              v32 = v37;
            }

            while (!pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v37), (v24 + v20)));
          }

          while (v34 < v35);
        }

        if (v26 != v136)
        {
          v136->i32[0] = v26->i32[0];
        }

        v6 = a3;
        v26->i32[0] = v128;
        a4 = v131;
        if (v25 >= v29)
        {
          break;
        }

LABEL_38:
        result = std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,false>(v136, v26, a3, v131, a5 & 1);
        a5 = 0;
        v8 = (v26 + 4);
      }

      v38 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *>(v136, v26, a3);
      v8 = (v26 + 4);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *>((v26 + 4), v134, a3);
      if (result)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_38;
      }
    }

    a2 = v26;
    v8 = v136;
    if (!v38)
    {
      continue;
    }

    return result;
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v4 = *(this + 6);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(this + 6) = v4;
  return (*(this + 8) - v4 + *(this + 10));
}

BOOL pl::SearchThumbnailMapEntry::KeyCompareLessThan(int *a1, int *a2)
{
  v2 = (a1 + *(a1 - *a1 + 4));
  v3 = (v2 + *v2);
  v4 = (a2 + *(a2 - *a2 + 4));
  v5 = *v4;
  v8 = *v3;
  v6 = v3 + 1;
  v7 = v8;
  v9 = *(v4 + v5);
  if (v9 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = memcmp(v6, v4 + v5 + 4, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v7 < v9;
  }
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a5 + a4;
  v10 = (a5 + a4 - v8);
  v11 = *a1;
  v12 = (a5 + a4 - v11);
  v13 = pl::SearchThumbnailMapEntry::KeyCompareLessThan(v10, v12);
  v14 = *a3;
  result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v9 - v14), v10);
  if (v13)
  {
    if (result)
    {
      *a1 = v14;
    }

    else
    {
      *a1 = v8;
      *a2 = v11;
      v18 = *a3;
      result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v9 - v18), v12);
      if (!result)
      {
        return result;
      }

      *a2 = v18;
    }

    *a3 = v11;
  }

  else if (result)
  {
    *a2 = v14;
    *a3 = v8;
    v16 = *a2;
    v17 = *a1;
    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v9 - v16), (v9 - v17));
    if (result)
    {
      *a1 = v16;
      *a2 = v17;
    }
  }

  return result;
}

BOOL std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(a1, a2, a3, *(*a6 + 32), *(*a6 + 40));
  v12 = *a4;
  v13 = *(*a6 + 40) + *(*a6 + 32);
  v14 = *a3;
  if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v12), (v13 - v14)))
  {
    *a3 = v12;
    *a4 = v14;
    v15 = *a3;
    v16 = *a2;
    if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v15), (v13 - v16)))
    {
      *a2 = v15;
      *a3 = v16;
      v17 = *a2;
      v18 = *a1;
      if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v17), (v13 - v18)))
      {
        *a1 = v17;
        *a2 = v18;
      }
    }
  }

  v19 = *a5;
  v20 = *a4;
  result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v19), (v13 - v20));
  if (result)
  {
    *a4 = v19;
    *a5 = v20;
    v22 = *a4;
    v23 = *a3;
    result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v22), (v13 - v23));
    if (result)
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v24), (v13 - v25));
      if (result)
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *a1;
        result = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v26), (v13 - v27));
        if (result)
        {
          *a1 = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *>(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(a1, a1 + 1, &a2[-1] + 1, *(*a3 + 32), *(*a3 + 40));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(a1, a1 + 1, &a1[1], *(*a3 + 32), *(*a3 + 40));
        v23 = v4[-1].u32[1];
        v24 = *(*v3 + 40) + *(*v3 + 32);
        v25 = a1[1].u32[0];
        if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v23), (v24 - v25)))
        {
          a1[1].i32[0] = v23;
          v4[-1].i32[1] = v25;
          v27 = a1->u32[1];
          v26 = a1[1].u32[0];
          if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v26), (v24 - v27)))
          {
            a1->i32[1] = v26;
            a1[1].i32[0] = v27;
            if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v24 - v26), (v24 - a1->u32[0])))
            {
              *a1 = vrev64_s32(*a1);
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2[-1].u32[1];
    v8 = *(*a3 + 40) + *(*a3 + 32);
    v9 = a1->u32[0];
    if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v8 - v7), (v8 - v9)))
    {
      a1->i32[0] = v7;
      v4[-1].i32[1] = v9;
    }

    return 1;
  }

LABEL_11:
  v10 = a1 + 1;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<pl::SearchThumbnailMapEntry> &,apple::aiml::flatbuffers2::Offset<pl::SearchThumbnailMapEntry> *,0>(a1, a1 + 1, &a1[1], *(*a3 + 32), *(*a3 + 40));
  v11 = (a1 + 12);
  if (&a1[1].u8[4] == v4)
  {
    return 1;
  }

  v12 = 0;
  v13 = *(*v3 + 40) + *(*v3 + 32);
  v14 = 12;
  v29 = v3;
  v30 = v4;
  while (1)
  {
    v15 = v11->u32[0];
    v16 = v10->u32[0];
    if (pl::SearchThumbnailMapEntry::KeyCompareLessThan((v13 - v15), (v13 - v16)))
    {
      v17 = *v3;
      v18 = v14;
      while (1)
      {
        *(a1->i32 + v18) = v16;
        v19 = v18 - 4;
        if (v18 == 4)
        {
          break;
        }

        v20 = *(v17 + 40) + *(v17 + 32);
        v16 = *(a1[-1].u32 + v18);
        v21 = pl::SearchThumbnailMapEntry::KeyCompareLessThan((v20 - v15), (v20 - v16));
        v18 = v19;
        if (!v21)
        {
          v22 = (a1 + v19);
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      v22->i32[0] = v15;
      ++v12;
      v3 = v29;
      v4 = v30;
      if (v12 == 8)
      {
        return &v11->u8[4] == v30;
      }
    }

    v10 = v11;
    v14 += 4;
    v11 = (v11 + 4);
    if (v11 == v4)
    {
      return 1;
    }
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
  v6 = (*(this + 6) - 1);
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3);
    v7 = (*(this + 6) - a3);
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v8 = *(this + 6);
  *(v8 - 4) = a3;
  v8 -= 4;
  *(this + 6) = v8;
  return (*(this + 8) - v8 + *(this + 10));
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_1E7563FE8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

const unsigned __int8 *GetSearchThumbnailMapFromData(NSData *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v34 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Requested thumbnail map from data, but data is nil.", v37, 2u);
    }

    goto LABEL_51;
  }

  v3 = [(NSData *)v1 bytes];
  v4 = v3;
  if (!v3)
  {
    v34 = PLSearchBackendThumbnailMapGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "No data to decode.", v37, 2u);
    }

    goto LABEL_51;
  }

  v5 = *v3;
  *v37 = v3;
  v38 = [(NSData *)v2 length];
  v39 = xmmword_19C60B050;
  v40 = 0;
  v41 = 1;
  if (v38 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v6 = &v4[v5];
  if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v37, &v4[v5]) || !apple::aiml::flatbuffers2::Table::VerifyOffset(&v4[v5], v37, 4u))
  {
    goto LABEL_43;
  }

  v7 = *v6;
  v8 = -v7;
  v9 = &v6[-v7];
  if (*v9 >= 5u && *(v9 + 2))
  {
    v10 = &v6[*(v9 + 2) + *&v6[*(v9 + 2)]];
    v11 = &v10[-*v37];
    if (&v10[-*v37] & 3) != 0 && (v41)
    {
      goto LABEL_43;
    }

    if (v38 < 5)
    {
      goto LABEL_43;
    }

    if (v38 - 4 < v11)
    {
      goto LABEL_43;
    }

    v12 = *v10;
    if (v12 > 0x1FFFFFFE)
    {
      goto LABEL_43;
    }

    v13 = 4 * v12 + 4;
    v15 = v38 >= v13;
    v14 = v38 - v13;
    v15 = v14 != 0 && v15 && v14 >= v11;
    if (!v15)
    {
      goto LABEL_43;
    }

    v16 = *(v9 + 2);
    if (v16)
    {
      v17 = *&v6[v16];
      if (*&v6[v16 + v17])
      {
        v18 = 0;
        v19 = &v4[v5 + 4 + v16];
        v36 = &v6[v16];
        v20 = &v6[v16];
        while (1)
        {
          v21 = &v20[v17];
          v22 = &v20[v17 + 4];
          v23 = *v22;
          if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v37, &v22[v23]))
          {
            goto LABEL_43;
          }

          v24 = v23 - *&v21[v23 + 4];
          if (*&v21[v24 + 4] < 5u)
          {
            goto LABEL_43;
          }

          v25 = *&v20[v17 + 8 + v24];
          if (!v25)
          {
            goto LABEL_43;
          }

          v26 = v17 + v19 + v23 + v25 - *v37;
          if (v26 & 3) != 0 && (v41)
          {
            goto LABEL_43;
          }

          if (v38 < 5)
          {
            goto LABEL_43;
          }

          if (v38 - 4 < v26)
          {
            goto LABEL_43;
          }

          v27 = *(v25 + v23 + v17 + v19);
          if (v27 < 1)
          {
            goto LABEL_43;
          }

          v28 = v23 + v25;
          if (v38 - 1 < v17 + v19 + v28 + v27 - *v37 || !apple::aiml::flatbuffers2::Verifier::VerifyString(v37, &v20[v17 + 4 + v28 + *&v20[v17 + 4 + v28]]) || !apple::aiml::flatbuffers2::Table::VerifyOffset(&v22[v23], v37, 6u))
          {
            goto LABEL_43;
          }

          v29 = &v20[v17 + v23 - *&v21[v23 + 4]];
          if (*(v29 + 2) >= 7u && (v30 = *(v29 + 5)) != 0)
          {
            v31 = &v20[v17 + 4 + v23 + v30 + *&v20[v17 + 4 + v23 + v30]];
          }

          else
          {
            v31 = 0;
          }

          if (!apple::aiml::flatbuffers2::Verifier::VerifyString(v37, v31))
          {
            goto LABEL_43;
          }

          LODWORD(v39) = v39 - 1;
          ++v18;
          v19 += 4;
          v20 += 4;
          if (v18 >= *&v36[v17])
          {
            v8 = -*v6;
            break;
          }
        }
      }
    }
  }

  v32 = &v6[v8];
  if (*v32 >= 7u)
  {
    v33 = *(v32 + 3);
    if (v33)
    {
      if (v38 < 5 || v38 - 4 < &v6[v33 - *v37])
      {
LABEL_43:
        v34 = PLSearchBackendThumbnailMapGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v2;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "SearchThumbnailMap buffer verification failed for data: %@", buf, 0xCu);
        }

LABEL_51:

        v6 = 0;
      }
    }
  }

  return v6;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}