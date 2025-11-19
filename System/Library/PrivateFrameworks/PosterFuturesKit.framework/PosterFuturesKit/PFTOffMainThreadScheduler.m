@interface PFTOffMainThreadScheduler
@end

@implementation PFTOffMainThreadScheduler

uint64_t __36___PFTOffMainThreadScheduler_os_log__block_invoke()
{
  os_log_pft_once_object_8 = os_log_create("com.apple.FutureKit.reactive-extensions", "scheduling");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43___PFTOffMainThreadScheduler_performBlock___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __60___PFTOffMainThreadScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __54___PFTOffMainThreadScheduler_performCancellableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __71___PFTOffMainThreadScheduler_performCancellableBlock_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __54___PFTOffMainThreadScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __71___PFTOffMainThreadScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = +[_PFTOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __43___PFTOffMainThreadScheduler_performBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCACC8] isMainThread];
  OUTLINED_FUNCTION_0_0();
  if (!v2)
  {
    v1 = 16;
  }

  v3 = *(v0 + v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_25ED8F000, v4, v5, "Work was requested to be performed off the main thread, but scheduler %{public}@ is performing on the main thread", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

@end