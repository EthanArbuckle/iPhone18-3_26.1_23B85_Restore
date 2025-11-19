@interface PSInteractionPredictor
@end

@implementation PSInteractionPredictor

BOOL __62___PSInteractionPredictor_getConversationIDLogFromTrainArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v11 = [v9 compare:v10] == 0;

  return v11;
}

uint64_t __79___PSInteractionPredictor_getClusteringResultsForPoint_usingClusterDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 distanceToCluster];
  v6 = v5;
  [v4 distanceToCluster];
  v8 = v7;

  if (v6 - v8 >= -2.22044605e-16)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 - v8 > 2.22044605e-16)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

void __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "pre-update: ", v10, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 model];
  [v5 printModelWeights:v6];

  v7 = [v3 task];
  v8 = [v7 error];

  if (v8)
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_cold_1(v3);
    }
  }
}

void __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_145(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "Saving the adapted model at %@", buf, 0xCu);
  }

  v6 = a1[5];
  v7 = [v3 model];
  [v6 printModelWeights:v7];

  if (a1[4])
  {
    v8 = [v3 model];
    v9 = a1[4];
    v10 = *(a1[6] + 8);
    obj = *(v10 + 40);
    v11 = [v8 writeToURL:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if (*(*(a1[6] + 8) + 40) || (v11 & 1) == 0)
    {
      v12 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_145_cold_1((a1 + 6));
      }
    }

    dispatch_semaphore_signal(*(*(a1[7] + 8) + 40));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __79___PSInteractionPredictor_rankedZkwSuggestionsFromPredictionArray_forBundleID___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = +[_PSConstants mobileMessagesBundleId];
  v4 = +[_PSConstants macMessagesBundleId];
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  v6 = rankedZkwSuggestionsFromPredictionArray_forBundleID___pasExprOnceResult;
  rankedZkwSuggestionsFromPredictionArray_forBundleID___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

void __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 task];
  v2 = [v1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_145_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end