@interface WBSHistoryDatabaseAccessBroker
- (WBSHistoryDatabaseAccessBroker)initWithHistoryDatabaseURL:(id)a3;
- (id)_openDatabaseWithAccessType:(int64_t)a3 onQueue:(id)a4 error:(id *)a5;
- (id)databaseLastModifiedDate;
- (void)_requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandler:(id)a5;
- (void)_requestReadOnlyAccessOnQueue:(id)a3 completionHandler:(id)a4;
- (void)_requestReadWriteAccessOnQueue:(id)a3 completionHandler:(id)a4;
- (void)requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandler:(id)a5;
- (void)requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandlerWithInvalidationHandler:(id)a5;
@end

@implementation WBSHistoryDatabaseAccessBroker

- (WBSHistoryDatabaseAccessBroker)initWithHistoryDatabaseURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSHistoryDatabaseAccessBroker;
  v5 = [(WBSHistoryDatabaseAccessBroker *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    historyDatabaseURL = v5->_historyDatabaseURL;
    v5->_historyDatabaseURL = v6;

    v8 = dispatch_queue_create("com.apple.SafariShared.History", 0);
    writeRequestQueue = v5->_writeRequestQueue;
    v5->_writeRequestQueue = v8;

    v10 = v5;
  }

  return v5;
}

- (void)requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WBSHistoryDatabaseAccessBroker_requestAccessType_onQueue_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC6FD8;
  v11 = v8;
  v9 = v8;
  [(WBSHistoryDatabaseAccessBroker *)self requestAccessType:a3 onQueue:a4 completionHandlerWithInvalidationHandler:v10];
}

void __78__WBSHistoryDatabaseAccessBroker_requestAccessType_onQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
  v8[2](v8);
}

- (void)requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandlerWithInvalidationHandler:(id)a5
{
  flagsa = a4;
  v8 = a5;
  v9 = flagsa;
  v10 = v8;
  if (!flagsa)
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  flags = v9;
  if ((a3 - 2) < 2)
  {
    [(WBSHistoryDatabaseAccessBroker *)self _requestReadWriteAccessOnQueue:v9 completionHandler:v10];
  }

  else if (a3 <= 1)
  {
    [(WBSHistoryDatabaseAccessBroker *)self _requestReadOnlyAccessOnQueue:v9 completionHandler:v10];
  }
}

- (void)_requestReadOnlyAccessOnQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSHistoryDatabaseAccessBroker__requestReadOnlyAccessOnQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(v9, block);
}

- (void)_requestReadWriteAccessOnQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  writeRequestQueue = self->_writeRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSHistoryDatabaseAccessBroker__requestReadWriteAccessOnQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(writeRequestQueue, block);
}

void __83__WBSHistoryDatabaseAccessBroker__requestReadWriteAccessOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSHistoryDatabaseAccessBroker__requestReadWriteAccessOnQueue_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FB7CC0;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  dispatch_sync(v2, block);
}

- (void)_requestAccessType:(int64_t)a3 onQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14 = 0;
  v10 = [(WBSHistoryDatabaseAccessBroker *)self _openDatabaseWithAccessType:a3 onQueue:v8 error:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__WBSHistoryDatabaseAccessBroker__requestAccessType_onQueue_completionHandler___block_invoke;
    v12[3] = &unk_1E7FB6F80;
    v13 = v10;
    (*(v9 + 2))(v9, v13, 0, v12);
  }

  else
  {
    (*(v9 + 2))(v9, 0, v11, &__block_literal_global_62);
  }
}

- (id)_openDatabaseWithAccessType:(int64_t)a3 onQueue:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_historyDatabaseURL queue:v8];
  if ([v9 openWithAccessType:a3 error:a5])
  {
    v10 = SafariShared::WBSSQLiteDatabaseFetch<>(v9, @"PRAGMA user_version");
    v11 = [v10 nextObject];
    v12 = [v11 intAtIndex:0];

    v13 = [v10 statement];
    [v13 invalidate];

    if (v12 == 16)
    {
      v14 = 0;
      v15 = v9;
    }

    else
    {
      if (a5)
      {
        v16 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v20[0] = @"History database does not have the correct schema version. Run Safari once to upgrade it.";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        *a5 = [v16 errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v17];
      }

      [v9 close];
      v15 = 0;
      v14 = v9;
    }

    v9 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)databaseLastModifiedDate
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E69C89E8] writeAheadLogURLForDatabaseURL:self->_historyDatabaseURL];
  v5 = [v4 path];
  v6 = [v3 attributesOfItemAtPath:v5 error:0];

  v7 = *MEMORY[0x1E696A350];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v10 = [(NSURL *)self->_historyDatabaseURL path];
    v9 = [v3 attributesOfItemAtPath:v10 error:0];

    v8 = [v9 objectForKeyedSubscript:v7];
  }

  return v8;
}

@end