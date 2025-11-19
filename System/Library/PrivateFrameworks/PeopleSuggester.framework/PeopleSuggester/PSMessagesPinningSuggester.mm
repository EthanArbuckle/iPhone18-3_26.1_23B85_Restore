@interface PSMessagesPinningSuggester
@end

@implementation PSMessagesPinningSuggester

void __77___PSMessagesPinningSuggester_chatGuidsForMessagesPinningWithMaxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77___PSMessagesPinningSuggester_chatGuidsForMessagesPinningWithMaxSuggestions___block_invoke_cold_1();
  }
}

uint64_t __147___PSMessagesPinningSuggester_chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions_referenceDate_minimumDaysOfHistory_maxInteractionsForQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastObject];
  v6 = [v4 lastObject];

  [v5 doubleValue];
  v8 = v7;
  [v6 doubleValue];
  if (v8 >= v9)
  {
    [v5 doubleValue];
    v12 = v11;
    [v6 doubleValue];
    if (v12 <= v13)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void __62___PSMessagesPinningSuggester_provideMessagesPinningFeedback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging suggestionSignpost];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77___PSMessagesPinningSuggester_chatGuidsForMessagesPinningWithMaxSuggestions___block_invoke_cold_1();
  }
}

void __61___PSMessagesPinningSuggester_submitMessagesPinningFeedback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[_PSLogging messagePinningChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61___PSMessagesPinningSuggester_submitMessagesPinningFeedback___block_invoke_cold_1();
    }
  }
}

void __77___PSMessagesPinningSuggester_chatGuidsForMessagesPinningWithMaxSuggestions___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "XPC Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61___PSMessagesPinningSuggester_submitMessagesPinningFeedback___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error while donating to Tips: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end