@interface VUIMediaLibraryFetchControllerQueueOperation
- (VUIMediaLibraryFetchControllerQueueOperation)init;
- (VUIMediaLibraryFetchControllerQueueOperation)initWithFetchControllers:(id)controllers mediaLibraryRevision:(unint64_t)revision;
- (void)executionDidBegin;
@end

@implementation VUIMediaLibraryFetchControllerQueueOperation

- (VUIMediaLibraryFetchControllerQueueOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibraryFetchControllerQueueOperation)initWithFetchControllers:(id)controllers mediaLibraryRevision:(unint64_t)revision
{
  controllersCopy = controllers;
  if (!controllersCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"fetchControllers"}];
  }

  v11.receiver = self;
  v11.super_class = VUIMediaLibraryFetchControllerQueueOperation;
  v7 = [(VUIMediaLibraryFetchControllerQueueOperation *)&v11 init];
  if (v7)
  {
    v8 = [controllersCopy copy];
    fetchControllers = v7->_fetchControllers;
    v7->_fetchControllers = v8;

    v7->_mediaLibraryRevision = revision;
  }

  return v7;
}

- (void)executionDidBegin
{
  v30 = *MEMORY[0x1E69E9840];
  fetchControllers = [(VUIMediaLibraryFetchControllerQueueOperation *)self fetchControllers];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [VUIMediaLibraryFetchController _logStringWithFetchControllers:fetchControllers];
    *buf = 134218242;
    selfCopy3 = self;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "[%p] - Begining VUIMediaLibraryFetchControllerQueueOperation for controllers: %@", buf, 0x16u);
  }

  mediaLibraryRevision = [(VUIMediaLibraryFetchControllerQueueOperation *)self mediaLibraryRevision];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = fetchControllers;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = dispatch_semaphore_create(0);
        v13 = VUIDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          logName = [v11 logName];
          *buf = 134218242;
          selfCopy3 = self;
          v28 = 2112;
          v29 = logName;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "[%p] - Starting fetch controller %@", buf, 0x16u);
        }

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __65__VUIMediaLibraryFetchControllerQueueOperation_executionDidBegin__block_invoke;
        v19[3] = &unk_1E8736330;
        v19[4] = self;
        v19[5] = v11;
        v20 = v12;
        v15 = dispatch_get_global_queue(0, 0);
        v16 = v12;
        [v11 beginFetchWithMediaLibraryRevision:mediaLibraryRevision completionHandler:v19 completionQueue:v15];

        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = VUIDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "[%p] - All fetches finished. Finishing VUIMediaLibraryFetchControllerQueueOperation operation", buf, 0xCu);
  }

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

intptr_t __65__VUIMediaLibraryFetchControllerQueueOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) logName];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "[%p] - Finished fetch controller %@", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

@end