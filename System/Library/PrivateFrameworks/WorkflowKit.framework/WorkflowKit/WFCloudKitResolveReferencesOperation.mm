@interface WFCloudKitResolveReferencesOperation
- (WFCloudKitItemRequest)request;
- (WFCloudKitResolveReferencesOperation)initWithRequest:(id)a3 records:(id)a4 operationGroup:(id)a5 task:(id)a6;
- (void)cancel;
- (void)start;
@end

@implementation WFCloudKitResolveReferencesOperation

- (void)start
{
  v53 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = WFCloudKitResolveReferencesOperation;
  [(WFCloudKitAsyncOperation *)&v47 start];
  v30 = [MEMORY[0x1E696ADC8] currentQueue];
  v3 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(WFCloudKitResolveReferencesOperation *)self records];
    v5 = [v4 count];
    *buf = 136315394;
    v50 = "[WFCloudKitResolveReferencesOperation start]";
    v51 = 2048;
    v52 = v5;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Resolve references operation starting for %lu records", buf, 0x16u);
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = self;
  obj = [(WFCloudKitResolveReferencesOperation *)self records];
  v8 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v12 record];
        v14 = [v12 item];
        v15 = [objc_opt_class() properties];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke;
        v39[3] = &unk_1E83799B8;
        v40 = v13;
        v41 = v6;
        v42 = v7;
        v16 = v13;
        [v15 enumerateKeysAndObjectsUsingBlock:v39];
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_3;
  aBlock[3] = &unk_1E83799E0;
  aBlock[4] = v29;
  v17 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v18 = getWFCloudKitLogObject();
    v19 = v30;
    v20 = v7;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v21 = [v6 count];
      *buf = 136315394;
      v50 = "[WFCloudKitResolveReferencesOperation start]";
      v51 = 2048;
      v52 = v21;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s Fetching %lu references.", buf, 0x16u);
    }

    v22 = [(WFCloudKitResolveReferencesOperation *)v29 request];
    v23 = [v6 allKeys];
    v24 = [v7 allObjects];
    v25 = [(WFCloudKitResolveReferencesOperation *)v29 operationGroup];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_446;
    v32[3] = &unk_1E837AE68;
    v33 = v6;
    v34 = v29;
    v35 = v30;
    v37 = a2;
    v36 = v17;
    v26 = [v22 fetchRecordIDs:v23 desiredKeys:v24 operationGroup:v25 completionHandler:v32];
    [(WFCloudKitResolveReferencesOperation *)v29 setCurrentOperation:v26];
  }

  else
  {
    (*(v17 + 2))(v17, 0);
    v19 = v30;
    v20 = v7;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) records];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 record];
        v11 = [v9 item];
        [WFCloudKitItemRequest hydrateItem:v11 withRecord:v10 resolvedReferences:v3 setNilValues:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) finishExecuting];
  v12 = *MEMORY[0x1E69E9840];
}

- (WFCloudKitItemRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (void)cancel
{
  v3 = [(WFCloudKitResolveReferencesOperation *)self currentOperation];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = WFCloudKitResolveReferencesOperation;
  [(WFCloudKitResolveReferencesOperation *)&v4 cancel];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 type] == 3)
  {
    v7 = [*(a1 + 32) objectForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v6 itemClass];
      v10 = *(a1 + 40);
      v11 = [v8 recordID];

      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v23 = v7;
        v12 = [v7 objectsMatchingClass:objc_opt_class()];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          do
          {
            v16 = 0;
            do
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * v16);
              v18 = [v6 itemClass];
              v19 = *(a1 + 40);
              v20 = [v17 recordID];
              [v19 setObject:v18 forKeyedSubscript:v20];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v14);
        }

        v7 = v23;
      }
    }

    v21 = [objc_msgSend(v6 "itemClass")];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_2;
    v24[3] = &unk_1E83798F0;
    v25 = *(a1 + 48);
    [v21 enumerateKeysAndObjectsUsingBlock:v24];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_446(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFCloudKitLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) allKeys];
      *buf = 136315650;
      v32 = "[WFCloudKitResolveReferencesOperation start]_block_invoke";
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Error fetching record IDs: %@, %@", buf, 0x20u);
    }

    v10 = [*(a1 + 40) task];
    [v10 setError:v6];

    [*(a1 + 48) cancelAllOperations];
    [*(a1 + 40) finishExecuting];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[WFCloudKitResolveReferencesOperation start]_block_invoke";
      v33 = 2048;
      v34 = [v5 count];
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Finished fetching %lu references", buf, 0x16u);
    }

    v11 = objc_opt_new();
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __45__WFCloudKitResolveReferencesOperation_start__block_invoke_447;
    v26 = &unk_1E8379A08;
    v12 = *(a1 + 32);
    v30 = *(a1 + 64);
    v13 = *(a1 + 40);
    v27 = v12;
    v28 = v13;
    v14 = v11;
    v29 = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:&v23];
    if (([*(a1 + 40) isCancelled] & 1) == 0)
    {
      v15 = *(a1 + 48);
      v16 = [WFCloudKitResolveReferencesOperation alloc];
      v17 = [*(a1 + 40) request];
      v18 = [v14 allValues];
      v19 = [*(a1 + 40) operationGroup];
      v20 = [*(a1 + 40) task];
      v21 = [(WFCloudKitResolveReferencesOperation *)v16 initWithRequest:v17 records:v18 operationGroup:v19 task:v20];
      [v15 addOperation:v21];
    }

    (*(*(a1 + 56) + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_447(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = [v15 recordType];
    [v11 handleFailureInMethod:v12 object:v13 file:@"WFCloudKitItemRequest.m" lineNumber:760 description:{@"Received record not in known WFCloudKitItem types: %@", v14}];
  }

  v8 = [WFCloudKitItemRecord alloc];
  v9 = objc_alloc_init(v7);
  v10 = [(WFCloudKitItemRecord *)v8 initWithRecord:v15 item:v9];
  [*(a1 + 48) setObject:v10 forKeyedSubscript:v6];
}

void __45__WFCloudKitResolveReferencesOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isIgnoredByDefault] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (WFCloudKitResolveReferencesOperation)initWithRequest:(id)a3 records:(id)a4 operationGroup:(id)a5 task:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = WFCloudKitResolveReferencesOperation;
  v14 = [(WFCloudKitResolveReferencesOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_request, v10);
    objc_storeStrong(&v15->_records, a4);
    objc_storeStrong(&v15->_operationGroup, a5);
    objc_storeStrong(&v15->_task, a6);
    v16 = v15;
  }

  return v15;
}

@end