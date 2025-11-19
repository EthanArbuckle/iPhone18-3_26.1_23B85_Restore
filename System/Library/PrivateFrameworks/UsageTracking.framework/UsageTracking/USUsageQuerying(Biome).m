@interface USUsageQuerying(Biome)
@end

@implementation USUsageQuerying(Biome)

+ (void)_completion:()Biome options:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a2 error];
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to query Biome for usage reports with options %{public}@: %{public}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end