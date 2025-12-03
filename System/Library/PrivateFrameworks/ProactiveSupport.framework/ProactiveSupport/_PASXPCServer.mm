@interface _PASXPCServer
+ (id)description;
+ (void)registerForService:(id)service delegate:(id)delegate;
- (_PASXPCServer)initWithXPCListeners:(id)listeners logHandle:(id)handle;
- (void)registerXPCListeners;
@end

@implementation _PASXPCServer

- (void)registerXPCListeners
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_XPCListeners;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        serviceName = [v7 serviceName];
        delegate = [v7 delegate];
        [_PASXPCServer registerForService:serviceName delegate:delegate];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (_PASXPCServer)initWithXPCListeners:(id)listeners logHandle:(id)handle
{
  listenersCopy = listeners;
  v10.receiver = self;
  v10.super_class = _PASXPCServer;
  v7 = [(_PASXPCServer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_XPCListeners, listeners);
  }

  return v8;
}

+ (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = NSStringFromClass(self);
  [v3 appendFormat:@"%@ registrations:\n", v4];

  obj = self;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [listeners allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [listeners objectForKeyedSubscript:v10];
        second = [v11 second];
        [v3 appendFormat:@"  %@ => %@\n", v10, second];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)registerForService:(id)service delegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  delegateCopy = delegate;
  v9 = delegateCopy;
  if (serviceCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASXPCServer.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASXPCServer.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = listeners;
  if (!listeners)
  {
    v12 = objc_opt_new();
    v13 = listeners;
    listeners = v12;

    v11 = listeners;
  }

  v14 = [v11 objectForKeyedSubscript:serviceCopy];

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v22 = serviceCopy;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "SPI misuse: re-registering for XPC service '%@'", buf, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:serviceCopy];
    [v15 setDelegate:v9];
    v16 = [[_PASTuple2 alloc] initWithFirst:v15 second:v9];
    [listeners setObject:v16 forKeyedSubscript:serviceCopy];

    objc_sync_exit(selfCopy);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = serviceCopy;
      v23 = 2112;
      v24 = objc_opt_class();
      v17 = v24;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Registered for XPC service '%@' with delegate of class %@", buf, 0x16u);
    }

    [v15 resume];
    selfCopy = v15;
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end