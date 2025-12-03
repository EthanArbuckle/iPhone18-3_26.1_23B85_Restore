@interface PXUpNextMemoriesGenerationRequest
- (PXUpNextMemoriesGenerationRequest)init;
- (PXUpNextMemoriesGenerationRequest)initWithRootMemory:(id)memory avoidMemoriesWithLocalIdentifiers:(id)identifiers targetUpNextMemoryCount:(unint64_t)count musicCurationParameters:(id)parameters;
- (id)_fetchLocalMemoriesWithLocalIdentifiers:(id)identifiers;
- (id)_fetchOverrideMemories;
- (id)fetchUpNextMemoriesWithError:(id *)error;
- (id)fetchUpNextMemoriesWithError:(id *)error sharingFilter:(unsigned __int16)filter;
- (void)startGenerationWithCompletionHandler:(id)handler;
@end

@implementation PXUpNextMemoriesGenerationRequest

- (id)_fetchLocalMemoriesWithLocalIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    photoLibrary = [(PXUpNextMemoriesGenerationRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    [librarySpecificFetchOptions setIncludeLocalMemories:1];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier IN %@", identifiersCopy];
    [v7 addObject:identifiersCopy];

    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"pendingState = %d", 2];
    [v7 addObject:v9];

    v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
    [librarySpecificFetchOptions setPredicate:v10];

    v11 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    fetchedObjects = [v11 fetchedObjects];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77__PXUpNextMemoriesGenerationRequest__fetchLocalMemoriesWithLocalIdentifiers___block_invoke;
    v28[3] = &unk_1E773B910;
    v13 = identifiersCopy;
    v29 = v13;
    v14 = [fetchedObjects sortedArrayUsingComparator:v28];

    v15 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary2 = [v11 photoLibrary];
    fetchType = [v11 fetchType];
    fetchPropertySets = [v11 fetchPropertySets];
    v19 = [v15 initWithObjects:v14 photoLibrary:photoLibrary2 fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    v20 = PLMemoriesGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 count];
      *buf = 134218242;
      v31 = v21;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "[UpNext] Fetched %lu UpNext Memories:%@", buf, 0x16u);
    }

    v22 = [v19 count];
    if (v22 != [v13 count])
    {
      v23 = PLMemoriesGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v13 count];
        v25 = [v19 count];
        *buf = 134218240;
        v31 = v24;
        v32 = 2048;
        v33 = v25;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "[UpNext] Failed fetching local memories. Expecting:%lu Got:%lu", buf, 0x16u);
      }
    }

    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t __77__PXUpNextMemoriesGenerationRequest__fetchLocalMemoriesWithLocalIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 localIdentifier];
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v8)}];
  v10 = MEMORY[0x1E696AD98];
  v11 = *(a1 + 32);
  v12 = [v7 localIdentifier];

  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "indexOfObject:", v12)}];
  v14 = [v9 compare:v13];

  return v14;
}

- (id)fetchUpNextMemoriesWithError:(id *)error sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v105 = *MEMORY[0x1E69E9840];
  v7 = PLMemoriesGetLog();
  selfCopy = self;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    targetUpNextMemoryCount = [(PXUpNextMemoriesGenerationRequest *)self targetUpNextMemoryCount];
    rootMemory = [(PXUpNextMemoriesGenerationRequest *)self rootMemory];
    [rootMemory localIdentifier];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    rootMemory2 = [(PXUpNextMemoriesGenerationRequest *)self rootMemory];
    title = [rootMemory2 title];
    *buf = 134218498;
    v100 = targetUpNextMemoryCount;
    v101 = 2112;
    v102 = v10;
    v103 = 2112;
    v104 = title;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[UpNext] Fetch %lu suggestions for memory:%@ - %@", buf, 0x20u);

    self = selfCopy;
  }

  v13 = +[PXUpNextSettings sharedInstance];
  if (![v13 overrideMemoriesResult] || (-[PXUpNextMemoriesGenerationRequest _fetchOverrideMemories](self, "_fetchOverrideMemories"), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    errorCopy = error;
    v91 = v13;
    v15 = PLUpNextGetLog();
    v16 = os_signpost_id_generate(v15);
    v17 = v15;
    v18 = v17;
    v88 = v16 - 1;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PXUpNextMemoriesGenerationRequest", "", buf, 2u);
    }

    spid = v16;
    v87 = v18;

    info = 0;
    mach_timebase_info(&info);
    v79 = mach_absolute_time();
    v19 = +[PXMemoriesRelatedSettings sharedInstance];
    useOnlyMusicForTopicInTopPickSuggestions = [v19 useOnlyMusicForTopicInTopPickSuggestions];
    includeChillMixInMusicForYou = [v19 includeChillMixInMusicForYou];
    v89 = v19;
    includeGetUpMixInMusicForYou = [v19 includeGetUpMixInMusicForYou];
    v85 = objc_alloc(MEMORY[0x1E695DF90]);
    v97[0] = *MEMORY[0x1E69BEBC8];
    rootMemory3 = [(PXUpNextMemoriesGenerationRequest *)self rootMemory];
    localIdentifier = [rootMemory3 localIdentifier];
    v98[0] = localIdentifier;
    v97[1] = *MEMORY[0x1E69BEBB8];
    memoryLocalIdentifiersToAvoid = [(PXUpNextMemoriesGenerationRequest *)self memoryLocalIdentifiersToAvoid];
    allObjects = [memoryLocalIdentifiersToAvoid allObjects];
    v98[1] = allObjects;
    v97[2] = *MEMORY[0x1E69BEBD0];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXUpNextMemoriesGenerationRequest targetUpNextMemoryCount](self, "targetUpNextMemoryCount")}];
    v98[2] = v23;
    v97[3] = *MEMORY[0x1E69BEBD8];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXUpNextMemoriesGenerationRequest wantsVerboseDebugInfo](self, "wantsVerboseDebugInfo")}];
    v98[3] = v24;
    v97[4] = *MEMORY[0x1E69BEBC0];
    v80 = filterCopy;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:filterCopy];
    v98[4] = v25;
    v97[5] = *MEMORY[0x1E69BECB8];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:useOnlyMusicForTopicInTopPickSuggestions];
    v98[5] = v26;
    v97[6] = *MEMORY[0x1E69BEC50];
    v27 = [MEMORY[0x1E696AD98] numberWithBool:includeChillMixInMusicForYou];
    v98[6] = v27;
    v97[7] = *MEMORY[0x1E69BEC58];
    v28 = [MEMORY[0x1E696AD98] numberWithBool:includeGetUpMixInMusicForYou];
    v98[7] = v28;
    v97[8] = *MEMORY[0x1E69BEB38];
    recentlyUsedFlexSongIDs = [(PXUpNextMemoriesGenerationRequest *)self recentlyUsedFlexSongIDs];
    v30 = recentlyUsedFlexSongIDs;
    v31 = MEMORY[0x1E695E0F0];
    if (recentlyUsedFlexSongIDs)
    {
      v32 = recentlyUsedFlexSongIDs;
    }

    else
    {
      v32 = MEMORY[0x1E695E0F0];
    }

    v98[8] = v32;
    v97[9] = *MEMORY[0x1E69BEB40];
    recentlyUsedAppleMusicSongIDs = [(PXUpNextMemoriesGenerationRequest *)self recentlyUsedAppleMusicSongIDs];
    v34 = recentlyUsedAppleMusicSongIDs;
    if (recentlyUsedAppleMusicSongIDs)
    {
      v35 = recentlyUsedAppleMusicSongIDs;
    }

    else
    {
      v35 = v31;
    }

    v98[9] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:10];
    v37 = [v85 initWithDictionary:v36];

    if ([v91 enableCustomVectors])
    {
      featureWeightVectors = [v91 featureWeightVectors];
      v39 = PLMemoriesGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v100 = featureWeightVectors;
        _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_DEFAULT, "[UpNext] custom vector:%@", buf, 0xCu);
      }

      [v37 setObject:featureWeightVectors forKeyedSubscript:*MEMORY[0x1E69BEBB0]];
    }

    photoAnalysisServiceClient = [(PXUpNextMemoriesGenerationRequest *)selfCopy photoAnalysisServiceClient];
    v94 = 0;
    v41 = [photoAnalysisServiceClient requestUpNextMemoryLocalIdentifiersWithOptions:v37 error:&v94];
    v42 = v94;

    v86 = v37;
    if (v41 && ([v91 forceFallbackMemories] & 1) == 0)
    {
      [v41 objectForKeyedSubscript:*MEMORY[0x1E69BEBE8]];
      v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v44 = errorCopy;
      if (v47 == 0.0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v52 = PLMemoriesGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v100 = *&v47;
          _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_ERROR, "[UpNext] memoryLocalIdentifiers: %@, is nil or not a NSArray object", buf, 0xCu);
        }
      }

      v45 = [v41 objectForKeyedSubscript:*MEMORY[0x1E69BEBE0]];
      if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v53 = PLMemoriesGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v100 = v45;
          _os_log_impl(&dword_1A3C1C000, v53, OS_LOG_TYPE_ERROR, "[UpNext] debugInfo: %@, is nil or not a NSString object", buf, 0xCu);
        }

        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UpNext debugInfo: %@, is nil or not a NSString object", v45];

        v45 = v54;
      }

      v55 = PLMemoriesGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [*&v47 count];
        *buf = 134218242;
        v100 = v56;
        v101 = 2112;
        v102 = v47;
        _os_log_impl(&dword_1A3C1C000, v55, OS_LOG_TYPE_DEFAULT, "[UpNext] Found %lu UpNext Memories from PhotoAnalysis:%@", buf, 0x16u);
      }

      v51 = [(PXUpNextMemoriesGenerationRequest *)selfCopy _fetchLocalMemoriesWithLocalIdentifiers:*&v47];
    }

    else
    {
      v43 = PLMemoriesGetLog();
      v44 = errorCopy;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v42;
        _os_log_impl(&dword_1A3C1C000, v43, OS_LOG_TYPE_ERROR, "[UpNext] generation error:%@", buf, 0xCu);
      }

      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpNext] generation error:%@. Using Fallback Memory.", v42];

      v46 = MEMORY[0x1E6978920];
      [(PXUpNextMemoriesGenerationRequest *)selfCopy rootMemory];
      v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      targetUpNextMemoryCount = selfCopy->_targetUpNextMemoryCount;
      memoryLocalIdentifiersToAvoid2 = [(PXUpNextMemoriesGenerationRequest *)selfCopy memoryLocalIdentifiersToAvoid];
      allObjects2 = [memoryLocalIdentifiersToAvoid2 allObjects];
      v93 = 0;
      v51 = [v46 fetchFallbackMemoriesForMemory:*&v47 targetCount:targetUpNextMemoryCount memoryLocalIdentifiersToAvoid:allObjects2 sharingFilter:v80 error:&v93];
      v42 = v93;
    }

    v57 = [v51 count];
    if (v57)
    {
      v58 = *&v57;
      v59 = selfCopy;
      if (v57 < selfCopy->_targetUpNextMemoryCount)
      {
        v60 = PLMemoriesGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = selfCopy->_targetUpNextMemoryCount;
          *buf = 134218240;
          v100 = v61;
          v101 = 2048;
          v102 = v58;
          _os_log_impl(&dword_1A3C1C000, v60, OS_LOG_TYPE_DEFAULT, "[UpNext] Insufficient number of suggestions. Need %lu, got %lu; returning 1.", buf, 0x16u);
        }

        v62 = objc_alloc(MEMORY[0x1E69788E0]);
        firstObject = [v51 firstObject];
        v96 = firstObject;
        v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
        photoLibrary = [v51 photoLibrary];
        fetchType = [v51 fetchType];
        fetchPropertySets = [v51 fetchPropertySets];
        v68 = [v62 initWithObjects:v64 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

        v59 = selfCopy;
        v51 = v68;
        v44 = errorCopy;
      }
    }

    else
    {
      v59 = selfCopy;
    }

    v69 = [v45 stringByAppendingFormat:@" Requested Count: %li.", v59->_targetUpNextMemoryCount];

    v14 = [[PXUpNextMemoriesGenerationResult alloc] initWithMemories:v51 debugInfo:v69];
    v70 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v73 = v87;
    v74 = v73;
    v13 = v91;
    if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v74, OS_SIGNPOST_INTERVAL_END, spid, "PXUpNextMemoriesGenerationRequest", "", buf, 2u);
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v100 = "PXUpNextMemoriesGenerationRequest";
      v101 = 2048;
      v102 = ((((v70 - v79) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_1A3C1C000, v74, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v42)
    {
      v75 = PLMemoriesGetLog();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v42;
        _os_log_impl(&dword_1A3C1C000, v75, OS_LOG_TYPE_ERROR, "[UpNext] Generation error:%@", buf, 0xCu);
      }
    }

    if (v44)
    {
      v76 = v42;
      *v44 = v42;
    }
  }

  return v14;
}

- (id)fetchUpNextMemoriesWithError:(id *)error
{
  photoLibrary = [(PXUpNextMemoriesGenerationRequest *)self photoLibrary];
  v6 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  v7 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v6];
  v8 = [(PXUpNextMemoriesGenerationRequest *)self fetchUpNextMemoriesWithError:error sharingFilter:[(PXLibraryFilterState *)v7 sharingFilter]];

  return v8;
}

- (id)_fetchOverrideMemories
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/var/mobile/Media/PhotoData/Caches/GraphService/upNextMemoriesResultOverride.plist"];
  rootMemory = [(PXUpNextMemoriesGenerationRequest *)self rootMemory];
  localIdentifier = [rootMemory localIdentifier];
  v6 = [v3 objectForKeyedSubscript:localIdentifier];

  if (v6)
  {
    v7 = [(PXUpNextMemoriesGenerationRequest *)self _fetchLocalMemoriesWithLocalIdentifiers:v6];
    v8 = [[PXUpNextMemoriesGenerationResult alloc] initWithMemories:v7 debugInfo:&stru_1F1741150];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startGenerationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PXUpNextMemoriesGenerationRequest_startGenerationWithCompletionHandler___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v10, &location);
  v5 = handlerCopy;
  v9 = v5;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  workQueue = [(PXUpNextMemoriesGenerationRequest *)self workQueue];
  dispatch_async(workQueue, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __74__PXUpNextMemoriesGenerationRequest_startGenerationWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  v3 = [WeakRetained fetchUpNextMemoriesWithError:&v5];
  v4 = v5;

  (*(*(a1 + 32) + 16))();
}

- (PXUpNextMemoriesGenerationRequest)initWithRootMemory:(id)memory avoidMemoriesWithLocalIdentifiers:(id)identifiers targetUpNextMemoryCount:(unint64_t)count musicCurationParameters:(id)parameters
{
  memoryCopy = memory;
  identifiersCopy = identifiers;
  parametersCopy = parameters;
  v30.receiver = self;
  v30.super_class = PXUpNextMemoriesGenerationRequest;
  v14 = [(PXUpNextMemoriesGenerationRequest *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rootMemory, memory);
    photoLibrary = [memoryCopy photoLibrary];
    photoLibrary = v15->_photoLibrary;
    v15->_photoLibrary = photoLibrary;

    photoAnalysisClient = [(PHPhotoLibrary *)v15->_photoLibrary photoAnalysisClient];
    photoAnalysisServiceClient = v15->_photoAnalysisServiceClient;
    v15->_photoAnalysisServiceClient = photoAnalysisClient;

    localIdentifier = [memoryCopy localIdentifier];
    v21 = [identifiersCopy setByAddingObject:localIdentifier];
    memoryLocalIdentifiersToAvoid = v15->_memoryLocalIdentifiersToAvoid;
    v15->_memoryLocalIdentifiersToAvoid = v21;

    v15->_targetUpNextMemoryCount = count;
    recentlyUsedFlexSongIDs = [parametersCopy recentlyUsedFlexSongIDs];
    allObjects = [recentlyUsedFlexSongIDs allObjects];
    recentlyUsedFlexSongIDs = v15->_recentlyUsedFlexSongIDs;
    v15->_recentlyUsedFlexSongIDs = allObjects;

    recentlyUsedAppleMusicSongIDs = [parametersCopy recentlyUsedAppleMusicSongIDs];
    allObjects2 = [recentlyUsedAppleMusicSongIDs allObjects];
    recentlyUsedAppleMusicSongIDs = v15->_recentlyUsedAppleMusicSongIDs;
    v15->_recentlyUsedAppleMusicSongIDs = allObjects2;

    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_claimAutoreleasedReturnValue();
    px_dispatch_queue_create();
  }

  return 0;
}

- (PXUpNextMemoriesGenerationRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUpNextMemoriesGenerationRequest.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXUpNextMemoriesGenerationRequest init]"}];

  abort();
}

@end