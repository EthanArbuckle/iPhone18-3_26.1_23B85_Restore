@interface WBSURLCompletionSessionProxy
- (WBSURLCompletionSessionProxy)init;
- (void)_completionSessionWithCompletionHandler:(id)a3;
- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8;
@end

@implementation WBSURLCompletionSessionProxy

- (WBSURLCompletionSessionProxy)init
{
  v9.receiver = self;
  v9.super_class = WBSURLCompletionSessionProxy;
  v2 = [(WBSURLCompletionSessionProxy *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSHistoryConnectionProxy);
    historyConnectionProxy = v2->_historyConnectionProxy;
    v2->_historyConnectionProxy = v3;

    v5 = dispatch_queue_create("com.apple.SafariShared.WBSURLCompletionSessionProxy", 0);
    completionSessionAccessQueue = v2->_completionSessionAccessQueue;
    v2->_completionSessionAccessQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)_completionSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  completionSessionAccessQueue = self->_completionSessionAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__WBSURLCompletionSessionProxy__completionSessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(completionSessionAccessQueue, v7);
}

void __72__WBSURLCompletionSessionProxy__completionSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__36;
    v23 = __Block_byref_object_dispose__36;
    v24 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __72__WBSURLCompletionSessionProxy__completionSessionWithCompletionHandler___block_invoke_2;
    v15 = &unk_1E7FCB280;
    v16 = v4;
    v18 = &v19;
    v6 = v3;
    v17 = v6;
    [v5 beginURLCompletionSession:&v12];
    v7 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v25 = *MEMORY[0x1E696A578];
      v8 = _WBSLocalizedString();
      v26[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:{1, v12, v13, v14, v15, v16}];

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSURLCompletionSessionProxyErrorDomain" code:0 userInfo:v9];
      v11 = v20[5];
      v20[5] = v10;
    }

    (*(*(a1 + 40) + 16))();

    _Block_object_dispose(&v19, 8);
  }
}

void __72__WBSURLCompletionSessionProxy__completionSessionWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)getBestMatchesForTypedString:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 limit:(unint64_t)a5 forQueryID:(int64_t)a6 withSearchParameters:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__36;
  v31[4] = __Block_byref_object_dispose__36;
  v18 = self;
  v32 = v18;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke;
  v23[3] = &unk_1E7FCB2D0;
  v19 = v17;
  v27 = v19;
  v20 = v14;
  v24 = v20;
  v21 = v15;
  v25 = v21;
  v29 = a5;
  v30 = a6;
  v22 = v16;
  v26 = v22;
  v28 = v31;
  [(WBSURLCompletionSessionProxy *)v18 _completionSessionWithCompletionHandler:v23];

  _Block_object_dispose(v31, 8);
}

void __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    (*(*(a1 + 56) + 16))();
    v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_cold_1(v14, v6);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_10;
    v15[3] = &unk_1E7FCB2A8;
    v18 = v9;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v16 = v12;
    v17 = v13;
    [a2 getBestMatchesForTypedString:v7 filterResultsUsingProfileIdentifier:v8 limit:v9 forQueryID:v10 withSearchParameters:v11 completionHandler:v15];
  }
}

void __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_10(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF70] array];
  if ([v7 count])
  {
    [v10 addObjectsFromArray:v7];
  }

  if ([v8 count])
  {
    [v10 addObjectsFromArray:v8];
  }

  v11 = [v10 count];
  v12 = a1[6];
  if (v11 > v12)
  {
    [v10 removeObjectsInRange:{v12, objc_msgSend(v10, "count") - a1[6]}];
  }

  (*(a1[4] + 16))();
  v13 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v17 = 134217984;
    v18 = [v10 count];
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Returning %zi matches", &v17, 0xCu);
  }

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

void __153__WBSURLCompletionSessionProxy_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to obtain a completion session: %{public}@", &v5, 0xCu);
}

@end