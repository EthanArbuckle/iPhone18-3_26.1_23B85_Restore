@interface PHARevGeocodeSyndicationTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHARevGeocodeSyndicationTask

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHARevGeocodeSyndicationTask timeoutFatal:]", "PHARevGeocodeSyndicationTask.m", 73, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHARevGeocodeSyndicationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v7 = MEMORY[0x277D3BC10];
  reporterCopy = reporter;
  managerCopy = manager;
  v10 = [v7 alloc];
  workingContextForEnrichment = [managerCopy workingContextForEnrichment];

  v12 = [v10 initWithWorkingContext:workingContextForEnrichment];
  LOBYTE(error) = [v12 processSyndicatedAssetRevGeoCodingWithError:error progressReporter:reporterCopy];

  return error;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  managerCopy = manager;
  photoLibrary = [managerCopy photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    isReady = [managerCopy isReady];
  }

  else
  {
    workingContext = [managerCopy workingContext];

    managerCopy = [workingContext loggingConnection];

    if (os_log_type_enabled(managerCopy, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, managerCopy, OS_LOG_TYPE_DEFAULT, "Task is running on a non system photo library, not running syndication processing job", v9, 2u);
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

@end