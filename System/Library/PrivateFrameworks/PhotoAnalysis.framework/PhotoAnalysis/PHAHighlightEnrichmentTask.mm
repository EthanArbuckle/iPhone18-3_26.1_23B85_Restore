@interface PHAHighlightEnrichmentTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (unint64_t)tailorOptions;
- (void)timeoutFatal:(BOOL)a3;
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

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAHighlightEnrichmentTask timeoutFatal:]", "PHAHighlightEnrichmentTask.m", 63, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAHighlightEnrichmentTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277D3B9A0];
  v10 = a4;
  v11 = [[v9 alloc] initWithHighlightTailorOptions:{-[PHAHighlightEnrichmentTask tailorOptions](self, "tailorOptions")}];
  v12 = objc_alloc(MEMORY[0x277D3B928]);
  v21[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [v12 initWithManager:v8 enrichmentProcessors:v13];

  v15 = [v14 enrichDataModelWithProgressReporter:v10 error:a5];
  v16 = MEMORY[0x277D3B9A0];
  v17 = [v8 photoLibrary];
  self->_featureComplete = [v16 hasCompletedEnrichmentForLibrary:v17];

  if (self->_featureComplete)
  {
    self->_featureAvailable = 1;
  }

  else
  {
    v18 = MEMORY[0x277D3B9A0];
    v19 = [v8 photoLibrary];
    self->_featureAvailable = [v18 hasCompletedFirstTimeExperienceForLibrary:v19];
  }

  return v15;
}

@end