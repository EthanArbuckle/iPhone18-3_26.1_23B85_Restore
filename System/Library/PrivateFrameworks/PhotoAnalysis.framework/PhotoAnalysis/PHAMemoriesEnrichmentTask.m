@interface PHAMemoriesEnrichmentTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (PHAMemoriesEnrichmentTask)initWithOptions:(id)a3;
- (id)memoriesEnrichmentProcessor;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAMemoriesEnrichmentTask

- (id)memoriesEnrichmentProcessor
{
  if (self->_numberOfMemoriesToEnrich)
  {
    v2 = [objc_alloc(MEMORY[0x277D3B950]) initWithNumberOfMemoriesToEnrich:self->_numberOfMemoriesToEnrich];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277D3B950]);
  }

  return v2;
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAMemoriesEnrichmentTask timeoutFatal:]", "PHAMemoriesEnrichmentTask.m", 78, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAMemoriesEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PHAMemoriesEnrichmentTask *)self memoriesEnrichmentProcessor];
  LOBYTE(a6) = [v13 runWithGraphManager:v12 incrementalChange:v11 progressReporter:v10 error:a6];

  return a6;
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHAMemoriesEnrichmentTask *)self memoriesEnrichmentProcessor];
  LOBYTE(a5) = [v10 runWithGraphManager:v9 incrementalChange:0 progressReporter:v8 error:a5];

  return a5;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (PHAMemoriesEnrichmentTask)initWithOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHAMemoriesEnrichmentTask;
  v5 = [(PHAMemoriesEnrichmentTask *)&v8 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"limit"];
    v5->_numberOfMemoriesToEnrich = [v6 unsignedIntegerValue];
  }

  return v5;
}

@end