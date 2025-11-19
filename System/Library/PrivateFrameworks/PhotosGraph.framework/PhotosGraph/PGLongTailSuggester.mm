@interface PGLongTailSuggester
- (BOOL)_shouldUsePreviousBatchOfCandidateAssets;
- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4;
- (BOOL)isMomentNodeInteresting:(id)a3 withNeighborScoreComputer:(id)a4;
- (_NSRange)_randomRangeWithLocationUpperBound:(unint64_t)a3 maxLength:(unint64_t)a4;
- (id)_assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:(id)a3 weights:(id)a4;
- (id)_assetUUIDsFromAssets:(id)a3 atIndices:(id)a4;
- (id)_batchOfRandomAssetsWithCount:(unint64_t)a3 progress:(id)a4;
- (id)_bestAssetUUIDsFromCandidates:(id)a3 percentile:(unint64_t)a4;
- (id)_candidateByAssetUUIDsFromAssets:(id)a3;
- (id)_eligibleAssetUUIDsWithProgress:(id)a3;
- (id)_fetchVerifiedPersonUUIDsByAssetUUIds:(id)a3;
- (id)_nextCandidateAssetsWithProgress:(id)a3;
- (id)allInterestingMomentsFromGraph:(id)a3 progress:(id)a4;
- (id)highlightedAssetInternalPredicate;
- (id)nextSuggestedAssetWithProgress:(id)a3;
- (id)nextSuggestionWithProgress:(id)a3;
- (id)reasonsForSuggestion:(id)a3;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (unint64_t)_longTailScoreWithAsset:(id)a3 withAdditionalOptions:(id)a4;
- (void)captureInformationFromGraph:(id)a3;
- (void)reset;
- (void)startSuggestingWithOptions:(id)a3;
@end

@implementation PGLongTailSuggester

- (_NSRange)_randomRangeWithLocationUpperBound:(unint64_t)a3 maxLength:(unint64_t)a4
{
  if (a3 <= a4)
  {
    v6 = a3;
    v5 = 0;
  }

  else
  {
    v5 = [PGLongTailSuggester randomIntegerWithUpperBound:a3 - a4 + 1 seed:self->_randomSeed];
    v6 = a4;
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (id)_assetUUIDsFromAssets:(id)a3 atIndices:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 objectsAtIndexes:{v6, 0}];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) uuid];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)reasonsForSuggestion:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 keyAssets];
  v5 = [v4 firstObject];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"score = %lu", -[PGLongTailSuggester _longTailScoreWithAsset:withAdditionalOptions:](self, "_longTailScoreWithAsset:withAdditionalOptions:", v5, self->_additionalOptions)];
  v7 = MEMORY[0x277CCACA8];
  [v5 overallAestheticScore];
  v9 = [v7 stringWithFormat:@"aesthetics = %.3f", v8];
  v13[0] = v6;
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:(id)a3 weights:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v6 objectForKeyedSubscript:v13];
        v16 = [v15 score];
        if (v16)
        {
          v17 = v16;
          do
          {
            [v7 addObject:v13];
            --v17;
          }

          while (v17);
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v18 = [v7 count];
  if (v18)
  {
    v19 = [v7 objectAtIndexedSubscript:{+[PGLongTailSuggester randomIntegerWithUpperBound:seed:](PGLongTailSuggester, "randomIntegerWithUpperBound:seed:", v18, self->_randomSeed)}];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_bestAssetUUIDsFromCandidates:(id)a3 percentile:(unint64_t)a4
{
  v5 = [a3 keysSortedByValueUsingComparator:&__block_literal_global_25908];
  v6 = (a4 / 100.0 * [v5 count]);
  v7 = v5;
  if (v6)
  {
    v7 = v5;
    if ([v5 count] > v6)
    {
      v7 = [v5 subarrayWithRange:{0, v6}];
    }
  }

  return v7;
}

uint64_t __64__PGLongTailSuggester__bestAssetUUIDsFromCandidates_percentile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 score];
  v6 = [v4 score];

  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)_candidateByAssetUUIDsFromAssets:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 uuid];
        v12 = [[PGLongTailSuggestionCandidate alloc] initWithAsset:v9 score:[(PGLongTailSuggester *)self _longTailScoreWithAsset:v9 withAdditionalOptions:self->_additionalOptions]];
        if ([(PGLongTailSuggestionCandidate *)v12 isValidWithMeNodeLocalIdentifier:self->_meNodeLocalIdentifier])
        {
          [v15 setValue:v12 forKey:v11];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_eligibleAssetUUIDsWithProgress:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v4 = _Block_copy(v54);
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v71[3] >= 0.01)
    {
      v71[3] = Current;
      v82[0] = 0;
      v4[2](v4, v82, 0.0);
      v6 = *(v75 + 24) | v82[0];
      *(v75 + 24) = v6;
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 608;
          LOWORD(v87) = 2080;
          *(&v87 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          v7 = MEMORY[0x277D86220];
LABEL_12:
          _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_59;
        }

        goto LABEL_59;
      }
    }
  }

  if (!self->_eligibleAssetUUIDs)
  {
    v10 = [(PGAbstractSuggester *)self session];
    v49 = self;
    if (v10)
    {
      v48 = v10;
      v11 = [v10 loggingConnection];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all interesting moments", buf, 2u);
      }

      *buf = 0;
      *&v87 = buf;
      *(&v87 + 1) = 0x3032000000;
      v88 = __Block_byref_object_copy__25916;
      v89 = __Block_byref_object_dispose__25917;
      v90 = 0;
      v12 = [v48 workingContext];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke;
      v64[3] = &unk_278881E40;
      v66 = buf;
      v64[4] = self;
      v50 = v4;
      v65 = v50;
      v67 = &v70;
      v68 = &v74;
      v69 = 0x3F847AE147AE147BLL;
      [v12 performSynchronousConcurrentGraphReadUsingBlock:v64];

      if (*(v75 + 24) == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        *v82 = 67109378;
        v83 = 631;
        v84 = 2080;
        v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }

      v14 = v11;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v44 = [*(v87 + 40) count];
        *v82 = 67109120;
        v83 = v44;
        _os_log_debug_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all interesting moments: %d found", v82, 8u);
      }

      oslog = v14;

      if (v4)
      {
        v15 = CFAbsoluteTimeGetCurrent();
        if (v15 - v71[3] >= 0.01)
        {
          v71[3] = v15;
          v63 = 0;
          v50[2](v50, &v63, 0.2);
          v16 = *(v75 + 24) | v63;
          *(v75 + 24) = v16;
          if (v16)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
LABEL_20:

              _Block_object_dispose(buf, 8);
LABEL_58:

              goto LABEL_59;
            }

            *v82 = 67109378;
            v83 = 635;
            v84 = 2080;
            v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            v13 = MEMORY[0x277D86220];
LABEL_19:
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v82, 0x12u);
            goto LABEL_20;
          }
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v82 = 0;
        _os_log_debug_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all UUIDs of assets highlighted in interesting moments in curated library", v82, 2u);
      }

      v17 = [(PGLongTailSuggester *)self highlightedAssetInternalPredicate];
      v53 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v17];

      v81 = *MEMORY[0x277CD9AA8];
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
      [v53 setFetchPropertySets:v18];

      v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
      v80[0] = v19;
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v80[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
      [v53 setSortDescriptors:v21];

      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = [*(v87 + 40) count];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = *(v87 + 40);
      v24 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
      if (v24)
      {
        v26 = 1.0 / v23;
        v52 = *v60;
        v27 = 0.0;
        *&v25 = 67109378;
        v46 = v25;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v59 + 1) + 8 * i);
            v30 = objc_autoreleasePoolPush();
            if (v4 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v71[3] >= 0.01) && (v71[3] = v31, v63 = 0, v50[2](v50, &v63, v27 * 0.8 + 0.2), v32 = *(v75 + 24) | v63, *(v75 + 24) = v32, (v32 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v82 = v46;
                v83 = 650;
                v84 = 2080;
                v85 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v82, 0x12u);
              }

              v33 = 0;
            }

            else
            {
              v34 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v29 options:{v53, v46}];
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v55 objects:v78 count:16];
              if (v36)
              {
                v37 = *v56;
                do
                {
                  for (j = 0; j != v36; ++j)
                  {
                    if (*v56 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v39 = [*(*(&v55 + 1) + 8 * j) uuid];
                    [v22 addObject:v39];
                  }

                  v36 = [v35 countByEnumeratingWithState:&v55 objects:v78 count:16];
                }

                while (v36);
              }

              v27 = v26 + v27;
              v33 = 1;
            }

            objc_autoreleasePoolPop(v30);
            if (!v33)
            {

              _Block_object_dispose(buf, 8);
              v11 = oslog;
              goto LABEL_58;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      objc_storeStrong(&v49->_eligibleAssetUUIDs, v22);
      v40 = oslog;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v45 = [v22 count];
        *v82 = 67109120;
        v83 = v45;
        _os_log_debug_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all UUIDs of assets highlighted in interesting moments in curated library: %d found", v82, 8u);
      }

      _Block_object_dispose(buf, 8);
      v10 = v48;
    }

    self = v49;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_56:
    v41 = self->_eligibleAssetUUIDs;
    goto LABEL_60;
  }

  if (!v4)
  {
    goto LABEL_56;
  }

LABEL_8:
  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v71[3] < 0.01)
  {
    goto LABEL_56;
  }

  v71[3] = v8;
  v82[0] = 0;
  v4[2](v4, v82, 1.0);
  v9 = *(v75 + 24) | v82[0];
  *(v75 + 24) = v9;
  if ((v9 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 667;
    LOWORD(v87) = 2080;
    *(&v87 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
    v7 = MEMORY[0x277D86220];
    goto LABEL_12;
  }

LABEL_59:
  v41 = MEMORY[0x277CBEBF8];
LABEL_60:
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

void __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke_2;
    v8[3] = &unk_27888A188;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 72);
    v10 = *(a1 + 56);
    v5 = [v4 allInterestingMomentsFromGraph:v3 progress:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)allInterestingMomentsFromGraph:(id)a3 progress:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v8 && (v9 = CFAbsoluteTimeGetCurrent(), v9 - v35[3] >= 0.01) && (v35[3] = v9, LOBYTE(v33[0]) = 0, (*(v8 + 2))(v8, v33, 0.0), v10 = *(v39 + 24) | LOBYTE(v33[0]), *(v39 + 24) = v10, (v10 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x24604000202;
      LOWORD(v47) = 2080;
      *(&v47 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = objc_alloc_init(PGNeighborScoreComputer);
    buf = 0;
    *&v47 = &buf;
    *(&v47 + 1) = 0x3032000000;
    v48 = __Block_byref_object_copy__25916;
    v49 = __Block_byref_object_dispose__25917;
    v50 = [MEMORY[0x277CBEB58] set];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v13 = [v6 momentNodes];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__PGLongTailSuggester_allInterestingMomentsFromGraph_progress___block_invoke;
    v25[3] = &unk_278881E18;
    v28 = v33;
    v14 = v8;
    v32 = 0x3F847AE147AE147BLL;
    v29 = &v34;
    v30 = &v38;
    v27 = v14;
    v25[4] = self;
    v15 = v12;
    v26 = v15;
    p_buf = &buf;
    [v13 enumerateNodesUsingBlock:v25];

    if (*(v39 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v42 = 67109378;
        v43 = 596;
        v44 = 2080;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v42, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = *(v47 + 40);
      v17 = [(PGAbstractSuggester *)self session];
      v18 = [v17 photoLibrary];
      v19 = [v6 momentsForMomentNodes:v16 inPhotoLibrary:v18 sortChronologically:0];

      if (v8 && (Current = CFAbsoluteTimeGetCurrent(), Current - v35[3] >= 0.01) && (v35[3] = Current, v24 = 0, (*(v14 + 2))(v14, &v24, 1.0), v21 = *(v39 + 24) | v24, *(v39 + 24) = v21, (v21 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v42 = 67109378;
          v43 = 600;
          v44 = 2080;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v42, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v19;
      }
    }

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

void __63__PGLongTailSuggester_allInterestingMomentsFromGraph_progress___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v7, 1) <= 0x1999999999999999uLL && *(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 64) + 8), Current - *(v9 + 24) >= *(a1 + 88)) && (*(v9 + 24) = Current, (*(*(a1 + 48) + 16))(0.5), *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 72) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else if ([*(a1 + 32) isMomentNodeInteresting:v5 withNeighborScoreComputer:*(a1 + 40)])
  {
    [*(*(*(a1 + 80) + 8) + 40) addObject:v5];
  }
}

- (BOOL)isMomentNodeInteresting:(id)a3 withNeighborScoreComputer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isInteresting] & 1) != 0 || (objc_msgSend(v5, "isSmartInteresting") & 1) != 0 || (objc_msgSend(v5, "isMeaningful") & 1) != 0 || (objc_msgSend(v5, "isPartOfTrip") & 1) != 0 || (objc_msgSend(v5, "isInterestingForMemories"))
  {
    v7 = 1;
  }

  else
  {
    [v6 neighborScoreWithMomentNode:v5];
    v7 = [PGGraphMomentNode breakoutOfRoutineTypeWithNeighborScore:?]!= 0;
  }

  return v7;
}

- (id)highlightedAssetInternalPredicate
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAC30];
  [MEMORY[0x277D3CAA8] legacyAestheticScoreThresholdToBeAestheticallyPrettyGood];
  v4 = [v2 predicateWithFormat:@"highlightBeingExtendedAssets != nil AND overallAestheticScore >= %f AND (kindSubtype & %d) == 0", v3, 1];
  v5 = [objc_opt_class() noVideoPredicate];
  v6 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:33];
  v7 = MEMORY[0x277CCA920];
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_batchOfRandomAssetsWithCount:(unint64_t)a3 progress:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PGAbstractSuggester *)self session];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_51;
  }

  v8 = _Block_copy(v6);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v48[3] >= 0.01)
    {
      v48[3] = Current;
      v46 = 0;
      v8[2](v8, &v46, 0.0);
      v10 = *(v52 + 24) | v46;
      *(v52 + 24) = v10;
      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v56 = 508;
          v57 = 2080;
          v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
        goto LABEL_50;
      }
    }
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __62__PGLongTailSuggester__batchOfRandomAssetsWithCount_progress___block_invoke;
  v41[3] = &unk_27888A188;
  v12 = v8;
  v42 = v12;
  v43 = &v47;
  v44 = &v51;
  v45 = 0x3F847AE147AE147BLL;
  v13 = [(PGLongTailSuggester *)self _eligibleAssetUUIDsWithProgress:v41];
  if (*(v52 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v56 = 513;
      v57 = 2080;
      v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v14 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    if (!v8 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v48[3] < 0.01) || (v48[3] = v15, v46 = 0, v12[2](v12, &v46, 0.5), v16 = *(v52 + 24) | v46, *(v52 + 24) = v16, (v16 & 1) == 0))
    {
      oslog = [v7 loggingConnection];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "Long Tail: Selecting random batch of assets", buf, 2u);
      }

      v17 = [v13 count];
      if (v17)
      {
        v18 = [(PGLongTailSuggester *)self _randomRangeWithLocationUpperBound:v17 maxLength:a3];
        v20 = v19;
        if (v8 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v48[3] >= 0.01) && (v48[3] = v21, v46 = 0, v12[2](v12, &v46, 0.7), v22 = *(v52 + 24) | v46, *(v52 + 24) = v22, (v22 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v56 = 529;
            v57 = 2080;
            v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v11 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v23 = MEMORY[0x277CBEB98];
          v24 = [v13 subarrayWithRange:{v18, v20}];
          v25 = [v23 setWithArray:v24];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching selected random batch of assets with curation properties", buf, 2u);
          }

          v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(uuid IN %@)", v25];
          v26 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
          v27 = +[PGCurationManager assetPropertySetsForCuration];
          [v26 setFetchPropertySets:v27];

          v39 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v26];
          if (v8 && (v28 = CFAbsoluteTimeGetCurrent(), v28 - v48[3] >= 0.01) && (v48[3] = v28, v46 = 0, v12[2](v12, &v46, 0.8), v29 = *(v52 + 24) | v46, *(v52 + 24) = v29, (v29 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v56 = 542;
              v57 = 2080;
              v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v11 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v30 = MEMORY[0x277CD97A8];
            v31 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
            v32 = [v7 curationContext];
            v33 = [v30 clsAllAssetsFromFetchResult:v39 prefetchOptions:v31 curationContext:v32];

            if (v8 && (v34 = CFAbsoluteTimeGetCurrent(), v34 - v48[3] >= 0.01) && (v48[3] = v34, v46 = 0, v12[2](v12, &v46, 1.0), v35 = *(v52 + 24) | v46, *(v52 + 24) = v35, (v35 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v56 = 546;
                v57 = 2080;
                v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v11 = MEMORY[0x277CBEBF8];
            }

            else
            {
              v11 = v33;
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Fetch of all highighted assets return empty results.", buf, 2u);
        }

        v11 = 0;
      }

      goto LABEL_49;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v56 = 515;
      v57 = 2080;
      v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v14 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_49:

LABEL_50:
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

LABEL_51:
  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

void __62__PGLongTailSuggester__batchOfRandomAssetsWithCount_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)_fetchVerifiedPersonUUIDsByAssetUUIds:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"personForFace.type", -1];
    [v8 setInternalPredicate:v9];

    v10 = [MEMORY[0x277CD9938] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v4 options:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_longTailScoreWithAsset:(id)a3 withAdditionalOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFavorite])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 + [v6 isIncludedInCloudFeeds];
  if ([v6 clsShareCount])
  {
    ++v9;
  }

  if ([v6 clsPeopleCount])
  {
    ++v9;
  }

  v10 = [(PGAbstractSuggester *)self session];
  [v10 topTierAestheticScore];
  v12 = v11;

  if (v12 != 0.0)
  {
    [v6 clsAestheticScore];
    if (v13 >= v12)
    {
      v9 += [v7 topTierAestheticScoreValue];
    }
  }

  verifiedPersonUUIDsByAssetUUIds = self->_verifiedPersonUUIDsByAssetUUIds;
  v15 = [v6 uuid];
  v16 = [(NSDictionary *)verifiedPersonUUIDsByAssetUUIds objectForKeyedSubscript:v15];

  if ([v16 count])
  {
    v9 += [v7 verifiedPersonScoreValue];
  }

  return v9;
}

- (id)nextSuggestedAssetWithProgress:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v4 = _Block_copy(v42);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if (!v4 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v54[3] < 0.01) || (v54[3] = v5, v52 = 0, (*(v4 + 2))(v4, &v52, 0.0), v6 = *(v58 + 24) | v52, *(v58 + 24) = v6, (v6 & 1) == 0))
  {
    ++self->_randomSeed;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __54__PGLongTailSuggester_nextSuggestedAssetWithProgress___block_invoke;
    v47[3] = &unk_27888A188;
    v8 = v4;
    v48 = v8;
    v49 = &v53;
    v50 = &v57;
    v51 = 0x3F847AE147AE147BLL;
    v9 = [(PGLongTailSuggester *)self _nextCandidateAssetsWithProgress:v47];
    v10 = v9;
    if (*(v58 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:
        v7 = 0;
LABEL_63:

        goto LABEL_64;
      }

      *buf = 67109378;
      v63 = 394;
      v64 = 2080;
      v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v11 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_17;
    }

    if (![v9 count])
    {
      goto LABEL_17;
    }

    if (v4)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v54[3] >= 0.01)
      {
        v54[3] = Current;
        v52 = 0;
        (*(v8 + 2))(v8, &v52, 0.2);
        v13 = *(v58 + 24) | v52;
        *(v58 + 24) = v13;
        if (v13)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 67109378;
          v63 = 401;
          v64 = 2080;
          v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          v11 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v61 count:16];
    v41 = v10;
    if (v16)
    {
      v17 = *v44;
      do
      {
        v18 = 0;
        v19 = v14;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v43 + 1) + 8 * v18) uuid];
          v14 = [v19 arrayByAddingObject:v20];

          ++v18;
          v19 = v14;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v43 objects:v61 count:16];
      }

      while (v16);
    }

    v21 = [(PGLongTailSuggester *)self _fetchVerifiedPersonUUIDsByAssetUUIds:v14];
    v22 = v41;
    verifiedPersonUUIDsByAssetUUIds = self->_verifiedPersonUUIDsByAssetUUIds;
    self->_verifiedPersonUUIDsByAssetUUIds = v21;

    if (v4)
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v54[3] >= 0.01)
      {
        v54[3] = v24;
        v52 = 0;
        (*(v8 + 2))(v8, &v52, 0.4);
        v25 = *(v58 + 24) | v52;
        *(v58 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 410;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
          goto LABEL_62;
        }
      }
    }

    v26 = [(PGLongTailSuggester *)self _candidateByAssetUUIDsFromAssets:v15, v41];
    if (v4)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v54[3] >= 0.01)
      {
        v54[3] = v27;
        v52 = 0;
        (*(v8 + 2))(v8, &v52, 0.6);
        v28 = *(v58 + 24) | v52;
        *(v58 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 415;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
          goto LABEL_61;
        }
      }
    }

    v29 = [(PGLongTailSuggester *)self _bestAssetUUIDsFromCandidates:v26 percentile:[(PGLongTailAdditionalOptions *)self->_additionalOptions qualityPercentile]];
    if (![v29 count])
    {
      goto LABEL_43;
    }

    if (v4)
    {
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v54[3] >= 0.01)
      {
        v54[3] = v30;
        v52 = 0;
        (*(v8 + 2))(v8, &v52, 0.8);
        v31 = *(v58 + 24) | v52;
        *(v58 + 24) = v31;
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 424;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_43:
          v7 = 0;
LABEL_60:

LABEL_61:
LABEL_62:

          v10 = v22;
          goto LABEL_63;
        }
      }
    }

    v32 = [(PGLongTailSuggester *)self _assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:v29 weights:v26];
    if (v32)
    {
      if (!v4 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v54[3] < 0.01) || (v54[3] = v33, v52 = 0, (*(v8 + 2))(v8, &v52, 0.9), v34 = *(v58 + 24) | v52, *(v58 + 24) = v34, (v34 & 1) == 0))
      {
        v35 = [v26 objectForKeyedSubscript:v32];
        v36 = [v35 asset];
        [(NSMutableSet *)self->_suggestedAssetsFromPreviousBatch addObject:v36];
        ++self->_numberOfGeneratedSuggestions;
        if (v4 && (v37 = CFAbsoluteTimeGetCurrent(), v37 - v54[3] >= 0.01) && (v54[3] = v37, v52 = 0, (*(v8 + 2))(v8, &v52, 1.0), v38 = *(v58 + 24) | v52, *(v58 + 24) = v38, (v38 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v63 = 442;
            v64 = 2080;
            v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
        }

        else
        {
          v7 = v36;
        }

        goto LABEL_59;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 433;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    v7 = 0;
LABEL_59:

    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v63 = 386;
    v64 = 2080;
    v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v7 = 0;
LABEL_64:
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v7;
}

void __54__PGLongTailSuggester_nextSuggestedAssetWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_nextCandidateAssetsWithProgress:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch minusSet:self->_suggestedAssetsFromPreviousBatch];
  if ([(PGLongTailSuggester *)self _shouldUsePreviousBatchOfCandidateAssets])
  {
    v5 = [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch allObjects];
  }

  else
  {
    v5 = [(PGLongTailSuggester *)self _batchOfRandomAssetsWithCount:200 progress:v4];
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v5];
    candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
    self->_candidateAssetsFromPreviousBatch = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
    self->_suggestedAssetsFromPreviousBatch = v8;
  }

  return v5;
}

- (BOOL)_shouldUsePreviousBatchOfCandidateAssets
{
  LODWORD(v3) = [(PGAbstractSuggester *)self lastSuggestionWasColliding];
  if (v3)
  {
    v3 = [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch count];
    if (v3)
    {
      LOBYTE(v3) = [(NSMutableSet *)self->_suggestedAssetsFromPreviousBatch count]< 0x14;
    }
  }

  return v3;
}

- (void)reset
{
  v3 = [(PGAbstractSuggester *)self session];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_debug_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Resetting", v11, 2u);
  }

  [(PGAbstractSuggester *)self setLastSuggestionWasColliding:0];
  v5 = [(PGSuggestionOptions *)self->_options localToday];
  [v5 timeIntervalSince1970];
  self->_randomSeed = v6;

  self->_numberOfGeneratedSuggestions = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
  self->_suggestedAssetsFromPreviousBatch = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
  self->_candidateAssetsFromPreviousBatch = v9;
}

- (id)nextSuggestionWithProgress:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_numberOfGeneratedSuggestions < 0x65)
  {
    v6 = [(PGAbstractSuggester *)self session];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 loggingConnection];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: nextSuggestion", &v16, 2u);
      }

      v9 = [(PGLongTailSuggester *)self nextSuggestedAssetWithProgress:v4];
      if (v9 && (v10 = [[PGSingleAssetSuggestion alloc] initWithType:5 subtype:502 asset:v9]) != 0)
      {
        v5 = v10;
        if ([(PGSuggestionOptions *)self->_options computeReasons])
        {
          v11 = [(PGLongTailSuggester *)self reasonsForSuggestion:v5];
          [(PGSingleAssetSuggestion *)v5 setReasons:v11];
        }

        v12 = v8;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = [(PGSingleAssetSuggestion *)v5 reasons];
          v16 = 138478083;
          v17 = v5;
          v18 = 2112;
          v19 = v15;
          _os_log_debug_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Suggesting %{private}@ with reasons: %@", &v16, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v16) = 0;
          _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Nothing to suggest", &v16, 2u);
        }

        v5 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        LOWORD(v16) = 0;
        _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Long Tail Suggester: Needs a session!", &v16, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Long Tail Suggester: All suggestion trials have been used.", &v16, 2u);
    }

    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)startSuggestingWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 loggingConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Starting suggestion", buf, 2u);
  }

  [(PGAbstractSuggester *)self setLastSuggestionWasColliding:0];
  options = self->_options;
  self->_options = v4;
  v8 = v4;

  v9 = [(PGSuggestionOptions *)self->_options maximumNumberOfSuggestions];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = -1;
  }

  self->_maximumNumberOfSuggestions = v10;
  self->_numberOfGeneratedSuggestions = 0;
  v11 = [(PGSuggestionOptions *)v8 localToday];
  [v11 timeIntervalSince1970];
  self->_randomSeed = v12;

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
  self->_suggestedAssetsFromPreviousBatch = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
  self->_candidateAssetsFromPreviousBatch = v15;

  v17 = [PGLongTailAdditionalOptions alloc];
  v18 = [(PGSuggestionOptions *)v8 additionalOptions];
  v19 = [(PGLongTailAdditionalOptions *)v17 initWithDictionary:v18];
  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = v19;

  v21 = [v5 workingContext];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PGLongTailSuggester_startSuggestingWithOptions___block_invoke;
  v22[3] = &unk_27888A3B8;
  v22[4] = self;
  [v21 performSynchronousConcurrentGraphReadUsingBlock:v22];
}

void __50__PGLongTailSuggester_startSuggestingWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 graph];
  [v2 captureInformationFromGraph:v3];
}

- (void)captureInformationFromGraph:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 meNodeWithFallbackInferredMeNode];
  v5 = [v4 localIdentifier];
  meNodeLocalIdentifier = self->_meNodeLocalIdentifier;
  self->_meNodeLocalIdentifier = v5;

  v7 = [(PGAbstractSuggester *)self session];
  v8 = [v7 loggingConnection];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = self->_meNodeLocalIdentifier;
    v11 = 138412290;
    v12 = v10;
    _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "Long Tail: meNode local identifier is: %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGAbstractSuggester *)self session];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [v8 photoLibrary];
  v10 = [v8 workingContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PGLongTailSuggester_canGenerateSuggestionWithAsset_onDate___block_invoke;
  v14[3] = &unk_278889308;
  v14[4] = self;
  v11 = v6;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v18;
  [v10 performSynchronousConcurrentGraphReadUsingBlock:v14];

  LOBYTE(v10) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __61__PGLongTailSuggester_canGenerateSuggestionWithAsset_onDate___block_invoke(uint64_t a1, void *a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  [*(a1 + 32) captureInformationFromGraph:v3];
  v4 = [*(a1 + 32) highlightedAssetInternalPredicate];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 40) uuid];
  v7 = [v5 predicateWithFormat:@"uuid == %@", v6];

  v8 = MEMORY[0x277CCA920];
  v41[0] = v4;
  v41[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = [*(a1 + 32) defaultAssetFetchOptionsWithInternalPredicate:v10];
  v12 = +[PGCurationManager assetPropertySetsForCuration];
  [v11 setFetchPropertySets:v12];

  [v11 setFetchLimit:1];
  v13 = MEMORY[0x277CD97A8];
  v14 = [*(a1 + 40) uuid];
  v40 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v16 = [v13 fetchAssetsWithUUIDs:v15 options:v11];

  if ([v16 count])
  {
    v37 = v7;
    v38 = v4;
    v17 = [*(a1 + 48) librarySpecificFetchOptions];
    v18 = MEMORY[0x277CD98F8];
    v19 = [*(a1 + 40) uuid];
    v39 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v36 = v17;
    v21 = [v18 fetchMomentUUIDByAssetUUIDForAssetUUIDs:v20 options:v17];
    v22 = [v21 allValues];
    v23 = [v22 firstObject];

    if (v23)
    {
      v24 = objc_alloc_init(PGNeighborScoreComputer);
      v25 = [PGGraphMomentNodeCollection momentNodeForUUID:v23 inGraph:v3];
      v26 = [v25 anyNode];

      if (v26 && [*(a1 + 32) isMomentNodeInteresting:v26 withNeighborScoreComputer:v24])
      {
        v35 = v24;
        v27 = MEMORY[0x277CD97A8];
        v28 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
        v34 = [*(a1 + 32) session];
        v29 = [v34 curationContext];
        v30 = [v27 clsAllAssetsFromFetchResult:v16 prefetchOptions:v28 curationContext:v29];
        v31 = [v30 firstObject];

        if (v31)
        {
          v32 = -[PGLongTailSuggestionCandidate initWithAsset:score:]([PGLongTailSuggestionCandidate alloc], "initWithAsset:score:", v31, [*(a1 + 32) _longTailScoreWithAsset:v31 withAdditionalOptions:*(*(a1 + 32) + 56)]);
          *(*(*(a1 + 56) + 8) + 24) = [(PGLongTailSuggestionCandidate *)v32 isValidWithMeNodeLocalIdentifier:*(*(a1 + 32) + 120)];
        }

        v24 = v35;
      }
    }

    v7 = v37;
    v4 = v38;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v25 = a3;
  aBlock = a4;
  v28 = [(PGAbstractSuggester *)self session];
  if (v28)
  {
    v6 = _Block_copy(aBlock);
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
        v46 = 192;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      [(PGLongTailSuggester *)self startSuggestingWithOptions:v25];
      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = 0;
      v11 = 1.0 / self->_maximumNumberOfSuggestions;
      v12 = 0.0;
      v13 = MEMORY[0x277D86220];
      while (v10 < self->_maximumNumberOfSuggestions)
      {
        v14 = objc_autoreleasePoolPush();
        if (v6 && (Current = CFAbsoluteTimeGetCurrent(), Current - v38[3] >= 0.01) && (v38[3] = Current, v36 = 0, (*(v6 + 2))(v6, &v36, v12), v16 = *(v42 + 24) | v36, *(v42 + 24) = v16, (v16 & 1) != 0))
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 202;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 1;
        }

        else
        {
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __55__PGLongTailSuggester_suggestionsWithOptions_progress___block_invoke;
          v29[3] = &unk_278886858;
          v30 = v6;
          v31 = &v37;
          v34 = v12;
          v35 = v11;
          v33 = 0x3F847AE147AE147BLL;
          v32 = &v41;
          v18 = [(PGLongTailSuggester *)self nextSuggestionWithProgress:v29];
          v19 = v18;
          if (*(v42 + 24) == 1)
          {
            v17 = 1;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v46 = 207;
              v47 = 2080;
              v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
              _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }

          else if (v18)
          {
            [v26 addObject:v18];
            v17 = 0;
            ++v10;
            v12 = v11 + v12;
          }

          else
          {
            v17 = 3;
          }
        }

        objc_autoreleasePoolPop(v14);
        if (v17)
        {
          if (v17 != 3)
          {
            v9 = MEMORY[0x277CBEBF8];
            v20 = v26;
            goto LABEL_34;
          }

          break;
        }
      }

      v20 = v26;
      if (v6 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v38[3] >= 0.01) && (v38[3] = v21, v36 = 0, (*(v6 + 2))(v6, &v36, 1.0), v22 = *(v42 + 24) | v36, *(v42 + 24) = v22, (v22 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v46 = 217;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v9 = v26;
      }

LABEL_34:
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

void __55__PGLongTailSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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