@interface SFCompanionManager
+ (id)serviceManager;
- (SFCompanionManager)init;
- (id)serviceForIdentifier:(id)identifier;
- (id)streamDataForIdentifier:(id)identifier;
- (void)dealloc;
- (void)disableStreamSupportForIdentifier:(id)identifier;
- (void)getStreamsForData:(id)data withStreamHandler:(id)handler;
- (void)retrieveManagerProxy;
- (void)signalSemaphore;
- (void)streamToService:(id)service withFileHandle:(id)handle acceptReply:(id)reply;
- (void)streamsFromFileHandle:(id)handle withCompletionHandler:(id)handler;
- (void)supportStreamsWithIdentifier:(id)identifier withStreamHandler:(id)handler;
- (void)xpcManagerConnectionInterrupted;
- (void)xpcManagerDidInvalidate:(id)invalidate;
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

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;

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

- (id)serviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceIdentifierQueue = [(SFCompanionManager *)self serviceIdentifierQueue];

  if (!serviceIdentifierQueue)
  {
    v6 = dispatch_queue_create("com.apple.sharing.service-identifier-queue", 0);
    [(SFCompanionManager *)self setServiceIdentifierQueue:v6];
  }

  serviceIdentifierQueue2 = [(SFCompanionManager *)self serviceIdentifierQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFCompanionManager_serviceForIdentifier___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(serviceIdentifierQueue2, block);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_services objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  deviceID = [v9 deviceID];

  if (!deviceID)
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

- (id)streamDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SFCompanionManager *)self serviceForIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    messageData = [v5 messageData];
  }

  else
  {
    messageData = 0;
  }

  return messageData;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_managerSemaphore)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Signaling the semaphore", v4, 2u);
    }

    dispatch_semaphore_signal(selfCopy->_managerSemaphore);
  }

  objc_sync_exit(selfCopy);
}

- (void)streamToService:(id)service withFileHandle:(id)handle acceptReply:(id)reply
{
  serviceCopy = service;
  handleCopy = handle;
  replyCopy = reply;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (handleCopy)
  {
    streamHandlers = self->_streamHandlers;
    identifier = [serviceCopy identifier];
    v13 = [(NSMutableDictionary *)streamHandlers objectForKeyedSubscript:identifier];

    if (v13)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __65__SFCompanionManager_streamToService_withFileHandle_acceptReply___block_invoke;
      v29[3] = &unk_1E788CF30;
      v31 = &v32;
      v30 = v13;
      [(SFCompanionManager *)self streamsFromFileHandle:handleCopy withCompletionHandler:v29];
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

  replyCopy[2](replyCopy, *(v33 + 24));
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

- (void)xpcManagerDidInvalidate:(id)invalidate
{
  managerProxy = self->_managerProxy;
  self->_managerProxy = 0;

  [(SFCompanionManager *)self signalSemaphore];
}

- (void)getStreamsForData:(id)data withStreamHandler:(id)handler
{
  v16[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  v15 = 0;
  v16[0] = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:v16 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = streams_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionManager *)v9 getStreamsForData:v16 withStreamHandler:v10];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
  }

  else
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFCompanionManager_getStreamsForData_withStreamHandler___block_invoke;
    v13[3] = &unk_1E788CF80;
    v13[4] = self;
    v14 = handlerCopy;
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

- (void)supportStreamsWithIdentifier:(id)identifier withStreamHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [[SFCompanionService alloc] initWithServiceName:identifierCopy];
  [(SFCompanionService *)v9 setManagerID:selfCopy->_identifier];
  deviceName = [(SFCompanionManager *)selfCopy deviceName];
  [(SFCompanionService *)v9 setDeviceName:deviceName];

  deviceID = [(SFCompanionManager *)selfCopy deviceID];
  [(SFCompanionService *)v9 setDeviceID:deviceID];

  deviceIP = [(SFCompanionManager *)selfCopy deviceIP];
  [(SFCompanionService *)v9 setIpAddress:deviceIP];

  [(NSMutableDictionary *)selfCopy->_services setObject:v9 forKeyedSubscript:identifierCopy];
  if (handlerCopy)
  {
    v13 = streams_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Storing stream handler", buf, 2u);
    }

    v14 = [handlerCopy copy];
    v15 = _Block_copy(v14);
    streamHandlers = selfCopy->_streamHandlers;
    identifier = [(SFCompanionService *)v9 identifier];
    [(NSMutableDictionary *)streamHandlers setObject:v15 forKeyedSubscript:identifier];
  }

  managerProxy = selfCopy->_managerProxy;
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

  objc_sync_exit(selfCopy);
}

- (void)disableStreamSupportForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_services objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6 && ([v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    managerProxy = selfCopy->_managerProxy;
    if (managerProxy)
    {
      [(SFCompanionServiceManagerProtocol *)managerProxy disableService:v7];
    }

    [(NSMutableDictionary *)selfCopy->_services removeObjectForKey:identifierCopy];
    streamHandlers = selfCopy->_streamHandlers;
    identifier = [v7 identifier];
    [(NSMutableDictionary *)streamHandlers removeObjectForKey:identifier];
  }

  else
  {
    identifier = streams_log();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A9662000, identifier, OS_LOG_TYPE_DEFAULT, "Trying to disable service that has never been enabled", v12, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)streamsFromFileHandle:(id)handle withCompletionHandler:(id)handler
{
  stream = 0;
  readStream = 0;
  handlerCopy = handler;
  handleCopy = handle;
  v7 = dup([handleCopy fileDescriptor]);
  CFStreamCreatePairWithSocket(0, v7, &readStream, &stream);
  v8 = *MEMORY[0x1E695E940];
  v9 = *MEMORY[0x1E695E4D0];
  CFReadStreamSetProperty(readStream, *MEMORY[0x1E695E940], *MEMORY[0x1E695E4D0]);
  CFWriteStreamSetProperty(stream, v8, v9);
  [handleCopy closeFile];

  handlerCopy[2](handlerCopy, readStream, stream);
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