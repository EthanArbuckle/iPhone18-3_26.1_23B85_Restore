@interface SFCompanionManager
+ (id)serviceManager;
- (SFCompanionManager)init;
- (id)serviceForIdentifier:(id)a3;
- (id)streamDataForIdentifier:(id)a3;
- (void)dealloc;
- (void)disableStreamSupportForIdentifier:(id)a3;
- (void)getStreamsForData:(id)a3 withStreamHandler:(id)a4;
- (void)retrieveManagerProxy;
- (void)signalSemaphore;
- (void)streamToService:(id)a3 withFileHandle:(id)a4 acceptReply:(id)a5;
- (void)streamsFromFileHandle:(id)a3 withCompletionHandler:(id)a4;
- (void)supportStreamsWithIdentifier:(id)a3 withStreamHandler:(id)a4;
- (void)xpcManagerConnectionInterrupted;
- (void)xpcManagerDidInvalidate:(id)a3;
@end

@implementation SFCompanionManager

+ (id)serviceManager
{
  if (serviceManager_onceToken != -1)
  {
    +[SFCompanionManager serviceManager];
  }

  v3 = serviceManager_serviceManager;

  return v3;
}

void __36__SFCompanionManager_serviceManager__block_invoke()
{
  v0 = objc_alloc_init(SFCompanionManager);
  v1 = serviceManager_serviceManager;
  serviceManager_serviceManager = v0;
}

- (SFCompanionManager)init
{
  v14.receiver = self;
  v14.super_class = SFCompanionManager;
  v2 = [(SFCompanionManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    managerProxy = v2->_managerProxy;
    v2->_managerProxy = 0;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    services = v3->_services;
    v3->_services = v5;

    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    streamHandlers = v3->_streamHandlers;
    v3->_streamHandlers = v10;

    v12 = +[SFCompanionXPCManager sharedManager];
    [v12 registerObserver:v3];

    [(SFCompanionManager *)v3 retrieveManagerProxy];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[SFCompanionXPCManager sharedManager];
  [v3 unregisterObserver:self];

  [(SFCompanionManager *)self signalSemaphore];
  v4.receiver = self;
  v4.super_class = SFCompanionManager;
  [(SFCompanionManager *)&v4 dealloc];
}

- (id)serviceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFCompanionManager *)self serviceIdentifierQueue];

  if (!v5)
  {
    v6 = dispatch_queue_create("com.apple.sharing.service-identifier-queue", 0);
    [(SFCompanionManager *)self setServiceIdentifierQueue:v6];
  }

  v7 = [(SFCompanionManager *)self serviceIdentifierQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFCompanionManager_serviceForIdentifier___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(v7, block);

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_services objectForKeyedSubscript:v4];
  objc_sync_exit(v8);

  v10 = [v9 deviceID];

  if (!v10)
  {
    v11 = streams_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v11 serviceForIdentifier:v12, v13, v14, v15, v16, v17, v18];
    }
  }

  return v9;
}

void __43__SFCompanionManager_serviceForIdentifier___block_invoke(uint64_t a1)
{
  v12 = +[SFCompanionXPCManager sharedManager];
  if ([v12 isInvalid])
  {
  }

  else
  {
    v2 = [*(a1 + 32) managerProxy];

    if (!v2)
    {
      v3 = streams_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Waiting for manager proxy", buf, 2u);
      }

      v4 = dispatch_semaphore_create(0);
      v5 = *(a1 + 32);
      v6 = *(v5 + 72);
      *(v5 + 72) = v4;

      v7 = dispatch_time(0, 4000000000);
      dispatch_semaphore_wait(*(*(a1 + 32) + 72), v7);
      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = 0;

      objc_sync_exit(v8);
      v11 = streams_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Finished Wait", v13, 2u);
      }
    }
  }
}

- (id)streamDataForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFCompanionManager *)self serviceForIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 messageData];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)retrieveManagerProxy
{
  if (self->_managerProxy)
  {
    v2 = streams_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Trying to retrieve manager proxy when one already exists", v6, 2u);
    }
  }

  else
  {
    v4 = +[SFCompanionXPCManager sharedManager];
    identifier = self->_identifier;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SFCompanionManager_retrieveManagerProxy__block_invoke;
    v7[3] = &unk_1E788CF08;
    v7[4] = self;
    [v4 serviceManagerProxyForIdentifier:identifier client:self withCompletionHandler:v7];
  }
}

void __42__SFCompanionManager_retrieveManagerProxy__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11 && v12 && v13)
  {
    [*(a1 + 32) setManagerProxy:v11];
    [*(a1 + 32) setDeviceName:v12];
    [*(a1 + 32) setDeviceID:v13];
    [*(a1 + 32) setDeviceIP:v14];
    v16 = *(a1 + 32);
    objc_sync_enter(v16);
    [*(*(a1 + 32) + 48) allValues];
    v23 = v15;
    v24 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v17 = v26 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v18)
    {
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          [v21 setDeviceName:{v12, v23, v24, v25}];
          [v21 setDeviceID:v13];
          [v21 setIpAddress:v14];
          [*(*(a1 + 32) + 16) enableService:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v18);
    }

    v15 = v23;
    v11 = v24;

    objc_sync_exit(v16);
  }

  else
  {
    v16 = streams_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_error_impl(&dword_1A9662000, v16, OS_LOG_TYPE_ERROR, "Error retrieving proxy object. Returned values (proxy = %@, deviceName = %@, deviceID = %@, deviceIP = %@, error = %@)", buf, 0x34u);
    }
  }

  [*(a1 + 32) signalSemaphore];
  v22 = *MEMORY[0x1E69E9840];
}

- (void)signalSemaphore
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_managerSemaphore)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Signaling the semaphore", v4, 2u);
    }

    dispatch_semaphore_signal(v2->_managerSemaphore);
  }

  objc_sync_exit(v2);
}

- (void)streamToService:(id)a3 withFileHandle:(id)a4 acceptReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v9)
  {
    streamHandlers = self->_streamHandlers;
    v12 = [v8 identifier];
    v13 = [(NSMutableDictionary *)streamHandlers objectForKeyedSubscript:v12];

    if (v13)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __65__SFCompanionManager_streamToService_withFileHandle_acceptReply___block_invoke;
      v29[3] = &unk_1E788CF30;
      v31 = &v32;
      v30 = v13;
      [(SFCompanionManager *)self streamsFromFileHandle:v9 withCompletionHandler:v29];
      v14 = v30;
    }

    else
    {
      v14 = streams_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(SFCompanionManager *)v14 streamToService:v22 withFileHandle:v23 acceptReply:v24, v25, v26, v27, v28];
      }
    }
  }

  else
  {
    v13 = streams_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v13 streamToService:v15 withFileHandle:v16 acceptReply:v17, v18, v19, v20, v21];
    }
  }

  v10[2](v10, *(v33 + 24));
  _Block_object_dispose(&v32, 8);
}

uint64_t __65__SFCompanionManager_streamToService_withFileHandle_acceptReply___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = result;
      result = (*(*(result + 32) + 16))();
      *(*(*(v3 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

- (void)xpcManagerConnectionInterrupted
{
  managerProxy = self->_managerProxy;
  self->_managerProxy = 0;

  v4 = streams_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "XPC Manager connection interrupted", v5, 2u);
  }

  [(SFCompanionManager *)self retrieveManagerProxy];
}

- (void)xpcManagerDidInvalidate:(id)a3
{
  managerProxy = self->_managerProxy;
  self->_managerProxy = 0;

  [(SFCompanionManager *)self signalSemaphore];
}

- (void)getStreamsForData:(id)a3 withStreamHandler:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16[0] = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:v16 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = streams_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v9 getStreamsForData:v16 withStreamHandler:v10];
    }

    (*(v7 + 2))(v7, 0, 0, v9);
  }

  else
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke;
    v13[3] = &unk_1E788CF80;
    v13[4] = self;
    v14 = v7;
    [v11 streamsForMessage:v8 withCompletionHandler:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke_2;
    v9[3] = &unk_1E788CF58;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v8 streamsFromFileHandle:v5 withCompletionHandler:v9];
  }

  else if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)supportStreamsWithIdentifier:(id)a3 withStreamHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [[SFCompanionService alloc] initWithServiceName:v6];
  [(SFCompanionService *)v9 setManagerID:v8->_identifier];
  v10 = [(SFCompanionManager *)v8 deviceName];
  [(SFCompanionService *)v9 setDeviceName:v10];

  v11 = [(SFCompanionManager *)v8 deviceID];
  [(SFCompanionService *)v9 setDeviceID:v11];

  v12 = [(SFCompanionManager *)v8 deviceIP];
  [(SFCompanionService *)v9 setIpAddress:v12];

  [(NSMutableDictionary *)v8->_services setObject:v9 forKeyedSubscript:v6];
  if (v7)
  {
    v13 = streams_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Storing stream handler", buf, 2u);
    }

    v14 = [v7 copy];
    v15 = _Block_copy(v14);
    streamHandlers = v8->_streamHandlers;
    v17 = [(SFCompanionService *)v9 identifier];
    [(NSMutableDictionary *)streamHandlers setObject:v15 forKeyedSubscript:v17];
  }

  managerProxy = v8->_managerProxy;
  if (managerProxy)
  {
    [(SFCompanionServiceManagerProtocol *)managerProxy enableService:v9];
  }

  else
  {
    v19 = streams_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A9662000, v19, OS_LOG_TYPE_DEFAULT, "Service enabled before manager proxy retrieved", v20, 2u);
    }
  }

  objc_sync_exit(v8);
}

- (void)disableStreamSupportForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_services objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6 && ([v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    managerProxy = v5->_managerProxy;
    if (managerProxy)
    {
      [(SFCompanionServiceManagerProtocol *)managerProxy disableService:v7];
    }

    [(NSMutableDictionary *)v5->_services removeObjectForKey:v4];
    streamHandlers = v5->_streamHandlers;
    v11 = [v7 identifier];
    [(NSMutableDictionary *)streamHandlers removeObjectForKey:v11];
  }

  else
  {
    v11 = streams_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Trying to disable service that has never been enabled", v12, 2u);
    }
  }

  objc_sync_exit(v5);
}

- (void)streamsFromFileHandle:(id)a3 withCompletionHandler:(id)a4
{
  stream = 0;
  readStream = 0;
  v5 = a4;
  v6 = a3;
  v7 = dup([v6 fileDescriptor]);
  CFStreamCreatePairWithSocket(0, v7, &readStream, &stream);
  v8 = *MEMORY[0x1E695E940];
  v9 = *MEMORY[0x1E695E4D0];
  CFReadStreamSetProperty(readStream, *MEMORY[0x1E695E940], *MEMORY[0x1E695E4D0]);
  CFWriteStreamSetProperty(stream, v8, v9);
  [v6 closeFile];

  v5[2](v5, readStream, stream);
}

- (void)streamDataForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Caught exception getting endpoint data %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getStreamsForData:(os_log_t)log withStreamHandler:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Deserialization error = %@, format = %ld", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end