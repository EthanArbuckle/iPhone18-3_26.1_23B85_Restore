@interface PXTimelineDataSource
- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)a3 personUUIDs:(id)a4 asset:(id)a5;
- (PHPhotoLibrary)photoLibrary;
- (PXTimelineDataSource)init;
- (PXTimelineDataSource)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6;
- (PXTimelineDataSource)initWithAssetIdentifiers:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6;
- (PXTimelineDataSource)initWithPhotoLibrary:(id)a3 forWidgetSize:(CGSize)a4;
- (PXTimelineDataSource)initWithPhotoLibrary:(id)a3 options:(id)a4;
- (id)_defaultSortDescriptorsForMemories;
- (id)_defaultSortDescriptorsForSuggestions;
- (id)_fetchAssetsWithLocalIdentifiers:(id)a3;
- (id)_fetchFallbackMemoriesAndSetFeatured;
- (id)_fetchFallbackSuggestionsAndSetFeatured;
- (id)_fetchMemoriesWithFeaturedState:(int64_t)a3 fetchLimit:(unint64_t)a4;
- (id)_fetchMomentByAssetUUIDForAssets:(id)a3;
- (id)_fetchSuggestionsWithFeaturedState:(unsigned __int16)a3 fetchLimit:(unint64_t)a4;
- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)a3;
- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)a3;
- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)a3;
- (id)keyAssetFetchOptions;
- (void)_initializeAssets:(id)a3;
- (void)_initializeFeaturedCandidatesWithMemoryResult:(id)a3 suggestionResult:(id)a4;
- (void)_initializeWithForceEntryUUID:(id)a3;
@end

@implementation PXTimelineDataSource

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PXTimelineDataSourceOptions *)self->_options widgetSize];
  v7 = v6;
  v8 = v5;
  v9 = v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || ![v4 count])
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
    v61 = v4;
    obj = v4;
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
          v19 = [v18 localIdentifier];
          v20 = [(PXTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
          v21 = [v20 objectForKeyedSubscript:v19];

          if (v21)
          {
            v22 = [PXTimelineCrop cropForAsset:v21 withTargetSize:v7, v8];
            [v67 setObject:v22 forKeyedSubscript:v19];
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
              v77 = v19;
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
            v41 = [v40 assetCollection];
            v42 = [v41 localIdentifier];
            v43 = [(PXTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
            v44 = [v43 objectForKeyedSubscript:v42];

            v45 = [(PXTimelineDataSource *)self sourceType];
            v46 = [PXTimelineEntry alloc];
            if (v45 == 1)
            {
              v47 = [(PXTimelineDataSource *)self sourceIdentifier];
              v48 = [v40 suggestedCrop];
              v49 = [(PXTimelineEntry *)v46 initWithAlbumFeaturedPhoto:v41 localAlbumIdentifier:v47 andFeaturedPhotoKeyAsset:v44 suggestedCrop:v48];
            }

            else
            {
              v47 = [v40 suggestedCrop];
              v49 = [(PXTimelineEntry *)v46 initWithFeaturedPhoto:v41 andFeaturedPhotoKeyAsset:v44 suggestedCrop:v47];
            }

            [(PXTimelineEntry *)v49 setRejectReason:3];
            if (v49)
            {
              v50 = [(PXTimelineDataSource *)self filteredContent];
              [v50 addObject:v49];
            }

            [obj removeObject:v41];
            [v67 setObject:0 forKeyedSubscript:v42];
            v51 = PLMemoriesGetLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = [v41 localIdentifier];
              v53 = [v40 suggestedCrop];
              *buf = 138543874;
              v77 = v52;
              v78 = 2114;
              v79 = v62;
              v80 = 2114;
              v81 = v53;
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

      v4 = v61;
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
      v4 = v61;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v36, OS_LOG_TYPE_DEFAULT, "BadCrop - Suggestions:0, Removed:0\n", buf, 2u);
      }
    }
  }

  return v67;
}

- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)a3 personUUIDs:(id)a4 asset:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 uuid];
  v22 = v11;
  v23[0] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(PXTimelineDataSource *)self userFeedbackCalculator];
    v21 = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v13 scoreForAssetUUIDs:v14 personsUUIDsByAssetUUIDs:v12];
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

    v13 = [v8 blockableFeatures];
    v14 = [(PXTimelineDataSource *)self userFeedbackCalculator];
    v17 = [v10 uuid];
    [v14 scoreForAssetUUIDs:MEMORY[0x1E695E0F0] keyAssetUUID:v17 personsUUIDsByAssetUUIDs:v12 memoryFeatures:v13];
    v16 = v18;
  }

LABEL_7:
  v19 = [MEMORY[0x1E6978B08] score:v16 meetsScoreThreshold:*MEMORY[0x1E6978FC8]];

  return v19;
}

- (id)_fetchMomentByAssetUUIDForAssets:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v9 = [(PXTimelineDataSource *)self photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v42 = v10;
  v11 = [MEMORY[0x1E6978928] fetchMomentUUIDByAssetUUIDForAssets:v4 options:v10];
  v12 = [v11 allValues];
  ptr = self;
  v13 = [(PXTimelineDataSource *)self photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  [v14 setFetchLimit:{objc_msgSend(v12, "count")}];
  v41 = v12;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v12];
  [v14 setPredicate:v15];

  v40 = v14;
  v16 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v14];
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
        v24 = [v23 uuid];
        [v17 setObject:v23 forKeyedSubscript:v24];
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
  v25 = v4;
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
        v31 = [v30 uuid];
        v32 = [v11 objectForKeyedSubscript:v31];

        v33 = [v17 objectForKeyedSubscript:v32];
        v34 = [v30 uuid];
        [v8 setObject:v33 forKeyedSubscript:v34];
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

- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 count])
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

    v8 = [(PXTimelineDataSource *)self keyAssetFetchOptions];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = v8;
    v60 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v4 options:v8];
    v9 = [v60 allValues];
    v58 = [(PXTimelineDataSource *)self _fetchMomentByAssetUUIDForAssets:v9];
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v9;
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

          v14 = [*(*(&v66 + 1) + 8 * i) uuid];
          [v61 addObject:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v11);
    }

    v15 = MEMORY[0x1E6978980];
    v16 = [(PXTimelineDataSource *)self photoLibrary];
    v17 = [v16 librarySpecificFetchOptions];
    v57 = [v15 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v61 options:v17];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v51 = v4;
    v55 = v4;
    v18 = [v55 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v18)
    {
      v19 = v18;
      v59 = *v63;
      v52 = self;
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
          v22 = [v21 uuid];
          v23 = [v60 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v23 uuid];
            v25 = [v58 objectForKeyedSubscript:v24];

            v26 = [v23 uuid];
            v27 = [v57 objectForKeyedSubscript:v26];
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
              v31 = [v21 localIdentifier];
              [v54 setObject:v23 forKeyedSubscript:v31];
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
              v34 = [(PXTimelineDataSource *)self sourceType];
              v35 = [PXTimelineEntry alloc];
              v36 = v35;
              if (v34 == 1)
              {
                v37 = [(PXTimelineDataSource *)self sourceIdentifier];
                v31 = [(PXTimelineEntry *)v36 initWithAlbumFeaturedPhoto:v21 localAlbumIdentifier:v37 andFeaturedPhotoKeyAsset:v23 suggestedCrop:0];

                self = v52;
              }

              else
              {
                v31 = [(PXTimelineEntry *)v35 initWithFeaturedPhoto:v21 andFeaturedPhotoKeyAsset:v23];
              }

              [(PXTimelineEntry *)v31 setRejectReason:v33];
              if (v31)
              {
                v38 = [(PXTimelineDataSource *)self filteredContent];
                [v38 addObject:v31];
              }

              v39 = PLMemoriesGetLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v21 localIdentifier];
                v41 = [PXTimelineEntry descriptionForRejectReason:v33];
                *buf = 138543618;
                v71 = v40;
                v72 = 2114;
                v73 = v41;
                _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_DEFAULT, "Suggestion %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);

                self = v52;
              }
            }

            goto LABEL_37;
          }

          v25 = PLMemoriesGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v32 = [v21 localIdentifier];
            *buf = 138543362;
            v71 = v32;
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

    v45 = [(PXTimelineDataSource *)self featuredPhotoCandidates];
    [v45 removeObjectsInArray:v53];

    v46 = PLTimelineGetLog();
    v47 = os_signpost_id_make_with_pointer(v46, self);
    v4 = v51;
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

- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 count])
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

    v8 = [(PXTimelineDataSource *)self keyAssetFetchOptions];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v4;
    obj = v4;
    v42 = v8;
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
          v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0 options:{v8, v40}];
          v12 = [v11 firstObject];
          v13 = v12;
          if (v12)
          {
            v48 = v11;
            v14 = [v12 uuid];
            v15 = [(PXTimelineDataSource *)self photoLibrary];
            v16 = [v15 librarySpecificFetchOptions];

            v17 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
            [v16 setIncludedDetectionTypes:v17];

            v18 = MEMORY[0x1E6978980];
            v57 = v14;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
            v20 = [v18 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v19 options:v16];

            v21 = [v20 objectForKeyedSubscript:v14];
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
                v26 = [v10 localIdentifier];
                [v41 setObject:v13 forKeyedSubscript:v26];
LABEL_24:

                v11 = v48;
                goto LABEL_25;
              }

              v25 = 4;
            }

            v28 = self;
            [v43 addObject:v10];
            v26 = [[PXTimelineEntry alloc] initWithMemory:v10 andMemoryKeyAsset:v13];
            [(PXTimelineEntry *)v26 setRejectReason:v25];
            if (v26)
            {
              v29 = [(PXTimelineDataSource *)self filteredContent];
              [v29 addObject:v26];
            }

            v30 = PLMemoriesGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v10 localIdentifier];
              v32 = [PXTimelineEntry descriptionForRejectReason:v25];
              *buf = 138543618;
              v54 = v31;
              v55 = 2114;
              v56 = v32;
              _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "Memory %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);
            }

            self = v28;
            v8 = v42;
            goto LABEL_24;
          }

          v14 = PLMemoriesGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v27 = [v10 localIdentifier];
            *buf = 138543362;
            v54 = v27;
            _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Memory key asset is nil: %{public}@", buf, 0xCu);
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

    v35 = [(PXTimelineDataSource *)self memoryCandidates];
    [v35 removeObjectsInArray:v43];

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

    v4 = v40;
  }

  return v41;
}

- (id)keyAssetFetchOptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [(PXTimelineDataSource *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = *MEMORY[0x1E6978CF0];
  v7[0] = *MEMORY[0x1E6978C68];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [v3 setFetchPropertySets:v5];

  [v3 setFetchLimit:1];
  [v3 setWantsIncrementalChangeDetails:0];
  [v3 setIncludeGuestAssets:1];

  return v3;
}

- (id)_fetchAssetsWithLocalIdentifiers:(id)a3
{
  v4 = MEMORY[0x1E6978630];
  v5 = a3;
  v6 = [(PXTimelineDataSource *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];
  v8 = [v4 fetchAssetsWithLocalIdentifiers:v5 options:v7];

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
    v7 = [(PXTimelineDataSource *)self photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PXTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke;
    v19[3] = &unk_1E774C648;
    v8 = v6;
    v20 = v8;
    v18 = 0;
    v9 = [v7 performChangesAndWait:v19 error:&v18];
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
    v7 = [(PXTimelineDataSource *)self photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PXTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke;
    v19[3] = &unk_1E774C648;
    v8 = v6;
    v20 = v8;
    v18 = 0;
    v9 = [v7 performChangesAndWait:v19 error:&v18];
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

- (id)_fetchSuggestionsWithFeaturedState:(unsigned __int16)a3 fetchLimit:(unint64_t)a4
{
  v5 = a3;
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

  v10 = [(PXTimelineDataSource *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  [v11 setFetchLimit:a4];
  [v11 setWantsIncrementalChangeDetails:0];
  v12 = [(PXTimelineDataSource *)self _defaultSortDescriptorsForSuggestions];
  [v11 setSortDescriptors:v12];

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d || %K == %d)", @"state", 1, @"state", 0];
  [v13 addObject:v14];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 302];
  [v13 addObject:v15];

  v16 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v10];
  if (([v16 showUnsavedSyndicatedContentInFeaturedPhotos] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"subtype", 306];
    [v13 addObject:v17];
  }

  v18 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  [v11 setPredicate:v18];

  v19 = [MEMORY[0x1E6978AE8] fetchWidgetSuggestionsWithFeaturedState:v5 withOptions:v11];
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

- (id)_fetchMemoriesWithFeaturedState:(int64_t)a3 fetchLimit:(unint64_t)a4
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

  v10 = [(PXTimelineDataSource *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];

  [v11 setFetchLimit:a4];
  [v11 setWantsIncrementalChangeDetails:1];
  [v11 setIncludePendingMemories:1];
  v12 = [(PXTimelineDataSource *)self _defaultSortDescriptorsForMemories];
  [v11 setSortDescriptors:v12];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", a3];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO AND userCreated == NO"];
  v15 = MEMORY[0x1E696AB28];
  v24[0] = v13;
  v24[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];
  [v11 setPredicate:v17];

  v18 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v11];
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

- (void)_initializeAssets:(id)a3
{
  v4 = [a3 fetchedObjects];
  assets = self->_assets;
  self->_assets = v4;
}

- (void)_initializeFeaturedCandidatesWithMemoryResult:(id)a3 suggestionResult:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLMemoriesGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218240;
    v25 = [v6 count];
    v26 = 2048;
    v27 = [v7 count];
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Candidate For Scheduling - Memories:%lu, Suggestions:%lu\n", &v24, 0x16u);
  }

  v9 = MEMORY[0x1E695DF70];
  v10 = [v6 fetchedObjects];
  v11 = [v9 arrayWithArray:v10];
  memoryCandidates = self->_memoryCandidates;
  self->_memoryCandidates = v11;

  v13 = MEMORY[0x1E695DF70];
  v14 = [v7 fetchedObjects];
  v15 = [v13 arrayWithArray:v14];
  featuredPhotoCandidates = self->_featuredPhotoCandidates;
  self->_featuredPhotoCandidates = v15;

  if ([(PXTimelineDataSourceOptions *)self->_options includeAssets])
  {
    v17 = [(PXTimelineDataSource *)self _gatedKeyAssetByMemoryLocalIdentifierWithMemories:v6];
    keyAssetByMemoryLocalIdentifier = self->_keyAssetByMemoryLocalIdentifier;
    self->_keyAssetByMemoryLocalIdentifier = v17;

    v19 = [(PXTimelineDataSource *)self _gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:v7];
    keyAssetByFeaturedPhotoLocalIdentifier = self->_keyAssetByFeaturedPhotoLocalIdentifier;
    self->_keyAssetByFeaturedPhotoLocalIdentifier = v19;

    v21 = [(PXTimelineDataSource *)self featuredPhotoCandidates];
    v22 = [(PXTimelineDataSource *)self _gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:v21];
    suggestedCropByFeaturedPhotoLocalIdentifier = self->_suggestedCropByFeaturedPhotoLocalIdentifier;
    self->_suggestedCropByFeaturedPhotoLocalIdentifier = v22;
  }
}

- (void)_initializeWithForceEntryUUID:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXTimelineDataSource *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setFetchLimit:1];
  [v6 setWantsIncrementalChangeDetails:0];
  [v6 setIncludePendingMemories:1];
  v7 = [MEMORY[0x1E69788F0] localIdentifierWithUUID:v4];
  v8 = MEMORY[0x1E6978650];
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v8 fetchAssetCollectionsWithLocalIdentifiers:v9 options:v6];
  featuredMemories = self->_featuredMemories;
  self->_featuredMemories = v10;

  if ([(PHFetchResult *)self->_featuredMemories count])
  {
    v12 = PLMemoriesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Using forced memory with uuid: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E6978840]);
  }

  else
  {
    v14 = [(PXTimelineDataSource *)self photoLibrary];
    v15 = [v14 librarySpecificFetchOptions];

    [v15 setFetchLimit:1];
    [v15 setWantsIncrementalChangeDetails:0];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", v4];
    [v15 setPredicate:v16];

    v13 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v15];
    if ([v13 count])
    {
      v17 = PLMemoriesGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "Using forced suggestion with uuid: %@", buf, 0xCu);
      }
    }

    v6 = v15;
  }

  [(PXTimelineDataSource *)self _initializeFeaturedCandidatesWithMemoryResult:self->_featuredMemories suggestionResult:v13];
  if (!-[PHFetchResult count](self->_featuredMemories, "count") && ![v13 count])
  {
    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Forced entry was not found: %@", buf, 0xCu);
    }
  }
}

- (PXTimelineDataSource)initWithAssetIdentifiers:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = PXTimelineDataSource;
  v14 = [(PXTimelineDataSource *)&v31 init];
  if (v14)
  {
    v15 = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v14->_options;
    v14->_options = v15;

    objc_storeWeak(&v14->_photoLibrary, v13);
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
    v24 = [(PXTimelineDataSource *)v14 photoLibrary];
    v25 = [v23 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v24 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v14->_featuredMemories;
    v14->_featuredMemories = v25;

    v27 = [(PXTimelineDataSource *)v14 _fetchAssetsWithLocalIdentifiers:v11];
    v28 = [objc_alloc(MEMORY[0x1E69C15D8]) initWithAssets:v27 photoLibrary:v13 widgetIdentifier:v12];
    [v28 removePreviousSuggestions];
    v29 = [v28 createSuggestions];
    [(PXTimelineDataSource *)v14 _initializeAssets:v27];
  }

  return v14;
}

- (PXTimelineDataSource)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6
{
  height = a5.height;
  width = a5.width;
  v48 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = PXTimelineDataSource;
  v15 = [(PXTimelineDataSource *)&v35 init];
  if (v15)
  {
    v16 = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v15->_options;
    v15->_options = v16;

    objc_storeWeak(&v15->_photoLibrary, v14);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v15->_filteredContent;
    v15->_filteredContent = v18;

    v15->_sourceType = 1;
    objc_storeStrong(&v15->_sourceIdentifier, a3);
    v20 = objc_alloc(MEMORY[0x1E69788E0]);
    v21 = [(PXTimelineDataSource *)v15 photoLibrary];
    v22 = [v20 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v21 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v15->_featuredMemories;
    v15->_featuredMemories = v22;

    v24 = [MEMORY[0x1E695DF00] now];
    v25 = [objc_alloc(MEMORY[0x1E69C15D0]) initWithAlbumLocalIdentifier:v12 widgetIdentifier:v13 photoLibrary:v14];
    [v25 removeSuggestionsNotRelevantForDate:v24];
    v26 = [v25 suggestions];
    [(PXTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:v26];
    if (![(NSMutableArray *)v15->_featuredPhotoCandidates count])
    {
      v27 = PLMemoriesGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v12;
        _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEFAULT, "No suggestions for album %@, generating new", buf, 0xCu);
      }

      v28 = [v25 updatedSuggestionLocalIdentifiersForDate:v24 numberOfSuggestions:*MEMORY[0x1E69C1738]];
      v29 = [v25 suggestions];

      [(PXTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:v29];
      v26 = v29;
    }

    v30 = PLMemoriesGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier = v15->_sourceIdentifier;
      sourceType = v15->_sourceType;
      v33 = [v26 count];
      *buf = 138413570;
      v37 = sourceIdentifier;
      v38 = 2112;
      v39 = v13;
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

- (PXTimelineDataSource)initWithPhotoLibrary:(id)a3 options:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      [v7 widgetSize];
      v14 = v13;
      [v7 widgetSize];
      *buf = 134218240;
      v48 = v14;
      v49 = 2048;
      v50 = v15;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Prepare TimelineDataSource for WidgetSize:{%.2f, %.2f}:", buf, 0x16u);
    }

    objc_storeWeak(&v8->_photoLibrary, v6);
    objc_storeStrong(&v8->_options, a4);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v8->_filteredContent;
    v8->_filteredContent = v16;

    v18 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:v6];
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
        if ([v7 includeSuggestions])
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
          v37 = [(PXTimelineDataSource *)v8 _fetchFallbackMemoriesAndSetFeatured];
          objc_storeStrong(&v8->_featuredMemories, v37);
          if ([v7 includeSuggestions])
          {
            v38 = [(PXTimelineDataSource *)v8 _fetchFallbackSuggestionsAndSetFeatured];
          }

          else
          {
            v38 = 0;
          }

          [(PXTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:v37 suggestionResult:v38];
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
        v32 = [(PXTimelineDataSource *)v8 photoLibrary];
        v33 = [v31 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v32 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
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

- (PXTimelineDataSource)initWithPhotoLibrary:(id)a3 forWidgetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[PXTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
  v9 = [(PXTimelineDataSource *)self initWithPhotoLibrary:v7 options:v8];

  return v9;
}

- (PXTimelineDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXTimelineDataSource.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXTimelineDataSource init]"}];

  abort();
}

@end