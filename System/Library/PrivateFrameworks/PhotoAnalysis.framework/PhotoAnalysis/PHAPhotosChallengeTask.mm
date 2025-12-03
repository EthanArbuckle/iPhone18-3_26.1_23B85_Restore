@interface PHAPhotosChallengeTask
+ (BOOL)postNewQuestionsNotificationIfNeededWithGraphManager:(id)manager notificationDate:(id)date;
+ (BOOL)postSubmissionNotificationIfNeededWithGraphManager:(id)manager notificationDate:(id)date;
+ (id)currentQuestionsKVSDataFromGraphManager:(id)manager;
+ (void)removeCurrentKVSDataFromGraphManager:(id)manager;
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (PHAPhotosChallengeTask)init;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAPhotosChallengeTask

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAPhotosChallengeTask timeoutFatal:]", "PHAPhotosChallengeTask.m", 174, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAPhotosChallengeTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v10 = objc_opt_class();
    _notificationDeliveryDate = [MEMORY[0x277D3AD00] _notificationDeliveryDate];
    [v10 postSubmissionNotificationIfNeededWithGraphManager:managerCopy notificationDate:_notificationDeliveryDate];
  }

  v12 = [[PHAQuestionController alloc] initWithGraphManager:managerCopy];
  limit = self->_limit;
  if (limit == -1)
  {
    *buf = 0;
    *&v42 = buf;
    *(&v42 + 1) = 0x2020000000;
    v43 = 0;
    questionOptions = self->_questionOptions;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __69__PHAPhotosChallengeTask_runWithGraphManager_progressReporter_error___block_invoke;
    v29[3] = &unk_2788B2150;
    v31 = buf;
    v32 = &v33;
    v30 = reporterCopy;
    v16 = [(PHAQuestionController *)v12 generateQuestionsWithOptions:questionOptions progress:v29];
    v19 = *(v34 + 24);
    if (v19 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v37 = 67109378;
        v38 = 144;
        v39 = 2080;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHAPhotosChallengeTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v37, 0x12u);
      }

      if (error && !*error)
      {
        *error = [MEMORY[0x277D22C28] errorForCode:-4];
      }
    }

    else
    {
      workingContext = [managerCopy workingContext];
      v21 = workingContext;
      if (v16)
      {
        loggingConnection = [workingContext loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          *v37 = 0;
          _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Automatic question generation completed successfully.", v37, 2u);
        }
      }

      else
      {
        loggingConnection = [workingContext loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "[PHAPhotosChallengeTask] Automatic question generation did not complete successfully.", v37, 2u);
        }
      }
    }

    _Block_object_dispose(buf, 8);
    if (v19)
    {
      LOBYTE(v16) = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v14 = self->_questionOptions;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__PHAPhotosChallengeTask_runWithGraphManager_progressReporter_error___block_invoke_252;
    v26[3] = &unk_2788B2178;
    v28 = &v33;
    v27 = reporterCopy;
    v15 = [(PHAQuestionController *)v12 generateQuestionsWithOptions:v14 limit:limit handleQuestionVersionBump:1 updateInvalidQuestions:1 progress:v26];
    if (*(v34 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 156;
        LOWORD(v42) = 2080;
        *(&v42 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHAPhotosChallengeTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (error && !*error)
      {
        *error = [MEMORY[0x277D22C28] errorForCode:-4];
      }

      LOBYTE(v16) = 0;
      throughputReportBlock2 = v27;
      goto LABEL_28;
    }

    LOBYTE(v16) = v15;
  }

  throughputReportBlock = [reporterCopy throughputReportBlock];
  v24 = throughputReportBlock == 0;

  if (!v24)
  {
    throughputReportBlock2 = [reporterCopy throughputReportBlock];
    throughputReportBlock2[2](throughputReportBlock2, [(PHAQuestionController *)v12 numberOfQuestionsGenerated], 0);
LABEL_28:
  }

LABEL_29:

  _Block_object_dispose(&v33, 8);
  return v16;
}

uint64_t __69__PHAPhotosChallengeTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.05 + 0.9;
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 40) + 8) + 24)];
    v5 = *(*(a1 + 48) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __69__PHAPhotosChallengeTask_runWithGraphManager_progressReporter_error___block_invoke_252(uint64_t a1, _BYTE *a2)
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
  managerCopy = manager;
  if ([MEMORY[0x277D3BA40] photosChallengeIsEnabled] && objc_msgSend(managerCopy, "isReady"))
  {
    workingContext = [managerCopy workingContext];
    photoLibrary = [workingContext photoLibrary];
    [photoLibrary ratioOfAssetsWithFacesProcessed];
    v7 = v6;
    [photoLibrary ratioOfAssetsWithScenesProcessed];
    v9 = v8 >= 0.75 && v7 >= 0.75;
    if (!v9)
    {
      loggingConnection = [workingContext loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] shouldRunWithGraphManager returning NO, library does not have enough faces and/or scenes processed.", v12, 2u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)taskClassDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (PHAPhotosChallengeTask)init
{
  v3.receiver = self;
  v3.super_class = PHAPhotosChallengeTask;
  result = [(PHAPhotosChallengeTask *)&v3 init];
  if (result)
  {
    *&result->_limit = xmmword_22FCDE540;
  }

  return result;
}

+ (BOOL)postNewQuestionsNotificationIfNeededWithGraphManager:(id)manager notificationDate:(id)date
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dateCopy = date;
  workingContext = [managerCopy workingContext];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults objectForKey:@"PhotosChallengeLastPostedNewQuestionsNotificationDate"];

  if (!v9 || ([v9 dateByAddingTimeInterval:259200.0], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:", dateCopy), v10, v11 == -1))
  {
    photoLibrary = [managerCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    v15 = [MEMORY[0x277CD9970] fetchUnansweredQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:1];
    v16 = [v15 count];

    v13 = v16 > 9;
    if (v16 > 9)
    {
      assetsdClient = [photoLibrary assetsdClient];
      notificationClient = [assetsdClient notificationClient];

      [notificationClient asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:dateCopy];
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 setValue:dateCopy forKey:@"PhotosChallengeLastPostedNewQuestionsNotificationDate"];

      loggingConnection = [workingContext loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        *v24 = dateCopy;
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PHAPhotosChallengeTask] Post notification for new questions at %@", &v23, 0xCu);
      }
    }

    else
    {
      notificationClient = [workingContext loggingConnection];
      if (os_log_type_enabled(notificationClient, OS_LOG_TYPE_INFO))
      {
        v23 = 67109376;
        v24[0] = v16;
        LOWORD(v24[1]) = 1024;
        *(&v24[1] + 2) = 10;
        _os_log_impl(&dword_22FA28000, notificationClient, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Not posting a new questions notification, user does not have enough unanswered questions: %d < %d", &v23, 0xEu);
      }
    }
  }

  else
  {
    photoLibrary = [workingContext loggingConnection];
    if (os_log_type_enabled(photoLibrary, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      *v24 = v9;
      _os_log_impl(&dword_22FA28000, photoLibrary, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Already recently posted a new questions notification (on date: %@).", &v23, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)postSubmissionNotificationIfNeededWithGraphManager:(id)manager notificationDate:(id)date
{
  v46 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dateCopy = date;
  workingContext = [managerCopy workingContext];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [standardUserDefaults dictionaryForKey:@"PhotosChallengeSubmissionLastPostedNotificationMetadata"];

  v10 = [v9 objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (!v10 || ([v10 dateByAddingTimeInterval:1814400.0], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "compare:", dateCopy), v12, v13 == -1))
  {
    photoLibrary = [managerCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    v17 = [MEMORY[0x277CD9970] fetchAnsweredQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:1];
    v18 = [v17 count];

    if (v18 <= 0x31)
    {
      loggingConnection = [workingContext loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "[PHAPhotosChallengeTask] Not posting a submission notification, user hasn't answered enough questions.";
LABEL_23:
        _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, v20, buf, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (*MEMORY[0x277D26848] <= 84)
    {
      v21 = 84;
    }

    else
    {
      v21 = *MEMORY[0x277D26848];
    }

    v22 = [v9 objectForKeyedSubscript:@"sceneAnalysisVersion"];
    integerValue = [v22 integerValue];

    if (integerValue >= v21 || ([photoLibrary ratioOfAssetsAtOrAboveSceneAnalysisVersion:v21], v24 >= 0.75))
    {
      v39 = integerValue < v21;
      v37 = v21;
      v25 = [v9 objectForKeyedSubscript:@"faceAnalysisVersion"];
      integerValue2 = [v25 integerValue];
      v27 = *MEMORY[0x277D26840];

      if (integerValue2 < v27)
      {
        [photoLibrary ratioOfAssetsAtOrAboveFaceAnalysisVersion:v27];
        if (v28 < 0.75)
        {
          goto LABEL_16;
        }

        v39 = 1;
      }

      v41 = dateCopy;
      v29 = [v9 objectForKeyedSubscript:@"graphVersion"];
      integerValue3 = [v29 integerValue];
      currentGraphVersion = [managerCopy currentGraphVersion];

      if (integerValue3 < currentGraphVersion || v39)
      {
        assetsdClient = [photoLibrary assetsdClient];
        loggingConnection = [assetsdClient notificationClient];

        [loggingConnection asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:?];
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v43[0] = v41;
        v42[0] = @"date";
        v42[1] = @"sceneAnalysisVersion";
        v40 = [MEMORY[0x277CCABB0] numberWithInt:v37];
        v43[1] = v40;
        v42[2] = @"faceAnalysisVersion";
        v38 = [MEMORY[0x277CCABB0] numberWithInt:v27];
        v43[2] = v38;
        v42[3] = @"graphVersion";
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "currentGraphVersion")}];
        v43[3] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
        [standardUserDefaults2 setObject:v35 forKey:@"PhotosChallengeSubmissionLastPostedNotificationMetadata"];

        dateCopy = v41;
        v15 = 1;
        goto LABEL_25;
      }

      loggingConnection = [workingContext loggingConnection];
      dateCopy = v41;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "[PHAPhotosChallengeTask] Not posting a submission notification, relevant data versions haven't changed since last notification.";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_16:
    loggingConnection = [workingContext loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v20 = "[PHAPhotosChallengeTask] Not posting a submission notification, not enough of library has been processed with newest data versions yet.";
      goto LABEL_23;
    }

LABEL_24:
    v15 = 0;
LABEL_25:

    goto LABEL_26;
  }

  photoLibrary = [workingContext loggingConnection];
  if (os_log_type_enabled(photoLibrary, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&dword_22FA28000, photoLibrary, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Already recently posted a submission notification (on date: %@).", buf, 0xCu);
  }

  v15 = 0;
LABEL_26:

  return v15;
}

+ (void)removeCurrentKVSDataFromGraphManager:(id)manager
{
  managerCopy = manager;
  v4 = [[PHAQuestionController alloc] initWithGraphManager:managerCopy];

  [(PHAQuestionController *)v4 removeCurrentKVSData];
}

+ (id)currentQuestionsKVSDataFromGraphManager:(id)manager
{
  managerCopy = manager;
  v4 = [[PHAQuestionController alloc] initWithGraphManager:managerCopy];

  currentQuestionsKVSData = [(PHAQuestionController *)v4 currentQuestionsKVSData];
  v6 = currentQuestionsKVSData;
  if (currentQuestionsKVSData)
  {
    v7 = currentQuestionsKVSData;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

@end