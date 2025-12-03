@interface PGSyndicatedAssetsQuestionFactory
- (id)_validRandomAssetsFromFetchResult:(id)result limit:(unint64_t)limit;
- (id)_validRandomAssetsWithLimit:(unint64_t)limit photoLibrary:(id)library;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSyndicatedAssetsQuestionFactory

- (id)_validRandomAssetsFromFetchResult:(id)result limit:(unint64_t)limit
{
  resultCopy = result;
  if (limit)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
    if ([resultCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        [v6 addObject:v8];

        ++v7;
      }

      while (v7 < [resultCopy count]);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    while ([v6 count] && objc_msgSend(v9, "count") < limit)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = arc4random_uniform([v6 count]);
      v12 = [v6 objectAtIndexedSubscript:v11];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      v14 = [resultCopy objectAtIndexedSubscript:unsignedIntegerValue];
      [v6 removeObjectAtIndex:v11];
      mediaAnalysisProperties = [v14 mediaAnalysisProperties];
      LOWORD(unsignedIntegerValue) = [mediaAnalysisProperties syndicationProcessingValue];

      if ((unsignedIntegerValue & 0x1000) == 0 && ([v14 syndicationEligibility] + 1) <= 3)
      {
        [v9 addObject:v14];
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return v9;
}

- (id)_validRandomAssetsWithLimit:(unint64_t)limit photoLibrary:(id)library
{
  v37 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  v9 = *MEMORY[0x277CD9AD0];
  v35[0] = *MEMORY[0x277CD9B10];
  v8 = v35[0];
  v35[1] = v9;
  v36 = *MEMORY[0x277CD9A80];
  v10 = v36;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v11];

  internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion = [MEMORY[0x277D3C7C0] internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion];
  [librarySpecificFetchOptions setInternalPredicate:internalPredicateToFilterGuestSyndicatedAssetsEligibleForQuestion];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v13 = [(PGSyndicatedAssetsQuestionFactory *)self _allAssetsFetchResultWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];

  [librarySpecificFetchOptions2 setChunkSizeForFetch:200];
  [librarySpecificFetchOptions2 setCacheSizeForFetch:200];
  v34[0] = v8;
  v34[1] = v9;
  v34[2] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  [librarySpecificFetchOptions2 setFetchPropertySets:v15];

  internalPredicateToFilterSyndicatedAssetsEligibleForQuestion = [MEMORY[0x277D3C7C0] internalPredicateToFilterSyndicatedAssetsEligibleForQuestion];
  [librarySpecificFetchOptions2 setInternalPredicate:internalPredicateToFilterSyndicatedAssetsEligibleForQuestion];

  v17 = [(PGSyndicatedAssetsQuestionFactory *)self _allAssetsFetchResultWithOptions:librarySpecificFetchOptions2];
  v18 = limit >> 1;
  if (limit >> 1 >= [v13 count])
  {
    v18 = [v13 count];
  }

  v19 = limit - v18;
  v20 = [v17 count];
  if (v19 >= v20)
  {
    v19 = v20;
  }

  v21 = limit - v19;
  v22 = [v13 count];
  if (v21 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v24 = [(PGSyndicatedAssetsQuestionFactory *)self _validRandomAssetsFromFetchResult:v13 limit:v23];
  v25 = [(PGSyndicatedAssetsQuestionFactory *)self _validRandomAssetsFromFetchResult:v17 limit:v19];
  v26 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v25, "count") + objc_msgSend(v24, "count")}];
  allObjects = [v24 allObjects];
  [v26 addObjectsFromArray:allObjects];

  allObjects2 = [v25 allObjects];
  [v26 addObjectsFromArray:allObjects2];

  if (![v26 count])
  {
    v29 = +[PGLogging sharedLogging];
    loggingConnection = [v29 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "PGSyndicatedAssetsQuestionFactory: no valid random samples.", v33, 2u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = _Block_copy(block);
  if (v55)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = 0.0;
    if (Current >= 0.01)
    {
      v8 = Current;
      LOBYTE(info.numer) = 0;
      v55[2](v55, &info, 0.0);
      if (LOBYTE(info.numer) == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_59:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_78;
        }

        *buf = 67109378;
        *v64 = 37;
        *&v64[4] = 2080;
        *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
        v9 = MEMORY[0x277D86220];
LABEL_58:
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_59;
      }

      v7 = v8;
    }

    if (![(PGSyndicatedAssetsQuestionFactory *)self _isHubbleFeatureFlagEnabled])
    {
      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_59;
      }

      LOBYTE(info.numer) = 0;
      v55[2](v55, &info, 1.0);
      if (!LOBYTE(info.numer) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_59;
      }

      *buf = 67109378;
      *v64 = 40;
      *&v64[4] = 2080;
      *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
      v9 = MEMORY[0x277D86220];
      goto LABEL_58;
    }

    if (!limit)
    {
      if (CFAbsoluteTimeGetCurrent() - v7 < 0.01)
      {
        goto LABEL_59;
      }

      LOBYTE(info.numer) = 0;
      v55[2](v55, &info, 1.0);
      if (!LOBYTE(info.numer) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_59;
      }

      *buf = 67109378;
      *v64 = 45;
      *&v64[4] = 2080;
      *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
      v9 = MEMORY[0x277D86220];
      goto LABEL_58;
    }
  }

  else
  {
    _isHubbleFeatureFlagEnabled = [(PGSyndicatedAssetsQuestionFactory *)self _isHubbleFeatureFlagEnabled];
    allObjects = MEMORY[0x277CBEBF8];
    if (!limit)
    {
      goto LABEL_78;
    }

    v7 = 0.0;
    if (!_isHubbleFeatureFlagEnabled)
    {
      goto LABEL_78;
    }
  }

  v62 = 0;
  v12 = [(PGSyndicatedAssetsQuestionFactory *)self _syndicatedPhotoLibraryWithError:&v62];
  v13 = v62;
  v14 = v13;
  if (!v12 || v13)
  {
    v38 = +[PGLogging sharedLogging];
    loggingConnection = [v38 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v64 = v14;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGSyndicatedAssetsQuestionFactory: Failed to open syndicated library: %@", buf, 0xCu);
    }

    if (v55)
    {
      if (CFAbsoluteTimeGetCurrent() - v7 >= 0.01)
      {
        LOBYTE(info.numer) = 0;
        v55[2](v55, &info, 1.0);
        if (LOBYTE(info.numer))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v64 = 53;
            *&v64[4] = 2080;
            *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    v17 = os_signpost_id_generate(v15);
    v18 = v15;
    v54 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v17, "SyndicatedAssetsQuestionGeneration", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v52 = mach_absolute_time();
    v19 = [MEMORY[0x277CBEB58] set];
    [(PGSyndicatedAssetsQuestionFactory *)self _validRandomAssetsWithLimit:limit photoLibrary:v12];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v20 = v60 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v51 = v17;
      v53 = v12;
      v23 = 0;
      limitCopy = limit;
      v25 = *v58;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v57 + 1) + 8 * i);
          curationProperties = [v27 curationProperties];
          syndicationIdentifier = [curationProperties syndicationIdentifier];

          if (syndicationIdentifier)
          {
            v30 = [[PGSyndicatedAssetsQuestion alloc] initWithAssetSyndicationIdentifier:syndicationIdentifier];
            if ([(PGSurveyQuestionFactory *)self shouldAddQuestion:v30 toAlreadyGeneratedQuestions:v19])
            {
              [v19 addObject:v30];
            }

            else
            {
              ++v23;
            }

            v33 = [v19 count];
            if (v55)
            {
              v34 = v33;
              v35 = CFAbsoluteTimeGetCurrent();
              if (v35 - v7 >= 0.01)
              {
                v56 = 0;
                v55[2](v55, &v56, v34 / limitCopy);
                if (v56)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v64 = 77;
                    *&v64[4] = 2080;
                    *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  allObjects = MEMORY[0x277CBEBF8];
                  v14 = 0;
                  v12 = v53;
                  goto LABEL_76;
                }

                v7 = v35;
              }
            }
          }

          else
          {
            v31 = +[PGLogging sharedLogging];
            syndicationIdentifier = [v31 loggingConnection];

            if (os_log_type_enabled(syndicationIdentifier, OS_LOG_TYPE_ERROR))
            {
              uuid = [v27 uuid];
              *buf = 138412290;
              *v64 = uuid;
              _os_log_error_impl(&dword_22F0FC000, syndicationIdentifier, OS_LOG_TYPE_ERROR, "PGSyndicatedAssetsQuestionFactory: syndication identifier is nil for asset %@", buf, 0xCu);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      if (!v23)
      {
        v14 = 0;
        v12 = v53;
        v17 = v51;
        v40 = v54;
        goto LABEL_62;
      }

      v36 = +[PGLogging sharedLogging];
      loggingConnection2 = [v36 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v64 = v23;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "PGSyndicatedAssetsQuestionFactory: skipping %lu questions because other questions already exist for the same assets.", buf, 0xCu);
      }

      v14 = 0;
      v12 = v53;
      v17 = v51;
    }

    else
    {
      loggingConnection2 = v20;
    }

    v40 = v54;

LABEL_62:
    v41 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v44 = MEMORY[0x277D86220];
    if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v17, "SyndicatedAssetsQuestionGeneration", "", buf, 2u);
    }

    v45 = MEMORY[0x277D86220];

    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v64 = "SyndicatedAssetsQuestionGeneration";
      *&v64[8] = 2048;
      *&v64[10] = ((((v41 - v52) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v55 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v56 = 0, v55[2](v55, &v56, 1.0), v56))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v64 = 86;
        *&v64[4] = 2080;
        *&v64[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/SyndicatedAssets/PGSyndicatedAssetsQuestionFactory.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      allObjects = MEMORY[0x277CBEBF8];
    }

    else
    {
      v46 = +[PGLogging sharedLogging];
      loggingConnection3 = [v46 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v19 count];
        *buf = 134217984;
        *v64 = v48;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "PGSyndicatedAssetsQuestionFactory: returning %lu questions to be saved.", buf, 0xCu);
      }

      allObjects = [v19 allObjects];
    }

LABEL_76:
  }

LABEL_78:
  v49 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end