@interface PGRecentAestheticsSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4;
- (id)nextSuggestionWithProgress:(id)a3;
- (id)niceAssetsBetweenStartDate:(id)a3 andEndDate:(id)a4 matchingAssetUUID:(id)a5 progress:(id)a6;
- (id)reasonsForSuggestion:(id)a3;
- (id)suggestedAssetsInAssets:(id)a3;
- (id)suggestedAssetsInAssets:(id)a3 options:(id)a4;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (void)reset;
- (void)startSuggestingWithOptions:(id)a3;
@end

@implementation PGRecentAestheticsSuggester

- (id)reasonsForSuggestion:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [a3 keyAssets];
  v4 = [v3 firstObject];

  v5 = MEMORY[0x277CCACA8];
  [v4 overallAestheticScore];
  v7 = [v5 stringWithFormat:@"aesthetics = %.3f", v6];
  v8 = MEMORY[0x277CCACA8];
  [v4 curationScore];
  v10 = [v8 stringWithFormat:@"curation = %.3f", v9];
  v14[0] = v7;
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)suggestedAssetsInAssets:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:a3];
  v8 = [v6 maximumNumberOfSuggestions];

  if (v8 < [v7 count])
  {
    v9 = [v7 subarrayWithRange:{0, v8}];

    v7 = v9;
  }

  return v7;
}

- (id)suggestedAssetsInAssets:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 clsPeopleCount] || -[PGAbstractSuggester hasSuggestableScenesWithAsset:](self, "hasSuggestableScenesWithAsset:", v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v24[0] = v12;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"curationScore" ascending:0];
  v24[1] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v24[2] = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v24[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];

  v17 = [v5 sortedArrayUsingDescriptors:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)niceAssetsBetweenStartDate:(id)a3 andEndDate:(id)a4 matchingAssetUUID:(id)a5 progress:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _Block_copy(a6);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    v17 = [(PGAbstractSuggester *)self session];
    v18 = v17;
    if (!v17)
    {
      v16 = MEMORY[0x277CBEBF8];
LABEL_44:

      goto LABEL_45;
    }

    v43 = v17;
    v19 = [v17 loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v53 = v10;
      *&v53[8] = 2112;
      *&v53[10] = v11;
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Computing eligible nice assets between %@ and %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"overallAestheticScore >= %f", 0x3FE4CCCCCCCCCCCDLL];
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > %f", *MEMORY[0x277D3C768]];
    v22 = [objc_opt_class() noVideoPredicate];
    v44 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:1];
    v45 = v22;
    v46 = v21;
    v47 = v20;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, v21, v22, v44, 0}];
    if (v10)
    {
      v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", v10];
      [v23 addObject:v24];
    }

    if (v11)
    {
      v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", v11];
      [v23 addObject:v25];
    }

    v18 = v43;
    if (v12)
    {
      v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", v12];
      [v23 addObject:v26];
    }

    v48 = v12;
    v42 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v23];
    v27 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
    v28 = +[PGCurationManager assetPropertySetsForCuration];
    [v27 setFetchPropertySets:v28];

    v49 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v27];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v51 = 0;
        v13[2](v13, &v51, 0.4);
        if (v51)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 222;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          goto LABEL_43;
        }

        v14 = Current;
      }
    }

    v41 = v10;
    v30 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v31 = MEMORY[0x277CD97A8];
    v32 = [v43 curationContext];
    v33 = [v31 clsAllAssetsFromFetchResult:v49 prefetchOptions:v30 curationContext:v32];

    if (v13)
    {
      v34 = CFAbsoluteTimeGetCurrent();
      if (v34 - v14 >= 0.01)
      {
        v51 = 0;
        v13[2](v13, &v51, 0.8);
        if (v51)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v53 = 227;
            *&v53[4] = 2080;
            *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          v12 = v48;
LABEL_42:

          v10 = v41;
LABEL_43:

          goto LABEL_44;
        }

        v14 = v34;
      }
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __96__PGRecentAestheticsSuggester_niceAssetsBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v50[3] = &unk_2788894C0;
    v50[4] = self;
    v35 = [MEMORY[0x277CCAC30] predicateWithBlock:v50];
    v36 = [v33 filteredArrayUsingPredicate:v35];

    v37 = v19;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v36 count];
      *buf = 134217984;
      *v53 = v38;
      _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: found %lu eligible assets", buf, 0xCu);
    }

    v12 = v48;
    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v51 = 0, v13[2](v13, &v51, 1.0), v51))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v53 = 234;
        *&v53[4] = 2080;
        *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v36;
    }

    goto LABEL_42;
  }

  v51 = 0;
  v13[2](v13, &v51, 0.0);
  if (v51 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v53 = 179;
    *&v53[4] = 2080;
    *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_45:

  v39 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)reset
{
  v3 = [(PGAbstractSuggester *)self session];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Resetting", v6, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 loggingConnection];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: nextSuggestion", &v22, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  if (!suggestedAssetEnumerator)
  {
    suggestedAssets = self->_suggestedAssets;
    if (!suggestedAssets)
    {
      v9 = [(PGSuggestionOptions *)self->_options universalStartDate];
      v10 = [(PGSuggestionOptions *)self->_options universalEndDate];
      v11 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:v9 andEndDate:v10 matchingAssetUUID:0 progress:v4];
      v12 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v11];
      v13 = self->_suggestedAssets;
      self->_suggestedAssets = v12;

      suggestedAssets = self->_suggestedAssets;
    }

    v14 = [(NSArray *)suggestedAssets objectEnumerator];
    v15 = self->_suggestedAssetEnumerator;
    self->_suggestedAssetEnumerator = v14;

    suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  }

  v16 = [(NSEnumerator *)suggestedAssetEnumerator nextObject];
  if (v16 && (v17 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:303 asset:v16]) != 0)
  {
    v18 = v17;
    if ([(PGSuggestionOptions *)self->_options computeReasons])
    {
      v19 = [(PGRecentAestheticsSuggester *)self reasonsForSuggestion:v18];
      [(PGSingleAssetSuggestion *)v18 setReasons:v19];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138477827;
      v23 = v18;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Suggesting %{private}@", &v22, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Nothing to suggest", &v22, 2u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)startSuggestingWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 loggingConnection];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Recent Aesthetics: Starting suggesting", v10, 2u);
  }

  suggestedAssets = self->_suggestedAssets;
  self->_suggestedAssets = 0;

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;

  options = self->_options;
  self->_options = v4;
}

- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4
{
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:0 andEndDate:0 matchingAssetUUID:v6 progress:&__block_literal_global_42627];

  v8 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v7];
  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [v9 uuid];
    v11 = [v5 uuid];
    v12 = [v10 isEqualToString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v42 = a4;
  v7 = _Block_copy(v42);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v55[3] < 0.01) || (v55[3] = v8, v53 = 0, (*(v7 + 2))(v7, &v53, 0.0), v9 = *(v59 + 24) | v53, *(v59 + 24) = v9, (v9 & 1) == 0))
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v6 universalStartDate];
    v13 = [v6 universalEndDate];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __63__PGRecentAestheticsSuggester_suggestionsWithOptions_progress___block_invoke;
    v48[3] = &unk_27888A188;
    v14 = v7;
    v49 = v14;
    v50 = &v54;
    v51 = &v58;
    v52 = 0x3F847AE147AE147BLL;
    v40 = v13;
    v43 = [(PGRecentAestheticsSuggester *)self niceAssetsBetweenStartDate:v12 andEndDate:v13 matchingAssetUUID:0 progress:v48];
    v39 = v12;
    if (*(v59 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v64 = 65;
        v65 = 2080;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        v15 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v7)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v55[3] >= 0.01)
        {
          v55[3] = Current;
          v53 = 0;
          (*(v14 + 2))(v14, &v53, 0.5);
          v17 = *(v59 + 24) | v53;
          *(v59 + 24) = v17;
          if (v17)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v64 = 67;
            v65 = 2080;
            v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
            v15 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if ([v43 count])
      {
        v37 = [(PGRecentAestheticsSuggester *)self suggestedAssetsInAssets:v43 options:v6];
        if ([v37 count])
        {
          v18 = [v6 maximumNumberOfSuggestions];
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = v37;
          v21 = [v37 count];
          v38 = self;
          if (v21 >= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v21;
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          obj = v20;
          v23 = [obj countByEnumeratingWithState:&v44 objects:v62 count:16];
          if (v23)
          {
            v24 = 1.0 / v22;
            v25 = *v45;
            v26 = 0.0;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v45 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v44 + 1) + 8 * i);
                if (v7)
                {
                  v29 = CFAbsoluteTimeGetCurrent();
                  if (v29 - v55[3] >= 0.01)
                  {
                    v55[3] = v29;
                    v53 = 0;
                    (*(v14 + 2))(v14, &v53, v26 * 0.5 + 0.5);
                    v30 = *(v59 + 24) | v53;
                    *(v59 + 24) = v30;
                    if (v30)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v64 = 80;
                        v65 = 2080;
                        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      goto LABEL_11;
                    }
                  }
                }

                v31 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:303 asset:v28];
                if (v31)
                {
                  if ([v6 computeReasons])
                  {
                    v32 = [(PGRecentAestheticsSuggester *)v38 reasonsForSuggestion:v31];
                    [(PGSingleAssetSuggestion *)v31 setReasons:v32];
                  }

                  [v11 addObject:v31];
                  if ([v11 count] >= v19)
                  {

                    goto LABEL_42;
                  }

                  v26 = v24 + v26;
                }
              }

              v23 = [obj countByEnumeratingWithState:&v44 objects:v62 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_42:
        }
      }

      if (!v7 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v55[3] < 0.01) || (v55[3] = v33, v53 = 0, (*(v14 + 2))(v14, &v53, 1.0), v34 = *(v59 + 24) | v53, *(v59 + 24) = v34, (v34 & 1) == 0))
      {
        v10 = v11;
        goto LABEL_50;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v64 = 101;
        v65 = 2080;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
        v15 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v10 = MEMORY[0x277CBEBF8];
LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v64 = 56;
    v65 = 2080;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentAestheticsSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_51:
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__PGRecentAestheticsSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end