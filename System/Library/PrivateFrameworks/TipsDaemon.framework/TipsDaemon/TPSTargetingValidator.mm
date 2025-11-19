@interface TPSTargetingValidator
+ (BOOL)validateConditions:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 error:(id *)a8;
+ (void)_validateCondition:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8;
+ (void)validateConditions:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8;
@end

@implementation TPSTargetingValidator

+ (BOOL)validateConditions:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = objc_opt_class();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_error___block_invoke;
  v23[3] = &unk_2789AF910;
  v25 = &v33;
  v26 = &v27;
  v19 = v17;
  v24 = v19;
  [v18 validateConditions:v13 joinType:a4 context:v14 cache:v15 completionQueue:v16 completionHandler:v23];
  v20 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v19, v20);
  if (a8)
  {
    *a8 = v28[5];
  }

  v21 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v21;
}

void __89__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_error___block_invoke(uint64_t a1, char a2, id obj)
{
  if (obj)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)validateConditions:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8
{
  v84 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = @"unspecified";
  v50 = v13;
  if (v13)
  {
    v17 = v13;
  }

  v49 = v17;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke;
  aBlock[3] = &unk_2789AF960;
  v78 = &v79;
  v42 = v15;
  v76 = v42;
  v41 = v16;
  v77 = v41;
  v51 = _Block_copy(aBlock);
  if (([MEMORY[0x277D71740] ignoreTargetingValidator] & 1) != 0 || !objc_msgSend(v43, "count"))
  {
    v51[2](v51, 1, 0);
  }

  else
  {
    if ([v43 count] == 1)
    {
      v18 = [v43 firstObject];
      [a1 _validateCondition:v18 joinType:a4 context:v13 cache:v14 completionQueue:v42 completionHandler:v51];
    }

    else
    {
      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v43, "count")}];
      v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v20 setMaxConcurrentOperationCount:-1];
      [v20 setSuspended:1];
      v47 = v20;
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create(0, v21);

      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_3;
      v74[3] = &__block_descriptor_40_e8_B16__0q8l;
      v74[4] = a4;
      v46 = _Block_copy(v74);
      v44 = objc_opt_new();
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v43;
      v23 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v23)
      {
        v24 = *v71;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v71 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v70 + 1) + 8 * i);
            v27 = [[TPSTargetingValidateOperation alloc] initWithTargetingCondition:v26];
            [(TPSTargetingValidateOperation *)v27 setContext:v50];
            v28 = [v26 identifier];
            if (v14)
            {
              v29 = [v14 cacheResultForIdentifier:v28];
              if (v29 != -1)
              {
                [(TPSTargetingValidateOperation *)v27 setResult:v29];
                [v44 addObject:v27];
              }
            }

            objc_initWeak(&location, v27);
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_4;
            v59[3] = &unk_2789AF9D0;
            objc_copyWeak(v68, &location);
            v60 = v22;
            v61 = v14;
            v30 = v28;
            v62 = v30;
            v65 = v46;
            v67 = &v79;
            v63 = v49;
            v66 = v51;
            v68[1] = a4;
            v64 = v47;
            [(TPSTargetingValidateOperation *)v27 setCompletionBlock:v59];
            [v19 addObject:v27];

            objc_destroyWeak(v68);
            objc_destroyWeak(&location);
          }

          v23 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v23);
      }

      v31 = v47;
      [v47 addOperations:v19 waitUntilFinished:0];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_8;
      v52[3] = &unk_2789AFA20;
      v32 = v22;
      v53 = v32;
      v33 = v49;
      v54 = v33;
      v57 = &v79;
      v18 = v19;
      v55 = v18;
      v58 = a4;
      v34 = v51;
      v56 = v34;
      [v47 addBarrierBlock:v52];
      if ([v44 count])
      {
        v35 = MEMORY[0x277CCAC30];
        v36 = [MEMORY[0x277CCABB0] numberWithInteger:a4 == 1];
        v37 = [v35 predicateWithFormat:@"(result == %@)", v36];
        v38 = [v18 filteredArrayUsingPredicate:v37];

        if ([v38 count])
        {
          v39 = [MEMORY[0x277D71778] targeting];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [TPSTargetingValidator validateConditions:v33 joinType:a4 == 1 context:v39 cache:? completionQueue:? completionHandler:?];
          }

          v34[2](v34, a4 == 1, 0);
        }

        v31 = v47;
      }

      if (*(v80 + 24) == 1)
      {
        [v31 cancelAllOperations];
      }

      [v31 setSuspended:0];
    }
  }

  _Block_object_dispose(&v79, 8);
  v40 = *MEMORY[0x277D85DE8];
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2;
    block[3] = &unk_2789AF938;
    v12 = *(a1 + 40);
    v13 = a2;
    v11 = v5;
    dispatch_async(v8, block);
  }
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5;
  block[3] = &unk_2789AF9A8;
  v16 = WeakRetained;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  v19 = v6;
  v21 = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(a1 + 104);
  v20 = v9;
  v22 = v10;
  v11 = *(a1 + 64);
  *&v12 = v8;
  *(&v12 + 1) = v11;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v17 = v13;
  v18 = v12;
  v14 = WeakRetained;
  dispatch_async(v3, block);
}

uint64_t __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) result] != -1)
  {
    [*(a1 + 40) addCacheResult:objc_msgSend(*(a1 + 32) forIdentifier:{"result"), *(a1 + 48)}];
  }

  result = (*(*(a1 + 72) + 16))(*(a1 + 72), [*(a1 + 32) result]);
  if (result && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v3 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5_cold_1(a1, v3);
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 96) == 1, 0);
    result = [*(a1 + 64) operationCount];
    if (result)
    {
      return [*(a1 + 64) cancelAllOperations];
    }
  }

  return result;
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_8(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9;
  block[3] = &unk_2789AF9F8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v11 = *(a1 + 72);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9(uint64_t a1)
{
  v2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9_cold_1(a1, v2);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(result == %@)", &unk_2848309C0];
    v5 = [v3 filteredArrayUsingPredicate:v4];

    v6 = *(a1 + 64);
    v7 = [v5 count];
    if (!v6)
    {
      v8 = v7 == [*(a1 + 40) count];
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_validateCondition:(id)a3 joinType:(int64_t)a4 context:(id)a5 cache:(id)a6 completionQueue:(id)a7 completionHandler:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a8;
  v15 = [v11 identifier];
  v16 = [v15 isEqualToString:@"unknown"];
  if (!v13 || (v16 & 1) != 0 || (v17 = [v13 cacheResultForIdentifier:v15], v17 == -1))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__TPSTargetingValidator__validateCondition_joinType_context_cache_completionQueue_completionHandler___block_invoke;
    v23[3] = &unk_2789AFA48;
    v24 = v13;
    v25 = v15;
    v26 = v14;
    [v11 validateWithCompletion:v23];
  }

  else
  {
    v18 = v17;
    v19 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = @"unspecified";
      if (v12)
      {
        v21 = v12;
      }

      v22 = @"NO";
      *buf = 138412802;
      v28 = v21;
      v29 = 2112;
      v30 = v15;
      if (v18 == 1)
      {
        v22 = @"YES";
      }

      v31 = 2112;
      v32 = v22;
      _os_log_debug_impl(&dword_232D6F000, v19, OS_LOG_TYPE_DEBUG, "[%@] - Using cached result for precondition (%@) - Valid: %@", buf, 0x20u);
    }

    (*(v14 + 2))(v14, v18 == 1, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __101__TPSTargetingValidator__validateCondition_joinType_context_cache_completionQueue_completionHandler___block_invoke(void *a1, unsigned int a2, void *a3)
{
  v4 = a2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  [v5 addCacheResult:v4 forIdentifier:v6];
  (*(a1[6] + 16))();
}

+ (void)validateConditions:(os_log_t)log joinType:context:cache:completionQueue:completionHandler:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_232D6F000, log, OS_LOG_TYPE_DEBUG, "[%@] - Using cached results - Valid: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "[%@] - EARLY EXITING", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "[%@] - ALL FINISHED", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end