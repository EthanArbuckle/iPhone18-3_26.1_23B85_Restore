@interface PCStatusConditionsImpl
- (BOOL)isConditionRateLimited:(id)limited onOperation:(int64_t)operation;
- (BOOL)operationWithCondition:(id)condition forType:(int64_t)type;
- (id)_setupXPCConnection;
- (void)cleanupExpiredConditionsInBuffer;
- (void)clearStatusCondition:(id)condition completionHandler:(id)handler;
- (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setStatusCondition:(id)condition completionHandler:(id)handler;
@end

@implementation PCStatusConditionsImpl

- (void)setStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if ([(PCStatusConditionsImpl *)self isConditionRateLimited:conditionCopy onOperation:0])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_260F1E1F0;
    v25[4] = sub_260F1E364;
    v26 = MEMORY[0x2666F5440](handlerCopy);
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_260F1FF6C;
    v23[4] = sub_260F1FF7C;
    v24 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_260F1FF84;
    v22[3] = &unk_279AC9878;
    v22[4] = v23;
    v22[5] = v25;
    v8 = MEMORY[0x2666F5440](v22);
    _setupXPCConnection = [(PCStatusConditionsImpl *)self _setupXPCConnection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_260F2001C;
    v20[3] = &unk_279AC98A0;
    v10 = v8;
    v21 = v10;
    [_setupXPCConnection setInvalidationHandler:v20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_260F2013C;
    v18[3] = &unk_279AC98A0;
    v11 = v10;
    v19 = v11;
    [_setupXPCConnection setInterruptionHandler:v18];
    [_setupXPCConnection resume];
    remoteObjectProxy = [_setupXPCConnection remoteObjectProxy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_260F2025C;
    v15[3] = &unk_279AC98C8;
    v13 = v11;
    v17 = v13;
    v14 = _setupXPCConnection;
    v16 = v14;
    [remoteObjectProxy setStatusCondition:conditionCopy completionHandler:v15];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)clearStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if ([(PCStatusConditionsImpl *)self isConditionRateLimited:conditionCopy onOperation:1])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_260F1E1F0;
    v25[4] = sub_260F1E364;
    v26 = MEMORY[0x2666F5440](handlerCopy);
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_260F1FF6C;
    v23[4] = sub_260F1FF7C;
    v24 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_260F2065C;
    v22[3] = &unk_279AC9878;
    v22[4] = v23;
    v22[5] = v25;
    v8 = MEMORY[0x2666F5440](v22);
    _setupXPCConnection = [(PCStatusConditionsImpl *)self _setupXPCConnection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_260F206F4;
    v20[3] = &unk_279AC98A0;
    v10 = v8;
    v21 = v10;
    [_setupXPCConnection setInvalidationHandler:v20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_260F20814;
    v18[3] = &unk_279AC98A0;
    v11 = v10;
    v19 = v11;
    [_setupXPCConnection setInterruptionHandler:v18];
    [_setupXPCConnection resume];
    remoteObjectProxy = [_setupXPCConnection remoteObjectProxy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_260F20934;
    v15[3] = &unk_279AC98C8;
    v13 = v11;
    v17 = v13;
    v14 = _setupXPCConnection;
    v16 = v14;
    [remoteObjectProxy clearStatusCondition:conditionCopy completionHandler:v15];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  registeredCopy = registered;
  identifierCopy = identifier;
  handlerCopy = handler;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_260F1E1F0;
  v28[4] = sub_260F1E364;
  v29 = MEMORY[0x2666F5440]();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_260F1FF6C;
  v26[4] = sub_260F1FF7C;
  v27 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_260F20D1C;
  v25[3] = &unk_279AC98F0;
  v25[4] = v26;
  v25[5] = v28;
  v11 = MEMORY[0x2666F5440](v25);
  _setupXPCConnection = [(PCStatusConditionsImpl *)self _setupXPCConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_260F20DBC;
  v23[3] = &unk_279AC98A0;
  v13 = v11;
  v24 = v13;
  [_setupXPCConnection setInvalidationHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_260F20EE0;
  v21[3] = &unk_279AC98A0;
  v14 = v13;
  v22 = v14;
  [_setupXPCConnection setInterruptionHandler:v21];
  [_setupXPCConnection resume];
  remoteObjectProxy = [_setupXPCConnection remoteObjectProxy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_260F21004;
  v18[3] = &unk_279AC9918;
  v16 = v14;
  v20 = v16;
  v17 = _setupXPCConnection;
  v19 = v17;
  [remoteObjectProxy isStatusConditionRegistered:registeredCopy bundleIdentifier:identifierCopy completionHandler:v18];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

- (BOOL)isConditionRateLimited:(id)limited onOperation:(int64_t)operation
{
  v19 = *MEMORY[0x277D85DE8];
  limitedCopy = limited;
  [(PCStatusConditionsImpl *)self cleanupExpiredConditionsInBuffer];
  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"Clear";
    if (!operation)
    {
      v8 = @"Set";
    }

    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_260F1D000, v7, OS_LOG_TYPE_INFO, "PCStatusConditions %{public}@ called. Checking rate limiting.", &v17, 0xCu);
  }

  v9 = [(PCStatusConditionsImpl *)self operationWithCondition:limitedCopy forType:operation];
  v10 = APLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = @"CLEAR";
      if (!operation)
      {
        v12 = @"SET";
      }

      v17 = 138543362;
      v18 = v12;
      v13 = "This is a duplicate %{public}@ call which will be rate limited";
LABEL_14:
      _os_log_impl(&dword_260F1D000, v10, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
    }
  }

  else if (v11)
  {
    v14 = @"CLEAR";
    if (!operation)
    {
      v14 = @"SET";
    }

    v17 = 138543362;
    v18 = v14;
    v13 = "This is a new %{public}@ call which will execute.";
    goto LABEL_14;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)operationWithCondition:(id)condition forType:(int64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v6 = +[PCRingBuffer sharedInstance];
  lock = [v6 lock];
  [lock lock];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  ringBuffer = [v6 ringBuffer];
  v9 = [ringBuffer countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(ringBuffer);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        statusCondition = [v13 statusCondition];
        if ([statusCondition isEqual:conditionCopy])
        {
          operation = [v13 operation];

          if (operation == type)
          {
            v24 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v10 = [ringBuffer countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v16 = MEMORY[0x277CCAC30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_260F21598;
  v28[3] = &unk_279AC9940;
  v17 = conditionCopy;
  v29 = v17;
  v18 = [v16 predicateWithBlock:v28];
  ringBuffer2 = [v6 ringBuffer];
  [ringBuffer2 filterUsingPredicate:v18];

  v20 = [PCStatusConditionRateLimitedObject alloc];
  v21 = [MEMORY[0x277CBEAA8] now];
  v22 = [(PCStatusConditionRateLimitedObject *)v20 init:v17 at:v21 kind:type];

  ringBuffer3 = [v6 ringBuffer];
  [ringBuffer3 addObject:v22];

  v24 = 0;
  ringBuffer = v29;
LABEL_13:

  lock2 = [v6 lock];
  [lock2 unlock];

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)cleanupExpiredConditionsInBuffer
{
  v2 = +[PCRingBuffer sharedInstance];
  lock = [v2 lock];
  [lock lock];

  [v2 cappedRingBufferTo:5];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = MEMORY[0x277CCAC30];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_260F21700;
  v10[3] = &unk_279AC9940;
  v11 = date;
  v6 = date;
  v7 = [v5 predicateWithBlock:v10];
  ringBuffer = [v2 ringBuffer];
  [ringBuffer filterUsingPredicate:v7];

  lock2 = [v2 lock];
  [lock2 unlock];
}

- (id)_setupXPCConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adservicesd.statusconditionservice" options:4096];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287373468];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end