@interface PBFPosterExtensionStoreCoordinator(PBFDataFreshnessStateAdditions)
@end

@implementation PBFPosterExtensionStoreCoordinator(PBFDataFreshnessStateAdditions)

- (void)determineRefreshStateWithContext:()PBFDataFreshnessStateAdditions .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PBFDataFreshnessState.m";
  v16 = 1024;
  v17 = 539;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end