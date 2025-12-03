@interface ICDelegationProviderServiceSession
- (ICDelegationProviderServiceSession)initWithUserIdentities:(id)identities userIdentityStore:(id)store requestContext:(id)context netService:(id)service delegationAccountUUIDs:(id)ds;
- (ICDelegationProviderServiceSessionDelegate)delegate;
- (void)_finishWithError:(id)error;
- (void)_handleStartDelegationResponse:(id)response;
- (void)_startDelegation;
- (void)delegationServiceConnection:(id)connection didEncouterError:(id)error;
- (void)delegationServiceConnectionDidClose:(id)close;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)stop;
@end

@implementation ICDelegationProviderServiceSession

- (void)_startDelegation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_userIdentities;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dSID = [*(*(&v12 + 1) + 8 * v8) DSID];
        if (dSID && ([v3 containsObject:dSID] & 1) == 0)
        {
          [v3 addObject:dSID];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  protocolHandler = self->_protocolHandler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__ICDelegationProviderServiceSession__startDelegation__block_invoke;
  v11[3] = &unk_1E7BF79F8;
  v11[4] = self;
  [(ICDelegationProviderServiceProtocolHandler *)protocolHandler getStartDelegationRequestForAccountIDs:v3 withCompletionHandler:v11];
}

void __54__ICDelegationProviderServiceSession__startDelegation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__ICDelegationProviderServiceSession__startDelegation__block_invoke_2;
  v15[3] = &unk_1E7BFA1F0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_barrier_async(v11, v15);
}

void __54__ICDelegationProviderServiceSession__startDelegation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[7] == 3)
  {
    if (*(a1 + 40))
    {
      if ([*(a1 + 48) count])
      {
        v3 = *(*(a1 + 32) + 48);
        if (!v3)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v5 = *(a1 + 32);
          v6 = *(v5 + 48);
          *(v5 + 48) = v4;

          v3 = *(*(a1 + 32) + 48);
        }

        [v3 addEntriesFromDictionary:*(a1 + 48)];
      }

      v7 = objc_alloc_init(ICPBDGSRequest);
      v8 = v7;
      if (v7)
      {
        objc_storeStrong(&v7->_startDelegationRequest, *(a1 + 40));
      }

      v9 = *(a1 + 32);
      v10 = *(v9 + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__ICDelegationProviderServiceSession__startDelegation__block_invoke_3;
      v13[3] = &unk_1E7BF79A8;
      v13[4] = v9;
      [v10 sendRequest:v8 withResponseHandler:v13];
    }

    else if (*(a1 + 56))
    {
      v11 = *(a1 + 32);

      [v11 _finishWithError:?];
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
      [v1 _finishWithError:v12];
    }
  }
}

void __54__ICDelegationProviderServiceSession__startDelegation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ICDelegationProviderServiceSession__startDelegation__block_invoke_4;
  v7[3] = &unk_1E7BFA078;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_barrier_async(v5, v7);
}

void *__54__ICDelegationProviderServiceSession__startDelegation__block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7] == 3)
  {
    return [result _handleStartDelegationResponse:*(a1 + 40)];
  }

  return result;
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  [(ICDelegationServiceConnection *)self->_connection setDelegate:0];
  [(ICDelegationServiceConnection *)self->_connection close];
  self->_state = 4;
  v5 = self->_delegate;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICDelegationProviderServiceSession__finishWithError___block_invoke;
  block[3] = &unk_1E7BFA178;
  v10 = v5;
  selfCopy = self;
  v12 = errorCopy;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(calloutQueue, block);
}

uint64_t __55__ICDelegationProviderServiceSession__finishWithError___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 delegationProviderServiceSession:v4 didFinishWithError:v5];
  }

  return result;
}

- (void)_handleStartDelegationResponse:(id)response
{
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = responseCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received response: %{public}@", buf, 0x16u);
  }

  if (responseCopy && (v6 = responseCopy[3]) != 0)
  {
    v7 = v6;
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    protocolHandler = self->_protocolHandler;
    v10 = [(NSMutableDictionary *)self->_sessionIDToStreamContext copy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke;
    v14[3] = &unk_1E7BF79D0;
    v15 = v8;
    selfCopy2 = self;
    v11 = v8;
    [(ICDelegationProviderServiceProtocolHandler *)protocolHandler getFinishDelegationRequestsWithStartDelegationResponse:v7 streamContexts:v10 replyHandler:v14];

    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke_3;
    block[3] = &unk_1E7BFA300;
    block[4] = self;
    dispatch_group_notify(v11, v12, block);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    [(ICDelegationProviderServiceSession *)self _finishWithError:v11];
    v7 = 0;
  }
}

void __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    v10 = objc_alloc_init(ICPBDGSRequest);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_finishDelegationRequest, a2);
    }

    dispatch_group_enter(*(a1 + 32));
    v12 = *(*(a1 + 40) + 24);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke_2;
    v13[3] = &unk_1E7BF79A8;
    v14 = *(a1 + 32);
    [v12 sendRequest:v11 withResponseHandler:v13];
  }

  if (a4)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ICDelegationProviderServiceSession__handleStartDelegationResponse___block_invoke_4;
  block[3] = &unk_1E7BFA300;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ICDelegationProviderServiceSession_stop__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)start
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting session...", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICDelegationProviderServiceSession_start__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __43__ICDelegationProviderServiceSession_start__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (!*(v1 + 56))
  {
    v2 = result;
    *(v1 + 56) = 1;
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 32);
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolving streams...", buf, 0xCu);
    }

    v5 = *(v2 + 32);
    v6 = *(v5 + 72);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__ICDelegationProviderServiceSession_start__block_invoke_3;
    v7[3] = &unk_1E7BF7980;
    v7[4] = v5;
    return [v6 getResolvedStreamsWithCompletionHandler:v7];
  }

  return result;
}

void __43__ICDelegationProviderServiceSession_start__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__ICDelegationProviderServiceSession_start__block_invoke_2;
  v15[3] = &unk_1E7BFA1F0;
  v15[4] = v10;
  v16 = v9;
  v17 = v7;
  v18 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_barrier_async(v11, v15);
}

void __43__ICDelegationProviderServiceSession_start__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56) == 1)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished resolving streams with error: %{public}@", buf, 0x16u);
    }

    if (*(a1 + 48) && *(a1 + 56))
    {
      *(*(a1 + 32) + 56) = 2;
      v5 = [*(*(a1 + 32) + 72) securityMode];
      v6 = [*(*(a1 + 32) + 72) deviceName];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &stru_1F2C4A680;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__ICDelegationProviderServiceSession_start__block_invoke_6;
      v11[3] = &unk_1E7BF81C0;
      v11[4] = *(a1 + 32);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      [ICDelegationServiceSecuritySettings getDeviceSenderSettingsForReceiverName:v8 securityMode:v5 completion:v11];
    }

    else
    {
      v9 = *(a1 + 32);
      if (*(a1 + 40))
      {
        [*(a1 + 32) _finishWithError:?];
      }

      else
      {
        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7801 userInfo:0];
        [v9 _finishWithError:v10];
      }
    }
  }
}

void __43__ICDelegationProviderServiceSession_start__block_invoke_6(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[ICDelegationServiceConnection alloc] initWithConnectionRole:1 inputStream:a1[5] outputStream:a1[6] securitySettings:v5];
    v8 = a1[4];
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;

    [*(a1[4] + 24) setDelegate:?];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Opening connection...", buf, 0xCu);
    }

    v12 = a1[4];
    v13 = *(v12 + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__ICDelegationProviderServiceSession_start__block_invoke_8;
    v18[3] = &unk_1E7BF7958;
    v18[4] = v12;
    [v13 openWithCompletionHandler:v18];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to get device sender security settings with error: %{public}@", buf, 0x16u);
    }

    v16 = a1[4];
    if (v6)
    {
      [v16 _finishWithError:v6];
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7807 userInfo:0];
      [v16 _finishWithError:v17];
    }
  }
}

void __43__ICDelegationProviderServiceSession_start__block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *buf = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished opening connection with success: %{public}@ error: %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICDelegationProviderServiceSession_start__block_invoke_15;
  block[3] = &unk_1E7BF9CB0;
  v14 = a2;
  block[4] = v9;
  v13 = v5;
  v11 = v5;
  dispatch_barrier_async(v10, block);
}

void __43__ICDelegationProviderServiceSession_start__block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[7] == 2)
  {
    if (*(a1 + 48) == 1)
    {
      v1[7] = 3;
      v2 = *(a1 + 32);

      [v2 _startDelegation];
    }

    else if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _finishWithError:?];
    }

    else
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7802 userInfo:0];
      [v1 _finishWithError:v4];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ICDelegationProviderServiceSession_setDelegate___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (ICDelegationProviderServiceSessionDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30088;
  v10 = __Block_byref_object_dispose__30089;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__ICDelegationProviderServiceSession_delegate__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)delegationServiceConnection:(id)connection didEncouterError:(id)error
{
  errorCopy = error;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICDelegationProviderServiceSession_delegationServiceConnection_didEncouterError___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_barrier_async(accessQueue, v8);
}

void *__83__ICDelegationProviderServiceSession_delegationServiceConnection_didEncouterError___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7] == 3)
  {
    return [result _finishWithError:*(a1 + 40)];
  }

  return result;
}

- (void)delegationServiceConnectionDidClose:(id)close
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICDelegationProviderServiceSession_delegationServiceConnectionDidClose___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

void *__74__ICDelegationProviderServiceSession_delegationServiceConnectionDidClose___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7] == 3)
  {
    return [result _finishWithError:0];
  }

  return result;
}

- (ICDelegationProviderServiceSession)initWithUserIdentities:(id)identities userIdentityStore:(id)store requestContext:(id)context netService:(id)service delegationAccountUUIDs:(id)ds
{
  identitiesCopy = identities;
  storeCopy = store;
  contextCopy = context;
  serviceCopy = service;
  dsCopy = ds;
  v29.receiver = self;
  v29.super_class = ICDelegationProviderServiceSession;
  v17 = [(ICDelegationProviderServiceSession *)&v29 init];
  if (v17)
  {
    v18 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderServiceSession.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v17->_accessQueue;
    v17->_accessQueue = v18;

    v20 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderServiceSession.calloutQueue", 0);
    calloutQueue = v17->_calloutQueue;
    v17->_calloutQueue = v20;

    v22 = [identitiesCopy copy];
    userIdentities = v17->_userIdentities;
    v17->_userIdentities = v22;

    objc_storeStrong(&v17->_userIdentityStore, store);
    objc_storeStrong(&v17->_netService, service);
    v24 = [dsCopy copy];
    delegationAccountUUIDs = v17->_delegationAccountUUIDs;
    v17->_delegationAccountUUIDs = v24;

    objc_storeStrong(&v17->_requestContext, context);
    v26 = [[ICDelegationProviderServiceProtocolHandler alloc] initWithUserIdentityStore:storeCopy requestContext:contextCopy];
    protocolHandler = v17->_protocolHandler;
    v17->_protocolHandler = v26;
  }

  return v17;
}

@end