@interface PSAppUsageUtilities
@end

@implementation PSAppUsageUtilities

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_cold_1(v2);
    }
  }
}

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 eventBody], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [*(a1 + 40) addBiomeDataToCache:*(*(*(a1 + 32) + 8) + 40) event:v4];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_84_cold_1(v4);
    }
  }
}

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_91()
{
  v0 = +[_PSLogging feedbackChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_INFO, "Event donation from Sharesheet.Feedback biome stream was cancelled", v1, 2u);
  }
}

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6997A60] userContext];
  v5 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/appShares/value"];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
    if (v3 && ([v3 eventBody], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [*(a1 + 32) addBiomeDataToCache:v7 event:v3];

      [v4 setObject:v9 forKeyedSubscript:v5];
      v7 = v9;
    }

    else
    {
      v10 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_84_cold_1(v3);
      }
    }
  }
}

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Error: Feedback Biome stream read did not complete successfully: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_84_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventBody];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Event donation from Sharesheet.Feedback biome stream was empty for event: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end