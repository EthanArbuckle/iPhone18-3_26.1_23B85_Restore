@interface PGSharedLibrarySuggestionsProcessor
+ (BOOL)shouldIncludeAsset:(id)asset curationContext:(id)context rejectionReason:(id *)reason;
+ (id)libraryScopeToUseWithPhotoLibrary:(id)library;
- (BOOL)_commitSuggestedAssets:(id)assets rejectedAssets:(id)rejectedAssets libraryScope:(id)scope error:(id *)error;
- (BOOL)_processMomentNodes:(id)nodes withGraph:(id)graph error:(id *)error progressBlock:(id)block;
- (BOOL)_suggestAssetsFromMoments:(id)moments libraryScope:(id)scope curationContext:(id)context progressBlock:(id)block error:(id *)error;
- (BOOL)processSuggestionsForIncrementalChange:(id)change withError:(id *)error progressBlock:(id)block;
- (BOOL)processSuggestionsFromStartDate:(id)date toDate:(id)toDate withError:(id *)error progressBlock:(id)block;
- (PGSharedLibrarySuggestionsProcessor)initWithWorkingContext:(id)context libraryScope:(id)scope;
- (id)_momentsForMomentNodes:(id)nodes inPhotoLibrary:(id)library;
- (id)_rulesForLibraryScope:(id)scope;
- (id)_startDateFromLibraryScopeRules:(id)rules;
- (id)evaluatorWithGraph:(id)graph;
@end

@implementation PGSharedLibrarySuggestionsProcessor

- (id)_momentsForMomentNodes:(id)nodes inPhotoLibrary:(id)library
{
  v25 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  libraryCopy = library;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = nodesCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        localIdentifier = [*(*(&v19 + 1) + 8 * i) localIdentifier];
        if (localIdentifier)
        {
          [v7 addObject:localIdentifier];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v23 = *MEMORY[0x277CD9AA8];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v15];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v16 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_startDateFromLibraryScopeRules:(id)rules
{
  v20 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = rulesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dateRangeCondition = [*(*(&v15 + 1) + 8 * i) dateRangeCondition];
        v11 = dateRangeCondition;
        if (dateRangeCondition && [dateRangeCondition criteria] == 2)
        {
          endDate = [v11 endDate];

          distantPast = endDate;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return distantPast;
}

- (id)evaluatorWithGraph:(id)graph
{
  v21 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if ([(NSArray *)self->_libraryScopeRules count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_libraryScopeRules, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_libraryScopeRules;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          plRepresentation = [*(*(&v16 + 1) + 8 * i) plRepresentation];
          [v5 addObject:plRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [[PGMomentNodeRuleInterpreter alloc] initWithGraph:graphCopy];
    v13 = [objc_alloc(MEMORY[0x277D3ACA8]) initWithRules:v5 andInterpreter:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_rulesForLibraryScope:(id)scope
{
  v21 = *MEMORY[0x277D85DE8];
  scopeCopy = scope;
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:scopeCopy options:librarySpecificFetchOptions];
  v9 = [v8 count];
  v10 = loggingConnection;
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [scopeCopy localIdentifier];
      v17 = 138412546;
      v18 = localIdentifier;
      v19 = 2048;
      v20 = [v8 count];
      _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] scope: %@, with %lu rules", &v17, 0x16u);
    }

    v13 = v8;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [scopeCopy localIdentifier];
      v17 = 138412290;
      v18 = localIdentifier2;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] No rules in scope: %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_commitSuggestedAssets:(id)assets rejectedAssets:(id)rejectedAssets libraryScope:(id)scope error:(id *)error
{
  *(&v51[2] + 2) = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  rejectedAssetsCopy = rejectedAssets;
  scopeCopy = scope;
  if ([assetsCopy count] || objc_msgSend(rejectedAssetsCopy, "count"))
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v14 = os_signpost_id_generate(loggingConnection);
    v15 = loggingConnection;
    v16 = v15;
    v17 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PGSharedLibrarySuggestionsProcessorPersistFromMomentsBatch", "", buf, 2u);
    }

    spid = v14;

    info = 0;
    mach_timebase_info(&info);
    v40 = mach_absolute_time();
    photoLibrary = [scopeCopy photoLibrary];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __96__PGSharedLibrarySuggestionsProcessor__commitSuggestedAssets_rejectedAssets_libraryScope_error___block_invoke;
    v44[3] = &unk_2788845C0;
    v19 = scopeCopy;
    v45 = v19;
    v20 = assetsCopy;
    v46 = v20;
    v42 = rejectedAssetsCopy;
    v21 = rejectedAssetsCopy;
    v47 = v21;
    v43 = 0;
    v41 = photoLibrary;
    v22 = [photoLibrary performChangesAndWait:v44 error:&v43];
    v23 = v43;
    v24 = v23;
    if (v22)
    {
      v25 = v16;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v20 count];
        v27 = [v21 count];
        localIdentifier = [v19 localIdentifier];
        *buf = 67109634;
        *v50 = v26;
        *&v50[4] = 1024;
        *&v50[6] = v27;
        LOWORD(v51[0]) = 2112;
        *(v51 + 2) = localIdentifier;
        _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] suggested %d, rejected %d assets for scope %@", buf, 0x18u);
      }
    }

    else
    {
      if (error)
      {
        v29 = v23;
        *error = v24;
      }

      v30 = v16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        localIdentifier2 = [v19 localIdentifier];
        *buf = 138412546;
        *v50 = localIdentifier2;
        *&v50[8] = 2112;
        *&v51[0] = v24;
        _os_log_error_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] failed to suggestion assets for scope %@: %@", buf, 0x16u);
      }
    }

    v31 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v34 = v16;
    v35 = v34;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, spid, "PGSharedLibrarySuggestionsProcessorPersistFromMomentsBatch", "", buf, 2u);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v50 = "PGSharedLibrarySuggestionsProcessorPersistFromMomentsBatch";
      *&v50[8] = 2048;
      v51[0] = ((((v31 - v40) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    rejectedAssetsCopy = v42;
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

void __96__PGSharedLibrarySuggestionsProcessor__commitSuggestedAssets_rejectedAssets_libraryScope_error___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CD98B0] changeRequestForLibraryScope:a1[4]];
  [v2 addPreviewAssetsSuggestedByPhotos:a1[5]];
  [v2 markAssetsAsRejectedByPhotosSuggester:a1[6]];
}

- (BOOL)_suggestAssetsFromMoments:(id)moments libraryScope:(id)scope curationContext:(id)context progressBlock:(id)block error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  scopeCopy = scope;
  contextCopy = context;
  v12 = _Block_copy(block);
  v13 = 0.0;
  if (v12)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(info.numer) = 0;
      v12[2](v12, &info, 0.0);
      if (LOBYTE(info.numer) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v51 = 348;
          *&v51[4] = 2080;
          *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = 0;
        goto LABEL_49;
      }

      v13 = Current;
    }
  }

  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v17 = os_signpost_id_generate(loggingConnection);
  v18 = loggingConnection;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PGSharedLibrarySuggestionsProcessorFetchAssetsFromMomentsBatch", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v42 = mach_absolute_time();
  photoLibrary = [scopeCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v22 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v22];

  v23 = PLManagedAssetPredicateToFetchAssetsToEvaluateSuggestionsForLibraryScope();
  [librarySpecificFetchOptions setInternalPredicate:v23];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v15 = 1;
  [librarySpecificFetchOptions setIncludeDuplicateAssetVisibilityStateMostRelevant:1];
  v44 = librarySpecificFetchOptions;
  v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:momentsCopy options:librarySpecificFetchOptions];
  v43 = v24;
  if (![v24 count])
  {
    v34 = v44;
    goto LABEL_48;
  }

  v25 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v24 prefetchOptions:31 curationContext:contextCopy];
  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = v19;
  v30 = v29;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, v17, "PGSharedLibrarySuggestionsProcessorFetchAssetsFromMomentsBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v51 = "PGSharedLibrarySuggestionsProcessorFetchAssetsFromMomentsBatch";
    *&v51[8] = 2048;
    *&v51[10] = ((((v26 - v42) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v12)
  {
    v33 = CFAbsoluteTimeGetCurrent();
    if (v33 - v13 >= 0.01)
    {
      v48 = 0;
      v12[2](v12, &v48, 0.1);
      if (v48)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v51 = 370;
          *&v51[4] = 2080;
          *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = 0;
        goto LABEL_46;
      }

      v13 = v33;
    }
  }

  if (![v25 count])
  {
LABEL_37:
    v15 = [(PGSharedLibrarySuggestionsProcessor *)self _commitSuggestedAssets:v31 rejectedAssets:v32 libraryScope:scopeCopy error:error];
    if (!v12)
    {
      goto LABEL_46;
    }

    v34 = v44;
    if (CFAbsoluteTimeGetCurrent() - v13 >= 0.01)
    {
      v48 = 0;
      v12[2](v12, &v48, 1.0);
      if (v48)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v51 = 391;
          *&v51[4] = 2080;
          *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = 0;
      }
    }

    goto LABEL_47;
  }

  v35 = 0;
  v36 = 0.1;
  while (1)
  {
    v37 = [v25 objectAtIndexedSubscript:v35];
    v38 = [objc_opt_class() shouldIncludeAsset:v37 curationContext:contextCopy rejectionReason:0] ? v31 : v32;
    [v38 addObject:v37];
    if (50 * (v35 / 0x32) == v35)
    {
      if (![(PGSharedLibrarySuggestionsProcessor *)self _commitSuggestedAssets:v31 rejectedAssets:v32 libraryScope:scopeCopy error:error])
      {
        goto LABEL_45;
      }

      [v31 removeAllObjects];
      [v32 removeAllObjects];
      v36 = v36 + 0.01;
      if (v12)
      {
        v39 = CFAbsoluteTimeGetCurrent();
        if (v39 - v13 >= 0.01)
        {
          break;
        }
      }
    }

LABEL_36:

    if (++v35 >= [v25 count])
    {
      goto LABEL_37;
    }
  }

  v48 = 0;
  v12[2](v12, &v48, v36);
  if (!v48)
  {
    v13 = v39;
    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v51 = 387;
    *&v51[4] = 2080;
    *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_45:

  v15 = 0;
LABEL_46:
  v34 = v44;
LABEL_47:

LABEL_48:
LABEL_49:

  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_processMomentNodes:(id)nodes withGraph:(id)graph error:(id *)error progressBlock:(id)block
{
  v105 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v71 = nodesCopy;
  if (v11 && (v12 = CFAbsoluteTimeGetCurrent(), v12 - v94[3] >= 0.01) && (v94[3] = v12, LOBYTE(v89) = 0, (*(v11 + 2))(v11, &v89, 0.0), v13 = *(v98 + 24) | v89, *(v98 + 24) = v13, (v13 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 186;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v14 = 0;
  }

  else
  {
    oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    errorCopy = error;
    subsetWithEnoughFacesProcessed = [nodesCopy subsetWithEnoughFacesProcessed];
    subsetWithEnoughScenesProcessed = [subsetWithEnoughFacesProcessed subsetWithEnoughScenesProcessed];

    v16 = subsetWithEnoughScenesProcessed;
    v17 = [subsetWithEnoughScenesProcessed count];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v17;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of moment to evaluate with enough scene and faces processed: %zu", buf, 0xCu);
    }

    if (v17)
    {
      v18 = [(PGSharedLibrarySuggestionsProcessor *)self evaluatorWithGraph:graphCopy];
      if (v18)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v104 = 0;
        v89 = 0;
        v90 = &v89;
        v91 = 0x2020000000;
        v92 = 0x3FC999999999999ALL;
        v19 = [subsetWithEnoughScenesProcessed count];
        if (v11 && (v20 = CFAbsoluteTimeGetCurrent(), v20 - v94[3] >= 0.01) && (v94[3] = v20, v88 = 0, (*(v11 + 2))(v11, &v88, v90[3]), v21 = *(v98 + 24) | v88, *(v98 + 24) = v21, (v21 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v101 = 67109378;
            *v102 = 209;
            *&v102[4] = 2080;
            *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v101, 0x12u);
          }

          v14 = 0;
        }

        else
        {
          temporarySet = [subsetWithEnoughScenesProcessed temporarySet];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __89__PGSharedLibrarySuggestionsProcessor__processMomentNodes_withGraph_error_progressBlock___block_invoke;
          v80[3] = &unk_278884570;
          v82 = &v89;
          v86 = 0.3 / v19;
          v65 = v11;
          v81 = v65;
          v83 = &v93;
          v87 = 0x3F847AE147AE147BLL;
          v84 = &v97;
          v85 = buf;
          v66 = [v18 evaluateObjects:temporarySet withResultEnumerationBlock:v80];
          v63 = v18;

          if (*(v98 + 24) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *v101 = 67109378;
              *v102 = 214;
              *&v102[4] = 2080;
              *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v101, 0x12u);
            }

            v14 = 0;
          }

          else
          {
            v64 = [MEMORY[0x277CBEB58] setWithSet:v66];
            v23 = oslog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v66 count];
              *v101 = 134217984;
              *v102 = v24;
              _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of moments matched by evaluator: %zu", v101, 0xCu);
            }

            if ([v64 count])
            {
              v25 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:graphCopy];
              highlightGroupNodes = [v25 highlightGroupNodes];
              v57 = v25;
              v58 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v66 graph:graphCopy];
              highlightNodes = [(PGGraphMomentNodeCollection *)v58 highlightNodes];
              highlightGroupNodes2 = [highlightNodes highlightGroupNodes];

              v27 = [highlightGroupNodes collectionByIntersecting:highlightGroupNodes2];
              v28 = [v27 count];
              v59 = v27;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *v101 = 134217984;
                *v102 = v28;
                _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of matched trip highlights: %zu", v101, 0xCu);
              }

              if (v28)
              {
                v29 = v23;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v64 count];
                  *v101 = 134217984;
                  *v102 = v30;
                  _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of moments before trip matching: %zu", v101, 0xCu);
                }

                momentNodes = [v27 momentNodes];
                temporarySet2 = [momentNodes temporarySet];
                [v64 unionSet:temporarySet2];
              }

              v33 = v23;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = [v64 count];
                *v101 = 134217984;
                *v102 = v34;
                _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Total number of moments to suggest: %zu", v101, 0xCu);
              }

              photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
              v35 = [(PGSharedLibrarySuggestionsProcessor *)self _momentsForMomentNodes:v64 inPhotoLibrary:?];
              fetchedObjects = [v35 fetchedObjects];

              v36 = [fetchedObjects count];
              v90[3] = 0.5;
              v68 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
              v70 = 0;
              v37 = 0;
              v38 = 0.4 / ((v36 / 0x14) + 1.0);
              v14 = 1;
              *&v39 = 67109378;
              v56 = v39;
              do
              {
                if (!v36)
                {
                  v50 = errorCopy;
                  goto LABEL_54;
                }

                v40 = objc_autoreleasePoolPush();
                v90[3] = v38 + v90[3];
                if (v11 && (Current = CFAbsoluteTimeGetCurrent(), Current - v94[3] >= 0.01) && (v94[3] = Current, v88 = 0, (*(v65 + 2))(v65, &v88, v90[3]), v42 = *(v98 + 24) | v88, *(v98 + 24) = v42, (v42 & 1) != 0))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *v101 = v56;
                    *v102 = 253;
                    *&v102[4] = 2080;
                    *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v101, 0x12u);
                  }

                  v43 = 1;
                }

                else
                {
                  if (v36 >= 0x14)
                  {
                    v44 = 20;
                  }

                  else
                  {
                    v44 = v36;
                  }

                  v45 = [fetchedObjects subarrayWithRange:{v37, v44, v56}];
                  libraryScope = self->_libraryScope;
                  v77[0] = MEMORY[0x277D85DD0];
                  v77[1] = 3221225472;
                  v77[2] = __89__PGSharedLibrarySuggestionsProcessor__processMomentNodes_withGraph_error_progressBlock___block_invoke_211;
                  v77[3] = &unk_278884598;
                  v78 = blockCopy;
                  v79 = &v89;
                  v76 = 0;
                  v14 = [(PGSharedLibrarySuggestionsProcessor *)self _suggestAssetsFromMoments:v45 libraryScope:libraryScope curationContext:v68 progressBlock:v77 error:&v76];
                  v47 = v76;
                  v48 = v47;
                  if (v14)
                  {
                    v43 = 0;
                    v36 -= v44;
                    v37 += v44;
                  }

                  else
                  {
                    v49 = v47;

                    v43 = 3;
                    v70 = v49;
                  }
                }

                objc_autoreleasePoolPop(v40);
              }

              while (!v43);
              v50 = errorCopy;
              if (v43 != 3)
              {
LABEL_51:
                v14 = 0;
                goto LABEL_62;
              }

LABEL_54:
              if (v50 && v70)
              {
                v51 = v70;
                *errorCopy = v70;
              }

              if (v11)
              {
                v52 = CFAbsoluteTimeGetCurrent();
                if (v52 - v94[3] >= 0.01)
                {
                  v94[3] = v52;
                  v88 = 0;
                  (*(v65 + 2))(v65, &v88, 1.0);
                  v53 = *(v98 + 24) | v88;
                  *(v98 + 24) = v53;
                  if (v53)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *v101 = v56;
                      *v102 = 271;
                      *&v102[4] = 2080;
                      *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v101, 0x12u);
                    }

                    goto LABEL_51;
                  }
                }
              }

LABEL_62:
            }

            else
            {
              v14 = 1;
            }
          }

          v18 = v63;
        }

        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v14 = 1;
      }

      v16 = subsetWithEnoughScenesProcessed;
    }

    else
    {
      v14 = 1;
    }
  }

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);

  v54 = *MEMORY[0x277D85DE8];
  return v14;
}

void __89__PGSharedLibrarySuggestionsProcessor__processMomentNodes_withGraph_error_progressBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 48) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 80))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }
  }
}

- (BOOL)processSuggestionsForIncrementalChange:(id)change withError:(id *)error progressBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v50[3] < 0.01) || (v50[3] = v11, LOBYTE(v57) = 0, (*(v10 + 2))(v10, &v57, 0.0), v12 = *(v54 + 24) | v57, *(v54 + 24) = v12, (v12 & 1) == 0))
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    if (![(NSArray *)self->_libraryScopeRules count])
    {
      v13 = 1;
LABEL_31:

      goto LABEL_32;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    uuidsOfMomentsToInsert = [changeCopy uuidsOfMomentsToInsert];
    [v14 unionSet:uuidsOfMomentsToInsert];

    uuidsOfMomentsToUpdate = [changeCopy uuidsOfMomentsToUpdate];
    [v14 unionSet:uuidsOfMomentsToUpdate];

    v13 = 1;
    if (![v14 count])
    {
LABEL_30:

      goto LABEL_31;
    }

    buf = 0;
    *&v60 = &buf;
    *(&v60 + 1) = 0x2020000000;
    v61 = 1;
    v17 = loggingConnection;
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    spid = v18;
    v21 = v18 - 1;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(v57) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGSharedLibrarySuggestionsProcessorIncremental", "", &v57, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v35 = mach_absolute_time();
    workingContext = self->_workingContext;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsForIncrementalChange_withError_progressBlock___block_invoke;
    v39[3] = &unk_278884548;
    v39[4] = self;
    v23 = v20;
    v40 = v23;
    v41 = v14;
    p_buf = &buf;
    errorCopy = error;
    v24 = v10;
    v42 = v24;
    v44 = &v49;
    v47 = 0x3F847AE147AE147BLL;
    v45 = &v53;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v39];
    if (*(v54 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v57 = 67109378;
        LODWORD(v58[0]) = 177;
        WORD2(v58[0]) = 2080;
        *(v58 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
        v25 = MEMORY[0x277D86220];
LABEL_15:
        _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v57, 0x12u);
      }
    }

    else
    {
      v26 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v29 = v23;
      v30 = v29;
      if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        LOWORD(v57) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v30, OS_SIGNPOST_INTERVAL_END, spid, "PGSharedLibrarySuggestionsProcessorIncremental", "", &v57, 2u);
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v57 = 136315394;
        v58[0] = "PGSharedLibrarySuggestionsProcessorIncremental";
        LOWORD(v58[1]) = 2048;
        *(&v58[1] + 2) = ((((v26 - v35) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v57, 0x16u);
      }

      if (!v10 || (Current = CFAbsoluteTimeGetCurrent(), Current - v50[3] < 0.01) || (v50[3] = Current, v38 = 0, (*(v24 + 2))(v24, &v38, 1.0), v32 = *(v54 + 24) | v38, *(v54 + 24) = v32, (v32 & 1) == 0))
      {
        v13 = *(v60 + 24);
        goto LABEL_29;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v57 = 67109378;
        LODWORD(v58[0]) = 180;
        WORD2(v58[0]) = 2080;
        *(v58 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
        v25 = MEMORY[0x277D86220];
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_29:

    _Block_object_dispose(&buf, 8);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x7A04000202;
    LOWORD(v60) = 2080;
    *(&v60 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v13 = 0;
LABEL_32:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v33 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsForIncrementalChange_withError_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _startDateFromLibraryScopeRules:*(*(a1 + 32) + 24)];
  v5 = [MEMORY[0x277CBEAA8] date];
  if ([v4 compare:v5] == -1)
  {
    v7 = [v3 graph];
    v8 = [PGGraphMomentNodeCollection momentNodesForUUIDs:*(a1 + 48) inGraph:v7];
    v9 = [v8 count];
    if (v9 == [*(a1 + 48) count])
    {
      v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];
      v11 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v10 inGraph:v7];
      v12 = [v8 collectionByIntersecting:v11];

      v13 = [v12 count];
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = v4;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = v13;
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of incremental moment to evaluate between %@ and %@: %zu", buf, 0x20u);
      }

      if (v13)
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 88);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsForIncrementalChange_withError_progressBlock___block_invoke_206;
        v19[3] = &unk_27888A188;
        v20 = *(a1 + 56);
        v22 = *(a1 + 96);
        v21 = *(a1 + 72);
        *(*(*(a1 + 64) + 8) + 24) = [v15 _processMomentNodes:v12 withGraph:v7 error:v16 progressBlock:v19];
      }

      v8 = v12;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PGSharedLibrarySuggestionsProcessor] Failed to fetch moment nodes for %@, fetched: %@. Stopping the task due to potential stale graph", *(a1 + 48), v8];
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      **(a1 + 88) = [PGError errorWithCode:-4 description:v10];
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v4;
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Library start date is after end date: %@ - %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsForIncrementalChange_withError_progressBlock___block_invoke_206(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)processSuggestionsFromStartDate:(id)date toDate:(id)toDate withError:(id *)error progressBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (!v13 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v52[3] < 0.01) || (v52[3] = v14, LOBYTE(v59) = 0, (*(v13 + 2))(v13, &v59, 0.0), v15 = *(v56 + 24) | v59, *(v56 + 24) = v15, (v15 & 1) == 0))
  {
    if (![(NSArray *)self->_libraryScopeRules count])
    {
      v16 = 1;
      goto LABEL_35;
    }

    oslog = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    if ([dateCopy compare:toDateCopy] != -1)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = dateCopy;
        *&buf[12] = 2112;
        *&buf[14] = toDateCopy;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Invalid start date or end date: %@ - %@", buf, 0x16u);
        if (!error)
        {
          goto LABEL_12;
        }
      }

      else if (!error)
      {
LABEL_12:
        v16 = 0;
LABEL_34:

        goto LABEL_35;
      }

      toDateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid start date or end date: %@ - %@", dateCopy, toDateCopy];
      *error = [PGError errorWithCode:-1 description:toDateCopy];

      goto LABEL_12;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    v18 = oslog;
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    spid = v19;
    v22 = v19 - 1;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v59) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGSharedLibrarySuggestionsProcessor", "", &v59, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v36 = mach_absolute_time();
    workingContext = self->_workingContext;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsFromStartDate_toDate_withError_progressBlock___block_invoke;
    v40[3] = &unk_278884520;
    v40[4] = self;
    v41 = dateCopy;
    v42 = toDateCopy;
    v24 = v21;
    v43 = v24;
    v45 = buf;
    errorCopy = error;
    v25 = v13;
    v44 = v25;
    v46 = &v51;
    v49 = 0x3F847AE147AE147BLL;
    v47 = &v55;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v40];
    if (*(v56 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v59 = 67109378;
        LODWORD(v60[0]) = 113;
        WORD2(v60[0]) = 2080;
        *(v60 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
        v26 = MEMORY[0x277D86220];
LABEL_20:
        _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v59, 0x12u);
      }
    }

    else
    {
      v27 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v30 = v24;
      v31 = v30;
      if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        LOWORD(v59) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v31, OS_SIGNPOST_INTERVAL_END, spid, "PGSharedLibrarySuggestionsProcessor", "", &v59, 2u);
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v59 = 136315394;
        v60[0] = "PGSharedLibrarySuggestionsProcessor";
        LOWORD(v60[1]) = 2048;
        *(&v60[1] + 2) = ((((v27 - v36) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v59, 0x16u);
      }

      if (!v13 || (Current = CFAbsoluteTimeGetCurrent(), Current - v52[3] < 0.01) || (v52[3] = Current, v39 = 0, (*(v25 + 2))(v25, &v39, 1.0), v33 = *(v56 + 24) | v39, *(v56 + 24) = v33, (v33 & 1) == 0))
      {
        v16 = *(*&buf[8] + 24);
        goto LABEL_33;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v59 = 67109378;
        LODWORD(v60[0]) = 116;
        WORD2(v60[0]) = 2080;
        *(v60 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
        v26 = MEMORY[0x277D86220];
        goto LABEL_20;
      }
    }

    v16 = 0;
LABEL_33:

    _Block_object_dispose(buf, 8);
    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 66;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/SharedLibrary/PGSharedLibrarySuggestionsProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = 0;
LABEL_35:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  v34 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsFromStartDate_toDate_withError_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _startDateFromLibraryScopeRules:*(*(a1 + 32) + 24)];
  v5 = [*(a1 + 40) laterDate:v4];
  if ([v5 compare:*(a1 + 48)] == -1)
  {
    v7 = [v3 graph];
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:*(a1 + 48)];
    v9 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v8 inGraph:v7];
    v10 = [v9 count];
    v11 = *(a1 + 56);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      *buf = 138412802;
      v22 = v5;
      v23 = 2112;
      v24 = v12;
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Number of moment to evaluate between %@ and %@: %zu", buf, 0x20u);
    }

    if (v10)
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 96);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsFromStartDate_toDate_withError_progressBlock___block_invoke_197;
      v17[3] = &unk_27888A188;
      v18 = *(a1 + 64);
      v20 = *(a1 + 104);
      v19 = *(a1 + 80);
      *(*(*(a1 + 72) + 8) + 24) = [v13 _processMomentNodes:v9 withGraph:v7 error:v14 progressBlock:v17];
      *(*(a1 + 32) + 32) = v10;
    }

    goto LABEL_11;
  }

  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 48);
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v16;
    _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Interval start date is after end date: %@ - %@", buf, 0x16u);
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  if (*(a1 + 96))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid library start date or end date: %@ - %@", v5, *(a1 + 48)];
    **(a1 + 96) = [PGError errorWithCode:-1 description:v7];
LABEL_11:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __102__PGSharedLibrarySuggestionsProcessor_processSuggestionsFromStartDate_toDate_withError_progressBlock___block_invoke_197(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (PGSharedLibrarySuggestionsProcessor)initWithWorkingContext:(id)context libraryScope:(id)scope
{
  contextCopy = context;
  scopeCopy = scope;
  v14.receiver = self;
  v14.super_class = PGSharedLibrarySuggestionsProcessor;
  v9 = [(PGSharedLibrarySuggestionsProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workingContext, context);
    objc_storeStrong(&v10->_libraryScope, scope);
    v11 = [(PGSharedLibrarySuggestionsProcessor *)v10 _rulesForLibraryScope:scopeCopy];
    libraryScopeRules = v10->_libraryScopeRules;
    v10->_libraryScopeRules = v11;
  }

  return v10;
}

+ (id)libraryScopeToUseWithPhotoLibrary:(id)library
{
  v12 = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    if ([v4 count] >= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [firstObject localIdentifier];
      v10 = 138412290;
      v11 = localIdentifier;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] more than 1 active scope configured, using first one: %@", &v10, 0xCu);
    }

    if ([firstObject autoSharePolicy] == 2)
    {
      v6 = firstObject;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGSharedLibrarySuggestionsProcessor] active scope does not have rules", &v10, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGSharedLibrarySuggestionsProcessor] no active scope", &v10, 2u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)shouldIncludeAsset:(id)asset curationContext:(id)context rejectionReason:(id *)reason
{
  v45 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  [assetCopy curationScore];
  if (v9 < *MEMORY[0x277D3C768])
  {
    v10 = 0;
    v11 = @"Utility Asset";
    if (!reason)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = MEMORY[0x277D3C7A8];
  curationProperties = [assetCopy curationProperties];
  importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
  LOBYTE(v12) = [v12 isBlocklistedImportedByBundleIdentifier:importedByBundleIdentifier withExternalAppBlocklistType:0];

  if (v12)
  {
    v10 = 0;
    v11 = @"Imported Asset";
    if (!reason)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ([assetCopy isFavorite] && (objc_msgSend(assetCopy, "clsIsUtility") & 1) != 0)
  {
    v10 = 0;
    v11 = @"Favorited Utility Asset";
    if (!reason)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  curationModel = [assetCopy curationModel];
  v16 = [curationModel isMemeWithAsset:assetCopy];

  if (v16)
  {
    v10 = 0;
    v11 = @"Meme Asset";
    if (!reason)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  clsConsolidatedPersonLocalIdentifiers = [assetCopy clsConsolidatedPersonLocalIdentifiers];
  clsPetLocalIdentifiers = [assetCopy clsPetLocalIdentifiers];
  v19 = [clsConsolidatedPersonLocalIdentifiers arrayByAddingObjectsFromArray:clsPetLocalIdentifiers];

  if ([v19 count])
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v19;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:*(*(&v37 + 1) + 8 * i)];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v23);
    }

    uuid = [assetCopy uuid];
    userFeedbackCalculator = [contextCopy userFeedbackCalculator];
    v43 = uuid;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v41 = uuid;
    v42 = v20;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [userFeedbackCalculator scoreForAssetUUIDs:v29 personsUUIDsByAssetUUIDs:v30];
    v32 = v31;

    v33 = [MEMORY[0x277CD99F8] score:v32 meetsScoreThreshold:*MEMORY[0x277CD9CC0]];
    if (v33)
    {
      v11 = @"User Feedback";
    }

    else
    {
      v11 = 0;
    }

    v10 = v33 ^ 1;

    v19 = v36;
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  if (reason)
  {
LABEL_28:
    *reason = v11;
  }

LABEL_29:

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

@end