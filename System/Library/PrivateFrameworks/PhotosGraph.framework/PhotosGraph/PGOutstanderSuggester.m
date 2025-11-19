@interface PGOutstanderSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4;
- (id)assetInternalPredicate:(id)a3 andEndDate:(id)a4 matchingAssetUUID:(id)a5;
- (id)nextSuggestedAssetEnumeratorWithProgress:(id)a3;
- (id)nextSuggestedAssetWithProgress:(id)a3;
- (id)nextSuggestionWithProgress:(id)a3;
- (id)reasonsForSuggestion:(id)a3;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (unint64_t)scoreWithAsset:(id)a3;
- (void)computeNiceAssetsBetweenStartDate:(id)a3 andEndDate:(id)a4 withProgress:(id)a5;
- (void)reset;
- (void)startSuggestingWithOptions:(id)a3;
@end

@implementation PGOutstanderSuggester

- (id)reasonsForSuggestion:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 keyAssets];
  v5 = [v4 firstObject];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"score = %lu", -[PGOutstanderSuggester scoreWithAsset:](self, "scoreWithAsset:", v5)];
  v7 = MEMORY[0x277CCACA8];
  [v5 overallAestheticScore];
  v9 = [v7 stringWithFormat:@"aesthetics = %.3f", v8];
  v13[0] = v6;
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)nextSuggestedAssetEnumeratorWithProgress:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _Block_copy(v4);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v39[3] >= 0.01)
    {
      v39[3] = Current;
      v37 = 0;
      v5[2](v5, &v37, 0.0);
      v7 = *(v43 + 24) | v37;
      *(v43 + 24) = v7;
      if (v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v48 = 297;
          v49 = 2080;
          v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
          v8 = MEMORY[0x277D86220];
LABEL_20:
          _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }
  }

  if (!self->_assetUUIDsByScore)
  {
    v9 = [(PGSuggestionOptions *)self->_options universalEndDateForWholeLibrarySuggestions];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(PGSuggestionOptions *)self->_options universalStartDate];
    }

    v12 = v11;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __66__PGOutstanderSuggester_nextSuggestedAssetEnumeratorWithProgress___block_invoke;
    v32[3] = &unk_27888A188;
    v33 = v5;
    v34 = &v38;
    v35 = &v42;
    v36 = 0x3F847AE147AE147BLL;
    [(PGOutstanderSuggester *)self computeNiceAssetsBetweenStartDate:0 andEndDate:v12 withProgress:v32];
    if (*(v43 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v48 = 306;
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    if (v13 - v39[3] >= 0.01)
    {
      v39[3] = v13;
      v37 = 0;
      v5[2](v5, &v37, 0.5);
      v14 = *(v43 + 24) | v37;
      *(v43 + 24) = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v48 = 309;
          v49 = 2080;
          v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_20;
        }

LABEL_21:
        v15 = 0;
        goto LABEL_37;
      }
    }
  }

  v16 = self->_currentScoreIndex + 1;
  self->_currentScoreIndex = v16;
  if (v16 >= [(NSArray *)self->_sortedScores count])
  {
    v17 = 0;
    goto LABEL_28;
  }

  v17 = [(NSArray *)self->_sortedScores objectAtIndexedSubscript:v16];
  if (!v17)
  {
LABEL_28:
    v18 = 0;
LABEL_29:
    v26 = 0;
    if (!v5)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v18 = [(NSDictionary *)self->_assetUUIDsByScore objectForKeyedSubscript:v17];
  if (!v18)
  {
    goto LABEL_29;
  }

  v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v18];
  v19 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
  [v19 setChunkSizeForFetch:200];
  [v19 setCacheSizeForFetch:400];
  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v46[0] = v20;
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v46[1] = v21;
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v46[2] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  [v19 setSortDescriptors:v23];

  v24 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v19];
  v25 = [v24 fetchedObjects];
  v26 = [v25 objectEnumerator];

  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_30:
  v27 = CFAbsoluteTimeGetCurrent();
  if (v27 - v39[3] >= 0.01)
  {
    v39[3] = v27;
    v37 = 0;
    v5[2](v5, &v37, 1.0);
    v28 = *(v43 + 24) | v37;
    *(v43 + 24) = v28;
    if (v28)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v48 = 332;
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = 0;
      goto LABEL_36;
    }
  }

LABEL_35:
  v15 = v26;
LABEL_36:

LABEL_37:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

void __66__PGOutstanderSuggester_nextSuggestedAssetEnumeratorWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)nextSuggestedAssetWithProgress:(id)a3
{
  v4 = a3;
  v5 = [(NSEnumerator *)self->_currentSuggestedAssetEnumerator nextObject];
  if (!v5)
  {
    v6 = [(PGOutstanderSuggester *)self nextSuggestedAssetEnumeratorWithProgress:v4];
    currentSuggestedAssetEnumerator = self->_currentSuggestedAssetEnumerator;
    self->_currentSuggestedAssetEnumerator = v6;

    v5 = [(NSEnumerator *)self->_currentSuggestedAssetEnumerator nextObject];
  }

  return v5;
}

- (unint64_t)scoreWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 isFavorite];
  [v4 clsAestheticScore];
  v7 = v6;
  v8 = [(PGAbstractSuggester *)self session];
  [v8 topTierAestheticScore];
  v10 = v9;

  v11 = 1;
  if (v5)
  {
    v11 = 2;
  }

  if (v7 >= v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12 + [v4 isIncludedInCloudFeeds];
  if ([v4 clsShareCount] && objc_msgSend(v4, "clsVideoFaceCount"))
  {
    ++v13;
  }

  if ([v4 clsPeopleCount] > 3)
  {
    ++v13;
  }

  return v13;
}

- (void)computeNiceAssetsBetweenStartDate:(id)a3 andEndDate:(id)a4 withProgress:(id)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0.0;
  v68 = _Block_copy(v10);
  if (!v68 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_7:
    v13 = [(PGAbstractSuggester *)self session];
    v14 = v13;
    if (!v13)
    {
LABEL_53:

      goto LABEL_54;
    }

    log = [v13 loggingConnection];
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v80 = v9;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_DEFAULT, "Outstander: Computing eligible nice assets up to %@", buf, 0xCu);
    }

    v15 = [(PGOutstanderSuggester *)self assetInternalPredicate:v8 andEndDate:v9 matchingAssetUUID:0];
    v16 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v15];
    v17 = +[PGCurationManager assetPropertySetsForCuration];
    [v16 setFetchPropertySets:v17];

    [v16 setChunkSizeForFetch:200];
    [v16 setCacheSizeForFetch:400];
    v67 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v16];
    if (v68)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v11 >= 0.01)
      {
        v76 = 0;
        v68[2](v68, &v76, 0.2);
        if (v76)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v80 = 217;
            *&v80[4] = 2080;
            *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v19 = log;
LABEL_52:

          goto LABEL_53;
        }

        v11 = Current;
      }
    }

    v58 = v16;
    v59 = v15;
    v60 = v10;
    v61 = v9;
    v62 = v8;
    v66 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = [v67 count];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = v21;
      v64 = v21;
      v65 = v14;
      while (1)
      {
        v26 = objc_autoreleasePoolPush();
        if (v68)
        {
          v27 = CFAbsoluteTimeGetCurrent();
          if (v27 - v11 >= 0.01)
          {
            v76 = 0;
            v68[2](v68, &v76, v24 * 0.8 / v25 + 0.2);
            if (v76)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v80 = 225;
                *&v80[4] = 2080;
                *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v26);
              v19 = log;
              goto LABEL_51;
            }

            v11 = v27;
          }
        }

        context = v26;
        v71 = v24;
        if (v22 - v24 >= 0xC8)
        {
          v28 = 200;
        }

        else
        {
          v28 = v22 - v24;
        }

        v29 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v24, v28}];
        v30 = [v67 objectsAtIndexes:v29];

        v31 = objc_alloc(MEMORY[0x277CD98D0]);
        v32 = [v67 photoLibrary];
        v33 = [v67 fetchPropertySets];
        v34 = [v31 initWithObjects:v30 photoLibrary:v32 fetchType:0 fetchPropertySets:v33 identifier:0 registerIfNeeded:0];

        v35 = MEMORY[0x277CD97A8];
        v36 = [v14 curationContext];
        v69 = v34;
        v37 = [v35 clsAllAssetsFromFetchResult:v34 prefetchOptions:v66 curationContext:v36];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v38 = v37;
        v39 = [v38 countByEnumeratingWithState:&v72 objects:v78 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v73;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v73 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v72 + 1) + 8 * i);
              if ([(PGAbstractSuggester *)self processedAssetIsValidForSuggesting:v43 allowGuestAsset:0])
              {
                v44 = [v43 uuid];
                v45 = [(PGOutstanderSuggester *)self scoreWithAsset:v43];
                v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
                v47 = [v20 objectForKeyedSubscript:v46];
                if (!v47)
                {
                  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v20 setObject:v47 forKeyedSubscript:v46];
                }

                [v47 addObject:v44];
                ++v23;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v72 objects:v78 count:16];
          }

          while (v40);
        }

        objc_autoreleasePoolPop(context);
        v24 = v71 + 200;
        v22 = v64;
        v14 = v65;
        if (v71 + 200 >= v64)
        {
          goto LABEL_40;
        }
      }
    }

    v23 = 0;
LABEL_40:
    objc_storeStrong(&self->_assetUUIDsByScore, v20);
    v48 = [(NSDictionary *)self->_assetUUIDsByScore allKeys];
    v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
    v77 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    v51 = [v48 sortedArrayUsingDescriptors:v50];
    sortedScores = self->_sortedScores;
    self->_sortedScores = v51;

    v19 = log;
    if (v68 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (v76 = 0, v68[2](v68, &v76, 1.0), v76))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_51;
      }

      *buf = 67109378;
      *v80 = 252;
      *&v80[4] = 2080;
      *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
      v53 = MEMORY[0x277D86220];
      v54 = "Cancelled at line %d in file %s";
      v55 = OS_LOG_TYPE_INFO;
      v56 = 18;
    }

    else
    {
      if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 134217984;
      *v80 = v23;
      v54 = "Outstander: found %lu eligible assets";
      v53 = log;
      v55 = OS_LOG_TYPE_DEFAULT;
      v56 = 12;
    }

    _os_log_impl(&dword_22F0FC000, v53, v55, v54, buf, v56);
LABEL_51:

    v9 = v61;
    v8 = v62;
    v15 = v59;
    v10 = v60;
    v16 = v58;
    goto LABEL_52;
  }

  v76 = 0;
  v68[2](v68, &v76, 0.0);
  if (v76 != 1)
  {
    v11 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v80 = 196;
    *&v80[4] = 2080;
    *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_54:

  v57 = *MEMORY[0x277D85DE8];
}

- (id)assetInternalPredicate:(id)a3 andEndDate:(id)a4 matchingAssetUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore >= %f", *MEMORY[0x277D3C760]];
  v11 = [objc_opt_class() noVideoPredicate];
  v12 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:1];
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, v11, v12, 0}];
  if (v7)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", v7];
    [v13 addObject:v14];
  }

  if (v8)
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", v8];
    [v13 addObject:v15];
  }

  if (v9)
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", v9];
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];

  return v17;
}

- (void)reset
{
  v3 = [(PGAbstractSuggester *)self session];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEFAULT, "Outstander: Resetting", v6, 2u);
  }

  self->_currentScoreIndex = -1;
  currentSuggestedAssetEnumerator = self->_currentSuggestedAssetEnumerator;
  self->_currentSuggestedAssetEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 loggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Outstander: nextSuggestion", &v14, 2u);
    }

    v8 = [(PGOutstanderSuggester *)self nextSuggestedAssetWithProgress:v4];
    if (v8 && (v9 = [[PGSingleAssetSuggestion alloc] initWithType:5 subtype:501 asset:v8]) != 0)
    {
      v10 = v9;
      if ([(PGSuggestionOptions *)self->_options computeReasons])
      {
        v11 = [(PGOutstanderSuggester *)self reasonsForSuggestion:v10];
        [(PGSingleAssetSuggestion *)v10 setReasons:v11];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138477827;
        v15 = v10;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Outstander: Suggesting %{private}@", &v14, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Outstander: Nothing to suggest", &v14, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v14) = 0;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Outstander: Needs a session!", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startSuggestingWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 loggingConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Outstander: Starting suggesting", v12, 2u);
  }

  options = self->_options;
  self->_options = v4;
  v8 = v4;

  assetUUIDsByScore = self->_assetUUIDsByScore;
  self->_assetUUIDsByScore = 0;

  sortedScores = self->_sortedScores;
  self->_sortedScores = 0;

  self->_currentScoreIndex = -1;
  currentSuggestedAssetEnumerator = self->_currentSuggestedAssetEnumerator;
  self->_currentSuggestedAssetEnumerator = 0;
}

- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4
{
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(PGOutstanderSuggester *)self assetInternalPredicate:0 andEndDate:0 matchingAssetUUID:v6];

  v8 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v7];
  v9 = +[PGCurationManager assetPropertySetsForCuration];
  [v8 setFetchPropertySets:v9];

  [v8 setFetchLimit:1];
  v10 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v8];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 uuid];
    v13 = [v5 uuid];
    v14 = [v12 isEqualToString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v26 = a4;
  v6 = _Block_copy(v26);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v38[3] >= 0.01) && (v38[3] = v7, v36 = 0, (*(v6 + 2))(v6, &v36, 0.0), v8 = *(v42 + 24) | v36, *(v42 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v46 = 61;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(PGOutstanderSuggester *)self startSuggestingWithOptions:v27];
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [v27 maximumNumberOfSuggestions];
    v11 = 0;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = -1;
    }

    v13 = 0.0;
    v14 = MEMORY[0x277D86220];
    while (v11 < v12)
    {
      v15 = objc_autoreleasePoolPush();
      if (v6 && (Current = CFAbsoluteTimeGetCurrent(), Current - v38[3] >= 0.01) && (v38[3] = Current, v36 = 0, (*(v6 + 2))(v6, &v36, v13), v17 = *(v42 + 24) | v36, *(v42 + 24) = v17, (v17 & 1) != 0))
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v46 = 72;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
          _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = 1;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __57__PGOutstanderSuggester_suggestionsWithOptions_progress___block_invoke;
        v29[3] = &unk_278886858;
        v30 = v6;
        v31 = &v37;
        v34 = v13;
        v35 = 1.0 / v12;
        v33 = 0x3F847AE147AE147BLL;
        v32 = &v41;
        v19 = [(PGOutstanderSuggester *)self nextSuggestionWithProgress:v29];
        v20 = v19;
        if (*(v42 + 24) == 1)
        {
          v18 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 77;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
            _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else if (v19)
        {
          [v28 addObject:v19];
          v18 = 0;
          ++v11;
          v13 = 1.0 / v12 + v13;
        }

        else
        {
          v18 = 3;
        }
      }

      objc_autoreleasePoolPop(v15);
      if (v18)
      {
        if (v18 != 3)
        {
          v9 = MEMORY[0x277CBEBF8];
          v21 = v28;
          goto LABEL_35;
        }

        break;
      }
    }

    v21 = v28;
    if (v6 && (v22 = CFAbsoluteTimeGetCurrent(), v22 - v38[3] >= 0.01) && (v38[3] = v22, v36 = 0, (*(v6 + 2))(v6, &v36, 1.0), v23 = *(v42 + 24) | v36, *(v42 + 24) = v23, (v23 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 86;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGOutstanderSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v9 = v28;
    }

LABEL_35:
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

void __57__PGOutstanderSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end