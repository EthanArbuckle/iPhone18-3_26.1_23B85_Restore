@interface ICDelegationConsumerServiceSession
- (BOOL)delegationServiceConnection:(id)connection didReceiveRequest:(id)request;
- (ICDelegationConsumerServiceSession)initWithRequest:(id)request responseHandler:(id)handler;
- (void)_handleTimeout;
- (void)_stop;
- (void)dealloc;
- (void)delegationConsumerNetService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)delegationServiceConnection:(id)connection didEncouterError:(id)error;
- (void)delegationServiceConnectionDidClose:(id)close;
- (void)start;
- (void)stop;
@end

@implementation ICDelegationConsumerServiceSession

- (void)_stop
{
  v18 = *MEMORY[0x1E69E9840];
  timeoutDispatchSource = self->_timeoutDispatchSource;
  if (timeoutDispatchSource)
  {
    dispatch_source_cancel(timeoutDispatchSource);
    v4 = self->_timeoutDispatchSource;
    self->_timeoutDispatchSource = 0;
  }

  [(ICDelegationConsumerNetService *)self->_netService stop];
  v5 = [(NSMutableArray *)self->_acceptedConnections copy];
  acceptedConnections = self->_acceptedConnections;
  self->_acceptedConnections = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 setDelegate:{0, v13}];
        [v12 close];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_handleTimeout
{
  [(ICDelegationConsumerServiceSession *)self _stop];
  v3 = [(NSMutableArray *)self->_pendingUserIdentities copy];
  pendingUserIdentities = self->_pendingUserIdentities;
  self->_pendingUserIdentities = 0;

  v5 = MEMORY[0x1B8C781E0](self->_responseHandler);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ICDelegationConsumerServiceSession__handleTimeout__block_invoke;
  v8[3] = &unk_1E7BF8260;
  v9 = v3;
  selfCopy = self;
  v11 = v5;
  v6 = v5;
  v7 = v3;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __52__ICDelegationConsumerServiceSession__handleTimeout__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) count] - 1 == a3;
  v7 = *(*(a1 + 40) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__ICDelegationConsumerServiceSession__handleTimeout__block_invoke_2;
  v10[3] = &unk_1E7BF9B18;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v10[4] = *(a1 + 40);
  v13 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __52__ICDelegationConsumerServiceSession__handleTimeout__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
  (*(v2 + 16))(v2, v4, v3, 0, 0, v5, *(a1 + 56));
}

- (void)stop
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ICDelegationConsumerServiceSession_stop__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)start
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting session", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICDelegationConsumerServiceSession_start__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __43__ICDelegationConsumerServiceSession_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 64))
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    [*(*(a1 + 32) + 72) timeoutInterval];
    v8 = v7;
    v9 = *(*(a1 + 32) + 64);
    v10 = dispatch_time(0, (v7 * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, (v8 * 0.01 * 1000000000.0));
    objc_initWeak(&location, *(a1 + 32));
    v11 = *(*(a1 + 32) + 64);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __43__ICDelegationConsumerServiceSession_start__block_invoke_2;
    v22 = &unk_1E7BFA328;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v11, &v19);
    dispatch_resume(*(*(a1 + 32) + 64));
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    v2 = *(a1 + 32);
  }

  v12 = *(v2 + 32);
  if (!v12)
  {
    v13 = [ICDelegationConsumerNetService alloc];
    v14 = [*(*(a1 + 32) + 72) userIdentityDelegationAccountUUIDs];
    v15 = [(ICDelegationConsumerNetService *)v13 initWithUserIdentityDelegationAccountUUIDs:v14];
    v16 = *(a1 + 32);
    v17 = *(v16 + 32);
    *(v16 + 32) = v15;

    [*(*(a1 + 32) + 32) setDelegate:?];
    v12 = *(*(a1 + 32) + 32);
  }

  return [v12 publish];
}

void __43__ICDelegationConsumerServiceSession_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__ICDelegationConsumerServiceSession_start__block_invoke_3;
    block[3] = &unk_1E7BFA300;
    v5 = WeakRetained;
    dispatch_barrier_async(v3, block);
  }
}

- (BOOL)delegationServiceConnection:(id)connection didReceiveRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  requestCopy = request;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping", &buf, 0xCu);
  }

  if (requestCopy)
  {
    v9 = *(requestCopy + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  objc_initWeak(&location, connectionCopy);
  if (v10)
  {
    protocolHandler = self->_protocolHandler;
    requestContext = [(ICDelegationConsumerServiceRequest *)self->_request requestContext];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke;
    v23[3] = &unk_1E7BF81E8;
    v23[4] = self;
    objc_copyWeak(&v25, &location);
    v24 = requestCopy;
    [(ICDelegationConsumerServiceProtocolHandler *)protocolHandler getResponseForStartDelegationRequest:v10 requestContext:requestContext withCompletionHandler:v23];

    objc_destroyWeak(&v25);
    v13 = 1;
  }

  else
  {
    if (requestCopy)
    {
      v14 = *(requestCopy + 1);
      if (v14)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__32624;
        v30 = __Block_byref_object_dispose__32625;
        v31 = 0;
        accessQueue = self->_accessQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_13;
        block[3] = &unk_1E7BFA430;
        block[4] = self;
        block[5] = &buf;
        dispatch_sync(accessQueue, block);
        v16 = self->_protocolHandler;
        if (*(*(&buf + 1) + 40))
        {
          v17 = *(*(&buf + 1) + 40);
        }

        else
        {
          v17 = MEMORY[0x1E695E0F8];
        }

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_2_14;
        v19[3] = &unk_1E7BF8238;
        v19[4] = self;
        objc_copyWeak(&v21, &location);
        v20 = requestCopy;
        [(ICDelegationConsumerServiceProtocolHandler *)v16 getResponseForFinishDelegationRequest:v14 withSessionIDToRequestInfoMap:v17 completionHandler:v19];

        objc_destroyWeak(&v21);
        _Block_object_dispose(&buf, 8);

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  objc_destroyWeak(&location);

  return v13;
}

void __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_2;
    v16 = &unk_1E7BFA078;
    v17 = v8;
    v18 = v7;
    dispatch_barrier_async(v9, &v13);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = objc_alloc_init(ICPBDGSResponse);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_startDelegationResponse, a2);
    }

    [WeakRetained sendResponse:v12 forRequest:*(a1 + 40) withCompletionHandler:{0, v13, v14, v15, v16, v17}];
  }
}

uint64_t __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_13(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_2_14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_3;
    v16 = &unk_1E7BFA078;
    v17 = v8;
    v18 = v7;
    dispatch_barrier_async(v9, &v13);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = objc_alloc_init(ICPBDGSResponse);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_finishDelegationResponse, a2);
    }

    [WeakRetained sendResponse:v12 forRequest:*(a1 + 40) withCompletionHandler:{0, v13, v14, v15, v16, v17}];
  }
}

void __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1B8C781E0](*(*(a1 + 32) + 80));
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_4;
  v8 = &unk_1E7BF8210;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  v4 = v2;
  v10 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v5];
  if (![*(*(a1 + 32) + 40) count])
  {
    [*(a1 + 32) _stop];
  }
}

void __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = a3;
  v6 = [*(*(a1 + 32) + 56) objectForKey:v5];
  if (v6)
  {
    v19 = v5;
    [*(*(a1 + 32) + 56) removeObjectForKey:v5];
    v18 = v6;
    v7 = [v6 accountID];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [*(*(a1 + 32) + 40) copy];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 DSID];
          v15 = [v14 unsignedLongLongValue];

          if (v15 == v7)
          {
            [*(*(a1 + 32) + 40) removeObject:v13];
            v16 = [*(*(a1 + 32) + 40) count] == 0;
            v17 = *(*(a1 + 32) + 24);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_5;
            block[3] = &unk_1E7BFA240;
            v23 = *(a1 + 40);
            block[4] = *(a1 + 32);
            block[5] = v13;
            v22 = v20;
            v24 = v16;
            dispatch_async(v17, block);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v6 = v18;
    v5 = v19;
  }
}

void __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = [*(a1 + 48) delegateToken];
  v5 = [*(a1 + 48) storefrontIdentifier];
  v6 = [*(a1 + 48) resultError];
  (*(v4 + 16))(v4, v2, v3, v7, v5, v6, *(a1 + 64));
}

uint64_t __84__ICDelegationConsumerServiceSession_delegationServiceConnection_didReceiveRequest___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  v6 = *(a1 + 40);

  return [v2 addEntriesFromDictionary:v6];
}

- (void)delegationServiceConnection:(id)connection didEncouterError:(id)error
{
  connectionCopy = connection;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICDelegationConsumerServiceSession_delegationServiceConnection_didEncouterError___block_invoke;
  v8[3] = &unk_1E7BFA078;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_barrier_async(accessQueue, v8);
}

- (void)delegationServiceConnectionDidClose:(id)close
{
  closeCopy = close;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__ICDelegationConsumerServiceSession_delegationServiceConnectionDidClose___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = closeCopy;
  v6 = closeCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)delegationConsumerNetService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke;
  v11[3] = &unk_1E7BF81C0;
  v12 = streamCopy;
  v13 = outputStreamCopy;
  selfCopy = self;
  v9 = outputStreamCopy;
  v10 = streamCopy;
  [ICDelegationServiceSecuritySettings getDeviceReceiverSettingsWithCompletion:v11];
}

void __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[ICDelegationServiceConnection alloc] initWithConnectionRole:2 inputStream:a1[4] outputStream:a1[5] securitySettings:v5];
    [(ICDelegationServiceConnection *)v7 setDelegate:a1[6]];
    v8 = a1[6];
    v9 = *(v8 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke_2;
    v12[3] = &unk_1E7BFA078;
    v12[4] = v8;
    v13 = v7;
    v10 = v7;
    dispatch_barrier_async(v9, v12);
  }

  else
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[6];
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to get device receiver security settings with error: %{public}@", buf, 0x16u);
    }
  }
}

void __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  [v2 addObject:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke_3;
  v7[3] = &unk_1E7BF8198;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v8 openWithCompletionHandler:v7];
}

void __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __115__ICDelegationConsumerServiceSession_delegationConsumerNetService_didAcceptConnectionWithInputStream_outputStream___block_invoke_4;
    v5[3] = &unk_1E7BFA078;
    v5[4] = v3;
    v6 = v2;
    dispatch_barrier_async(v4, v5);
  }
}

- (void)dealloc
{
  [(ICDelegationConsumerServiceSession *)self _stop];
  v3.receiver = self;
  v3.super_class = ICDelegationConsumerServiceSession;
  [(ICDelegationConsumerServiceSession *)&v3 dealloc];
}

- (ICDelegationConsumerServiceSession)initWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = ICDelegationConsumerServiceSession;
  v9 = [(ICDelegationConsumerServiceSession *)&v23 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerServiceSession.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v10;

    v12 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerServiceSession.calloutQueue", 0);
    calloutQueue = v9->_calloutQueue;
    v9->_calloutQueue = v12;

    objc_storeStrong(&v9->_request, request);
    userIdentityDelegationAccountUUIDs = [(ICDelegationConsumerServiceRequest *)v9->_request userIdentityDelegationAccountUUIDs];
    allKeys = [userIdentityDelegationAccountUUIDs allKeys];
    v16 = [allKeys mutableCopy];
    pendingUserIdentities = v9->_pendingUserIdentities;
    v9->_pendingUserIdentities = v16;

    v18 = MEMORY[0x1B8C781E0](handlerCopy);
    responseHandler = v9->_responseHandler;
    v9->_responseHandler = v18;

    v20 = objc_alloc_init(ICDelegationConsumerServiceProtocolHandler);
    protocolHandler = v9->_protocolHandler;
    v9->_protocolHandler = v20;
  }

  return v9;
}

@end