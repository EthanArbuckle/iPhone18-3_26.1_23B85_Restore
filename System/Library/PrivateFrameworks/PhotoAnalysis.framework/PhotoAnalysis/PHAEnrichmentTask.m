@interface PHAEnrichmentTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (NSString)name;
- (PGGraphDataModelEnrichmentProcessor)enrichmentProcessor;
- (double)period;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAEnrichmentTask

- (PGGraphDataModelEnrichmentProcessor)enrichmentProcessor
{
  v2 = PHAAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAEnrichmentTask timeoutFatal:]", "PHAEnrichmentTask.m", 72, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 withIncrementalChange:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D3B928];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [(PHAEnrichmentTask *)self enrichmentProcessor];
  v19[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17 = [v14 initWithManager:v13 enrichmentProcessors:v16];

  LOBYTE(a6) = [v17 enrichDataModelWithGraphUpdateInventory:v12 progressReporter:v11 error:a6];
  return a6;
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D3B928];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [(PHAEnrichmentTask *)self enrichmentProcessor];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v11 initWithManager:v10 enrichmentProcessors:v13];

  LOBYTE(a5) = [v14 enrichDataModelWithProgressReporter:v9 error:a5];
  return a5;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0;
  v5 = [v4 isReadyWithError:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 workingContext];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(PHAEnrichmentTask *)self name];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_INFO, "[%@] graph is not ready, not running enrichment task.", buf, 0xCu);
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