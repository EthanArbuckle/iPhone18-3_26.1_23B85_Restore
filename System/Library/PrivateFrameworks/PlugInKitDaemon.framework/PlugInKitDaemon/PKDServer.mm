@interface PKDServer
- (PKDServer)init;
- (PKDServer)initWithConnection:(id)connection queue:(id)queue database:(id)database externalProviders:(id)providers;
- (id)holdOnPlugIn:(id)in;
- (id)initForService:(const char *)service database:(id)database externalProviders:(id)providers;
- (void)addHold:(id)hold silent:(BOOL)silent;
- (void)removedPlugIns:(id)ins;
- (void)run;
- (void)stop;
- (void)terminatePlugIns:(id)ins synchronously:(BOOL)synchronously reply:(id)reply;
- (void)unholdClient:(id)client;
- (void)unholdToken:(id)token silent:(BOOL)silent;
@end

@implementation PKDServer

- (PKDServer)init
{
  v5.receiver = self;
  v5.super_class = PKDServer;
  v2 = [(PKDServer *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v2 = [(PKDServer *)v2 initForService:"com.apple.pluginkit.pkd" database:0 externalProviders:v3];
  }

  return v2;
}

- (id)initForService:(const char *)service database:(id)database externalProviders:(id)providers
{
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  providersCopy = providers;
  databaseCopy = database;
  v12 = dispatch_queue_create("xpc", v9);

  mach_service = xpc_connection_create_mach_service(service, v12, 1uLL);
  v14 = [(PKDServer *)self initWithConnection:mach_service queue:v12 database:databaseCopy externalProviders:providersCopy];

  return v14;
}

- (PKDServer)initWithConnection:(id)connection queue:(id)queue database:(id)database externalProviders:(id)providers
{
  connectionCopy = connection;
  queueCopy = queue;
  databaseCopy = database;
  providersCopy = providers;
  v34.receiver = self;
  v34.super_class = PKDServer;
  v14 = [(PKDatabase *)&v34 initWithDatabase:databaseCopy externalProviders:providersCopy];
  v15 = v14;
  if (v14)
  {
    [(PKDServer *)v14 setXpcQueue:queueCopy];
    [(PKDServer *)v15 setHoldLock:0];
    [(PKDServer *)v15 setService:connectionCopy];
    v16 = +[NSMutableArray array];
    [(PKDServer *)v15 setHolds:v16];

    [(PKDatabase *)v15 setDelegate:v15];
    service = v15->_service;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke;
    handler[3] = &unk_28B80;
    v18 = v15;
    v33 = v18;
    xpc_connection_set_event_handler(service, handler);
    v19 = objc_alloc_init(PKDUserPrefs);
    [(PKDServer *)v18 setUserPrefs:v19];

    v20 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
    [(PKDServer *)v18 setSigSource:v20];

    objc_initWeak(&location, v18);
    sigSource = [(PKDServer *)v18 sigSource];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke_11;
    v28 = &unk_28BA8;
    objc_copyWeak(&v30, &location);
    v22 = v18;
    v29 = v22;
    dispatch_source_set_event_handler(sigSource, &v25);

    v23 = [(PKDServer *)v22 sigSource:v25];
    dispatch_activate(v23);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type != &_xpc_type_connection)
  {
    if (type == &_xpc_type_error)
    {
      v7 = pklog_handle_for_category();
      v5 = v7;
      if (v3 == &_xpc_error_connection_invalid)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138543362;
          v9 = &_xpc_error_connection_invalid;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "potentially unexpected error from xpc: %{public}@", &v8, 0xCu);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke_cold_2();
      }
    }

    else
    {
      v5 = pklog_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke_cold_1();
      }
    }

    goto LABEL_13;
  }

  v6 = [[PKDXpcClient alloc] initWithConnection:v3 server:*(a1 + 32)];
  if (!v6)
  {
    xpc_connection_cancel(v3);
LABEL_13:
    v6 = 0;
  }
}

void __65__PKDServer_initWithConnection_queue_database_externalProviders___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stop];

  v4 = [*(a1 + 32) external];
  v3 = [v4 sys];
  [v3 exit:0];
}

- (void)run
{
  [(PKDServer *)self _startSandbox];
  objc_opt_class();
  service = [(PKDServer *)self service];
  xpc_connection_resume(service);

  external = [(PKDatabase *)self external];
  v4 = [external sys];
  [v4 CFRunLoopRun];
}

- (void)removedPlugIns:(id)ins
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __28__PKDServer_removedPlugIns___block_invoke;
  v5[3] = &unk_28BD0;
  insCopy = ins;
  v4 = insCopy;
  [(PKDServer *)self terminatePlugIns:v4 synchronously:0 reply:v5];
}

void __28__PKDServer_removedPlugIns___block_invoke(uint64_t a1)
{
  v2 = pklog_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __28__PKDServer_removedPlugIns___block_invoke_cold_1(a1, v2);
  }
}

- (void)terminatePlugIns:(id)ins synchronously:(BOOL)synchronously reply:(id)reply
{
  synchronouslyCopy = synchronously;
  insCopy = ins;
  replyCopy = reply;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = dispatch_queue_create("killer", v7);

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("killer-waiter", v8);

  v9 = dispatch_group_create();
  v25 = [insCopy count];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = insCopy;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v10)
  {
    v30 = *v41;
    do
    {
      v11 = 0;
      if (v10 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v40 + 1) + 8 * v11);
        launchdIdentifier = [v18 launchdIdentifier];
        launchdVersion = [v18 launchdVersion];
        v21 = pklog_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = launchdIdentifier;
          v46 = 2114;
          v47 = launchdVersion;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%@: requesting termination from launchd, version [%{public}@]", buf, 0x16u);
        }

        dispatch_group_enter(v9);
        external = [(PKDatabase *)self external];
        launch = [external launch];
        uTF8String = [launchdIdentifier UTF8String];
        uTF8String2 = [launchdVersion UTF8String];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke;
        v37[3] = &unk_28BF8;
        v38 = launchdIdentifier;
        v39 = v9;
        v17 = launchdIdentifier;
        [launch remove_external_service:uTF8String version:uTF8String2 targetq:v32 callback:v37];

        ++v11;
      }

      while (v12 != v11);
      v10 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_17;
  v33[3] = &unk_28C20;
  v35 = replyCopy;
  v36 = v25;
  v34 = v9;
  v22 = replyCopy;
  v23 = v9;
  v24 = objc_retainBlock(v33);
  if (synchronouslyCopy)
  {
    dispatch_sync(queue, v24);
  }

  else
  {
    dispatch_async(queue, v24);
  }
}

void __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke(uint64_t a1, int a2)
{
  v4 = pklog_handle_for_category();
  v5 = v4;
  if (a2 == 3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      v7 = "%@: launchd reported no running plugins on record";
      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_cold_1(a1, a2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412290;
    v10 = v6;
    v7 = "%@: one or more plugins have been terminated";
LABEL_7:
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_17(uint64_t a1)
{
  v2 = pklog_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_17_cold_1(a1, v2);
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v3 = pklog_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_17_cold_2(v3);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)holdOnPlugIn:(id)in
{
  inCopy = in;
  v5 = 88;
  os_unfair_lock_lock(&self->_holdLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  holds = [(PKDServer *)self holds];
  v7 = [holds countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    v9 = PKSDKInfoKey;
    v20 = 88;
    selfCopy = self;
    while (2)
    {
      v10 = 0;
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7;
      }

      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(holds);
        }

        v12 = *(*(&v22 + 1) + 8 * v10);
        extensionPointName = [v12 extensionPointName];
        v14 = [inCopy pluginKey:v9];
        v15 = [extensionPointName isEqualToString:v14];

        if (v15 & 1) != 0 || ([v12 blocked], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", inCopy), v16, (v17))
        {
          v18 = v12;
          v5 = v20;
          self = selfCopy;
          goto LABEL_15;
        }

        ++v10;
      }

      while (v11 != v10);
      v7 = [holds countByEnumeratingWithState:&v22 objects:v26 count:16];
      v18 = 0;
      v5 = v20;
      self = selfCopy;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  os_unfair_lock_unlock((self + v5));

  return v18;
}

- (void)addHold:(id)hold silent:(BOOL)silent
{
  holdCopy = hold;
  os_unfair_lock_lock(&self->_holdLock);
  holds = [(PKDServer *)self holds];
  [holds addObject:holdCopy];

  os_unfair_lock_unlock(&self->_holdLock);
  if (!silent)
  {

    PKAnnotationNotificationPost();
  }
}

- (void)unholdToken:(id)token silent:(BOOL)silent
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_holdLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  holds = [(PKDServer *)self holds];
  v7 = [holds countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      v9 = 0;
      if (v7 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(holds);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        uuid = [v11 uuid];
        v13 = [uuid isEqual:tokenCopy];

        if (v13)
        {
          v14 = pklog_handle_for_category();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [v11 uuid];
            uUIDString = [uuid2 UUIDString];
            *buf = 138543362;
            v24 = uUIDString;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "releasing plugin hold %{public}@ at client's request", buf, 0xCu);
          }

          holds2 = [(PKDServer *)self holds];
          [holds2 removeObject:v11];

          if (!silent)
          {
            PKAnnotationNotificationPost();
          }

          goto LABEL_16;
        }

        ++v9;
      }

      while (v10 != v9);
      v7 = [holds countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  os_unfair_lock_unlock(&self->_holdLock);
}

- (void)unholdClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_holdLock);
  holds = [(PKDServer *)self holds];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __26__PKDServer_unholdClient___block_invoke;
  v9[3] = &unk_28C48;
  v10 = clientCopy;
  v6 = clientCopy;
  v7 = [holds indexesOfObjectsPassingTest:v9];

  if ([v7 count])
  {
    holds2 = [(PKDServer *)self holds];
    [holds2 removeObjectsAtIndexes:v7];

    PKAnnotationNotificationPost();
  }

  os_unfair_lock_unlock(&self->_holdLock);
}

BOOL __26__PKDServer_unholdClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 client];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = pklog_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 uuid];
      v8 = [v7 UUIDString];
      v9 = [*(a1 + 32) pid];
      v11 = 138543618;
      v12 = v8;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "releasing plugin hold %{public}@ for dead client pid %d", &v11, 0x12u);
    }
  }

  return v4 == v5;
}

- (void)stop
{
  service = [(PKDServer *)self service];
  xpc_connection_cancel(service);

  os_unfair_lock_lock(&self->_holdLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  holds = [(PKDServer *)self holds];
  v5 = [holds countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(holds);
        }

        v9 = *(*(&v15 + 1) + 8 * v7);
        v10 = pklog_handle_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v9 uuid];
          uUIDString = [uuid UUIDString];
          *buf = 138543362;
          v20 = uUIDString;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "releasing plugin hold %{public}@ because server is stopping", buf, 0xCu);
        }

        ++v7;
      }

      while (v8 != v7);
      v5 = [holds countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  holds2 = [(PKDServer *)selfCopy holds];
  [holds2 removeAllObjects];

  PKAnnotationNotificationPost();
  os_unfair_lock_unlock(&selfCopy->_holdLock);
}

void __28__PKDServer_removedPlugIns___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "removal complete for %@", &v3, 0xCu);
}

void __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%@: launchd error attempting to terminate plugins: error=%d", &v4, 0x12u);
}

void __50__PKDServer_terminatePlugIns_synchronously_reply___block_invoke_17_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "waiting for %d termination replies", v3, 8u);
}

@end