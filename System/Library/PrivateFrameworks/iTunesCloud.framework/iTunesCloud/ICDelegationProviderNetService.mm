@interface ICDelegationProviderNetService
- (ICDelegationProviderNetService)initWithNetService:(id)service;
- (NSArray)delegationAccountUUIDs;
- (NSString)deviceName;
- (int64_t)securityMode;
- (void)_resolveWithCompletionHandler:(id)handler;
- (void)_setState:(int64_t)state;
- (void)_updateTXTRecordProperties;
- (void)dealloc;
- (void)getResolvedStreamsWithCompletionHandler:(id)handler;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceDidResolveAddress:(id)address;
@end

@implementation ICDelegationProviderNetService

- (void)_updateTXTRecordProperties
{
  v13 = *MEMORY[0x1E69E9840];
  tXTRecordData = [(NSNetService *)self->_netService TXTRecordData];
  if (tXTRecordData)
  {
    v4 = [[ICDelegationNetServiceTXTRecord alloc] initWithTXTRecordData:tXTRecordData];
  }

  else
  {
    v4 = 0;
  }

  txtRecord = self->_txtRecord;
  if (txtRecord != v4 && ![(ICDelegationNetServiceTXTRecord *)txtRecord isEqual:v4])
  {
    objc_storeStrong(&self->_txtRecord, v4);
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated net service TXTRecord: %{public}@", buf, 0x16u);
    }

    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__ICDelegationProviderNetService__updateTXTRecordProperties__block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

void __60__ICDelegationProviderNetService__updateTXTRecordProperties__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICDelegationProviderNetServiceDelegationAccountUUIDsDidChangeNotification" object:*(a1 + 32)];
}

- (void)_setState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  self->_state = state;
  if (state != 1)
  {
    v4 = [(NSMutableArray *)self->_resolutionCompletionHandlers copy];
    resolutionCompletionHandlers = self->_resolutionCompletionHandlers;
    self->_resolutionCompletionHandlers = 0;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_resolveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_state == 1)
  {
    resolutionCompletionHandlers = self->_resolutionCompletionHandlers;
    if (!resolutionCompletionHandlers)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_resolutionCompletionHandlers;
      self->_resolutionCompletionHandlers = v7;

      resolutionCompletionHandlers = self->_resolutionCompletionHandlers;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ICDelegationProviderNetService__resolveWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E7BF9D20;
    v11 = v5;
    v9 = MEMORY[0x1B8C781E0](v10);
    [(NSMutableArray *)resolutionCompletionHandlers addObject:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

- (int64_t)securityMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__38718;
  v10 = __Block_byref_object_dispose__38719;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__ICDelegationProviderNetService_securityMode__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  securityMode = [v7[5] securityMode];
  _Block_object_dispose(&v6, 8);

  return securityMode;
}

- (NSString)deviceName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__38718;
  v10 = __Block_byref_object_dispose__38719;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ICDelegationProviderNetService_deviceName__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  deviceName = [v7[5] deviceName];
  _Block_object_dispose(&v6, 8);

  return deviceName;
}

- (NSArray)delegationAccountUUIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__38718;
  v10 = __Block_byref_object_dispose__38719;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__ICDelegationProviderNetService_delegationAccountUUIDs__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  delegationAccountUUIDs = [v7[5] delegationAccountUUIDs];
  _Block_object_dispose(&v6, 8);

  return delegationAccountUUIDs;
}

- (void)getResolvedStreamsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E7BF9EC8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _resolveWithCompletionHandler:v2];
}

void __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolved net service.", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    if (!v6)
    {
      v7 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderNetService.netServiceStreamResolutionQueue", 0);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = v7;

      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_7;
    block[3] = &unk_1E7BF9EC8;
    block[4] = v5;
    v15 = *(a1 + 40);
    dispatch_async(v6, block);
    v10 = v15;
  }

  else
  {
    v11 = *(v2 + 16);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_2_11;
    v12[3] = &unk_1E7BF9D20;
    v13 = *(a1 + 40);
    dispatch_async(v11, v12);
    v10 = v13;
  }
}

void __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v22 = 0;
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v25 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting streams...", buf, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 56) getInputStream:&v23 outputStream:&v22];
  v5 = v23;
  v6 = v22;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v6 == 0)
  {
    if (v8)
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to create streams.", buf, 0xCu);
    }

    v12 = *(*(a1 + 32) + 16);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_9;
    v16[3] = &unk_1E7BF9D20;
    v13 = &v17;
    v17 = *(a1 + 40);
    dispatch_async(v12, v16);
  }

  else
  {
    if (v8)
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully created streams.", buf, 0xCu);
    }

    v15 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_8;
    block[3] = &unk_1E7BF9E28;
    v13 = &v21;
    v21 = *(a1 + 40);
    v19 = v23;
    v20 = v22;
    dispatch_async(v15, block);
  }
}

void __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_2_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __74__ICDelegationProviderNetService_getResolvedStreamsWithCompletionHandler___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  v13 = *MEMORY[0x1E69E9840];
  resolveCopy = resolve;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = resolveCopy;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Net service did not resolve address with error dictionary: %{public}@.", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICDelegationProviderNetService_netService_didNotResolve___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)netServiceDidResolveAddress:(id)address
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Net service did resolve address.", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ICDelegationProviderNetService_netServiceDidResolveAddress___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __62__ICDelegationProviderNetService_netServiceDidResolveAddress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) != 3)
  {
    [v2 _setState:2];
    v2 = *(a1 + 32);
  }

  [*(v2 + 56) startMonitoring];
  v3 = *(a1 + 32);

  return [v3 _updateTXTRecordProperties];
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: TXT record data updated.", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ICDelegationProviderNetService_netService_didUpdateTXTRecordData___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)dealloc
{
  [(NSNetService *)self->_netService setDelegate:0];
  v3.receiver = self;
  v3.super_class = ICDelegationProviderNetService;
  [(ICDelegationProviderNetService *)&v3 dealloc];
}

- (ICDelegationProviderNetService)initWithNetService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = ICDelegationProviderNetService;
  v6 = [(ICDelegationProviderNetService *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderNetService.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v7;

    v9 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderNetService.serialQueue", 0);
    calloutQueue = v6->_calloutQueue;
    v6->_calloutQueue = v9;

    objc_storeStrong(&v6->_netService, service);
    [(NSNetService *)v6->_netService setDelegate:v6];
    v6->_state = 1;
    netService = v6->_netService;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(NSNetService *)netService scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(NSNetService *)v6->_netService resolveWithTimeout:10.0];
  }

  return v6;
}

@end