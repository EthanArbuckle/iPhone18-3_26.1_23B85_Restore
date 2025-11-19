@interface _PBFGalleryEnqueuedPushToProactiveRequest
- (_PBFGalleryEnqueuedPushToProactiveRequest)initWithUpdatedDescriptors:(id)a3 reason:(id)a4 sessionId:(id)a5;
- (void)addCompletionHandler:(id)a3;
- (void)addCompletionHandlersFromEnqueuedPushToProactive:(id)a3;
- (void)fireCompletionHandlersWithError:(id)a3 didUpdate:(BOOL)a4;
@end

@implementation _PBFGalleryEnqueuedPushToProactiveRequest

- (_PBFGalleryEnqueuedPushToProactiveRequest)initWithUpdatedDescriptors:(id)a3 reason:(id)a4 sessionId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _PBFGalleryEnqueuedPushToProactiveRequest;
  v11 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    sessionId = v11->_sessionId;
    v11->_sessionId = v12;

    v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v8 copyItems:1];
    updatedDescriptors = v11->_updatedDescriptors;
    v11->_updatedDescriptors = v14;

    v16 = [v9 copy];
    reason = v11->_reason;
    v11->_reason = v16;
  }

  return v11;
}

- (void)addCompletionHandlersFromEnqueuedPushToProactive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [_PBFGalleryEnqueuedPushToProactiveRequest addCompletionHandlersFromEnqueuedPushToProactive:a2];
  }

  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7[1];
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [(_PBFGalleryEnqueuedPushToProactiveRequest *)self addCompletionHandler:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
  }
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if (v5->_finalized)
    {
      v10[2](v10, v5->_finalizedResult, v5->_finalizedError);
    }

    else
    {
      completionHandlers = v5->_completionHandlers;
      if (!completionHandlers)
      {
        v7 = objc_opt_new();
        v8 = v5->_completionHandlers;
        v5->_completionHandlers = v7;

        completionHandlers = v5->_completionHandlers;
      }

      v9 = [v10 copy];
      [(NSMutableArray *)completionHandlers addObject:v9];
    }

    objc_sync_exit(v5);

    v4 = v10;
  }
}

- (void)fireCompletionHandlersWithError:(id)a3 didUpdate:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (!v7->_finalized)
  {
    v7->_finalizedResult = v4;
    objc_storeStrong(&v7->_finalizedError, a3);
    v8 = [(NSMutableArray *)v7->_completionHandlers mutableCopy];
    [(NSMutableArray *)v7->_completionHandlers removeAllObjects];
    while ([v8 count])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 firstObject];
      (v10)[2](v10, v4, v11);
      [v8 removeObjectAtIndex:0];

      objc_autoreleasePoolPop(v9);
    }

    v7->_finalized = 1;
  }

  objc_sync_exit(v7);
}

- (void)addCompletionHandlersFromEnqueuedPushToProactive:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"enqueuedPush", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end