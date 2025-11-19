@interface PHAPeopleSuggestionEnrichmentTask
- (id)enrichmentProcessor;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAPeopleSuggestionEnrichmentTask

- (id)enrichmentProcessor
{
  v2 = objc_alloc_init(MEMORY[0x277D3B980]);

  return v2;
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAPeopleSuggestionEnrichmentTask timeoutFatal:]", "PHAPeopleSuggestionEnrichmentTask.m", 25, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAPeopleSuggestionEnrichmentTask is stuck", v3, 2u);
  }
}

@end