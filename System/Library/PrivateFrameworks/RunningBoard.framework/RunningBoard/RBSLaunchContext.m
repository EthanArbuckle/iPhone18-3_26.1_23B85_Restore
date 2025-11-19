@interface RBSLaunchContext
@end

@implementation RBSLaunchContext

uint64_t __59__RBSLaunchContext_RBLaunchChecks___sharedPreflightManager__block_invoke()
{
  v0 = objc_opt_class();
  if (v0)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.runningboardservices.regulatory", v1);
    v3 = _sharedPreflightManager_queue;
    _sharedPreflightManager_queue = v2;

    v4 = objc_alloc(MEMORY[0x277D412C8]);
    v0 = [v4 initWithTargetQueue:_sharedPreflightManager_queue];
  }

  _sharedPreflightManager_preflightManager = v0;

  return MEMORY[0x2821F96F8]();
}

void __67__RBSLaunchContext_RBLaunchChecks___recordPassesEligibilityChecks___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = [v8 objectForKey:v9 ofClass:objc_opt_class()];

  if (v10 && ([*(a1 + 40) _deviceIsEligibleForDomain:v7 bundleID:*(a1 + 48)] & 1) == 0)
  {
    v11 = rbs_process_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __67__RBSLaunchContext_RBLaunchChecks___recordPassesEligibilityChecks___block_invoke_cold_1();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __58__RBSLaunchContext_RBLaunchChecks___needsEligibilityCheck__block_invoke()
{
  _needsEligibilityCheck_allowed = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28751B490];

  return MEMORY[0x2821F96F8]();
}

void __67__RBSLaunchContext_RBLaunchChecks___recordPassesEligibilityChecks___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "device is ineligible for domain %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end