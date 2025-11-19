@interface PHASearchEnrichmentTask
- (BOOL)shouldRunIncrementallyWithGraphManager:(id)a3 incrementalChange:(id)a4 timeIntervalSinceNonIncrementalRun:(double)a5;
- (id)enrichmentProcessor;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHASearchEnrichmentTask

- (id)enrichmentProcessor
{
  v2 = objc_alloc_init(MEMORY[0x277D3B9B8]);

  return v2;
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHASearchEnrichmentTask timeoutFatal:]", "PHASearchEnrichmentTask.m", 72, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASearchEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)shouldRunIncrementallyWithGraphManager:(id)a3 incrementalChange:(id)a4 timeIntervalSinceNonIncrementalRun:(double)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 timeIntervalSinceLastGraphFullRebuild];
  v8 = v7;
  if (v7 < a5)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v7];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-a5];
    v11 = [v6 workingContext];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_INFO, "PHASearchEnrichmentTask should not run incrementally, graph was fully rebuilt recently: %@, last search non incremental run: %@", &v14, 0x16u);
    }
  }

  return v8 >= a5;
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