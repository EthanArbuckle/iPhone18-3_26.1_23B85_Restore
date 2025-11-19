@interface PSTrialClient
@end

@implementation PSTrialClient

void __24___PSTrialClient_recipe__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) levelForFactor:@"psRecipe" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
  v4 = [v3 fileValue];
  v5 = [v4 path];

  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v3 fileValue];
    v8 = [v7 path];
    v9 = [v6 fileURLWithPath:v8 isDirectory:0];

    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9];
    if (v10)
    {
      v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:1 error:0];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      v21 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __24___PSTrialClient_recipe__block_invoke_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __24___PSTrialClient_recipe__block_invoke_cold_2(v9, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

uint64_t __36___PSTrialClient_getTrialExperiment__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) experimentIdentifiersWithNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __31___PSTrialClient_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  [v3 refresh];
  v5 = [*(a1 + 32) recipe];
  v6 = v4[2];
  v4[2] = v5;

  v7 = v4[3];
  v4[3] = 0;
}

void __30___PSTrialClient_rankingModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[3]);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = [v4 levelForFactor:@"psSuggestionsRankingModel.mlmodelc" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
      v6 = [v5 directoryValue];
      v7 = [v6 path];

      if (v7)
      {
        v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:1];
        v9 = +[_PSLogging rewriteChannel];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __30___PSTrialClient_rankingModel__block_invoke_cold_1();
        }

        v10 = [*(a1 + 32) loadCoreMLModel:v8 config:0];
        v11 = *(*(a1 + 40) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = +[_PSLogging generalChannel];
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16[0] = 0;
            _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "_PSTrialClient: Loaded model successfully", v16, 2u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          __30___PSTrialClient_rankingModel__block_invoke_cold_2(v15);
        }

        objc_storeStrong(v3 + 3, *(*(*(a1 + 40) + 8) + 40));
      }

      else
      {
        v8 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          __30___PSTrialClient_rankingModel__block_invoke_cold_3(v8);
        }
      }
    }

    else
    {
      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __30___PSTrialClient_rankingModel__block_invoke_cold_4(v5);
      }
    }
  }
}

void __22___PSTrialClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "_PSTrialClient: Namespace updated", v3, 2u);
    }

    [WeakRetained updateFactors];
  }
}

uint64_t __31___PSTrialClient_objectForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __30___PSTrialClient_rankingModel__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEBUG, "_PSTrialClient: Using CoreML model from %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __30___PSTrialClient_rankingModel__block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = @"psSuggestionsRankingModel.mlmodelc";
  _os_log_fault_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_FAULT, "_PSTrialClient: Loaded model is nil for %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __30___PSTrialClient_rankingModel__block_invoke_cold_3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = @"psSuggestionsRankingModel.mlmodelc";
  _os_log_fault_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_FAULT, "_PSTrialClient: Directory path is nil for Factor %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __24___PSTrialClient_recipe__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a1, a3, "_PSTrialClient: File missing for Factor %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __24___PSTrialClient_recipe__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a1, a3, "_PSTrialClient: File path is nil for Factor %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end