@interface _PBFGalleryEnqueuedPushToProactiveRequest
- (_PBFGalleryEnqueuedPushToProactiveRequest)initWithUpdatedDescriptors:(id)descriptors reason:(id)reason sessionId:(id)id;
- (void)addCompletionHandler:(id)handler;
- (void)addCompletionHandlersFromEnqueuedPushToProactive:(id)proactive;
- (void)fireCompletionHandlersWithError:(id)error didUpdate:(BOOL)update;
@end

@implementation _PBFGalleryEnqueuedPushToProactiveRequest

- (_PBFGalleryEnqueuedPushToProactiveRequest)initWithUpdatedDescriptors:(id)descriptors reason:(id)reason sessionId:(id)id
{
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = _PBFGalleryEnqueuedPushToProactiveRequest;
  v11 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)&v19 init];
  if (v11)
  {
    v12 = [idCopy copy];
    sessionId = v11->_sessionId;
    v11->_sessionId = v12;

    v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:descriptorsCopy copyItems:1];
    updatedDescriptors = v11->_updatedDescriptors;
    v11->_updatedDescriptors = v14;

    v16 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v16;
  }

  return v11;
}

- (void)addCompletionHandlersFromEnqueuedPushToProactive:(id)proactive
{
  v17 = *MEMORY[0x277D85DE8];
  proactiveCopy = proactive;
  if (!proactiveCopy)
  {
    [_PBFGalleryEnqueuedPushToProactiveRequest addCompletionHandlersFromEnqueuedPushToProactive:a2];
  }

  v6 = proactiveCopy;
  if (self != proactiveCopy)
  {
    v7 = proactiveCopy;
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

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = handlerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_finalized)
    {
      v10[2](v10, selfCopy->_finalizedResult, selfCopy->_finalizedError);
    }

    else
    {
      completionHandlers = selfCopy->_completionHandlers;
      if (!completionHandlers)
      {
        v7 = objc_opt_new();
        v8 = selfCopy->_completionHandlers;
        selfCopy->_completionHandlers = v7;

        completionHandlers = selfCopy->_completionHandlers;
      }

      v9 = [v10 copy];
      [(NSMutableArray *)completionHandlers addObject:v9];
    }

    objc_sync_exit(selfCopy);

    handlerCopy = v10;
  }
}

- (void)fireCompletionHandlersWithError:(id)error didUpdate:(BOOL)update
{
  updateCopy = update;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_finalized)
  {
    selfCopy->_finalizedResult = updateCopy;
    objc_storeStrong(&selfCopy->_finalizedError, error);
    v8 = [(NSMutableArray *)selfCopy->_completionHandlers mutableCopy];
    [(NSMutableArray *)selfCopy->_completionHandlers removeAllObjects];
    while ([v8 count])
    {
      v9 = objc_autoreleasePoolPush();
      firstObject = [v8 firstObject];
      (firstObject)[2](firstObject, updateCopy, errorCopy);
      [v8 removeObjectAtIndex:0];

      objc_autoreleasePoolPop(v9);
    }

    selfCopy->_finalized = 1;
  }

  objc_sync_exit(selfCopy);
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