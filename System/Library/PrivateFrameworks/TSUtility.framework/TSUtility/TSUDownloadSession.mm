@interface TSUDownloadSession
- (BOOL)hasActiveTaskWithDescription:(id)description;
- (BOOL)isActive;
- (TSUDownloadSession)init;
- (TSUDownloadSession)initWithManager:(id)manager downloadItems:(id)items description:(id)description willRequestDownload:(BOOL)download delegate:(id)delegate;
- (id)description;
- (id)waitUntilTimeout:(unint64_t)timeout;
- (void)cancel;
- (void)cancelRemainingTasksNotifyingDelegate:(BOOL)delegate;
- (void)dealloc;
- (void)didFinishInitialization;
- (void)headRequestForDownloadItem:(id)item taskProgress:(id)progress;
- (void)notifyCompletionWithQueue:(id)queue completionHandler:(id)handler;
- (void)taskWithDescription:(id)description didCompleteWithError:(id)error totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)taskWithDescription:(id)description didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)updateProgressAndNotifyDelegate;
- (void)updateTaskProgress:(id)progress withTotalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
@end

@implementation TSUDownloadSession

- (TSUDownloadSession)init
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDownloadSession init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDownloadSession.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:49 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSUDownloadSession init]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)dealloc
{
  if (!self->_didFinishInitialization)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDownloadSession dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDownloadSession.m"];
    v6 = NSStringFromSelector(sel_didFinishInitialization);
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:57 description:{@"%@ was not called.", v6}];

    dispatch_group_leave(self->_initializationGroup);
  }

  [(TSUDownloadSession *)self cancelRemainingTasksNotifyingDelegate:0];
  v7.receiver = self;
  v7.super_class = TSUDownloadSession;
  [(TSUDownloadSession *)&v7 dealloc];
}

- (BOOL)isActive
{
  dispatch_group_wait(self->_initializationGroup, 0xFFFFFFFFFFFFFFFFLL);
  v3 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (!self->_isCancelled)
  {
    accessQueue = self->_accessQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__TSUDownloadSession_isActive__block_invoke;
    v6[3] = &unk_279D664F0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(accessQueue, v6);
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

uint64_t __30__TSUDownloadSession_isActive__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)notifyCompletionWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__TSUDownloadSession_notifyCompletionWithQueue_completionHandler___block_invoke;
    aBlock[3] = &unk_279D66518;
    aBlock[4] = self;
    v14 = queueCopy;
    v15 = handlerCopy;
    v8 = _Block_copy(aBlock);
    if (dispatch_group_wait(self->_initializationGroup, 0))
    {
      initializationGroup = self->_initializationGroup;
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__TSUDownloadSession_notifyCompletionWithQueue_completionHandler___block_invoke_3;
      block[3] = &unk_279D66540;
      block[4] = self;
      v12 = v8;
      dispatch_group_notify(initializationGroup, accessQueue, block);
    }

    else
    {
      dispatch_group_notify(self->_completionGroup, self->_accessQueue, v8);
    }
  }
}

void __66__TSUDownloadSession_notifyCompletionWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TSUDownloadSession_notifyCompletionWithQueue_completionHandler___block_invoke_2;
  v6[3] = &unk_279D66388;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void __66__TSUDownloadSession_notifyCompletionWithQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  if (dispatch_group_wait(*(*(a1 + 32) + 88), 0))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 88);
    v5 = *(v3 + 48);

    dispatch_group_notify(v4, v5, v2);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (id)waitUntilTimeout:(unint64_t)timeout
{
  if (dispatch_group_wait(self->_initializationGroup, timeout) || dispatch_group_wait(self->_completionGroup, timeout))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1001 userInfo:0];
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    accessQueue = self->_accessQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__TSUDownloadSession_waitUntilTimeout___block_invoke;
    v8[3] = &unk_279D664F0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(accessQueue, v8);
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (void)cancel
{
  self->_isCancelled = 1;
  [(NSMutableDictionary *)self->_taskProgress enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7];
  initializationGroup = self->_initializationGroup;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__TSUDownloadSession_cancel__block_invoke_2;
  block[3] = &unk_279D66588;
  block[4] = self;
  dispatch_group_async(initializationGroup, accessQueue, block);
}

void __28__TSUDownloadSession_cancel__block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) count])
  {
    v3 = [*(*(a1 + 32) + 64) copy];
    [*(a1 + 32) cancelRemainingTasksNotifyingDelegate:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained cancelTasksWithDescriptions:v3 forDownloadSession:*(a1 + 32)];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TSUDownloadSession;
  v4 = [(TSUDownloadSession *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_sessionDescription];

  return v5;
}

- (TSUDownloadSession)initWithManager:(id)manager downloadItems:(id)items description:(id)description willRequestDownload:(BOOL)download delegate:(id)delegate
{
  downloadCopy = download;
  v63 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  itemsCopy = items;
  descriptionCopy = description;
  delegateCopy = delegate;
  v61.receiver = self;
  v61.super_class = TSUDownloadSession;
  v16 = [(TSUDownloadSession *)&v61 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_manager, managerCopy);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v18 = [descriptionCopy copy];
    sessionDescription = v17->_sessionDescription;
    v17->_sessionDescription = v18;

    v20 = dispatch_group_create();
    initializationGroup = v17->_initializationGroup;
    v17->_initializationGroup = v20;

    dispatch_group_enter(v17->_initializationGroup);
    v22 = dispatch_queue_create("TSUDownloadManager.Access", 0);
    accessQueue = v17->_accessQueue;
    v17->_accessQueue = v22;

    v24 = objc_opt_respondsToSelector();
    v25 = 0;
    if (v24)
    {
      v25 = [delegateCopy delegateQueueForDownloadSession:v17];
    }

    delegateQueue = v17->_delegateQueue;
    v17->_delegateQueue = v25;

    if (!v17->_delegateQueue)
    {
      objc_storeStrong(&v17->_delegateQueue, MEMORY[0x277D85CD0]);
    }

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    remainingTasks = v17->_remainingTasks;
    v17->_remainingTasks = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskProgress = v17->_taskProgress;
    v17->_taskProgress = v29;

    v31 = dispatch_group_create();
    completionGroup = v17->_completionGroup;
    v17->_completionGroup = v31;

    v33 = [[TSUBasicProgress alloc] initWithMaxValue:1.0];
    progress = v17->_progress;
    v17->_progress = v33;

    v54 = managerCopy;
    v51 = delegateCopy;
    v52 = descriptionCopy;
    if (downloadCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        downloadCopy = [delegateCopy downloadSessionShouldSendHeadRequestForEstimatedTotalBytes:v17];
      }

      else
      {
        downloadCopy = 0;
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v53 = itemsCopy;
    obj = itemsCopy;
    v35 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 0x279D65000uLL;
      v38 = *v58;
      v55 = v17;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v57 + 1) + 8 * i);
          v41 = objc_alloc_init(*(v37 + 1648));
          [v41 setIsActive:1];
          [v41 setTotalBytesExpectedToBeDownloaded:{objc_msgSend(v40, "totalBytesExpectedToBeDownloaded")}];
          if (downloadCopy && ![v41 totalBytesExpectedToBeDownloaded])
          {
            [(TSUDownloadSession *)v17 headRequestForDownloadItem:v40 taskProgress:v41];
          }

          v17->_totalBytesExpectedToBeDownloaded += [v41 totalBytesExpectedToBeDownloaded];
          downloadTaskDescription = [v40 downloadTaskDescription];
          if (!downloadTaskDescription)
          {
            +[TSUAssertionHandler currentHandler];
            v43 = v36;
            v44 = v38;
            v45 = downloadCopy;
            v47 = v46 = v37;
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDownloadSession initWithManager:downloadItems:description:willRequestDownload:delegate:]"];
            v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDownloadSession.m"];
            [v47 handleFailureInFunction:v48 file:v49 lineNumber:208 description:{@"invalid nil value for '%s'", "taskDescription"}];

            v37 = v46;
            downloadCopy = v45;
            v38 = v44;
            v36 = v43;
            v17 = v55;
          }

          [(NSMutableSet *)v17->_remainingTasks addObject:downloadTaskDescription];
          [(NSMutableDictionary *)v17->_taskProgress setObject:v41 forKeyedSubscript:downloadTaskDescription];
          dispatch_group_enter(v17->_completionGroup);
        }

        v36 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v36);
    }

    itemsCopy = v53;
    managerCopy = v54;
    delegateCopy = v51;
    descriptionCopy = v52;
  }

  return v17;
}

- (void)headRequestForDownloadItem:(id)item taskProgress:(id)progress
{
  progressCopy = progress;
  downloadURL = [item downloadURL];
  v7 = downloadURL;
  if (downloadURL && ([downloadURL isFileURL] & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v7];
    [v8 setHTTPMethod:@"HEAD"];
    [v8 setValue:@"close" forHTTPHeaderField:@"Connection"];
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__TSUDownloadSession_headRequestForDownloadItem_taskProgress___block_invoke;
    v11[3] = &unk_279D665B0;
    v12 = progressCopy;
    v10 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v8 completionHandler:v11];
  }
}

uint64_t __62__TSUDownloadSession_headRequestForDownloadItem_taskProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    v9 = v6;
    v6 = [v6 expectedContentLength];
    v7 = v9;
    if (v6)
    {
      v6 = [*(a1 + 32) setTotalBytesExpectedToBeDownloaded:{objc_msgSend(v9, "expectedContentLength")}];
      v7 = v9;
    }
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

- (void)didFinishInitialization
{
  if (self->_didFinishInitialization)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDownloadSession didFinishInitialization]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDownloadSession.m"];
    v7 = NSStringFromSelector(a2);
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:238 description:{@"%@ was invoked more than once.", v7}];
  }

  self->_didFinishInitialization = 1;
  initializationGroup = self->_initializationGroup;

  dispatch_group_leave(initializationGroup);
}

- (BOOL)hasActiveTaskWithDescription:(id)description
{
  v3 = [(NSMutableDictionary *)self->_taskProgress objectForKeyedSubscript:description];
  isActive = [v3 isActive];

  return isActive;
}

- (void)taskWithDescription:(id)description didCompleteWithError:(id)error totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  descriptionCopy = description;
  errorCopy = error;
  if (descriptionCopy)
  {
    v12 = [(NSMutableDictionary *)self->_taskProgress objectForKeyedSubscript:descriptionCopy];
    if (v12)
    {
      [(TSUDownloadSession *)self updateTaskProgress:v12 withTotalBytesWritten:written totalBytesExpectedToWrite:write];
      [v12 setIsActive:0];
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __107__TSUDownloadSession_taskWithDescription_didCompleteWithError_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
      block[3] = &unk_279D66600;
      block[4] = self;
      v15 = descriptionCopy;
      v16 = errorCopy;
      dispatch_async(accessQueue, block);
    }
  }
}

void __107__TSUDownloadSession_taskWithDescription_didCompleteWithError_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) containsObject:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 104))
    {
      objc_storeStrong((v2 + 104), *(a1 + 48));
      v2 = *(a1 + 32);
    }

    [*(v2 + 64) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 64) count])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = *(*(a1 + 32) + 104);
        v6 = *(a1 + 32);
        v7 = *(v6 + 88);
        v8 = *(v6 + 56);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __107__TSUDownloadSession_taskWithDescription_didCompleteWithError_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_2;
        v10[3] = &unk_279D665D8;
        v10[4] = v6;
        v11 = v5;
        v9 = v5;
        dispatch_group_async(v7, v8, v10);
      }
    }

    dispatch_group_leave(*(*(a1 + 32) + 88));
  }
}

void __107__TSUDownloadSession_taskWithDescription_didCompleteWithError_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained downloadSession:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
}

- (void)taskWithDescription:(id)description didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  if (description)
  {
    data = [(NSMutableDictionary *)self->_taskProgress objectForKeyedSubscript:description, data];
    [(TSUDownloadSession *)self updateTaskProgress:data withTotalBytesWritten:written totalBytesExpectedToWrite:write];
  }
}

- (void)updateTaskProgress:(id)progress withTotalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  progressCopy = progress;
  if ([progressCopy isActive])
  {
    if (written == write)
    {
      write = written;
      if ([progressCopy totalBytesExpectedToBeDownloaded] >= written)
      {
        written = [progressCopy totalBytesExpectedToBeDownloaded];
        write = written;
      }
    }

    else
    {
      v8 = progressCopy;
      if (!written)
      {
LABEL_7:
        [v8 setTotalBytesExpectedToBeDownloaded:write];
        [(TSUDownloadSession *)self updateProgressAndNotifyDelegate];
        goto LABEL_8;
      }
    }

    [progressCopy setTotalBytesDownloaded:written];
    v8 = progressCopy;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateProgressAndNotifyDelegate
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  taskProgress = self->_taskProgress;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__TSUDownloadSession_updateProgressAndNotifyDelegate__block_invoke;
  v11[3] = &unk_279D66628;
  v11[4] = &v16;
  v11[5] = &v12;
  [(NSMutableDictionary *)taskProgress enumerateKeysAndObjectsUsingBlock:v11];
  v4 = v17;
  self->_totalBytesDownloaded = v17[3];
  v5 = v13[3];
  self->_totalBytesExpectedToBeDownloaded = v5;
  if (v5 < 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4[3] / v5;
  }

  if (self->_lastProgressValue < v6)
  {
    self->_lastProgressValue = v6;
    [(TSUBasicProgress *)self->_progress setValue:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__TSUDownloadSession_updateProgressAndNotifyDelegate__block_invoke_2;
    block[3] = &unk_279D66650;
    block[4] = self;
    block[5] = &v16;
    block[6] = &v12;
    dispatch_async(delegateQueue, block);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void __53__TSUDownloadSession_updateProgressAndNotifyDelegate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v4 totalBytesDownloaded];
  v5 = [v4 totalBytesExpectedToBeDownloaded];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

void __53__TSUDownloadSession_updateProgressAndNotifyDelegate__block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained downloadSession:a1[4] didDownloadData:*(*(a1[5] + 8) + 24) totalBytesExpectedToBeDownloaded:*(*(a1[6] + 8) + 24)];
}

- (void)cancelRemainingTasksNotifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v5 = [(NSMutableSet *)self->_remainingTasks count];
  if (v5)
  {
    v6 = v5;
    if (self->_error)
    {
      if (delegateCopy)
      {
LABEL_6:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = self->_error;
          completionGroup = self->_completionGroup;
          delegateQueue = self->_delegateQueue;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __60__TSUDownloadSession_cancelRemainingTasksNotifyingDelegate___block_invoke;
          v16[3] = &unk_279D665D8;
          v16[4] = self;
          v17 = v11;
          v14 = v11;
          dispatch_group_async(completionGroup, delegateQueue, v16);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
      error = self->_error;
      self->_error = v7;

      if (delegateCopy)
      {
        goto LABEL_6;
      }
    }

    do
    {
LABEL_8:
      dispatch_group_leave(self->_completionGroup);
      --v6;
    }

    while (v6);
  }

  remainingTasks = self->_remainingTasks;
  self->_remainingTasks = 0;
}

void __60__TSUDownloadSession_cancelRemainingTasksNotifyingDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained downloadSession:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
}

@end