@interface PLServerChangePublisher
- (PLServerChangePublisher)init;
- (id)publishChangeEvent:(id)a3 delayedSaveActionsDetail:(id)a4 debugEvent:(id)a5 transaction:(id)a6;
- (id)stateCaptureDictionary;
- (void)_postChangeHubNotification;
- (void)_postWatchUpdateNotification;
- (void)_postWatchUpdateNotificationIfNotPaused;
- (void)_postWatchUpdateNotificationIfPending;
- (void)dealloc;
- (void)distributeChangeEvent:(id)a3 debugEvent:(id)a4 transaction:(id)a5;
- (void)pauseLaunchEventNotifications;
- (void)unpauseLaunchEventNotifications;
@end

@implementation PLServerChangePublisher

- (void)_postChangeHubNotification
{
  v13 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(&self->_postCount, 1uLL);
  v2 = atomic_load(&self->_postCount);
  v3 = PLChangeHandlingGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 134217984;
    v12 = v2;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_EVENT, v4, "Post ChangeHub notification", "post count: %llu", buf, 0xCu);
  }

  qos_class_self();
  v7 = pl_notify_post_with_retry();
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLServerChangePublisher _postChangeHubNotification]"];
    [v9 handleFailureInFunction:v10 file:@"PLServerChangePublisher.m" lineNumber:108 description:{@"-[PLServerChangePublisher _postChangeHubNotification]: notify_post() failed: (%d)", v8}];
  }
}

- (void)_postWatchUpdateNotification
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_postCount);
  v3 = PLChangeHandlingGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 134217984;
    v12 = v2;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_EVENT, v4, "Post WatchUpdate notification", "post count: %llu", buf, 0xCu);
  }

  v7 = pl_notify_post_with_retry();
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLServerChangePublisher _postWatchUpdateNotification]"];
    [v9 handleFailureInFunction:v10 file:@"PLServerChangePublisher.m" lineNumber:136 description:{@"-[PLServerChangePublisher _postWatchUpdateNotification]: notify_post() failed: (%d)", v8}];
  }
}

- (void)_postWatchUpdateNotificationIfNotPaused
{
  p_hasPendingWatchNotification = &self->_hasPendingWatchNotification;
  atomic_store(1u, &self->_hasPendingWatchNotification);
  v3 = atomic_load(&self->_suppressWatchNotification);
  if ((v3 & 1) == 0)
  {
    [(PLServerChangePublisher *)self _postWatchUpdateNotification];
    atomic_store(0, p_hasPendingWatchNotification);
  }
}

- (id)stateCaptureDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PFStateCaptureEventLog *)self->_eventLog eventDescriptions];
  [v3 setObject:v4 forKeyedSubscript:@"events"];

  return v3;
}

- (void)unpauseLaunchEventNotifications
{
  v3 = PLChangeHandlingGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_EVENT, v4, "Unpause WatchUpdate notifications", "", buf, 2u);
  }

  v7 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Unpause WatchUpdate notifications", v8, 2u);
  }

  atomic_store(0, &self->_suppressWatchNotification);
  [(PLServerChangePublisher *)self _postWatchUpdateNotificationIfPending];
}

- (void)pauseLaunchEventNotifications
{
  v3 = PLChangeHandlingGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_EVENT, v4, "Pause WatchUpdate notifications", "", buf, 2u);
  }

  v7 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Pause WatchUpdate notifications", v8, 2u);
  }

  atomic_store(1u, &self->_suppressWatchNotification);
}

- (void)_postWatchUpdateNotificationIfPending
{
  p_hasPendingWatchNotification = &self->_hasPendingWatchNotification;
  v3 = atomic_load(&self->_hasPendingWatchNotification);
  if (v3)
  {
    [(PLServerChangePublisher *)self _postWatchUpdateNotification];
    atomic_store(0, p_hasPendingWatchNotification);
  }
}

- (void)distributeChangeEvent:(id)a3 debugEvent:(id)a4 transaction:(id)a5
{
  xdict = a3;
  v9 = a4;
  v10 = a5;
  v11 = xdict;
  if (!xdict)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLServerChangePublisher.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"event != NULL"}];

    v11 = 0;
  }

  if (xpc_dictionary_get_uint64(v11, "eventKind") != 1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLServerChangePublisher.m" lineNumber:85 description:@"Trying to distribute an invalid event."];
  }

  if ([PLLegacyChangeEvent isEmptyEvent:xdict])
  {
    [v9 setHasEmptyMessage:1];
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v9 setPostTimestamp:?];
    [(PLServerChangePublisher *)self _postChangeHubNotification];
    [(PLServerChangePublisher *)self _postWatchUpdateNotificationIfNotPaused];
    v12 = atomic_load(&self->_postCount);
    [v9 setPostCount:v12];
  }
}

- (id)publishChangeEvent:(id)a3 delayedSaveActionsDetail:(id)a4 debugEvent:(id)a5 transaction:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v11 transactionToken];
  if (v12)
  {
    v13 = v11;
    v14 = [v13 changeScopes];
    v15 = [v13 pathManager];

    v11 = [PLClientServerTransaction beginServerTransactionWithToken:v12 changeScopes:v14 pathManager:v15 identifier:"[PLServerChangePublisher publishChangeEvent:delayedSaveActionsDetail:debugEvent:transaction:]"];

    [v13 transferReplyBlocksTo:v11];
    [v13 completeTransaction];
  }

  [(PLServerChangePublisher *)self distributeChangeEvent:v9 debugEvent:v10 transaction:v11];

  return v11;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PLServerChangePublisher;
  [(PLServerChangePublisher *)&v4 dealloc];
}

- (PLServerChangePublisher)init
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PLServerChangePublisher;
  v2 = [(PLServerChangePublisher *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69BDD78]) initWithEventClass:objc_opt_class() maxEvents:50];
    eventLog = v2->_eventLog;
    v2->_eventLog = v3;

    v5 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v2];
    stateHandler = v2->_stateHandler;
    v2->_stateHandler = v5;

    v7 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      *buf = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = v2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%@ %p init", buf, 0x16u);
    }

    v9 = v2;
  }

  return v2;
}

@end