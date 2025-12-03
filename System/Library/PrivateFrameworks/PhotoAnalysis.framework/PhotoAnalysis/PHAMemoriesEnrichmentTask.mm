@interface PHAMemoriesEnrichmentTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error;
- (PHAMemoriesEnrichmentTask)initWithOptions:(id)options;
- (id)memoriesEnrichmentProcessor;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
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

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAMemoriesEnrichmentTask timeoutFatal:]", "PHAMemoriesEnrichmentTask.m", 78, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAMemoriesEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  changeCopy = change;
  managerCopy = manager;
  memoriesEnrichmentProcessor = [(PHAMemoriesEnrichmentTask *)self memoriesEnrichmentProcessor];
  LOBYTE(error) = [memoriesEnrichmentProcessor runWithGraphManager:managerCopy incrementalChange:changeCopy progressReporter:reporterCopy error:error];

  return error;
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  managerCopy = manager;
  memoriesEnrichmentProcessor = [(PHAMemoriesEnrichmentTask *)self memoriesEnrichmentProcessor];
  LOBYTE(error) = [memoriesEnrichmentProcessor runWithGraphManager:managerCopy incrementalChange:0 progressReporter:reporterCopy error:error];

  return error;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (PHAMemoriesEnrichmentTask)initWithOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = PHAMemoriesEnrichmentTask;
  v5 = [(PHAMemoriesEnrichmentTask *)&v8 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"limit"];
    v5->_numberOfMemoriesToEnrich = [v6 unsignedIntegerValue];
  }

  return v5;
}

@end