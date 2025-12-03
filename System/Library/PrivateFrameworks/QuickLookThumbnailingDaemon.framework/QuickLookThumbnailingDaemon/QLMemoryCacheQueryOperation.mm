@interface QLMemoryCacheQueryOperation
- (QLMemoryCacheQueryOperation)initWithThumbnailRequest:(id)request cacheThread:(id)thread;
- (void)cancel;
- (void)main;
@end

@implementation QLMemoryCacheQueryOperation

- (void)main
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__QLMemoryCacheQueryOperation_main__block_invoke;
  block[3] = &unk_279ADD578;
  block[4] = self;
  block[5] = &v26;
  dispatch_sync(queue, block);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [v27[5] activity];
  os_activity_scope_enter(activity, &state);

  v5 = v27[5];
  if (v5)
  {
    cancelled = [v5 cancelled];
    cacheThread = self->_cacheThread;
    if (cancelled)
    {
      [(_QLCacheThread *)cacheThread _thumbnailHasBeenCancelled:v27[5]];
    }

    else
    {
      memoryCache = [(_QLCacheThread *)cacheThread memoryCache];
      v9 = [memoryCache sendThumbnailDataForThumbnailRequest:v27[5] withCacheThread:self->_cacheThread];

      if (v9)
      {
        v10 = v27[5];
        v11 = MEMORY[0x277CDAB78];
        v12 = *(MEMORY[0x277CDAB78] + 16);
        if (!v12)
        {
          QLTInitLogging();
          v12 = *(v11 + 16);
        }

        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          request = [v27[5] request];
          fileIdentifier = [request fileIdentifier];
          *buf = 138412290;
          v33 = fileIdentifier;
          _os_log_impl(&dword_2615D3000, v13, OS_LOG_TYPE_INFO, "Did find thumbnail in memory cache %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = MEMORY[0x277CDAB78];
        v17 = *(MEMORY[0x277CDAB78] + 16);
        if (!v17)
        {
          QLTInitLogging();
          v17 = *(v16 + 16);
        }

        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          request2 = [v27[5] request];
          fileIdentifier2 = [request2 fileIdentifier];
          *buf = 138412290;
          v33 = fileIdentifier2;
          _os_log_impl(&dword_2615D3000, v18, OS_LOG_TYPE_INFO, "No thumbnail found in memory cache %@", buf, 0xCu);
        }

        [(_QLCacheThread *)self->_cacheThread _addThumbnailRequestIntoDiskCacheQueryQueue:v27[5]];
      }
    }
  }

  serverThread = [(_QLCacheThread *)self->_cacheThread serverThread];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __35__QLMemoryCacheQueryOperation_main__block_invoke_2;
  v23[3] = &unk_279ADD0F8;
  v23[4] = self;
  [serverThread perform:v23];

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v26, 8);

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __35__QLMemoryCacheQueryOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setGeneratorRequest:0];
}

- (QLMemoryCacheQueryOperation)initWithThumbnailRequest:(id)request cacheThread:(id)thread
{
  requestCopy = request;
  threadCopy = thread;
  v9 = [(QLMemoryCacheQueryOperation *)self init];
  if (v9)
  {
    v10 = dispatch_queue_create("quicklookd.memorycacheoperation", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_generatorRequest, request);
    objc_storeStrong(&v9->_cacheThread, thread);
  }

  return v9;
}

- (void)cancel
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__QLMemoryCacheQueryOperation_cancel__block_invoke;
  block[3] = &unk_279ADD578;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);
  if (v15[5])
  {
    v4 = MEMORY[0x277CDAB78];
    v5 = *(MEMORY[0x277CDAB78] + 16);
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 16);
    }

    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      request = [v15[5] request];
      fileIdentifier = [request fileIdentifier];
      *buf = 138412290;
      v21 = fileIdentifier;
      _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "Memory cache request cancel, sending the thumbnail request to the disk cache (%@)", buf, 0xCu);
    }

    [(_QLCacheThread *)self->_cacheThread _dispatchThumbnailRequestInServerThread:v15[5]];
  }

  v12.receiver = self;
  v12.super_class = QLMemoryCacheQueryOperation;
  [(QLMemoryCacheQueryOperation *)&v12 cancel];
  serverThread = [(_QLCacheThread *)self->_cacheThread serverThread];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__QLMemoryCacheQueryOperation_cancel__block_invoke_3;
  v11[3] = &unk_279ADD0F8;
  v11[4] = self;
  [serverThread perform:v11];

  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __37__QLMemoryCacheQueryOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generatorRequest];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 setGeneratorRequest:0];
}

@end