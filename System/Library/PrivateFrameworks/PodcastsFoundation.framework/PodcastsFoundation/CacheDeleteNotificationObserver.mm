@interface CacheDeleteNotificationObserver
- (BOOL)beginObserving;
- (CacheDeleteNotificationObserver)initWithDelegate:(id)delegate observedPaths:(id)paths notificationQueue:(id)queue;
- (CacheDeleteNotificationObserverDelegate)delegate;
- (void)_onQueueBeginObserving;
- (void)_onQueueConfigurePurgeMarkerForVolume:(__CFArray *)volume;
- (void)_onQueueProcessNotifications:(__CFArray *)notifications;
- (void)_onQueueSubscribeToNotificationsForVolume:(id)volume;
@end

@implementation CacheDeleteNotificationObserver

- (BOOL)beginObserving
{
  firstObject = [(NSArray *)self->_observedPaths firstObject];

  if (firstObject)
  {
    objc_initWeak(&location, self);
    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__CacheDeleteNotificationObserver_beginObserving__block_invoke;
    v6[3] = &unk_1E8568EF0;
    objc_copyWeak(&v7, &location);
    dispatch_async(notificationQueue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return firstObject != 0;
}

void __49__CacheDeleteNotificationObserver_beginObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onQueueBeginObserving];
    WeakRetained = v2;
  }
}

- (void)_onQueueBeginObserving
{
  v3 = [(NSArray *)self->_observedPaths mt_compactMap:&__block_literal_global_0];
  [(CacheDeleteNotificationObserver *)self _onQueueConfigurePurgeMarkerForVolume:v3];
  [(CacheDeleteNotificationObserver *)self _onQueueSubscribeToNotificationsForVolume:v3];
}

- (CacheDeleteNotificationObserver)initWithDelegate:(id)delegate observedPaths:(id)paths notificationQueue:(id)queue
{
  delegateCopy = delegate;
  pathsCopy = paths;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CacheDeleteNotificationObserver;
  v11 = [(CacheDeleteNotificationObserver *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_notificationQueue, queue);
    objc_storeStrong(&v12->_observedPaths, paths);
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatter = v12->_formatter;
    v12->_formatter = v13;

    [(NSDateFormatter *)v12->_formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSS"];
  }

  return v12;
}

- (void)_onQueueConfigurePurgeMarkerForVolume:(__CFArray *)volume
{
  objc_initWeak(&location, self);
  Count = CFArrayGetCount(volume);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(volume, i);
      CacheDeleteInitPurgeMarker();
    }
  }

  objc_copyWeak(&v6, &location);
  CacheDeleteEnumerateRemovedFilesInDirectories();
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __73__CacheDeleteNotificationObserver__onQueueConfigurePurgeMarkerForVolume___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _onQueueProcessNotifications:a2];
    WeakRetained = v4;
  }
}

- (void)_onQueueSubscribeToNotificationsForVolume:(id)volume
{
  volumeCopy = volume;
  objc_initWeak(&location, self);
  v5 = volumeCopy;
  objc_copyWeak(&v6, &location);
  CacheDeleteRegisterPurgeNotification();
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

void __77__CacheDeleteNotificationObserver__onQueueSubscribeToNotificationsForVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_copyWeak(&v2, (a1 + 40));
  CacheDeleteEnumerateRemovedFilesInDirectories();
  objc_destroyWeak(&v2);
}

void __77__CacheDeleteNotificationObserver__onQueueSubscribeToNotificationsForVolume___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _onQueueProcessNotifications:a2];
    WeakRetained = v4;
  }
}

- (void)_onQueueProcessNotifications:(__CFArray *)notifications
{
  v34 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(__CFArray *)notificationsCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412802;
    v22 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(notificationsCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:{@"historyDone", v22}];

        if (v11)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained cacheDeleteObserverBecameSynchronizedWithFileSystem:self];
        }

        else
        {
          v13 = [v10 objectForKeyedSubscript:@"path"];
          if (v13 && (v14 = v13, [v10 objectForKeyedSubscript:@"timestamp"], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
          {
            WeakRetained = [v10 objectForKeyedSubscript:@"path"];
            v16 = [v10 objectForKeyedSubscript:@"timestamp"];
            v17 = [(NSDateFormatter *)self->_formatter dateFromString:v16];
            v18 = _MTLogCategoryDownload();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v28 = v16;
              v29 = 2112;
              v30 = v17;
              v31 = 2112;
              v32 = WeakRetained;
              _os_log_impl(&dword_1D8CEC000, v18, OS_LOG_TYPE_DEFAULT, "Found cache deleted file ('%@' => %@): (%@)", buf, 0x20u);
            }

            v19 = objc_loadWeakRetained(&self->_delegate);
            [v19 cacheDeleteObserver:self didIdentifyCacheDeletedPath:WeakRetained deletedAtDate:v17];
          }

          else
          {
            WeakRetained = _MTLogCategoryDownload();
            if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v10;
              _os_log_impl(&dword_1D8CEC000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Unhandled CacheDeleteEvent: %@", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v20 = [(__CFArray *)notificationsCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
      v7 = v20;
    }

    while (v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (CacheDeleteNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end