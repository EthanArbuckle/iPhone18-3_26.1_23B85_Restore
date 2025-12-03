@interface SiriAnalyticsUnifiedBiomeStream
- (SiriAnalyticsUnifiedBiomeStream)initWithReadOnlyStorageURL:(id)l prefs:(id)prefs;
- (SiriAnalyticsUnifiedBiomeStream)initWithReadWriteStorageURL:(id)l prefs:(id)prefs;
- (void)fetchMessagesBatchSinceBookmark:(id)bookmark batchSize:(unint64_t)size completion:(id)completion;
- (void)fetchMessagesSince:(double)since receiveMessage:(id)message completion:(id)completion;
- (void)fetchMessagesSinceBookmark:(id)bookmark receiveMessage:(id)message completion:(id)completion;
- (void)prune;
- (void)sendEvents:(id)events;
@end

@implementation SiriAnalyticsUnifiedBiomeStream

- (void)prune
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E698F130]);
  path = [(NSURL *)self->_url path];
  v6 = [v4 initWithStoreBasePath:path segmentSize:0x100000 protectionClass:3];

  v7 = objc_alloc(MEMORY[0x1E698F140]);
  v8 = +[SiriAnalyticsUnifiedMessageStreamHelper identifier];
  v9 = [v7 initWithStream:v8 permission:2 config:v6];

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v10 = SiriAnalyticsLogContextUnifiedBiomeStream;
  if (os_log_type_enabled(SiriAnalyticsLogContextUnifiedBiomeStream, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "[SiriAnalyticsUnifiedBiomeStream prune]";
    v19 = 2048;
    v20 = 52428800;
    _os_log_debug_impl(&dword_1D9863000, v10, OS_LOG_TYPE_DEBUG, "%s Pruning stream with max size: %lu bytes", &v17, 0x16u);
  }

  [v9 pruneStreamToMaxStreamSizeInBytes:52428800];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextUnifiedBiomeStream;
  if (os_log_type_enabled(SiriAnalyticsLogContextUnifiedBiomeStream, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "[SiriAnalyticsUnifiedBiomeStream prune]";
    v19 = 2048;
    v20 = 0x4122750000000000;
    _os_log_debug_impl(&dword_1D9863000, v11, OS_LOG_TYPE_DEBUG, "%s Pruning stream with max age: %.1f seconds", &v17, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0 maxStreamSize:604800.0];
  [v6 setPruningPolicy:v12];
  v13 = objc_alloc(MEMORY[0x1E698F318]);
  v14 = +[SiriAnalyticsUnifiedMessageStreamHelper identifier];
  v15 = [v13 initWithPrivateStreamIdentifier:v14 storeConfig:v6 eventDataClass:objc_opt_class()];

  [v15 pruneExpiredEventsWithBlock:&__block_literal_global_615];
  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchMessagesBatchSinceBookmark:(id)bookmark batchSize:(unint64_t)size completion:(id)completion
{
  bookmarkCopy = bookmark;
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesBatchSinceBookmark_batchSize_completion___block_invoke;
  v14[3] = &unk_1E8587760;
  v14[4] = v15;
  v14[5] = size;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesBatchSinceBookmark_batchSize_completion___block_invoke_2;
  v11[3] = &unk_1E8587788;
  v10 = completionCopy;
  v12 = v10;
  v13 = v15;
  [(SiriAnalyticsUnifiedBiomeStream *)self fetchMessagesSinceBookmark:bookmarkCopy receiveMessage:v14 completion:v11];

  _Block_object_dispose(v15, 8);
}

uint64_t __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesBatchSinceBookmark_batchSize_completion___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v7 = 0;
  }

  return (*(v6 + 16))(v6, v7, a2);
}

- (void)fetchMessagesSinceBookmark:(id)bookmark receiveMessage:(id)message completion:(id)completion
{
  bookmarkCopy = bookmark;
  messageCopy = message;
  completionCopy = completion;
  v11 = [(BMStoreStream *)self->_stream publisherFromStartTime:0.0];
  if (!bookmarkCopy)
  {
    v14 = 0;
LABEL_6:
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSinceBookmark_receiveMessage_completion___block_invoke;
    v19[3] = &unk_1E8587710;
    v20 = completionCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSinceBookmark_receiveMessage_completion___block_invoke_2;
    v17[3] = &unk_1E8587738;
    v18 = messageCopy;
    v16 = [v11 drivableSinkWithBookmark:v14 completion:v19 shouldContinue:v17];

    v15 = v20;
    goto LABEL_7;
  }

  v12 = MEMORY[0x1E696ACD0];
  bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
  v21 = 0;
  v14 = [v12 unarchivedObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark fromData:bookmarkCopy error:&v21];
  v15 = v21;

  if (!v15 && v14)
  {
    goto LABEL_6;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, 2);
LABEL_7:
}

void __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSinceBookmark_receiveMessage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 state] || (objc_msgSend(v5, "error"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v10];
    v9 = v10;
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __88__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSinceBookmark_receiveMessage_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 eventBody];
    v7 = (*(v5 + 16))(v5, v6);
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v8 = SiriAnalyticsLogContextStreaming;
    if (os_log_type_enabled(SiriAnalyticsLogContextStreaming, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[SiriAnalyticsUnifiedBiomeStream fetchMessagesSinceBookmark:receiveMessage:completion:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1D9863000, v8, OS_LOG_TYPE_ERROR, "%s Event had no eventBody: %@", &v11, 0x16u);
    }

    v7 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)fetchMessagesSince:(double)since receiveMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v10 = [(BMStoreStream *)self->_stream publisherFromStartTime:since];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  *&v20[3] = since;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSince_receiveMessage_completion___block_invoke;
  v17[3] = &unk_1E85876C0;
  v11 = completionCopy;
  v18 = v11;
  v19 = v20;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSince_receiveMessage_completion___block_invoke_63;
  v14[3] = &unk_1E85876E8;
  v16 = v20;
  v12 = messageCopy;
  v15 = v12;
  v13 = [v10 sinkWithCompletion:v17 receiveInput:v14];

  _Block_object_dispose(v20, 8);
}

void __80__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSince_receiveMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextUnifiedBiomeStream;
  if (os_log_type_enabled(SiriAnalyticsLogContextUnifiedBiomeStream, OS_LOG_TYPE_DEBUG))
  {
    v10 = v4;
    v11 = [v3 state];
    v12 = [v3 error];
    v13 = 136315650;
    v14 = "[SiriAnalyticsUnifiedBiomeStream fetchMessagesSince:receiveMessage:completion:]_block_invoke";
    v15 = 2048;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_1D9863000, v10, OS_LOG_TYPE_DEBUG, "%s Sink completion with state: %ld, error: %@", &v13, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [v3 state] == 0;
  v8 = [v3 error];
  (*(v5 + 16))(v5, v7, v8, v6);

  v9 = *MEMORY[0x1E69E9840];
}

void __80__SiriAnalyticsUnifiedBiomeStream_fetchMessagesSince_receiveMessage_completion___block_invoke_63(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 timestamp];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = [v7 eventBody];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 eventBody];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)sendEvents:(id)events
{
  v15 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        [(BMSource *)self->_source sendEvent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (SiriAnalyticsUnifiedBiomeStream)initWithReadOnlyStorageURL:(id)l prefs:(id)prefs
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SiriAnalyticsUnifiedBiomeStream;
  v7 = [(SiriAnalyticsUnifiedBiomeStream *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_url, l);
    [SiriAnalyticsUnifiedMessageStreamHelper ensureDirectoryExistsAt:lCopy];
    v9 = objc_alloc(MEMORY[0x1E698F130]);
    path = [lCopy path];
    v11 = [v9 initWithStoreBasePath:path segmentSize:0x100000 protectionClass:3];

    v12 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:1 maxAge:50 maxStreamSize:604800.0];
    [v11 setPruningPolicy:v12];
    v13 = objc_alloc(MEMORY[0x1E698F318]);
    v14 = +[SiriAnalyticsUnifiedMessageStreamHelper identifier];
    v15 = [v13 initWithPrivateStreamIdentifier:v14 storeConfig:v11 eventDataClass:objc_opt_class()];
    stream = v8->_stream;
    v8->_stream = v15;
  }

  return v8;
}

- (SiriAnalyticsUnifiedBiomeStream)initWithReadWriteStorageURL:(id)l prefs:(id)prefs
{
  v4 = [(SiriAnalyticsUnifiedBiomeStream *)self initWithReadOnlyStorageURL:l prefs:prefs];
  v5 = v4;
  if (v4)
  {
    source = [(BMStoreStream *)v4->_stream source];
    source = v5->_source;
    v5->_source = source;
  }

  return v5;
}

@end