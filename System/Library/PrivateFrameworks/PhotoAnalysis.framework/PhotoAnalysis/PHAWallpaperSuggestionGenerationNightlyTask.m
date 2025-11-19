@interface PHAWallpaperSuggestionGenerationNightlyTask
+ (BOOL)shouldRefreshGalleryWithLoggingConnection:(id)a3;
+ (id)lastGalleryAppearanceDateWithError:(id *)a3;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAWallpaperSuggestionGenerationNightlyTask

+ (id)lastGalleryAppearanceDateWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3728;
  v18 = __Block_byref_object_dispose__3729;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__3728;
  v12[4] = __Block_byref_object_dispose__3729;
  v13 = 0;
  v3 = [MEMORY[0x277CEB530] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__PHAWallpaperSuggestionGenerationNightlyTask_lastGalleryAppearanceDateWithError___block_invoke;
    v8[3] = &unk_2788B20D8;
    v10 = &v14;
    v11 = v12;
    v5 = v4;
    v9 = v5;
    [v3 synchronousDateOfLastGalleryAppearanceWithCompletion:v8];
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  v6 = v15[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __82__PHAWallpaperSuggestionGenerationNightlyTask_lastGalleryAppearanceDateWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

+ (BOOL)shouldRefreshGalleryWithLoggingConnection:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v5 = [a1 lastGalleryAppearanceDateWithError:&v23];
  v6 = v23;
  v7 = +[PHAWallpaperSuggestionRefreshSession lastGalleryRefreshDate];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 persistentDomainForName:@"com.apple.mobileslideshow"];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3CA38]];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_22FA28000, v4, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationNightlyTask] LastGalleryAppearanceDate: %@, LastGalleryRefreshDate: %@, LastWallpaperShelfViewedDate: %@", buf, 0x20u);
  }

  if (v6)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_error_impl(&dword_22FA28000, v4, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Error getting LastGalleryAppearance date from Proactive: %@. Proceed with gallery refresh.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (!v7)
  {
    v11 = 1;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v16 = "[PHAWallpaperSuggestionGenerationNightlyTask] Should refresh wallpaper gallery. Last gallery refresh date is nil";
    v17 = v4;
    v18 = 2;
    goto LABEL_18;
  }

  if (v10)
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSinceDate:v7];
    v14 = v13;

    v11 = v14 > 86400.0;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 138413314;
    v15 = @"Skip";
    if (v14 > 86400.0)
    {
      v15 = @"Should";
    }

    v25 = v15;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = 0x40F5180000000000;
    v16 = "[PHAWallpaperSuggestionGenerationNightlyTask] %@ refresh wallpaper gallery. LastWallpaperShelfViewedDate: %@, LastGalleryRefreshDate: %@, timeSinceLastRefresh: %.2f > minRefreshPeriod: %.2f seconds";
    v17 = v4;
    v18 = 52;
    goto LABEL_18;
  }

  v19 = [(__CFString *)v5 laterDate:v7];
  v20 = [v19 isEqualToDate:v5];

  v21 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (!v21)
    {
LABEL_6:
      v11 = 1;
      goto LABEL_22;
    }

    *buf = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    v16 = "[PHAWallpaperSuggestionGenerationNightlyTask] Should refresh wallpaper gallery. LastGalleryAppearanceDate: %@ is later than LastGalleryRefreshDate: %@";
    v11 = 1;
    v17 = v4;
    v18 = 22;
LABEL_18:
    _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
    goto LABEL_22;
  }

  if (v21)
  {
    *buf = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_22FA28000, v4, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationNightlyTask] Skip refreshing wallpaper gallery. LastGalleryAppearanceDate: %@, LastGalleryRefreshDate: %@", buf, 0x16u);
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v102 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (![v8 isCancelledWithProgress:0.0])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = [v7 workingContextForSuggestions];
    v12 = [v11 loggingConnection];

    v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v14 = [[PHAWallpaperSuggestionRefreshSession alloc] initWithGraphManager:v7];
    v92 = 0;
    LODWORD(v11) = [(PHAWallpaperSuggestionRefreshSession *)v14 prepareWithError:&v92];
    v68 = v92;
    if (!v11)
    {
      v28 = v12;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v46 = objc_opt_class();
        *buf = 138412290;
        *v101 = v46;
        _os_log_fault_impl(&dword_22FA28000, v28, OS_LOG_TYPE_FAULT, "[PHAWallpaperSuggestionGenerationNightlyTask] Failed to create refresh session, %@ will not be able to run, bailing out", buf, 0xCu);
      }

      if (a5)
      {
        v29 = v68;
        v30 = v68;
        v9 = 0;
        *a5 = v68;
      }

      else
      {
        v9 = 0;
        v29 = v68;
      }

      goto LABEL_60;
    }

    v67 = v13;
    v62 = v7;
    v60 = a5;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v101 = v14;
      _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationNightlyTask] Successfully created refresh session %@", buf, 0xCu);
    }

    v15 = v14;
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [v8 progressReportersForParallelOperationsWithCount:3];
    dispatch_group_enter(v16);
    v19 = [v18 firstObject];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v8;
    }

    v22 = v21;

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
    v86[3] = &unk_2788B20B0;
    v65 = v67;
    v87 = v65;
    v61 = v12;
    v23 = v12;
    v88 = v23;
    v24 = v10;
    v89 = v24;
    v25 = v17;
    v90 = v25;
    v26 = v16;
    v91 = v26;
    v64 = v15;
    v59 = v22;
    [(PHAWallpaperSuggestionRefreshSession *)v15 refreshPosterConfigurationsForNightlyRefresh:1 progressReporter:v22 passingFilter:0 withCompletion:v86];
    if ([objc_opt_class() shouldRefreshGalleryWithLoggingConnection:v23])
    {
      dispatch_group_enter(v26);
      if ([v18 count] <= 1)
      {
        v27 = v8;
      }

      else
      {
        v27 = [v18 objectAtIndexedSubscript:1];
      }

      v31 = v27;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_283;
      v80[3] = &unk_2788B20B0;
      v81 = v65;
      v82 = v23;
      v83 = v24;
      v84 = v25;
      v85 = v26;
      [(PHAWallpaperSuggestionRefreshSession *)v15 refreshPosterDescriptorsWithProgressReporter:v31 completion:v80];
    }

    dispatch_group_enter(v26);
    if ([v18 count] <= 2)
    {
      v32 = v8;
    }

    else
    {
      v32 = [v18 objectAtIndexedSubscript:2];
    }

    v33 = v32;
    v7 = v62;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_287;
    v74[3] = &unk_2788B20B0;
    v34 = v65;
    v75 = v34;
    v35 = v23;
    v76 = v35;
    v36 = v24;
    v77 = v36;
    v63 = v25;
    v78 = v63;
    v37 = v26;
    v79 = v37;
    v14 = v64;
    v58 = v33;
    [(PHAWallpaperSuggestionRefreshSession *)v64 refreshAmbientDescriptorsWithProgressReporter:v33 completion:v74];
    dispatch_group_leave(v37);
    v38 = dispatch_time(0, 300000000000);
    v57 = v37;
    v39 = dispatch_group_wait(v37, v38);
    v66 = v34;
    if ([v8 isCancelledWithProgress:1.0])
    {
      [v34 lock];
      v13 = v67;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v35, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationNightlyTask] Wallpaper suggestions refresh was canceled", buf, 2u);
      }

      v40 = v60;
      if ([v63 count])
      {
        v98 = *MEMORY[0x277CCA578];
        v99 = v63;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      }

      else
      {
        v41 = 0;
      }

      v29 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:16 userInfo:v41];

      [v66 unlock];
      v36 = 0;
    }

    else
    {
      v13 = v67;
      if (v39)
      {
        [v34 lock];
        v29 = v68;
        if (!v68)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22FA28000, v35, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Timed out refreshing wallpaper suggestions", buf, 2u);
          }

          if ([v63 count])
          {
            v96 = *MEMORY[0x277CCA578];
            v97 = v63;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          }

          else
          {
            v42 = 0;
          }

          v29 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9 userInfo:v42];
        }

        [v34 unlock];
        v36 = 0;
      }

      else
      {
        if ([v63 count])
        {
          v40 = v60;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22FA28000, v35, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Refreshing wallpaper suggestions failed because of underlying errors", buf, 2u);
          }

          v43 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA578];
          v95 = v63;
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v45 = [v43 pl_analysisErrorWithCode:26 userInfo:v44];

          v36 = 0;
          v29 = v45;
          goto LABEL_46;
        }

        v29 = v68;
      }

      v40 = v60;
    }

LABEL_46:
    v47 = [v8 throughputReportBlock];
    if (v47)
    {
      v56 = v18;
      v69 = v29;
      [v66 lock];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v48 = [&unk_2844CCB28 countByEnumeratingWithState:&v70 objects:v93 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = 0;
        v51 = *v71;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v71 != v51)
            {
              objc_enumerationMutation(&unk_2844CCB28);
            }

            v53 = [v36 objectForKeyedSubscript:*(*(&v70 + 1) + 8 * i)];
            v50 += [v53 count];
          }

          v49 = [&unk_2844CCB28 countByEnumeratingWithState:&v70 objects:v93 count:16];
        }

        while (v49);
      }

      else
      {
        v50 = 0;
      }

      [v66 unlock];
      v47[2](v47, v50, 0);
      v40 = v60;
      v12 = v61;
      v13 = v67;
      v29 = v69;
      v14 = v64;
      v18 = v56;
    }

    [(PHAWallpaperSuggestionRefreshSession *)v14 cleanup];
    if (v40)
    {
      v54 = v29;
      *v40 = v29;
    }

    v10 = v36;

    v9 = v10;
LABEL_60:

    goto LABEL_61;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v101 = 101;
    *&v101[4] = 2080;
    *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SuggestionTasks/PHAWallpaperSuggestionGenerationNightlyTask.m";
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = MEMORY[0x277CBEC10];
LABEL_61:

  return v9;
}

void __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  v7 = *(a1 + 40);
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Failed to refresh poster configurations: %@", &v8, 0xCu);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    [*(a1 + 56) addObject:v6];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationNightlyTask] Successfully refreshed poster configurations", &v8, 2u);
  }

  [*(a1 + 48) setObject:v5 forKeyedSubscript:@"shuffleInfo"];
LABEL_8:
  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 64));
}

void __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_283(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  v7 = *(a1 + 40);
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Failed to refresh poster descriptors: %@", &v8, 0xCu);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    [*(a1 + 56) addObject:v6];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationNightlyTask] Successfully refreshed poster descriptors", &v8, 2u);
  }

  [*(a1 + 48) setObject:v5 forKeyedSubscript:@"galleryInfo"];
LABEL_8:
  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 64));
}

void __106__PHAWallpaperSuggestionGenerationNightlyTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke_287(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) lock];
  v7 = *(a1 + 40);
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHAWallpaperSuggestionGenerationNightlyTask] Failed to refresh ambient poster descriptors: %@", &v8, 0xCu);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    [*(a1 + 56) addObject:v6];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionGenerationNightlyTask] Successfully refreshed ambient poster descriptors", &v8, 2u);
  }

  [*(a1 + 48) setObject:v5 forKeyedSubscript:@"ambientInfo"];
LABEL_8:
  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 64));
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAWallpaperSuggestionGenerationNightlyTask timeoutFatal:]", "PHAWallpaperSuggestionGenerationNightlyTask.m", 93, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAWallpaperSuggestionGenerationNightlyTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v5 = [(PHAWallpaperSuggestionGenerationNightlyTask *)self generateSuggestionsWithGraphManager:a3 progressReporter:a4 error:a5];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 isSystemPhotoLibrary];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 workingContext];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHAWallpaperSuggestionGenerationNightlyTask *)self name];
      v10 = [v4 photoLibrary];
      v11 = [v10 debugDescription];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_DEFAULT, "%@ is running on a non system photo library. Library: %@", &v13, 0x16u);
    }
  }

  return v6;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end