@interface PXMemoriesRelatedDiagnosticsHelper
+ (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5 sourceMemory:(id)a6 sourceDictionary:(id)a7;
+ (id)_curationFullsetForMemory:(id)a3;
+ (id)_datesAndAssetCountDictionaryForAssetCollection:(id)a3;
+ (id)_featureVectorInfoGroupedByKeyForFeatureVector:(id)a3;
+ (id)_isSafeForWidgetDisplayForAssetUUID:(id)a3;
+ (id)_sanitizedGraphDataDictionaryForArchivingDictionary:(id)a3 memoryLocalIdentifier:(id)a4;
+ (id)_userFeedbackScoreInfoForMemory:(id)a3;
+ (id)getSummaryFromProviderItem:(id)a3;
+ (id)preprocessDictionary:(id)a3 forMemoryWithLocalIdentifier:(id)a4 algorithmsVersion:(int64_t)a5 inPhotoLibrary:(id)a6;
@end

@implementation PXMemoriesRelatedDiagnosticsHelper

+ (id)_isSafeForWidgetDisplayForAssetUUID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = @"NO";
  if ([a3 length])
  {
    v4 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v12[0] = *MEMORY[0x1E6978CF0];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v5 setFetchPropertySets:v6];

    [v5 setFetchLimit:1];
    [v5 setWantsIncrementalChangeDetails:0];
    [v5 setIncludeGuestAssets:1];
    v7 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v5];
    v8 = [v7 firstObject];

    v9 = [MEMORY[0x1E69C1520] assetIsSafeForWidgetDisplay:v8];
    v10 = @"YES";
    if (!v9)
    {
      v10 = @"NO";
    }

    v3 = v10;
  }

  return v3;
}

+ (id)_userFeedbackScoreInfoForMemory:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E6978630];
  v5 = [v3 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v39 = v3;
  v7 = [v4 fetchAssetsInAssetCollection:v3 options:v6];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v7;
  v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v44)
  {
    v41 = *v50;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v10 = [v9 uuid];
        [v43 addObject:v10];

        v11 = [v9 photoLibrary];
        v12 = [v11 librarySpecificFetchOptions];

        v13 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
        [v12 setIncludedDetectionTypes:v13];

        v14 = [MEMORY[0x1E6978980] fetchPersonsInAsset:v9 options:v12];
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v16 = [v14 fetchedObjects];
        v17 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v46;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v45 + 1) + 8 * j) uuid];
              [v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v18);
        }

        v22 = [v9 uuid];
        [v42 setObject:v15 forKeyedSubscript:v22];
      }

      v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v44);
  }

  v23 = MEMORY[0x1E6978630];
  v24 = [v39 photoLibrary];
  v25 = [v24 librarySpecificFetchOptions];
  v26 = [v23 fetchKeyAssetsInAssetCollection:v39 options:v25];

  if (v26)
  {
    v27 = [v26 fetchedObjects];
    v28 = [v27 objectAtIndexedSubscript:0];
    v29 = [v28 uuid];
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_alloc(MEMORY[0x1E6978B08]);
  v31 = [v39 photoLibrary];
  v32 = [v30 initWithPhotoLibrary:v31];

  v33 = [v39 blockableFeatures];
  [v32 scoreForAssetUUIDs:v43 keyAssetUUID:v29 personsUUIDsByAssetUUIDs:v42 memoryFeatures:v33];
  v35 = v34;

  v36 = [MEMORY[0x1E6978B08] descriptionForScore:v35];
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%.2f)", v36, *&v35];

  return v37;
}

+ (id)_curationFullsetForMemory:(id)a3
{
  v126[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = 0x1E695D000uLL;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E6978830];
  v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v8 = [v6 fetchOptionsWithPhotoLibrary:v7 orObject:v3];

  v9 = *MEMORY[0x1E6978CF0];
  v126[0] = *MEMORY[0x1E6978D18];
  v126[1] = v9;
  v126[2] = *MEMORY[0x1E6978CE0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
  [v8 setFetchPropertySets:v10];

  v91 = v8;
  [v8 setChunkSizeForFetch:300];
  v83 = v3;
  v11 = [MEMORY[0x1E6978650] fetchMomentsBackingMemory:v3 options:0];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v117 objects:v125 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v118;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v118 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v117 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v17 options:v91];
        v20 = [v19 fetchedObjects];
        [v12 addObjectsFromArray:v20];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v117 objects:v125 count:16];
    }

    while (v14);
  }

  v84 = v5;

  v21 = objc_alloc(MEMORY[0x1E69788E0]);
  v22 = [v91 photoLibrary];
  v23 = [MEMORY[0x1E6978630] fetchType];
  v24 = MEMORY[0x1E695DFD8];
  v25 = [v91 fetchPropertySets];
  v26 = [v24 setWithArray:v25];
  v27 = [v21 initWithObjects:v12 photoLibrary:v22 fetchType:v23 fetchPropertySets:v26 identifier:0 registerIfNeeded:0];

  v89 = [MEMORY[0x1E6978980] fetchPersonsGroupedByAssetLocalIdentifierForAssets:v27 options:0];
  v82 = v27;
  v88 = [MEMORY[0x1E6978A38] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v27];
  v90 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v85 = v12;
  v92 = [v85 countByEnumeratingWithState:&v113 objects:v124 count:16];
  if (v92)
  {
    v87 = *v114;
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v114 != v87)
        {
          objc_enumerationMutation(v85);
        }

        v29 = *(*(&v113 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        v31 = objc_alloc_init(*(v4 + 3984));
        v32 = [v29 localIdentifier];
        [v31 setObject:v32 forKeyedSubscript:@"identifier"];
        v33 = [v29 creationDate];
        [v31 setObject:v33 forKeyedSubscript:@"creationDate"];

        v34 = [v29 localCreationDate];
        [v31 setObject:v34 forKeyedSubscript:@"localCreationDate"];

        v35 = [v29 location];
        v36 = [v29 location];

        if (v36)
        {
          v37 = MEMORY[0x1E696AD98];
          [v35 coordinate];
          v38 = [v37 numberWithDouble:?];
          [v31 setObject:v38 forKeyedSubscript:@"latitude"];

          v39 = MEMORY[0x1E696AD98];
          [v35 coordinate];
          v41 = [v39 numberWithDouble:v40];
          [v31 setObject:v41 forKeyedSubscript:@"longitude"];
        }

        v42 = MEMORY[0x1E696AD98];
        [v29 curationScore];
        v43 = [v42 numberWithDouble:?];
        [v31 setObject:v43 forKeyedSubscript:@"score"];

        v44 = [v89 objectForKeyedSubscript:v32];
        v98 = j;
        v100 = v44;
        if ([v44 count])
        {
          v45 = [v44 fetchedObjects];
          [v45 valueForKey:@"localIdentifier"];
          v46 = v32;
          v47 = v30;
          v48 = v4;
          v50 = v49 = v35;
          [v31 setObject:v50 forKeyedSubscript:@"persons"];

          v35 = v49;
          v4 = v48;
          v30 = v47;
          v32 = v46;
          j = v98;

          v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v100, "count")}];
          [v31 setObject:v51 forKeyedSubscript:@"peopleCount"];

          v44 = v100;
        }

        v99 = [v88 objectForKeyedSubscript:v32];
        if ([v99 count])
        {
          v93 = v35;
          v94 = v29;
          v95 = v32;
          v96 = v31;
          v97 = v30;
          v52 = objc_alloc_init(*(v4 + 3984));
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v53 = v99;
          v54 = [v53 countByEnumeratingWithState:&v109 objects:v123 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v110;
            do
            {
              for (k = 0; k != v55; ++k)
              {
                if (*v110 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                v58 = *(*(&v109 + 1) + 8 * k);
                v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v58, "extendedSceneIdentifier")];
                v60 = MEMORY[0x1E696AD98];
                [v58 confidence];
                v61 = [v60 numberWithDouble:?];
                [v52 setObject:v61 forKeyedSubscript:v59];
              }

              v55 = [v53 countByEnumeratingWithState:&v109 objects:v123 count:16];
            }

            while (v55);
          }

          v31 = v96;
          [v96 setObject:v52 forKeyedSubscript:@"sceneClassifications"];

          v4 = 0x1E695D000;
          v30 = v97;
          j = v98;
          v29 = v94;
          v32 = v95;
          v35 = v93;
          v44 = v100;
        }

        if ([v29 isFavorite])
        {
          [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isFavorite"];
        }

        [v90 setObject:v31 forKeyedSubscript:v32];

        objc_autoreleasePoolPop(v30);
      }

      v92 = [v85 countByEnumeratingWithState:&v113 objects:v124 count:16];
    }

    while (v92);
  }

  [v5 setObject:v90 forKeyedSubscript:@"assetDataByIdentifier"];
  v62 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:v83];
  v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v62, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v64 = v62;
  v65 = [v64 countByEnumeratingWithState:&v105 objects:v122 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v106;
    do
    {
      for (m = 0; m != v66; ++m)
      {
        if (*v106 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v105 + 1) + 8 * m) localIdentifier];
        [v63 addObject:v69];
      }

      v66 = [v64 countByEnumeratingWithState:&v105 objects:v122 count:16];
    }

    while (v66);
  }

  [v5 setObject:v63 forKeyedSubscript:@"curationIdentifiers"];
  v70 = [MEMORY[0x1E6978630] fetchExtendedCuratedAssetsInAssetCollection:v83 options:0];
  v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v64, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v72 = v70;
  v73 = [v72 countByEnumeratingWithState:&v101 objects:v121 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v102;
    do
    {
      for (n = 0; n != v74; ++n)
      {
        if (*v102 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v101 + 1) + 8 * n) localIdentifier];
        [v71 addObject:v77];
      }

      v74 = [v72 countByEnumeratingWithState:&v101 objects:v121 count:16];
    }

    while (v74);
  }

  [v84 setObject:v71 forKeyedSubscript:@"extendedCurationIdentifiers"];
  v78 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v83 referenceAsset:0];
  v79 = [v78 firstObject];

  if (v79)
  {
    v80 = [v79 localIdentifier];
    [v84 setObject:v80 forKeyedSubscript:@"keyAssetIdentifier"];
  }

  return v84;
}

+ (id)_datesAndAssetCountDictionaryForAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v3 options:0];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__110741;
    v23 = __Block_byref_object_dispose__110742;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__110741;
    v17 = __Block_byref_object_dispose__110742;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__PXMemoriesRelatedDiagnosticsHelper__datesAndAssetCountDictionaryForAssetCollection___block_invoke;
    v12[3] = &unk_1E7739D48;
    v12[4] = &v19;
    v12[5] = &v13;
    [v5 enumerateObjectsUsingBlock:v12];
    v8 = v20[5];
    if (v8)
    {
      [v4 setObject:v8 forKey:@"startDate"];
    }

    v9 = v14[5];
    if (v9)
    {
      [v4 setObject:v9 forKey:@"endDate"];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v4 setObject:v10 forKey:@"estimatedAssetCount"];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v4;
}

void __86__PXMemoriesRelatedDiagnosticsHelper__datesAndAssetCountDictionaryForAssetCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 creationDate];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  obj = v3;
  if (*(v5 + 40))
  {
    if ([v3 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
    v4 = obj;
  }

  objc_storeStrong((v5 + 40), v4);
LABEL_5:
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 40))
  {
    if ([obj compare:?] != 1)
    {
      goto LABEL_9;
    }

    v6 = *(*(a1 + 40) + 8);
  }

  objc_storeStrong((v6 + 40), obj);
LABEL_9:
}

+ (id)_featureVectorInfoGroupedByKeyForFeatureVector:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 firstObject];
        v12 = [v10 lastObject];
        if ([v11 isEqualToString:@"referenceKeywords"])
        {
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          if (!v13)
          {
            v13 = [MEMORY[0x1E695DF70] array];
            [v4 setObject:v13 forKeyedSubscript:v11];
          }

          [v13 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)_sanitizedGraphDataDictionaryForArchivingDictionary:(id)a3 memoryLocalIdentifier:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v7 = [v5 objectForKey:@"backingMoments"];
  v8 = [v5 objectForKey:@"collectionsInfo"];
  v9 = [v5 objectForKey:@"info"];
  v10 = [v9 mutableCopy];

  v33 = v6;
  if (!v7 || !v8 || !v10)
  {
    if (!v6)
    {
      v32 = v8;
      v13 = 0;
      v14 = 0;
LABEL_17:
      v31 = v10;

      goto LABEL_18;
    }

    v12 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v42 = 0;
    v13 = [v12 memoryDebugInformationForMemoryWithLocalIdentifier:v6 error:&v42];
    v14 = v42;

    if (!v13)
    {
LABEL_12:
      v32 = v8;
      if (v14)
      {
        v15 = PLUIGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v45 = "+[PXMemoriesRelatedDiagnosticsHelper _sanitizedGraphDataDictionaryForArchivingDictionary:memoryLocalIdentifier:]";
          v46 = 2112;
          v47 = v14;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
        }
      }

      goto LABEL_17;
    }

    if (v7)
    {
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = [v13 objectForKeyedSubscript:@"backingMoments"];
      if (v8)
      {
LABEL_11:
        if (v10)
        {
          goto LABEL_12;
        }

LABEL_39:
        v29 = [v13 objectForKeyedSubscript:@"info"];
        v10 = [v29 mutableCopy];

        goto LABEL_12;
      }
    }

    v8 = [v13 objectForKeyedSubscript:@"collectionsInfo"];
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  v31 = v10;
  v32 = v8;
LABEL_18:
  v34 = v5;
  v30 = [v5 mutableCopy];
  v16 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [v21 objectForKey:@"keywords"];
        if (v22)
        {
          v23 = [MEMORY[0x1E695DF90] dictionary];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __112__PXMemoriesRelatedDiagnosticsHelper__sanitizedGraphDataDictionaryForArchivingDictionary_memoryLocalIdentifier___block_invoke;
          v36[3] = &unk_1E774BC88;
          v37 = v23;
          v24 = v23;
          [v22 enumerateKeysAndObjectsUsingBlock:v36];
          v25 = [v21 mutableCopy];
          [v25 setObject:v24 forKey:@"keywords"];
          [v16 addObject:v25];
        }

        else
        {
          [v16 addObject:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  v11 = v30;
  [v30 setObject:v16 forKey:@"backingMoments"];
  if (v32)
  {
    [v30 setObject:v32 forKey:@"collectionsInfo"];
  }

  v26 = [v31 objectForKeyedSubscript:@"moodKeywords"];
  v6 = v33;
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 allObjects];
      [v31 setObject:v27 forKeyedSubscript:@"moodKeywords"];
    }
  }

  [v30 setObject:v31 forKeyedSubscript:@"info"];

  v5 = v34;
LABEL_34:

  return v11;
}

void __112__PXMemoriesRelatedDiagnosticsHelper__sanitizedGraphDataDictionaryForArchivingDictionary_memoryLocalIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];

    v5 = v6;
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

+ (id)getSummaryFromProviderItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v84 = [MEMORY[0x1E696AAA8] currentHandler];
    [v84 handleFailureInMethod:a2 object:a1 file:@"PXMemoriesRelatedDiagnosticsHelper.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 localIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [v8 localizedTitle];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [v8 localizedTitle];
      [v6 setObject:v11 forKey:@"title"];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "assetCollectionType")}];
    [v6 setObject:v12 forKey:@"assetCollectionType"];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "assetCollectionSubtype")}];
    [v6 setObject:v13 forKey:@"assetCollectionSubtype"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "estimatedAssetCount")}];
    [v6 setObject:v14 forKey:@"estimatedAssetCount"];

    v15 = [v8 creationDate];

    if (v15)
    {
      v16 = [v8 creationDate];
      [v6 setObject:v16 forKey:@"creationDate"];
    }

    if (v7)
    {
      [v6 setObject:v7 forKey:@"localIdentifier"];
    }

    if ([v8 assetCollectionType] == 4)
    {
      v8 = v8;
      v17 = [v8 isRejected];
      v18 = [MEMORY[0x1E696AD98] numberWithBool:v17];
      [v6 setObject:v18 forKey:@"rejected"];

      v19 = [v8 isFavorite];
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v19];
      [v6 setObject:v20 forKey:@"favorite"];

      v21 = [v8 pendingState];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v21];
      [v6 setObject:v22 forKey:@"pendingState"];

      [v8 score];
      v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v6 setObject:v23 forKey:@"score"];

      v24 = [v8 uuid];
      if (v24)
      {
        [v6 setObject:v24 forKey:@"uuid"];
      }

      v91 = v24;
      v25 = [v8 photosGraphVersion];
      v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
      [v6 setObject:v26 forKey:@"photoGraphVersion"];

      v27 = [v8 photosGraphProperties];
      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = [a1 _sanitizedGraphDataDictionaryForArchivingDictionary:v27 memoryLocalIdentifier:v7];
        [v6 setObject:v29 forKey:@"photosGraphProperties"];

        objc_autoreleasePoolPop(v28);
      }

      v30 = [v8 movieData];
      if (v30)
      {
        [v6 setObject:v30 forKey:@"movieData"];
      }

      v31 = [v8 lastViewedDate];
      if (v31)
      {
        [v6 setObject:v31 forKey:@"lastViewedDate"];
      }

      v85 = v31;
      v87 = v30;
      v89 = v27;
      v93 = v7;
      v32 = [v8 lastViewedDate];
      if (v32)
      {
        [v6 setObject:v32 forKey:@"lastMoviePlayedDate"];
      }

      v33 = [v8 category];
      v34 = [MEMORY[0x1E69788F0] stringForCategory:v33];
      [v6 setObject:v34 forKey:@"category"];
      v35 = [v8 subcategory];
      v36 = [MEMORY[0x1E69788F0] stringForSubcategory:v35];
      [v6 setObject:v36 forKey:@"subCategory"];
      v37 = [v8 subtitle];
      if ([v37 length])
      {
        v38 = [v8 subtitle];
      }

      else
      {
        v38 = @"unknown";
      }

      [v6 setObject:v38 forKey:@"subtitle"];
      [v6 setObject:@"Memory" forKey:@"referenceOrigin"];
      v77 = [v8 titleFontName];
      v78 = v77;
      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = @"unknown";
      }

      [v6 setObject:v79 forKey:@"fontName"];

      v80 = objc_autoreleasePoolPush();
      v81 = [a1 _curationFullsetForMemory:v8];
      if (v81)
      {
        [v6 setObject:v81 forKeyedSubscript:@"curationFullset"];
      }

      objc_autoreleasePoolPop(v80);
      v82 = [a1 _datesAndAssetCountDictionaryForAssetCollection:v8];
      [v6 addEntriesFromDictionary:v82];

      v7 = v93;
    }

    else if ([v8 assetCollectionType] == 3)
    {
      v8 = v8;
      v72 = [v8 startDate];
      if (v72)
      {
        [v6 setObject:v72 forKey:@"startDate"];
      }

      v73 = [v8 endDate];
      if (v73)
      {
        [v6 setObject:v73 forKey:@"endDate"];
      }

      [v6 setObject:@"Moment" forKey:@"referenceOrigin"];
    }

    else
    {
      [v6 setObject:@"Collection" forKey:@"referenceOrigin"];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = v7;
      v8 = v5;
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "mediaType")}];
      [v6 setObject:v39 forKey:@"assetType"];

      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "mediaSubtypes")}];
      [v6 setObject:v40 forKey:@"mediaSubtypes"];

      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "pixelWidth")}];
      [v6 setObject:v41 forKey:@"pixelWidth"];

      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "pixelHeight")}];
      [v6 setObject:v42 forKey:@"pixelHeight"];

      v43 = MEMORY[0x1E696AD98];
      [v8 duration];
      v44 = [v43 numberWithDouble:?];
      [v6 setObject:v44 forKey:@"duration"];

      v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isHidden")}];
      [v6 setObject:v45 forKey:@"isHidden"];

      v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isFavorite")}];
      [v6 setObject:v46 forKey:@"isFavorite"];

      v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isTrashed")}];
      [v6 setObject:v47 forKey:@"isTrashed"];

      v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "hasAdjustments")}];
      [v6 setObject:v48 forKey:@"hasAdjustments"];

      v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isVideo")}];
      [v6 setObject:v49 forKey:@"isVideo"];

      v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isPhoto")}];
      [v6 setObject:v50 forKey:@"isPhoto"];

      v51 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isAudio")}];
      [v6 setObject:v51 forKey:@"isAudio"];

      v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isIncludedInMoments")}];
      [v6 setObject:v52 forKey:@"isIncludedInMoments"];

      v53 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isIncludedInCloudFeeds")}];
      [v6 setObject:v53 forKey:@"isIncludedInCloudFeeds"];

      v54 = [v8 assetUserActivityProperties];
      v55 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v54, "playCount")}];
      [v6 setObject:v55 forKey:@"playCount"];

      v56 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v54, "viewCount")}];
      [v6 setObject:v56 forKey:@"viewCount"];

      v92 = v54;
      v57 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v54, "shareCount")}];
      [v6 setObject:v57 forKey:@"shareCount"];

      v58 = [v8 creationDate];
      if (v58)
      {
        [v6 setObject:v58 forKey:@"creationDate"];
      }

      v59 = [v8 modificationDate];
      if (v59)
      {
        [v6 setObject:v59 forKey:@"modificationDate"];
      }

      v60 = [v8 location];
      v61 = v60;
      if (v60)
      {
        v62 = [v60 description];
        [v6 setObject:v62 forKey:@"location"];
      }

      v63 = [v8 burstIdentifier];
      if (v63)
      {
        [v6 setObject:v63 forKey:@"burstIdentifier"];
      }

      v64 = [v8 uniformTypeIdentifier];
      if (v64)
      {
        [v6 setObject:v64 forKey:@"uniformTypeIdentifier"];
      }

      v88 = v59;
      v65 = [v8 filename];
      if (v65)
      {
        [v6 setObject:v65 forKey:@"filename"];
      }

      v86 = v61;
      v66 = [v8 cloudIdentifier];
      if (v66)
      {
        [v6 setObject:v66 forKey:@"cloudIdentifier"];
      }

      v90 = v58;
      v67 = [v8 adjustmentVersion];
      if (v67)
      {
        [v6 setObject:v67 forKey:@"adjustmentVersion"];
      }

      v68 = [v8 faceAdjustmentVersion];
      if (v68)
      {
        [v6 setObject:v68 forKey:@"faceAdjustmentVersion"];
      }

      v69 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v8, "faceAnalysisVersion")}];
      [v6 setObject:v69 forKey:@"faceAnalysisVersion"];

      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      [v6 setObject:v71 forKey:@"itemClass"];

      [v6 setObject:@"One Up" forKey:@"referenceOrigin"];
      v7 = v94;
      if (v94)
      {
        [v6 setObject:v94 forKey:@"localIdentifier"];
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
      v74 = [v5 uuid];
      [v6 setObject:v8 forKey:v74];
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      [v6 setObject:v76 forKey:@"itemClass"];
      [v6 setObject:v76 forKey:@"referenceOrigin"];
      if (v7)
      {
        [v6 setObject:v7 forKey:@"localIdentifier"];
      }
    }
  }

  return v6;
}

+ (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5 sourceMemory:(id)a6 sourceDictionary:(id)a7
{
  v226 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = v13;
  if (a3)
  {
    v15 = a4 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v15)
  {
    switch(a5)
    {
      case 2:
        v143 = [v13 objectForKeyedSubscript:@"collectionsInfo"];
        [v14 objectForKeyedSubscript:@"backingMoments"];
        v145 = v144 = a3;
        v146 = objc_opt_new();
        v147 = objc_opt_new();
        v212[0] = MEMORY[0x1E69E9820];
        v212[1] = 3221225472;
        v212[2] = __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_2;
        v212[3] = &unk_1E7739CF8;
        v148 = v146;
        v213 = v148;
        v149 = v147;
        v214 = v149;
        [v143 enumerateObjectsUsingBlock:v212];
        v209[0] = MEMORY[0x1E69E9820];
        v209[1] = 3221225472;
        v209[2] = __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_3;
        v209[3] = &unk_1E7739CF8;
        v210 = v148;
        v211 = v149;
        v150 = v149;
        v151 = v148;
        [v145 enumerateObjectsUsingBlock:v209];
        v152 = v151;
        *v144 = v151;
        v153 = v150;
        *a4 = v150;

        break;
      case 1:
        v141 = [v13 objectForKeyedSubscript:@"featureVector"];
        *a3 = [v141 allKeys];
        v142 = v141;
        *a4 = v141;

        break;
      case 0:
        v198 = a3;
        v199 = a4;
        v17 = objc_opt_new();
        v202 = v14;
        v18 = [v14 objectForKeyedSubscript:@"info"];
        v207 = [MEMORY[0x1E695DFD8] setWithObjects:{@"category", @"subcategory", @"originalsubcategory", @"sourceType", @"creationDate", @"assetCount", @"title", @"subtitle", @"fontname", @"representativeassetcount", @"repCount", @"relevantAssetCount", @"curatedCount", @"extendedCuratedCount", @"meaningLabels", @"numberOfMoments", @"numberOfCollections", @"notificationstate", @"suggestedMood", @"recommendedMoods", @"forbiddenMoods", @"moodWeights", @"moodKeywords", 0}];
        v19 = MEMORY[0x1E696AEC0];
        v20 = [v12 localIdentifier];
        v21 = [v19 stringWithFormat:@"[localIdentifier] %@", v20];
        [v17 addObject:v21];

        v22 = MEMORY[0x1E696AEC0];
        [v12 pendingState];
        v23 = PHMemoryPendingStateDescription();
        v24 = [v22 stringWithFormat:@"[pendingState] %@ (%d)", v23, objc_msgSend(v12, "pendingState")];
        [v17 addObject:v24];

        v25 = MEMORY[0x1E696AEC0];
        [v12 creationType];
        v26 = PHMemoryCreationTypeDescription();
        v27 = [v25 stringWithFormat:@"[creationType] %@ (%d)", v26, objc_msgSend(v12, "creationType")];
        [v17 addObject:v27];

        v28 = MEMORY[0x1E696AEC0];
        v29 = [MEMORY[0x1E69788F0] stringForCategory:{objc_msgSend(v12, "category")}];
        v30 = [v28 stringWithFormat:@"[category] %@", v29];
        [v17 addObject:v30];

        v31 = MEMORY[0x1E696AEC0];
        v32 = [v18 objectForKeyedSubscript:@"sourceType"];
        v33 = v32;
        v34 = @"## Missing Source Type ##";
        if (v32)
        {
          v34 = v32;
        }

        v35 = [v31 stringWithFormat:@"[sourceType] %@", v34];
        [v17 addObject:v35];

        v203 = v18;
        v36 = [v18 objectForKeyedSubscript:@"creationDate"];
        if (!v36 || ([MEMORY[0x1E696AB78] localizedStringFromDate:v36 dateStyle:2 timeStyle:2], (v37 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v37 = @"## Missing Creation Date ##";
        }

        v196 = v37;
        v197 = v36;
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[creationDate] %@", v37];
        [v17 addObject:v38];

        v39 = MEMORY[0x1E696AEC0];
        [v12 score];
        v41 = [v39 stringWithFormat:@"[score] %.3f", v40];
        [v17 addObject:v41];

        v42 = MEMORY[0x1E696AEC0];
        v43 = MEMORY[0x1E6978918];
        v44 = [MEMORY[0x1E695DF00] date];
        [v43 relevanceScoreForMemory:v12 atDate:v44];
        v46 = [v42 stringWithFormat:@"[current relevance score] %.3f", v45];
        [v17 addObject:v46];

        v47 = MEMORY[0x1E696AEC0];
        v48 = MEMORY[0x1E6978918];
        v49 = [v12 creationDate];
        [v48 relevanceScoreForMemory:v12 atDate:v49];
        v51 = [v47 stringWithFormat:@"[relevance score on creation date] %.3f", v50];
        [v17 addObject:v51];

        v52 = MEMORY[0x1E696AEC0];
        v53 = [v12 localizedTitle];
        v54 = v53;
        v55 = @"## Missing Title ##";
        if (v53)
        {
          v55 = v53;
        }

        v56 = [v52 stringWithFormat:@"[title] %@", v55];
        [v17 addObject:v56];

        v57 = MEMORY[0x1E696AEC0];
        v58 = [v12 localizedSubtitle];
        v59 = v58;
        v60 = &stru_1F1741150;
        if (v58)
        {
          v60 = v58;
        }

        v61 = [v57 stringWithFormat:@"[subtitle] %@", v60];
        [v17 addObject:v61];

        v62 = MEMORY[0x1E696AEC0];
        v63 = [v12 titleFontName];
        v64 = v63;
        v65 = @"## Missing Title Font Name";
        if (v63)
        {
          v65 = v63;
        }

        v66 = [v62 stringWithFormat:@"[fontName] %@", v65];
        [v17 addObject:v66];

        v67 = MEMORY[0x1E696AEC0];
        v68 = [v18 objectForKeyedSubscript:@"assetCount"];
        v69 = v68;
        v70 = @"## Missing Asset Count ##";
        if (v68)
        {
          v70 = v68;
        }

        v71 = [v67 stringWithFormat:@"[assetCount] %@", v70];
        [v17 addObject:v71];

        v72 = MEMORY[0x1E696AEC0];
        v73 = [v18 objectForKeyedSubscript:@"repCount"];
        v74 = v73;
        if (!v73)
        {
          v75 = [v18 objectForKeyedSubscript:@"representativeAssetCount"];
          v69 = v75;
          v74 = @"## Missing Representative Asset Count ##";
          if (v75)
          {
            v74 = v75;
          }
        }

        v76 = [v72 stringWithFormat:@"[representativeAssetCount] %@", v74];
        [v17 addObject:v76];

        if (!v73)
        {
        }

        v77 = MEMORY[0x1E696AEC0];
        v78 = [v18 objectForKeyedSubscript:@"relevantAssetCount"];
        v79 = v78;
        v80 = @"## Missing Relevant Asset Count ##";
        if (v78)
        {
          v80 = v78;
        }

        v81 = [v77 stringWithFormat:@"[relevantAssetCount] %@", v80];
        [v17 addObject:v81];

        v82 = MEMORY[0x1E696AEC0];
        v83 = [v18 objectForKeyedSubscript:@"curatedCount"];
        v84 = v83;
        v85 = @"## Missing Curated Asset Count ##";
        if (v83)
        {
          v85 = v83;
        }

        v86 = [v82 stringWithFormat:@"[curatedAssetCount] %@", v85];
        [v17 addObject:v86];

        v87 = MEMORY[0x1E696AEC0];
        v88 = [v18 objectForKeyedSubscript:@"extendedCuratedCount"];
        v89 = v88;
        v90 = @"## Missing Extended Curated Asset Count ##";
        if (v88)
        {
          v90 = v88;
        }

        v91 = [v87 stringWithFormat:@"[extendedCuratedAssetCount] %@", v90];
        [v17 addObject:v91];

        v92 = MEMORY[0x1E696AEC0];
        v93 = [v18 objectForKeyedSubscript:@"keyAssetUUID"];
        v94 = v93;
        v95 = @"## Missing Key Asset ##";
        if (v93)
        {
          v95 = v93;
        }

        v96 = [v92 stringWithFormat:@"[keyAssetUUID] %@", v95];
        [v17 addObject:v96];

        v97 = MEMORY[0x1E696AEC0];
        v98 = [v18 objectForKeyedSubscript:@"keyAssetUUID"];
        v99 = [a1 _isSafeForWidgetDisplayForAssetUUID:v98];
        v100 = [v97 stringWithFormat:@"[keyAssetIsSafeForWidgetDisplay] %@", v99];
        [v17 addObject:v100];

        v101 = MEMORY[0x1E696AEC0];
        v102 = [v18 objectForKeyedSubscript:@"numberOfMoments"];
        v103 = v102;
        v104 = @"## Missing Number of Moments ##";
        if (v102)
        {
          v104 = v102;
        }

        v105 = [v101 stringWithFormat:@"[numberOfMoments] %@", v104];
        [v17 addObject:v105];

        v106 = MEMORY[0x1E696AEC0];
        v107 = [v18 objectForKeyedSubscript:@"numberOfCollections"];
        v108 = v107;
        v109 = @"## Missing Number of Collections ##";
        if (v107)
        {
          v109 = v107;
        }

        v110 = [v106 stringWithFormat:@"[numberOfCollections] %@", v109];
        [v17 addObject:v110];

        v111 = MEMORY[0x1E696AEC0];
        v112 = [v18 objectForKeyedSubscript:@"suggestedMood"];
        v113 = [v111 stringWithFormat:@"[suggestedMood] %@", v112];
        [v17 addObject:v113];

        v114 = MEMORY[0x1E696AEC0];
        v115 = [v18 objectForKeyedSubscript:@"recommendedMoods"];
        v116 = [v114 stringWithFormat:@"[recommendedMoods] %@", v115];
        [v17 addObject:v116];

        v117 = MEMORY[0x1E696AEC0];
        v118 = [v18 objectForKeyedSubscript:@"forbiddenMoods"];
        v119 = [v117 stringWithFormat:@"[forbiddenMoods] %@", v118];
        [v17 addObject:v119];

        v120 = MEMORY[0x1E696AEC0];
        v121 = [v18 objectForKeyedSubscript:@"moodWeights"];
        v122 = [v120 stringWithFormat:@"[moodWeights] %@", v121];
        [v17 addObject:v122];

        v123 = MEMORY[0x1E696AEC0];
        v124 = [v18 objectForKeyedSubscript:@"moodKeywords"];
        v125 = [v124 componentsJoinedByString:{@", "}];
        v126 = [v123 stringWithFormat:@"[moodKeywords] %@", v125];
        [v17 addObject:v126];

        v127 = MEMORY[0x1E696AEC0];
        v128 = [a1 _userFeedbackScoreInfoForMemory:v12];
        v129 = [v127 stringWithFormat:@"[userFeedbackScore] %@", v128];
        [v17 addObject:v129];

        v130 = MEMORY[0x1E696AEC0];
        v131 = [v14 objectForKeyedSubscript:@"triggerTypes"];
        v132 = [v130 stringWithFormat:@"[triggerTypes] %@", v131];
        [v17 addObject:v132];

        v133 = MEMORY[0x1E696AEC0];
        v134 = [v14 objectForKeyedSubscript:@"encodedFeatures"];
        v135 = [v133 stringWithFormat:@"[memoryFeatures] %@", v134];
        [v17 addObject:v135];

        v136 = MEMORY[0x1E696AEC0];
        v137 = [v12 graphMemoryIdentifier];
        v138 = [v136 stringWithFormat:@"[graphMemoryIdentifier] %@", v137];
        [v17 addObject:v138];

        v139 = [v12 notificationState];
        if (v139 == 1)
        {
          v140 = @"Requested";
        }

        else
        {
          if (v139 != 2)
          {
            goto LABEL_48;
          }

          v140 = @"Seen";
        }

        v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[notificationState] Notification State %@ (%lu)", v140, objc_msgSend(v12, "notificationState")];
        [v17 addObject:v154];

LABEL_48:
        v200 = v16;
        v155 = [v18 objectForKeyedSubscript:@"meaningLabels"];
        if ([v155 count])
        {
          v156 = [v203 objectForKeyedSubscript:@"meaning"];

          if (!v156)
          {
            v157 = MEMORY[0x1E696AEC0];
            v158 = [v155 componentsJoinedByString:{@", "}];
            v159 = [v157 stringWithFormat:@"[meaning] %@", v158];
            [v17 addObject:v159];
          }
        }

        v195 = v155;
        [v12 photosGraphVersion];
        v160 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[graphVersion] %u", PLGraphAlgorithmsVersionFromPhotosGraphVersion()];
        [v17 addObject:v160];

        v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[curationAlgorithmsVersion] %u", PLCurationAlgorithmsVersionFromPhotosGraphVersion()];
        [v17 addObject:v161];

        v162 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[relatedAlgorithmsVersion] %u", PLRelatedAlgorithmsVersionFromPhotosGraphVersion()];
        [v17 addObject:v162];

        v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[memoriesAlgorithmsVersion] %u", PLMemoriesAlgorithmsVersionFromPhotosGraphVersion()];
        [v17 addObject:v163];

        v219[0] = MEMORY[0x1E69E9820];
        v219[1] = 3221225472;
        v219[2] = __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke;
        v219[3] = &unk_1E7739CD0;
        v194 = v207;
        v220 = v194;
        v208 = v17;
        v221 = v208;
        [v203 enumerateKeysAndObjectsUsingBlock:v219];
        v164 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v164 setDateStyle:2];
        [v164 setTimeStyle:0];
        v165 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
        v204 = v164;
        [v164 setTimeZone:v165];

        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v201 = v12;
        obj = [v12 blockableFeatures];
        v166 = [obj countByEnumeratingWithState:&v215 objects:v225 count:16];
        if (v166)
        {
          v167 = v166;
          v206 = *v216;
          do
          {
            v168 = 0;
            do
            {
              if (*v216 != v206)
              {
                objc_enumerationMutation(obj);
              }

              v169 = *(*(&v215 + 1) + 8 * v168);
              if ([v169 type] == 1)
              {
                v170 = [v169 personLocalIdentifier];
                v171 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
                v172 = [v171 librarySpecificFetchOptions];

                v173 = MEMORY[0x1E6978980];
                v224 = v170;
                v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];
                v175 = [v173 fetchPersonsWithLocalIdentifiers:v174 options:v172];

                v176 = [v175 firstObject];
                v177 = [v176 name];
                if ([v177 length])
                {
                  v178 = v177;
                }

                else
                {
                  v178 = v170;
                }

                v179 = v178;

LABEL_61:
LABEL_65:

                goto LABEL_66;
              }

              if ([v169 type] == 16)
              {
                v170 = [v169 date];
                v180 = [v204 stringFromDate:v170];
                goto LABEL_64;
              }

              if ([v169 type] == 512)
              {
                v170 = [v169 dateInterval];
                v184 = MEMORY[0x1E696AEC0];
                v172 = [v170 startDate];
                v175 = [v204 stringFromDate:v172];
                v185 = [v170 endDate];
                v186 = [v204 stringFromDate:v185];
                v179 = [v184 stringWithFormat:@"%@ - %@", v175, v186];

                goto LABEL_61;
              }

              if ([v169 type] == 32)
              {
                v187 = [v169 holidayName];
LABEL_72:
                v179 = v187;
                goto LABEL_66;
              }

              if ([v169 type] == 4096)
              {
                v170 = [v169 location];
                v188 = MEMORY[0x1E696AEC0];
                [v170 coordinate];
                v190 = v189;
                [v170 coordinate];
                v180 = [v188 stringWithFormat:@"(%f, %f)", v190, v191];
LABEL_64:
                v179 = v180;
                goto LABEL_65;
              }

              if ([v169 type] == 0x20000)
              {
                v187 = [v169 areaName];
                goto LABEL_72;
              }

              v179 = 0;
LABEL_66:
              v181 = MEMORY[0x1E696AEC0];
              v182 = [MEMORY[0x1E6978908] stringForType:{objc_msgSend(v169, "type")}];
              v183 = [v181 stringWithFormat:@"[blockableFeature] %@: %@", v182, v179];
              [v208 addObject:v183];

              ++v168;
            }

            while (v167 != v168);
            v192 = [obj countByEnumeratingWithState:&v215 objects:v225 count:16];
            v167 = v192;
          }

          while (v192);
        }

        *v198 = &unk_1F1910A38;
        v222 = &stru_1F1741150;
        v223 = v208;
        *v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];

        v12 = v201;
        v14 = v202;
        v16 = v200;
        break;
    }
  }

  return v16;
}

void __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] %@", v8, v5];
    [v6 addObject:v7];
  }
}

void __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = (a3 + 1);
  v6 = a2;
  v30 = [v4 stringWithFormat:@"Collection %d", v5];
  v32 = [v30 stringByAppendingString:@" - Scores"];
  [*(a1 + 32) addObject:v32];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 objectForKeyedSubscript:@"averageContentScore"];
  [v8 floatValue];
  v10 = [v7 stringWithFormat:@"Content Average: %.3f", v9];
  v34[0] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v6 objectForKeyedSubscript:@"meaningScore"];
  [v12 floatValue];
  v14 = [v11 stringWithFormat:@"Meaning: %.3f", v13];
  v34[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v31 = [v15 mutableCopy];

  [*(a1 + 40) setObject:v31 forKeyedSubscript:v32];
  v29 = [v30 stringByAppendingString:@" - Titling"];
  [*(a1 + 32) addObject:v29];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v6 objectForKeyedSubscript:@"title"];
  v18 = [v16 stringWithFormat:@"Title: %@", v17];
  v33[0] = v18;
  v19 = MEMORY[0x1E696AEC0];
  v20 = [v6 objectForKeyedSubscript:@"subtitle"];
  v21 = [v19 stringWithFormat:@"Subtitle: %@", v20];
  v33[1] = v21;
  v22 = MEMORY[0x1E696AEC0];
  v23 = [v6 objectForKeyedSubscript:@"titleCategory"];
  v24 = [v22 stringWithFormat:@"Category: %ld", objc_msgSend(v23, "integerValue")];
  v33[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v26 = [v25 mutableCopy];

  [*(a1 + 40) setObject:v26 forKeyedSubscript:v29];
  v27 = [v30 stringByAppendingString:@" - Meanings"];
  [*(a1 + 32) addObject:v27];
  v28 = [v6 objectForKeyedSubscript:@"meaningLabels"];

  [*(a1 + 40) setObject:v28 forKeyedSubscript:v27];
}

void __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moment %d", (a3 + 1)];
  v33 = [v31 stringByAppendingString:@" - General"];
  [*(a1 + 32) addObject:?];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v5 objectForKeyedSubscript:@"numberOfAssets"];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset Count: %lu", objc_msgSend(v7, "unsignedIntegerValue")];
    [v6 addObject:v9];
  }

  v32 = v8;
  v10 = [v5 objectForKeyedSubscript:@"matchingScore"];
  v11 = v10;
  if (v10)
  {
    v12 = MEMORY[0x1E696AEC0];
    [v10 floatValue];
    v14 = [v12 stringWithFormat:@"Matching: %.3f", v13];
    [v6 addObject:v14];
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = [v5 objectForKeyedSubscript:@"curationScore"];
  [v16 floatValue];
  v18 = [v15 stringWithFormat:@"Curation: %.3f", v17];
  v38[0] = v18;
  v19 = MEMORY[0x1E696AEC0];
  v20 = [v5 objectForKeyedSubscript:@"graphScore"];
  [v20 floatValue];
  v22 = [v19 stringWithFormat:@"Graph: %.3f", v21];
  v38[1] = v22;
  v30 = v11;
  v23 = MEMORY[0x1E696AEC0];
  v24 = [v5 objectForKeyedSubscript:@"neighborScore"];
  [v24 floatValue];
  v26 = [v23 stringWithFormat:@"Neighbor: %.3f", v25];
  v38[2] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  [v6 addObjectsFromArray:v27];

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v33];
  v28 = [v5 objectForKeyedSubscript:@"keywords"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_4;
  v34[3] = &unk_1E7739D20;
  v35 = v31;
  v36 = *(a1 + 32);
  v37 = *(a1 + 40);
  v29 = v31;
  [v28 enumerateKeysAndObjectsUsingBlock:v34];
}

void __115__PXMemoriesRelatedDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceMemory_sourceDictionary___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", *(a1 + 32), v7];
    [*(a1 + 40) addObject:v6];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (id)preprocessDictionary:(id)a3 forMemoryWithLocalIdentifier:(id)a4 algorithmsVersion:(int64_t)a5 inPhotoLibrary:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v49 = a6;
  v10 = [a3 mutableCopy];
  v11 = [v10 objectForKeyedSubscript:@"backingMoments"];
  v12 = [v10 objectForKeyedSubscript:@"collectionsInfo"];
  if (![v11 count] || !objc_msgSend(v12, "count"))
  {
    v56 = 0;
    v13 = [v49 memoryDebugInformationForMemoryWithLocalIdentifier:v9 error:&v56];
    v14 = v56;
    if (v13)
    {
      if (![v11 count])
      {
        v15 = [v13 objectForKeyedSubscript:@"backingMoments"];
        [v10 setObject:v15 forKeyedSubscript:@"backingMoments"];
      }

      if (![v12 count])
      {
        v16 = [v13 objectForKeyedSubscript:@"collectionsInfo"];
        [v10 setObject:v16 forKeyedSubscript:@"collectionsInfo"];
      }
    }

    if (v14)
    {
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v60 = "+[PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:forMemoryWithLocalIdentifier:algorithmsVersion:inPhotoLibrary:]";
        v61 = 2112;
        v62 = v14;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
      }
    }
  }

  v18 = [v10 objectForKeyedSubscript:@"featureVector"];
  v19 = [v10 objectForKeyedSubscript:@"featureVector_v2"];
  if (v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v19 = v18) != 0)
  {
    v20 = v19;
    v21 = [a1 _featureVectorInfoGroupedByKeyForFeatureVector:v19];

    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v21 = [v18 mutableCopy];
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  v51 = PLMemoriesAlgorithmsVersionFromPhotosGraphVersion();
  v22 = [v21 objectForKeyedSubscript:@"People"];
  if (v22 || ([v21 objectForKeyedSubscript:@"people"], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    v43 = v21;
    v44 = v18;
    v45 = v12;
    v46 = v11;
    v47 = v10;
    v48 = v9;
    v24 = [v49 librarySpecificFetchOptions];
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v23;
    v26 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v53;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v52 + 1) + 8 * i);
          v31 = v30;
          if (v51 < 0x201)
          {
            v35 = v30;
          }

          else
          {
            v32 = [MEMORY[0x1E6978908] personLocalIdentifierForPersonUniversalIdentifier:v30 photoLibrary:v49];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = v31;
            }

            v35 = v34;
          }

          v36 = MEMORY[0x1E6978980];
          v57 = v35;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
          v38 = [v36 fetchPersonsWithLocalIdentifiers:v37 options:v24];

          v39 = [v38 firstObject];
          v40 = [v39 name];
          if ([v40 length])
          {
            v41 = v40;
          }

          else
          {
            v41 = v31;
          }

          [v25 addObject:v41];
        }

        v27 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v27);
    }

    v21 = v43;
    [v43 setObject:v25 forKeyedSubscript:@"People"];
    [v43 setObject:0 forKeyedSubscript:@"people"];

    v10 = v47;
    v9 = v48;
    v12 = v45;
    v11 = v46;
    v18 = v44;
  }

  [v10 setObject:v21 forKeyedSubscript:@"featureVector"];
LABEL_39:

  return v10;
}

@end