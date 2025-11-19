@interface PHAWallpaperSuggestionGenerationWeeklyTask
+ (id)generationOptionNameFromSingleOption:(unint64_t)a3;
+ (void)sendWallpaperGenerationCompletedBiomeEvent:(id)a3;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (NSString)name;
- (PHAWallpaperSuggestionGenerationWeeklyTask)initWithGenerationOptions:(unint64_t)a3;
- (double)period;
- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)taskClassDependencies;
- (unint64_t)featureCode;
- (void)timeoutFatal:(BOOL)a3;
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

- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v111 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v91 = [v8 workingContextForSuggestions];
  v10 = [v91 loggingConnection];
  v92 = [[PHASuggestionController alloc] initWithGraphManager:v8];
  v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94 = [v8 photoLibrary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
  aBlock[3] = &unk_2788B3038;
  v11 = v10;
  v103 = v11;
  v104 = a5;
  v12 = _Block_copy(aBlock);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __105__PHAWallpaperSuggestionGenerationWeeklyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_298;
  v99[3] = &unk_2788B3060;
  v13 = v9;
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

  v90 = [objc_alloc(MEMORY[0x277D3BC40]) initWithPhotoLibrary:v94];
  v85 = [v90 libraryIsProcessedEnough];
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
      v21 = a5;
      v22 = v17;
      v23 = self;
      v24 = v14;
      v25 = v12;
      v26 = [v18 count];
      [v18 componentsJoinedByString:{@", "}];
      v27 = v81 = v8;
      *buf = 67109378;
      *v110 = v26;
      v12 = v25;
      v14 = v24;
      self = v23;
      v17 = v22;
      a5 = v21;
      v13 = v20;
      *&v110[4] = 2112;
      *&v110[6] = v27;
      _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d wallpaper shuffle suggestions with local identifiers %@", buf, 0x12u);

      v8 = v81;
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
    v29 = self;
    v30 = v28;
    v87 = v29;
    v31 = [PHAWallpaperSuggestionGenerationUtils generateSuggestionsWithOptionsDictionary:v29->_suggestionOptionsDictionary contentMode:1 suggestionController:v92 progressReporter:v28 shouldReload:&v97];
    v16 = (v97 | v16) != 0;
    v32 = oslog;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = v14;
      v34 = a5;
      v35 = v12;
      v36 = [v31 count];
      [v31 componentsJoinedByString:{@", "}];
      v37 = v82 = v8;
      *buf = 67109378;
      *v110 = v36;
      v12 = v35;
      a5 = v34;
      v14 = v33;
      *&v110[4] = 2112;
      *&v110[6] = v37;
      _os_log_impl(&dword_22FA28000, v32, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d wallpaper top suggestions with local identifiers %@", buf, 0x12u);

      v8 = v82;
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
      v41 = a5;
      v42 = v38;
      v43 = self;
      v44 = v14;
      v45 = v12;
      v46 = [v39 count];
      v47 = [v39 componentsJoinedByString:{@", "}];
      *buf = 67109378;
      *v110 = v46;
      v12 = v45;
      v14 = v44;
      self = v43;
      v38 = v42;
      a5 = v41;
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
      if ((v85 & 1) == 0)
      {
        v48 = v12;
        v49 = [v90 libraryIsEmpty];
        goto LABEL_25;
      }

      v48 = v12;
    }

    v49 = 1;
LABEL_25:
    v50 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v50 setBool:v49 forKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnoughForAmbient"];

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
      v54 = self;
      v55 = v14;
      v56 = a5;
      v57 = v12;
      v58 = [v52 count];
      [v52 componentsJoinedByString:{@", "}];
      v59 = v84 = v8;
      *buf = 67109378;
      *v110 = v58;
      v12 = v57;
      a5 = v56;
      v14 = v55;
      self = v54;
      *&v110[4] = 2112;
      *&v110[6] = v59;
      _os_log_impl(&dword_22FA28000, v53, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Generated %d Me suggestions with local identifiers %@", buf, 0x12u);

      v8 = v84;
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

  v60 = [[PHAWallpaperSuggestionRefreshSession alloc] initWithGraphManager:v8];
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
      if (!a5)
      {
        goto LABEL_52;
      }
    }

    else if (!a5)
    {
LABEL_52:

      goto LABEL_53;
    }

    v67 = v65;
    *a5 = v65;
    goto LABEL_52;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *v110 = v62;
    _os_log_fault_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] Failed to prepare refresh session: %@", buf, 0xCu);
    if (!a5)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (a5)
  {
LABEL_47:
    v66 = v62;
    *a5 = v62;
  }

LABEL_48:
  v65 = v62;
LABEL_53:

LABEL_54:
  v68 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v68 setBool:v85 forKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough"];

  if (v85 && v97 == 1)
  {
    [objc_opt_class() sendWallpaperGenerationCompletedBiomeEvent:oslog];
  }

  v69 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self suggestionOptionsDictionary];

  if (!v69)
  {
    v70 = [[PHAWallpaperSuggestionAnalyticsSender alloc] initWithGraphManager:v8 libraryAnalysisSummary:v90];
    [(PHAWallpaperSuggestionAnalyticsSender *)v70 sendWallpaperGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:v93];
    if ((generationOptions & 8) != 0)
    {
      [(PHAWallpaperSuggestionAnalyticsSender *)v70 sendAmbientGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:v93];
    }
  }

  if (![v13 isCancelledWithProgress:1.0])
  {
    v72 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self suggestionOptionsDictionary];
    v73 = [v72 objectForKeyedSubscript:*MEMORY[0x277D3B068]];
    v74 = [v73 BOOLValue];

    if (v74)
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

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAWallpaperSuggestionGenerationWeeklyTask timeoutFatal:]", "PHAWallpaperSuggestionGenerationWeeklyTask.m", 163, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAWallpaperSuggestionGenerationWeeklyTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v5 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self generateSuggestionsWithGraphManager:a3 progressReporter:a4 error:a5];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 isSystemPhotoLibrary];

  if (v6)
  {
    if ((self->_generationOptions & 0x12) != 0)
    {
      v7 = [v4 isReady];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v8 = [v4 workingContext];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHAWallpaperSuggestionGenerationWeeklyTask *)self name];
      v11 = [v4 photoLibrary];
      v12 = [v11 debugDescription];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "%@ is running on a non system photo library. Library: %@", &v14, 0x16u);
    }

    v7 = 0;
  }

  return v7;
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
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnough"];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PHAWallpaperSuggestionGenerationWeeklyTaskLibraryIsProcessedEnoughForAmbient"];

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

- (PHAWallpaperSuggestionGenerationWeeklyTask)initWithGenerationOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PHAWallpaperSuggestionGenerationWeeklyTask;
  result = [(PHAWallpaperSuggestionGenerationWeeklyTask *)&v5 init];
  if (result)
  {
    result->_generationOptions = a3;
    result->_generatedContent = 0;
  }

  return result;
}

+ (void)sendWallpaperGenerationCompletedBiomeEvent:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];

  v6 = [objc_alloc(MEMORY[0x277CF1168]) initWithContentIdentifier:@"com.apple.photoanalysisd.wallpaper-generation-completed" context:v5 osBuild:0 userInfo:0];
  v7 = BiomeLibrary();
  v8 = [v7 Discoverability];
  v9 = [v8 Signals];
  v10 = [v9 source];

  [v10 sendEvent:v6];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_22FA28000, v3, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationWeeklyTask] Sent wallpaper-generation-completed Biome event", v11, 2u);
  }
}

+ (id)generationOptionNameFromSingleOption:(unint64_t)a3
{
  if (a3 > 7)
  {
    if (a3 != 8)
    {
      if (a3 == 16)
      {
        return @"Me";
      }

      return @"None";
    }

    return @"Ambient";
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return @"Top";
      }

      return @"None";
    }

    return @"Shuffle";
  }
}

@end