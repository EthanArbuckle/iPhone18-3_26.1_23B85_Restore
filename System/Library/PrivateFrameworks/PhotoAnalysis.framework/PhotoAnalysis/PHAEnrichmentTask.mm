@interface PHAEnrichmentTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (NSString)name;
- (PGGraphDataModelEnrichmentProcessor)enrichmentProcessor;
- (double)period;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAEnrichmentTask

- (PGGraphDataModelEnrichmentProcessor)enrichmentProcessor
{
  v2 = PHAAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAEnrichmentTask timeoutFatal:]", "PHAEnrichmentTask.m", 72, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager withIncrementalChange:(id)change progressReporter:(id)reporter error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D3B928];
  reporterCopy = reporter;
  changeCopy = change;
  managerCopy = manager;
  v14 = [v10 alloc];
  enrichmentProcessor = [(PHAEnrichmentTask *)self enrichmentProcessor];
  v19[0] = enrichmentProcessor;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17 = [v14 initWithManager:managerCopy enrichmentProcessors:v16];

  LOBYTE(error) = [v17 enrichDataModelWithGraphUpdateInventory:changeCopy progressReporter:reporterCopy error:error];
  return error;
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D3B928];
  reporterCopy = reporter;
  managerCopy = manager;
  v11 = [v8 alloc];
  enrichmentProcessor = [(PHAEnrichmentTask *)self enrichmentProcessor];
  v16[0] = enrichmentProcessor;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v11 initWithManager:managerCopy enrichmentProcessors:v13];

  LOBYTE(error) = [v14 enrichDataModelWithProgressReporter:reporterCopy error:error];
  return error;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v11 = 0;
  v5 = [managerCopy isReadyWithError:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    workingContext = [managerCopy workingContext];
    loggingConnection = [workingContext loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      name = [(PHAEnrichmentTask *)self name];
      *buf = 138412290;
      v13 = name;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[%@] graph is not ready, not running enrichment task.", buf, 0xCu);
    }
  }

  return v5;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (double)period
{
  v2 = PHAAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end