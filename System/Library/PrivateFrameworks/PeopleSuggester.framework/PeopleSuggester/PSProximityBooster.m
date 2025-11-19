@interface PSProximityBooster
@end

@implementation PSProximityBooster

void __27___PSProximityBooster_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __27___PSProximityBooster_init__block_invoke_cold_1();
  }
}

void __27___PSProximityBooster_init__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __27___PSProximityBooster_init__block_invoke_13_cold_1();
  }
}

void __27___PSProximityBooster_init__block_invoke_16(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __27___PSProximityBooster_init__block_invoke_16_cold_1(v4, a3, v5);
  }
}

void __27___PSProximityBooster_init__block_invoke_21()
{
  v0 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __27___PSProximityBooster_init__block_invoke_21_cold_1();
  }
}

void __27___PSProximityBooster_init__block_invoke_25()
{
  v0 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __27___PSProximityBooster_init__block_invoke_25_cold_1();
  }
}

void __47___PSProximityBooster_startMonitoringProximity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging heuristicsChannel];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47___PSProximityBooster_startMonitoringProximity__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47___PSProximityBooster_startMonitoringProximity__block_invoke_cold_2();
  }
}

void __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) peopleDiscovery];
  v3 = [v2 discoveredPeople];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) contactID];
        if (v9)
        {
          [*(a1 + 40) addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v4 count];
  v11 = +[_PSLogging heuristicsChannel];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_cold_1(v4, a1);
    }
  }

  else if (v12)
  {
    __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_cold_2();
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = [a2 recipients];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 contact];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __27___PSProximityBooster_init__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __27___PSProximityBooster_init__block_invoke_13_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __27___PSProximityBooster_init__block_invoke_16_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_DEBUG, "Changed person: %@, changes: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __47___PSProximityBooster_startMonitoringProximity__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Error activating people discovery: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __47___PSProximityBooster_startMonitoringProximity__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEBUG, "Boosting suggestions with nearby people: %@, nearbyContactIDs: %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end