@interface _TSF_TSDIOKServiceMatcher
- (BOOL)startNotificationsWithMatchingDictionary:(id)a3;
- (_TSF_TSDIOKServiceMatcher)init;
- (void)dealloc;
- (void)handleServiceMatched:(id)a3;
- (void)handleServiceTerminated:(id)a3;
- (void)init;
@end

@implementation _TSF_TSDIOKServiceMatcher

- (_TSF_TSDIOKServiceMatcher)init
{
  v6.receiver = self;
  v6.super_class = _TSF_TSDIOKServiceMatcher;
  v2 = [(_TSF_TSDIOKServiceMatcher *)&v6 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [_TSF_TSDIOKServiceMatcher init];
    }

    if (_sharedTSDIOKServiceMatcherNotificationsQueue)
    {
      if (_sharedTSDIOKServiceMatcherNotificationsPort)
      {
        v3 = [MEMORY[0x277CBEB58] set];
        matchedEntryIDs = v2->_matchedEntryIDs;
        v2->_matchedEntryIDs = v3;

        if (v2->_matchedEntryIDs)
        {
          return v2;
        }

        [_TSF_TSDIOKServiceMatcher init];
      }

      else
      {
        [_TSF_TSDIOKServiceMatcher init];
      }
    }

    else
    {
      [_TSF_TSDIOKServiceMatcher init];
    }

    return 0;
  }

  return v2;
}

- (BOOL)startNotificationsWithMatchingDictionary:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = [v4 objectForKeyedSubscript:@"IOProviderClass"];
  identifier = self->_identifier;
  self->_identifier = v6;

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D1AE20];
  v9 = _sharedTSDIOKServiceMatcherNotificationsPort;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke;
  v25[3] = &unk_279DBD910;
  objc_copyWeak(&v26, &location);
  v10 = [v8 addNotificationOfType:*MEMORY[0x277D1AE00] forMatching:v5 usingNotificationPort:v9 error:0 withHandler:v25];
  matchNotification = self->_matchNotification;
  self->_matchNotification = v10;

  if (!self->_matchNotification)
  {
    [(_TSF_TSDIOKServiceMatcher *)&v26 startNotificationsWithMatchingDictionary:?];
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v12 = MEMORY[0x277D1AE20];
  v13 = _sharedTSDIOKServiceMatcherNotificationsPort;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_12;
  v23[3] = &unk_279DBD910;
  objc_copyWeak(&v24, &location);
  v14 = [v12 addNotificationOfType:*MEMORY[0x277D1AE10] forMatching:v5 usingNotificationPort:v13 error:0 withHandler:v23];
  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = v14;

  v16 = self->_terminateNotification;
  v17 = v16 != 0;
  if (v16)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_14;
    v22[3] = &unk_279DBD538;
    v22[4] = self;
    dispatch_async(_sharedTSDIOKServiceMatcherNotificationsQueue, v22);
  }

  else
  {
    [_TSF_TSDIOKServiceMatcher startNotificationsWithMatchingDictionary:];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(NSString *)self->_identifier UTF8String];
    v19 = "failed";
    if (v17)
    {
      v19 = "success";
    }

    *buf = 136315394;
    v29 = v18;
    v30 = 2080;
    v31 = v19;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDIOKServiceMatcher startNotificationsWithMatchingDictionary %s %s", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  matchedEntryIDs = self->_matchedEntryIDs;
  self->_matchedEntryIDs = 0;

  matchNotification = self->_matchNotification;
  self->_matchNotification = 0;

  terminateNotification = self->_terminateNotification;
  self->_terminateNotification = 0;

  v6.receiver = self;
  v6.super_class = _TSF_TSDIOKServiceMatcher;
  [(_TSF_TSDIOKServiceMatcher *)&v6 dealloc];
}

- (void)handleServiceMatched:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "entryID")}];
  if (([(NSMutableSet *)self->_matchedEntryIDs containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_matchedEntryIDs addObject:v4];
    [(_TSF_TSDIOKServiceMatcher *)self serviceMatched:v5];
  }
}

- (void)handleServiceTerminated:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "entryID")}];
  if ([(NSMutableSet *)self->_matchedEntryIDs containsObject:v4])
  {
    [(NSMutableSet *)self->_matchedEntryIDs removeObject:v4];
    [(_TSF_TSDIOKServiceMatcher *)self serviceTerminated:v5];
  }
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

- (void)startNotificationsWithMatchingDictionary:.cold.1()
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

- (void)startNotificationsWithMatchingDictionary:(id *)a1 .cold.2(id *a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v4, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v5, v6, v7, v8, 2u);
  }

  objc_destroyWeak(a1);
  objc_destroyWeak(a2);
  v9 = *MEMORY[0x277D85DE8];
}

@end