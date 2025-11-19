@interface PHASyndicationTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (PHASyndicationTask)init;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHASyndicationTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHASyndicationTask timeoutFatal:]", "PHASyndicationTask.m", 119, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASyndicationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = 67109378;
      v21 = 91;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHASyndicationTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
    }

    if (a5 && !*a5)
    {
      [MEMORY[0x277D22C28] errorForCode:-4];
      *a5 = LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D3BC10]);
    v12 = [v8 workingContextForEnrichment];
    v13 = [v11 initWithWorkingContext:v12];

    v14 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v9];
    v15 = v14;
    if (self->_performCurationJob)
    {
      v16 = [v14 childProgressReporterToCheckpoint:0.25];
      v10 = [v13 processSyndicatedAssetCurationWithError:a5 progressReporter:v16];
    }

    else
    {
      v10 = 1;
    }

    if (self->_performGuestInferenceJob)
    {
      if (v10)
      {
        v17 = [v15 childProgressReporterToCheckpoint:0.5];
        v10 = [v13 processSavedSyndicatedAssetsWithError:a5 progressReporter:v17];

        if (v10)
        {
          v18 = [v15 childProgressReporterToCheckpoint:1.0];
          LOBYTE(v10) = [v13 processSyndicatedAssetGuestInferenceWithError:a5 progressReporter:v18];
        }
      }
    }

    if ([v9 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 67109378;
        v21 = 113;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHASyndicationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
      }

      if (a5 && !*a5)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *a5 = LOBYTE(v10) = 0;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }
  }

  return v10;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PHASyndicationTaskDisabled"];

  if (v5)
  {
    v6 = [v3 workingContext];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v8 = "Hubble Feature disabled via user defaults, not running syndication processing job";
      v9 = &v16;
LABEL_8:
      _os_log_impl(&dword_22FA28000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = [v3 photoLibrary];
  v11 = [v10 isSystemPhotoLibrary];

  if ((v11 & 1) == 0)
  {
    v13 = [v3 workingContext];
    v7 = [v13 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "Task is running on a non system photo library, not running syndication processing job";
      v9 = &v15;
      goto LABEL_8;
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  v12 = [v3 isReady];
LABEL_10:

  return v12;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (PHASyndicationTask)init
{
  v3.receiver = self;
  v3.super_class = PHASyndicationTask;
  result = [(PHASyndicationTask *)&v3 init];
  if (result)
  {
    *&result->_performCurationJob = 257;
  }

  return result;
}

@end