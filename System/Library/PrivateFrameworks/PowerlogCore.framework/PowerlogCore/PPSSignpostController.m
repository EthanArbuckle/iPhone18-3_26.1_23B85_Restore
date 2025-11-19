@interface PPSSignpostController
+ (id)_workQueue;
+ (void)registerDataCollectionActivity;
+ (void)unregisterDataCollectionActivity;
- (BOOL)_handleTask:(id)a3;
- (BOOL)_performWithStartDate:(id)a3 endDate:(id)a4;
- (PPSSignpostController)init;
- (id)generateForTimeRange:(id)a3;
@end

@implementation PPSSignpostController

- (PPSSignpostController)init
{
  if (+[PLPlatform internalBuild])
  {
    v3 = PPSLogSignpostController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Initializing signpost controller...", buf, 2u);
    }

    v6.receiver = self;
    v6.super_class = PPSSignpostController;
    self = [(PPSSignpostController *)&v6 init];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateForTimeRange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PPSLogSignpostController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Signpost collection requested on-demand for range: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = [MEMORY[0x1E695DF70] array];
  v6 = +[PPSSignpostController _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PPSSignpostController_generateForTimeRange___block_invoke;
  block[3] = &unk_1E8519128;
  block[4] = self;
  v12 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __46__PPSSignpostController_generateForTimeRange___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _lastCollectionDate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) startDate];
  v5 = [*(a1 + 40) endDate];
  LODWORD(v3) = [v3 _performWithStartDate:v4 endDate:v5];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MEMORY[0x1E695DFF8];
  v8 = +[PPSFileUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/Signposts/"];
  v10 = [v7 fileURLWithPath:v9];
  v34[0] = *MEMORY[0x1E695DAA8];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v12 = [v6 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v11 options:0 error:0];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_51];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __46__PPSSignpostController_generateForTimeRange___block_invoke_3;
  v31[3] = &unk_1E8519D80;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v32 = v14;
  v33 = v15;
  [v13 enumerateObjectsUsingBlock:v31];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __46__PPSSignpostController_generateForTimeRange___block_invoke_56;
  v25 = &unk_1E8519DA8;
  v29 = *(a1 + 48);
  v30 = v3;
  v16 = v2;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  AnalyticsSendEventLazy();
  if (v3)
  {
    v19 = PPSLogSignpostController();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEFAULT, "Finished on-demand signpost collection...", v21, 2u);
    }

    [*(a1 + 32) _clearState];
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __46__PPSSignpostController_generateForTimeRange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DAA8];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = v9;
  if (v7)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void __46__PPSSignpostController_generateForTimeRange___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0;
  v4 = [v3 getResourceValue:&v9 forKey:*MEMORY[0x1E695DAA8] error:0];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = PPSLogSignpostController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__PPSSignpostController_generateForTimeRange___block_invoke_3_cold_1(v3);
    }

    goto LABEL_8;
  }

  if (([*(a1 + 32) containsDate:v5] & 1) == 0)
  {
    v6 = PPSLogSignpostController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 lastPathComponent];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Signpost file '%@' is outside of requested range", buf, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];
}

id __46__PPSSignpostController_generateForTimeRange___block_invoke_56(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
  [v2 setObject:v3 forKeyedSubscript:@"EligibleFileCount"];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  [v2 setObject:v4 forKeyedSubscript:@"DoneWithWork"];

  v5 = MEMORY[0x1E696AD98];
  if (*(a1 + 32))
  {
    v6 = [*(a1 + 40) _lastCollectionDate];
    [v6 timeIntervalSinceDate:*(a1 + 32)];
    v7 = [v5 numberWithDouble:?];
    [v2 setObject:v7 forKeyedSubscript:@"RemainingDurationToCollect"];
  }

  else
  {
    [*(a1 + 48) duration];
    v6 = [v5 numberWithDouble:?];
    [v2 setObject:v6 forKeyedSubscript:@"RemainingDurationToCollect"];
  }

  v8 = MEMORY[0x1E696AD98];
  [*(a1 + 48) duration];
  v9 = [v8 numberWithDouble:?];
  [v2 setObject:v9 forKeyedSubscript:@"RequestedTimeRangeDuration"];

  return v2;
}

+ (void)registerDataCollectionActivity
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = "Submitted";
  }

  else
  {
    v4 = "Updated";
  }

  v5 = [a2 identifier];
  v7 = 136315394;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1D8611000, a3, OS_LOG_TYPE_DEBUG, "%s task with identifier, %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __55__PPSSignpostController_registerDataCollectionActivity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PPSSignpostController);
  [(PPSSignpostController *)v3 _handleTask:v2];
}

+ (void)unregisterDataCollectionActivity
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698E4C0] sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.perfpowerservices.signpost"];

  if (v3)
  {
    v4 = PPSLogSignpostController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"com.apple.perfpowerservices.signpost";
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Unregistering safeguard collection activity ('%@')...", &v7, 0xCu);
    }

    v5 = [MEMORY[0x1E698E4C0] sharedScheduler];
    [v5 deregisterTaskWithIdentifier:@"com.apple.perfpowerservices.signpost"];
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)_workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (BOOL)_performWithStartDate:(id)a3 endDate:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PPSSignpostController *)self _lastCollectionDate];
  v9 = [(PPSSignpostController *)self _lastCollectionDate];
  v10 = [v6 laterDate:v9];

  if (v10 == v8)
  {
    v12 = PPSLogSignpostController();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "Recovering last signpost collection date: %@", &buf, 0xCu);
    }

    v11 = v8;
    v13 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:v11];

    v7 = v13;
  }

  else
  {
    v11 = v6;
  }

  v14 = objc_alloc_init(PPSSignpostServiceConnection);
  [(PPSSignpostController *)self setConnection:v14];

  v15 = [(PPSSignpostController *)self connection];
  v16 = [v15 service];
  v17 = v16 == 0;

  if (v17)
  {
    v27 = PPSLogSignpostController();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PPSSignpostController *)v27 _performWithStartDate:v28 endDate:v29, v30, v31, v32, v33, v34];
    }

    v24 = [(PPSSignpostController *)self connection];
    [(PPSSignpostServiceRequest *)v24 invalidate];
    v26 = 0;
  }

  else
  {
    v18 = objc_alloc_init(PPSSignpostServiceRequest);
    [(PPSSignpostServiceRequest *)v18 setEndDate:v7];
    [(PPSSignpostServiceRequest *)v18 setSourceURL:0];
    [(PPSSignpostServiceRequest *)v18 setStartDate:v11];
    [(PPSSignpostServiceRequest *)v18 setType:1];
    v19 = PPSLogSignpostController();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(PPSSignpostServiceRequest *)v18 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEFAULT, "Starting signpost collection: '%@'", &buf, 0xCu);
    }

    v21 = PPSLogSignpostController();
    if (os_signpost_enabled(v21))
    {
      v22 = [(PPSSignpostServiceRequest *)v18 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1D8611000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SignpostCollection", "%@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x2020000000;
    v45 = 0;
    v23 = [(PPSSignpostServiceConnection *)self->_connection service];
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __55__PPSSignpostController__performWithStartDate_endDate___block_invoke;
    v40 = &unk_1E8519DF0;
    v24 = v18;
    v41 = v24;
    p_buf = &buf;
    [v23 process:v24 withReply:&v37];

    v25 = [(PPSSignpostController *)self connection:v37];
    [v25 invalidate];

    v26 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

void __55__PPSSignpostController__performWithStartDate_endDate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PPSLogSignpostController();
  if (os_signpost_enabled(v6))
  {
    v7 = [*(a1 + 32) description];
    v15 = 138412290;
    v16 = v7;
    _os_signpost_emit_with_name_impl(&dword_1D8611000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SignpostCollection", "%@", &v15, 0xCu);
  }

  v8 = PPSLogSignpostController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Saving";
    if (!v5)
    {
      v9 = @"Clearing";
    }

    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "%@ last signpost collection date: %@", &v15, 0x16u);
  }

  [PLDefaults setObject:v5 forKey:@"PPSSignpostControllerLastCollectionDate" saveToDisk:1];
  v10 = PPSLogSignpostController();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v11)
    {
      v12 = [*(a1 + 32) description];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Finished signpost collection: '%@'", &v15, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    if (v11)
    {
      v13 = [*(a1 + 32) endDate];
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Remaining signpost collection range: ['%@', '%@']", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_handleTask:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __37__PPSSignpostController__handleTask___block_invoke;
  v19[3] = &unk_1E8519CC8;
  objc_copyWeak(&v20, &location);
  [v4 setExpirationHandler:v19];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:v5];
  v7 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:v6];
  v8 = [(PPSSignpostController *)self _performWithStartDate:v6 endDate:v7];
  if (v4)
  {
    v9 = v8;
    v10 = PPSLogSignpostController();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v23 = @"com.apple.perfpowerservices.signpost";
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Finished '%@' task...", buf, 0xCu);
      }

      [(PPSSignpostController *)self _clearState];
      [v4 setTaskCompleted];
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v23 = @"com.apple.perfpowerservices.signpost";
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Deferring '%@' task...", buf, 0xCu);
      }

      v18 = 0;
      v12 = [v4 setTaskExpiredWithRetryAfter:&v18 error:0.0];
      v13 = v18;
      if ((v12 & 1) == 0)
      {
        v14 = PPSLogSignpostController();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(PPSSignpostController *)v13 _handleTask:v14];
        }

        [v4 setTaskCompleted];
      }
    }

    v17 = v5;
    AnalyticsSendEventLazy();
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void __37__PPSSignpostController__handleTask___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained connection];
  v4 = [v3 service];

  if (v4)
  {
    v5 = PPSLogSignpostController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"com.apple.perfpowerservices.signpost";
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "'%@' task expired!", &v10, 0xCu);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 connection];
    v8 = [v7 service];
    [v8 notifyExpired];
  }

  v9 = *MEMORY[0x1E69E9840];
}

id __37__PPSSignpostController__handleTask___block_invoke_107(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"DidComplete"];

  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40) ^ 1u];
  [v2 setObject:v4 forKeyedSubscript:@"DidDefer"];

  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] now];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v7 = [v5 numberWithDouble:?];
  [v2 setObject:v7 forKeyedSubscript:@"TaskDuration"];

  return v2;
}

void __46__PPSSignpostController_generateForTimeRange___block_invoke_3_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Failed to get creation date for signpost file '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleTask:(__CFString *)a1 .cold.1(__CFString *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = @"Unknown";
  }

  v4 = 138412546;
  v5 = @"com.apple.perfpowerservices.signpost";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to expire '%@' task with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end