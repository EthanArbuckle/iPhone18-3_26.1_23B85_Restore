@interface WBSPasswordBreachRequestManager
- (WBSPasswordBreachRequestManager)initWithContext:(id)a3;
- (void)_buildRequestWithURL:(id)a3 headers:(id)a4 completionHandler:(id)a5;
- (void)_fetchBucketAtURL:(id)a3 withClientBlindedHash:(id)a4 completionHandler:(id)a5;
- (void)fetchHighFrequencyBucketWithCompletionHandler:(id)a3;
- (void)fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSPasswordBreachRequestManager

- (WBSPasswordBreachRequestManager)initWithContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = WBSPasswordBreachRequestManager;
  v6 = [(WBSPasswordBreachRequestManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    fetchOperationQueue = v7->_fetchOperationQueue;
    v7->_fetchOperationQueue = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_fetchOperationQueue setName:v10];

    v11 = MEMORY[0x1E695AC78];
    v12 = [v5 configuration];
    v13 = [v12 urlSessionConfiguration];
    v14 = [v11 sessionWithConfiguration:v13 delegate:0 delegateQueue:v7->_fetchOperationQueue];
    session = v7->_session;
    v7->_session = v14;

    v16 = v7;
  }

  return v7;
}

- (void)_fetchBucketAtURL:(id)a3 withClientBlindedHash:(id)a4 completionHandler:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v17 = @"x-req-p";
    v11 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:v9];
    v18[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v12 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF32A0;
  v15[4] = self;
  v16 = v10;
  v13 = v10;
  [(WBSPasswordBreachRequestManager *)self _buildRequestWithURL:v8 headers:v12 completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7CF3278;
  v6 = *(a1 + 40);
  v4 = [v3 downloadTaskWithRequest:a2 completionHandler:v5];
  [v4 resume];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_1(v11, v10);
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    if ([v10 safari_statusCodeGroup] == 2)
    {
      v43 = 0;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:&v43];
      v13 = v43;
      if (v12)
      {
        v14 = [[WBSPasswordBreachBloomFilter alloc] initWithSerializedRepresentation:v12];
        if (v14)
        {
          v15 = [v10 valueForHTTPHeaderField:@"x-res-p"];
          if ([v15 length])
          {
            v16 = [MEMORY[0x1E695DEF0] safari_dataWithHexString:v15];
            if (![v16 length])
            {
              v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_4(v17, v18, v19, v20, v21, v22, v23, v24);
              }
            }

            (*(*(a1 + 32) + 16))();
          }

          else
          {
            (*(*(a1 + 32) + 16))();
          }
        }

        else
        {
          v35 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_5(v35, v36, v37, v38, v39, v40, v41, v42);
          }

          (*(*(a1 + 32) + 16))();
        }
      }

      else
      {
        v34 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_6(v34, v13);
        }

        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_5;
    }

    v33 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_3(v33, v10);
    }

LABEL_4:
    (*(*(a1 + 32) + 16))();
LABEL_5:

    goto LABEL_6;
  }

  v25 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_2(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  (*(*(a1 + 32) + 16))();
LABEL_6:
}

- (void)_buildRequestWithURL:(id)a3 headers:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695AC18] requestWithURL:a3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v18}];
        [v9 setValue:v16 forHTTPHeaderField:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v8[2](v8, v9);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchHighFrequencyBucketWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSPasswordBreachContext *)self->_context configuration];
  v6 = [v5 highFrequencyBucketURL];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WBSPasswordBreachRequestManager_fetchHighFrequencyBucketWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CF32C8;
  v9 = v4;
  v7 = v4;
  [(WBSPasswordBreachRequestManager *)self _fetchBucketAtURL:v6 withClientBlindedHash:0 completionHandler:v8];
}

- (void)fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:(id)a3 completionHandler:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v7 = dispatch_group_create();
  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [(WBSPasswordBreachContext *)self->_context configuration];
  v9 = [v8 verboseSensitiveLoggingEnabled];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v31 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v31)
  {
    v29 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = v7;
        dispatch_group_enter(v7);
        v13 = [obj objectForKeyedSubscript:v11];
        if (v9)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v20 = MEMORY[0x1E696AEC0];
            v21 = v14;
            v22 = [v13 second];
            v23 = [v20 safari_stringAsHexWithData:v22];
            v24 = [v13 first];
            *buf = 138740483;
            v43 = v11;
            v44 = 2117;
            v45 = v23;
            v46 = 2117;
            v47 = v24;
            _os_log_debug_impl(&dword_1B8447000, v21, OS_LOG_TYPE_DEBUG, "Looking up password with UUID %{sensitive}@, client-blinded hash %{sensitive}@ in bucket %{sensitive}@", buf, 0x20u);
          }
        }

        v15 = [(WBSPasswordBreachContext *)self->_context configuration];
        v16 = [v15 lowFrequencyBucketURL];
        v17 = [v13 first];
        v18 = [v16 URLByAppendingPathComponent:v17];

        v19 = [v13 second];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke;
        v33[3] = &unk_1E7CF32F0;
        v37 = v9;
        v34 = v30;
        v35 = v11;
        v7 = v12;
        v36 = v12;
        [(WBSPasswordBreachRequestManager *)self _fetchBucketAtURL:v18 withClientBlindedHash:v19 completionHandler:v33];

        ++v10;
      }

      while (v31 != v10);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v31);
  }

  v25 = [(WBSPasswordBreachContext *)self->_context configuration];
  v26 = dispatch_time(0, 1000000000 * [v25 lowFrequencyBucketFetchTimeout]);
  dispatch_group_wait(v7, v26);

  v28[2](v28, v30);
  v27 = *MEMORY[0x1E69E9840];
}

void __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 56) == 1)
  {
    if ([v6 length])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke_cold_1(v8, v7);
      }
    }
  }

  v9 = [[WBSPair alloc] initWithFirst:v5 second:v7];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_3(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 statusCode];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);

  v9 = *MEMORY[0x1E69E9840];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_6(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 safari_stringAsHexWithData:a2];
  v7 = 138739971;
  v8 = v5;
  _os_log_debug_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEBUG, "\tReceived server-client-blinded hash %{sensitive}@", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end