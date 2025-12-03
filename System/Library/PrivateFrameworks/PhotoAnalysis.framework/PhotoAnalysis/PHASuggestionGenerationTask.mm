@interface PHASuggestionGenerationTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (PHASuggestionGenerationTask)init;
- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (id)initForFastPass;
- (id)taskClassDependencies;
- (unsigned)suggestionProfileFromSuggestionType:(unsigned __int16)type subtype:(unsigned __int16)subtype;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHASuggestionGenerationTask

- (unsigned)suggestionProfileFromSuggestionType:(unsigned __int16)type subtype:(unsigned __int16)subtype
{
  if (subtype == 502)
  {
    return 3;
  }

  if (type > 0xEu)
  {
    return 0;
  }

  return byte_22FCDE638[type];
}

- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  photoLibrary = [managerCopy photoLibrary];
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [[PHASuggestionController alloc] initWithGraphManager:managerCopy];
  if (self->_suggestionOptionsDictionary)
  {
    v10 = [objc_alloc(MEMORY[0x277D3BBF0]) initWithOptionsDictionary:self->_suggestionOptionsDictionary];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D3BBF0]);
  }

  v11 = v10;
  [v10 setDefaultStartAndEndDatesIfNeeded];
  v51 = managerCopy;
  v12 = [(NSDictionary *)self->_suggestionOptionsDictionary objectForKeyedSubscript:*MEMORY[0x277D3B0A0]];

  [(PHASuggestionController *)v9 ingestExistingSuggestionsWithOptions:v11];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  fetchedObjects = [v14 fetchedObjects];

  [(PHASuggestionController *)v9 setExistingMemories:fetchedObjects];
  [(PHASuggestionController *)v9 cacheWidgetSuggestionsWithCurrentlyFeaturedState];
  if (v67[3])
  {
    *(v67 + 24) = 1;
    goto LABEL_7;
  }

  v15 = [reporterCopy isCancelledWithProgress:0.0];
  *(v67 + 24) = v15;
  if (v15)
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v75 = 140;
      *&v75[4] = 2080;
      *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHASuggestionGenerationTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    if (error && !*error)
    {
      v16 = [MEMORY[0x277D22C28] errorForCode:-4];
LABEL_12:
      v17 = 0;
      *error = v16;
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  suggestionOptionsDictionary = self->_suggestionOptionsDictionary;
  if (!suggestionOptionsDictionary || (-[NSDictionary objectForKeyedSubscript:](suggestionOptionsDictionary, "objectForKeyedSubscript:", *MEMORY[0x277D3B080]), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 BOOLValue], v19, (v20 & 1) != 0))
  {
    v50 = 1;
LABEL_16:
    if (!v12)
    {
      [v11 setMaximumNumberOfSuggestions:1];
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
    v63[3] = &unk_2788B2178;
    v65 = &v66;
    v64 = reporterCopy;
    v21 = [(PHASuggestionController *)v9 generateSingleAssetSuggestionsWithOptions:v11 progress:v63];
    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = reporterCopy;
      v24 = [v21 count];
      v25 = [v21 componentsJoinedByString:{@", "}];
      *buf = 67109378;
      *v75 = v24;
      *&v75[4] = 2112;
      *&v75[6] = v25;
      _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_INFO, "[PHASuggestionGenerationTask] Generated %d Single Asset suggestions with local identifiers %@", buf, 0x12u);

      reporterCopy = v23;
    }

    if (*(v67 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v75 = 159;
        *&v75[4] = 2080;
        *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHASuggestionGenerationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (error && !*error)
      {
        *error = [MEMORY[0x277D22C28] errorForCode:-4];
      }

      goto LABEL_76;
    }

    [v53 addObjectsFromArray:v21];

    v26 = 0;
    goto LABEL_29;
  }

  v27 = [(NSDictionary *)self->_suggestionOptionsDictionary objectForKeyedSubscript:*MEMORY[0x277D3B0C8]];
  integerValue = [v27 integerValue];

  v29 = [(NSDictionary *)self->_suggestionOptionsDictionary objectForKeyedSubscript:*MEMORY[0x277D3B0B8]];
  LOWORD(v27) = [v29 integerValue];

  v26 = [(PHASuggestionGenerationTask *)self suggestionProfileFromSuggestionType:integerValue subtype:v27];
  v50 = 0;
  if (!v26)
  {
    goto LABEL_16;
  }

LABEL_29:
  if ((v50 & 1) != 0 || v26 == 4)
  {
    if (!v12)
    {
      [v11 setMaximumNumberOfSuggestions:3];
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_209;
    v60[3] = &unk_2788B2178;
    v62 = &v66;
    v61 = reporterCopy;
    v30 = [(PHASuggestionController *)v9 generateOnThisDayAssetSuggestionsWithOptions:v11 progress:v60];
    v31 = self->_loggingConnection;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v49 = reporterCopy;
      v32 = [v30 count];
      v33 = [v30 componentsJoinedByString:{@", "}];
      *buf = 67109378;
      *v75 = v32;
      *&v75[4] = 2112;
      *&v75[6] = v33;
      _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_INFO, "[PHASuggestionGenerationTask] Generated %d On This Day suggestions with local identifiers %@", buf, 0x12u);

      reporterCopy = v49;
    }

    if (*(v67 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v75 = 172;
        *&v75[4] = 2080;
        *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHASuggestionGenerationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (error && !*error)
      {
        *error = [MEMORY[0x277D22C28] errorForCode:-4];
      }

      goto LABEL_76;
    }

    [v53 addObjectsFromArray:v30];
  }

  if (v26 == 3)
  {
    v34 = 1;
  }

  else
  {
    v34 = v50;
  }

  if (v34 == 1)
  {
    if (!v12)
    {
      newFeaturedSuggestionsCount = [(PHASuggestionController *)v9 newFeaturedSuggestionsCount];
      if (newFeaturedSuggestionsCount >= 0xA)
      {
        v36 = 1;
      }

      else
      {
        v36 = 10 - newFeaturedSuggestionsCount;
      }

      [v11 setMaximumNumberOfSuggestions:v36];
    }

    [v11 setClearFeaturedSuggestions:v50];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_210;
    v57[3] = &unk_2788B2178;
    v59 = &v66;
    v58 = reporterCopy;
    v37 = [(PHASuggestionController *)v9 generateWidgetSuggestionsWithOptions:v11 progress:v57];
    v38 = self->_loggingConnection;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [v37 count];
      v40 = [v37 componentsJoinedByString:{@", "}];
      *buf = 67109378;
      *v75 = v39;
      *&v75[4] = 2112;
      *&v75[6] = v40;
      _os_log_impl(&dword_22FA28000, v38, OS_LOG_TYPE_INFO, "[PHASuggestionGenerationTask] Generated %d Widget suggestions with local identifiers %@", buf, 0x12u);
    }

    if (*(v67 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v75 = 191;
        *&v75[4] = 2080;
        *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHASuggestionGenerationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (error && !*error)
      {
        *error = [MEMORY[0x277D22C28] errorForCode:-4];
      }

      goto LABEL_76;
    }

    [v53 addObjectsFromArray:v37];
  }

  if ([v53 count])
  {
    if (!self->_fastPass)
    {
      self->_featureComplete = 1;
    }

    loggingConnection = self->_loggingConnection;
    v56 = 0;
    v42 = [PHAMemoryElectionTask reloadForYouWidgetTimelineWithLoggingConnection:loggingConnection error:&v56];
    v43 = v56;
    if (!v42)
    {
      v44 = self->_loggingConnection;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v75 = v43;
        _os_log_error_impl(&dword_22FA28000, v44, OS_LOG_TYPE_ERROR, "[PHASuggestionGenerationTask] Error calling reloadWidgetTimelineWithPhotoLibrary (%@)", buf, 0xCu);
      }
    }
  }

  if (v67[3])
  {
    *(v67 + 24) = 1;
  }

  else
  {
    v45 = [reporterCopy isCancelledWithProgress:1.0];
    *(v67 + 24) = v45;
    if ((v45 & 1) == 0)
    {
      if ([v11 discardGeneratedSuggestions])
      {
        v70 = *MEMORY[0x277D3B0D0];
        v71 = v53;
        v47 = &v70;
        v48 = &v71;
      }

      else
      {
        v72 = *MEMORY[0x277D3B0D8];
        v73 = v53;
        v47 = &v72;
        v48 = &v73;
      }

      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:1];
      goto LABEL_77;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v75 = 208;
    *&v75[4] = 2080;
    *&v75[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHASuggestionGenerationTask.m";
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  if (error && !*error)
  {
    v16 = [MEMORY[0x277D22C28] errorForCode:-4];
    goto LABEL_12;
  }

LABEL_76:
  v17 = 0;
LABEL_77:

  _Block_object_dispose(&v66, 8);

  return v17;
}

uint64_t __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_209(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __90__PHASuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_210(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHASuggestionGenerationTask timeoutFatal:]", "PHASuggestionGenerationTask.m", 113, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASuggestionGenerationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  v9 = [(PHASuggestionGenerationTask *)self generateSuggestionsWithGraphManager:manager progressReporter:reporterCopy error:error];
  throughputReportBlock = [reporterCopy throughputReportBlock];

  if (throughputReportBlock)
  {
    throughputReportBlock2 = [reporterCopy throughputReportBlock];
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3B0D8]];
    throughputReportBlock2[2](throughputReportBlock2, [v12 count], 0);
  }

  return v9 != 0;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v4 = PLIsFeaturedContentAllowed();
  if ((v4 & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHASuggestionGenerationTask] featured content is disabled in settings", v7, 2u);
    }
  }

  return v4;
}

- (id)taskClassDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)initForFastPass
{
  result = [(PHASuggestionGenerationTask *)self init];
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

- (PHASuggestionGenerationTask)init
{
  v7.receiver = self;
  v7.super_class = PHASuggestionGenerationTask;
  v2 = [(PHASuggestionGenerationTask *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_fastPass = 0;
    v4 = os_log_create("com.apple.PhotosGraph", "SuggestionGenerationTask");
    loggingConnection = v3->_loggingConnection;
    v3->_loggingConnection = v4;

    v3->_featureCode = 100;
  }

  return v3;
}

@end