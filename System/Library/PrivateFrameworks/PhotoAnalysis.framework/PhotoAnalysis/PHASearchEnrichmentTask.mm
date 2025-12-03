@interface PHASearchEnrichmentTask
- (BOOL)shouldRunIncrementallyWithGraphManager:(id)manager incrementalChange:(id)change timeIntervalSinceNonIncrementalRun:(double)run;
- (id)enrichmentProcessor;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHASearchEnrichmentTask

- (id)enrichmentProcessor
{
  v2 = objc_alloc_init(MEMORY[0x277D3B9B8]);

  return v2;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHASearchEnrichmentTask timeoutFatal:]", "PHASearchEnrichmentTask.m", 72, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASearchEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)shouldRunIncrementallyWithGraphManager:(id)manager incrementalChange:(id)change timeIntervalSinceNonIncrementalRun:(double)run
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  [managerCopy timeIntervalSinceLastGraphFullRebuild];
  v8 = v7;
  if (v7 < run)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v7];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-run];
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "PHASearchEnrichmentTask should not run incrementally, graph was fully rebuilt recently: %@, last search non incremental run: %@", &v14, 0x16u);
    }
  }

  return v8 >= run;
}

- (id)taskClassDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end