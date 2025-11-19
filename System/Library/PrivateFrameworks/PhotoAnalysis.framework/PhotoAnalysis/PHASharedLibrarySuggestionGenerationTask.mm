@interface PHASharedLibrarySuggestionGenerationTask
+ (BOOL)resetSuggestionsWithGraphManager:(id)a3 error:(id *)a4;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (NSString)name;
- (PHASharedLibrarySuggestionGenerationTask)initWithTaskType:(signed __int16)a3;
- (double)period;
- (id)incrementalKey;
- (id)taskClassDependencies;
- (void)_sendNotificationWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHASharedLibrarySuggestionGenerationTask

- (void)_sendNotificationWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobileslideshow"];
  HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
  v9 = HasInternalDiagnostics;
  if (HasInternalDiagnostics)
  {
    v10 = [v7 BOOLForKey:@"ForceSharedLibrarySuggestionsNotification"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = objc_alloc(MEMORY[0x277CCAD80]);
  v13 = [v12 initWithStoreIdentifier:*MEMORY[0x277D3B5C8] type:0];
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHASharedLibrarySuggestionGenerationTask] notification defaults override is set", buf, 2u);
    }

    v15 = *MEMORY[0x277D3B5B0];
LABEL_8:
    v16 = [v5 assetsdClient];
    v17 = [v16 notificationClient];

    [v17 asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:v11];
    [v14 setObject:v11 forKey:v15];
    goto LABEL_50;
  }

  if (([v13 synchronize] & 1) == 0 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22FA28000, v6, OS_LOG_TYPE_ERROR, "[PHASharedLibrarySuggestionGenerationTask] Store synchronize failed", buf, 2u);
  }

  v18 = [v14 objectForKey:*MEMORY[0x277D3B5B8]];
  v17 = v18;
  v49 = v7;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v20 = v19;
  v48 = v5;
  v21 = [v5 librarySpecificFetchOptions];
  v53[0] = *MEMORY[0x277CD9AA8];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [v21 setFetchPropertySets:v22];

  [v21 setShouldPrefetchCount:1];
  [v21 setWantsIncrementalChangeDetails:0];
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"addedDate", v20];
  [v21 setInternalPredicate:v23];

  v24 = [MEMORY[0x277CD97A8] fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:v21];
  v25 = [v24 count];
  if (v25 > 9)
  {
    v46 = v20;
    v47 = v11;
    v45 = v24;
    v15 = *MEMORY[0x277D3B5B0];
    v26 = [v14 objectForKey:*MEMORY[0x277D3B5B0]];
    if (!v26)
    {
      goto LABEL_34;
    }

    v44 = v15;
    if (v9)
    {
      v27 = @"SLNotificationMinimumNumberOfDaysBetweenNotifications";
      if (v25 > 0x31)
      {
        v27 = @"SLHPNotificationMinimumNumberOfDaysBetweenNotifications";
      }

      v28 = v27;
      v29 = [v49 integerForKey:v28];
      if (v29 < 1)
      {

        v41 = 15;
        if (v25 > 0x31)
        {
          v41 = 3;
        }

        v30 = v47;
        if (!v29)
        {
          v29 = v41;
        }

LABEL_31:
        [MEMORY[0x277D27690] components:16 fromDate:v26 toDate:v30 options:0];
        v31 = v25;
        v33 = v32 = v26;
        v34 = [v33 day];

        v26 = v32;
        v25 = v31;
        v15 = v44;
        if (v34 < v29)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 67109632;
            *v51 = v25;
            *&v51[4] = 1024;
            *&v51[6] = v34;
            LOWORD(v52[0]) = 1024;
            *(v52 + 2) = v29;
            v35 = "[PHASharedLibrarySuggestionGenerationTask] skip notification for %d suggestions - %d days since last notified less than %d";
LABEL_48:
            _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, v35, buf, 0x14u);
            goto LABEL_49;
          }

          goto LABEL_49;
        }

LABEL_34:
        v11 = v47;
        if (!v17)
        {
          goto LABEL_64;
        }

        v43 = v26;
        if (v9)
        {
          v36 = @"SLHPNotificationMinimumNumberOfDaysSinceLastSeenSuggestions";
          if (v25 > 0x31)
          {
            v36 = @"SLNotificationMinimumNumberOfDaysSinceLastSeenSuggestions";
          }

          v37 = v36;
          v38 = [v49 integerForKey:v37];
          if (v38 < 1)
          {

            v42 = 15;
            if (v25 > 0x31)
            {
              v42 = 3;
            }

            if (!v38)
            {
              v38 = v42;
            }
          }

          else
          {
            if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *v51 = v37;
              *&v51[8] = 1024;
              v52[0] = v38;
              _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] notification using override %@ = %d", buf, 0x12u);
            }
          }
        }

        else
        {
          v38 = v25 <= 0x31 ? 15 : 3;
        }

        v39 = [MEMORY[0x277D27690] components:16 fromDate:v17 toDate:v47 options:0];
        v40 = [v39 day];

        v26 = v43;
        if (v40 >= v38)
        {
LABEL_64:
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v51 = v25;
            _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_DEFAULT, "[PHASharedLibrarySuggestionGenerationTask] sending notification for %d suggestions", buf, 8u);
          }

          v5 = v48;
          v7 = v49;
          goto LABEL_8;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          *v51 = v25;
          *&v51[4] = 1024;
          *&v51[6] = v40;
          LOWORD(v52[0]) = 1024;
          *(v52 + 2) = v38;
          v35 = "[PHASharedLibrarySuggestionGenerationTask] skip notification for %d suggestions - %d days since last seen less than %d";
          goto LABEL_48;
        }

LABEL_49:

        v5 = v48;
        v7 = v49;
        v11 = v47;
        goto LABEL_50;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v51 = v28;
        *&v51[8] = 1024;
        v52[0] = v29;
        _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] notification using override %@ = %d", buf, 0x12u);
      }
    }

    else if (v25 <= 0x31)
    {
      v29 = 15;
    }

    else
    {
      v29 = 3;
    }

    v30 = v47;
    goto LABEL_31;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v51 = v25;
    *&v51[4] = 1024;
    *&v51[6] = 10;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] skip notification - not enough suggestions: %d < %d", buf, 0xEu);
  }

  v5 = v48;
  v7 = v49;
LABEL_50:
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHASharedLibrarySuggestionGenerationTask timeoutFatal:]", "PHASharedLibrarySuggestionGenerationTask.m", 222, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASharedLibrarySuggestionGenerationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v24 = a4;
  v11 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = [v10 workingContext];
  v13 = MEMORY[0x277D3BBD0];
  v14 = [v12 photoLibrary];
  v15 = [v13 libraryScopeToUseWithPhotoLibrary:v14];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D3BBD0]) initWithWorkingContext:v12 libraryScope:v15];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __109__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke;
    v25[3] = &unk_2788B2178;
    v27 = &v28;
    v26 = v11;
    v17 = [v16 processSuggestionsForIncrementalChange:v24 withError:a6 progressBlock:v25];
    if (*(v29 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 213;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SharedLibraryTasks/PHASharedLibrarySuggestionGenerationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (a6 && !*a6)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *a6 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v17;
      v20 = [v10 photoLibrary];
      v21 = [v10 workingContext];
      v22 = [v21 loggingConnection];
      [(PHASharedLibrarySuggestionGenerationTask *)self _sendNotificationWithPhotoLibrary:v20 loggingConnection:v22];
    }
  }

  else
  {
    v19 = [v12 loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
    }

    if (a6)
    {
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
      *a6 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  _Block_object_dispose(&v28, 8);
  return v18;
}

uint64_t __109__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2)
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

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v53[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v10 = [v8 workingContext];
  v11 = MEMORY[0x277D3BBD0];
  v12 = [v10 photoLibrary];
  v13 = [v11 libraryScopeToUseWithPhotoLibrary:v12];

  if (v13)
  {
    v38 = [objc_alloc(MEMORY[0x277D3BBD0]) initWithWorkingContext:v10 libraryScope:v13];
    if (self->_taskType)
    {
      if (self->_taskType != 1)
      {
        if (*(v46 + 24) == 1)
        {
LABEL_22:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v50 = 183;
            v51 = 2080;
            v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SharedLibraryTasks/PHASharedLibrarySuggestionGenerationTask.m";
            _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          if (a5 && !*a5)
          {
            [MEMORY[0x277D22C28] errorForCode:-4];
            *a5 = LOBYTE(v16) = 0;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          goto LABEL_32;
        }

LABEL_28:
        v31 = [v8 photoLibrary];
        v32 = [v8 workingContext];
        v33 = [v32 loggingConnection];
        [(PHASharedLibrarySuggestionGenerationTask *)self _sendNotificationWithPhotoLibrary:v31 loggingConnection:v33];

        v34 = [v9 throughputReportBlock];
        LOBYTE(v31) = v34 == 0;

        if ((v31 & 1) == 0)
        {
          v35 = [v9 throughputReportBlock];
          v35[2](v35, [v38 numberOfProcessedMoments], 0);
        }

        LOBYTE(v16) = 1;
        goto LABEL_32;
      }

      v14 = [MEMORY[0x277CBEAA8] distantPast];
      v15 = [MEMORY[0x277CBEAA8] date];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke_2;
      v39[3] = &unk_2788B2178;
      v41 = &v45;
      v40 = v9;
      v16 = [v38 processSuggestionsFromStartDate:v14 toDate:v15 withError:a5 progressBlock:v39];

      v17 = v40;
    }

    else
    {
      v19 = [v8 photoLibrary];
      v17 = [v19 librarySpecificFetchOptions];

      [v17 setFetchLimit:1];
      [v17 setWantsIncrementalChangeDetails:0];
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
      v53[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      [v17 setSortDescriptors:v21];

      v37 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v17];
      if ([v37 count])
      {
        v22 = [v37 firstObject];
        v23 = [v22 creationDate];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = [MEMORY[0x277CBEAA8] date];
        }

        v27 = v25;

        v28 = MEMORY[0x277D27690];
        v29 = [MEMORY[0x277D27690] startOfDayForDate:v27];
        v30 = [v28 dateByAddingDays:-90 toDate:v29];

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke;
        v42[3] = &unk_2788B2178;
        v44 = &v45;
        v43 = v9;
        v16 = [v38 processSuggestionsFromStartDate:v30 toDate:v27 withError:a5 progressBlock:v42];
      }

      else
      {
        v26 = [v8 workingContext];
        v27 = [v26 loggingConnection];

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v27, OS_LOG_TYPE_DEFAULT, "Shared Library suggestions daily processing has no new assets to process.", buf, 2u);
        }

        v16 = 1;
      }
    }

    if (v46[3])
    {
      goto LABEL_22;
    }

    if (!v16)
    {
LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v18 = [v10 loggingConnection];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22FA28000, v18, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
    *a5 = LOBYTE(v16) = 0;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

LABEL_33:

  _Block_object_dispose(&v45, 8);
  return v16;
}

uint64_t __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2)
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

uint64_t __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke_2(uint64_t a1, _BYTE *a2)
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

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  if (([v5 isSystemPhotoLibrary] & 1) == 0)
  {
    v8 = [v4 workingContext];
    v9 = [v8 loggingConnection];

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = [(PHASharedLibrarySuggestionGenerationTask *)self name];
    v15 = 138412290;
    v16 = v10;
    v11 = "Task is running on a non system photo library: not running %@ job";
LABEL_11:
    _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);

    goto LABEL_12;
  }

  v6 = [MEMORY[0x277D3BBD0] libraryScopeToUseWithPhotoLibrary:v5];

  if (!v6)
  {
    v12 = [v4 workingContext];
    v9 = [v12 loggingConnection];

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = [(PHASharedLibrarySuggestionGenerationTask *)self name];
    v15 = 138412290;
    v16 = v10;
    v11 = "%@ task is not running without an active shared library scope to use";
    goto LABEL_11;
  }

  if ((PLIsSharedLibrarySuggestionsEnabled() & 1) == 0)
  {
    v13 = [v4 workingContext];
    v9 = [v13 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHASharedLibrarySuggestionGenerationTask *)self name];
      v15 = 138412290;
      v16 = v10;
      v11 = "Shared Library suggestions are disabled in defaults: not running %@ job";
      goto LABEL_11;
    }

LABEL_12:

    v7 = 0;
    goto LABEL_13;
  }

  v7 = [v4 isReady];
LABEL_13:

  return v7;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)incrementalKey
{
  if (self->_taskType == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PHASharedLibrarySuggestionGenerationTask *)self name];
  }

  return v4;
}

- (double)period
{
  result = dbl_22FCDE4F0[self->_taskType == 1];
  if (!self->_taskType)
  {
    return 86400.0;
  }

  return result;
}

- (NSString)name
{
  v2 = @"SharedLibrarySuggestionsUnknown";
  if (self->_taskType == 1)
  {
    v2 = @"PHASharedLibrarySuggestionGenerationWeeklyTask";
  }

  if (self->_taskType)
  {
    return &v2->isa;
  }

  else
  {
    return @"PHASharedLibrarySuggestionGenerationDailyTask";
  }
}

- (PHASharedLibrarySuggestionGenerationTask)initWithTaskType:(signed __int16)a3
{
  v5.receiver = self;
  v5.super_class = PHASharedLibrarySuggestionGenerationTask;
  result = [(PHASharedLibrarySuggestionGenerationTask *)&v5 init];
  if (result)
  {
    result->_taskType = a3;
  }

  return result;
}

+ (BOOL)resetSuggestionsWithGraphManager:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 photoLibrary];
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v8];
  if ([v9 count] == 1)
  {
    v10 = [v6 librarySpecificFetchOptions];
    v32[0] = *MEMORY[0x277CD9AA8];
    LOBYTE(v11) = 1;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v10 setFetchPropertySets:v12];

    v25 = v10;
    v13 = [MEMORY[0x277CD97A8] fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:v10];
    if ([v13 count])
    {
      v23 = v7;
      v24 = a4;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __83__PHASharedLibrarySuggestionGenerationTask_resetSuggestionsWithGraphManager_error___block_invoke;
      v27[3] = &unk_2788B2C00;
      v28 = v9;
      v14 = v13;
      v29 = v14;
      v26 = 0;
      v11 = [v6 performChangesAndWait:v27 error:&v26];
      v15 = v26;
      v16 = [v5 workingContext];
      v17 = [v16 loggingConnection];

      if (v11)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v14 count];
          *buf = 67109120;
          LODWORD(v31) = v18;
          _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_INFO, "Reset %d shared library suggestions", buf, 8u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_error_impl(&dword_22FA28000, v17, OS_LOG_TYPE_ERROR, "Failed to reset shared library suggestions: %@", buf, 0xCu);
      }

      v7 = v23;
      a4 = v24;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    LOBYTE(v11) = 1;
  }

  objc_autoreleasePoolPop(v7);
  v19 = objc_alloc(MEMORY[0x277CCAD80]);
  v20 = [v19 initWithStoreIdentifier:*MEMORY[0x277D3B5C8] type:0];
  [v20 removeObjectForKey:*MEMORY[0x277D3B5C0]];
  [v20 removeObjectForKey:*MEMORY[0x277D3B5B8]];
  [v20 removeObjectForKey:*MEMORY[0x277D3B5A8]];
  [v20 synchronize];
  if (*a4)
  {
    v21 = v15;
    *a4 = v15;
  }

  return v11;
}

void __83__PHASharedLibrarySuggestionGenerationTask_resetSuggestionsWithGraphManager_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CD98B0];
  v3 = [*(a1 + 32) firstObject];
  v4 = [v2 changeRequestForLibraryScope:v3];

  [v4 removePreviewAssetsSuggestedByPhotos:*(a1 + 40)];
}

@end