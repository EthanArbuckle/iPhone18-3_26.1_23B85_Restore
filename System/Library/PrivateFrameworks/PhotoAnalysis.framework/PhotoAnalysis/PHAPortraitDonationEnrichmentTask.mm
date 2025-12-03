@interface PHAPortraitDonationEnrichmentTask
- (id)enrichmentProcessor;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHAPortraitDonationEnrichmentTask

- (id)enrichmentProcessor
{
  v2 = objc_alloc_init(MEMORY[0x277D3B9A8]);

  return v2;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHAPortraitDonationEnrichmentTask timeoutFatal:]", "PHAPortraitDonationEnrichmentTask.m", 39, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAPortraitDonationEnrichmentTask is stuck", v3, 2u);
  }
}

@end