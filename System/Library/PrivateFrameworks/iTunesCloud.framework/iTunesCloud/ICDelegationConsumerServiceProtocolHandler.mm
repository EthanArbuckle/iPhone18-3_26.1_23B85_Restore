@interface ICDelegationConsumerServiceProtocolHandler
- (ICDelegationConsumerServiceProtocolHandler)init;
- (void)getResponseForFinishDelegationRequest:(id)request withSessionIDToRequestInfoMap:(id)map completionHandler:(id)handler;
- (void)getResponseForStartDelegationRequest:(id)request requestContext:(id)context withCompletionHandler:(id)handler;
@end

@implementation ICDelegationConsumerServiceProtocolHandler

- (void)getResponseForStartDelegationRequest:(id)request requestContext:(id)context withCompletionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [ICAsyncBlockOperation alloc];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke;
  v19 = &unk_1E7BF8BC0;
  v20 = contextCopy;
  v21 = requestCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  v14 = contextCopy;
  v15 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v16];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15, v16, v17, v18, v19];
}

void __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) deviceInfo];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_2;
  v31[3] = &unk_1E7BF44D8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v32 = v5;
  v33 = v6;
  v7 = v4;
  v34 = v7;
  v35 = *(a1 + 32);
  v37 = *(a1 + 56);
  v8 = v3;
  v36 = v8;
  v9 = MEMORY[0x1B8C781E0](v31);
  v29 = 0;
  v30 = 0;
  v10 = [ICADIUtilities generateMachineDataForAccountID:-1 returningMachineIDData:&v30 otpData:0 error:&v29];
  v11 = v30;
  v12 = v29;
  v13 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v14)
    {
      v15 = *(a1 + 48);
      *buf = 138543362;
      v39 = v15;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Had existing anisette data.", buf, 0xCu);
    }

    (v9)[2](v9, 1, v11);
  }

  else
  {
    if (v14)
    {
      v16 = *(a1 + 48);
      *buf = 138543618;
      v39 = v16;
      v40 = 2114;
      v41 = v12;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing anisette data (error: %{public}@), starting provisioning...", buf, 0x16u);
    }

    v17 = [ICStoreRequestContext alloc];
    v18 = +[ICUserIdentity nullIdentity];
    v19 = +[ICUserIdentityStore defaultIdentityStore];
    v20 = [*(a1 + 32) clientInfo];
    v21 = [(ICStoreRequestContext *)v17 initWithIdentity:v18 identityStore:v19 clientInfo:v20];

    v22 = +[ICURLBagProvider sharedBagProvider];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_25;
    v24[3] = &unk_1E7BF9768;
    v25 = v7;
    v26 = v21;
    v27 = *(a1 + 48);
    v28 = v9;
    v23 = v21;
    [v22 getBagForRequestContext:v23 withCompletionHandler:v24];
  }
}

void __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v62 = 0;
  v61 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v62, &v61);
  v8 = v61;
  v9 = 0;
  v10 = 0;
  if (ContextIdentifierForFolderPath)
  {
    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *(a1 + 32);
    v43 = v8;
    v44 = v6;
    v45 = a1;
    v42 = a3;
    v41 = a2;
    if (v11)
    {
      v11 = v11[1];
    }

    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    v46 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      do
      {
        v17 = 0;
        do
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v57 + 1) + 8 * v17);
          if (v18)
          {
            v19 = v18[3];
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v20 copy];

          if (v18)
          {
            v22 = v18[2];
            v23 = v18[1];
          }

          else
          {
            v22 = 0;
            v23 = 0;
          }

          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
          v25 = objc_alloc_init(ICPBDGSPlayerInfoContextToken);
          v26 = v25;
          if (v25)
          {
            *&v25->_has |= 1u;
            v25->_sessionID = v22;
          }

          v56 = 0;
          if ([v21 length])
          {
            v55 = 0;
            v54 = 0;
            [v21 bytes];
            [v21 length];
            woqRTqq9PL5McfBs891();
            if (v27)
            {
              v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v27 userInfo:0];
              p_super = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
              {
                v30 = *(v45 + 40);
                *buf = 138543618;
                v64 = v30;
                v65 = 2114;
                v66 = v28;
                _os_log_impl(&dword_1B4491000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to create PIC with error: %{public}@.", buf, 0x16u);
              }

LABEL_21:
            }

            else
            {
              v31 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v55 length:v54];
              v28 = v31;
              if (v26)
              {
                v28 = v31;
                p_super = &v26->_token->super;
                v26->_token = v28;
                v13 = v46;
                goto LABEL_21;
              }
            }

            v32 = [[ICDelegationConsumerServiceSessionRequestInfo alloc] initWithAccountID:v23 fairPlaySessionID:v56];
            [v48 setObject:v32 forKey:v24];
          }

          [v13 addObject:v26];

          ++v17;
        }

        while (v15 != v17);
        v33 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
        v15 = v33;
      }

      while (v33);
    }

    v34 = objc_alloc_init(ICPBDGSStartDelegationResponse);
    v35 = [*(v45 + 48) deviceFairPlayGUIDData];
    if (v34)
    {
      objc_storeStrong(&v34->_playerDeviceGUID, v35);
    }

    playerInfoContextTokens = [*(v45 + 56) userAgent];
    v8 = v43;
    v6 = v44;
    if (v34)
    {
      objc_storeStrong(&v34->_playerUserAgent, playerInfoContextTokens);

      if (v41)
      {
        objc_storeStrong(&v34->_playerAnisetteMID, v42);
      }

      v37 = v46;
      v38 = v46;
      playerInfoContextTokens = v34->_playerInfoContextTokens;
      v34->_playerInfoContextTokens = v38;
    }

    else
    {
      v37 = v46;
    }

    v39 = *(*(v45 + 40) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_18;
    block[3] = &unk_1E7BF9E78;
    v53 = *(v45 + 72);
    v9 = v34;
    v50 = v9;
    v10 = v48;
    v51 = v10;
    v40 = v43;
    v52 = v40;
    dispatch_async(v39, block);
    [*(v45 + 64) finishWithError:v40];
  }
}

void __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 urlForBagKey:@"subDownload"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v3];
    [v4 setHTTPMethod:@"POST"];
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{@"lease-start", @"action", 0}];
    v6 = [*(a1 + 32) deviceGUID];
    if (v6)
    {
      [v5 setObject:v6 forKey:@"guid"];
    }

    v15 = 0;
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v15];
    v8 = v15;
    v9 = v8;
    if (!v7 || v8)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [v4 setHTTPBody:v7];
      [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v10 = [[ICStoreURLRequest alloc] initWithURLRequest:v4 requestContext:*(a1 + 40)];
      [(ICURLRequest *)v10 setPrioritize:1];
      [(ICStoreURLRequest *)v10 setShouldParseBodyData:0];
      v11 = +[ICURLSessionManager defaultSession];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_2_42;
      v13[3] = &unk_1E7BF9D88;
      v12 = *(a1 + 56);
      v13[4] = *(a1 + 48);
      v14 = v12;
      [v11 enqueueDataRequest:v10 withCompletionHandler:v13];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __120__ICDelegationConsumerServiceProtocolHandler_getResponseForStartDelegationRequest_requestContext_withCompletionHandler___block_invoke_2_42(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v2 = [ICADIUtilities generateMachineDataForAccountID:-1 returningMachineIDData:&v10 otpData:0 error:&v9];
  v3 = v10;
  v4 = v9;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Provisioned anisette data.", buf, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing anisette data (error: %{public}@.", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getResponseForFinishDelegationRequest:(id)request withSessionIDToRequestInfoMap:(id)map completionHandler:(id)handler
{
  requestCopy = request;
  mapCopy = map;
  handlerCopy = handler;
  v11 = [ICAsyncBlockOperation alloc];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __132__ICDelegationConsumerServiceProtocolHandler_getResponseForFinishDelegationRequest_withSessionIDToRequestInfoMap_completionHandler___block_invoke;
  v19 = &unk_1E7BF8BC0;
  v20 = requestCopy;
  v21 = mapCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v12 = handlerCopy;
  v13 = mapCopy;
  v14 = requestCopy;
  v15 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v16];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15, v16, v17, v18, v19];
}

void __132__ICDelegationConsumerServiceProtocolHandler_getResponseForFinishDelegationRequest_withSessionIDToRequestInfoMap_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[1];
  }

  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v34 = *v43;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(v7 + 16);
        }

        else
        {
          v8 = 0;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        v10 = [*(v35 + 40) objectForKey:v9];
        if (v10)
        {
          v41 = 0;
          v40 = 0;
          if (v7)
          {
            v11 = *(v7 + 32);
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
          v13 = [v12 copy];

          nXJ7Amk1zyK93([v10 fairPlaySessionID], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"), &v41, &v40);
          if (v14)
          {
            v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v14 userInfo:0];
            v16 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(v35 + 48);
              *buf = 138543618;
              v47 = v17;
              v48 = 2114;
              v49 = v15;
              _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to extract PDInfo with error: %{public}@.", buf, 0x16u);
            }

            v18 = 0;
            v19 = 0;
            goto LABEL_23;
          }

          v18 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v41 length:v40];
          if (v18)
          {
            if (v7)
            {
              v20 = *(v7 + 8);
            }

            else
            {
              v20 = 0.0;
            }

            if (v20 < 600.0)
            {
              v20 = 600.0;
            }

            v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v20];
            v19 = [[ICDelegateToken alloc] initWithType:1 data:v18 expirationDate:v16];
            v15 = 0;
LABEL_23:
          }

          else
          {
            v15 = 0;
            v19 = 0;
          }

          v21 = [ICDelegationConsumerServiceSessionRequestResult alloc];
          if (v7)
          {
            v22 = *(v7 + 24);
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = [(ICDelegationConsumerServiceSessionRequestResult *)v21 initWithDelegateToken:v19 storefrontIdentifier:v23 resultError:v15];

          [v33 setObject:v24 forKey:v9];
        }

        ++v6;
      }

      while (v5 != v6);
      v25 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      v5 = v25;
    }

    while (v25);
  }

  v26 = objc_alloc_init(ICPBDGSFinishDelegationResponse);
  v27 = *(*(v35 + 48) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__ICDelegationConsumerServiceProtocolHandler_getResponseForFinishDelegationRequest_withSessionIDToRequestInfoMap_completionHandler___block_invoke_11;
  block[3] = &unk_1E7BF9E28;
  v28 = *(v35 + 56);
  v37 = v26;
  v38 = v33;
  v39 = v28;
  v29 = v33;
  v30 = v26;
  dispatch_async(v27, block);
  [v31 finishWithError:0];
}

- (ICDelegationConsumerServiceProtocolHandler)init
{
  v8.receiver = self;
  v8.super_class = ICDelegationConsumerServiceProtocolHandler;
  v2 = [(ICDelegationConsumerServiceProtocolHandler *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.iTunesCloud.ICDelegationConsumerServiceProtocolHandler.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:3];
    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationConsumerServiceProtocolHandler.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;
  }

  return v2;
}

@end