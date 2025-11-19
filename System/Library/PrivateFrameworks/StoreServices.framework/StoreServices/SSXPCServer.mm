@interface SSXPCServer
+ (id)mainServer;
- (SSXPCServer)initWithServiceName:(id)a3 entitlement:(id)a4 queue:(id)a5;
- (void)_dispatchMessage:(id)a3 connection:(id)a4;
- (void)_recordCoreAnalyticsEventForClient:(id)a3 andSelector:(id)a4;
- (void)addObserver:(id)a3 selector:(SEL)a4 forMessage:(int64_t)a5;
- (void)dealloc;
- (void)removeObserver:(id)a3 selector:(SEL)a4 forMessage:(int64_t)a5;
- (void)start;
@end

@implementation SSXPCServer

uint64_t __20__SSXPCServer_start__block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_set_target_queue(a2, *(a1 + 32));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __20__SSXPCServer_start__block_invoke_2;
    v8[3] = &unk_1E84B0740;
    v6 = *(a1 + 40);
    v8[4] = a2;
    v8[5] = v6;
    xpc_connection_set_event_handler(a2, v8);
    xpc_connection_resume(a2);
  }

  return [v4 drain];
}

uint64_t __20__SSXPCServer_start__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 != MEMORY[0x1E69E9E20])
  {
    v3 = result;
    result = MEMORY[0x1DA6E0380](a2);
    if (result == MEMORY[0x1E69E9E80])
    {
      v4 = *(v3 + 32);
      v5 = *(*(*(v3 + 40) + 8) + 40);

      return [v5 _dispatchMessage:a2 connection:v4];
    }
  }

  return result;
}

- (SSXPCServer)initWithServiceName:(id)a3 entitlement:(id)a4 queue:(id)a5
{
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = SSXPCServer;
    v8 = [(SSXPCServer *)&v10 init];
    if (v8)
    {
      v8->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSXPCServer", 0);
      v8->_entitlementName = [a4 copy];
      v8->_observers = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8->_serviceName = [a3 copy];
      v8->_xpcRequestsCache = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (a5)
      {
        v8->_observerQueue = a5;
        dispatch_retain(a5);
      }
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid service name"];
    return 0;
  }

  return v8;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  listener = self->_listener;
  if (listener)
  {
    xpc_release(listener);
  }

  observerQueue = self->_observerQueue;
  if (observerQueue)
  {
    dispatch_release(observerQueue);
  }

  v6.receiver = self;
  v6.super_class = SSXPCServer;
  [(SSXPCServer *)&v6 dealloc];
}

+ (id)mainServer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SSXPCServer_mainServer__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = a1;
  if (mainServer_sOnce != -1)
  {
    dispatch_once(&mainServer_sOnce, block);
  }

  return mainServer_sMainServer;
}

uint64_t __25__SSXPCServer_mainServer__block_invoke()
{
  mainServer_sMainServerQueue = dispatch_queue_create("com.apple.StoreServices.SSXPCServer.main", 0);
  result = [objc_alloc(objc_opt_class()) initWithServiceName:@"com.apple.itunesstored.xpc" entitlement:0 queue:mainServer_sMainServerQueue];
  mainServer_sMainServer = result;
  return result;
}

- (void)addObserver:(id)a3 selector:(SEL)a4 forMessage:(int64_t)a5
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SSXPCServer_addObserver_selector_forMessage___block_invoke;
  v6[3] = &unk_1E84B0D28;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a5;
  v6[7] = a4;
  dispatch_sync(dispatchQueue, v6);
}

void __47__SSXPCServer_addObserver_selector_forMessage___block_invoke(void *a1)
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  v2 = [*(a1[4] + 40) objectForKey:?];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1[4] + 40) setObject:v2 forKey:v5];
    v3 = v2;
  }

  v4 = objc_alloc_init(SSXPCServerObserver);
  [(SSXPCServerObserver *)v4 setObserver:a1[5]];
  [(SSXPCServerObserver *)v4 setSelector:a1[7]];
  [v2 addObject:v4];
}

- (void)removeObserver:(id)a3 selector:(SEL)a4 forMessage:(int64_t)a5
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSXPCServer_removeObserver_selector_forMessage___block_invoke;
  v6[3] = &unk_1E84B0D28;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a5;
  v6[7] = a4;
  dispatch_sync(dispatchQueue, v6);
}

void __50__SSXPCServer_removeObserver_selector_forMessage___block_invoke(void *a1)
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  v2 = [*(a1[4] + 40) objectForKey:?];
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(SSXPCServerObserver);
    [(SSXPCServerObserver *)v4 setObserver:a1[5]];
    [(SSXPCServerObserver *)v4 setSelector:a1[7]];
    v5 = [v3 indexOfObject:a1[5]];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 removeObjectAtIndex:v5];
    }
  }
}

- (void)start
{
  observerQueue = self->_observerQueue;
  if (!observerQueue)
  {
    observerQueue = dispatch_get_global_queue(0, 0);
  }

  mach_service = xpc_connection_create_mach_service([(NSString *)self->_serviceName UTF8String], observerQueue, 1uLL);
  self->_listener = mach_service;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__37;
  v6[4] = __Block_byref_object_dispose__37;
  v6[5] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__SSXPCServer_start__block_invoke;
  v5[3] = &unk_1E84B0740;
  v5[4] = observerQueue;
  v5[5] = v6;
  xpc_connection_set_event_handler(mach_service, v5);
  xpc_connection_resume(self->_listener);
  _Block_object_dispose(v6, 8);
}

- (void)_dispatchMessage:(id)a3 connection:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  memset(v82, 0, sizeof(v82));
  xpc_connection_get_audit_token();
  v66 = CPCopyBundleIdentifierFromAuditToken();
  v4 = MKBDeviceUnlockedSinceBoot();
  v5 = v4;
  if (v4 != 1)
  {
    if (v4)
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v10 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_FAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 2;
      }

      if (!v12)
      {
        goto LABEL_25;
      }

      LODWORD(v82[0]) = 138543618;
      *(v82 + 4) = objc_opt_class();
      WORD6(v82[0]) = 1024;
      *(v82 + 14) = v5;
      LODWORD(v62) = 18;
      v61 = v82;
    }

    else
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 2;
      }

      if (!v9)
      {
        goto LABEL_25;
      }

      LODWORD(v82[0]) = 138543362;
      *(v82 + 4) = objc_opt_class();
      LODWORD(v62) = 12;
      v61 = v82;
    }

    v13 = _os_log_send_and_compose_impl();
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, v82, v62}];
      free(v14);
      SSFileLog(v6, @"%@", v16, v17, v18, v19, v20, v21, v15);
    }

LABEL_25:
    [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v66 andSelector:@"beforeFirstUnlockClient", v61];
    xpc_connection_cancel(a4);
  }

  entitlementName = self->_entitlementName;
  if (entitlementName && !SSXPCConnectionHasEntitlement(a4, entitlementName))
  {
    v46 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v46)
    {
      v46 = +[SSLogConfig sharedConfig];
    }

    v47 = [v46 shouldLog];
    if ([v46 shouldLogToDisk])
    {
      v48 = v47 | 2;
    }

    else
    {
      v48 = v47;
    }

    if (os_log_type_enabled([v46 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 2;
    }

    if (v49)
    {
      v50 = objc_opt_class();
      v51 = self->_entitlementName;
      LODWORD(v82[0]) = 138412546;
      *(v82 + 4) = v50;
      WORD6(v82[0]) = 2112;
      *(v82 + 14) = v51;
      LODWORD(v62) = 22;
      v61 = v82;
      v52 = _os_log_send_and_compose_impl();
      if (v52)
      {
        v53 = v52;
        v54 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:{4, v82, v62}];
        free(v53);
        SSFileLog(v46, @"%@", v55, v56, v57, v58, v59, v60, v54);
      }
    }

    [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v66 andSelector:@"unentitledClient", v61];
  }

  else
  {
    *&v82[0] = 0;
    *(&v82[0] + 1) = v82;
    *&v82[1] = 0x3052000000;
    *(&v82[1] + 1) = __Block_byref_object_copy__37;
    v83 = __Block_byref_object_dispose__37;
    v84 = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSXPCServer__dispatchMessage_connection___block_invoke;
    block[3] = &unk_1E84B0D50;
    block[5] = self;
    block[6] = v82;
    block[4] = a3;
    dispatch_sync(dispatchQueue, block);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = *(*(&v82[0] + 1) + 40);
    v24 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v24)
    {
      v25 = *v69;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v69 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v68 + 1) + 8 * i);
          v28 = NSStringFromSelector([v27 selector]);
          v29 = +[SSLogConfig sharedDaemonConfig];
          if (!v29)
          {
            v29 = +[SSLogConfig sharedConfig];
          }

          v30 = [v29 shouldLog];
          v31 = [v29 shouldLogToDisk];
          v32 = [v29 OSLogObject];
          if (v31)
          {
            v30 |= 2u;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v30;
          }

          else
          {
            v33 = v30 & 2;
          }

          if (v33)
          {
            v34 = objc_opt_class();
            [v27 observer];
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v73 = 138544130;
            v74 = v34;
            v75 = 2114;
            v76 = v66;
            v77 = 2112;
            v78 = v36;
            v79 = 2112;
            v80 = v28;
            LODWORD(v62) = 42;
            v61 = &v73;
            v37 = _os_log_send_and_compose_impl();
            if (v37)
            {
              v38 = v37;
              v39 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v73, v62}];
              free(v38);
              SSFileLog(v29, @"%@", v40, v41, v42, v43, v44, v45, v39);
            }
          }

          [objc_msgSend(v27 observer];
          [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v66 andSelector:v28];
        }

        v24 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v24);
    }

    _Block_object_dispose(v82, 8);
  }
}

void __43__SSXPCServer__dispatchMessage_connection___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{xpc_dictionary_get_int64(*(a1 + 32), "0")}];
  *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(*(a1 + 40) + 40) objectForKey:{v2), "copy"}];
}

- (void)_recordCoreAnalyticsEventForClient:(id)a3 andSelector:(id)a4
{
  if (+[SSDevice deviceIsInternalBuild])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke;
    block[3] = &unk_1E84AD640;
    block[4] = a3;
    block[5] = a4;
    block[6] = self;
    dispatch_sync(dispatchQueue, block);
  }
}

uint64_t __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = a1[4];
  }

  else
  {
    v2 = @"No Client";
  }

  if (a1[5])
  {
    v3 = a1[5];
  }

  else
  {
    v3 = @"No Selector";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v2, v3];
  result = [*(a1[6] + 56) containsObject:v4];
  if ((result & 1) == 0)
  {
    [*(a1[6] + 56) addObject:v4];
    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = @"Client";
  v2[1] = @"Selector";
  v3 = *(a1 + 32);
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:v2 count:2];
}

@end