@interface _TSF_TSDKextNotifier
- (_TSF_TSDKextNotifier)init;
- (void)dealloc;
- (void)init;
- (void)notifyWhenServiceIsAvailable:(id)available;
- (void)notifyWhenServiceIsUnavailable:(id)unavailable;
- (void)serviceMatched:(id)matched;
- (void)serviceTerminated:(id)terminated;
@end

@implementation _TSF_TSDKextNotifier

- (_TSF_TSDKextNotifier)init
{
  v8.receiver = self;
  v8.super_class = _TSF_TSDKextNotifier;
  v2 = [(_TSF_TSDIOKServiceMatcher *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    matchNotificationsArray = v2->_matchNotificationsArray;
    v2->_matchNotificationsArray = v3;

    if (v2->_matchNotificationsArray)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      terminateNotificationsArray = v2->_terminateNotificationsArray;
      v2->_terminateNotificationsArray = v5;

      if (v2->_terminateNotificationsArray)
      {
        return v2;
      }

      [_TSF_TSDKextNotifier init];
    }

    else
    {
      [_TSF_TSDKextNotifier init];
    }

    return 0;
  }

  return v2;
}

- (void)serviceMatched:(id)matched
{
  v23 = *MEMORY[0x277D85DE8];
  matchedCopy = matched;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->super._identifier UTF8String];
    v7 = [(NSMutableArray *)self->_matchNotificationsArray count];
    *buf = 136315394;
    v20 = uTF8String;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier serviceMatched %s matchedCount dispatching notifications to %d registered", buf, 0x12u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_matchNotificationsArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_matchNotificationsArray removeAllObjects];
  objc_autoreleasePoolPop(v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)serviceTerminated:(id)terminated
{
  v23 = *MEMORY[0x277D85DE8];
  terminatedCopy = terminated;
  if ([(_TSF_TSDIOKServiceMatcher *)self getMatchedCount]<= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(NSString *)self->super._identifier UTF8String];
      v6 = [(NSMutableArray *)self->_terminateNotificationsArray count];
      *buf = 136315394;
      v20 = uTF8String;
      v21 = 1024;
      v22 = v6;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier serviceTerminated %s, dispatching notifications to %d registered", buf, 0x12u);
    }

    v7 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_terminateNotificationsArray;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_terminateNotificationsArray removeAllObjects];
    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenServiceIsAvailable:(id)available
{
  availableCopy = available;
  v5 = availableCopy;
  v6 = _sharedTSDIOKServiceMatcherNotificationsQueue;
  if (_sharedTSDIOKServiceMatcherNotificationsQueue)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53___TSF_TSDKextNotifier_notifyWhenServiceIsAvailable___block_invoke;
    v7[3] = &unk_279DBD938;
    v7[4] = self;
    v8 = availableCopy;
    dispatch_async(v6, v7);
  }

  else
  {
    [_TSF_TSDKextNotifier notifyWhenServiceIsAvailable:];
  }
}

- (void)notifyWhenServiceIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v5 = unavailableCopy;
  v6 = _sharedTSDIOKServiceMatcherNotificationsQueue;
  if (_sharedTSDIOKServiceMatcherNotificationsQueue)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55___TSF_TSDKextNotifier_notifyWhenServiceIsUnavailable___block_invoke;
    v7[3] = &unk_279DBD938;
    v7[4] = self;
    v8 = unavailableCopy;
    dispatch_async(v6, v7);
  }

  else
  {
    [_TSF_TSDKextNotifier notifyWhenServiceIsUnavailable:];
  }
}

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->_matchNotificationsArray copy];
  v4 = [(NSMutableArray *)self->_terminateNotificationsArray copy];
  v5 = _sharedTSDIOKServiceMatcherNotificationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31___TSF_TSDKextNotifier_dealloc__block_invoke;
  block[3] = &unk_279DBD738;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);

  v8.receiver = self;
  v8.super_class = _TSF_TSDKextNotifier;
  [(_TSF_TSDIOKServiceMatcher *)&v8 dealloc];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenServiceIsAvailable:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenServiceIsUnavailable:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end