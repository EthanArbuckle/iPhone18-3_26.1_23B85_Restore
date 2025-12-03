@interface PHAHighlightEnrichmentTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (unint64_t)tailorOptions;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAHighlightEnrichmentTask

- (unint64_t)tailorOptions
{
  if (self->_tailorOptions)
  {
    return self->_tailorOptions;
  }

  else
  {
    return 255;
  }
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAHighlightEnrichmentTask timeoutFatal:]", "PHAHighlightEnrichmentTask.m", 63, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAHighlightEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v9 = MEMORY[0x277D3B9A0];
  reporterCopy = reporter;
  v11 = [[v9 alloc] initWithHighlightTailorOptions:{-[PHAHighlightEnrichmentTask tailorOptions](self, "tailorOptions")}];
  v12 = objc_alloc(MEMORY[0x277D3B928]);
  v21[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [v12 initWithManager:managerCopy enrichmentProcessors:v13];

  v15 = [v14 enrichDataModelWithProgressReporter:reporterCopy error:error];
  v16 = MEMORY[0x277D3B9A0];
  photoLibrary = [managerCopy photoLibrary];
  self->_featureComplete = [v16 hasCompletedEnrichmentForLibrary:photoLibrary];

  if (self->_featureComplete)
  {
    self->_featureAvailable = 1;
  }

  else
  {
    v18 = MEMORY[0x277D3B9A0];
    photoLibrary2 = [managerCopy photoLibrary];
    self->_featureAvailable = [v18 hasCompletedFirstTimeExperienceForLibrary:photoLibrary2];
  }

  return v15;
}

@end