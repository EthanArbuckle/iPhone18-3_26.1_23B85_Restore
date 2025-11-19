@interface PLFakeCPLPushChangeSession
- (PLFakeCPLPushChangeSession)initWithLibraryManager:(id)a3 queue:(id)a4;
- (void)commitChangeBatch:(id)a3 completionHandler:(id)a4;
- (void)finalizeWithCompletionHandler:(id)a3;
@end

@implementation PLFakeCPLPushChangeSession

- (void)finalizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLFakeCPLPushChangeSession_finalizeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v11 = v4;
  v6 = v4;
  dispatch_async(queue, block);
  v7 = dispatch_time(0, 3000000000);
  v8 = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PLFakeCPLPushChangeSession_finalizeWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E75781E8;
  v9[4] = self;
  dispatch_after(v7, v8, v9);
}

void __60__PLFakeCPLPushChangeSession_finalizeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained fakeBaseURL];
  v4 = [v3 URLByAppendingPathComponent:@"resetevents.plist"];
  v26 = [v4 path];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v3) = [v5 fileExistsAtPath:v26];

  if (v3)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v26];
    v7 = [v6 lastObject];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:@"pending"];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        v11 = [v8 mutableCopy];
        [v11 removeObjectForKey:@"pending"];
        v12 = [MEMORY[0x1E695DF00] date];
        [v11 setObject:v12 forKey:@"endDate"];

        v13 = [v6 mutableCopy];
        [v13 removeLastObject];
        [v13 addObject:v11];
        [v13 writeToFile:v26 atomically:1];
        v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v15 = [v14 delegate];
        v16 = objc_loadWeakRetained((*(a1 + 32) + 8));
        [v15 libraryManagerHasChangesToPull:v16];
      }
    }
  }

  v17 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v18 = [v17 syncStatus];
  v19 = [v18 initialSyncDate];

  if (!v19)
  {
    v20 = [MEMORY[0x1E695DF00] date];
    v21 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v22 = [v21 syncStatus];
    [v22 setInitialSyncDate:v20];
  }

  v23 = [MEMORY[0x1E695DF00] date];
  v24 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v25 = [v24 syncStatus];
  [v25 setLastSuccessfulSyncDate:v23];
}

- (void)commitChangeBatch:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLFakeCPLPushChangeSession_commitChangeBatch_completionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v17 = v7;
  v9 = v7;
  dispatch_async(queue, block);
  v10 = dispatch_time(0, 1000000000);
  v11 = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PLFakeCPLPushChangeSession_commitChangeBatch_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7578848;
  v14 = v6;
  v15 = self;
  v12 = v6;
  dispatch_after(v10, v11, v13);
}

void __66__PLFakeCPLPushChangeSession_commitChangeBatch_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v3 UUIDString];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __66__PLFakeCPLPushChangeSession_commitChangeBatch_completionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) records];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      v2 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v2;
        v3 = *(*(&v25 + 1) + 8 * v2);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = [v3 resources];
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
          do
          {
            v8 = 0;
            do
            {
              if (*v22 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v21 + 1) + 8 * v8);
              v10 = objc_alloc(MEMORY[0x1E6994BA0]);
              v11 = [MEMORY[0x1E696AFB0] UUID];
              v12 = [v11 UUIDString];
              v13 = [v10 initWithResource:v9 taskIdentifier:v12];

              WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
              v15 = [WeakRetained resourceProgressDelegate];
              v16 = objc_loadWeakRetained((*(a1 + 40) + 8));
              [v15 libraryManager:v16 uploadDidFinishForResourceTransferTask:v13 withError:0];

              ++v8;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v6);
        }

        v2 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }
}

- (PLFakeCPLPushChangeSession)initWithLibraryManager:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLFakeCPLPushChangeSession;
  v8 = [(PLFakeCPLPushChangeSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_libraryManager, v6);
    objc_storeStrong(&v9->_queue, a4);
  }

  return v9;
}

@end