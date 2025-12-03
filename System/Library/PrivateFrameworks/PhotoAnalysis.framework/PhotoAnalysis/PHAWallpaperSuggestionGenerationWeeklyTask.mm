@interface PHAWallpaperSuggestionGenerationWeeklyTask
+ (id)generationOptionNameFromSingleOption:(unint64_t)option;
+ (void)sendWallpaperGenerationCompletedBiomeEvent:(id)event;
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (NSString)name;
- (PHAWallpaperSuggestionGenerationWeeklyTask)initWithGenerationOptions:(unint64_t)options;
- (double)period;
- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (id)taskClassDependencies;
- (unint64_t)featureCode;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAWallpaperSuggestionGenerationWeeklyTask

- (unint64_t)featureCode
{
  generatedContent = self->_generatedContent;
  if (generatedContent)
  {
    return 103;
  }

  else
  {
    return ((generatedContent << 60) >> 63) & 0x6D;
  }
}

- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v111 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  workingContextForSuggestions = [managerCopy workingContextForSuggestions];
  loggingConnection = [workingContextForSuggestions loggingConnection];
  v92 = [[PHASuggestionController alloc] initWithGraphManager:managerCopy];
  v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
  photoLibrary = [managerCopy photoLibrary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
  aBlock[3] = &unk_2788B3038;
  v11 = loggingConnection;
  v103 = v11;
  errorCopy = error;
  v12 = _Block_copy(aBlock);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_298;
  v99[3] = &unk_2788B3060;
  v13 = reporterCopy;
  v100 = v13;
  oslog = v11;
  v101 = oslog;
  v14 = _Block_copy(v99);
  if ([v13 isCancelledWithProgress:0.0])
  {
    v12[2](v12);
    v15 = 0;
    goto LABEL_65;
  }

  v90 = [objc_alloc(MEMORY[0x277D3BC40]) initWithPhotoLibrary:photoLibrary];
  libraryIsProcessedEnough = [v90 libraryIsProcessedEnough];
  v16 = 0;
  v98 = 0;
  if (self->_generationOptions)
  {
    v17 = [v13 childProgressReporterFromStart:0.11 toEnd:0.29];
    v18 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:self->_suggestionOptionsDictionary contentMode:0 suggestionController:v92 progressReporter:v17 shouldReload:&v98];
    v86 = v98;
    v19 = oslog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v13;
      errorCopy2 = error;
      v22 = v17;
      selfCopy = self;
      v24 = v14;
      v25 = v12;
      v26 = [v18 count];
      [v18 componentsJoinedByString:{@", "}];
      v27 = v81 = managerCopy;
      *buf = 67109378;
      *v110 = v26;
      v12 = v25;
      v14 = v24;
      self = selfCopy;
      v17 = v22;
      error = errorCopy2;
      v13 = v20;
      *&v110[4] = 2112;
      *&v110[6] = v27;
      _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d wallpaper shuffle suggestions with local identifiers %@", buf, 0x12u);

      managerCopy = v81;
    }

    [v93 addObjectsFromArray:v18];
    if ([v18 count])
    {
      self->_generatedContent |= 1uLL;
    }

    v14[2](v14, [v18 count]);

    v16 = v86;
  }

  if ([v13 isCancelledWithProgress:0.3])
  {
    goto LABEL_63;
  }

  v97 = 0;
  if ((self->_generationOptions & 2) != 0)
  {
    v28 = [v13 childProgressReporterFromStart:0.31 toEnd:0.59];
    selfCopy2 = self;
    v30 = v28;
    v87 = selfCopy2;
    v31 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:selfCopy2->_suggestionOptionsDictionary contentMode:1 suggestionController:v92 progressReporter:v28 shouldReload:&v97];
    v16 = (v97 | v16) != 0;
    v32 = oslog;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = v14;
      errorCopy3 = error;
      v35 = v12;
      v36 = [v31 count];
      [v31 componentsJoinedByString:{@", "}];
      v37 = v82 = managerCopy;
      *buf = 67109378;
      *v110 = v36;
      v12 = v35;
      error = errorCopy3;
      v14 = v33;
      *&v110[4] = 2112;
      *&v110[6] = v37;
      _os_log_impl(&dword_22FA28000, v32, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d wallpaper top suggestions with local identifiers %@", buf, 0x12u);

      managerCopy = v82;
    }

    [v93 addObjectsFromArray:v31];
    if ([v31 count])
    {
      v87->_generatedContent |= 2uLL;
    }

    v14[2](v14, [v31 count]);

    self = v87;
  }

  if ([v13 isCancelledWithProgress:0.5])
  {
    goto LABEL_63;
  }

  generationOptions = self->_generationOptions;
  if ((generationOptions & 8) != 0)
  {
    v88 = v16;
    v38 = [v13 childProgressReporterFromStart:0.61 toEnd:0.69];
    v39 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:self->_suggestionOptionsDictionary contentMode:3 suggestionController:v92 progressReporter:v38 shouldReload:0];
    v40 = oslog;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v83 = v13;
      errorCopy4 = error;
      v42 = v38;
      selfCopy3 = self;
      v44 = v14;
      v45 = v12;
      v46 = [v39 count];
      v47 = [v39 componentsJoinedByString:{@", "}];
      *buf = 67109378;
      *v110 = v46;
      v12 = v45;
      v14 = v44;
      self = selfCopy3;
      v38 = v42;
      error = errorCopy4;
      v13 = v83;
      *&v110[4] = 2112;
      *&v110[6] = v47;
      _os_log_impl(&dword_22FA28000, v40, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d ambient suggestions with local identifiers %@", buf, 0x12u);
    }

    [v93 addObjectsFromArray:v39];
    if ([v39 count])
    {
      v48 = v12;
      self->_generatedContent |= 8uLL;
    }

    else
    {
      if ((libraryIsProcessedEnough & 1) == 0)
      {
        v48 = v12;
        libraryIsEmpty = [v90 libraryIsEmpty];
        goto LABEL_25;
      }

      v48 = v12;
    }

    libraryIsEmpty = 1;
LABEL_25:
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:libraryIsEmpty forKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnoughForAmbient"];

    v14[2](v14, [v39 count]);
    v12 = v48;
    v16 = v88;
  }

  if ([v13 isCancelledWithProgress:0.7])
  {
    goto LABEL_63;
  }

  if (_os_feature_enabled_impl() && (self->_generationOptions & 0x10) != 0)
  {
    v89 = v16;
    v51 = [v13 childProgressReporterFromStart:0.71 toEnd:0.79];
    v52 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:self->_suggestionOptionsDictionary contentMode:4 suggestionController:v92 progressReporter:v51 shouldReload:0];
    v53 = oslog;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      selfCopy4 = self;
      v55 = v14;
      errorCopy5 = error;
      v57 = v12;
      v58 = [v52 count];
      [v52 componentsJoinedByString:{@", "}];
      v59 = v84 = managerCopy;
      *buf = 67109378;
      *v110 = v58;
      v12 = v57;
      error = errorCopy5;
      v14 = v55;
      self = selfCopy4;
      *&v110[4] = 2112;
      *&v110[6] = v59;
      _os_log_impl(&dword_22FA28000, v53, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d Me suggestions with local identifiers %@", buf, 0x12u);

      managerCopy = v84;
    }

    [v93 addObjectsFromArray:v52];
    if ([v52 count])
    {
      self->_generatedContent |= 0x10uLL;
    }

    v14[2](v14, [v52 count]);

    v16 = v89;
  }

  if ([v13 isCancelledWithProgress:0.8])
  {
    goto LABEL_63;
  }

  v78 = v12;
  if (!v16)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Wallpaper Suggestions preexisted this generation, assuming refresh session already ran today", buf, 2u);
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] No preexisting Wallpaper Suggestions, attempting to run refresh session", buf, 2u);
  }

  v60 = [[PHAWallpaperSuggestionRefreshSession alloc] initWithGraphManager:managerCopy];
  v96 = 0;
  v61 = [(PHAWallpaperSuggestionRefreshSession *)v60 prepareWithError:&v96];
  v62 = v96;
  if (v61)
  {
    v63 = [v13 childProgressReporterFromStart:0.9 toEnd:1.0];
    v64 = [PHAWallpaperSuggestionRefreshSession reloadWallpaperSuggestionsForUUIDs:v60 progress:"reloadWallpaperSuggestionsForUUIDs:progress:error:" error:0];
    v65 = v62;

    [(PHAWallpaperSuggestionRefreshSession *)v60 cleanup];
    if (v64)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Successfully ran refresh session", buf, 2u);
      }

      goto LABEL_52;
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v110 = v65;
      _os_log_error_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationWeeklyTask] Failed to run refresh session: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_52;
      }
    }

    else if (!error)
    {
LABEL_52:

      goto LABEL_53;
    }

    v67 = v65;
    *error = v65;
    goto LABEL_52;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *v110 = v62;
    _os_log_fault_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] Failed to prepare refresh session: %@", buf, 0xCu);
    if (!error)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (error)
  {
LABEL_47:
    v66 = v62;
    *error = v62;
  }

LABEL_48:
  v65 = v62;
LABEL_53:

LABEL_54:
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setBool:libraryIsProcessedEnough forKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough"];

  if (libraryIsProcessedEnough && v97 == 1)
  {
    [objc_opt_class() sendWallpaperGenerationCompletedBiomeEvent:oslog];
  }

  suggestionOptionsDictionary = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self suggestionOptionsDictionary];

  if (!suggestionOptionsDictionary)
  {
    v70 = [[PHAWallpaperSuggestionAnalyticsSender alloc] initWithGraphManager:managerCopy libraryAnalysisSummary:v90];
    [(PHAWallpaperSuggestionAnalyticsSender *)v70 sendWallpaperGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:v93];
    if ((generationOptions & 8) != 0)
    {
      [(PHAWallpaperSuggestionAnalyticsSender *)v70 sendAmbientGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:v93];
    }
  }

  if (![v13 isCancelledWithProgress:1.0])
  {
    suggestionOptionsDictionary2 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self suggestionOptionsDictionary];
    v73 = [suggestionOptionsDictionary2 objectForKeyedSubscript:*MEMORY[0x277D3B068]];
    bOOLValue = [v73 BOOLValue];

    if (bOOLValue)
    {
      v105 = *MEMORY[0x277D3B0D0];
      v106 = v93;
      v75 = MEMORY[0x277CBEAC0];
      v76 = &v106;
      v77 = &v105;
    }

    else
    {
      v107 = *MEMORY[0x277D3B0D8];
      v108 = v93;
      v75 = MEMORY[0x277CBEAC0];
      v76 = &v108;
      v77 = &v107;
    }

    v15 = [v75 dictionaryWithObjects:v76 forKeys:v77 count:1];
    v12 = v79;
    goto LABEL_64;
  }

  v12 = v79;
LABEL_63:
  v12[2](v12);
  v15 = 0;
LABEL_64:

LABEL_65:

  return v15;
}

void __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v2, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] Wallpaper suggestions generation was canceled", v3, 2u);
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16];
  }
}

void __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_298(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] reporting throughput: %lu", &v7, 0xCu);
    }
  }
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAWallpaperSuggestionGenerationWeeklyTask timeoutFatal:]", "PHAWallpaperSuggestionGenerationWeeklyTask.m", 163, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAWallpaperSuggestionGenerationWeeklyTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v5 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self generateSuggestionsWithGraphManager:manager progressReporter:reporter error:error];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    if ((self->_generationOptions & 0x12) != 0)
    {
      isReady = [managerCopy isReady];
    }

    else
    {
      isReady = 1;
    }
  }

  else
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      name = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self name];
      photoLibrary2 = [managerCopy photoLibrary];
      v12 = [photoLibrary2 debugDescription];
      v14 = 138412546;
      v15 = name;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@ is running on a non system photo library. Library: %@", &v14, 0x16u);
    }

    isReady = 0;
  }

  return isReady;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (double)period
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults2 BOOLForKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnoughForAmbient"];

  result = 604800.0;
  if ((v4 & (v6 | ((self->_generationOptions & 8) == 0))) == 0)
  {
    return -2.0;
  }

  return result;
}

- (NSString)name
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  generationOptions = self->_generationOptions;
  if (generationOptions)
  {
    v9 = [objc_opt_class() generationOptionNameFromSingleOption:1];
    [v3 addObject:v9];

    generationOptions = self->_generationOptions;
    if ((generationOptions & 2) == 0)
    {
LABEL_3:
      if ((generationOptions & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((generationOptions & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [objc_opt_class() generationOptionNameFromSingleOption:2];
  [v3 addObject:v10];

  generationOptions = self->_generationOptions;
  if ((generationOptions & 8) == 0)
  {
LABEL_4:
    if ((generationOptions & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v11 = [objc_opt_class() generationOptionNameFromSingleOption:8];
  [v3 addObject:v11];

  if ((self->_generationOptions & 0x10) != 0)
  {
LABEL_5:
    v5 = [objc_opt_class() generationOptionNameFromSingleOption:16];
    [v3 addObject:v5];
  }

LABEL_6:
  if ([v3 count])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 componentsJoinedByString:@"|"];
    v8 = [v6 stringWithFormat:@"PHAWallpaperWeeklyTask[%@]", v7];
  }

  else
  {
    v8 = @"PHAWallpaperWeeklyTask";
  }

  return v8;
}

- (PHAWallpaperSuggestionGenerationWeeklyTask)initWithGenerationOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = PHAWallpaperSuggestionGenerationWeeklyTask;
  result = [(PHAWallpaperSuggestionGenerationWeeklyTask *)&v5 init];
  if (result)
  {
    result->_generationOptions = options;
    result->_generatedContent = 0;
  }

  return result;
}

+ (void)sendWallpaperGenerationCompletedBiomeEvent:(id)event
{
  eventCopy = event;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v6 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.photoanalysisd.wallpaper-generation-completed" context:bundleIdentifier osBuild:0 userInfo:0];
  v7 = BiomeLibrary();
  discoverability = [v7 Discoverability];
  signals = [discoverability Signals];
  source = [signals source];

  [source sendEvent:v6];
  if (os_log_type_enabled(eventCopy, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_22FA28000, eventCopy, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Sent wallpaper-generation-completed Biome event", v11, 2u);
  }
}

+ (id)generationOptionNameFromSingleOption:(unint64_t)option
{
  if (option > 7)
  {
    if (option != 8)
    {
      if (option == 16)
      {
        return @"Me";
      }

      return @"None";
    }

    return @"Ambient";
  }

  else
  {
    if (option != 1)
    {
      if (option == 2)
      {
        return @"Top";
      }

      return @"None";
    }

    return @"Shuffle";
  }
}

@end