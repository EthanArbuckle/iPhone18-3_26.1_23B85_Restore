@interface PHAHighlightCollectionEnrichmentTask
- (PHAHighlightCollectionEnrichmentTask)initWithOptions:(id)a3;
- (id)enrichmentProcessor;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAHighlightCollectionEnrichmentTask

- (id)enrichmentProcessor
{
  if (self->_options)
  {
    v2 = [objc_alloc(MEMORY[0x277D3B938]) initWithOptions:self->_options];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277D3B938]);
  }

  return v2;
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAHighlightCollectionEnrichmentTask timeoutFatal:]", "PHAHighlightCollectionEnrichmentTask.m", 55, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAHighlightCollectionEnrichmentTask is stuck", v3, 2u);
  }
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (PHAHighlightCollectionEnrichmentTask)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHAHighlightCollectionEnrichmentTask;
  v6 = [(PHAHighlightCollectionEnrichmentTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

@end