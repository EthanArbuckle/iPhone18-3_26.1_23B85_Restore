@interface PHAWallpaperSettlingEffectGenerationTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAWallpaperSettlingEffectGenerationTask

- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  workingContextForSuggestions = [managerCopy workingContextForSuggestions];
  loggingConnection = [workingContextForSuggestions loggingConnection];
  v12 = [[PHASuggestionController alloc] initWithGraphManager:managerCopy];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  photoLibrary = [managerCopy photoLibrary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PHAWallpaperSettlingEffectGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
  aBlock[3] = &unk_2788B3038;
  v15 = loggingConnection;
  v68 = v15;
  errorCopy = error;
  errorCopy2 = error;
  v16 = _Block_copy(aBlock);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __103__PHAWallpaperSettlingEffectGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_306;
  v64[3] = &unk_2788B3060;
  v17 = reporterCopy;
  v65 = v17;
  v18 = v15;
  v66 = v18;
  v19 = _Block_copy(v64);
  if ([v17 isCancelledWithProgress:0.0])
  {
    v16[2](v16);
    v20 = 0;
  }

  else
  {
    v54 = managerCopy;
    v59 = v19;
    v60 = v16;
    v21 = [MEMORY[0x277D3C810] fetchSettlingEffectSuggestionsInPhotoLibrary:photoLibrary];
    v22 = MEMORY[0x277D3C810];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v61 = [v22 fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:librarySpecificFetchOptions excludeExistingWallpapers:1];

    [v17 childProgressReporterFromStart:0.0 toEnd:0.9];
    selfCopy = self;
    v53 = v58 = v12;
    v52 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:"generateSuggestionsWithOptionsDictionary:contentMode:suggestionController:progressReporter:shouldReload:" contentMode:self->_suggestionOptionsDictionary suggestionController:2 progressReporter:v12 shouldReload:?];
    [v13 addObjectsFromArray:?];
    v24 = [MEMORY[0x277D3C810] fetchSettlingEffectSuggestionsInPhotoLibrary:photoLibrary];
    v62 = v21;
    v56 = v13;
    if ([v21 count])
    {
      v48 = 0;
    }

    else
    {
      v48 = [v24 count] != 0;
    }

    v51 = v24;
    v25 = [v24 count];
    v26 = v25 - [v21 count];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v75) = v26;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAWallpaperSettlingEffectGenerationTask] Updated %d wallpaper with settling effect", buf, 8u);
    }

    v27 = MEMORY[0x277D3C810];
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v29 = [v27 fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:librarySpecificFetchOptions2 excludeExistingWallpapers:1];

    v50 = v29;
    v30 = [v29 count];
    v31 = v30 - [v61 count];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v75) = v31;
      _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAWallpaperSettlingEffectGenerationTask] Updated %d highlight assets with settling effect", buf, 8u);
    }

    v32 = v31 + v26;
    v16 = v60;
    if (v31 + v26)
    {
      self->_generatedContent = 1;
    }

    v19 = v59;
    (*(v59 + 2))(v59, v32);
    managerCopy = v54;
    if ([v17 isCancelledWithProgress:0.9])
    {
      v60[2](v60);
      v20 = 0;
    }

    else
    {
      if (v48)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSettlingEffectGenerationTask] No preexisting Wallpaper Suggestions, attempting to run refresh session", buf, 2u);
        }

        v33 = [[PHAWallpaperSuggestionRefreshSession alloc] initWithGraphManager:v54];
        v63 = 0;
        v34 = [(PHAWallpaperSuggestionRefreshSession *)v33 prepareWithError:&v63];
        v35 = v63;
        if (v34)
        {
          v36 = [v17 childProgressReporterFromStart:0.9 toEnd:1.0];
          v37 = [PHAWallpaperSuggestionRefreshSession reloadWallpaperSuggestionsForUUIDs:v33 progress:"reloadWallpaperSuggestionsForUUIDs:progress:error:" error:0];
          v49 = v35;

          v38 = v33;
          [(PHAWallpaperSuggestionRefreshSession *)v33 cleanup];
          if (v37)
          {
            v19 = v59;
            v16 = v60;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAWallpaperSettlingEffectGenerationTask] Successfully ran refresh session", buf, 2u);
            }
          }

          else
          {
            v19 = v59;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v75 = v49;
              _os_log_error_impl(&dword_22FA28000, v18, OS_LOG_TYPE_ERROR, "[PHAWallpaperSettlingEffectGenerationTask] Failed to run refresh session: %@", buf, 0xCu);
            }

            v16 = v60;
            if (errorCopy2)
            {
              *errorCopy2 = v49;
            }
          }

          v13 = v56;
          v12 = v58;
          v40 = v49;
        }

        else
        {
          v38 = v33;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v75 = v35;
            _os_log_fault_impl(&dword_22FA28000, v18, OS_LOG_TYPE_FAULT, "[PHAWallpaperSettlingEffectGenerationTask] Failed to prepare refresh session: %@", buf, 0xCu);
          }

          v16 = v60;
          if (errorCopy2)
          {
            v39 = v35;
            *errorCopy2 = v35;
          }

          v40 = v35;
          v13 = v56;
          v19 = v59;
        }

        self = selfCopy;
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "[PHAWallpaperSettlingEffectGenerationTask] Wallpaper Suggestions preexisted this generation, assuming refresh session already ran today", buf, 2u);
      }

      if ([v17 isCancelledWithProgress:1.0])
      {
        v16[2](v16);
        v20 = 0;
      }

      else
      {
        suggestionOptionsDictionary = [(PHAWallpaperSettlingEffectGenerationTask *)self suggestionOptionsDictionary];
        v42 = [suggestionOptionsDictionary objectForKeyedSubscript:*MEMORY[0x277D3B068]];
        bOOLValue = [v42 BOOLValue];

        if (bOOLValue)
        {
          v70 = *MEMORY[0x277D3B0D0];
          v71 = v13;
          v44 = MEMORY[0x277CBEAC0];
          v45 = &v71;
          v46 = &v70;
        }

        else
        {
          v72 = *MEMORY[0x277D3B0D8];
          v73 = v13;
          v44 = MEMORY[0x277CBEAC0];
          v45 = &v73;
          v46 = &v72;
        }

        v20 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
        v19 = v59;
        v16 = v60;
      }
    }
  }

  return v20;
}

void __103__PHAWallpaperSettlingEffectGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v2, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSettlingEffectGenerationTask] Wallpaper suggestions generation was canceled", v3, 2u);
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
  }
}

void __103__PHAWallpaperSettlingEffectGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_306(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) throughputReportBlock];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, a2, 0);
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSettlingEffectGenerationTask] reporting throughput: %lu", &v7, 0xCu);
    }
  }
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAWallpaperSettlingEffectGenerationTask timeoutFatal:]", "PHAWallpaperSettlingEffectGenerationTask.m", 82, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAWallpaperSettlingEffectGenerationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v5 = [(PHAWallpaperSettlingEffectGenerationTask *)self generateSuggestionsWithGraphManager:manager progressReporter:reporter error:error];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  if ((isSystemPhotoLibrary & 1) == 0)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      name = [(PHAWallpaperSettlingEffectGenerationTask *)self name];
      photoLibrary2 = [managerCopy photoLibrary];
      v11 = [photoLibrary2 debugDescription];
      v13 = 138412546;
      v14 = name;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@ is running on a non system photo library. Library: %@", &v13, 0x16u);
    }
  }

  return isSystemPhotoLibrary;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end