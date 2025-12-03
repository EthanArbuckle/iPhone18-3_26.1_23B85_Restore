@interface QLExtensionHostContextThumbnailOperation
- (QLExtensionHostContextThumbnailOperation)initWithAppex:(id)appex request:(id)request completionHandler:(id)handler;
- (void)finish;
- (void)finishWithReply:(id)reply error:(id)error;
- (void)generate;
- (void)main;
@end

@implementation QLExtensionHostContextThumbnailOperation

- (QLExtensionHostContextThumbnailOperation)initWithAppex:(id)appex request:(id)request completionHandler:(id)handler
{
  appexCopy = appex;
  requestCopy = request;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = QLExtensionHostContextThumbnailOperation;
  v12 = [(QLExtensionHostContextThumbnailOperation *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 32, appex);
    objc_storeStrong(&v13->_completionHandler, request);
    v14 = _Block_copy(handlerCopy);
    connection = v13->_connection;
    v13->_connection = v14;

    *(&v13->super._executing + 3) = 0;
    v16 = objc_opt_new();
    request = v13->_request;
    v13->_request = v16;

    v18 = objc_opt_new();
    coordinator = v13->_coordinator;
    v13->_coordinator = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.quicklook.ExtensionHostContextThumbnailOperation", v20);

    [(NSFileCoordinator *)v13->_coordinator setUnderlyingQueue:v21];
    v22 = v13;
  }

  return v13;
}

- (void)main
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([(QLExtensionHostContextThumbnailOperation *)self isCancelled])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(QLExtensionHostContextThumbnailOperation *)self finishWithReply:0 error:0];
  }

  else
  {
    item = [self->_completionHandler item];
    [item startAccessingIfNeeded];

    item2 = [self->_completionHandler item];
    urlWrapper = [item2 urlWrapper];

    if (urlWrapper)
    {
      v7 = MEMORY[0x277CCA9E0];
      item3 = [self->_completionHandler item];
      fileURL = [item3 fileURL];
      v10 = [v7 readingIntentWithURL:fileURL options:1];

      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__QLExtensionHostContextThumbnailOperation_main__block_invoke;
      block[3] = &unk_279ADD410;
      objc_copyWeak(&v25, &location);
      v11 = dispatch_block_create(0, block);
      [(QLExtensionHostContextThumbnailOperation *)self setTimeoutBlock:v11];

      v12 = dispatch_time(0, 20000000000);
      coordinationQueue = [(QLExtensionHostContextThumbnailOperation *)self coordinationQueue];
      underlyingQueue = [coordinationQueue underlyingQueue];
      timeoutBlock = [(QLExtensionHostContextThumbnailOperation *)self timeoutBlock];
      dispatch_after(v12, underlyingQueue, timeoutBlock);

      coordinator = [(QLExtensionHostContextThumbnailOperation *)self coordinator];
      v27[0] = v10;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      coordinationQueue2 = [(QLExtensionHostContextThumbnailOperation *)self coordinationQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_7;
      v22[3] = &unk_279ADD438;
      v22[4] = self;
      v19 = v10;
      v23 = v19;
      [coordinator coordinateAccessWithIntents:v17 queue:coordinationQueue2 byAccessor:v22];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);

      v20 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v21 = *MEMORY[0x277D85DE8];

      [(QLExtensionHostContextThumbnailOperation *)self generate];
    }
  }
}

void __48__QLExtensionHostContextThumbnailOperation_main__block_invoke(uint64_t a1)
{
  v2 = _log_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained coordinator];
  [v4 cancel];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLExtensionHostContextThumbnailOperation" code:2 userInfo:0];
  [v5 finishWithReply:0 error:v6];
}

void __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_7(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) timeoutBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) timeoutBlock];
    dispatch_block_cancel(v4);
  }

  v5 = *(a1 + 32);
  if (v10)
  {
    [v5 finishWithReply:0 error:v10];
  }

  else
  {
    v6 = [v5 coordinator];
    v7 = [v6 retainAccess];
    [*(a1 + 32) setFileAccess:v7];

    v8 = [*(a1 + 40) URL];
    LODWORD(v7) = [v8 startAccessingSecurityScopedResource];

    if (v7)
    {
      v9 = [*(a1 + 40) URL];
      [*(a1 + 32) setAccessedURL:v9];
    }

    [*(a1 + 32) generate];
  }
}

- (void)generate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "Failed to acquire assertion : %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke(uint64_t a1)
{
  v2 = _log_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained appex];
  v5 = [v4 supportsConcurrentRequests];

  if ((v5 & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 process];
    [v7 invalidate];

    v8 = _log_4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_cold_2((a1 + 32));
    }

    v9 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"generation timing out"];
    v10 = objc_alloc(MEMORY[0x277D47018]);
    v11 = MEMORY[0x277D46FA0];
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 process];
    v14 = [v11 predicateMatchingIdentifier:v13];
    v15 = [v10 initWithPredicate:v14 context:v9];

    [v15 execute:0];
  }

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLExtensionHostContextThumbnailOperation" code:1 userInfo:0];
  [v16 finishWithReply:0 error:v17];
}

void __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) coordinationQueue];
  v5 = [v4 underlyingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_2;
  v7[3] = &unk_279ADD200;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timeoutBlock];

  if (v7)
  {
    v8 = [*(a1 + 32) timeoutBlock];
    dispatch_block_cancel(v8);
  }

  v9 = [*(a1 + 32) assertion];
  [v9 invalidate];

  v10 = _log_4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(*(a1 + 32) + 288);
    v12 = [v5 debugDescription];
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2615D3000, v10, OS_LOG_TYPE_INFO, "Thumbnail extension generated thumbnail for %@: reply = %@, error = %@", &v14, 0x20u);
  }

  [*(a1 + 32) finishWithReply:v5 error:v6];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)finishWithReply:(id)reply error:(id)error
{
  replyCopy = reply;
  errorCopy = error;
  os_unfair_lock_lock((&self->super._executing + 3));
  connection = self->_connection;
  if (connection)
  {
    (connection[2].super.isa)(connection, replyCopy, errorCopy);
  }

  [(QLExtensionHostContextThumbnailOperation *)self finish];
  os_unfair_lock_unlock((&self->super._executing + 3));
}

- (void)finish
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _log_4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    completionHandler = self->_completionHandler;
    *buf = 138412290;
    v17 = completionHandler;
    _os_log_impl(&dword_2615D3000, v3, OS_LOG_TYPE_INFO, "Operation did finish for %@", buf, 0xCu);
  }

  accessedURL = self->_accessedURL;
  if (accessedURL)
  {
    dispatch_block_cancel(accessedURL);
  }

  if (self->_coordinationQueue)
  {
    [(QLFileThumbnailRequest *)self->_request releaseAccess:?];
    coordinationQueue = self->_coordinationQueue;
    self->_coordinationQueue = 0;
  }

  [(NSFileCoordinationRetainedAccess *)self->_fileAccess stopAccessingSecurityScopedResource];
  fileAccess = self->_fileAccess;
  self->_fileAccess = 0;

  item = [self->_completionHandler item];
  [item cleanup];

  v9 = self->_accessedURL;
  self->_accessedURL = 0;

  connection = self->_connection;
  self->_connection = 0;

  [(_EXExtensionProcess *)self->_process invalidate];
  process = self->_process;
  self->_process = 0;

  appex = self->_appex;
  self->_appex = 0;

  [self->_timeoutBlock invalidate];
  timeoutBlock = self->_timeoutBlock;
  self->_timeoutBlock = 0;

  v15.receiver = self;
  v15.super_class = QLExtensionHostContextThumbnailOperation;
  [(QLAsynchronousOperation *)&v15 finish];
  v14 = *MEMORY[0x277D85DE8];
}

void __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained request];
  v9 = [v2 item];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained request];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void __52__QLExtensionHostContextThumbnailOperation_generate__block_invoke_cold_2(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained process];
  [v2 rbs_pid];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

@end