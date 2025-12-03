@interface PHASyndicationTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (PHASyndicationTask)init;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHASyndicationTask

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHASyndicationTask timeoutFatal:]", "PHASyndicationTask.m", 119, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASyndicationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = 67109378;
      v21 = 91;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHASyndicationTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
    }

    if (error && !*error)
    {
      [MEMORY[0x277D22C28] errorForCode:-4];
      *error = LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D3BC10]);
    workingContextForEnrichment = [managerCopy workingContextForEnrichment];
    v13 = [v11 initWithWorkingContext:workingContextForEnrichment];

    v14 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:reporterCopy];
    v15 = v14;
    if (self->_performCurationJob)
    {
      v16 = [v14 childProgressReporterToCheckpoint:0.25];
      v10 = [v13 processSyndicatedAssetCurationWithError:error progressReporter:v16];
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
        v10 = [v13 processSavedSyndicatedAssetsWithError:error progressReporter:v17];

        if (v10)
        {
          v18 = [v15 childProgressReporterToCheckpoint:1.0];
          LOBYTE(v10) = [v13 processSyndicatedAssetGuestInferenceWithError:error progressReporter:v18];
        }
      }
    }

    if ([reporterCopy isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 67109378;
        v21 = 113;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/PHASyndicationTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v20, 0x12u);
      }

      if (error && !*error)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *error = LOBYTE(v10) = 0;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }
  }

  return v10;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  managerCopy = manager;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"PHASyndicationTaskDisabled"];

  if (v5)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v8 = "Hubble Feature disabled via user defaults, not running syndication processing job";
      v9 = &v16;
LABEL_8:
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  photoLibrary = [managerCopy photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  if ((isSystemPhotoLibrary & 1) == 0)
  {
    workingContext2 = [managerCopy workingContext];
    loggingConnection = [workingContext2 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "Task is running on a non system photo library, not running syndication processing job";
      v9 = &v15;
      goto LABEL_8;
    }

LABEL_9:

    isReady = 0;
    goto LABEL_10;
  }

  isReady = [managerCopy isReady];
LABEL_10:

  return isReady;
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