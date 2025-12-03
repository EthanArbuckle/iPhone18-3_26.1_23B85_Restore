@interface WBSHistoryDatabaseAccessBroker
- (WBSHistoryDatabaseAccessBroker)initWithHistoryDatabaseURL:(id)l;
- (id)_openDatabaseWithAccessType:(int64_t)type onQueue:(id)queue error:(id *)error;
- (id)databaseLastModifiedDate;
- (void)_requestAccessType:(int64_t)type onQueue:(id)queue completionHandler:(id)handler;
- (void)_requestReadOnlyAccessOnQueue:(id)queue completionHandler:(id)handler;
- (void)_requestReadWriteAccessOnQueue:(id)queue completionHandler:(id)handler;
- (void)requestAccessType:(int64_t)type onQueue:(id)queue completionHandler:(id)handler;
- (void)requestAccessType:(int64_t)type onQueue:(id)queue completionHandlerWithInvalidationHandler:(id)handler;
@end

@implementation WBSHistoryDatabaseAccessBroker

- (WBSHistoryDatabaseAccessBroker)initWithHistoryDatabaseURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = WBSHistoryDatabaseAccessBroker;
  v5 = [(WBSHistoryDatabaseAccessBroker *)&v12 init];
  if (v5)
  {
    v6 = [lCopy copy];
    historyDatabaseURL = v5->_historyDatabaseURL;
    v5->_historyDatabaseURL = v6;

    v8 = dispatch_queue_create("com.apple.SafariShared.History", 0);
    writeRequestQueue = v5->_writeRequestQueue;
    v5->_writeRequestQueue = v8;

    v10 = v5;
  }

  return v5;
}

- (void)requestAccessType:(int64_t)type onQueue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WBSHistoryDatabaseAccessBroker_requestAccessType_onQueue_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC6FD8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(WBSHistoryDatabaseAccessBroker *)self requestAccessType:type onQueue:queue completionHandlerWithInvalidationHandler:v10];
}

void __78__WBSHistoryDatabaseAccessBroker_requestAccessType_onQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  (*(*(a1 + 32) + 16))();
  v8[2](v8);
}

- (void)requestAccessType:(int64_t)type onQueue:(id)queue completionHandlerWithInvalidationHandler:(id)handler
{
  flagsa = queue;
  handlerCopy = handler;
  v9 = flagsa;
  v10 = handlerCopy;
  if (!flagsa)
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  flags = v9;
  if ((type - 2) < 2)
  {
    [(WBSHistoryDatabaseAccessBroker *)self _requestReadWriteAccessOnQueue:v9 completionHandler:v10];
  }

  else if (type <= 1)
  {
    [(WBSHistoryDatabaseAccessBroker *)self _requestReadOnlyAccessOnQueue:v9 completionHandler:v10];
  }
}

- (void)_requestReadOnlyAccessOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSHistoryDatabaseAccessBroker__requestReadOnlyAccessOnQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v11 = queueCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = queueCopy;
  dispatch_async(v9, block);
}

- (void)_requestReadWriteAccessOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  writeRequestQueue = self->_writeRequestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSHistoryDatabaseAccessBroker__requestReadWriteAccessOnQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  v12 = queueCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
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

- (void)_requestAccessType:(int64_t)type onQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v14 = 0;
  v10 = [(WBSHistoryDatabaseAccessBroker *)self _openDatabaseWithAccessType:type onQueue:queueCopy error:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__WBSHistoryDatabaseAccessBroker__requestAccessType_onQueue_completionHandler___block_invoke;
    v12[3] = &unk_1E7FB6F80;
    v13 = v10;
    (*(handlerCopy + 2))(handlerCopy, v13, 0, v12);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v11, &__block_literal_global_62);
  }
}

- (id)_openDatabaseWithAccessType:(int64_t)type onQueue:(id)queue error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v9 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_historyDatabaseURL queue:queueCopy];
  if ([v9 openWithAccessType:type error:error])
  {
    v10 = SafariShared::WBSSQLiteDatabaseFetch<>(v9, @"PRAGMA user_version");
    nextObject = [v10 nextObject];
    v12 = [nextObject intAtIndex:0];

    statement = [v10 statement];
    [statement invalidate];

    if (v12 == 16)
    {
      v14 = 0;
      v15 = v9;
    }

    else
    {
      if (error)
      {
        v16 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v20[0] = @"History database does not have the correct schema version. Run Safari once to upgrade it.";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        *error = [v16 errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v17];
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E69C89E8] writeAheadLogURLForDatabaseURL:self->_historyDatabaseURL];
  path = [v4 path];
  v6 = [defaultManager attributesOfItemAtPath:path error:0];

  v7 = *MEMORY[0x1E696A350];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    path2 = [(NSURL *)self->_historyDatabaseURL path];
    v9 = [defaultManager attributesOfItemAtPath:path2 error:0];

    v8 = [v9 objectForKeyedSubscript:v7];
  }

  return v8;
}

@end