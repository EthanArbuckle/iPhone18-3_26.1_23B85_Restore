@interface RMXPCNotifications
+ (RMXPCNotifications)sharedNotifier;
- (BOOL)hasObserverForEvent:(id)a3;
- (id)initPrivate;
- (void)_addXPCEvent:(id)a3;
- (void)_didReceiveNotificationForStream:(id)a3 notificationName:(id)a4;
- (void)_removeXPCEvent:(id)a3;
- (void)_setupEventStreamHandlerForStream:(id)a3;
- (void)_waitForQueue:(id)a3;
- (void)addObserverForEvent:(id)a3 observer:(id)a4;
- (void)registerForEvents:(id)a3;
- (void)removeObserverForEvent:(id)a3;
@end

@implementation RMXPCNotifications

+ (RMXPCNotifications)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[RMXPCNotifications sharedNotifier];
  }

  v3 = sharedNotifier_notifier;

  return v3;
}

uint64_t __36__RMXPCNotifications_sharedNotifier__block_invoke()
{
  sharedNotifier_notifier = [[RMXPCNotifications alloc] initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initPrivate
{
  v12.receiver = self;
  v12.super_class = RMXPCNotifications;
  v2 = [(RMXPCNotifications *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_registered = 0;
    v4 = objc_opt_new();
    pendingNotifications = v3->_pendingNotifications;
    v3->_pendingNotifications = v4;

    v6 = objc_opt_new();
    notificationObservers = v3->_notificationObservers;
    v3->_notificationObservers = v6;

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.remotemanagementd.xpcNotificationsQueue"];
    v9 = dispatch_queue_create([v8 cStringUsingEncoding:4], 0);
    modificationQueue = v3->_modificationQueue;
    v3->_modificationQueue = v9;
  }

  return v3;
}

- (void)registerForEvents:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(RMXPCNotifications *)self registered])
  {
    v5 = +[RMLog xpcNotifications];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [RMXPCNotifications registerForEvents:v5];
    }
  }

  else
  {
    [(RMXPCNotifications *)self setRegistered:1];
    v5 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) streamName];
          if (([v5 containsObject:v11]& 1) == 0)
          {
            [(RMXPCNotifications *)self _setupEventStreamHandlerForStream:v11];
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasObserverForEvent:(id)a3
{
  v4 = a3;
  v5 = [(RMXPCNotifications *)self notificationObservers];
  v6 = [v4 eventKey];

  v7 = [v5 objectForKey:v6];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (void)addObserverForEvent:(id)a3 observer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(RMXPCNotifications *)self modificationQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke;
  v11[3] = &unk_1E8706320;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) eventKey];
    v4 = [WeakRetained notificationObservers];
    v5 = [v4 objectForKey:v3];

    v6 = +[RMLog xpcNotifications];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke_cold_2();
      }

      v8 = *(a1 + 40);
      v9 = [WeakRetained notificationObservers];
      [v9 setObject:v8 forKeyedSubscript:v3];

      [WeakRetained _addXPCEvent:*(a1 + 32)];
      v10 = [WeakRetained pendingNotifications];
      LODWORD(v9) = [v10 containsObject:v3];

      if (!v9)
      {
        goto LABEL_10;
      }

      v11 = [*(a1 + 32) streamName];
      v12 = [*(a1 + 32) notificationName];
      [WeakRetained _didReceiveNotificationForStream:v11 notificationName:v12];

      v7 = [WeakRetained pendingNotifications];
      [v7 removeObject:v3];
    }

LABEL_10:
  }
}

- (void)removeObserverForEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(RMXPCNotifications *)self modificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__RMXPCNotifications_removeObserverForEvent___block_invoke;
  block[3] = &unk_1E8706348;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__RMXPCNotifications_removeObserverForEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) eventKey];
    v4 = [WeakRetained notificationObservers];
    v5 = [v4 objectForKey:v3];

    v6 = +[RMLog xpcNotifications];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        __45__RMXPCNotifications_removeObserverForEvent___block_invoke_cold_1();
      }

      v6 = [WeakRetained notificationObservers];
      [v6 removeObjectForKey:v3];
    }

    else if (v7)
    {
      __45__RMXPCNotifications_removeObserverForEvent___block_invoke_cold_2();
    }

    [WeakRetained _removeXPCEvent:*(a1 + 32)];
  }
}

- (void)_setupEventStreamHandlerForStream:(id)a3
{
  v4 = a3;
  v5 = +[RMLog xpcNotifications];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMXPCNotifications _setupEventStreamHandlerForStream:];
  }

  v6 = [v4 cStringUsingEncoding:4];
  v7 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__RMXPCNotifications__setupEventStreamHandlerForStream___block_invoke;
  v9[3] = &unk_1E8706370;
  v10 = v4;
  v11 = self;
  v8 = v4;
  xpc_set_event_stream_handler(v6, v7, v9);
}

void __56__RMXPCNotifications__setupEventStreamHandlerForStream___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E40])}];
  v4 = +[RMLog xpcNotifications];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __56__RMXPCNotifications__setupEventStreamHandlerForStream___block_invoke_cold_1(a1, v3, v4);
  }

  [*(a1 + 40) _didReceiveNotificationForStream:*(a1 + 32) notificationName:v3];
}

- (void)_addXPCEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  v5 = [v3 streamName];
  [v5 cStringUsingEncoding:4];
  v6 = [v3 notificationName];

  [v6 cStringUsingEncoding:4];
  xpc_set_event();
}

- (void)_removeXPCEvent:(id)a3
{
  v3 = a3;
  v6 = [v3 streamName];
  v4 = v6;
  [v6 cStringUsingEncoding:4];
  v5 = [v3 notificationName];

  [v5 cStringUsingEncoding:4];
  xpc_set_event();
}

- (void)_didReceiveNotificationForStream:(id)a3 notificationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(RMXPCNotifications *)self modificationQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke;
  v11[3] = &unk_1E8706320;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [RMXPCEvent eventKeyForStream:a1[4] notificationName:a1[5]];
    v4 = [WeakRetained notificationObservers];
    v5 = [v4 objectForKeyedSubscript:v3];

    v6 = +[RMLog xpcNotifications];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke_cold_1();
      }

      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke_14;
      block[3] = &unk_1E8706398;
      v11 = v5;
      v12 = a1[4];
      v13 = a1[5];
      dispatch_async(v8, block);

      v9 = v11;
    }

    else
    {
      if (v7)
      {
        __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke_cold_2();
      }

      v9 = [WeakRetained pendingNotifications];
      [v9 addObject:v3];
    }
  }
}

- (void)_waitForQueue:(id)a3
{
  v4 = a3;
  v5 = [(RMXPCNotifications *)self modificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__RMXPCNotifications__waitForQueue___block_invoke;
  block[3] = &unk_1E87063C0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1E1168000, v0, OS_LOG_TYPE_ERROR, "Only one observer can be registered for notification: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __51__RMXPCNotifications_addObserverForEvent_observer___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "Adding observer for notification: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__RMXPCNotifications_removeObserverForEvent___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "Removing observer for notification: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__RMXPCNotifications_removeObserverForEvent___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "No observer registered for notification: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setupEventStreamHandlerForStream:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "Adding handler for stream: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__RMXPCNotifications__setupEventStreamHandlerForStream___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_debug_impl(&dword_1E1168000, log, OS_LOG_TYPE_DEBUG, "Received XPC event stream: %{public}@, event name: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "Dispatching notification to observer: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__RMXPCNotifications__didReceiveNotificationForStream_notificationName___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "Notification has no observer: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end