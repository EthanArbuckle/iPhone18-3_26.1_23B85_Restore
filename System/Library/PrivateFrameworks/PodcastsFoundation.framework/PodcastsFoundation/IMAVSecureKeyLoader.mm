@interface IMAVSecureKeyLoader
- (BOOL)_isOfflineAsset;
- (IMAVSecureKeyLoader)initWithRecipient:(id)recipient useCase:(unint64_t)case account:(id)account urlProtocolDelegate:(id)delegate;
- (IMAVSecureKeyLoaderDelegate)delegate;
- (void)cleanupAfterContentKeyRequestForOfflineRenewal:(BOOL)renewal withError:(id)error;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request;
- (void)invalidateAndCancel;
- (void)requestKeyResponseFromContentKeyRequest:(id)request requestType:(int64_t)type completion:(id)completion;
- (void)securelyInvalidateOfflineDataForRequests:(id)requests completion:(id)completion;
- (void)sendStopRequestForStreamingLicenseIfNecessary;
- (void)timeoutKeyRequest;
@end

@implementation IMAVSecureKeyLoader

- (IMAVSecureKeyLoader)initWithRecipient:(id)recipient useCase:(unint64_t)case account:(id)account urlProtocolDelegate:(id)delegate
{
  recipientCopy = recipient;
  accountCopy = account;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = IMAVSecureKeyLoader;
  v13 = [(IMAVSecureKeyLoader *)&v23 init];
  if (v13)
  {
    if (initWithRecipient_useCase_account_urlProtocolDelegate__onceToken != -1)
    {
      [IMAVSecureKeyLoader initWithRecipient:useCase:account:urlProtocolDelegate:];
    }

    if (case == 1)
    {
      v14 = dispatch_queue_create("IMAVSecureKeyLoader.Download", 0);
      [(IMAVSecureKeyLoader *)v13 setKeyLoaderQueue:v14];
    }

    else
    {
      v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v15 = dispatch_queue_create("IMAVSecureKeyLoader", v14);
      [(IMAVSecureKeyLoader *)v13 setKeyLoaderQueue:v15];
    }

    [(IMAVSecureKeyLoader *)v13 setRecipient:recipientCopy];
    [(IMAVSecureKeyLoader *)v13 setAccount:accountCopy];
    v16 = objc_alloc_init(MTStandardKeyRequestHandler);
    if (delegateCopy)
    {
      [(IMAVSecureKeyLoader *)v13 setUrlProtocolDelegate:delegateCopy];
      urlProtocolDelegate = [(IMAVSecureKeyLoader *)v13 urlProtocolDelegate];
      [(IMBaseStoreService *)v16 setURLProtocolDelegate:urlProtocolDelegate];
    }

    [(IMAVSecureKeyLoader *)v13 setSecureKeyRequestHandler:v16];
    v18 = objc_alloc_init(MTCoreDataKeyRequestStorage);
    [(IMAVSecureKeyLoader *)v13 setSecureKeyRequestStorage:v18];

    [(IMAVSecureKeyLoader *)v13 setUseCase:case];
    v19 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
    [(IMAVSecureKeyLoader *)v13 setContentKeySession:v19];

    contentKeySession = [(IMAVSecureKeyLoader *)v13 contentKeySession];
    keyLoaderQueue = [(IMAVSecureKeyLoader *)v13 keyLoaderQueue];
    [contentKeySession setDelegate:v13 queue:keyLoaderQueue];
  }

  return v13;
}

uint64_t __77__IMAVSecureKeyLoader_initWithRecipient_useCase_account_urlProtocolDelegate___block_invoke()
{
  __pendingStopNonceRequestAdamIds = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

void __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke_53(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPendingCompletion:*(a1 + 48)];
  if ([*(a1 + 40) length])
  {
    v2 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) contentAdamId];
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "[Key Loading Process] Pre-loading key: %@, content adam id: %@.", buf, 0x16u);
    }

    v5 = [*(a1 + 32) contentKeySession];
    [v5 processContentKeyRequestWithIdentifier:*(a1 + 40) initializationData:0 options:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke_54;
  block[3] = &unk_1E8568E28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendStopRequestForStreamingLicenseIfNecessary
{
  if (![(IMAVSecureKeyLoader *)self _isOfflineAsset])
  {
    keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke;
    block[3] = &unk_1E8568E28;
    block[4] = self;
    dispatch_async(keyLoaderQueue, block);
  }
}

void __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) contentKeySession];
  v3 = [*(a1 + 32) recipient];
  [v2 removeContentKeyRecipient:v3];

  v4 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) recipient];
    v6 = [v5 URL];
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Removing content key recipient for URL: %@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) savedRequestToUseForStopping];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) savedRequestDataToUseForStopping];

    if (v9)
    {
      v10 = [*(a1 + 32) savedRequestToUseForStopping];
      v11 = [v10 copyWith:2];

      v12 = [*(a1 + 32) secureKeyRequestHandler];
      v18 = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v14 = [*(a1 + 32) account];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke_56;
      v17[3] = &unk_1E8569020;
      v17[4] = *(a1 + 32);
      [v12 loadKeyDataFor:v13 account:v14 completion:v17];

LABEL_8:
      goto LABEL_9;
    }
  }

  v11 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [*(a1 + 32) recipient];
    v13 = [v12 URL];
    v15 = [*(a1 + 32) contentAdamId];
    *buf = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_ERROR, "Failed to send stop request because a start request was never made. URL: %@ Content ID %@", buf, 0x16u);

    goto LABEL_8;
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
}

void __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke_56(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = [v3 error];

  if (v4)
  {
    v5 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) recipient];
      v7 = [v6 URL];
      v8 = [*(a1 + 32) contentAdamId];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Stop request failed with error %@ for Content ID %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)securelyInvalidateOfflineDataForRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  if ([(IMAVSecureKeyLoader *)self useCase]!= 1)
  {
    [IMAVSecureKeyLoader securelyInvalidateOfflineDataForRequests:completion:];
  }

  keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke;
  block[3] = &unk_1E85690E8;
  v12 = requestsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestsCopy;
  dispatch_async(keyLoaderQueue, block);
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v4 = [*(v1 + 32) count];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    *&v5 = 138412290;
    v37 = v5;
    v39 = v2;
    v40 = v1;
    v38 = v3;
    do
    {
      v43 = v6;
      if (v6 >= 0xA)
      {
        v8 = 10;
      }

      else
      {
        v8 = v6;
      }

      v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v41 = v8;
      v42 = v7;
      v9 = [*(v1 + 32) subarrayWithRange:{v7, v8}];
      dispatch_group_enter(v3);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v9;
      v10 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v53;
        do
        {
          v13 = 0;
          do
          {
            if (*v53 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v52 + 1) + 8 * v13);
            v15 = [MTContentKeyRequest alloc];
            v16 = [v14 keyIdentifier];
            v17 = [v14 contentAdamId];
            v18 = [v14 secureInvalidationDsid];
            v19 = [(MTContentKeyRequest *)v15 initWithKeyIdentifier:v16 adamId:v17 requestType:3 offlineRequest:1 secureInvalidationDsid:v18];

            v20 = [v14 contentAdamId];
            if (v20)
            {
              v21 = v20;
              v22 = [v14 keyData];

              if (v22)
              {
                v23 = [v14 keyData];
                v24 = [v14 contentAdamId];
                [v44 setObject:v23 forKeyedSubscript:v24];
              }
            }

            v25 = __pendingStopNonceRequestAdamIds;
            v26 = [(MTContentKeyRequest *)v19 adamId];
            LOBYTE(v25) = [v25 containsObject:v26];

            if ((v25 & 1) == 0)
            {
              [v45 addObject:v19];
              v27 = __pendingStopNonceRequestAdamIds;
              v28 = [(MTContentKeyRequest *)v19 adamId];
              [v27 addObject:v28];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v11);
      }

      v29 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v37;
        v57 = __pendingStopNonceRequestAdamIds;
        _os_log_impl(&dword_1D8CEC000, v29, OS_LOG_TYPE_DEFAULT, "Pending stop nonce requests: %@", buf, 0xCu);
      }

      v1 = v40;
      v30 = [*(v40 + 40) secureKeyRequestHandler];
      v31 = [*(v40 + 40) account];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_63;
      v47[3] = &unk_1E85690C0;
      v47[4] = *(v40 + 40);
      v48 = v45;
      v2 = v39;
      v49 = v39;
      v50 = v44;
      v3 = v38;
      v51 = v38;
      v32 = v44;
      v33 = v45;
      [v30 loadKeyDataFor:v33 account:v31 completion:v47];

      v6 = v43 - v41;
      v7 = v41 + v42;
    }

    while (v43 != v41);
  }

  v34 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v3, v34);
  v35 = *(v1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v2);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_63(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] keyLoaderQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2;
  v8[3] = &unk_1E8569098;
  v9 = a1[5];
  v10 = v3;
  v11 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v12 = v5;
  v13 = v6;
  v14 = a1[8];
  v7 = v3;
  dispatch_async(v4, v8);
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v66;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v66 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = __pendingStopNonceRequestAdamIds;
        v7 = [*(*(&v65 + 1) + 8 * i) adamId];
        [v6 removeObject:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v3);
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  group = dispatch_group_create();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = a1;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v62;
    v49 = *MEMORY[0x1E69873A8];
    *&v11 = 138412546;
    v47 = v11;
    v50 = *v62;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v61 + 1) + 8 * j);
        v16 = [v15 error];

        if (v16)
        {
          v17 = [v15 request];
          v18 = [v17 adamId];

          if (!v18)
          {
            continue;
          }

          v19 = *(v8 + 48);
          v20 = [v15 error];
          v21 = [v15 request];
          v22 = [v21 adamId];
          [v19 setObject:v20 forKey:v22];
        }

        else
        {
          v23 = *(v8 + 56);
          v24 = [v15 request];
          v25 = [v24 adamId];
          v20 = [v23 objectForKey:v25];

          if (v20)
          {
            v26 = v9;
            v27 = _MTLogCategoryDRM();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v15 keyData];
              v29 = [v28 base64EncodedStringWithOptions:0];
              v30 = [v15 request];
              v31 = [v30 adamId];
              *buf = v47;
              v72 = v29;
              v73 = 2112;
              v74 = v31;
              _os_log_impl(&dword_1D8CEC000, v27, OS_LOG_TYPE_DEFAULT, "Stop request sending nonce data %@ for adam id %@", buf, 0x16u);

              v8 = a1;
            }

            v32 = [v15 keyData];
            if (v32)
            {
              v69 = v49;
              v33 = [v15 keyData];
              v70 = v33;
              v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            }

            else
            {
              v21 = 0;
            }

            dispatch_group_enter(group);
            v39 = [*(v8 + 64) contentKeySession];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_65;
            v57[3] = &unk_1E8569048;
            v57[4] = v15;
            v58 = *(v8 + 48);
            v59 = group;
            v60 = v52;
            [v39 invalidatePersistableContentKey:v20 options:v21 completionHandler:v57];

            v9 = v26;
            v13 = v50;
          }

          else
          {
            v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383005 userInfo:0];
            v34 = [v15 request];
            v35 = [v34 adamId];

            if (v35)
            {
              v36 = *(v8 + 48);
              v37 = [v15 request];
              v38 = [v37 adamId];
              [v36 setObject:v21 forKey:v38];
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v12);
  }

  v40 = dispatch_time(0, 30000000000);
  dispatch_group_wait(group, v40);
  v41 = [*(v8 + 64) secureKeyRequestHandler];
  v42 = [*(v8 + 64) account];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2_67;
  v53[3] = &unk_1E8569070;
  v43 = *(v8 + 48);
  v44 = *(v8 + 64);
  v45 = *(v8 + 72);
  v54 = v43;
  v55 = v44;
  v56 = v45;
  [v41 loadKeyDataFor:v52 account:v42 completion:v53];

  v46 = *MEMORY[0x1E69E9840];
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) request];
    v7 = [v6 adamId];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) request];
      v10 = [v9 adamId];
      [v8 setObject:v5 forKey:v10];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v11 = [MTContentKeyRequest alloc];
    v12 = [*(a1 + 32) request];
    v13 = [v12 keyIdentifier];
    v14 = [*(a1 + 32) request];
    v15 = [v14 adamId];
    v16 = [*(a1 + 32) request];
    v17 = [v16 secureInvalidationDsid];
    v18 = [(MTContentKeyRequest *)v11 initWithKeyIdentifier:v13 adamId:v15 requestType:2 offlineRequest:1 secureInvalidationDsid:v17];

    [(MTContentKeyRequest *)v18 setRequestData:v19];
    [*(a1 + 56) addObject:v18];
    dispatch_group_leave(*(a1 + 48));
  }
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2_67(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    *&v5 = 138412546;
    v25 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 error];
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        v12 = [v9 error];
        if ([v12 code] == -1002)
        {

LABEL_12:
          v19 = [*(a1 + 40) secureKeyRequestStorage];
          [v19 removeKeyDataFor:v9];
          goto LABEL_13;
        }

        v13 = [v9 request];
        v14 = [v13 adamId];

        if (!v14)
        {
          goto LABEL_12;
        }

        v15 = *(a1 + 32);
        v16 = [v9 error];
        v17 = [v9 request];
        v18 = [v17 adamId];
        [v15 setObject:v16 forKey:v18];

        v19 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v9 error];
          v21 = [v20 localizedDescription];
          v22 = [v9 request];
          v23 = [v22 adamId];
          *buf = v25;
          v31 = v21;
          v32 = 2112;
          v33 = v23;
          _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_ERROR, "Stop request failed with error %@ for adam id %@", buf, 0x16u);
        }

LABEL_13:
      }

      v6 = [v3 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v6);
  }

  dispatch_group_leave(*(a1 + 48));

  v24 = *MEMORY[0x1E69E9840];
}

- (void)invalidateAndCancel
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    recipient = [(IMAVSecureKeyLoader *)self recipient];
    v5 = [recipient URL];
    absoluteString = [v5 absoluteString];
    v10 = 138412290;
    v11 = absoluteString;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate and cancel for %@", &v10, 0xCu);
  }

  contentKeySession = [(IMAVSecureKeyLoader *)self contentKeySession];
  recipient2 = [(IMAVSecureKeyLoader *)self recipient];
  [contentKeySession removeContentKeyRecipient:recipient2];

  [(IMAVSecureKeyLoader *)self setContentKeySession:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)requestKeyResponseFromContentKeyRequest:(id)request requestType:(int64_t)type completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  identifier = [requestCopy identifier];
  contentKeySession = [(IMAVSecureKeyLoader *)self contentKeySession];

  v12 = _MTLogCategoryDRM();
  v13 = v12;
  if (contentKeySession)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [requestCopy identifier];
      *buf = 138412546;
      v26 = identifier2;
      v27 = 2048;
      typeCopy3 = type;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "[Request Key Response] for %@. Request type %ld", buf, 0x16u);
    }

    if (!completionCopy)
    {
      [IMAVSecureKeyLoader requestKeyResponseFromContentKeyRequest:requestType:completion:];
    }

    keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke;
    block[3] = &unk_1E8569200;
    v20 = requestCopy;
    selfCopy = self;
    typeCopy2 = type;
    v23 = completionCopy;
    v22 = identifier;
    dispatch_async(keyLoaderQueue, block);

    v16 = v20;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [requestCopy identifier];
      *buf = 138412546;
      v26 = identifier3;
      v27 = 2048;
      typeCopy3 = type;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_ERROR, "[Request Key Response] Failed for %@. Request type %ld. ContentKeySession is nil.", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383006 userInfo:0];
    [(IMAVSecureKeyLoader *)self cleanupAfterContentKeyRequestWithError:v16];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 dataUsingEncoding:4];

  v4 = ([*(a1 + 40) _isOfflineAsset] & 1) != 0 || objc_msgSend(*(a1 + 40), "useCase") == 1;
  v5 = [MTContentKeyRequest alloc];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) contentAdamId];
  v8 = [(MTContentKeyRequest *)v5 initFrom:v6 adamId:v7 requestType:*(a1 + 64) offlineRequest:v4];

  if ([*(a1 + 40) _isOfflineAsset] && !objc_msgSend(*(a1 + 40), "useCase"))
  {
    v18 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) identifier];
      v20 = [*(a1 + 40) contentAdamId];
      *buf = 138412546;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_1D8CEC000, v18, OS_LOG_TYPE_DEFAULT, "[Request Key Response] offline key %@ content adam id %@", buf, 0x16u);
    }

    v21 = [*(a1 + 40) secureKeyRequestStorage];
    v22 = [v21 retrieveKeyDataFor:v8];

    if (v22)
    {
      (*(*(a1 + 56) + 16))();

      goto LABEL_11;
    }

    v23 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v23, OS_LOG_TYPE_DEFAULT, "[Request Key Response] offline key should be local, but is missing. This will be reported, but we will attempt to recover.", buf, 2u);
    }

    +[_TtC18PodcastsFoundation19PFBugReporterBridge reportMissingFairPlayOfflineKey];
  }

  if ([*(a1 + 40) _isOfflineAsset])
  {
    if ([*(a1 + 40) useCase] == 1)
    {
      v9 = [*(a1 + 40) secureKeyRequestStorage];
      v10 = [v8 adamId];
      v11 = [v9 keyExistsInStorageFor:{objc_msgSend(v10, "longLongValue")}];

      if (v11)
      {
        v12 = [*(a1 + 40) secureKeyRequestStorage];
        v13 = [v8 adamId];
        [v12 markOfflineKeyFor:objc_msgSend(v13 pendingDeletion:{"longLongValue"), 0}];
      }
    }
  }

  v14 = [*(a1 + 40) secureKeyRequestHandler];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_70;
  v24[3] = &unk_1E85691D8;
  v24[4] = *(a1 + 40);
  v25 = v3;
  v26 = *(a1 + 32);
  v27 = v8;
  v29 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v28 = v15;
  v30 = v16;
  v31 = v4;
  [v14 loadCertificateDataWithCompletion:v24];

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2;
  block[3] = &unk_1E85691B0;
  v14 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v18 = *(a1 + 72);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v15 = v9;
  v16 = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v17 = v10;
  v19 = v11;
  v20 = *(a1 + 88);
  v12 = v3;
  dispatch_async(v4, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) keyData];
  v3 = [*(a1 + 32) error];
  if (v2 && *(a1 + 40))
  {
    if ([*(a1 + 48) status] != 5 && objc_msgSend(*(a1 + 48), "status") != 4)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_3;
      v18[3] = &unk_1E8569188;
      v17 = *(a1 + 56);
      v14 = v17.i64[0];
      v19 = vextq_s8(v17, v17, 8uLL);
      v22 = *(a1 + 80);
      v15 = *(a1 + 72);
      v16 = *(a1 + 88);
      v20 = v15;
      v23 = v16;
      v21 = *(a1 + 48);
      v24 = *(a1 + 96);
      [v13 makeStreamingContentKeyRequestDataForApp:v2 contentIdentifier:v12 options:0 completionHandler:v18];

      goto LABEL_12;
    }

    v4 = [*(a1 + 48) error];

    if (v4)
    {
      v25 = *MEMORY[0x1E696AA08];
      v5 = [*(a1 + 48) error];
      v26[0] = v5;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = -383003;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v4 = v8;
    if (v3)
    {
      [v8 setObject:v3 forKey:*MEMORY[0x1E696AA08]];
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = -383001;
  }

  v9 = [v6 errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:v7 userInfo:v4];
  v10 = [[MTContentKeyResponse alloc] initWithRequest:*(a1 + 56) error:v9];
  (*(*(a1 + 80) + 16))();

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_4;
  block[3] = &unk_1E8569160;
  v13 = v6;
  v14 = *(a1 + 40);
  v19 = *(a1 + 64);
  v15 = v5;
  v8 = *(a1 + 48);
  v20 = *(a1 + 72);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 56);
  v21 = *(a1 + 80);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v15 = [[MTContentKeyResponse alloc] initWithRequest:*(a1 + 40) error:*(a1 + 32)];
    (*(*(a1 + 80) + 16))();
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 40) setRequestData:*(a1 + 48)];
    v3 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = [*(a1 + 40) adamId];
      v6 = *(a1 + 88);
      *buf = 138412802;
      v23 = v4;
      v24 = 2112;
      v25 = v5;
      v26 = 2048;
      v27 = v6;
      _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "[Request Key Response] Loading key request data from network for %@ adam id %@. Request type %ld", buf, 0x20u);
    }

    if (*(a1 + 88) != 2)
    {
      [*(a1 + 64) setSavedRequestToUseForStopping:*(a1 + 40)];
      [*(a1 + 64) setSavedRequestDataToUseForStopping:*(a1 + 48)];
    }

    v7 = [*(a1 + 64) secureKeyRequestHandler];
    v21 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v9 = [*(a1 + 64) account];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_72;
    v17[3] = &unk_1E8569138;
    v16 = *(a1 + 64);
    v10 = *(a1 + 80);
    v11 = *(a1 + 72);
    v20 = *(a1 + 96);
    *&v12 = *(a1 + 56);
    *(&v12 + 1) = v10;
    *&v13 = v16;
    *(&v13 + 1) = v11;
    v18 = v13;
    v19 = v12;
    [v7 loadKeyDataFor:v8 account:v9 completion:v17];

    v14 = *MEMORY[0x1E69E9840];
  }
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2_73;
  block[3] = &unk_1E8569110;
  v12 = v3;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v15 = *(a1 + 64);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 32);
  v10 = v7;
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v5;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2_73(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 error];

  if (!v3)
  {
    v4 = [v2 keyData];
    v5 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      v7 = [v2 keyData];
      v15 = 0;
      v8 = [v6 persistableContentKeyFromKeyVendorResponse:v7 options:0 error:&v15];
      v9 = v15;

      if (v9)
      {
        [v2 setError:v9];
        (*(*(a1 + 64) + 16))();

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v8 = v4;
    }

    [v2 setKeyData:v8];
    if (*(a1 + 72) == 1)
    {
      v10 = [*(a1 + 48) secureKeyRequestStorage];
      v11 = [v10 saveKeyDataFor:v2];

      if ((v11 & 1) == 0)
      {
        v12 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 56);
          *buf = 138412290;
          v17 = v13;
          _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_ERROR, "[Request Key Response] Failed to save offline keyData for %@", buf, 0xCu);
        }
      }
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_13;
  }

  (*(*(a1 + 64) + 16))();
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)timeoutKeyRequest
{
  keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__IMAVSecureKeyLoader_timeoutKeyRequest__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(keyLoaderQueue, block);
}

void __40__IMAVSecureKeyLoader_timeoutKeyRequest__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) contentAdamId];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_ERROR, "Content key request timeout for content id %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383002 userInfo:0];
  [*(a1 + 32) cleanupAfterContentKeyRequestForOfflineRenewal:objc_msgSend(*(a1 + 32) withError:{"isRenewal"), v4}];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)cleanupAfterContentKeyRequestForOfflineRenewal:(BOOL)renewal withError:(id)error
{
  renewalCopy = renewal;
  errorCopy = error;
  if (renewalCopy)
  {
    [(IMAVSecureKeyLoader *)self setContentAdamId:0];
  }

  pendingCompletion = [(IMAVSecureKeyLoader *)self pendingCompletion];

  if (pendingCompletion)
  {
    pendingCompletion2 = [(IMAVSecureKeyLoader *)self pendingCompletion];
    [(IMAVSecureKeyLoader *)self setPendingCompletion:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__IMAVSecureKeyLoader_cleanupAfterContentKeyRequestForOfflineRenewal_withError___block_invoke;
    v10[3] = &unk_1E8569228;
    v12 = pendingCompletion2;
    v11 = errorCopy;
    v9 = pendingCompletion2;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (BOOL)_isOfflineAsset
{
  recipient = [(IMAVSecureKeyLoader *)self recipient];
  v3 = [recipient URL];
  isFileURL = [v3 isFileURL];

  return isFileURL;
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request", buf, 2u);
  }

  if ([(IMAVSecureKeyLoader *)self useCase]== 1 || [(IMAVSecureKeyLoader *)self _isOfflineAsset])
  {
    v7 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [requestCopy identifier];
      *buf = 138412290;
      v19 = identifier;
      _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Offline key: received initial request, now waiting for offline request for %@", buf, 0xCu);
    }

    v17 = 0;
    v9 = [requestCopy respondByRequestingPersistableContentKeyRequestAndReturnError:&v17];
    v10 = v17;
    if ((v9 & 1) == 0)
    {
      v11 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [requestCopy identifier];
        contentAdamId = [(IMAVSecureKeyLoader *)self contentAdamId];
        *buf = 138412802;
        v19 = identifier2;
        v20 = 2112;
        v21 = contentAdamId;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "Offline key: offline request failed for %@ episode %@ with error %@", buf, 0x20u);
      }

      [(IMAVSecureKeyLoader *)self cleanupAfterContentKeyRequestWithError:v10];
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__IMAVSecureKeyLoader_contentKeySession_didProvideContentKeyRequest___block_invoke;
    v15[3] = &unk_1E8569250;
    v15[4] = self;
    v16 = requestCopy;
    [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v16 requestType:0 completion:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request
{
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request for renewal for %@.", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__IMAVSecureKeyLoader_contentKeySession_didProvideRenewingContentKeyRequest___block_invoke;
  v10[3] = &unk_1E8569250;
  v10[4] = self;
  v11 = requestCopy;
  v8 = requestCopy;
  [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v8 requestType:1 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138412546;
    v15 = identifier;
    v16 = 1024;
    isRenewal = [(IMAVSecureKeyLoader *)self isRenewal];
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request for persistable key for %@. renewal? %d", buf, 0x12u);
  }

  isRenewal2 = [(IMAVSecureKeyLoader *)self isRenewal];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__IMAVSecureKeyLoader_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke;
  v12[3] = &unk_1E8569250;
  v9 = isRenewal2;
  v12[4] = self;
  v13 = requestCopy;
  v10 = requestCopy;
  [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v10 requestType:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __80__IMAVSecureKeyLoader_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 finishContentKeyRequest:v3 forOfflineRenewal:objc_msgSend(v2 withResponse:{"isRenewal"), v4}];
}

- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed
{
  v10 = *MEMORY[0x1E69E9840];
  succeedCopy = succeed;
  v5 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [succeedCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "🔑 Content key request succeeded for %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  v9 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    identifier = [requestCopy identifier];
    v15 = 138412546;
    v16 = identifier;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_ERROR, "🔑🚨 Content key request failed for %@ with error: %@", &v15, 0x16u);
  }

  delegate = [(IMAVSecureKeyLoader *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(IMAVSecureKeyLoader *)self delegate];
    [delegate2 contentKeyRequestDidFailWithError:errorCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (IMAVSecureKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end