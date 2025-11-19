@interface PNTimelineDataSource
- (BOOL)_isAcceptableUserFeedbackForAssetCollection:(id)a3 personUUIDs:(id)a4 asset:(id)a5;
- (PHPhotoLibrary)photoLibrary;
- (PNTimelineDataSource)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6;
- (PNTimelineDataSource)initWithAssetIdentifiers:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6;
- (PNTimelineDataSource)initWithPhotoLibrary:(id)a3 forWidgetSize:(CGSize)a4;
- (PNTimelineDataSource)initWithPhotoLibrary:(id)a3 options:(id)a4;
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

@implementation PNTimelineDataSource

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)_gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PNTimelineDataSourceOptions *)self->_options widgetSize];
  v7 = v6;
  v8 = v5;
  v9 = v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || ![v4 count])
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
    v52 = v4;
    obj = v4;
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
          v16 = [v15 localIdentifier];
          v17 = [(PNTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
          v18 = [v17 objectForKeyedSubscript:v16];

          if (v18)
          {
            v19 = [PNTimelineCrop cropForAsset:v18 withTargetSize:v7, v8];
            [v58 setObject:v19 forKeyedSubscript:v16];
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
              v68 = v16;
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
            v38 = [v37 assetCollection];
            v39 = [v38 localIdentifier];
            v40 = [(PNTimelineDataSource *)self keyAssetByFeaturedPhotoLocalIdentifier];
            v41 = [v40 objectForKeyedSubscript:v39];

            v42 = [(PNTimelineDataSource *)self sourceType];
            v43 = [PNTimelineEntry alloc];
            if (v42 == 1)
            {
              v44 = [(PNTimelineDataSource *)self sourceIdentifier];
              v45 = [v37 suggestedCrop];
              v46 = [(PNTimelineEntry *)v43 initWithAlbumFeaturedPhoto:v38 localAlbumIdentifier:v44 andFeaturedPhotoKeyAsset:v41 suggestedCrop:v45];
            }

            else
            {
              v44 = [v37 suggestedCrop];
              v46 = [(PNTimelineEntry *)v43 initWithFeaturedPhoto:v38 andFeaturedPhotoKeyAsset:v41 suggestedCrop:v44];
            }

            [(PNTimelineEntry *)v46 setRejectReason:3];
            if (v46)
            {
              v47 = [(PNTimelineDataSource *)self filteredContent];
              [v47 addObject:v46];
            }

            [obj removeObject:v38];
            [v58 setObject:0 forKeyedSubscript:v39];
            v48 = PLMemoriesGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [v38 localIdentifier];
              v50 = [v37 suggestedCrop];
              *buf = 138543874;
              v68 = v49;
              v69 = 2114;
              v70 = v53;
              v71 = 2114;
              v72 = v50;
              _os_log_impl(&dword_1C6F5C000, v48, OS_LOG_TYPE_DEFAULT, "Removed:%{public}@ displaySize:%{public}@ suggestedCrop:%{public}@", buf, 0x20u);
            }
          }

          v33 = v55;
          v35 = [v55 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v35);
      }

      v4 = v52;
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
    v13 = [(PNTimelineDataSource *)self userFeedbackCalculator];
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
    v14 = [(PNTimelineDataSource *)self userFeedbackCalculator];
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
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PNTimelineDataSource *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v36 = v7;
  v8 = [MEMORY[0x1E6978928] fetchMomentUUIDByAssetUUIDForAssets:v4 options:v7];
  v9 = [v8 allValues];
  v10 = [(PNTimelineDataSource *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];

  [v11 setFetchLimit:{objc_msgSend(v9, "count")}];
  v35 = v9;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v9];
  [v11 setPredicate:v12];

  v34 = v11;
  v13 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v11];
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
        v21 = [v20 uuid];
        [v14 setObject:v20 forKeyedSubscript:v21];
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
  v22 = v4;
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
        v28 = [v27 uuid];
        v29 = [v8 objectForKeyedSubscript:v28];

        v30 = [v14 objectForKeyedSubscript:v29];
        v31 = [v27 uuid];
        [v5 setObject:v30 forKeyedSubscript:v31];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  return v5;
}

- (id)_gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 count])
  {
    v5 = [(PNTimelineDataSource *)self keyAssetFetchOptions];
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = v5;
    v54 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v4 options:v5];
    v6 = [v54 allValues];
    v52 = [(PNTimelineDataSource *)self _fetchMomentByAssetUUIDForAssets:v6];
    v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v6;
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

          v11 = [*(*(&v60 + 1) + 8 * i) uuid];
          [v55 addObject:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v8);
    }

    v12 = MEMORY[0x1E6978980];
    v13 = [(PNTimelineDataSource *)self photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];
    v51 = [v12 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v55 options:v14];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = v4;
    v49 = v4;
    v15 = [v49 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v53 = *v57;
      v46 = self;
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
          v19 = [v18 uuid];
          v20 = [v54 objectForKeyedSubscript:v19];

          if (v20)
          {
            v21 = [v20 uuid];
            v22 = [v52 objectForKeyedSubscript:v21];

            v23 = [v20 uuid];
            v24 = [v51 objectForKeyedSubscript:v23];
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
              v28 = [v18 localIdentifier];
              [v48 setObject:v20 forKeyedSubscript:v28];
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
              v31 = [(PNTimelineDataSource *)self sourceType];
              v32 = [PNTimelineEntry alloc];
              v33 = v32;
              if (v31 == 1)
              {
                v34 = [(PNTimelineDataSource *)self sourceIdentifier];
                v28 = [(PNTimelineEntry *)v33 initWithAlbumFeaturedPhoto:v18 localAlbumIdentifier:v34 andFeaturedPhotoKeyAsset:v20 suggestedCrop:0];

                self = v46;
              }

              else
              {
                v28 = [(PNTimelineEntry *)v32 initWithFeaturedPhoto:v18 andFeaturedPhotoKeyAsset:v20];
              }

              [(PNTimelineEntry *)v28 setRejectReason:v30];
              if (v28)
              {
                v35 = [(PNTimelineDataSource *)self filteredContent];
                [v35 addObject:v28];
              }

              v36 = PLMemoriesGetLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [v18 localIdentifier];
                v38 = [PNTimelineEntry descriptionForRejectReason:v30];
                *buf = 138543618;
                v65 = v37;
                v66 = 2114;
                v67 = v38;
                _os_log_impl(&dword_1C6F5C000, v36, OS_LOG_TYPE_DEFAULT, "Suggestion %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);

                self = v46;
              }
            }

            goto LABEL_34;
          }

          v22 = PLMemoriesGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v29 = [v18 localIdentifier];
            *buf = 138543362;
            v65 = v29;
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

    v42 = [(PNTimelineDataSource *)self featuredPhotoCandidates];
    [v42 removeObjectsInArray:v47];

    v4 = v45;
  }

  return v48;
}

- (id)_gatedKeyAssetByMemoryLocalIdentifierWithMemories:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (![v4 count])
  {
    goto LABEL_27;
  }

  v5 = [(PNTimelineDataSource *)self keyAssetFetchOptions];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = v4;
  obj = v4;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v39)
  {
    goto LABEL_24;
  }

  v38 = *v43;
  v35 = v5;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v43 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * i);
      v8 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v7 referenceAsset:0 options:{v5, v33}];
      v9 = [v8 firstObject];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 uuid];
        v12 = [(PNTimelineDataSource *)self photoLibrary];
        v13 = [v12 librarySpecificFetchOptions];

        [v13 setIncludedDetectionTypes:&unk_1F46E5540];
        v14 = MEMORY[0x1E6978980];
        v50 = v11;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        v16 = [v14 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v15 options:v13];

        v41 = v16;
        v17 = [v16 objectForKeyedSubscript:v11];
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
            v22 = [v7 localIdentifier];
            [v34 setObject:v10 forKeyedSubscript:v22];
LABEL_21:

            goto LABEL_22;
          }

          v21 = 4;
        }

        v24 = self;
        [v36 addObject:v7];
        v22 = [[PNTimelineEntry alloc] initWithMemory:v7 andMemoryKeyAsset:v10];
        [(PNTimelineEntry *)v22 setRejectReason:v21];
        if (v22)
        {
          v25 = [(PNTimelineDataSource *)self filteredContent];
          [v25 addObject:v22];
        }

        v26 = PLMemoriesGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v7 localIdentifier];
          v28 = [PNTimelineEntry descriptionForRejectReason:v21];
          *buf = 138543618;
          v47 = v27;
          v48 = 2114;
          v49 = v28;
          _os_log_impl(&dword_1C6F5C000, v26, OS_LOG_TYPE_DEFAULT, "Memory %{public}@ is filtered from widget timeline with reason:%{public}@", buf, 0x16u);
        }

        self = v24;
        v5 = v35;
        goto LABEL_21;
      }

      v11 = PLMemoriesGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = [v7 localIdentifier];
        *buf = 138543362;
        v47 = v23;
        _os_log_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_ERROR, "Memory key asset is nil: %{public}@", buf, 0xCu);
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

  v31 = [(PNTimelineDataSource *)self memoryCandidates];
  [v31 removeObjectsInArray:v36];

  v4 = v33;
LABEL_27:

  return v34;
}

- (id)keyAssetFetchOptions
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [(PNTimelineDataSource *)self photoLibrary];
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
  v6 = [(PNTimelineDataSource *)self photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];
  v8 = [v4 fetchAssetsWithLocalIdentifiers:v5 options:v7];

  return v8;
}

- (id)_fetchFallbackSuggestionsAndSetFeatured
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PNTimelineDataSource *)self _fetchSuggestionsWithFeaturedState:0 fetchLimit:10];
  if ([v3 count])
  {
    v4 = [(PNTimelineDataSource *)self photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PNTimelineDataSource__fetchFallbackSuggestionsAndSetFeatured__block_invoke;
    v13[3] = &unk_1E82A2730;
    v5 = v3;
    v14 = v5;
    v12 = 0;
    v6 = [v4 performChangesAndWait:v13 error:&v12];
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
    v4 = [(PNTimelineDataSource *)self photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PNTimelineDataSource__fetchFallbackMemoriesAndSetFeatured__block_invoke;
    v13[3] = &unk_1E82A2730;
    v5 = v3;
    v14 = v5;
    v12 = 0;
    v6 = [v4 performChangesAndWait:v13 error:&v12];
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

- (id)_fetchSuggestionsWithFeaturedState:(unsigned __int16)a3 fetchLimit:(unint64_t)a4
{
  v5 = a3;
  v7 = [(PNTimelineDataSource *)self photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];
  [v8 setFetchLimit:a4];
  [v8 setWantsIncrementalChangeDetails:0];
  v9 = [(PNTimelineDataSource *)self _defaultSortDescriptorsForSuggestions];
  [v8 setSortDescriptors:v9];

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
  [v8 setPredicate:v16];

  v17 = [MEMORY[0x1E6978AE8] fetchWidgetSuggestionsWithFeaturedState:v5 withOptions:v8];

  return v17;
}

- (id)_fetchMemoriesWithFeaturedState:(int64_t)a3 fetchLimit:(unint64_t)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = [(PNTimelineDataSource *)self photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  [v8 setFetchLimit:a4];
  [v8 setWantsIncrementalChangeDetails:1];
  [v8 setIncludePendingMemories:1];
  v9 = [(PNTimelineDataSource *)self _defaultSortDescriptorsForMemories];
  [v8 setSortDescriptors:v9];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", a3];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO AND userCreated == NO"];
  v12 = MEMORY[0x1E696AB28];
  v17[0] = v10;
  v17[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];
  [v8 setPredicate:v14];

  v15 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];

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

- (void)_initializeAssets:(id)a3
{
  v4 = [a3 fetchedObjects];
  assets = self->_assets;
  self->_assets = v4;

  MEMORY[0x1EEE66BB8](v4, assets, v5);
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
    _os_log_impl(&dword_1C6F5C000, v8, OS_LOG_TYPE_DEFAULT, "Candidate For Scheduling - Memories:%lu, Suggestions:%lu\n", &v24, 0x16u);
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

  if ([(PNTimelineDataSourceOptions *)self->_options includeAssets])
  {
    v17 = [(PNTimelineDataSource *)self _gatedKeyAssetByMemoryLocalIdentifierWithMemories:v6];
    keyAssetByMemoryLocalIdentifier = self->_keyAssetByMemoryLocalIdentifier;
    self->_keyAssetByMemoryLocalIdentifier = v17;

    v19 = [(PNTimelineDataSource *)self _gatedKeyAssetBySuggestionLocalIdentifierWithSuggestions:v7];
    keyAssetByFeaturedPhotoLocalIdentifier = self->_keyAssetByFeaturedPhotoLocalIdentifier;
    self->_keyAssetByFeaturedPhotoLocalIdentifier = v19;

    v21 = [(PNTimelineDataSource *)self featuredPhotoCandidates];
    v22 = [(PNTimelineDataSource *)self _gatedCropSpecBySuggestionLocalIdentiferFromSuggestions:v21];
    suggestedCropByFeaturedPhotoLocalIdentifier = self->_suggestedCropByFeaturedPhotoLocalIdentifier;
    self->_suggestedCropByFeaturedPhotoLocalIdentifier = v22;
  }
}

- (void)_initializeWithForceEntryUUID:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNTimelineDataSource *)self photoLibrary];
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
      _os_log_impl(&dword_1C6F5C000, v12, OS_LOG_TYPE_DEFAULT, "Using forced memory with uuid: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x1E6978840]);
  }

  else
  {
    v14 = [(PNTimelineDataSource *)self photoLibrary];
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
        _os_log_impl(&dword_1C6F5C000, v17, OS_LOG_TYPE_DEFAULT, "Using forced suggestion with uuid: %@", buf, 0xCu);
      }
    }

    v6 = v15;
  }

  [(PNTimelineDataSource *)self _initializeFeaturedCandidatesWithMemoryResult:self->_featuredMemories suggestionResult:v13];
  if (!-[PHFetchResult count](self->_featuredMemories, "count") && ![v13 count])
  {
    v18 = PLMemoriesGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1C6F5C000, v18, OS_LOG_TYPE_ERROR, "Forced entry was not found: %@", buf, 0xCu);
    }
  }
}

- (PNTimelineDataSource)initWithAssetIdentifiers:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = PNTimelineDataSource;
  v14 = [(PNTimelineDataSource *)&v31 init];
  if (v14)
  {
    v15 = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
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
    v24 = [(PNTimelineDataSource *)v14 photoLibrary];
    v25 = [v23 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v24 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v14->_featuredMemories;
    v14->_featuredMemories = v25;

    v27 = [(PNTimelineDataSource *)v14 _fetchAssetsWithLocalIdentifiers:v11];
    v28 = [[PNWidgetAssetsSuggester alloc] initWithAssets:v27 photoLibrary:v13 widgetIdentifier:v12];
    [(PNWidgetAssetsSuggester *)v28 removePreviousSuggestions];
    v29 = [(PNWidgetAssetsSuggester *)v28 createSuggestions];
    [(PNTimelineDataSource *)v14 _initializeAssets:v27];
  }

  return v14;
}

- (PNTimelineDataSource)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 widgetSize:(CGSize)a5 photoLibrary:(id)a6
{
  height = a5.height;
  width = a5.width;
  v48 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = PNTimelineDataSource;
  v15 = [(PNTimelineDataSource *)&v35 init];
  if (v15)
  {
    v16 = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
    options = v15->_options;
    v15->_options = v16;

    objc_storeWeak(&v15->_photoLibrary, v14);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v15->_filteredContent;
    v15->_filteredContent = v18;

    v15->_sourceType = 1;
    objc_storeStrong(&v15->_sourceIdentifier, a3);
    v20 = objc_alloc(MEMORY[0x1E69788E0]);
    v21 = [(PNTimelineDataSource *)v15 photoLibrary];
    v22 = [v20 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v21 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    featuredMemories = v15->_featuredMemories;
    v15->_featuredMemories = v22;

    v24 = [MEMORY[0x1E695DF00] now];
    v25 = [[PNWidgetAlbumSuggester alloc] initWithAlbumLocalIdentifier:v12 widgetIdentifier:v13 photoLibrary:v14];
    [(PNWidgetAlbumSuggester *)v25 removeSuggestionsNotRelevantForDate:v24];
    v26 = [(PNWidgetAlbumSuggester *)v25 suggestions];
    [(PNTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:v26];
    if (![(NSMutableArray *)v15->_featuredPhotoCandidates count])
    {
      v27 = PLMemoriesGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v12;
        _os_log_impl(&dword_1C6F5C000, v27, OS_LOG_TYPE_DEFAULT, "No suggestions for album %@, generating new", buf, 0xCu);
      }

      v28 = [(PNWidgetAlbumSuggester *)v25 updatedSuggestionLocalIdentifiersForDate:v24 numberOfSuggestions:16];
      v29 = [(PNWidgetAlbumSuggester *)v25 suggestions];

      [(PNTimelineDataSource *)v15 _initializeFeaturedCandidatesWithMemoryResult:0 suggestionResult:v29];
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
      _os_log_impl(&dword_1C6F5C000, v30, OS_LOG_TYPE_DEFAULT, "Initialized source id %@, widget id %@, type %d, with %d suggestions for widgetSize:{%.2f, %.2f}", buf, 0x36u);
    }
  }

  return v15;
}

- (PNTimelineDataSource)initWithPhotoLibrary:(id)a3 options:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = PNTimelineDataSource;
  v8 = [(PNTimelineDataSource *)&v40 init];
  if (v8)
  {
    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [v7 widgetSize];
      v11 = v10;
      [v7 widgetSize];
      *buf = 134218240;
      v42 = v11;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_DEFAULT, "Prepare TimelineDataSource for WidgetSize:{%.2f, %.2f}:", buf, 0x16u);
    }

    objc_storeWeak(&v8->_photoLibrary, v6);
    objc_storeStrong(&v8->_options, a4);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filteredContent = v8->_filteredContent;
    v8->_filteredContent = v13;

    v15 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:v6];
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
        if ([v7 includeSuggestions])
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
          v34 = [(PNTimelineDataSource *)v8 _fetchFallbackMemoriesAndSetFeatured];
          objc_storeStrong(&v8->_featuredMemories, v34);
          if ([v7 includeSuggestions])
          {
            v35 = [(PNTimelineDataSource *)v8 _fetchFallbackSuggestionsAndSetFeatured];
          }

          else
          {
            v35 = 0;
          }

          [(PNTimelineDataSource *)v8 _initializeFeaturedCandidatesWithMemoryResult:v34 suggestionResult:v35];
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
        v29 = [(PNTimelineDataSource *)v8 photoLibrary];
        v30 = [v28 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v29 fetchType:*MEMORY[0x1E6978DB8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
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

- (PNTimelineDataSource)initWithPhotoLibrary:(id)a3 forWidgetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[PNTimelineDataSourceOptions alloc] initForWidgetWithSize:width, height];
  v9 = [(PNTimelineDataSource *)self initWithPhotoLibrary:v7 options:v8];

  return v9;
}

@end