@interface ICDPlaybackPositionSyncCoordinator
- (ICDPlaybackPositionSyncCoordinator)initWithOperationQueue:(id)a3;
- (void)_onQueue_addSyncBlockWithIdentifier:(id)a3 block:(id)a4;
- (void)_onQueue_flushSyncBlocks;
- (void)_onQueue_scheduleBlockWithIdentifier:(id)a3 isCheckpoint:(BOOL)a4 block:(id)a5;
- (void)scheduleSyncForContext:(id)a3 isCheckpoint:(BOOL)a4;
@end

@implementation ICDPlaybackPositionSyncCoordinator

- (void)_onQueue_flushSyncBlocks
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(NSMutableDictionary *)self->_pendingSyncBlocks allValues];
  [(NSMutableDictionary *)self->_pendingSyncBlocks removeAllObjects];
  v4 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Flushing sync blocks", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_onQueue_scheduleBlockWithIdentifier:(id)a3 isCheckpoint:(BOOL)a4 block:(id)a5
{
  serialQueue = self->_serialQueue;
  v9 = a5;
  v10 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [(ICDPlaybackPositionSyncCoordinator *)self _onQueue_addSyncBlockWithIdentifier:v10 block:v9];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000A0D0;
  v20[3] = &unk_1001DF578;
  v20[4] = self;
  v11 = objc_retainBlock(v20);
  if (a4)
  {
    syncTimerSource = self->_syncTimerSource;
    v13 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (syncTimerSource)
    {
      if (v14)
      {
        *buf = 138543618;
        v22 = self;
        v23 = 2048;
        v24 = 0x4024000000000000;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ New checkpoint sync request. Delaying sync by %f seconds", buf, 0x16u);
      }

      dispatch_source_cancel(self->_syncTimerSource);
      v13 = self->_syncTimerSource;
      self->_syncTimerSource = 0;
    }

    else if (v14)
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2048;
      v24 = 0x4024000000000000;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling sync %f seconds from now...", buf, 0x16u);
    }

    v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_serialQueue);
    v17 = self->_syncTimerSource;
    self->_syncTimerSource = v16;

    v18 = self->_syncTimerSource;
    v19 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_source_set_event_handler(self->_syncTimerSource, v11);
    dispatch_resume(self->_syncTimerSource);
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing sync NOW.", buf, 0xCu);
    }

    (v11[2])(v11);
  }
}

- (void)_onQueue_addSyncBlockWithIdentifier:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(NSMutableDictionary *)self->_pendingSyncBlocks objectForKeyedSubscript:v6];

  v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync already pending with identifier %{public}@.", &v11, 0x16u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding pending sync block for identifier %{public}@.", &v11, 0x16u);
    }

    v9 = objc_retainBlock(v7);
    [(NSMutableDictionary *)self->_pendingSyncBlocks setObject:v9 forKeyedSubscript:v6];
  }
}

- (void)scheduleSyncForContext:(id)a3 isCheckpoint:(BOOL)a4
{
  v6 = a3;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A350;
  block[3] = &unk_1001DB9F8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(serialQueue, block);
}

- (ICDPlaybackPositionSyncCoordinator)initWithOperationQueue:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ICDPlaybackPositionSyncCoordinator;
  v6 = [(ICDPlaybackPositionSyncCoordinator *)&v16 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.itunescloudd.ICDPlaybackPositionSyncCoordinator.serialQueue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = +[NSMutableDictionary dictionary];
    pendingSyncBlocks = v6->_pendingSyncBlocks;
    v6->_pendingSyncBlocks = v9;

    v11 = +[NSMutableSet set];
    inFlightSyncIDs = v6->_inFlightSyncIDs;
    v6->_inFlightSyncIDs = v11;

    if (v5)
    {
      objc_storeStrong(&v6->_operationQueue, a3);
    }

    else
    {
      v13 = objc_alloc_init(NSOperationQueue);
      operationQueue = v6->_operationQueue;
      v6->_operationQueue = v13;

      [(NSOperationQueue *)v6->_operationQueue setName:@"com.apple.itunescloudd.ICDPlaybackPositionSyncCoordinator.operationQueue"];
      [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    }
  }

  return v6;
}

@end