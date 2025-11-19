@interface _PASXPCServer
+ (id)description;
+ (void)registerForService:(id)a3 delegate:(id)a4;
- (_PASXPCServer)initWithXPCListeners:(id)a3 logHandle:(id)a4;
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
        v8 = [v7 serviceName];
        v9 = [v7 delegate];
        [_PASXPCServer registerForService:v8 delegate:v9];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (_PASXPCServer)initWithXPCListeners:(id)a3 logHandle:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = _PASXPCServer;
  v7 = [(_PASXPCServer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_XPCListeners, a3);
  }

  return v8;
}

+ (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = NSStringFromClass(a1);
  [v3 appendFormat:@"%@ registrations:\n", v4];

  obj = a1;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [listeners allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

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
        v12 = [v11 second];
        [v3 appendFormat:@"  %@ => %@\n", v10, v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)registerForService:(id)a3 delegate:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"_PASXPCServer.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"_PASXPCServer.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  v10 = a1;
  objc_sync_enter(v10);
  v11 = listeners;
  if (!listeners)
  {
    v12 = objc_opt_new();
    v13 = listeners;
    listeners = v12;

    v11 = listeners;
  }

  v14 = [v11 objectForKeyedSubscript:v7];

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "SPI misuse: re-registering for XPC service '%@'", buf, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    objc_sync_exit(v10);
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v7];
    [v15 setDelegate:v9];
    v16 = [[_PASTuple2 alloc] initWithFirst:v15 second:v9];
    [listeners setObject:v16 forKeyedSubscript:v7];

    objc_sync_exit(v10);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = objc_opt_class();
      v17 = v24;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Registered for XPC service '%@' with delegate of class %@", buf, 0x16u);
    }

    [v15 resume];
    v10 = v15;
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end