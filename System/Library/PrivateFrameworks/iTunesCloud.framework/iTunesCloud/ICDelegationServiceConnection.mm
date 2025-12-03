@interface ICDelegationServiceConnection
- (ICDelegationServiceConnection)initWithConnectionRole:(int64_t)role inputStream:(id)stream outputStream:(id)outputStream securitySettings:(id)settings;
- (ICDelegationServiceConnectionDelegate)delegate;
- (void)_finishPendingRequestsWithError:(id)error;
- (void)_sendMessage:(id)message withCompletionHandler:(id)handler;
- (void)_sendRequest:(id)request withResponseHandler:(id)handler;
- (void)_sendResponse:(id)response forRequest:(id)request withCompletionHandler:(id)handler;
- (void)_streamDidClose;
- (void)_streamDidParseMessage:(id)message;
- (void)_streamEncounteredError:(id)error;
- (void)close;
- (void)dealloc;
- (void)delegationServicePairingSession:(id)session sendData:(id)data withCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
- (void)parser:(id)parser didParseMessage:(id)message;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
- (void)sendResponse:(id)response forRequest:(id)request withCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation ICDelegationServiceConnection

- (void)_streamEncounteredError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Stream encountered error %{public}@", buf, 0x16u);
  }

  if (self->_isStarted)
  {
    self->_isStarted = 0;
    [(MSVStreamWriter *)self->_streamWriter stop];
    [(MSVStreamReader *)self->_streamReader stop];
    if (errorCopy)
    {
      [(ICDelegationServiceConnection *)self _finishPendingRequestsWithError:errorCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7803 userInfo:0];
      [(ICDelegationServiceConnection *)self _finishPendingRequestsWithError:v6];
    }

    v7 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__ICDelegationServiceConnection__streamEncounteredError___block_invoke;
      block[3] = &unk_1E7BFA178;
      v10 = v7;
      selfCopy2 = self;
      v12 = errorCopy;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (void)_finishPendingRequestsWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      msv_description = [errorCopy msv_description];
      *buf = 138543618;
      selfCopy2 = self;
      v19 = 2114;
      v20 = msv_description;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Finished pending requests error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished pending requests", buf, 0xCu);
  }

  objectEnumerator = [(NSMutableDictionary *)self->_pendingRequestIDToRequestContext objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  pendingRequestIDToRequestContext = self->_pendingRequestIDToRequestContext;
  self->_pendingRequestIDToRequestContext = 0;

  calloutQueue = self->_calloutQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ICDelegationServiceConnection__finishPendingRequestsWithError___block_invoke;
  v14[3] = &unk_1E7BFA078;
  v15 = allObjects;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = allObjects;
  dispatch_async(calloutQueue, v14);
}

void __65__ICDelegationServiceConnection__finishPendingRequestsWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) responseHandler];
        v8 = v7;
        if (v7)
        {
          (*(v7 + 16))(v7, 0, *(a1 + 40));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_streamDidParseMessage:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received message: %@", buf, 0x16u);
  }

  if (messageCopy)
  {
    v6 = messageCopy[1];
    if (v6)
    {
      v7 = v6;
      v8 = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        calloutQueue = self->_calloutQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke;
        block[3] = &unk_1E7BFA178;
        v8 = v8;
        v16 = v8;
        selfCopy2 = self;
        v7 = v7;
        v18 = v7;
        dispatch_async(calloutQueue, block);

        v10 = v16;
      }

      else
      {
        v10 = objc_alloc_init(ICPBDGSResponse);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke_32;
        v14[3] = &unk_1E7BF7958;
        v14[4] = self;
        [(ICDelegationServiceConnection *)self _sendResponse:v10 forRequest:v7 withCompletionHandler:v14];
      }

LABEL_13:

      goto LABEL_14;
    }

    v11 = messageCopy[2];
    if (v11)
    {
      v7 = v11;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7[4]];
      v10 = [(NSMutableDictionary *)self->_pendingRequestIDToRequestContext objectForKey:v8];
      if (v10)
      {
        [(NSMutableDictionary *)self->_pendingRequestIDToRequestContext removeObjectForKey:v8];
        responseHandler = [(ICPBDGSResponse *)v10 responseHandler];
        v13 = responseHandler;
        if (responseHandler)
        {
          (*(responseHandler + 16))(responseHandler, v7, 0);
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

void __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) delegationServiceConnection:*(a1 + 40) didReceiveRequest:*(a1 + 48)] & 1) == 0)
  {
    v2 = objc_alloc_init(ICPBDGSResponse);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke_2;
    v5[3] = &unk_1E7BF7958;
    v5[4] = v3;
    [v3 _sendResponse:v2 forRequest:v4 withCompletionHandler:v5];
  }
}

void __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke_32(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send response message. err=%{public}@", &v8, 0x16u);
    }
  }
}

void __56__ICDelegationServiceConnection__streamDidParseMessage___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send response message. err=%{public}@", &v8, 0x16u);
    }
  }
}

- (void)_streamDidClose
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Stream did close.", buf, 0xCu);
  }

  if (self->_isStarted)
  {
    self->_isStarted = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    streamReaderQueue = self->_streamReaderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__ICDelegationServiceConnection__streamDidClose__block_invoke;
    block[3] = &unk_1E7BFA078;
    block[4] = self;
    v6 = v4;
    v19 = v6;
    dispatch_async(streamReaderQueue, block);
    dispatch_group_enter(v6);
    streamWriterQueue = self->_streamWriterQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__ICDelegationServiceConnection__streamDidClose__block_invoke_2;
    v16[3] = &unk_1E7BFA078;
    v16[4] = self;
    v17 = v6;
    v8 = v6;
    dispatch_async(streamWriterQueue, v16);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7803 userInfo:0];
    [(ICDelegationServiceConnection *)self _finishPendingRequestsWithError:v9];

    v10 = self->_delegate;
    calloutQueue = self->_calloutQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__ICDelegationServiceConnection__streamDidClose__block_invoke_3;
    v13[3] = &unk_1E7BFA078;
    v14 = v10;
    selfCopy2 = self;
    v12 = v10;
    dispatch_group_notify(v8, calloutQueue, v13);
  }
}

void __48__ICDelegationServiceConnection__streamDidClose__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) stop];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __48__ICDelegationServiceConnection__streamDidClose__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 88) stop];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __48__ICDelegationServiceConnection__streamDidClose__block_invoke_3(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(*(a1 + 40) + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__ICDelegationServiceConnection__streamDidClose__block_invoke_4;
    v5[3] = &unk_1E7BFA078;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = v4;
    dispatch_async(v2, v5);
  }
}

- (void)_sendResponse:(id)response forRequest:(id)request withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  responseCopy = response;
  v10 = responseCopy;
  if (request)
  {
    v11 = *(request + 6);
    if (!responseCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (responseCopy)
  {
LABEL_3:
    *(responseCopy + 32) |= 1u;
    *(responseCopy + 4) = v11;
  }

LABEL_4:
  v12 = objc_alloc_init(ICPBDGSMessage);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_response, response);
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending response message: %@", &v15, 0x16u);
  }

  [(ICDelegationServiceConnection *)self _sendMessage:v13 withCompletionHandler:handlerCopy];
}

- (void)_sendRequest:(id)request withResponseHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  _nextRequestUniqueID = [(ICDelegationServiceConnection *)self _nextRequestUniqueID];
  if (requestCopy)
  {
    requestCopy[28] |= 1u;
    *(requestCopy + 6) = _nextRequestUniqueID;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_nextRequestUniqueID];
  if (!self->_pendingRequestIDToRequestContext)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequestIDToRequestContext = self->_pendingRequestIDToRequestContext;
    self->_pendingRequestIDToRequestContext = v11;
  }

  v13 = [[_ICDelegationServiceConnectionPendingRequestContext alloc] initWithRequest:requestCopy responseHandler:handlerCopy];
  [(NSMutableDictionary *)self->_pendingRequestIDToRequestContext setObject:v13 forKey:v10];
  v14 = objc_alloc_init(ICPBDGSMessage);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
  }

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending request message: %@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke;
  v19[3] = &unk_1E7BF9240;
  v19[4] = self;
  v20 = v10;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = v10;
  [(ICDelegationServiceConnection *)self _sendMessage:v15 withCompletionHandler:v19];
}

void __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke_2;
    v9[3] = &unk_1E7BF9E78;
    v9[4] = v7;
    v10 = v6;
    v12 = *(a1 + 48);
    v11 = v5;
    dispatch_barrier_async(v8, v9);
  }
}

void __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 16);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke_3;
    v4[3] = &unk_1E7BF9EC8;
    v6 = *(a1 + 56);
    v5 = *(a1 + 48);
    dispatch_async(v3, v4);
  }
}

void __66__ICDelegationServiceConnection__sendRequest_withResponseHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(v1 + 16))(v1, 0, v4);
  }
}

- (void)_sendMessage:(id)message withCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  dispatch_assert_queue_barrier(self->_accessQueue);
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    data = [messageCopy data];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E7BF9FB0;
    v12[4] = self;
    v13 = handlerCopy;
    [(ICDelegationServicePairingSession *)pairingSession getEncryptedDataForData:data withCompletionHandler:v12];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Failing to send message as there is no longer a pairing session", buf, 0xCu);
    }

    if (handlerCopy)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }
}

void __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B1438];
  v4 = a2;
  v5 = [v3 createHeader:{objc_msgSend(v4, "length")}];
  v6 = objc_opt_new();
  [v6 appendData:v5];
  [v6 appendData:v4];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9E28;
  block[4] = v8;
  v12 = v6;
  v13 = v7;
  v10 = v6;
  dispatch_async(v9, block);
}

void __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) length];
    *buf = 138543618;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Writing data of length: %li", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke_22;
  v10[3] = &unk_1E7BF98C0;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 writeData:v6 withCompletion:v10];
}

void __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke_22(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICDelegationServiceConnection__sendMessage_withCompletionHandler___block_invoke_2_23;
    block[3] = &unk_1E7BF9B68;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)sendResponse:(id)response forRequest:(id)request withCompletionHandler:(id)handler
{
  responseCopy = response;
  requestCopy = request;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__ICDelegationServiceConnection_sendResponse_forRequest_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = responseCopy;
  v17 = requestCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  v14 = responseCopy;
  dispatch_barrier_async(accessQueue, v15);
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ICDelegationServiceConnection_sendRequest_withResponseHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_barrier_async(accessQueue, block);
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 33) = 1;
  if (*(*(a1 + 32) + 104) == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [[ICDelegationServicePairingSession alloc] initWithRole:v2 securitySettings:*(*(a1 + 32) + 112)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;

  [*(*(a1 + 32) + 56) setDelegate:?];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BFA078;
  block[4] = v7;
  v9 = v6;
  v20 = v9;
  dispatch_async(v8, block);
  dispatch_group_enter(v9);
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_3;
  v17[3] = &unk_1E7BFA078;
  v17[4] = v10;
  v18 = v9;
  v12 = v9;
  dispatch_async(v11, v17);
  v13 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_4;
  v15[3] = &unk_1E7BF9EC8;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v14;
  dispatch_group_notify(v12, v13, v15);
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 72) start];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 88) start];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_5;
  v4[3] = &unk_1E7BF9EC8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1)
  {
    v2 = *(v1 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_6;
    v8[3] = &unk_1E7BF98C0;
    v8[4] = v1;
    v9 = *(a1 + 40);
    [v2 prepareEncryptedSessionWithCompletionHandler:v8];
    v3 = v9;
  }

  else
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      return;
    }

    v5 = *(v1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_9;
    block[3] = &unk_1E7BF9D20;
    v7 = v4;
    dispatch_async(v5, block);
    v3 = v7;
  }
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = v6[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_7;
    block[3] = &unk_1E7BFA300;
    block[4] = v6;
    dispatch_barrier_async(v7, block);
  }

  else
  {
    [v6 close];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_8;
    v10[3] = &unk_1E7BF9B68;
    v12 = v8;
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, v10);
  }
}

void __59__ICDelegationServiceConnection_openWithCompletionHandler___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7100 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)close
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ICDelegationServiceConnection_close__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

void __38__ICDelegationServiceConnection_close__block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (*(v5 + 33) == 1)
  {
    block[5] = v4;
    block[6] = v3;
    block[9] = v1;
    block[10] = v2;
    *(v5 + 33) = 0;
    *(*(a1 + 32) + 32) = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__ICDelegationServiceConnection_close__block_invoke_2;
    block[3] = &unk_1E7BFA300;
    block[4] = v9;
    dispatch_async(v10, block);
    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__ICDelegationServiceConnection_close__block_invoke_3;
    v13[3] = &unk_1E7BFA300;
    v13[4] = v11;
    dispatch_async(v12, v13);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__ICDelegationServiceConnection_setDelegate___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (ICDelegationServiceConnectionDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__19525;
  v10 = __Block_byref_object_dispose__19526;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__ICDelegationServiceConnection_delegate__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)parser:(id)parser didParseMessage:(id)message
{
  if (message)
  {
    pairingSession = self->_pairingSession;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ICDelegationServiceConnection_parser_didParseMessage___block_invoke;
    v5[3] = &unk_1E7BF6200;
    v5[4] = self;
    [(ICDelegationServicePairingSession *)pairingSession getDecryptedDataForEncryptedData:message withCompletionHandler:v5];
  }
}

void __56__ICDelegationServiceConnection_parser_didParseMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICPBDGSMessage alloc] initWithData:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__ICDelegationServiceConnection_parser_didParseMessage___block_invoke_2;
    v7[3] = &unk_1E7BFA078;
    v7[4] = v5;
    v8 = v4;
    dispatch_barrier_async(v6, v7);
  }
}

- (void)delegationServicePairingSession:(id)session sendData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  streamWriterQueue = self->_streamWriterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__ICDelegationServiceConnection_delegationServicePairingSession_sendData_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v13 = dataCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dataCopy;
  dispatch_async(streamWriterQueue, block);
}

void __96__ICDelegationServiceConnection_delegationServicePairingSession_sendData_withCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) length];
    *buf = 138543618;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Writing data of length: %li", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__ICDelegationServiceConnection_delegationServicePairingSession_sendData_withCompletionHandler___block_invoke_15;
  v10[3] = &unk_1E7BF98C0;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 writeData:v6 withCompletion:v10];
}

void __96__ICDelegationServiceConnection_delegationServicePairingSession_sendData_withCompletionHandler___block_invoke_15(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__ICDelegationServiceConnection_delegationServicePairingSession_sendData_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9B68;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)dealloc
{
  [(ICDelegationServicePairingSession *)self->_pairingSession setDelegate:0];
  v3.receiver = self;
  v3.super_class = ICDelegationServiceConnection;
  [(ICDelegationServiceConnection *)&v3 dealloc];
}

- (ICDelegationServiceConnection)initWithConnectionRole:(int64_t)role inputStream:(id)stream outputStream:(id)outputStream securitySettings:(id)settings
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  settingsCopy = settings;
  v43.receiver = self;
  v43.super_class = ICDelegationServiceConnection;
  v13 = [(ICDelegationServiceConnection *)&v43 init];
  if (v13)
  {
    v14 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceConnection.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v13->_accessQueue;
    v13->_accessQueue = v14;

    v16 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceConnection.calloutQueue", 0);
    calloutQueue = v13->_calloutQueue;
    v13->_calloutQueue = v16;

    v18 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceConnection.streamReaderQueue", 0);
    streamReaderQueue = v13->_streamReaderQueue;
    v13->_streamReaderQueue = v18;

    v20 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServiceConnection.streamWriterQueue", 0);
    streamWriterQueue = v13->_streamWriterQueue;
    v13->_streamWriterQueue = v20;

    v13->_connectionRole = role;
    objc_storeStrong(&v13->_securitySettings, settings);
    objc_initWeak(&location, v13);
    v22 = objc_alloc_init(MEMORY[0x1E69B1438]);
    messageParser = v13->_messageParser;
    v13->_messageParser = v22;

    [(MSVMessageParser *)v13->_messageParser setDelegate:v13];
    v24 = [objc_alloc(MEMORY[0x1E69B14B0]) initWithInputStream:streamCopy queue:v13->_streamReaderQueue];
    streamReader = v13->_streamReader;
    v13->_streamReader = v24;

    v26 = v13->_streamReader;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke;
    v40[3] = &unk_1E7BF92B8;
    objc_copyWeak(&v41, &location);
    [(MSVStreamReader *)v26 setDidEncounterErrorBlock:v40];
    v27 = v13->_streamReader;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_2;
    v38[3] = &unk_1E7BF61D8;
    objc_copyWeak(&v39, &location);
    [(MSVStreamReader *)v27 setDidReadDataBlock:v38];
    v28 = v13->_streamReader;
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_2_10;
    v36 = &unk_1E7BFA328;
    objc_copyWeak(&v37, &location);
    [(MSVStreamReader *)v28 setDidFinishReadingBlock:&v33];
    v29 = objc_alloc(MEMORY[0x1E69B14B8]);
    v30 = [v29 initWithOutputStream:outputStreamCopy queue:{v13->_streamWriterQueue, v33, v34, v35, v36}];
    streamWriter = v13->_streamWriter;
    v13->_streamWriter = v30;

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered error: %{public}@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_5;
    v7[3] = &unk_1E7BFA078;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_barrier_async(v6, v7);
  }
}

void __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = WeakRetained;
    v12 = 2048;
    v13 = [v3 length];
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received data of length: %li.", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_8;
    v7[3] = &unk_1E7BFA078;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_2_10(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished reading.", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_11;
    block[3] = &unk_1E7BFA300;
    v5 = WeakRetained;
    dispatch_barrier_async(v3, block);
  }
}

uint64_t __98__ICDelegationServiceConnection_initWithConnectionRole_inputStream_outputStream_securitySettings___block_invoke_8(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    return [*(v1 + 40) processData:*(result + 40)];
  }

  if (*(v1 + 33) == 1)
  {
    return [*(v1 + 56) receievedData:*(result + 40)];
  }

  return result;
}

@end