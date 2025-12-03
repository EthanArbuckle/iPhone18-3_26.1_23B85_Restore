@interface SSDownloadManagerBookShim
- (SSDownloadManagerBookShim)initWithManagerOptions:(id)options;
- (id)__book_downloadsForStati:(id)stati overrideFinished:(BOOL)finished overrideFailed:(BOOL)failed;
- (id)__book_getAllDownloads;
- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds;
- (void)__book_cancelDownloads:(id)downloads completionBlock:(id)block;
- (void)__book_dispatchBlock:(id)block withError:(id)error;
- (void)__book_filterDownloads:(id)downloads withResult:(id)result;
- (void)__book_pauseDownloads:(id)downloads completionBlock:(id)block;
- (void)__book_resumeDownloads:(id)downloads completionBlock:(id)block;
- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block;
- (void)cancelDownloads:(id)downloads completionBlock:(id)block;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)moveDownload:(id)download afterDownload:(id)afterDownload completionBlock:(id)block;
- (void)moveDownload:(id)download beforeDownload:(id)beforeDownload completionBlock:(id)block;
- (void)restartDownloads:(id)downloads completionBlock:(id)block;
- (void)resumeDownloads:(id)downloads completionBlock:(id)block;
@end

@implementation SSDownloadManagerBookShim

- (SSDownloadManagerBookShim)initWithManagerOptions:(id)options
{
  v48 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    v10 = v9;
    v44 = 138543618;
    v45 = v9;
    v46 = 2114;
    v47 = objc_opt_class();
    v11 = v47;
    LODWORD(v42) = 22;
    v41 = &v44;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v44, v42}];
    free(v12);
    SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
  }

LABEL_12:
  v43.receiver = self;
  v43.super_class = SSDownloadManagerBookShim;
  v19 = [(SSDownloadManagerAppShim *)&v43 initWithManagerOptions:optionsCopy];

  if (v19)
  {
    v20 = SSVBookAssetDaemonFramework();
    v21 = SSVWeakLinkedClassForString(&cfstr_Bldownloadqueu.isa, v20);
    if (v21)
    {
      sharedInstance = [v21 sharedInstance];
      downloadQueue = v19->_downloadQueue;
      v19->_downloadQueue = sharedInstance;

      v24 = v19->_downloadQueue;
      if (v24)
      {
        [(SSBookDownloadQueue *)v24 addObserver:v19];
        return v19;
      }

      v25 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v30 = shouldLog2 | 2;
      }

      else
      {
        v30 = shouldLog2;
      }

      oSLogObject2 = [v25 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v30 &= 2u;
      }

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v25 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v27 = shouldLog3 | 2;
      }

      else
      {
        v27 = shouldLog3;
      }

      oSLogObject2 = [v25 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v27 &= 2u;
      }

      if (!v27)
      {
        goto LABEL_35;
      }
    }

    v31 = objc_opt_class();
    v44 = 138543362;
    v45 = v31;
    v32 = v31;
    LODWORD(v42) = 12;
    v33 = _os_log_send_and_compose_impl();

    if (!v33)
    {
LABEL_36:

      return v19;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v44, v42}];
    free(v33);
    SSFileLog(v25, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject2);
LABEL_35:

    goto LABEL_36;
  }

  return v19;
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  v42 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v38 = 138543618;
    v39 = objc_opt_class();
    v40 = 2112;
    v41 = changeCopy;
    v10 = v39;
    LODWORD(v34) = 22;
    v33 = &v38;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v38, v34}];
    free(v11);
    SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
  }

LABEL_12:
  v18 = [(SSDownloadManagerBookShim *)self __book_downloadsForStati:changeCopy overrideFinished:0 overrideFailed:0];
  v19 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  oSLogObject2 = [v19 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v23 = objc_opt_class();
    v38 = 138543618;
    v39 = v23;
    v40 = 2112;
    v41 = v18;
    v24 = v23;
    LODWORD(v34) = 22;
    v25 = _os_log_send_and_compose_impl();

    if (!v25)
    {
      goto LABEL_23;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v38, v34}];
    free(v25);
    SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, oSLogObject2);
  }

LABEL_23:
  if ([v18 count])
  {
    accessQueue = self->super.super._accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SSDownloadManagerBookShim_downloadQueue_downloadStatesDidChange___block_invoke;
    block[3] = &unk_1E84AC028;
    v36 = v18;
    selfCopy = self;
    dispatch_async(accessQueue, block);
  }
}

void __67__SSDownloadManagerBookShim_downloadQueue_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) _resetAllDownloads];
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(*(a1 + 40) + 80);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v2 addObject:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    v9 = *(*(a1 + 40) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SSDownloadManagerBookShim_downloadQueue_downloadStatesDidChange___block_invoke_2;
    block[3] = &unk_1E84AC078;
    v14 = v2;
    v12 = *(a1 + 32);
    v10 = v12.i64[0];
    v15 = vextq_s8(v12, v12, 8uLL);
    v11 = v2;
    dispatch_async(v9, block);
  }
}

void __67__SSDownloadManagerBookShim_downloadQueue_downloadStatesDidChange___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 48) copy];
        [v7 downloadManager:v8 downloadStatesDidChange:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  v43 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v8 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v39 = 138543618;
    v40 = objc_opt_class();
    v41 = 2112;
    v42 = statesCopy;
    v12 = v40;
    LODWORD(v36) = 22;
    v35 = &v39;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v39, v36}];
    free(v13);
    SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
  }

LABEL_12:
  v20 = [(SSDownloadManagerBookShim *)self __book_downloadsForStati:statesCopy overrideFinished:error == 0 overrideFailed:error != 0, v35];
  v21 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog2 | 2;
  }

  else
  {
    v23 = shouldLog2;
  }

  oSLogObject2 = [v21 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v23 &= 2u;
  }

  if (v23)
  {
    v25 = objc_opt_class();
    v39 = 138543618;
    v40 = v25;
    v41 = 2112;
    v42 = v20;
    v26 = v25;
    LODWORD(v36) = 22;
    v27 = _os_log_send_and_compose_impl();

    if (!v27)
    {
      goto LABEL_23;
    }

    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v39, v36}];
    free(v27);
    SSFileLog(v21, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject2);
  }

LABEL_23:
  if ([v20 count])
  {
    accessQueue = self->super.super._accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__SSDownloadManagerBookShim_downloadQueue_downloadStates_didCompleteWithError___block_invoke;
    block[3] = &unk_1E84AC028;
    block[4] = self;
    v38 = v20;
    dispatch_async(accessQueue, block);
  }
}

void __79__SSDownloadManagerBookShim_downloadQueue_downloadStates_didCompleteWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetAllDownloads];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v2 _sendDownloadsChanged:v3];
}

- (void)__book_dispatchBlock:(id)block withError:(id)error
{
  blockCopy = block;
  errorCopy = error;
  if (blockCopy)
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__SSDownloadManagerBookShim___book_dispatchBlock_withError___block_invoke;
    v8[3] = &unk_1E84AC338;
    v10 = blockCopy;
    v9 = errorCopy;
    dispatch_async(v7, v8);
  }
}

- (void)__book_filterDownloads:(id)downloads withResult:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  resultCopy = result;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = downloadsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v7;
        }

        else
        {
          v15 = v8;
        }

        [v15 addObject:{v14, v18}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v7 copy];
  v17 = [v8 copy];
  resultCopy[2](resultCopy, v16, v17);
}

- (void)cancelDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SSDownloadManagerBookShim_cancelDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerBookShim *)self __book_filterDownloads:downloads withResult:v8];
}

void __61__SSDownloadManagerBookShim_cancelDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SSDownloadManagerBookShim_cancelDownloads_completionBlock___block_invoke_2;
    v9[3] = &unk_1E84B32B8;
    objc_copyWeak(&v12, &location);
    v11 = *(a1 + 40);
    v10 = v5;
    v8.receiver = v7;
    v8.super_class = SSDownloadManagerBookShim;
    objc_msgSendSuper2(&v8, sel_cancelDownloads_completionBlock_, v6, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __book_cancelDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __61__SSDownloadManagerBookShim_cancelDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __book_dispatchBlock:*(a1 + 40) withError:v5];
  }

  else
  {
    [WeakRetained __book_cancelDownloads:*(a1 + 32) completionBlock:*(a1 + 40)];
  }
}

- (void)moveDownload:(id)download afterDownload:(id)afterDownload completionBlock:(id)block
{
  downloadCopy = download;
  afterDownloadCopy = afterDownload;
  blockCopy = block;
  v11 = [downloadCopy valueForProperty:@"1"];
  IsBookToShimKind = SSDownloadKindIsBookToShimKind(v11);

  v13 = [afterDownloadCopy valueForProperty:@"1"];
  v14 = SSDownloadKindIsBookToShimKind(v13);

  if ((IsBookToShimKind & 1) == 0 && (v14 & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = SSDownloadManagerBookShim;
    [(SSDownloadManagerAppShim *)&v15 moveDownload:downloadCopy afterDownload:afterDownloadCopy completionBlock:blockCopy];
  }
}

- (void)moveDownload:(id)download beforeDownload:(id)beforeDownload completionBlock:(id)block
{
  downloadCopy = download;
  beforeDownloadCopy = beforeDownload;
  blockCopy = block;
  v11 = [downloadCopy valueForProperty:@"1"];
  IsBookToShimKind = SSDownloadKindIsBookToShimKind(v11);

  v13 = [beforeDownloadCopy valueForProperty:@"1"];
  v14 = SSDownloadKindIsBookToShimKind(v13);

  if ((IsBookToShimKind & 1) == 0 && (v14 & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = SSDownloadManagerBookShim;
    [(SSDownloadManagerAppShim *)&v15 moveDownload:downloadCopy beforeDownload:beforeDownloadCopy completionBlock:blockCopy];
  }
}

- (void)resumeDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SSDownloadManagerBookShim_resumeDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerBookShim *)self __book_filterDownloads:downloads withResult:v8];
}

void __61__SSDownloadManagerBookShim_resumeDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SSDownloadManagerBookShim_resumeDownloads_completionBlock___block_invoke_2;
    v9[3] = &unk_1E84B32B8;
    objc_copyWeak(&v12, &location);
    v11 = *(a1 + 40);
    v10 = v5;
    v8.receiver = v7;
    v8.super_class = SSDownloadManagerBookShim;
    objc_msgSendSuper2(&v8, sel_resumeDownloads_completionBlock_, v6, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __book_resumeDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __61__SSDownloadManagerBookShim_resumeDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __book_dispatchBlock:*(a1 + 40) withError:v5];
  }

  else
  {
    [WeakRetained __book_resumeDownloads:*(a1 + 32) completionBlock:*(a1 + 40)];
  }
}

- (void)restartDownloads:(id)downloads completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SSDownloadManagerBookShim_restartDownloads_completionBlock___block_invoke;
  v8[3] = &unk_1E84B32E0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SSDownloadManagerBookShim *)self __book_filterDownloads:downloads withResult:v8];
}

void __62__SSDownloadManagerBookShim_restartDownloads_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__SSDownloadManagerBookShim_restartDownloads_completionBlock___block_invoke_2;
    v9[3] = &unk_1E84AE478;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    v8.receiver = v7;
    v8.super_class = SSDownloadManagerBookShim;
    objc_msgSendSuper2(&v8, sel_restartDownloads_completionBlock_, v6, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __62__SSDownloadManagerBookShim_restartDownloads_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained __book_dispatchBlock:*(a1 + 32) withError:v3];
}

- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds
{
  v8.receiver = self;
  v8.super_class = SSDownloadManagerBookShim;
  v5 = [(SSDownloadManagerAppShim *)&v8 _copyDownloadsForMessage:message downloadIDs:ds];
  __book_getAllDownloads = [(SSDownloadManagerBookShim *)self __book_getAllDownloads];
  if ([__book_getAllDownloads count])
  {
    [v5 addObjectsFromArray:__book_getAllDownloads];
  }

  return v5;
}

- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__SSDownloadManagerBookShim__pauseDownloads_forced_completionBlock___block_invoke;
  v10[3] = &unk_1E84B3308;
  v10[4] = self;
  v11 = blockCopy;
  forcedCopy = forced;
  v9 = blockCopy;
  [(SSDownloadManagerBookShim *)self __book_filterDownloads:downloads withResult:v10];
}

void __68__SSDownloadManagerBookShim__pauseDownloads_forced_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__SSDownloadManagerBookShim__pauseDownloads_forced_completionBlock___block_invoke_2;
    v10[3] = &unk_1E84B32B8;
    objc_copyWeak(&v13, &location);
    v12 = *(a1 + 40);
    v11 = v5;
    v9.receiver = v7;
    v9.super_class = SSDownloadManagerBookShim;
    objc_msgSendSuper2(&v9, sel__pauseDownloads_forced_completionBlock_, v6, v8, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) __book_pauseDownloads:v5 completionBlock:*(a1 + 40)];
  }
}

void __68__SSDownloadManagerBookShim__pauseDownloads_forced_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained __book_dispatchBlock:*(a1 + 40) withError:v5];
  }

  else
  {
    [WeakRetained __book_pauseDownloads:*(a1 + 32) completionBlock:*(a1 + 40)];
  }
}

- (void)__book_cancelDownloads:(id)downloads completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = downloadsCopy;
    obj = downloadsCopy;
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          downloadQueue = self->_downloadQueue;
          downloadID = [*(*(&v18 + 1) + 8 * v11) downloadID];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __68__SSDownloadManagerBookShim___book_cancelDownloads_completionBlock___block_invoke;
          v16[3] = &unk_1E84B3330;
          v16[4] = self;
          v17 = blockCopy;
          [(SSBookDownloadQueue *)downloadQueue cancelDownloadWithID:downloadID withCompletion:v16];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    downloadsCopy = v14;
  }

  else
  {
    [(SSDownloadManagerBookShim *)self __book_dispatchBlock:blockCopy withError:0];
  }
}

- (void)__book_pauseDownloads:(id)downloads completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = downloadsCopy;
    obj = downloadsCopy;
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          downloadQueue = self->_downloadQueue;
          downloadID = [*(*(&v18 + 1) + 8 * v11) downloadID];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __67__SSDownloadManagerBookShim___book_pauseDownloads_completionBlock___block_invoke;
          v16[3] = &unk_1E84B3330;
          v16[4] = self;
          v17 = blockCopy;
          [(SSBookDownloadQueue *)downloadQueue pauseDownloadWithID:downloadID withCompletion:v16];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    downloadsCopy = v14;
  }

  else
  {
    [(SSDownloadManagerBookShim *)self __book_dispatchBlock:blockCopy withError:0];
  }
}

- (void)__book_resumeDownloads:(id)downloads completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if ([downloadsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = downloadsCopy;
    obj = downloadsCopy;
    v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obj);
          }

          downloadQueue = self->_downloadQueue;
          downloadID = [*(*(&v18 + 1) + 8 * v11) downloadID];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __68__SSDownloadManagerBookShim___book_resumeDownloads_completionBlock___block_invoke;
          v16[3] = &unk_1E84B3330;
          v16[4] = self;
          v17 = blockCopy;
          [(SSBookDownloadQueue *)downloadQueue resumeDownloadWithID:downloadID withCompletion:v16];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    downloadsCopy = v14;
  }

  else
  {
    [(SSDownloadManagerBookShim *)self __book_dispatchBlock:blockCopy withError:0];
  }
}

- (id)__book_getAllDownloads
{
  downloads = [(SSBookDownloadQueue *)self->_downloadQueue downloads];
  v4 = [(SSDownloadManagerBookShim *)self __book_downloadsForStati:downloads overrideFinished:0 overrideFailed:0];

  return v4;
}

- (id)__book_downloadsForStati:(id)stati overrideFinished:(BOOL)finished overrideFailed:(BOOL)failed
{
  failedCopy = failed;
  finishedCopy = finished;
  v28 = *MEMORY[0x1E69E9840];
  statiCopy = stati;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(statiCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = statiCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = finishedCopy || failedCopy;
    if (finishedCopy)
    {
      v14 = SSDownloadPhaseFinished;
    }

    else
    {
      v14 = &SSDownloadPhaseFailed;
    }

    v15 = *v14;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [SSBookDownload alloc];
        v19 = [(SSBookDownload *)v18 initWithDownloadStatus:v17, v23];
        v20 = v19;
        if (v19)
        {
          if (v13)
          {
            [(SSBookDownload *)v19 setDownloadPhaseIdentifierOverride:v15];
          }

          [v8 addObject:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = [v8 copy];

  return v21;
}

@end