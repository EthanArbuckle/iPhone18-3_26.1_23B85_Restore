@interface PNTimelineDataSource
- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)collection personUUIDs:(id)ds asset:(id)asset;
- (PHPhotoLibrary)photoLibrary;
- (PNTimelineDataSource)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier widgetSize:(CGSize)size photoLibrary:(id)library;
- (PNTimelineDataSource)initWithAssetIdentifiers:(id)identifiers widgetIdentifier:(id)identifier widgetSize:(CGSize)size photoLibrary:(id)library;
- (PNTimelineDataSource)initWithPhotoLibrary:(id)library forWidgetSize:(CGSize)size;
- (PNTimelineDataSource)initWithPhotoLibrary:(id)library options:(id)options;
- (id)_defaultSortDescriptorsForMemories;
- (id)_defaultSortDescriptorsForSuggestions;
- (id)_fetchAssetsWithLocalIdentifiers:(id)identifiers;
- (id)_fetchFallbackMemoriesAndSetFeatured;
- (id)_fetchFallbackSuggestionsAndSetFeatured;
- (id)_fetchMemoriesWithFeaturedState:(int64_t)state fetchLimit:(unint64_t)limit;
- (id)_fetchMomentByAssetUUIDForAssets:(id)assets;
- (id)_fetchSuggestionsWithFeaturedState:(unsigned __int16)state fetchLimit:(unint64_t)limit;
- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)suggestions;
- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)memories;
- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)suggestions;
- (id)keyAssetFetchOptions;
- (void)_initializeAssets:(id)assets;
- (void)_initializeFeaturedCandidatesWithMemoryResult:(id)result suggestionResult:(id)suggestionResult;
- (void)_initializeWithForceEntryUUID:(id)d;
@end

@implementation PNTimelineDataSource

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)suggestions
{
  v76 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  [(PNTimelineDataSourceOptions *)self->_options widgetSize];
  v7 = v6;
  v8 = v5;
  v9 = v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || ![suggestionsCopy count])
  {
    v58 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.f, %.f}", *&v7, *&v8];
    v10 = PLMemoriesGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v68 = 0x3FD999999999999ALL;
      v69 = 2112;
      v70 = v53;
      _os_log_impl(&dword_1C6F5C000, v10, OS_LOG_TYPE_DEFAULT, "Start filtering suggestions with minimum cropScore:%f, widgetSize:%@", buf, 0x16u);
    }

    v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = suggestionsCopy;
    obj = suggestionsCopy;
    v11 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v64;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v64 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          localIdentifier = [v15 localIdentifier];
          keyAssetByFeaturedPhotoLocalIdentifier = [(PNTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
          v18 = [keyAssetByFeaturedPhotoLocalIdentifier objectForKeyedSubscript:localIdentifier];

          if (v18)
          {
            v19 = [PNTimelineCrop cropForAsset:v18 withTargetSize:v7, v8];
            [v58 setObject:v19 forKeyedSubscript:localIdentifier];
            [v19 cropScore];
            if (v20 < 0.4)
            {
              v21 = [[PNTimelineDataItem alloc] initWithAssetCollection:v15 suggestedCrop:v19];
              [v54 addObject:v21];
            }
          }

          else
          {
            v19 = PLMemoriesGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v68 = localIdentifier;
              _os_log_impl(&dword_1C6F5C000, v19, OS_LOG_TYPE_ERROR, "Suggestion key asset is nil: %{public}@", buf, 0xCu);
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v12);
    }

    v22 = PLMemoriesGetLog();
    v23 = v54;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v54 count];
      *buf = 134217984;
      v68 = v24;
      _os_log_impl(&dword_1C6F5C000, v22, OS_LOG_TYPE_DEFAULT, "Found %lu suggestions with low crop score", buf, 0xCu);
    }

    if ([v54 count])
    {
      v25 = v54;
      v26 = vcvtd_n_f64_u64([obj count], 2uLL);
      v27 = v25;
      if ([v25 count] > v26)
      {
        v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"suggestedCrop.cropScore" ascending:1];
        v74 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        [v25 sortUsingDescriptors:v29];

        v27 = [v25 subarrayWithRange:{0, v26}];
      }

      v30 = PLMemoriesGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v25 count];
        v32 = [v27 count];
        *buf = 134218240;
        v68 = v31;
        v69 = 2048;
        v70 = v32;
        _os_log_impl(&dword_1C6F5C000, v30, OS_LOG_TYPE_DEFAULT, "BadCrop - Suggestions:%lu, Removed:%lu\n", buf, 0x16u);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v33 = v27;
      v34 = [v33 countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v34)
      {
        v35 = v34;
        v56 = *v60;
        v55 = v33;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v60 != v56)
            {
              objc_enumerationMutation(v55);
            }

            v37 = *(*(&v59 + 1) + 8 * j);
            assetCollection = [v37 assetCollection];
            localIdentifier2 = [assetCollection localIdentifier];
            keyAssetByFeaturedPhotoLocalIdentifier2 = [(PNTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
            v41 = [keyAssetByFeaturedPhotoLocalIdentifier2 objectForKeyedSubscript:localIdentifier2];

            sourceType = [(PNTimelineDataSource *)self sourceType];
            v43 = [PNTimelineEntry alloc];
            if (sourceType == 1)
            {
              sourceIdentifier = [(PNTimelineDataSource *)self sourceIdentifier];
              suggestedCrop = [v37 suggestedCrop];
              v46 = [(PNTimelineEntry *)v43 initWithAlbumFeaturedPhoto:assetCollection localAlbumIdentifier:sourceIdentifier andFeaturedPhotoKeyAsset:v41 suggestedCrop:suggestedCrop];
            }

            else
            {
              sourceIdentifier = [v37 suggestedCrop];
              v46 = [(PNTimelineEntry *)v43 initWithFeaturedPhoto:assetCollection andFeaturedPhotoKeyAsset:v41 suggestedCrop:sourceIdentifier];
            }

            [(PNTimelineEntry *)v46 setRejectReason:3];
            if (v46)
            {
              filteredContent = [(PNTimelineDataSource *)self filteredContent];
              [filteredContent addObject:v46];
            }

            [obj removeObject:assetCollection];
            [v58 setObject:0 forKeyedSubscript:localIdentifier2];
            v48 = PLMemoriesGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier3 = [assetCollection localIdentifier];
              suggestedCrop2 = [v37 suggestedCrop];
              *buf = 138543874;
              v68 = localIdentifier3;
              v69 = 2114;
              v70 = v53;
              v71 = 2114;
              v72 = suggestedCrop2;
              _os_log_impl(&dword_1C6F5C000, v48, OS_LOG_TYPE_DEFAULT, "Removed:%{public}@ displaySize:%{public}@ suggestedCrop:%{public}@", buf, 0x20u);
            }
          }

          v33 = v55;
          v35 = [v55 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v35);
      }

      suggestionsCopy = v52;
      v23 = v54;
    }

    else
    {
      v33 = PLMemoriesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6F5C000, v33, OS_LOG_TYPE_DEFAULT, "BadCrop - Suggestions:0, Removed:0\n", buf, 2u);
      }
    }
  }

  return v58;
}

- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)collection personUUIDs:(id)ds asset:(id)asset
{
  v23[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  dsCopy = ds;
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v22 = uuid;
  v23[0] = dsCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userFeedbackCalculator = [(PNTimelineDataSource *)self userFeedbackCalculator];
    v21 = uuid;
    userFeedbackCalculator2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [userFeedbackCalculator scoreForAssetUUIDs:userFeedbackCalculator2 personsUUIDsByAssetUUIDs:v12];
    v16 = v15;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = *MEMORY[0x1E6978FD8];
      goto LABEL_7;
    }

    userFeedbackCalculator = [collectionCopy blockableFeatures];
    userFeedbackCalculator2 = [(PNTimelineDataSource *)self userFeedbackCalculator];
    uuid2 = [assetCopy uuid];
    [userFeedbackCalculator2 scoreForAssetUUIDs:MEMORY[0x1E695E0F0] keyAssetUUID:uuid2 personsUUIDsByAssetUUIDs:v12 memoryFeatures:userFeedbackCalculator];
    v16 = v18;
  }

LABEL_7:
  v19 = [MEMORY[0x1E6978B08] score:v16 meetsScoreThreshold:*MEMORY[0x1E6978FC8]];

  return v19;
}

- (id)_fetchMomentByAssetUUIDForAssets:(id)assets
{
  v47 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v36 = librarySpecificFetchOptions;
  v8 = [MEMORY[0x1E6978928] fetchMomentUUIDByAssetUUIDForAssets:assetsCopy options:librarySpecificFetchOptions];
  allValues = [v8 allValues];
  photoLibrary2 = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions2 setFetchLimit:{objc_msgSend(allValues, "count")}];
  v35 = allValues;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", allValues];
  [librarySpecificFetchOptions2 setPredicate:v12];

  v34 = librarySpecificFetchOptions2;
  v13 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:librarySpecificFetchOptions2];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        uuid = [v20 uuid];
        [v14 setObject:v20 forKeyedSubscript:uuid];
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v17);
  }

  v33 = v15;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = assetsCopy;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * j);
        uuid2 = [v27 uuid];
        v29 = [v8 objectForKeyedSubscript:uuid2];

        v30 = [v14 objectForKeyedSubscript:v29];
        uuid3 = [v27 uuid];
        [v5 setObject:v30 forKeyedSubscript:uuid3];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  return v5;
}

- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)suggestions
{
  v70 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([suggestionsCopy count])
  {
    keyAssetFetchOptions = [(PNTimelineDataSource *)self keyAssetFetchOptions];
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = keyAssetFetchOptions;
    v54 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:suggestionsCopy options:keyAssetFetchOptions];
    allValues = [v54 allValues];
    v52 = [(PNTimelineDataSource *)self _fetchMomentByAssetUUIDForAssets:allValues];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = allValues;
    v7 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v61;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v61 != v9)
          {
            objc_enumerationMutation(obj);
          }

          uuid = [*(*(&v60 + 1) + 8 * i) uuid];
          [v55 addObject:uuid];
        }

        v8 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v8);
    }

    v12 = MEMORY[0x1E6978980];
    photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v51 = [v12 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v55 options:librarySpecificFetchOptions];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = suggestionsCopy;
    v49 = suggestionsCopy;
    v15 = [v49 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v53 = *v57;
      selfCopy = self;
      do
      {
        v17 = 0;
        do
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(v49);
          }

          v18 = *(*(&v56 + 1) + 8 * v17);
          uuid2 = [v18 uuid];
          v20 = [v54 objectForKeyedSubscript:uuid2];

          if (v20)
          {
            uuid3 = [v20 uuid];
            v22 = [v52 objectForKeyedSubscript:uuid3];

            uuid4 = [v20 uuid];
            v24 = [v51 objectForKeyedSubscript:uuid4];
            v25 = v24;
            v26 = MEMORY[0x1E695E0F0];
            if (v24)
            {
              v26 = v24;
            }

            v27 = v26;

            if ([(PNTimelineDataSource *)self sourceType]== 1)
            {
LABEL_18:
              localIdentifier = [v18 localIdentifier];
              [v48 setObject:v20 forKeyedSubscript:localIdentifier];
            }

            else
            {
              if ([PNAssetCurationUtilities assetIsSafeForWidgetDisplay:v20])
              {
                if ([objc_opt_class() _momentIsLocationTypeAtWork:v22])
                {
                  v30 = 2;
                }

                else
                {
                  if ([(PNTimelineDataSource *)self _isAcceptableUserFeedbackForAssetCollection:v18 personUUIDs:v27 asset:v20])
                  {
                    goto LABEL_18;
                  }

                  v30 = 4;
                }
              }

              else
              {
                v30 = 1;
              }

              [v47 addObject:v18];
              sourceType = [(PNTimelineDataSource *)self sourceType];
              v32 = [PNTimelineEntry alloc];
              v33 = v32;
              if (sourceType == 1)
              {
                sourceIdentifier = [(PNTimelineDataSource *)self sourceIdentifier];
                localIdentifier = [(PNTimelineEntry *)v33 initWithAlbumFeaturedPhoto:v18 localAlbumIdentifier:sourceIdentifier andFeaturedPhotoKeyAsset:v20 suggestedCrop:0];

                self = selfCopy;
              }

              else
              {
                localIdentifier = [(PNTimelineEntry *)v32 initWithFeaturedPhoto:v18 andFeaturedPhotoKeyAsset:v20];
              }

              [(PNTimelineEntry *)localIdentifier setRejectReason:v30];
              if (localIdentifier)
              {
                filteredContent = [(PNTimelineDataSource *)self filteredContent];
                [filteredContent addObject:localIdentifier];
              }

              v36 = PLMemoriesGetLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier2 = [v18 localIdentifier];
                v38 = [PNTimelineEntry descriptionForRejectReason:v30];
                *buf = 138543618;
                v65 = localIdentifier2;
                v66 = 2114;
                v67 = v38;
                _os_log_impl(&dword_1C6F5C000, v36, OS_LOG_TYPE_DEFAULT, "Suggestion %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);

                self = selfCopy;
              }
            }

            goto LABEL_34;
          }

          v22 = PLMemoriesGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            localIdentifier3 = [v18 localIdentifier];
            *buf = 138543362;
            v65 = localIdentifier3;
            _os_log_impl(&dword_1C6F5C000, v22, OS_LOG_TYPE_ERROR, "Suggestion key asset is nil: %{public}@", buf, 0xCu);
          }

LABEL_34:

          ++v17;
        }

        while (v16 != v17);
        v39 = [v49 countByEnumeratingWithState:&v56 objects:v68 count:16];
        v16 = v39;
      }

      while (v39);
    }

    v40 = PLMemoriesGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v47 count];
      *buf = 134217984;
      v65 = v41;
      _os_log_impl(&dword_1C6F5C000, v40, OS_LOG_TYPE_DEFAULT, "NotSafeForDisplay - Suggestions:%lu\n", buf, 0xCu);
    }

    featuredPhotoCandidates = [(PNTimelineDataSource *)self featuredPhotoCandidates];
    [featuredPhotoCandidates removeObjectsInArray:v47];

    suggestionsCopy = v45;
  }

  return v48;
}

- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)memories
{
  v52 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (![memoriesCopy count])
  {
    goto LABEL_27;
  }

  keyAssetFetchOptions = [(PNTimelineDataSource *)self keyAssetFetchOptions];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = memoriesCopy;
  obj = memoriesCopy;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v39)
  {
    goto LABEL_24;
  }

  v38 = *v43;
  v35 = keyAssetFetchOptions;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v43 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * i);
      v8 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v7 referenceAsset:0 options:{keyAssetFetchOptions, v33}];
      firstObject = [v8 firstObject];
      v10 = firstObject;
      if (firstObject)
      {
        uuid = [firstObject uuid];
        photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F46E5540];
        v14 = MEMORY[0x1E6978980];
        v50 = uuid;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        v16 = [v14 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v15 options:librarySpecificFetchOptions];

        v41 = v16;
        v17 = [v16 objectForKeyedSubscript:uuid];
        v18 = v17;
        v19 = MEMORY[0x1E695E0F0];
        if (v17)
        {
          v19 = v17;
        }

        v20 = v19;

        v21 = 1;
        v40 = v20;
        if ([PNAssetCurationUtilities assetIsSafeForWidgetDisplay:v10])
        {
          if ([(PNTimelineDataSource *)self _isAcceptableUserFeedbackForAssetCollection:v7 personUUIDs:v20 asset:v10])
          {
            localIdentifier = [v7 localIdentifier];
            [v34 setObject:v10 forKeyedSubscript:localIdentifier];
LABEL_21:

            goto LABEL_22;
          }

          v21 = 4;
        }

        selfCopy = self;
        [v36 addObject:v7];
        localIdentifier = [[PNTimelineEntry alloc] initWithMemory:v7 andMemoryKeyAsset:v10];
        [(PNTimelineEntry *)localIdentifier setRejectReason:v21];
        if (localIdentifier)
        {
          filteredContent = [(PNTimelineDataSource *)self filteredContent];
          [filteredContent addObject:localIdentifier];
        }

        v26 = PLMemoriesGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier2 = [v7 localIdentifier];
          v28 = [PNTimelineEntry descriptionForRejectReason:v21];
          *buf = 138543618;
          v47 = localIdentifier2;
          v48 = 2114;
          v49 = v28;
          _os_log_impl(&dword_1C6F5C000, v26, OS_LOG_TYPE_DEFAULT, "Memory %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);
        }

        self = selfCopy;
        keyAssetFetchOptions = v35;
        goto LABEL_21;
      }

      uuid = PLMemoriesGetLog();
      if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
      {
        localIdentifier3 = [v7 localIdentifier];
        *buf = 138543362;
        v47 = localIdentifier3;
        _os_log_impl(&dword_1C6F5C000, uuid, OS_LOG_TYPE_ERROR, "Memory key asset is nil: %{public}@", buf, 0xCu);
      }

LABEL_22:
    }

    v39 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  }

  while (v39);
LABEL_24:

  v29 = PLMemoriesGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v36 count];
    *buf = 134217984;
    v47 = v30;
    _os_log_impl(&dword_1C6F5C000, v29, OS_LOG_TYPE_DEFAULT, "NotSafeForDisplay - Memories:%lu\n", buf, 0xCu);
  }

  memoryCandidates = [(PNTimelineDataSource *)self memoryCandidates];
  [memoryCandidates removeObjectsInArray:v36];

  memoriesCopy = v33;
LABEL_27:

  return v34;
}

- (id)keyAssetFetchOptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = *MEMORY[0x1E6978CF0];
  v7[0] = *MEMORY[0x1E6978C68];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v5];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];

  return librarySpecificFetchOptions;
}

- (id)_fetchAssetsWithLocalIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E6978630];
  identifiersCopy = identifiers;
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [v4 fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];

  return v8;
}

- (id)_fetchFallbackSuggestionsAndSetFeatured
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PNTimelineDataSource *)self _fetchSuggestionsWithFeaturedState:0 fetchLimit:10];
  if ([v3 count])
  {
    photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PNTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke;
    v13[3] = &unk_1E82A2730;
    v5 = v3;
    v14 = v5;
    v12 = 0;
    v6 = [photoLibrary performChangesAndWait:v13 error:&v12];
    v7 = v12;

    if ((v6 & 1) == 0)
    {
      v8 = PLMemoriesGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1C6F5C000, v8, OS_LOG_TYPE_ERROR, "Setting featureState on suggestions - failed: %@", buf, 0xCu);
      }
    }

    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      *buf = 67109120;
      LODWORD(v16) = v10;
      _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_DEFAULT, "Using fallback: %d suggestions", buf, 8u);
    }
  }

  else
  {
    v7 = PLMemoriesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_DEFAULT, "No fallback suggestions", buf, 2u);
    }
  }

  return v3;
}

void __63__PNTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFeaturedState:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (id)_fetchFallbackMemoriesAndSetFeatured
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PNTimelineDataSource *)self _fetchMemoriesWithFeaturedState:0 fetchLimit:3];
  if ([v3 count])
  {
    photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PNTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke;
    v13[3] = &unk_1E82A2730;
    v5 = v3;
    v14 = v5;
    v12 = 0;
    v6 = [photoLibrary performChangesAndWait:v13 error:&v12];
    v7 = v12;

    if ((v6 & 1) == 0)
    {
      v8 = PLMemoriesGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1C6F5C000, v8, OS_LOG_TYPE_ERROR, "Setting featureState on memories - failed: %@", buf, 0xCu);
      }
    }

    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      *buf = 67109120;
      LODWORD(v16) = v10;
      _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_DEFAULT, "Using fallback: %d memories", buf, 8u);
    }
  }

  else
  {
    v7 = PLMemoriesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_DEFAULT, "No fallback memories", buf, 2u);
    }
  }

  return v3;
}

void __60__PNTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978900] changeRequestForMemory:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFeaturedState:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (id)_fetchSuggestionsWithFeaturedState:(unsigned __int16)state fetchLimit:(unint64_t)limit
{
  stateCopy = state;
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:limit];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  _defaultSortDescriptorsForSuggestions = [(PNTimelineDataSource *)self _defaultSortDescriptorsForSuggestions];
  [librarySpecificFetchOptions setSortDescriptors:_defaultSortDescriptorsForSuggestions];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d || %K == %d)", @"state", 1, @"state", 0];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 302];
  [v10 addObject:v12];

  v13 = PLSyndicationPreferencesEnabled();
  v14 = PLMemoriesGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "Syndicated content included", buf, 2u);
    }
  }

  else
  {
    if (v15)
    {
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "Syndicated content NOT included", v20, 2u);
    }

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 306];
    [v10 addObject:v14];
  }

  v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [librarySpecificFetchOptions setPredicate:v16];

  v17 = [MEMORY[0x1E6978AE8] fetchWidgetSuggestionsWithFeaturedState:stateCopy withOptions:librarySpecificFetchOptions];

  return v17;
}

- (id)_fetchMemoriesWithFeaturedState:(int64_t)state fetchLimit:(unint64_t)limit
{
  v17[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:limit];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  _defaultSortDescriptorsForMemories = [(PNTimelineDataSource *)self _defaultSortDescriptorsForMemories];
  [librarySpecificFetchOptions setSortDescriptors:_defaultSortDescriptorsForMemories];

  state = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", state];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO AND userCreated == NO"];
  v12 = MEMORY[0x1E696AB28];
  v17[0] = state;
  v17[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];
  [librarySpecificFetchOptions setPredicate:v14];

  v15 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];

  return v15;
}

- (id)_defaultSortDescriptorsForSuggestions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_defaultSortDescriptorsForMemories
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)_initializeAssets:(id)assets
{
  fetchedObjects = [assets fetchedObjects];
  assets = self->_assets;
  self->_assets = fetchedObjects;

  MEMORY[0x1EEE66BB8](fetchedObjects, assets, v5);
}

- (void)_initializeFeaturedCandidatesWithMemoryResult:(id)result suggestionResult:(id)suggestionResult
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  suggestionResultCopy = suggestionResult;
  v8 = PLMemoriesGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218240;
    v25 = [resultCopy count];
    v26 = 2048;
    v27 = [suggestionResultCopy count];
    _os_log_impl(&dword_1C6F5C000, v8, OS_LOG_TYPE_DEFAULT, "Candidate For Scheduling - Memories:%lu, Suggestions:%lu\n", &v24, 0x16u);
  }

  v9 = MEMORY[0x1E695DF70];
  fetchedObjects = [resultCopy fetchedObjects];
  v11 = [v9 arrayWithArray:fetchedObjects];
  memoryCandidates = self->_memoryCandidates;
  self->_memoryCandidates = v11;

  v13 = MEMORY[0x1E695DF70];
  fetchedObjects2 = [suggestionResultCopy fetchedObjects];
  v15 = [v13 arrayWithArray:fetchedObjects2];
  featuredPhotoCandidates = self->_featuredPhotoCandidates;
  self->_featuredPhotoCandidates = v15;

  if ([(PNTimelineDataSourceOptions *)self->_options includeAssets])
  {
    v17 = [(PNTimelineDataSource *)self _gatedKeyAssetByMemoryLocalIdentifierWithMemories:resultCopy];
    keyAssetByMemoryLocalIdentifier = self->_keyAssetByMemoryLocalIdentifier;
    self->_keyAssetByMemoryLocalIdentifier = v17;

    v19 = [(PNTimelineDataSource *)self _gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:suggestionResultCopy];
    keyAssetByFeaturedPhotoLocalIdentifier = self->_keyAssetByFeaturedPhotoLocalIdentifier;
    self->_keyAssetByFeaturedPhotoLocalIdentifier = v19;

    featuredPhotoCandidates = [(PNTimelineDataSource *)self featuredPhotoCandidates];
    v22 = [(PNTimelineDataSource *)self _gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:featuredPhotoCandidates];
    suggestedCropByFeaturedPhotoLocalIdentifier = self->_suggestedCropByFeaturedPhotoLocalIdentifier;
    self->_suggestedCropByFeaturedPhotoLocalIdentifier = v22;
  }
}

- (void)_initializeWithForceEntryUUID:(id)d
{
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  photoLibrary = [(PNTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v7 = [MEMORY[0x1E69788F0] localIdentifierWithUUID:dCopy];
  v8 = MEMORY[0x1E6978650];
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v8 fetchAssetCollectionsWithLocalIdentifiers:v9 options:librarySpecificFetchOptions];
  featuredMemories = self->_featuredMemories;
  self->_featuredMemories = v10;

  if ([(PHFetchResult *)self->_featuredMemories count])
  {
    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1C6F5C000, v12, OS_LOG_TYPE_DEFAULT, "Using forced memory with uuid: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E6978840]);
  }

  else
  {
    photoLibrary2 = [(PNTimelineDataSource *)self photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    [librarySpecificFetchOptions2 setFetchLimit:1];
    [librarySpecificFetchOptions2 setWantsIncrementalChangeDetails:0];
    dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", dCopy];
    [librarySpecificFetchOptions2 setPredicate:dCopy];

    v13 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions2];
    if ([v13 count])
    {
      v17 = PLMemoriesGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = dCopy;
        _os_log_impl(&dword_1C6F5C000, v17, OS_LOG_TYPE_DEFAULT, "Using forced suggestion with uuid: %@", buf, 0xCu);
      }
    }

    librarySpecificFetchOptions = librarySpecificFetchOptions2;
  }

  [(PNTimelineDataSource *)self _initializeFeaturedCandidatesWithMemoryResult:self->_featuredMemories suggestionResult:v13];
  if (!-[PHFetchResult count](self->_featuredMemories, "count") && ![v13 count])
  {
    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1C6F5C000, v18, OS_LOG_TYPE_ERROR, "Forced entry was not found: %@", buf, 0xCu);
    }
  }
}

- (PNTimelineDataSource)initWithAssetIdentifiers:(id)identifiers widgetIdentifier:(id)identifier widgetSize:(CGSize)size photoLibrary:(id)library
{
  height = size.height;
  width = size.width;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  libraryCopy = library;
  v31.receiver = self;
  v31.super_class = PNTimelineDataSource;
  v14 = [(PNTimelineDataSource *)&v31 init];
  if (v14)
  {
    height = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v14->_options;
    v14->_options = height;

    objc_storeWeak(&v14->_photoLibrary, libraryCopy);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v14->_filteredContent;
    v14->_filteredContent = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memoryCandidates = v14->_memoryCandidates;
    v14->_memoryCandidates = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    featuredPhotoCandidates = v14->_featuredPhotoCandidates;
    v14->_featuredPhotoCandidates = v21;

    v23 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = [(PNTimelineDataSource *)v14 photoLibrary];
    v25 = [v23 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v14->_featuredMemories;
    v14->_featuredMemories = v25;

    v27 = [(PNTimelineDataSource *)v14 _fetchAssetsWithLocalIdentifiers:identifiersCopy];
    v28 = [[PNWidgetAssetsSuggester alloc] initWithAssets:v27 photoLibrary:libraryCopy widgetIdentifier:identifierCopy];
    [(PNWidgetAssetsSuggester *)v28 removePreviousSuggestions];
    createSuggestions = [(PNWidgetAssetsSuggester *)v28 createSuggestions];
    [(PNTimelineDataSource *)v14 _initializeAssets:v27];
  }

  return v14;
}

- (PNTimelineDataSource)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier widgetSize:(CGSize)size photoLibrary:(id)library
{
  height = size.height;
  width = size.width;
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  widgetIdentifierCopy = widgetIdentifier;
  libraryCopy = library;
  v35.receiver = self;
  v35.super_class = PNTimelineDataSource;
  v15 = [(PNTimelineDataSource *)&v35 init];
  if (v15)
  {
    height = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v15->_options;
    v15->_options = height;

    objc_storeWeak(&v15->_photoLibrary, libraryCopy);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v15->_filteredContent;
    v15->_filteredContent = v18;

    v15->_sourceType = 1;
    objc_storeStrong(&v15->_sourceIdentifier, identifier);
    v20 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = [(PNTimelineDataSource *)v15 photoLibrary];
    v22 = [v20 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v15->_featuredMemories;
    v15->_featuredMemories = v22;

    v24 = [MEMORY[0x1E695DF00] now];
    v25 = [[PNWidgetAlbumSuggester alloc] initWithAlbumLocalIdentifier:identifierCopy widgetIdentifier:widgetIdentifierCopy photoLibrary:libraryCopy];
    [(PNWidgetAlbumSuggester *)v25 removeSuggestionsNotRelevantForDate:v24];
    suggestions = [(PNWidgetAlbumSuggester *)v25 suggestions];
    [(PNTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:suggestions];
    if (![(NSMutableArray *)v15->_featuredPhotoCandidates count])
    {
      v27 = PLMemoriesGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = identifierCopy;
        _os_log_impl(&dword_1C6F5C000, v27, OS_LOG_TYPE_DEFAULT, "No suggestions for album %@, generating new", buf, 0xCu);
      }

      v28 = [(PNWidgetAlbumSuggester *)v25 updatedSuggestionLocalIdentifiersForDate:v24 numberOfSuggestions:16];
      suggestions2 = [(PNWidgetAlbumSuggester *)v25 suggestions];

      [(PNTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:suggestions2];
      suggestions = suggestions2;
    }

    v30 = PLMemoriesGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier = v15->_sourceIdentifier;
      sourceType = v15->_sourceType;
      v33 = [suggestions count];
      *buf = 138413570;
      v37 = sourceIdentifier;
      v38 = 2112;
      v39 = widgetIdentifierCopy;
      v40 = 1024;
      v41 = sourceType;
      v42 = 1024;
      v43 = v33;
      v44 = 2048;
      v45 = width;
      v46 = 2048;
      v47 = height;
      _os_log_impl(&dword_1C6F5C000, v30, OS_LOG_TYPE_DEFAULT, "Initialized source id %@, widget id %@, type %d, with %d suggestions for widgetSize:{%.2f, %.2f}", buf, 0x36u);
    }
  }

  return v15;
}

- (PNTimelineDataSource)initWithPhotoLibrary:(id)library options:(id)options
{
  v45 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  optionsCopy = options;
  v40.receiver = self;
  v40.super_class = PNTimelineDataSource;
  v8 = [(PNTimelineDataSource *)&v40 init];
  if (v8)
  {
    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [optionsCopy widgetSize];
      v11 = v10;
      [optionsCopy widgetSize];
      *buf = 134218240;
      v42 = v11;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_DEFAULT, "Prepare TimelineDataSource for WidgetSize:{%.2f, %.2f}:", buf, 0x16u);
    }

    objc_storeWeak(&v8->_photoLibrary, libraryCopy);
    objc_storeStrong(&v8->_options, options);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v8->_filteredContent;
    v8->_filteredContent = v13;

    v15 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:libraryCopy];
    userFeedbackCalculator = v8->_userFeedbackCalculator;
    v8->_userFeedbackCalculator = v15;

    if (PFOSVariantHasInternalUI())
    {
      v17 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
      v18 = [v17 stringForKey:@"forceWidgetEntryUUID"];
    }

    else
    {
      v18 = 0;
    }

    if ([v18 length])
    {
      [(PNTimelineDataSource *)v8 _initializeWithForceEntryUUID:v18];
    }

    else
    {
      if (PLIsFeaturedContentAllowed())
      {
        v19 = [(PNTimelineDataSource *)v8 _fetchMemoriesWithFeaturedState:1];
        objc_storeStrong(&v8->_featuredMemories, v19);
        if ([optionsCopy includeSuggestions])
        {
          v20 = [(PNTimelineDataSource *)v8 _fetchSuggestionsWithFeaturedState:1];
          v21 = PLMemoriesGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v19 count];
            v23 = [v20 count];
            *buf = 134218240;
            v42 = v22;
            v43 = 2048;
            v44 = v23;
            _os_log_impl(&dword_1C6F5C000, v21, OS_LOG_TYPE_DEFAULT, "%lu memories and %lu suggestions are featured", buf, 0x16u);
          }
        }

        else
        {
          v21 = PLMemoriesGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v19 count];
            *buf = 134217984;
            v42 = v32;
            _os_log_impl(&dword_1C6F5C000, v21, OS_LOG_TYPE_DEFAULT, "%lu memories featured with no suggestions", buf, 0xCu);
          }

          v20 = 0;
        }

        [(PNTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:v19 suggestionResult:v20];
        v33 = [(NSMutableArray *)v8->_memoryCandidates count];
        if (!(v33 + [(NSMutableArray *)v8->_featuredPhotoCandidates count]))
        {
          _fetchFallbackMemoriesAndSetFeatured = [(PNTimelineDataSource *)v8 _fetchFallbackMemoriesAndSetFeatured];
          objc_storeStrong(&v8->_featuredMemories, _fetchFallbackMemoriesAndSetFeatured);
          if ([optionsCopy includeSuggestions])
          {
            _fetchFallbackSuggestionsAndSetFeatured = [(PNTimelineDataSource *)v8 _fetchFallbackSuggestionsAndSetFeatured];
          }

          else
          {
            _fetchFallbackSuggestionsAndSetFeatured = 0;
          }

          [(PNTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:_fetchFallbackMemoriesAndSetFeatured suggestionResult:_fetchFallbackSuggestionsAndSetFeatured];
        }

        v36 = PLMemoriesGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(NSMutableArray *)v8->_memoryCandidates count];
          v38 = [(NSMutableArray *)v8->_featuredPhotoCandidates count];
          *buf = 134218240;
          v42 = v37;
          v43 = 2048;
          v44 = v38;
          _os_log_impl(&dword_1C6F5C000, v36, OS_LOG_TYPE_DEFAULT, "Used For Scheduling - Memories:%lu, Suggestions:%lu\n", buf, 0x16u);
        }
      }

      else
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        memoryCandidates = v8->_memoryCandidates;
        v8->_memoryCandidates = v24;

        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        featuredPhotoCandidates = v8->_featuredPhotoCandidates;
        v8->_featuredPhotoCandidates = v26;

        v28 = objc_alloc(MEMORY[0x1E69788E0]);
        photoLibrary = [(PNTimelineDataSource *)v8 photoLibrary];
        v30 = [v28 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
        featuredMemories = v8->_featuredMemories;
        v8->_featuredMemories = v30;

        v19 = PLMemoriesGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C6F5C000, v19, OS_LOG_TYPE_DEFAULT, "Featured Content is disabled", buf, 2u);
        }
      }
    }
  }

  return v8;
}

- (PNTimelineDataSource)initWithPhotoLibrary:(id)library forWidgetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  libraryCopy = library;
  height = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
  v9 = [(PNTimelineDataSource *)self initWithPhotoLibrary:libraryCopy options:height];

  return v9;
}

@end