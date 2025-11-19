@interface PHAExternalAssetsTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (PHAExternalAssetsTask)init;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAExternalAssetsTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAExternalAssetsTask timeoutFatal:]", "PHAExternalAssetsTask.m", 80, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAExternalAssetsTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D3B6B0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v9 workingContextForExternalRelevance];

  v12 = [v10 initWithWorkingContext:v11];
  LOBYTE(a5) = [v12 processExternalAssetRelevanceInferenceWithError:a5 progressReporter:v8];

  return a5;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 isSystemPhotoLibrary];

  if (v5)
  {
    v6 = [v3 isReady];
  }

  else
  {
    v7 = [v3 workingContext];

    v3 = [v7 loggingConnection];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, v3, OS_LOG_TYPE_DEFAULT, "Task is running on a non system photo library, not running external asset processing job", v9, 2u);
    }

    v6 = 0;
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

- (PHAExternalAssetsTask)init
{
  v3.receiver = self;
  v3.super_class = PHAExternalAssetsTask;
  return [(PHAExternalAssetsTask *)&v3 init];
}

@end