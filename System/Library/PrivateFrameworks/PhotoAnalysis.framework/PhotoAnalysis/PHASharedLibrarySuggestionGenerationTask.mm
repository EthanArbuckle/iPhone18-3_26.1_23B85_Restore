@interface PHASharedLibrarySuggestionGenerationTask
+ (BOOL)resetSuggestionsWithGraphManager:(id)manager error:(id *)error;
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (NSString)name;
- (PHASharedLibrarySuggestionGenerationTask)initWithTaskType:(signed __int16)type;
- (double)period;
- (id)incrementalKey;
- (id)taskClassDependencies;
- (void)_sendNotificationWithPhotoLibrary:(id)library loggingConnection:(id)connection;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHASharedLibrarySuggestionGenerationTask

- (void)_sendNotificationWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v53[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
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

  date = [MEMORY[0x277CBEAA8] date];
  v12 = objc_alloc(MEMORY[0x277CCAD80]);
  v13 = [v12 initWithStoreIdentifier:*MEMORY[0x277D3B5C8] type:0];
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PHASharedLibrarySuggestionGenerationTask] notification defaults override is set", buf, 2u);
    }

    v15 = *MEMORY[0x277D3B5B0];
LABEL_8:
    assetsdClient = [libraryCopy assetsdClient];
    notificationClient = [assetsdClient notificationClient];

    [notificationClient asyncNotifySharedLibrarySuggestionsWithNotificationDeliveryDate:date];
    [v14 setObject:date forKey:v15];
    goto LABEL_50;
  }

  if (([v13 synchronize] & 1) == 0 && os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_ERROR, "[PHASharedLibrarySuggestionGenerationTask] Store synchronize failed", buf, 2u);
  }

  v18 = [v14 objectForKey:*MEMORY[0x277D3B5B8]];
  notificationClient = v18;
  v49 = v7;
  if (v18)
  {
    distantPast = v18;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v20 = distantPast;
  v48 = libraryCopy;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v53[0] = *MEMORY[0x277CD9AA8];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v22];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", @"addedDate", v20];
  [librarySpecificFetchOptions setInternalPredicate:v23];

  v24 = [MEMORY[0x277CD97A8] fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:librarySpecificFetchOptions];
  v25 = [v24 count];
  if (v25 > 9)
  {
    v46 = v20;
    v47 = date;
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
          if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
          {
            *buf = 67109632;
            *v51 = v25;
            *&v51[4] = 1024;
            *&v51[6] = v34;
            LOWORD(v52[0]) = 1024;
            *(v52 + 2) = v29;
            v35 = "[PHASharedLibrarySuggestionGenerationTask] skip notification for %d suggestions - %d days since last notified less than %d";
LABEL_48:
            _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, v35, buf, 0x14u);
            goto LABEL_49;
          }

          goto LABEL_49;
        }

LABEL_34:
        date = v47;
        if (!notificationClient)
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
            if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *v51 = v37;
              *&v51[8] = 1024;
              v52[0] = v38;
              _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] notification using override %@ = %d", buf, 0x12u);
            }
          }
        }

        else
        {
          v38 = v25 <= 0x31 ? 15 : 3;
        }

        v39 = [MEMORY[0x277D27690] components:16 fromDate:notificationClient toDate:v47 options:0];
        v40 = [v39 day];

        v26 = v43;
        if (v40 >= v38)
        {
LABEL_64:
          if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v51 = v25;
            _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PHASharedLibrarySuggestionGenerationTask] sending notification for %d suggestions", buf, 8u);
          }

          libraryCopy = v48;
          v7 = v49;
          goto LABEL_8;
        }

        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
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

        libraryCopy = v48;
        v7 = v49;
        date = v47;
        goto LABEL_50;
      }

      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v51 = v28;
        *&v51[8] = 1024;
        v52[0] = v29;
        _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] notification using override %@ = %d", buf, 0x12u);
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

  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v51 = v25;
    *&v51[4] = 1024;
    *&v51[6] = 10;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHASharedLibrarySuggestionGenerationTask] skip notification - not enough suggestions: %d < %d", buf, 0xEu);
  }

  libraryCopy = v48;
  v7 = v49;
LABEL_50:
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHASharedLibrarySuggestionGenerationTask timeoutFatal:]", "PHASharedLibrarySuggestionGenerationTask.m", 222, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASharedLibrarySuggestionGenerationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  changeCopy = change;
  reporterCopy = reporter;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  workingContext = [managerCopy workingContext];
  v13 = MEMORY[0x277D3BBD0];
  photoLibrary = [workingContext photoLibrary];
  v15 = [v13 libraryScopeToUseWithPhotoLibrary:photoLibrary];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D3BBD0]) initWithWorkingContext:workingContext libraryScope:v15];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __109__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_withIncrementalChange_progressReporter_error___block_invoke;
    v25[3] = &unk_2788B2178;
    v27 = &v28;
    v26 = reporterCopy;
    v17 = [v16 processSuggestionsForIncrementalChange:changeCopy withError:error progressBlock:v25];
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

      if (error && !*error)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *error = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v17;
      photoLibrary2 = [managerCopy photoLibrary];
      workingContext2 = [managerCopy workingContext];
      loggingConnection = [workingContext2 loggingConnection];
      [(PHASharedLibrarySuggestionGenerationTask *)self _sendNotificationWithPhotoLibrary:photoLibrary2 loggingConnection:loggingConnection];
    }
  }

  else
  {
    loggingConnection2 = [workingContext loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
      *error = v18 = 0;
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

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  workingContext = [managerCopy workingContext];
  v11 = MEMORY[0x277D3BBD0];
  photoLibrary = [workingContext photoLibrary];
  v13 = [v11 libraryScopeToUseWithPhotoLibrary:photoLibrary];

  if (v13)
  {
    v38 = [objc_alloc(MEMORY[0x277D3BBD0]) initWithWorkingContext:workingContext libraryScope:v13];
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

          if (error && !*error)
          {
            [MEMORY[0x277D22C28] errorForCode:-4];
            *error = LOBYTE(v16) = 0;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          goto LABEL_32;
        }

LABEL_28:
        photoLibrary2 = [managerCopy photoLibrary];
        workingContext2 = [managerCopy workingContext];
        loggingConnection = [workingContext2 loggingConnection];
        [(PHASharedLibrarySuggestionGenerationTask *)self _sendNotificationWithPhotoLibrary:photoLibrary2 loggingConnection:loggingConnection];

        throughputReportBlock = [reporterCopy throughputReportBlock];
        LOBYTE(photoLibrary2) = throughputReportBlock == 0;

        if ((photoLibrary2 & 1) == 0)
        {
          throughputReportBlock2 = [reporterCopy throughputReportBlock];
          throughputReportBlock2[2](throughputReportBlock2, [v38 numberOfProcessedMoments], 0);
        }

        LOBYTE(v16) = 1;
        goto LABEL_32;
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      date = [MEMORY[0x277CBEAA8] date];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke_2;
      v39[3] = &unk_2788B2178;
      v41 = &v45;
      v40 = reporterCopy;
      v16 = [v38 processSuggestionsFromStartDate:distantPast toDate:date withError:error progressBlock:v39];

      librarySpecificFetchOptions = v40;
    }

    else
    {
      photoLibrary3 = [managerCopy photoLibrary];
      librarySpecificFetchOptions = [photoLibrary3 librarySpecificFetchOptions];

      [librarySpecificFetchOptions setFetchLimit:1];
      [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
      v53[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      [librarySpecificFetchOptions setSortDescriptors:v21];

      v37 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
      if ([v37 count])
      {
        firstObject = [v37 firstObject];
        creationDate = [firstObject creationDate];
        v24 = creationDate;
        if (creationDate)
        {
          date2 = creationDate;
        }

        else
        {
          date2 = [MEMORY[0x277CBEAA8] date];
        }

        loggingConnection2 = date2;

        v28 = MEMORY[0x277D27690];
        v29 = [MEMORY[0x277D27690] startOfDayForDate:loggingConnection2];
        v30 = [v28 dateByAddingDays:-90 toDate:v29];

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __87__PHASharedLibrarySuggestionGenerationTask_runWithGraphManager_progressReporter_error___block_invoke;
        v42[3] = &unk_2788B2178;
        v44 = &v45;
        v43 = reporterCopy;
        v16 = [v38 processSuggestionsFromStartDate:v30 toDate:loggingConnection2 withError:error progressBlock:v42];
      }

      else
      {
        workingContext3 = [managerCopy workingContext];
        loggingConnection2 = [workingContext3 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "Shared Library suggestions daily processing has no new assets to process.", buf, 2u);
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

  loggingConnection3 = [workingContext loggingConnection];
  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22FA28000, loggingConnection3, OS_LOG_TYPE_ERROR, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
    *error = LOBYTE(v16) = 0;
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

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v17 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  if (([photoLibrary isSystemPhotoLibrary] & 1) == 0)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    name = [(PHASharedLibrarySuggestionGenerationTask *)self name];
    v15 = 138412290;
    v16 = name;
    v11 = "Task is running on a non system photo library: not running %@ job";
LABEL_11:
    _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);

    goto LABEL_12;
  }

  v6 = [MEMORY[0x277D3BBD0] libraryScopeToUseWithPhotoLibrary:photoLibrary];

  if (!v6)
  {
    workingContext2 = [managerCopy workingContext];
    loggingConnection = [workingContext2 loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    name = [(PHASharedLibrarySuggestionGenerationTask *)self name];
    v15 = 138412290;
    v16 = name;
    v11 = "%@ task is not running without an active shared library scope to use";
    goto LABEL_11;
  }

  if ((PLIsSharedLibrarySuggestionsEnabled() & 1) == 0)
  {
    workingContext3 = [managerCopy workingContext];
    loggingConnection = [workingContext3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      name = [(PHASharedLibrarySuggestionGenerationTask *)self name];
      v15 = 138412290;
      v16 = name;
      v11 = "Shared Library suggestions are disabled in defaults: not running %@ job";
      goto LABEL_11;
    }

LABEL_12:

    isReady = 0;
    goto LABEL_13;
  }

  isReady = [managerCopy isReady];
LABEL_13:

  return isReady;
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
    name = 0;
  }

  else
  {
    name = [(PHASharedLibrarySuggestionGenerationTask *)self name];
  }

  return name;
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

- (PHASharedLibrarySuggestionGenerationTask)initWithTaskType:(signed __int16)type
{
  v5.receiver = self;
  v5.super_class = PHASharedLibrarySuggestionGenerationTask;
  result = [(PHASharedLibrarySuggestionGenerationTask *)&v5 init];
  if (result)
  {
    result->_taskType = type;
  }

  return result;
}

+ (BOOL)resetSuggestionsWithGraphManager:(id)manager error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  v7 = objc_autoreleasePoolPush();
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  if ([v9 count] == 1)
  {
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v32[0] = *MEMORY[0x277CD9AA8];
    LOBYTE(v11) = 1;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v12];

    v25 = librarySpecificFetchOptions2;
    v13 = [MEMORY[0x277CD97A8] fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:librarySpecificFetchOptions2];
    if ([v13 count])
    {
      v23 = v7;
      errorCopy = error;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __83__PHASharedLibrarySuggestionGenerationTask_resetSuggestionsWithGraphManager_error___block_invoke;
      v27[3] = &unk_2788B2C00;
      v28 = v9;
      v14 = v13;
      v29 = v14;
      v26 = 0;
      v11 = [photoLibrary performChangesAndWait:v27 error:&v26];
      v15 = v26;
      workingContext = [managerCopy workingContext];
      loggingConnection = [workingContext loggingConnection];

      if (v11)
      {
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          v18 = [v14 count];
          *buf = 67109120;
          LODWORD(v31) = v18;
          _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "Reset %d shared library suggestions", buf, 8u);
        }
      }

      else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to reset shared library suggestions: %@", buf, 0xCu);
      }

      v7 = v23;
      error = errorCopy;
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
  if (*error)
  {
    v21 = v15;
    *error = v15;
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