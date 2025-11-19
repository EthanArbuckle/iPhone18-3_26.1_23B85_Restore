@interface PHAPhotosChallengeTask
+ (BOOL)postNewQuestionsNotificationIfNeededWithGraphManager:(id)a3 notificationDate:(id)a4;
+ (BOOL)postSubmissionNotificationIfNeededWithGraphManager:(id)a3 notificationDate:(id)a4;
+ (id)currentQuestionsKVSDataFromGraphManager:(id)a3;
+ (void)removeCurrentKVSDataFromGraphManager:(id)a3;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (PHAPhotosChallengeTask)init;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAPhotosChallengeTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAPhotosChallengeTask timeoutFatal:]", "PHAPhotosChallengeTask.m", 174, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAPhotosChallengeTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v10 = objc_opt_class();
    v11 = [MEMORY[0x277D3AD00] _notificationDeliveryDate];
    [v10 postSubmissionNotificationIfNeededWithGraphManager:v8 notificationDate:v11];
  }

  v12 = [[PHAQuestionController alloc] initWithGraphManager:v8];
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
    v30 = v9;
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

      if (a5 && !*a5)
      {
        *a5 = [MEMORY[0x277D22C28] errorForCode:-4];
      }
    }

    else
    {
      v20 = [v8 workingContext];
      v21 = v20;
      if (v16)
      {
        v22 = [v20 loggingConnection];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v37 = 0;
          _os_log_impl(&dword_22FA28000, v22, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Automatic question generation completed successfully.", v37, 2u);
        }
      }

      else
      {
        v22 = [v20 loggingConnection];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[PHAPhotosChallengeTask] Automatic question generation did not complete successfully.", v37, 2u);
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
    v27 = v9;
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

      if (a5 && !*a5)
      {
        *a5 = [MEMORY[0x277D22C28] errorForCode:-4];
      }

      LOBYTE(v16) = 0;
      v17 = v27;
      goto LABEL_28;
    }

    LOBYTE(v16) = v15;
  }

  v23 = [v9 throughputReportBlock];
  v24 = v23 == 0;

  if (!v24)
  {
    v17 = [v9 throughputReportBlock];
    v17[2](v17, [(PHAQuestionController *)v12 numberOfQuestionsGenerated], 0);
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

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3BA40] photosChallengeIsEnabled] && objc_msgSend(v3, "isReady"))
  {
    v4 = [v3 workingContext];
    v5 = [v4 photoLibrary];
    [v5 ratioOfAssetsWithFacesProcessed];
    v7 = v6;
    [v5 ratioOfAssetsWithScenesProcessed];
    v9 = v8 >= 0.75 && v7 >= 0.75;
    if (!v9)
    {
      v10 = [v4 loggingConnection];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] shouldRunWithGraphManager returning NO, library does not have enough faces and/or scenes processed.", v12, 2u);
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

+ (BOOL)postNewQuestionsNotificationIfNeededWithGraphManager:(id)a3 notificationDate:(id)a4
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 workingContext];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 objectForKey:@"PhotosChallengeLastPostedNewQuestionsNotificationDate"];

  if (!v9 || ([v9 dateByAddingTimeInterval:259200.0], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:", v6), v10, v11 == -1))
  {
    v12 = [v5 photoLibrary];
    v14 = [v12 librarySpecificFetchOptions];
    [v14 setShouldPrefetchCount:1];
    v15 = [MEMORY[0x277CD9970] fetchUnansweredQuestionsWithOptions:v14 validQuestionsOnly:1];
    v16 = [v15 count];

    v13 = v16 > 9;
    if (v16 > 9)
    {
      v17 = [v12 assetsdClient];
      v20 = [v17 notificationClient];

      [v20 asyncNotifyPhotosChallengeNewQuestionsWithNotificationDeliveryDate:v6];
      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v18 setValue:v6 forKey:@"PhotosChallengeLastPostedNewQuestionsNotificationDate"];

      v19 = [v7 loggingConnection];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        *v24 = v6;
        _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_DEFAULT, "[PHAPhotosChallengeTask] Post notification for new questions at %@", &v23, 0xCu);
      }
    }

    else
    {
      v20 = [v7 loggingConnection];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = 67109376;
        v24[0] = v16;
        LOWORD(v24[1]) = 1024;
        *(&v24[1] + 2) = 10;
        _os_log_impl(&dword_22FA28000, v20, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Not posting a new questions notification, user does not have enough unanswered questions: %d < %d", &v23, 0xEu);
      }
    }
  }

  else
  {
    v12 = [v7 loggingConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      *v24 = v9;
      _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Already recently posted a new questions notification (on date: %@).", &v23, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)postSubmissionNotificationIfNeededWithGraphManager:(id)a3 notificationDate:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 workingContext];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 dictionaryForKey:@"PhotosChallengeSubmissionLastPostedNotificationMetadata"];

  v10 = [v9 objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (!v10 || ([v10 dateByAddingTimeInterval:1814400.0], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "compare:", v6), v12, v13 == -1))
  {
    v14 = [v5 photoLibrary];
    v16 = [v14 librarySpecificFetchOptions];
    [v16 setShouldPrefetchCount:1];
    v17 = [MEMORY[0x277CD9970] fetchAnsweredQuestionsWithOptions:v16 validQuestionsOnly:1];
    v18 = [v17 count];

    if (v18 <= 0x31)
    {
      v19 = [v7 loggingConnection];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "[PHAPhotosChallengeTask] Not posting a submission notification, user hasn't answered enough questions.";
LABEL_23:
        _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
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
    v23 = [v22 integerValue];

    if (v23 >= v21 || ([v14 ratioOfAssetsAtOrAboveSceneAnalysisVersion:v21], v24 >= 0.75))
    {
      v39 = v23 < v21;
      v37 = v21;
      v25 = [v9 objectForKeyedSubscript:@"faceAnalysisVersion"];
      v26 = [v25 integerValue];
      v27 = *MEMORY[0x277D26840];

      if (v26 < v27)
      {
        [v14 ratioOfAssetsAtOrAboveFaceAnalysisVersion:v27];
        if (v28 < 0.75)
        {
          goto LABEL_16;
        }

        v39 = 1;
      }

      v41 = v6;
      v29 = [v9 objectForKeyedSubscript:@"graphVersion"];
      v30 = [v29 integerValue];
      v31 = [v5 currentGraphVersion];

      if (v30 < v31 || v39)
      {
        v33 = [v14 assetsdClient];
        v19 = [v33 notificationClient];

        [v19 asyncNotifyPhotosChallengeSubmissionWithNotificationDeliveryDate:?];
        v36 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v43[0] = v41;
        v42[0] = @"date";
        v42[1] = @"sceneAnalysisVersion";
        v40 = [MEMORY[0x277CCABB0] numberWithInt:v37];
        v43[1] = v40;
        v42[2] = @"faceAnalysisVersion";
        v38 = [MEMORY[0x277CCABB0] numberWithInt:v27];
        v43[2] = v38;
        v42[3] = @"graphVersion";
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "currentGraphVersion")}];
        v43[3] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
        [v36 setObject:v35 forKey:@"PhotosChallengeSubmissionLastPostedNotificationMetadata"];

        v6 = v41;
        v15 = 1;
        goto LABEL_25;
      }

      v19 = [v7 loggingConnection];
      v6 = v41;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "[PHAPhotosChallengeTask] Not posting a submission notification, relevant data versions haven't changed since last notification.";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_16:
    v19 = [v7 loggingConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
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

  v14 = [v7 loggingConnection];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAPhotosChallengeTask] Already recently posted a submission notification (on date: %@).", buf, 0xCu);
  }

  v15 = 0;
LABEL_26:

  return v15;
}

+ (void)removeCurrentKVSDataFromGraphManager:(id)a3
{
  v3 = a3;
  v4 = [[PHAQuestionController alloc] initWithGraphManager:v3];

  [(PHAQuestionController *)v4 removeCurrentKVSData];
}

+ (id)currentQuestionsKVSDataFromGraphManager:(id)a3
{
  v3 = a3;
  v4 = [[PHAQuestionController alloc] initWithGraphManager:v3];

  v5 = [(PHAQuestionController *)v4 currentQuestionsKVSData];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

@end