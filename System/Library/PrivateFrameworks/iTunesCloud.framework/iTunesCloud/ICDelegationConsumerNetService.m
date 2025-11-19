@interface ICDelegationConsumerNetService
- (ICDelegationConsumerNetService)initWithUserIdentityDelegationAccountUUIDs:(id)a3;
- (ICDelegationConsumerNetServiceDelegate)delegate;
- (ICDelegationServiceSecuritySettings)securitySettings;
- (void)_updateNetServiceStatus;
- (void)dealloc;
- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5;
- (void)netService:(id)a3 didNotPublish:(id)a4;
- (void)netServiceDidPublish:(id)a3;
- (void)publish;
- (void)stop;
@end

@implementation ICDelegationConsumerNetService

- (ICDelegationConsumerNetServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateNetServiceStatus
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_isPublished)
  {
    if (self->_didPublish)
    {
      return;
    }

    if (!self->_netService)
    {
      v3 = [MEMORY[0x1E696AFB0] UUID];
      v4 = [v3 UUIDString];

      if ([v4 length] >= 0x40)
      {
        v5 = [v4 substringToIndex:63];

        v4 = v5;
      }

      v6 = [objc_alloc(MEMORY[0x1E695AC20]) initWithDomain:@"local." type:@"_itsdlgt._tcp." name:v4 port:0];
      netService = self->_netService;
      self->_netService = v6;

      [(NSNetService *)self->_netService setDelegate:self];
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_netService;
        *buf = 138543618;
        v36 = self;
        v37 = 2114;
        v38 = v9;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Created net service %{public}@.", buf, 0x16u);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [(NSDictionary *)self->_userIdentityDelegationAccountUUIDs objectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addObjectsFromArray:*(*(&v30 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    self->_didPublish = 1;
    v16 = self->_netService;
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Published net service %{public}@.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    netServiceQueue = self->_netServiceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke;
    block[3] = &unk_1E7BF3E98;
    block[4] = self;
    v27 = v10;
    v19 = v10;
    objc_copyWeak(&v29, buf);
    v28 = v16;
    v20 = v16;
    dispatch_async(netServiceQueue, block);

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = self->_netService;
    v22 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2114;
      v38 = v21;
      _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped net service %{public}@.", buf, 0x16u);
    }

    self->_didPublish = 0;
    v23 = self->_netServiceQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke_17;
    v24[3] = &unk_1E7BFA300;
    v25 = v21;
    v19 = v21;
    dispatch_async(v23, v24);
  }
}

void __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke_2;
  v3[3] = &unk_1E7BF3E70;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  [ICDelegationServiceSecuritySettings getDeviceReceiverSettingsWithCompletion:v3];

  objc_destroyWeak(&v6);
}

void __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved security settings: %{public}@ with error: %{public}@", buf, 0x20u);
  }

  v9 = objc_alloc_init(ICDelegationNetServiceTXTRecord);
  [(ICDelegationNetServiceTXTRecord *)v9 setDelegationAccountUUIDs:*(a1 + 40)];
  [(ICDelegationNetServiceTXTRecord *)v9 setServiceVersion:1];
  v10 = +[ICDeviceInfo currentDeviceInfo];
  v11 = [v10 deviceName];
  [(ICDelegationNetServiceTXTRecord *)v9 setDeviceName:v11];

  if (v5)
  {
    [(ICDelegationNetServiceTXTRecord *)v9 setSecurityMode:[(ICDelegationNetServiceTXTRecord *)v5 securityMode]];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v13 = WeakRetained;
    if (WeakRetained)
    {
      v14 = WeakRetained[1];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__ICDelegationConsumerNetService__updateNetServiceStatus__block_invoke_15;
      v19[3] = &unk_1E7BFA078;
      v20 = WeakRetained;
      v21 = v5;
      dispatch_barrier_async(v14, v19);
    }
  }

  v15 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138543618;
    v23 = v16;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Published net service TXTRecord: %{public}@", buf, 0x16u);
  }

  v17 = *(a1 + 48);
  v18 = [(ICDelegationNetServiceTXTRecord *)v9 TXTRecordData];
  [v17 setTXTRecordData:v18];

  [*(a1 + 48) publishWithOptions:2051];
  dispatch_resume(*(*(a1 + 32) + 40));
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ICDelegationConsumerNetService_stop__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __38__ICDelegationConsumerNetService_stop__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 25) == 1)
  {
    *(v1 + 25) = 0;
    return [*(result + 32) _updateNetServiceStatus];
  }

  return result;
}

- (void)publish
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ICDelegationConsumerNetService_publish__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __41__ICDelegationConsumerNetService_publish__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    *(v1 + 25) = 1;
    return [*(result + 32) _updateNetServiceStatus];
  }

  return result;
}

- (ICDelegationServiceSecuritySettings)securitySettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3512;
  v10 = __Block_byref_object_dispose__3513;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ICDelegationConsumerNetService_securitySettings__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)netService:(id)a3 didNotPublish:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E695AB38];
  v9 = *MEMORY[0x1E695AB30];
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v7 errorWithDomain:v8 code:objc_msgSend(v11 userInfo:{"integerValue"), v10}];

  if ([v12 code] == -72001)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 5.0;
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote server advertisement failed with service: %{public}@, error: %{public}@, retrying in %f seconds...", buf, 0x2Au);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICDelegationConsumerNetService_netService_didNotPublish___block_invoke;
  block[3] = &unk_1E7BF9890;
  block[4] = self;
  *&block[5] = v13;
  dispatch_barrier_async(accessQueue, block);
  if (v13 > 0.00000011920929)
  {
    v16 = dispatch_time(0, (v13 * 1000000000.0));
    v17 = dispatch_get_global_queue(0, 0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__ICDelegationConsumerNetService_netService_didNotPublish___block_invoke_2;
    v18[3] = &unk_1E7BFA300;
    v18[4] = self;
    dispatch_after(v16, v17, v18);
  }
}

void __59__ICDelegationConsumerNetService_netService_didNotPublish___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) stop];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 24) = 0;
  if (*(a1 + 40) <= 0.00000011920929)
  {
    v4 = *(a1 + 32);

    [v4 _updateNetServiceStatus];
  }
}

void __59__ICDelegationConsumerNetService_netService_didNotPublish___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICDelegationConsumerNetService_netService_didNotPublish___block_invoke_3;
  block[3] = &unk_1E7BFA300;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

- (void)netServiceDidPublish:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Remote server advertisement success with service: %{public}@", &v6, 0x16u);
  }
}

- (void)netService:(id)a3 didAcceptConnectionWithInputStream:(id)a4 outputStream:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v19 = self;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Did accept connection with service: %{public}@ input: %{public}@ output: %{public}@", buf, 0x2Au);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__ICDelegationConsumerNetService_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_async(accessQueue, block);
}

void __93__ICDelegationConsumerNetService_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__ICDelegationConsumerNetService_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke_2;
    v7[3] = &unk_1E7BFA1F0;
    v4 = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v3, v7);
  }
}

- (void)dealloc
{
  [(NSNetService *)self->_netService setDelegate:0];
  if (self->_isPublished)
  {
    v3 = self->_netService;
    netServiceQueue = self->_netServiceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__ICDelegationConsumerNetService_dealloc__block_invoke;
    block[3] = &unk_1E7BFA300;
    v8 = v3;
    v5 = v3;
    dispatch_async(netServiceQueue, block);
  }

  v6.receiver = self;
  v6.super_class = ICDelegationConsumerNetService;
  [(ICDelegationConsumerNetService *)&v6 dealloc];
}

- (ICDelegationConsumerNetService)initWithUserIdentityDelegationAccountUUIDs:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICDelegationConsumerNetService;
  v5 = [(ICDelegationConsumerNetService *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerNetService.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerNetService.netServiceQueue", 0);
    netServiceQueue = v5->_netServiceQueue;
    v5->_netServiceQueue = v8;

    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerNetService.calloutQueue", 0);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [v4 copy];
    userIdentityDelegationAccountUUIDs = v5->_userIdentityDelegationAccountUUIDs;
    v5->_userIdentityDelegationAccountUUIDs = v12;
  }

  return v5;
}

@end