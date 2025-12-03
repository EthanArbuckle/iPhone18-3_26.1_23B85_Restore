@interface _LTDDaemon
+ (id)buildDateWithError:(id *)error;
+ (id)realPathFor:(id)for error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_LTDDaemon)init;
- (id)_cacheDirectoryPath;
- (void)_cacheDirectoryPath;
- (void)_setupMemoryWarningListener;
- (void)_setupNotifyHandlers;
- (void)clientConnectionClosed:(id)closed;
- (void)run;
@end

@implementation _LTDDaemon

+ (id)buildDateWithError:(id *)error
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  lastPathComponent = [bundleURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v8 = [bundleURL URLByAppendingPathComponent:stringByDeletingPathExtension];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v8 path];
  v16 = 0;
  v11 = [defaultManager attributesOfItemAtPath:path error:&v16];
  v12 = v16;

  if (error && v12)
  {
    v13 = v12;
    v14 = 0;
    *error = v12;
  }

  else
  {
    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
    if (!v14)
    {
      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
    }
  }

  return v14;
}

- (_LTDDaemon)init
{
  v14.receiver = self;
  v14.super_class = _LTDDaemon;
  v2 = [(_LTDDaemon *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = array;

    v5 = objc_alloc_init(_LTTranslationServer);
    server = v2->_server;
    v2->_server = v5;

    [_LTDAssetService setCleanupScheduler:v2->_server];
    v7 = dispatch_queue_create("com.apple.translation.daemon.listener", 0);
    listenerQueue = v2->_listenerQueue;
    v2->_listenerQueue = v7;

    v9 = dispatch_queue_create("com.apple.translation.daemon.notifyHander", 0);
    notifyHandlerQueue = v2->_notifyHandlerQueue;
    v2->_notifyHandlerQueue = v9;

    [_LTDAssetService bootstrapWithCompletion:0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults registerDefaults:&unk_284868180];

    v12 = v2;
  }

  return v2;
}

- (void)run
{
  v14 = *MEMORY[0x277D85DE8];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v3 = _LTOSLogSandbox();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = __error();
      v6 = strerror(*v5);
      v12 = 136446210;
      v13 = v6;
      _os_log_error_impl(&dword_232E53000, v4, OS_LOG_TYPE_ERROR, "Failed to set user dir suffix: %{public}s", &v12, 0xCu);
    }
  }

  [(_LTDDaemon *)self _enterSandbox];
  [(_LTDDaemon *)self _setupMemoryWarningListener];
  [(_LTDDaemon *)self _setupNotifyHandlers];
  v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.translationd"];
  translationListener = self->_translationListener;
  self->_translationListener = v7;

  [(NSXPCListener *)self->_translationListener _setQueue:self->_listenerQueue];
  [(NSXPCListener *)self->_translationListener setDelegate:self];
  [(NSXPCListener *)self->_translationListener resume];
  v9 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.translation.text"];
  textTranslationListener = self->_textTranslationListener;
  self->_textTranslationListener = v9;

  [(NSXPCListener *)self->_textTranslationListener _setQueue:self->_listenerQueue];
  [(NSXPCListener *)self->_textTranslationListener setDelegate:self];
  [(NSXPCListener *)self->_textTranslationListener resume];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop run];

  exit(1);
}

- (void)_setupMemoryWarningListener
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41___LTDDaemon__setupMemoryWarningListener__block_invoke;
  v2[3] = &unk_2789B53F0;
  objc_copyWeak(&v3, &location);
  if (_setupMemoryWarningListener_once != -1)
  {
    dispatch_once(&_setupMemoryWarningListener_once, v2);
  }

  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)_cacheDirectoryPath
{
  v7 = *MEMORY[0x277D85DE8];
  if (!confstr(65538, v6, 0x400uLL))
  {
    v5 = _LTOSLogSandbox();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_LTDDaemon *)v5 _cacheDirectoryPath];
    }

    exit(1);
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_listenerQueue);
  translationListener = self->_translationListener;
  if (translationListener != listenerCopy)
  {
    if (self->_textTranslationListener == listenerCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.private.translation"];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v13 = _LTOSLogXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTDDaemon listener:v13 shouldAcceptNewConnection:connectionCopy];
    }

    goto LABEL_8;
  }

LABEL_5:
  listenerCopy = [[_LTClientConnection alloc] initWithConnection:connectionCopy server:self->_server trusted:translationListener == listenerCopy];
  [(_LTClientConnection *)listenerCopy setDelegate:self];
  [(NSMutableArray *)self->_connections addObject:listenerCopy];
  [connectionCopy resume];

  v12 = 1;
LABEL_9:

  return v12;
}

- (void)clientConnectionClosed:(id)closed
{
  closedCopy = closed;
  objc_initWeak(&location, self);
  listenerQueue = self->_listenerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37___LTDDaemon_clientConnectionClosed___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = closedCopy;
  v6 = closedCopy;
  dispatch_async(listenerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (id)realPathFor:(id)for error:(id *)error
{
  v5 = realpath_DARWIN_EXTSN([for UTF8String], 0);
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    free(v6);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setupNotifyHandlers
{
  objc_initWeak(&location, self);
  notifyHandlerQueue = self->_notifyHandlerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___LTDDaemon__setupNotifyHandlers__block_invoke;
  v4[3] = &unk_2789B5F68;
  objc_copyWeak(&v5, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", notifyHandlerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_cacheDirectoryPath
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = __error();
  v3 = strerror(*v2);
  v5 = 136446210;
  v6 = v3;
  _os_log_error_impl(&dword_232E53000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to get cache directory: %{public}s", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109378;
  v5[1] = [a2 processIdentifier];
  v6 = 2114;
  v7 = @"com.apple.private.translation";
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Rejected Translation client with PID %d lacking the appropriate entitlement (%{public}@).", v5, 0x12u);

  v4 = *MEMORY[0x277D85DE8];
}

@end