@interface PHARemoveFeaturedContentTask
- (BOOL)clearAllFeaturedStateForMemoriesAndSuggestionsWithPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (BOOL)shouldRunWithPhotoLibrary:(id)a3;
- (PHARemoveFeaturedContentTask)init;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHARemoveFeaturedContentTask

- (BOOL)clearAllFeaturedStateForMemoriesAndSuggestionsWithPhotoLibrary:(id)a3 error:(id *)a4
{
  v49[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v36 = self;
  v6 = self->_loggingConnection;
  v7 = os_signpost_id_generate(v6);
  info = 0;
  mach_timebase_info(&info);
  v8 = v6;
  v9 = v8;
  v40 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ClearAllFeaturedStateForMemoriesAndSuggestions", "", buf, 2u);
  }

  v37 = mach_absolute_time();
  v10 = [v5 librarySpecificFetchOptions];
  [v10 setWantsIncrementalChangeDetails:0];
  LOBYTE(v11) = 1;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"featuredState == %d", 1];
  [v10 setPredicate:v12];

  [v10 setIncludePendingMemories:1];
  [v10 setIncludeGuestAssets:1];
  v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v10];
  v14 = [v5 librarySpecificFetchOptions];
  [v14 setWantsIncrementalChangeDetails:0];
  [v14 setIncludeGuestAssets:1];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"featuredState == %d", 1];
  v16 = [MEMORY[0x277CD99E0] predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
  v17 = MEMORY[0x277CCA920];
  v38 = v16;
  v39 = v15;
  v49[0] = v16;
  v49[1] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [v14 setPredicate:v19];

  v20 = [MEMORY[0x277CD99E0] fetchAllFeaturedStateEnabledSuggestionsWithOptions:v14];
  v21 = [v13 count];
  v22 = [v20 count];
  if (v21 | v22)
  {
    v23 = v22;
    v33 = v7;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __101__PHARemoveFeaturedContentTask_clearAllFeaturedStateForMemoriesAndSuggestionsWithPhotoLibrary_error___block_invoke;
    v42[3] = &unk_2788B2C00;
    v43 = v13;
    v44 = v20;
    v41 = 0;
    v34 = v5;
    v11 = [v5 performChangesAndWait:v42 error:&v41];
    v24 = v41;
    loggingConnection = v36->_loggingConnection;
    if (v11)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v47 = v21;
        *&v47[4] = 1024;
        *&v47[6] = v23;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHARemoveFeaturedContentTask] Unfeatured %d memories and %d suggestions", buf, 0xEu);
      }
    }

    else
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v47 = v21;
        *&v47[4] = 1024;
        *&v47[6] = v23;
        LOWORD(v48[0]) = 2112;
        *(v48 + 2) = v24;
        _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHARemoveFeaturedContentTask] Update featured %d memories and %d suggestions - failed: %@", buf, 0x18u);
      }

      if (a4)
      {
        v26 = v24;
        *a4 = v24;
      }
    }

    v7 = v33;
    v5 = v34;
  }

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v9;
  v31 = v30;
  if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v31, OS_SIGNPOST_INTERVAL_END, v7, "ClearAllFeaturedStateForMemoriesAndSuggestions", "", buf, 2u);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v47 = "ClearAllFeaturedStateForMemoriesAndSuggestions";
    *&v47[8] = 2048;
    v48[0] = ((((v27 - v37) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v11;
}

void __101__PHARemoveFeaturedContentTask_clearAllFeaturedStateForMemoriesAndSuggestionsWithPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277CD98E8] changeRequestForMemory:*(*(&v18 + 1) + 8 * v6)];
        [v7 setFeaturedState:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:{*(*(&v14 + 1) + 8 * v12), v14}];
        [v13 setFeaturedState:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHARemoveFeaturedContentTask timeoutFatal:]", "PHARemoveFeaturedContentTask.m", 77, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHARemoveFeaturedContentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 workingContext];
  v11 = [v10 photoLibrary];
  v12 = [v9 analytics];

  LOBYTE(a5) = [(PHARemoveFeaturedContentTask *)self runWithPhotoLibrary:v11 analytics:v12 progressReporter:v8 error:a5];
  return a5;
}

- (BOOL)shouldRunWithPhotoLibrary:(id)a3
{
  v4 = PLIsFeaturedContentAllowed();
  if ((v4 & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHARemoveFeaturedContentTask] should run, featured content is disabled", v7, 2u);
    }
  }

  return v4 ^ 1;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v4 = [a3 photoLibrary];
  LOBYTE(self) = [(PHARemoveFeaturedContentTask *)self shouldRunWithPhotoLibrary:v4];

  return self;
}

- (PHARemoveFeaturedContentTask)init
{
  v6.receiver = self;
  v6.super_class = PHARemoveFeaturedContentTask;
  v2 = [(PHARemoveFeaturedContentTask *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.PhotosGraph", "suggestions");
    loggingConnection = v2->_loggingConnection;
    v2->_loggingConnection = v3;
  }

  return v2;
}

@end