@interface PLServerChangePublisher
- (PLServerChangePublisher)init;
- (id)publishChangeEvent:(id)event delayedSaveActionsDetail:(id)detail debugEvent:(id)debugEvent transaction:(id)transaction;
- (id)stateCaptureDictionary;
- (void)_postChangeHubNotification;
- (void)_postWatchUpdateNotification;
- (void)_postWatchUpdateNotificationIfNotPaused;
- (void)_postWatchUpdateNotificationIfPending;
- (void)dealloc;
- (void)distributeChangeEvent:(id)event debugEvent:(id)debugEvent transaction:(id)transaction;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLServerChangePublisher _postChangeHubNotification]"];
    [currentHandler handleFailureInFunction:v10 file:@"PLServerChangePublisher.m" lineNumber:108 description:{@"-[PLServerChangePublisher _postChangeHubNotification]: notify_post() failed: (%d)", v8}];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLServerChangePublisher _postWatchUpdateNotification]"];
    [currentHandler handleFailureInFunction:v10 file:@"PLServerChangePublisher.m" lineNumber:136 description:{@"-[PLServerChangePublisher _postWatchUpdateNotification]: notify_post() failed: (%d)", v8}];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  eventDescriptions = [(PFStateCaptureEventLog *)self->_eventLog eventDescriptions];
  [dictionary setObject:eventDescriptions forKeyedSubscript:@"events"];

  return dictionary;
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

- (void)distributeChangeEvent:(id)event debugEvent:(id)debugEvent transaction:(id)transaction
{
  xdict = event;
  debugEventCopy = debugEvent;
  transactionCopy = transaction;
  v11 = xdict;
  if (!xdict)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLServerChangePublisher.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"event != NULL"}];

    v11 = 0;
  }

  if (xpc_dictionary_get_uint64(v11, "eventKind") != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLServerChangePublisher.m" lineNumber:85 description:@"Trying to distribute an invalid event."];
  }

  if ([PLLegacyChangeEvent isEmptyEvent:xdict])
  {
    [debugEventCopy setHasEmptyMessage:1];
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [debugEventCopy setPostTimestamp:?];
    [(PLServerChangePublisher *)self _postChangeHubNotification];
    [(PLServerChangePublisher *)self _postWatchUpdateNotificationIfNotPaused];
    v12 = atomic_load(&self->_postCount);
    [debugEventCopy setPostCount:v12];
  }
}

- (id)publishChangeEvent:(id)event delayedSaveActionsDetail:(id)detail debugEvent:(id)debugEvent transaction:(id)transaction
{
  eventCopy = event;
  debugEventCopy = debugEvent;
  transactionCopy = transaction;
  transactionToken = [transactionCopy transactionToken];
  if (transactionToken)
  {
    v13 = transactionCopy;
    changeScopes = [v13 changeScopes];
    pathManager = [v13 pathManager];

    transactionCopy = [PLClientServerTransaction beginServerTransactionWithToken:transactionToken changeScopes:changeScopes pathManager:pathManager identifier:"[PLServerChangePublisher publishChangeEvent:delayedSaveActionsDetail:debugEvent:transaction:]"];

    [v13 transferReplyBlocksTo:transactionCopy];
    [v13 completeTransaction];
  }

  [(PLServerChangePublisher *)self distributeChangeEvent:eventCopy debugEvent:debugEventCopy transaction:transactionCopy];

  return transactionCopy;
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
    selfCopy = self;
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