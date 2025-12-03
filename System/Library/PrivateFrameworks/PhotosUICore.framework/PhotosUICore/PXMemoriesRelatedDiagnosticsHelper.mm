@interface PXMemoriesRelatedDiagnosticsHelper
+ (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index sourceMemory:(id)memory sourceDictionary:(id)dictionary;
+ (id)_curationFullsetForMemory:(id)memory;
+ (id)_datesAndAssetCountDictionaryForAssetCollection:(id)collection;
+ (id)_featureVectorInfoGroupedByKeyForFeatureVector:(id)vector;
+ (id)_isSafeForWidgetDisplayForAssetUUID:(id)d;
+ (id)_sanitizedGraphDataDictionaryForArchivingDictionary:(id)dictionary memoryLocalIdentifier:(id)identifier;
+ (id)_userFeedbackScoreInfoForMemory:(id)memory;
+ (id)getSummaryFromProviderItem:(id)item;
+ (id)preprocessDictionary:(id)dictionary forMemoryWithLocalIdentifier:(id)identifier algorithmsVersion:(int64_t)version inPhotoLibrary:(id)library;
@end

@implementation PXMemoriesRelatedDiagnosticsHelper

+ (id)_isSafeForWidgetDisplayForAssetUUID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = @"NO";
  if ([d length])
  {
    px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    librarySpecificFetchOptions = [px_systemPhotoLibrary librarySpecificFetchOptions];

    v12[0] = *MEMORY[0x1E6978CF0];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v6];

    [librarySpecificFetchOptions setFetchLimit:1];
    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v7 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
    firstObject = [v7 firstObject];

    v9 = [MEMORY[0x1E69C1520] assetIsSafeForWidgetDisplay:firstObject];
    v10 = @"YES";
    if (!v9)
    {
      v10 = @"NO";
    }

    v3 = v10;
  }

  return v3;
}

+ (id)_userFeedbackScoreInfoForMemory:(id)memory
{
  v55 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E6978630];
  photoLibrary = [memoryCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v39 = memoryCopy;
  v7 = [v4 fetchAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions];

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
        uuid = [v9 uuid];
        [v43 addObject:uuid];

        photoLibrary2 = [v9 photoLibrary];
        librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

        px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
        [librarySpecificFetchOptions2 setIncludedDetectionTypes:px_defaultDetectionTypes];

        v14 = [MEMORY[0x1E6978980] fetchPersonsInAsset:v9 options:librarySpecificFetchOptions2];
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        fetchedObjects = [v14 fetchedObjects];
        v17 = [fetchedObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
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
                objc_enumerationMutation(fetchedObjects);
              }

              uuid2 = [*(*(&v45 + 1) + 8 * j) uuid];
              [v15 addObject:uuid2];
            }

            v18 = [fetchedObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v18);
        }

        uuid3 = [v9 uuid];
        [v42 setObject:v15 forKeyedSubscript:uuid3];
      }

      v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v44);
  }

  v23 = MEMORY[0x1E6978630];
  photoLibrary3 = [v39 photoLibrary];
  librarySpecificFetchOptions3 = [photoLibrary3 librarySpecificFetchOptions];
  v26 = [v23 fetchKeyAssetsInAssetCollection:v39 options:librarySpecificFetchOptions3];

  if (v26)
  {
    fetchedObjects2 = [v26 fetchedObjects];
    v28 = [fetchedObjects2 objectAtIndexedSubscript:0];
    uuid4 = [v28 uuid];
  }

  else
  {
    uuid4 = 0;
  }

  v30 = objc_alloc(MEMORY[0x1E6978B08]);
  photoLibrary4 = [v39 photoLibrary];
  v32 = [v30 initWithPhotoLibrary:photoLibrary4];

  blockableFeatures = [v39 blockableFeatures];
  [v32 scoreForAssetUUIDs:v43 keyAssetUUID:uuid4 personsUUIDsByAssetUUIDs:v42 memoryFeatures:blockableFeatures];
  v35 = v34;

  v36 = [MEMORY[0x1E6978B08] descriptionForScore:v35];
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%.2f)", v36, *&v35];

  return v37;
}

+ (id)_curationFullsetForMemory:(id)memory
{
  v126[3] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v4 = 0x1E695D000uLL;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E6978830];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v8 = [v6 fetchOptionsWithPhotoLibrary:px_deprecated_appPhotoLibrary orObject:memoryCopy];

  v9 = *MEMORY[0x1E6978CF0];
  v126[0] = *MEMORY[0x1E6978D18];
  v126[1] = v9;
  v126[2] = *MEMORY[0x1E6978CE0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
  [v8 setFetchPropertySets:v10];

  v91 = v8;
  [v8 setChunkSizeForFetch:300];
  v83 = memoryCopy;
  v11 = [MEMORY[0x1E6978650] fetchMomentsBackingMemory:memoryCopy options:0];
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
        fetchedObjects = [v19 fetchedObjects];
        [v12 addObjectsFromArray:fetchedObjects];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v117 objects:v125 count:16];
    }

    while (v14);
  }

  v84 = v5;

  v21 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = [v91 photoLibrary];
  fetchType = [MEMORY[0x1E6978630] fetchType];
  v24 = MEMORY[0x1E695DFD8];
  fetchPropertySets = [v91 fetchPropertySets];
  v26 = [v24 setWithArray:fetchPropertySets];
  v27 = [v21 initWithObjects:v12 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:v26 identifier:0 registerIfNeeded:0];

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
        localIdentifier = [v29 localIdentifier];
        [v31 setObject:localIdentifier forKeyedSubscript:@"identifier"];
        creationDate = [v29 creationDate];
        [v31 setObject:creationDate forKeyedSubscript:@"creationDate"];

        localCreationDate = [v29 localCreationDate];
        [v31 setObject:localCreationDate forKeyedSubscript:@"localCreationDate"];

        location = [v29 location];
        location2 = [v29 location];

        if (location2)
        {
          v37 = MEMORY[0x1E696AD98];
          [location coordinate];
          v38 = [v37 numberWithDouble:?];
          [v31 setObject:v38 forKeyedSubscript:@"latitude"];

          v39 = MEMORY[0x1E696AD98];
          [location coordinate];
          v41 = [v39 numberWithDouble:v40];
          [v31 setObject:v41 forKeyedSubscript:@"longitude"];
        }

        v42 = MEMORY[0x1E696AD98];
        [v29 curationScore];
        v43 = [v42 numberWithDouble:?];
        [v31 setObject:v43 forKeyedSubscript:@"score"];

        v44 = [v89 objectForKeyedSubscript:localIdentifier];
        v98 = j;
        v100 = v44;
        if ([v44 count])
        {
          fetchedObjects2 = [v44 fetchedObjects];
          [fetchedObjects2 valueForKey:@"localIdentifier"];
          v46 = localIdentifier;
          v47 = v30;
          v48 = v4;
          v50 = v49 = location;
          [v31 setObject:v50 forKeyedSubscript:@"persons"];

          location = v49;
          v4 = v48;
          v30 = v47;
          localIdentifier = v46;
          j = v98;

          v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v100, "count")}];
          [v31 setObject:v51 forKeyedSubscript:@"peopleCount"];

          v44 = v100;
        }

        v99 = [v88 objectForKeyedSubscript:localIdentifier];
        if ([v99 count])
        {
          v93 = location;
          v94 = v29;
          v95 = localIdentifier;
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
          localIdentifier = v95;
          location = v93;
          v44 = v100;
        }

        if ([v29 isFavorite])
        {
          [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isFavorite"];
        }

        [v90 setObject:v31 forKeyedSubscript:localIdentifier];

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

        localIdentifier2 = [*(*(&v105 + 1) + 8 * m) localIdentifier];
        [v63 addObject:localIdentifier2];
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

        localIdentifier3 = [*(*(&v101 + 1) + 8 * n) localIdentifier];
        [v71 addObject:localIdentifier3];
      }

      v74 = [v72 countByEnumeratingWithState:&v101 objects:v121 count:16];
    }

    while (v74);
  }

  [v84 setObject:v71 forKeyedSubscript:@"extendedCurationIdentifiers"];
  v78 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v83 referenceAsset:0];
  firstObject = [v78 firstObject];

  if (firstObject)
  {
    localIdentifier4 = [firstObject localIdentifier];
    [v84 setObject:localIdentifier4 forKeyedSubscript:@"keyAssetIdentifier"];
  }

  return v84;
}

+ (id)_datesAndAssetCountDictionaryForAssetCollection:(id)collection
{
  collectionCopy = collection;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:0];
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
      [dictionary setObject:v8 forKey:@"startDate"];
    }

    v9 = v14[5];
    if (v9)
    {
      [dictionary setObject:v9 forKey:@"endDate"];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [dictionary setObject:v10 forKey:@"estimatedAssetCount"];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  return dictionary;
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

+ (id)_featureVectorInfoGroupedByKeyForFeatureVector:(id)vector
{
  v20 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = vectorCopy;
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
        firstObject = [v10 firstObject];
        lastObject = [v10 lastObject];
        if ([firstObject isEqualToString:@"referenceKeywords"])
        {
          [dictionary setObject:lastObject forKeyedSubscript:firstObject];
        }

        else
        {
          array = [dictionary objectForKeyedSubscript:firstObject];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:firstObject];
          }

          [array addObject:lastObject];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)_sanitizedGraphDataDictionaryForArchivingDictionary:(id)dictionary memoryLocalIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (!dictionaryCopy)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v7 = [dictionaryCopy objectForKey:@"backingMoments"];
  v8 = [dictionaryCopy objectForKey:@"collectionsInfo"];
  v9 = [dictionaryCopy objectForKey:@"info"];
  v10 = [v9 mutableCopy];

  v33 = identifierCopy;
  if (!v7 || !v8 || !v10)
  {
    if (!identifierCopy)
    {
      v32 = v8;
      v13 = 0;
      v14 = 0;
LABEL_17:
      v31 = v10;

      goto LABEL_18;
    }

    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v42 = 0;
    v13 = [px_deprecated_appPhotoLibrary memoryDebugInformationForMemoryWithLocalIdentifier:identifierCopy error:&v42];
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
  v34 = dictionaryCopy;
  v30 = [dictionaryCopy mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
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
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __112__PXMemoriesRelatedDiagnosticsHelper__sanitizedGraphDataDictionaryForArchivingDictionary_memoryLocalIdentifier___block_invoke;
          v36[3] = &unk_1E774BC88;
          v37 = dictionary;
          v24 = dictionary;
          [v22 enumerateKeysAndObjectsUsingBlock:v36];
          v25 = [v21 mutableCopy];
          [v25 setObject:v24 forKey:@"keywords"];
          [array addObject:v25];
        }

        else
        {
          [array addObject:v21];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  v11 = v30;
  [v30 setObject:array forKey:@"backingMoments"];
  if (v32)
  {
    [v30 setObject:v32 forKey:@"collectionsInfo"];
  }

  v26 = [v31 objectForKeyedSubscript:@"moodKeywords"];
  identifierCopy = v33;
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      allObjects = [v26 allObjects];
      [v31 setObject:allObjects forKeyedSubscript:@"moodKeywords"];
    }
  }

  [v30 setObject:v31 forKeyedSubscript:@"info"];

  dictionaryCopy = v34;
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

+ (id)getSummaryFromProviderItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesRelatedDiagnosticsHelper.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localIdentifier = [itemCopy localIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemCopy = itemCopy;
    localizedTitle = [itemCopy localizedTitle];
    v10 = [localizedTitle length];

    if (v10)
    {
      localizedTitle2 = [itemCopy localizedTitle];
      [dictionary setObject:localizedTitle2 forKey:@"title"];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "assetCollectionType")}];
    [dictionary setObject:v12 forKey:@"assetCollectionType"];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "assetCollectionSubtype")}];
    [dictionary setObject:v13 forKey:@"assetCollectionSubtype"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "estimatedAssetCount")}];
    [dictionary setObject:v14 forKey:@"estimatedAssetCount"];

    creationDate = [itemCopy creationDate];

    if (creationDate)
    {
      creationDate2 = [itemCopy creationDate];
      [dictionary setObject:creationDate2 forKey:@"creationDate"];
    }

    if (localIdentifier)
    {
      [dictionary setObject:localIdentifier forKey:@"localIdentifier"];
    }

    if ([itemCopy assetCollectionType] == 4)
    {
      itemCopy = itemCopy;
      isRejected = [itemCopy isRejected];
      v18 = [MEMORY[0x1E696AD98] numberWithBool:isRejected];
      [dictionary setObject:v18 forKey:@"rejected"];

      isFavorite = [itemCopy isFavorite];
      v20 = [MEMORY[0x1E696AD98] numberWithBool:isFavorite];
      [dictionary setObject:v20 forKey:@"favorite"];

      pendingState = [itemCopy pendingState];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:pendingState];
      [dictionary setObject:v22 forKey:@"pendingState"];

      [itemCopy score];
      v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [dictionary setObject:v23 forKey:@"score"];

      uuid = [itemCopy uuid];
      if (uuid)
      {
        [dictionary setObject:uuid forKey:@"uuid"];
      }

      v91 = uuid;
      photosGraphVersion = [itemCopy photosGraphVersion];
      v26 = [MEMORY[0x1E696AD98] numberWithLongLong:photosGraphVersion];
      [dictionary setObject:v26 forKey:@"photoGraphVersion"];

      photosGraphProperties = [itemCopy photosGraphProperties];
      if (photosGraphProperties)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = [self _sanitizedGraphDataDictionaryForArchivingDictionary:photosGraphProperties memoryLocalIdentifier:localIdentifier];
        [dictionary setObject:v29 forKey:@"photosGraphProperties"];

        objc_autoreleasePoolPop(v28);
      }

      movieData = [itemCopy movieData];
      if (movieData)
      {
        [dictionary setObject:movieData forKey:@"movieData"];
      }

      lastViewedDate = [itemCopy lastViewedDate];
      if (lastViewedDate)
      {
        [dictionary setObject:lastViewedDate forKey:@"lastViewedDate"];
      }

      v85 = lastViewedDate;
      v87 = movieData;
      v89 = photosGraphProperties;
      v93 = localIdentifier;
      lastViewedDate2 = [itemCopy lastViewedDate];
      if (lastViewedDate2)
      {
        [dictionary setObject:lastViewedDate2 forKey:@"lastMoviePlayedDate"];
      }

      category = [itemCopy category];
      v34 = [MEMORY[0x1E69788F0] stringForCategory:category];
      [dictionary setObject:v34 forKey:@"category"];
      subcategory = [itemCopy subcategory];
      v36 = [MEMORY[0x1E69788F0] stringForSubcategory:subcategory];
      [dictionary setObject:v36 forKey:@"subCategory"];
      subtitle = [itemCopy subtitle];
      if ([subtitle length])
      {
        subtitle2 = [itemCopy subtitle];
      }

      else
      {
        subtitle2 = @"unknown";
      }

      [dictionary setObject:subtitle2 forKey:@"subtitle"];
      [dictionary setObject:@"Memory" forKey:@"referenceOrigin"];
      titleFontName = [itemCopy titleFontName];
      v78 = titleFontName;
      if (titleFontName)
      {
        v79 = titleFontName;
      }

      else
      {
        v79 = @"unknown";
      }

      [dictionary setObject:v79 forKey:@"fontName"];

      v80 = objc_autoreleasePoolPush();
      v81 = [self _curationFullsetForMemory:itemCopy];
      if (v81)
      {
        [dictionary setObject:v81 forKeyedSubscript:@"curationFullset"];
      }

      objc_autoreleasePoolPop(v80);
      v82 = [self _datesAndAssetCountDictionaryForAssetCollection:itemCopy];
      [dictionary addEntriesFromDictionary:v82];

      localIdentifier = v93;
    }

    else if ([itemCopy assetCollectionType] == 3)
    {
      itemCopy = itemCopy;
      startDate = [itemCopy startDate];
      if (startDate)
      {
        [dictionary setObject:startDate forKey:@"startDate"];
      }

      endDate = [itemCopy endDate];
      if (endDate)
      {
        [dictionary setObject:endDate forKey:@"endDate"];
      }

      [dictionary setObject:@"Moment" forKey:@"referenceOrigin"];
    }

    else
    {
      [dictionary setObject:@"Collection" forKey:@"referenceOrigin"];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = localIdentifier;
      itemCopy = itemCopy;
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "mediaType")}];
      [dictionary setObject:v39 forKey:@"assetType"];

      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "mediaSubtypes")}];
      [dictionary setObject:v40 forKey:@"mediaSubtypes"];

      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "pixelWidth")}];
      [dictionary setObject:v41 forKey:@"pixelWidth"];

      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemCopy, "pixelHeight")}];
      [dictionary setObject:v42 forKey:@"pixelHeight"];

      v43 = MEMORY[0x1E696AD98];
      [itemCopy duration];
      v44 = [v43 numberWithDouble:?];
      [dictionary setObject:v44 forKey:@"duration"];

      v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isHidden")}];
      [dictionary setObject:v45 forKey:@"isHidden"];

      v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isFavorite")}];
      [dictionary setObject:v46 forKey:@"isFavorite"];

      v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isTrashed")}];
      [dictionary setObject:v47 forKey:@"isTrashed"];

      v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "hasAdjustments")}];
      [dictionary setObject:v48 forKey:@"hasAdjustments"];

      v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isVideo")}];
      [dictionary setObject:v49 forKey:@"isVideo"];

      v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isPhoto")}];
      [dictionary setObject:v50 forKey:@"isPhoto"];

      v51 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isAudio")}];
      [dictionary setObject:v51 forKey:@"isAudio"];

      v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isIncludedInMoments")}];
      [dictionary setObject:v52 forKey:@"isIncludedInMoments"];

      v53 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isIncludedInCloudFeeds")}];
      [dictionary setObject:v53 forKey:@"isIncludedInCloudFeeds"];

      assetUserActivityProperties = [itemCopy assetUserActivityProperties];
      v55 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(assetUserActivityProperties, "playCount")}];
      [dictionary setObject:v55 forKey:@"playCount"];

      v56 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(assetUserActivityProperties, "viewCount")}];
      [dictionary setObject:v56 forKey:@"viewCount"];

      v92 = assetUserActivityProperties;
      v57 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(assetUserActivityProperties, "shareCount")}];
      [dictionary setObject:v57 forKey:@"shareCount"];

      creationDate3 = [itemCopy creationDate];
      if (creationDate3)
      {
        [dictionary setObject:creationDate3 forKey:@"creationDate"];
      }

      modificationDate = [itemCopy modificationDate];
      if (modificationDate)
      {
        [dictionary setObject:modificationDate forKey:@"modificationDate"];
      }

      location = [itemCopy location];
      v61 = location;
      if (location)
      {
        v62 = [location description];
        [dictionary setObject:v62 forKey:@"location"];
      }

      burstIdentifier = [itemCopy burstIdentifier];
      if (burstIdentifier)
      {
        [dictionary setObject:burstIdentifier forKey:@"burstIdentifier"];
      }

      uniformTypeIdentifier = [itemCopy uniformTypeIdentifier];
      if (uniformTypeIdentifier)
      {
        [dictionary setObject:uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];
      }

      v88 = modificationDate;
      filename = [itemCopy filename];
      if (filename)
      {
        [dictionary setObject:filename forKey:@"filename"];
      }

      v86 = v61;
      cloudIdentifier = [itemCopy cloudIdentifier];
      if (cloudIdentifier)
      {
        [dictionary setObject:cloudIdentifier forKey:@"cloudIdentifier"];
      }

      v90 = creationDate3;
      adjustmentVersion = [itemCopy adjustmentVersion];
      if (adjustmentVersion)
      {
        [dictionary setObject:adjustmentVersion forKey:@"adjustmentVersion"];
      }

      faceAdjustmentVersion = [itemCopy faceAdjustmentVersion];
      if (faceAdjustmentVersion)
      {
        [dictionary setObject:faceAdjustmentVersion forKey:@"faceAdjustmentVersion"];
      }

      v69 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(itemCopy, "faceAnalysisVersion")}];
      [dictionary setObject:v69 forKey:@"faceAnalysisVersion"];

      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      [dictionary setObject:v71 forKey:@"itemClass"];

      [dictionary setObject:@"One Up" forKey:@"referenceOrigin"];
      localIdentifier = v94;
      if (v94)
      {
        [dictionary setObject:v94 forKey:@"localIdentifier"];
      }
    }

    else
    {
      itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", itemCopy];
      uuid2 = [itemCopy uuid];
      [dictionary setObject:itemCopy forKey:uuid2];
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      [dictionary setObject:v76 forKey:@"itemClass"];
      [dictionary setObject:v76 forKey:@"referenceOrigin"];
      if (localIdentifier)
      {
        [dictionary setObject:localIdentifier forKey:@"localIdentifier"];
      }
    }
  }

  return dictionary;
}

+ (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index sourceMemory:(id)memory sourceDictionary:(id)dictionary
{
  v226 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  dictionaryCopy = dictionary;
  v14 = dictionaryCopy;
  if (titles)
  {
    v15 = content == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v15)
  {
    switch(index)
    {
      case 2:
        v143 = [dictionaryCopy objectForKeyedSubscript:@"collectionsInfo"];
        [v14 objectForKeyedSubscript:@"backingMoments"];
        v145 = v144 = titles;
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
        *content = v150;

        break;
      case 1:
        v141 = [dictionaryCopy objectForKeyedSubscript:@"featureVector"];
        *titles = [v141 allKeys];
        v142 = v141;
        *content = v141;

        break;
      case 0:
        titlesCopy = titles;
        contentCopy = content;
        v17 = objc_opt_new();
        v202 = v14;
        v18 = [v14 objectForKeyedSubscript:@"info"];
        v207 = [MEMORY[0x1E695DFD8] setWithObjects:{@"category", @"subcategory", @"originalsubcategory", @"sourceType", @"creationDate", @"assetCount", @"title", @"subtitle", @"fontname", @"representativeassetcount", @"repCount", @"relevantAssetCount", @"curatedCount", @"extendedCuratedCount", @"meaningLabels", @"numberOfMoments", @"numberOfCollections", @"notificationstate", @"suggestedMood", @"recommendedMoods", @"forbiddenMoods", @"moodWeights", @"moodKeywords", 0}];
        v19 = MEMORY[0x1E696AEC0];
        localIdentifier = [memoryCopy localIdentifier];
        v21 = [v19 stringWithFormat:@"[localIdentifier] %@", localIdentifier];
        [v17 addObject:v21];

        v22 = MEMORY[0x1E696AEC0];
        [memoryCopy pendingState];
        v23 = PHMemoryPendingStateDescription();
        v24 = [v22 stringWithFormat:@"[pendingState] %@ (%d)", v23, objc_msgSend(memoryCopy, "pendingState")];
        [v17 addObject:v24];

        v25 = MEMORY[0x1E696AEC0];
        [memoryCopy creationType];
        v26 = PHMemoryCreationTypeDescription();
        v27 = [v25 stringWithFormat:@"[creationType] %@ (%d)", v26, objc_msgSend(memoryCopy, "creationType")];
        [v17 addObject:v27];

        v28 = MEMORY[0x1E696AEC0];
        v29 = [MEMORY[0x1E69788F0] stringForCategory:{objc_msgSend(memoryCopy, "category")}];
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
        [memoryCopy score];
        v41 = [v39 stringWithFormat:@"[score] %.3f", v40];
        [v17 addObject:v41];

        v42 = MEMORY[0x1E696AEC0];
        v43 = MEMORY[0x1E6978918];
        date = [MEMORY[0x1E695DF00] date];
        [v43 relevanceScoreForMemory:memoryCopy atDate:date];
        v46 = [v42 stringWithFormat:@"[current relevance score] %.3f", v45];
        [v17 addObject:v46];

        v47 = MEMORY[0x1E696AEC0];
        v48 = MEMORY[0x1E6978918];
        creationDate = [memoryCopy creationDate];
        [v48 relevanceScoreForMemory:memoryCopy atDate:creationDate];
        v51 = [v47 stringWithFormat:@"[relevance score on creation date] %.3f", v50];
        [v17 addObject:v51];

        v52 = MEMORY[0x1E696AEC0];
        localizedTitle = [memoryCopy localizedTitle];
        v54 = localizedTitle;
        v55 = @"## Missing Title ##";
        if (localizedTitle)
        {
          v55 = localizedTitle;
        }

        v56 = [v52 stringWithFormat:@"[title] %@", v55];
        [v17 addObject:v56];

        v57 = MEMORY[0x1E696AEC0];
        localizedSubtitle = [memoryCopy localizedSubtitle];
        v59 = localizedSubtitle;
        v60 = &stru_1F1741150;
        if (localizedSubtitle)
        {
          v60 = localizedSubtitle;
        }

        v61 = [v57 stringWithFormat:@"[subtitle] %@", v60];
        [v17 addObject:v61];

        v62 = MEMORY[0x1E696AEC0];
        titleFontName = [memoryCopy titleFontName];
        v64 = titleFontName;
        v65 = @"## Missing Title Font Name";
        if (titleFontName)
        {
          v65 = titleFontName;
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
        v99 = [self _isSafeForWidgetDisplayForAssetUUID:v98];
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

        v104 = [v101 stringWithFormat:@"[numberOfMoments] %@", v104];
        [v17 addObject:v104];

        v106 = MEMORY[0x1E696AEC0];
        v107 = [v18 objectForKeyedSubscript:@"numberOfCollections"];
        v108 = v107;
        v109 = @"## Missing Number of Collections ##";
        if (v107)
        {
          v109 = v107;
        }

        v109 = [v106 stringWithFormat:@"[numberOfCollections] %@", v109];
        [v17 addObject:v109];

        v111 = MEMORY[0x1E696AEC0];
        v112 = [v18 objectForKeyedSubscript:@"suggestedMood"];
        v112 = [v111 stringWithFormat:@"[suggestedMood] %@", v112];
        [v17 addObject:v112];

        v114 = MEMORY[0x1E696AEC0];
        v115 = [v18 objectForKeyedSubscript:@"recommendedMoods"];
        v115 = [v114 stringWithFormat:@"[recommendedMoods] %@", v115];
        [v17 addObject:v115];

        v117 = MEMORY[0x1E696AEC0];
        v118 = [v18 objectForKeyedSubscript:@"forbiddenMoods"];
        v118 = [v117 stringWithFormat:@"[forbiddenMoods] %@", v118];
        [v17 addObject:v118];

        v120 = MEMORY[0x1E696AEC0];
        v121 = [v18 objectForKeyedSubscript:@"moodWeights"];
        v121 = [v120 stringWithFormat:@"[moodWeights] %@", v121];
        [v17 addObject:v121];

        v123 = MEMORY[0x1E696AEC0];
        v124 = [v18 objectForKeyedSubscript:@"moodKeywords"];
        v125 = [v124 componentsJoinedByString:{@", "}];
        v125 = [v123 stringWithFormat:@"[moodKeywords] %@", v125];
        [v17 addObject:v125];

        v127 = MEMORY[0x1E696AEC0];
        v128 = [self _userFeedbackScoreInfoForMemory:memoryCopy];
        v128 = [v127 stringWithFormat:@"[userFeedbackScore] %@", v128];
        [v17 addObject:v128];

        v130 = MEMORY[0x1E696AEC0];
        v131 = [v14 objectForKeyedSubscript:@"triggerTypes"];
        v131 = [v130 stringWithFormat:@"[triggerTypes] %@", v131];
        [v17 addObject:v131];

        v133 = MEMORY[0x1E696AEC0];
        v134 = [v14 objectForKeyedSubscript:@"encodedFeatures"];
        v134 = [v133 stringWithFormat:@"[memoryFeatures] %@", v134];
        [v17 addObject:v134];

        v136 = MEMORY[0x1E696AEC0];
        graphMemoryIdentifier = [memoryCopy graphMemoryIdentifier];
        v137 = [v136 stringWithFormat:@"[graphMemoryIdentifier] %@", graphMemoryIdentifier];
        [v17 addObject:v137];

        notificationState = [memoryCopy notificationState];
        if (notificationState == 1)
        {
          v140 = @"Requested";
        }

        else
        {
          if (notificationState != 2)
          {
            goto LABEL_48;
          }

          v140 = @"Seen";
        }

        v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[notificationState] Notification State %@ (%lu)", v140, objc_msgSend(memoryCopy, "notificationState")];
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
            v158 = [v157 stringWithFormat:@"[meaning] %@", v158];
            [v17 addObject:v158];
          }
        }

        v195 = v155;
        [memoryCopy photosGraphVersion];
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
        v201 = memoryCopy;
        obj = [memoryCopy blockableFeatures];
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
                personLocalIdentifier = [v169 personLocalIdentifier];
                px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
                librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

                v173 = MEMORY[0x1E6978980];
                v224 = personLocalIdentifier;
                v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];
                v175 = [v173 fetchPersonsWithLocalIdentifiers:v174 options:librarySpecificFetchOptions];

                firstObject = [v175 firstObject];
                name = [firstObject name];
                if ([name length])
                {
                  v178 = name;
                }

                else
                {
                  v178 = personLocalIdentifier;
                }

                v186 = v178;

LABEL_61:
LABEL_65:

                goto LABEL_66;
              }

              if ([v169 type] == 16)
              {
                personLocalIdentifier = [v169 date];
                v191 = [v204 stringFromDate:personLocalIdentifier];
                goto LABEL_64;
              }

              if ([v169 type] == 512)
              {
                personLocalIdentifier = [v169 dateInterval];
                v184 = MEMORY[0x1E696AEC0];
                librarySpecificFetchOptions = [personLocalIdentifier startDate];
                v175 = [v204 stringFromDate:librarySpecificFetchOptions];
                endDate = [personLocalIdentifier endDate];
                v186 = [v204 stringFromDate:endDate];
                v186 = [v184 stringWithFormat:@"%@ - %@", v175, v186];

                goto LABEL_61;
              }

              if ([v169 type] == 32)
              {
                holidayName = [v169 holidayName];
LABEL_72:
                v186 = holidayName;
                goto LABEL_66;
              }

              if ([v169 type] == 4096)
              {
                personLocalIdentifier = [v169 location];
                v188 = MEMORY[0x1E696AEC0];
                [personLocalIdentifier coordinate];
                v190 = v189;
                [personLocalIdentifier coordinate];
                v191 = [v188 stringWithFormat:@"(%f, %f)", v190, v191];
LABEL_64:
                v186 = v191;
                goto LABEL_65;
              }

              if ([v169 type] == 0x20000)
              {
                holidayName = [v169 areaName];
                goto LABEL_72;
              }

              v186 = 0;
LABEL_66:
              v181 = MEMORY[0x1E696AEC0];
              v182 = [MEMORY[0x1E6978908] stringForType:{objc_msgSend(v169, "type")}];
              v179 = [v181 stringWithFormat:@"[blockableFeature] %@: %@", v182, v186];
              [v208 addObject:v179];

              ++v168;
            }

            while (v167 != v168);
            v192 = [obj countByEnumeratingWithState:&v215 objects:v225 count:16];
            v167 = v192;
          }

          while (v192);
        }

        *titlesCopy = &unk_1F1910A38;
        v222 = &stru_1F1741150;
        v223 = v208;
        *contentCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];

        memoryCopy = v201;
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

+ (id)preprocessDictionary:(id)dictionary forMemoryWithLocalIdentifier:(id)identifier algorithmsVersion:(int64_t)version inPhotoLibrary:(id)library
{
  v63 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  v10 = [dictionary mutableCopy];
  v11 = [v10 objectForKeyedSubscript:@"backingMoments"];
  v12 = [v10 objectForKeyedSubscript:@"collectionsInfo"];
  if (![v11 count] || !objc_msgSend(v12, "count"))
  {
    v56 = 0;
    v13 = [libraryCopy memoryDebugInformationForMemoryWithLocalIdentifier:identifierCopy error:&v56];
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
    v21 = [self _featureVectorInfoGroupedByKeyForFeatureVector:v19];

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
    v48 = identifierCopy;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
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
            v32 = [MEMORY[0x1E6978908] personLocalIdentifierForPersonUniversalIdentifier:v30 photoLibrary:libraryCopy];
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
          v38 = [v36 fetchPersonsWithLocalIdentifiers:v37 options:librarySpecificFetchOptions];

          firstObject = [v38 firstObject];
          name = [firstObject name];
          if ([name length])
          {
            v41 = name;
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
    identifierCopy = v48;
    v12 = v45;
    v11 = v46;
    v18 = v44;
  }

  [v10 setObject:v21 forKeyedSubscript:@"featureVector"];
LABEL_39:

  return v10;
}

@end