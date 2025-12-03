@interface PXTimelineDataSource
- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)collection personUUIDs:(id)ds asset:(id)asset;
- (PHPhotoLibrary)photoLibrary;
- (PXTimelineDataSource)init;
- (PXTimelineDataSource)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier widgetSize:(CGSize)size photoLibrary:(id)library;
- (PXTimelineDataSource)initWithAssetIdentifiers:(id)identifiers widgetIdentifier:(id)identifier widgetSize:(CGSize)size photoLibrary:(id)library;
- (PXTimelineDataSource)initWithPhotoLibrary:(id)library forWidgetSize:(CGSize)size;
- (PXTimelineDataSource)initWithPhotoLibrary:(id)library options:(id)options;
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

@implementation PXTimelineDataSource

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)suggestions
{
  v85 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  [(PXTimelineDataSourceOptions *)self->_options widgetSize];
  v7 = v6;
  v8 = v5;
  v9 = v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || ![suggestionsCopy count])
  {
    v67 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.f, %.f}", *&v7, *&v8];
    v10 = PLTimelineGetLog();
    v11 = os_signpost_id_make_with_pointer(v10, self);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Gate - SuggestedCrop", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v13 = PLMemoriesGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v77 = 0x3FD999999999999ALL;
      v78 = 2112;
      v79 = v62;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Start filtering suggestions with minimum cropScore:%f, widgetSize:%@", buf, 0x16u);
    }

    v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v61 = suggestionsCopy;
    obj = suggestionsCopy;
    v14 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v73;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v73 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v72 + 1) + 8 * i);
          localIdentifier = [v18 localIdentifier];
          keyAssetByFeaturedPhotoLocalIdentifier = [(PXTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
          v21 = [keyAssetByFeaturedPhotoLocalIdentifier objectForKeyedSubscript:localIdentifier];

          if (v21)
          {
            v22 = [PXTimelineCrop cropForAsset:v21 withTargetSize:v7, v8];
            [v67 setObject:v22 forKeyedSubscript:localIdentifier];
            [v22 cropScore];
            if (v23 < 0.4)
            {
              v24 = [[PXTimelineDataItem alloc] initWithAssetCollection:v18 suggestedCrop:v22];
              [v63 addObject:v24];
            }
          }

          else
          {
            v22 = PLMemoriesGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v77 = localIdentifier;
              _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "Suggestion key asset is nil: %{public}@", buf, 0xCu);
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v15);
    }

    v25 = PLMemoriesGetLog();
    v26 = v63;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v63 count];
      *buf = 134217984;
      v77 = v27;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "Found %lu suggestions with low crop score", buf, 0xCu);
    }

    if ([v63 count])
    {
      v28 = v63;
      v29 = vcvtd_n_f64_u64([obj count], 2uLL);
      v30 = v28;
      if ([v28 count] > v29)
      {
        v31 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"suggestedCrop.cropScore" ascending:1];
        v83 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
        [v28 sortUsingDescriptors:v32];

        v30 = [v28 subarrayWithRange:{0, v29}];
      }

      v33 = PLMemoriesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v28 count];
        v35 = [v30 count];
        *buf = 134218240;
        v77 = v34;
        v78 = 2048;
        v79 = v35;
        _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_DEFAULT, "BadCrop - Suggestions:%lu, Removed:%lu\n", buf, 0x16u);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v36 = v30;
      v37 = [v36 countByEnumeratingWithState:&v68 objects:v82 count:16];
      if (v37)
      {
        v38 = v37;
        v65 = *v69;
        v64 = v36;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v69 != v65)
            {
              objc_enumerationMutation(v64);
            }

            v40 = *(*(&v68 + 1) + 8 * j);
            assetCollection = [v40 assetCollection];
            localIdentifier2 = [assetCollection localIdentifier];
            keyAssetByFeaturedPhotoLocalIdentifier2 = [(PXTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
            v44 = [keyAssetByFeaturedPhotoLocalIdentifier2 objectForKeyedSubscript:localIdentifier2];

            sourceType = [(PXTimelineDataSource *)self sourceType];
            v46 = [PXTimelineEntry alloc];
            if (sourceType == 1)
            {
              sourceIdentifier = [(PXTimelineDataSource *)self sourceIdentifier];
              suggestedCrop = [v40 suggestedCrop];
              v49 = [(PXTimelineEntry *)v46 initWithAlbumFeaturedPhoto:assetCollection localAlbumIdentifier:sourceIdentifier andFeaturedPhotoKeyAsset:v44 suggestedCrop:suggestedCrop];
            }

            else
            {
              sourceIdentifier = [v40 suggestedCrop];
              v49 = [(PXTimelineEntry *)v46 initWithFeaturedPhoto:assetCollection andFeaturedPhotoKeyAsset:v44 suggestedCrop:sourceIdentifier];
            }

            [(PXTimelineEntry *)v49 setRejectReason:3];
            if (v49)
            {
              filteredContent = [(PXTimelineDataSource *)self filteredContent];
              [filteredContent addObject:v49];
            }

            [obj removeObject:assetCollection];
            [v67 setObject:0 forKeyedSubscript:localIdentifier2];
            v51 = PLMemoriesGetLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier3 = [assetCollection localIdentifier];
              suggestedCrop2 = [v40 suggestedCrop];
              *buf = 138543874;
              v77 = localIdentifier3;
              v78 = 2114;
              v79 = v62;
              v80 = 2114;
              v81 = suggestedCrop2;
              _os_log_impl(&dword_1A3C1C000, v51, OS_LOG_TYPE_DEFAULT, "Removed:%{public}@ displaySize:%{public}@ suggestedCrop:%{public}@", buf, 0x20u);
            }
          }

          v36 = v64;
          v38 = [v64 countByEnumeratingWithState:&v68 objects:v82 count:16];
        }

        while (v38);
      }

      v54 = PLTimelineGetLog();
      v55 = os_signpost_id_make_with_pointer(v54, self);
      if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v56 = v55;
        if (os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v54, OS_SIGNPOST_INTERVAL_END, v56, "Gate - SuggestedCrop", " enableTelemetry=YES ", buf, 2u);
        }
      }

      suggestionsCopy = v61;
      v26 = v63;
    }

    else
    {
      v57 = PLTimelineGetLog();
      v58 = os_signpost_id_make_with_pointer(v57, self);
      if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v59 = v58;
        if (os_signpost_enabled(v57))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v57, OS_SIGNPOST_INTERVAL_END, v59, "Gate - SuggestedCrop", " enableTelemetry=YES ", buf, 2u);
        }
      }

      v36 = PLMemoriesGetLog();
      suggestionsCopy = v61;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEFAULT, "BadCrop - Suggestions:0, Removed:0\n", buf, 2u);
      }
    }
  }

  return v67;
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
    userFeedbackCalculator = [(PXTimelineDataSource *)self userFeedbackCalculator];
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
    userFeedbackCalculator2 = [(PXTimelineDataSource *)self userFeedbackCalculator];
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
  v55 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = PLTimelineGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Fetch - MomentsForAssets", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v42 = librarySpecificFetchOptions;
  v11 = [MEMORY[0x1E6978928] fetchMomentUUIDByAssetUUIDForAssets:assetsCopy options:librarySpecificFetchOptions];
  allValues = [v11 allValues];
  ptr = self;
  photoLibrary2 = [(PXTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  [librarySpecificFetchOptions2 setFetchLimit:{objc_msgSend(allValues, "count")}];
  v41 = allValues;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", allValues];
  [librarySpecificFetchOptions2 setPredicate:v15];

  v40 = librarySpecificFetchOptions2;
  v16 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:librarySpecificFetchOptions2];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        uuid = [v23 uuid];
        [v17 setObject:v23 forKeyedSubscript:uuid];
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v20);
  }

  v39 = v18;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = assetsCopy;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v44 + 1) + 8 * j);
        uuid2 = [v30 uuid];
        v32 = [v11 objectForKeyedSubscript:uuid2];

        v33 = [v17 objectForKeyedSubscript:v32];
        uuid3 = [v30 uuid];
        [v8 setObject:v33 forKeyedSubscript:uuid3];
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v27);
  }

  v35 = PLTimelineGetLog();
  v36 = os_signpost_id_make_with_pointer(v35, ptr);
  if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = v36;
    if (os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v35, OS_SIGNPOST_INTERVAL_END, v37, "Fetch - MomentsForAssets", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v8;
}

- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)suggestions
{
  v76 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([suggestionsCopy count])
  {
    v5 = PLTimelineGetLog();
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Fetch & Gate - SuggestionKeyAssets", " enableTelemetry=YES ", buf, 2u);
      }
    }

    keyAssetFetchOptions = [(PXTimelineDataSource *)self keyAssetFetchOptions];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = keyAssetFetchOptions;
    v60 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:suggestionsCopy options:keyAssetFetchOptions];
    allValues = [v60 allValues];
    v58 = [(PXTimelineDataSource *)self _fetchMomentByAssetUUIDForAssets:allValues];
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allValues, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = allValues;
    v10 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v67;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(obj);
          }

          uuid = [*(*(&v66 + 1) + 8 * i) uuid];
          [v61 addObject:uuid];
        }

        v11 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v11);
    }

    v15 = MEMORY[0x1E6978980];
    photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v57 = [v15 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v61 options:librarySpecificFetchOptions];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v51 = suggestionsCopy;
    v55 = suggestionsCopy;
    v18 = [v55 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v18)
    {
      v19 = v18;
      v59 = *v63;
      selfCopy = self;
      do
      {
        v20 = 0;
        do
        {
          if (*v63 != v59)
          {
            objc_enumerationMutation(v55);
          }

          v21 = *(*(&v62 + 1) + 8 * v20);
          uuid2 = [v21 uuid];
          v23 = [v60 objectForKeyedSubscript:uuid2];

          if (v23)
          {
            uuid3 = [v23 uuid];
            v25 = [v58 objectForKeyedSubscript:uuid3];

            uuid4 = [v23 uuid];
            v27 = [v57 objectForKeyedSubscript:uuid4];
            v28 = v27;
            v29 = MEMORY[0x1E695E0F0];
            if (v27)
            {
              v29 = v27;
            }

            v30 = v29;

            if ([(PXTimelineDataSource *)self sourceType]== 1)
            {
LABEL_21:
              localIdentifier = [v21 localIdentifier];
              [v54 setObject:v23 forKeyedSubscript:localIdentifier];
            }

            else
            {
              if ([MEMORY[0x1E69C1520] assetIsSafeForWidgetDisplay:v23])
              {
                if ([objc_opt_class() _momentIsLocationTypeAtWork:v25])
                {
                  v33 = 2;
                }

                else
                {
                  if ([(PXTimelineDataSource *)self _isAcceptableUserFeedbackForAssetCollection:v21 personUUIDs:v30 asset:v23])
                  {
                    goto LABEL_21;
                  }

                  v33 = 4;
                }
              }

              else
              {
                v33 = 1;
              }

              [v53 addObject:v21];
              sourceType = [(PXTimelineDataSource *)self sourceType];
              v35 = [PXTimelineEntry alloc];
              v36 = v35;
              if (sourceType == 1)
              {
                sourceIdentifier = [(PXTimelineDataSource *)self sourceIdentifier];
                localIdentifier = [(PXTimelineEntry *)v36 initWithAlbumFeaturedPhoto:v21 localAlbumIdentifier:sourceIdentifier andFeaturedPhotoKeyAsset:v23 suggestedCrop:0];

                self = selfCopy;
              }

              else
              {
                localIdentifier = [(PXTimelineEntry *)v35 initWithFeaturedPhoto:v21 andFeaturedPhotoKeyAsset:v23];
              }

              [(PXTimelineEntry *)localIdentifier setRejectReason:v33];
              if (localIdentifier)
              {
                filteredContent = [(PXTimelineDataSource *)self filteredContent];
                [filteredContent addObject:localIdentifier];
              }

              v39 = PLMemoriesGetLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier2 = [v21 localIdentifier];
                v41 = [PXTimelineEntry descriptionForRejectReason:v33];
                *buf = 138543618;
                v71 = localIdentifier2;
                v72 = 2114;
                v73 = v41;
                _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_DEFAULT, "Suggestion %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);

                self = selfCopy;
              }
            }

            goto LABEL_37;
          }

          v25 = PLMemoriesGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            localIdentifier3 = [v21 localIdentifier];
            *buf = 138543362;
            v71 = localIdentifier3;
            _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "Suggestion key asset is nil: %{public}@", buf, 0xCu);
          }

LABEL_37:

          ++v20;
        }

        while (v19 != v20);
        v42 = [v55 countByEnumeratingWithState:&v62 objects:v74 count:16];
        v19 = v42;
      }

      while (v42);
    }

    v43 = PLMemoriesGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v53 count];
      *buf = 134217984;
      v71 = v44;
      _os_log_impl(&dword_1A3C1C000, v43, OS_LOG_TYPE_DEFAULT, "NotSafeForDisplay - Suggestions:%lu\n", buf, 0xCu);
    }

    featuredPhotoCandidates = [(PXTimelineDataSource *)self featuredPhotoCandidates];
    [featuredPhotoCandidates removeObjectsInArray:v53];

    v46 = PLTimelineGetLog();
    v47 = os_signpost_id_make_with_pointer(v46, self);
    suggestionsCopy = v51;
    if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v47;
      if (os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v46, OS_SIGNPOST_INTERVAL_END, v48, "Fetch & Gate - SuggestionKeyAssets", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  return v54;
}

- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)memories
{
  v59 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([memoriesCopy count])
  {
    v5 = PLTimelineGetLog();
    v6 = os_signpost_id_make_with_pointer(v5, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Fetch & Gate - MemoryKeyAssets", " enableTelemetry=YES ", buf, 2u);
      }
    }

    keyAssetFetchOptions = [(PXTimelineDataSource *)self keyAssetFetchOptions];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = memoriesCopy;
    obj = memoriesCopy;
    v42 = keyAssetFetchOptions;
    v46 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v46)
    {
      v45 = *v50;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0 options:{keyAssetFetchOptions, v40}];
          firstObject = [v11 firstObject];
          v13 = firstObject;
          if (firstObject)
          {
            v48 = v11;
            uuid = [firstObject uuid];
            photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
            librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

            px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
            [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

            v18 = MEMORY[0x1E6978980];
            v57 = uuid;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
            v20 = [v18 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v19 options:librarySpecificFetchOptions];

            v21 = [v20 objectForKeyedSubscript:uuid];
            v22 = v21;
            v23 = MEMORY[0x1E695E0F0];
            if (v21)
            {
              v23 = v21;
            }

            v24 = v23;

            v25 = 1;
            v47 = v24;
            if ([MEMORY[0x1E69C1520] assetIsSafeForWidgetDisplay:v13])
            {
              if ([(PXTimelineDataSource *)self _isAcceptableUserFeedbackForAssetCollection:v10 personUUIDs:v24 asset:v13])
              {
                localIdentifier = [v10 localIdentifier];
                [v41 setObject:v13 forKeyedSubscript:localIdentifier];
LABEL_24:

                v11 = v48;
                goto LABEL_25;
              }

              v25 = 4;
            }

            selfCopy = self;
            [v43 addObject:v10];
            localIdentifier = [[PXTimelineEntry alloc] initWithMemory:v10 andMemoryKeyAsset:v13];
            [(PXTimelineEntry *)localIdentifier setRejectReason:v25];
            if (localIdentifier)
            {
              filteredContent = [(PXTimelineDataSource *)self filteredContent];
              [filteredContent addObject:localIdentifier];
            }

            v30 = PLMemoriesGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier2 = [v10 localIdentifier];
              v32 = [PXTimelineEntry descriptionForRejectReason:v25];
              *buf = 138543618;
              v54 = localIdentifier2;
              v55 = 2114;
              v56 = v32;
              _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "Memory %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);
            }

            self = selfCopy;
            keyAssetFetchOptions = v42;
            goto LABEL_24;
          }

          uuid = PLMemoriesGetLog();
          if (os_log_type_enabled(uuid, OS_LOG_TYPE_ERROR))
          {
            localIdentifier3 = [v10 localIdentifier];
            *buf = 138543362;
            v54 = localIdentifier3;
            _os_log_impl(&dword_1A3C1C000, uuid, OS_LOG_TYPE_ERROR, "Memory key asset is nil: %{public}@", buf, 0xCu);
          }

LABEL_25:
        }

        v46 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v46);
    }

    v33 = PLMemoriesGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v43 count];
      *buf = 134217984;
      v54 = v34;
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_DEFAULT, "NotSafeForDisplay - Memories:%lu\n", buf, 0xCu);
    }

    memoryCandidates = [(PXTimelineDataSource *)self memoryCandidates];
    [memoryCandidates removeObjectsInArray:v43];

    v36 = PLTimelineGetLog();
    v37 = os_signpost_id_make_with_pointer(v36, self);
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v38 = v37;
      if (os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v36, OS_SIGNPOST_INTERVAL_END, v38, "Fetch & Gate - MemoryKeyAssets", " enableTelemetry=YES ", buf, 2u);
      }
    }

    memoriesCopy = v40;
  }

  return v41;
}

- (id)keyAssetFetchOptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
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
  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [v4 fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];

  return v8;
}

- (id)_fetchFallbackSuggestionsAndSetFeatured
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PLTimelineGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Fetch - FallbackSuggestionsAndSetFeatured", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v6 = [(PXTimelineDataSource *)self _fetchSuggestionsWithFeaturedState:0 fetchLimit:10];
  if ([v6 count])
  {
    photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PXTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke;
    v19[3] = &unk_1E774C648;
    v8 = v6;
    v20 = v8;
    v18 = 0;
    v9 = [photoLibrary performChangesAndWait:v19 error:&v18];
    v10 = v18;

    if ((v9 & 1) == 0)
    {
      v11 = PLMemoriesGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Setting featureState on suggestions - failed: %@", buf, 0xCu);
      }
    }

    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 count];
      *buf = 67109120;
      LODWORD(v22) = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Using fallback: %d suggestions", buf, 8u);
    }
  }

  else
  {
    v10 = PLMemoriesGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "No fallback suggestions", buf, 2u);
    }
  }

  v14 = PLTimelineGetLog();
  v15 = os_signpost_id_make_with_pointer(v14, self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v16, "Fetch - FallbackSuggestionsAndSetFeatured", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v6;
}

void __63__PXTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke(uint64_t a1)
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = PLTimelineGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Fetch - FallbackMemoriesAndSetFeatured", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v6 = [(PXTimelineDataSource *)self _fetchMemoriesWithFeaturedState:0 fetchLimit:3];
  if ([v6 count])
  {
    photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PXTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke;
    v19[3] = &unk_1E774C648;
    v8 = v6;
    v20 = v8;
    v18 = 0;
    v9 = [photoLibrary performChangesAndWait:v19 error:&v18];
    v10 = v18;

    if ((v9 & 1) == 0)
    {
      v11 = PLMemoriesGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Setting featureState on memories - failed: %@", buf, 0xCu);
      }
    }

    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 count];
      *buf = 67109120;
      LODWORD(v22) = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Using fallback: %d memories", buf, 8u);
    }
  }

  else
  {
    v10 = PLMemoriesGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "No fallback memories", buf, 2u);
    }
  }

  v14 = PLTimelineGetLog();
  v15 = os_signpost_id_make_with_pointer(v14, self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v16, "Fetch - FallbackMemoriesAndSetFeatured", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v6;
}

void __60__PXTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke(uint64_t a1)
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
  v7 = PLTimelineGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetch - SuggestionsWithFeaturedState", " enableTelemetry=YES ", buf, 2u);
    }
  }

  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:limit];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  _defaultSortDescriptorsForSuggestions = [(PXTimelineDataSource *)self _defaultSortDescriptorsForSuggestions];
  [librarySpecificFetchOptions setSortDescriptors:_defaultSortDescriptorsForSuggestions];

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d || %K == %d)", @"state", 1, @"state", 0];
  [v13 addObject:v14];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 302];
  [v13 addObject:v15];

  v16 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];
  if (([v16 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 306];
    [v13 addObject:v17];
  }

  v18 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  [librarySpecificFetchOptions setPredicate:v18];

  v19 = [MEMORY[0x1E6978AE8] fetchWidgetSuggestionsWithFeaturedState:stateCopy withOptions:librarySpecificFetchOptions];
  v20 = PLTimelineGetLog();
  v21 = os_signpost_id_make_with_pointer(v20, self);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, OS_SIGNPOST_INTERVAL_END, v22, "Fetch - SuggestionsWithFeaturedState", " enableTelemetry=YES ", v24, 2u);
    }
  }

  return v19;
}

- (id)_fetchMemoriesWithFeaturedState:(int64_t)state fetchLimit:(unint64_t)limit
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = PLTimelineGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetch - MemoriesWithFeaturedState", " enableTelemetry=YES ", buf, 2u);
    }
  }

  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:limit];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  _defaultSortDescriptorsForMemories = [(PXTimelineDataSource *)self _defaultSortDescriptorsForMemories];
  [librarySpecificFetchOptions setSortDescriptors:_defaultSortDescriptorsForMemories];

  state = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", state];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO AND userCreated == NO"];
  v15 = MEMORY[0x1E696AB28];
  v24[0] = state;
  v24[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];
  [librarySpecificFetchOptions setPredicate:v17];

  v18 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v19 = PLTimelineGetLog();
  v20 = os_signpost_id_make_with_pointer(v19, self);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_END, v21, "Fetch - MemoriesWithFeaturedState", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v18;
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
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Candidate For Scheduling - Memories:%lu, Suggestions:%lu\n", &v24, 0x16u);
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

  if ([(PXTimelineDataSourceOptions *)self->_options includeAssets])
  {
    v17 = [(PXTimelineDataSource *)self _gatedKeyAssetByMemoryLocalIdentifierWithMemories:resultCopy];
    keyAssetByMemoryLocalIdentifier = self->_keyAssetByMemoryLocalIdentifier;
    self->_keyAssetByMemoryLocalIdentifier = v17;

    v19 = [(PXTimelineDataSource *)self _gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:suggestionResultCopy];
    keyAssetByFeaturedPhotoLocalIdentifier = self->_keyAssetByFeaturedPhotoLocalIdentifier;
    self->_keyAssetByFeaturedPhotoLocalIdentifier = v19;

    featuredPhotoCandidates = [(PXTimelineDataSource *)self featuredPhotoCandidates];
    v22 = [(PXTimelineDataSource *)self _gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:featuredPhotoCandidates];
    suggestedCropByFeaturedPhotoLocalIdentifier = self->_suggestedCropByFeaturedPhotoLocalIdentifier;
    self->_suggestedCropByFeaturedPhotoLocalIdentifier = v22;
  }
}

- (void)_initializeWithForceEntryUUID:(id)d
{
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  photoLibrary = [(PXTimelineDataSource *)self photoLibrary];
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
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Using forced memory with uuid: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E6978840]);
  }

  else
  {
    photoLibrary2 = [(PXTimelineDataSource *)self photoLibrary];
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
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "Using forced suggestion with uuid: %@", buf, 0xCu);
      }
    }

    librarySpecificFetchOptions = librarySpecificFetchOptions2;
  }

  [(PXTimelineDataSource *)self _initializeFeaturedCandidatesWithMemoryResult:self->_featuredMemories suggestionResult:v13];
  if (!-[PHFetchResult count](self->_featuredMemories, "count") && ![v13 count])
  {
    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Forced entry was not found: %@", buf, 0xCu);
    }
  }
}

- (PXTimelineDataSource)initWithAssetIdentifiers:(id)identifiers widgetIdentifier:(id)identifier widgetSize:(CGSize)size photoLibrary:(id)library
{
  height = size.height;
  width = size.width;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  libraryCopy = library;
  v31.receiver = self;
  v31.super_class = PXTimelineDataSource;
  v14 = [(PXTimelineDataSource *)&v31 init];
  if (v14)
  {
    height = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
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
    photoLibrary = [(PXTimelineDataSource *)v14 photoLibrary];
    v25 = [v23 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v14->_featuredMemories;
    v14->_featuredMemories = v25;

    v27 = [(PXTimelineDataSource *)v14 _fetchAssetsWithLocalIdentifiers:identifiersCopy];
    v28 = [objc_alloc(MEMORY[0x1E69C15D8]) initWithAssets:v27 photoLibrary:libraryCopy widgetIdentifier:identifierCopy];
    [v28 removePreviousSuggestions];
    createSuggestions = [v28 createSuggestions];
    [(PXTimelineDataSource *)v14 _initializeAssets:v27];
  }

  return v14;
}

- (PXTimelineDataSource)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier widgetSize:(CGSize)size photoLibrary:(id)library
{
  height = size.height;
  width = size.width;
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  widgetIdentifierCopy = widgetIdentifier;
  libraryCopy = library;
  v35.receiver = self;
  v35.super_class = PXTimelineDataSource;
  v15 = [(PXTimelineDataSource *)&v35 init];
  if (v15)
  {
    height = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v15->_options;
    v15->_options = height;

    objc_storeWeak(&v15->_photoLibrary, libraryCopy);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v15->_filteredContent;
    v15->_filteredContent = v18;

    v15->_sourceType = 1;
    objc_storeStrong(&v15->_sourceIdentifier, identifier);
    v20 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = [(PXTimelineDataSource *)v15 photoLibrary];
    v22 = [v20 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v15->_featuredMemories;
    v15->_featuredMemories = v22;

    v24 = [MEMORY[0x1E695DF00] now];
    v25 = [objc_alloc(MEMORY[0x1E69C15D0]) initWithAlbumLocalIdentifier:identifierCopy widgetIdentifier:widgetIdentifierCopy photoLibrary:libraryCopy];
    [v25 removeSuggestionsNotRelevantForDate:v24];
    suggestions = [v25 suggestions];
    [(PXTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:suggestions];
    if (![(NSMutableArray *)v15->_featuredPhotoCandidates count])
    {
      v27 = PLMemoriesGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = identifierCopy;
        _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEFAULT, "No suggestions for album %@, generating new", buf, 0xCu);
      }

      v28 = [v25 updatedSuggestionLocalIdentifiersForDate:v24 numberOfSuggestions:*MEMORY[0x1E69C1738]];
      suggestions2 = [v25 suggestions];

      [(PXTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:suggestions2];
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
      _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "Initialized source id %@, widget id %@, type %d, with %d suggestions for widgetSize:{%.2f, %.2f}", buf, 0x36u);
    }
  }

  return v15;
}

- (PXTimelineDataSource)initWithPhotoLibrary:(id)library options:(id)options
{
  v51 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = PXTimelineDataSource;
  v8 = [(PXTimelineDataSource *)&v46 init];
  if (v8)
  {
    v9 = PLTimelineGetLog();
    v10 = os_signpost_id_make_with_pointer(v9, v8);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Initialize - TimelineDataSource", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [optionsCopy widgetSize];
      v14 = v13;
      [optionsCopy widgetSize];
      *buf = 134218240;
      v48 = v14;
      v49 = 2048;
      v50 = v15;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Prepare TimelineDataSource for WidgetSize:{%.2f, %.2f}:", buf, 0x16u);
    }

    objc_storeWeak(&v8->_photoLibrary, libraryCopy);
    objc_storeStrong(&v8->_options, options);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v8->_filteredContent;
    v8->_filteredContent = v16;

    v18 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:libraryCopy];
    userFeedbackCalculator = v8->_userFeedbackCalculator;
    v8->_userFeedbackCalculator = v18;

    if (PFOSVariantHasInternalUI())
    {
      v20 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
      v21 = [v20 stringForKey:@"forceWidgetEntryUUID"];
    }

    else
    {
      v21 = 0;
    }

    if ([v21 length])
    {
      [(PXTimelineDataSource *)v8 _initializeWithForceEntryUUID:v21];
    }

    else
    {
      if (PLIsFeaturedContentAllowed())
      {
        v22 = [(PXTimelineDataSource *)v8 _fetchMemoriesWithFeaturedState:1];
        objc_storeStrong(&v8->_featuredMemories, v22);
        if ([optionsCopy includeSuggestions])
        {
          v23 = [(PXTimelineDataSource *)v8 _fetchSuggestionsWithFeaturedState:1];
          v24 = PLMemoriesGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v22 count];
            v26 = [v23 count];
            *buf = 134218240;
            v48 = v25;
            v49 = 2048;
            v50 = v26;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "%lu memories and %lu suggestions are featured", buf, 0x16u);
          }
        }

        else
        {
          v24 = PLMemoriesGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v22 count];
            *buf = 134217984;
            v48 = v35;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "%lu memories featured with no suggestions", buf, 0xCu);
          }

          v23 = 0;
        }

        [(PXTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:v22 suggestionResult:v23];
        v36 = [(NSMutableArray *)v8->_memoryCandidates count];
        if (!(v36 + [(NSMutableArray *)v8->_featuredPhotoCandidates count]))
        {
          _fetchFallbackMemoriesAndSetFeatured = [(PXTimelineDataSource *)v8 _fetchFallbackMemoriesAndSetFeatured];
          objc_storeStrong(&v8->_featuredMemories, _fetchFallbackMemoriesAndSetFeatured);
          if ([optionsCopy includeSuggestions])
          {
            _fetchFallbackSuggestionsAndSetFeatured = [(PXTimelineDataSource *)v8 _fetchFallbackSuggestionsAndSetFeatured];
          }

          else
          {
            _fetchFallbackSuggestionsAndSetFeatured = 0;
          }

          [(PXTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:_fetchFallbackMemoriesAndSetFeatured suggestionResult:_fetchFallbackSuggestionsAndSetFeatured];
        }

        v39 = PLMemoriesGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(NSMutableArray *)v8->_memoryCandidates count];
          v41 = [(NSMutableArray *)v8->_featuredPhotoCandidates count];
          *buf = 134218240;
          v48 = v40;
          v49 = 2048;
          v50 = v41;
          _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_DEFAULT, "Used For Scheduling - Memories:%lu, Suggestions:%lu\n", buf, 0x16u);
        }
      }

      else
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        memoryCandidates = v8->_memoryCandidates;
        v8->_memoryCandidates = v27;

        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        featuredPhotoCandidates = v8->_featuredPhotoCandidates;
        v8->_featuredPhotoCandidates = v29;

        v31 = objc_alloc(MEMORY[0x1E69788E0]);
        photoLibrary = [(PXTimelineDataSource *)v8 photoLibrary];
        v33 = [v31 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
        featuredMemories = v8->_featuredMemories;
        v8->_featuredMemories = v33;

        v22 = PLMemoriesGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Featured Content is disabled", buf, 2u);
        }
      }
    }

    v42 = PLTimelineGetLog();
    v43 = os_signpost_id_make_with_pointer(v42, v8);
    if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v44 = v43;
      if (os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v42, OS_SIGNPOST_INTERVAL_END, v44, "Initialize - TimelineDataSource", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  return v8;
}

- (PXTimelineDataSource)initWithPhotoLibrary:(id)library forWidgetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  libraryCopy = library;
  height = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
  v9 = [(PXTimelineDataSource *)self initWithPhotoLibrary:libraryCopy options:height];

  return v9;
}

- (PXTimelineDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTimelineDataSource.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXTimelineDataSource init]"}];

  abort();
}

@end