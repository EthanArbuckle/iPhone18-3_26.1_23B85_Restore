@interface SSDownloadQueue
- (BOOL)addDownload:(id)a3;
- (BOOL)cancelDownload:(id)a3;
- (NSSet)downloadKinds;
- (SSDownloadManager)downloadManager;
- (SSDownloadQueue)initWithDownloadKinds:(id)a3;
- (id)_initWithDownloadManagerOptions:(id)a3;
- (id)downloadForItemIdentifier:(unint64_t)a3;
- (void)_handleDownloadsDidChange:(id)a3;
- (void)_handleDownloadsRemoved:(id)a3;
- (void)_messageObserversWithFunction:(void *)a3 context:(void *)a4;
- (void)_sendDownloadStatusChangedAtIndex:(int64_t)a3;
- (void)_sendQueueChangedWithRemovals:(id)a3;
- (void)_sendQueueNetworkUsageChanged;
- (void)_sendQueuePreOrdersChanged;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4;
- (void)downloadManagerDownloadsDidChange:(id)a3;
- (void)downloadManagerNetworkUsageDidChange:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SSDownloadQueue

- (id)_initWithDownloadManagerOptions:(id)a3
{
  v10.receiver = self;
  v10.super_class = SSDownloadQueue;
  v4 = [(SSDownloadQueue *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_autoFinishDownloads = 1;
    v6 = [[SSDownloadManager alloc] initWithManagerOptions:a3];
    v5->_downloadManager = v6;
    [(SSDownloadManager *)v6 addObserver:v5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSDownloadQueue__initWithDownloadManagerOptions___block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = v5;
    dispatch_after(0, MEMORY[0x1E69E96A0], block);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, __DaemonLaunchNotification, @"com.apple.iTunesStore.daemon.launched", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v5;
}

- (SSDownloadQueue)initWithDownloadKinds:(id)a3
{
  if ([a3 count])
  {
    v5 = objc_alloc_init(SSDownloadManagerOptions);
    -[SSDownloadManagerOptions setDownloadKinds:](v5, "setDownloadKinds:", [a3 allObjects]);
    v6 = objc_opt_class();
    [(SSDownloadManagerOptions *)v5 setPersistenceIdentifier:NSStringFromClass(v6)];
    -[SSDownloadManagerOptions setPrefetchedDownloadExternalProperties:](v5, "setPrefetchedDownloadExternalProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:{@"0", @"1", @"4", @"9", @"A", 0}]);
    -[SSDownloadManagerOptions setPrefetchedDownloadProperties:](v5, "setPrefetchedDownloadProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:{@"K", @"I", @"J", @"M", @"P", @"9", 0}]);
    v7 = [(SSDownloadQueue *)self _initWithDownloadManagerOptions:v5];

    return v7;
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A download queue must have download kinds"];
    return 0;
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iTunesStore.daemon.launched", 0);
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];

  observers = self->_observers;
  if (observers)
  {
    CFRelease(observers);
  }

  v5.receiver = self;
  v5.super_class = SSDownloadQueue;
  [(SSDownloadQueue *)&v5 dealloc];
}

- (BOOL)addDownload:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = dispatch_semaphore_create(0);
  downloadManager = self->_downloadManager;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__SSDownloadQueue_addDownload___block_invoke;
  v9[3] = &unk_1E84AC430;
  v9[4] = v5;
  v9[5] = &v10;
  [(SSDownloadManager *)downloadManager addDownloads:v7 completionBlock:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
  LOBYTE(v5) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (void)addObserver:(id)a3
{
  observers = self->_observers;
  if (!observers)
  {
    observers = CFSetCreateMutable(0, 0, 0);
    self->_observers = observers;
  }

  CFSetAddValue(observers, a3);
}

- (BOOL)cancelDownload:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(SSDownloadQueue *)self canCancelDownload:?])
  {
    v5 = dispatch_semaphore_create(0);
    downloadManager = self->_downloadManager;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__SSDownloadQueue_cancelDownload___block_invoke;
    v10[3] = &unk_1E84AC430;
    v10[4] = v5;
    v10[5] = &v11;
    [(SSDownloadManager *)downloadManager cancelDownloads:v7 completionBlock:v10];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (NSSet)downloadKinds
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(SSDownloadManagerOptions *)[(SSDownloadManager *)self->_downloadManager managerOptions] downloadKinds];

  return [v2 setWithArray:v3];
}

- (SSDownloadManager)downloadManager
{
  v2 = self->_downloadManager;

  return v2;
}

- (void)removeObserver:(id)a3
{
  observers = self->_observers;
  if (observers)
  {
    CFSetRemoveValue(observers, a3);
  }
}

- (id)downloadForItemIdentifier:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(SSDownloadManager *)self->_downloadManager downloads];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (SSGetItemIdentifierFromValue([v9 valueForProperty:@"7"]) == a3)
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSDownloadQueue_downloadManager_downloadsDidChange___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SSDownloadQueue_downloadManager_downloadStatesDidChange___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __59__SSDownloadQueue_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) downloads];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (SSDownloadPhaseIsFinishedPhase([v9 downloadPhaseIdentifier]))
        {
          [v3 addObject:v9];
        }

        else
        {
          v10 = [v2 indexOfObject:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(a1 + 32) _sendDownloadStatusChangedAtIndex:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [*(a1 + 32) _handleDownloadsRemoved:v3];
  }
}

- (void)downloadManagerDownloadsDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSDownloadQueue_downloadManagerDownloadsDidChange___block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)downloadManagerNetworkUsageDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSDownloadQueue_downloadManagerNetworkUsageDidChange___block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_messageObserversWithFunction:(void *)a3 context:(void *)a4
{
  observers = self->_observers;
  if (observers)
  {
    Copy = CFSetCreateCopy(0, observers);
    if (Copy)
    {
      v9 = Copy;
      v10 = self;
      CFSetApplyFunction(v9, a3, a4);

      CFRelease(v9);
    }
  }
}

- (void)_sendDownloadStatusChangedAtIndex:(int64_t)a3
{
  v3[0] = self;
  v3[1] = a3;
  [(SSDownloadQueue *)self _messageObserversWithFunction:__SendDownloadStatusChanged context:v3];
}

- (void)_sendQueueChangedWithRemovals:(id)a3
{
  v3[0] = self;
  v3[1] = a3;
  [(SSDownloadQueue *)self _messageObserversWithFunction:__SendQueueChanged context:v3];
}

- (void)_sendQueueNetworkUsageChanged
{
  v2[0] = self;
  v2[1] = 0;
  [(SSDownloadQueue *)self _messageObserversWithFunction:__SendNetworkUsageChanged context:v2];
}

- (void)_sendQueuePreOrdersChanged
{
  v2[0] = self;
  v2[1] = 0;
  [(SSDownloadQueue *)self _messageObserversWithFunction:__SendPreOrdersChanged context:v2];
}

- (void)_handleDownloadsDidChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(SSDownloadManager *)self->_downloadManager downloads];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (!a3 || [a3 containsObject:*(*(&v12 + 1) + 8 * v10)])
        {
          if (SSDownloadPhaseIsFinishedPhase([v11 downloadPhaseIdentifier]))
          {
            [v5 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SSDownloadQueue *)self _handleDownloadsRemoved:v5];
}

- (void)_handleDownloadsRemoved:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_autoFinishDownloads)
  {
    v5 = [a3 allObjects];
    if ([v5 count])
    {
      [(SSDownloadManager *)self->_downloadManager _willFinishDownloads:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = [a3 count];
    LODWORD(v19) = 22;
    v18 = &v20;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v20, v19}];
      free(v10);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  [(SSDownloadQueue *)self _sendQueueChangedWithRemovals:a3, v18];
  if ([a3 count])
  {
    if (self->_autoFinishDownloads)
    {
      [(SSDownloadManager *)self->_downloadManager _finishDownloads:v5];
    }
  }
}

@end