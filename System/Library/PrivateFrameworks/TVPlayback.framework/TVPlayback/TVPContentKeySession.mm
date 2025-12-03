@interface TVPContentKeySession
+ (void)initialize;
- (TVPContentKeySession)initWithContentKeyLoader:(id)loader avAsset:(id)asset;
- (void)_finishOfflineKeyGeneration;
- (void)_timeoutOfflineKeyRequestGeneration;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didUpdatePersistableContentKey:(id)key forContentKeyIdentifier:(id)identifier;
- (void)fetchOfflineKeysForParams:(id)params completion:(id)completion;
- (void)finishKeyRequest:(id)request;
- (void)makeSecureInvalidationDataForOfflineKeyData:(id)data nonceData:(id)nonceData completion:(id)completion;
@end

@implementation TVPContentKeySession

+ (void)initialize
{
  if (initialize_onceToken_10 != -1)
  {
    +[TVPContentKeySession initialize];
  }
}

uint64_t __34__TVPContentKeySession_initialize__block_invoke()
{
  sLogObject_7 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");

  return MEMORY[0x2821F96F8]();
}

- (TVPContentKeySession)initWithContentKeyLoader:(id)loader avAsset:(id)asset
{
  loaderCopy = loader;
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = TVPContentKeySession;
  v9 = [(TVPContentKeySession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentKeyLoader, loader);
    v11 = [MEMORY[0x277CE64D8] contentKeySessionWithKeySystem:*MEMORY[0x277CE5D20]];
    contentKeySession = v10->_contentKeySession;
    v10->_contentKeySession = v11;

    [(AVContentKeySession *)v10->_contentKeySession setDelegate:v10 queue:MEMORY[0x277D85CD0]];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyRequestsInProgress = v10->_keyRequestsInProgress;
    v10->_keyRequestsInProgress = v13;

    if (assetCopy)
    {
      [(AVContentKeySession *)v10->_contentKeySession addContentKeyRecipient:assetCopy];
    }

    v15 = dispatch_queue_create("com.apple.TVPContentKeyProcessing", 0);
    contentKeyProcessingQueue = v10->_contentKeyProcessingQueue;
    v10->_contentKeyProcessingQueue = v15;
  }

  return v10;
}

- (void)makeSecureInvalidationDataForOfflineKeyData:(id)data nonceData:(id)nonceData completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  nonceDataCopy = nonceData;
  completionCopy = completion;
  if (nonceDataCopy)
  {
    v17 = *MEMORY[0x277CE5D18];
    v18[0] = nonceDataCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v11 = 0;
  }

  contentKeySession = [(TVPContentKeySession *)self contentKeySession];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__TVPContentKeySession_makeSecureInvalidationDataForOfflineKeyData_nonceData_completion___block_invoke;
  v15[3] = &unk_279D7D320;
  v16 = completionCopy;
  v13 = completionCopy;
  [contentKeySession invalidatePersistableContentKey:dataCopy options:v11 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __89__TVPContentKeySession_makeSecureInvalidationDataForOfflineKeyData_nonceData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__TVPContentKeySession_makeSecureInvalidationDataForOfflineKeyData_nonceData_completion___block_invoke_2;
  block[3] = &unk_279D7D2F8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __89__TVPContentKeySession_makeSecureInvalidationDataForOfflineKeyData_nonceData_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)fetchOfflineKeysForParams:(id)params completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = paramsCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        keyIdentifier = [v14 keyIdentifier];

        if (keyIdentifier)
        {
          keyIdentifier2 = [v14 keyIdentifier];
          [v8 addObject:keyIdentifier2];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__TVPContentKeySession_fetchOfflineKeysForParams_completion___block_invoke;
  v20[3] = &unk_279D7DD00;
  v21 = v9;
  selfCopy = self;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = v9;
  [(TVPContentKeySession *)self _generateOfflineKeyRequestsForIdentifiers:v8 isRenewal:0 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __61__TVPContentKeySession_fetchOfflineKeysForParams_completion___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_ERROR))
    {
      __61__TVPContentKeySession_fetchOfflineKeysForParams_completion___block_invoke_cold_2();
    }

    v24 = *(a1 + 48);
    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_29:
    (*(v24 + 16))();
    goto LABEL_30;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v3;
  v4 = v3;
  v31 = [v4 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v31)
  {
    v30 = *v37;
    obj = v4;
    v28 = a1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = sLogObject_7;
        if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v6;
          _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Loading key request %@", buf, 0xCu);
        }

        v8 = [v6 keyIdentifier];
        v9 = [v8 absoluteString];

        if (v9)
        {
          v29 = v6;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v10 = *(a1 + 32);
          v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v33;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v32 + 1) + 8 * j);
                v16 = [v15 keyIdentifier];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v15 keyIdentifier];
                  v19 = [v18 isEqualToString:v9];

                  if (v19)
                  {
                    v20 = [v15 keyFormatVersions];
                    [v29 setKeyFormatVersions:v20];

                    goto LABEL_21;
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          a1 = v28;
        }
      }

      v4 = obj;
      v31 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v31);
  }

  v21 = [*(a1 + 40) contentKeyLoader];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [*(a1 + 40) contentKeyLoader];
    [v23 loadFairPlayStreamingKeyRequests:v4 completion:*(a1 + 48)];

    v3 = v26;
    goto LABEL_30;
  }

  if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_ERROR))
  {
    __61__TVPContentKeySession_fetchOfflineKeysForParams_completion___block_invoke_cold_1();
  }

  v24 = *(a1 + 48);
  v3 = v26;
  if (v24)
  {
    goto LABEL_29;
  }

LABEL_30:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)finishKeyRequest:(id)request
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([requestCopy isCancelled])
  {
    v5 = sLogObject_7;
    if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Key request cancelled or failed, not processing response";
LABEL_4:
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else if ([requestCopy type] || !objc_msgSend(requestCopy, "wantsOfflineKeysIfPossible"))
  {
    if ([requestCopy type] != 3)
    {
      keyResponseData = [requestCopy keyResponseData];
      if ([keyResponseData length])
      {
        contentKeySession = [(TVPContentKeySession *)self contentKeySession];
        contentKeyRecipients = [contentKeySession contentKeyRecipients];
        v13 = [contentKeyRecipients count];

        v14 = sLogObject_7;
        v15 = os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = v14;
            renewalDate = [requestCopy renewalDate];
            *buf = 138412546;
            v35 = requestCopy;
            v36 = 2112;
            v37 = renewalDate;
            _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Received key response data.  Will call processContentKeyResponse on separate queue for key request %@, renewal date: %@", buf, 0x16u);
          }

          objc_initWeak(buf, self);
          contentKeyProcessingQueue = [(TVPContentKeySession *)self contentKeyProcessingQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__TVPContentKeySession_finishKeyRequest___block_invoke_11;
          block[3] = &unk_279D7C4C0;
          objc_copyWeak(&v30, buf);
          v28 = requestCopy;
          v29 = keyResponseData;
          dispatch_async(contentKeyProcessingQueue, block);

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        else if (v15)
        {
          *buf = 138412290;
          v35 = requestCopy;
          _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Key request was successful, but not processing because no content key recipient exists.  %@", buf, 0xCu);
        }
      }

      else
      {
        error = [requestCopy error];
        if (!error)
        {
          error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345007 userInfo:0];
        }

        contentKeySession2 = [(TVPContentKeySession *)self contentKeySession];
        contentKeyRecipients2 = [contentKeySession2 contentKeyRecipients];
        v22 = [contentKeyRecipients2 count];

        v23 = sLogObject_7;
        v24 = os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_ERROR);
        if (v22)
        {
          if (v24)
          {
            [(TVPContentKeySession *)v23 finishKeyRequest:requestCopy];
          }

          avContentKeyRequest = [requestCopy avContentKeyRequest];
          [avContentKeyRequest processContentKeyResponseError:error];
        }

        else if (v24)
        {
          [(TVPContentKeySession *)v23 finishKeyRequest:requestCopy];
        }
      }
    }
  }

  else
  {
    avContentKeyRequest2 = [requestCopy avContentKeyRequest];
    v8 = [avContentKeyRequest2 respondByRequestingPersistableContentKeyRequestAndReturnError:0];

    v5 = sLogObject_7;
    v9 = os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v6 = "Request can use offline keys.  Waiting for new offline key request.";
      goto LABEL_4;
    }

    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Request cannot use offline keys.  Re-sending request with type set to streaming.", buf, 2u);
    }

    [requestCopy setType:1];
    objc_initWeak(buf, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__TVPContentKeySession_finishKeyRequest___block_invoke;
    v31[3] = &unk_279D7BA58;
    objc_copyWeak(&v33, buf);
    v32 = requestCopy;
    dispatch_async(MEMORY[0x277D85CD0], v31);

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
}

void __41__TVPContentKeySession_finishKeyRequest___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contentKeyLoader];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 loadFairPlayStreamingKeyRequests:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __41__TVPContentKeySession_finishKeyRequest___block_invoke_11(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = sLogObject_7;
  v5 = os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Calling processContentKeyResponse for %@", &v16, 0xCu);
    }

    v7 = [*(a1 + 32) avContentKeyRequest];
    v8 = MEMORY[0x277CE64D0];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) renewalDate];
    v11 = [v8 contentKeyResponseWithFairPlayStreamingKeyResponseData:v9 renewalDate:v10];
    [v7 processContentKeyResponse:v11];

    v4 = sLogObject_7;
    if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v16 = 138412290;
      v17 = v12;
      v13 = "processContentKeyResponse complete for %@";
LABEL_8:
      _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, v13, &v16, 0xCu);
    }
  }

  else if (v5)
  {
    v14 = *(a1 + 32);
    v16 = 138412290;
    v17 = v14;
    v13 = "Not calling processContentKeyResponse since content key session no longer exists for %@";
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  v17[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  requestCopy = request;
  if (requestCopy)
  {
    offlineKeyIdentifiersInProgress = [(TVPContentKeySession *)self offlineKeyIdentifiersInProgress];
    v9 = [offlineKeyIdentifiersInProgress count];

    if (v9)
    {
      v10 = sLogObject_7;
      if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "Offline key generation: received initial key request, now waiting for new offline key request.", buf, 2u);
      }

      v15 = 0;
      v11 = [requestCopy respondByRequestingPersistableContentKeyRequestAndReturnError:&v15];
      v12 = v15;
      if ((v11 & 1) == 0)
      {
        v13 = sLogObject_7;
        if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_ERROR))
        {
          [TVPContentKeySession contentKeySession:v12 didProvideContentKeyRequest:v13];
        }
      }
    }

    else
    {
      v17[0] = requestCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [(TVPContentKeySession *)self _loadAVContentKeyRequests:v12 type:0 isRenewal:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request
{
  v10 = *MEMORY[0x277D85DE8];
  if (request)
  {
    requestCopy = request;
    v5 = MEMORY[0x277CBEA60];
    requestCopy2 = request;
    v7 = [v5 arrayWithObjects:&requestCopy count:1];

    [(TVPContentKeySession *)self _loadAVContentKeyRequests:v7 type:0 isRenewal:1, requestCopy, v10];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  requestCopy = request;
  if (requestCopy)
  {
    offlineKeyIdentifiersInProgress = [(TVPContentKeySession *)self offlineKeyIdentifiersInProgress];
    v9 = [offlineKeyIdentifiersInProgress count];

    if (v9)
    {
      v10 = [[TVPContentKeyRequest alloc] initWithAVContentKeyRequest:requestCopy];
      [(TVPContentKeyRequest *)v10 setContentKeySession:self];
      [(TVPContentKeyRequest *)v10 setIsRenewal:[(TVPContentKeySession *)self offlineKeyGenerationIsForRenewal]];
      [(TVPContentKeyRequest *)v10 setType:2];
      v11 = sLogObject_7;
      if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Offline key generation: received offline content key request: %@", buf, 0xCu);
      }

      keyRequestsInProgress = [(TVPContentKeySession *)self keyRequestsInProgress];
      [keyRequestsInProgress addObject:v10];

      keyRequestsInProgress2 = [(TVPContentKeySession *)self keyRequestsInProgress];
      v14 = [keyRequestsInProgress2 count];
      offlineKeyIdentifiersInProgress2 = [(TVPContentKeySession *)self offlineKeyIdentifiersInProgress];
      v16 = [offlineKeyIdentifiersInProgress2 count];

      v17 = sLogObject_7;
      v18 = os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT);
      if (v14 == v16)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Offline key generation: all offline content key requests received", buf, 2u);
        }

        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__timeoutOfflineKeyRequestGeneration object:0];
        [(TVPContentKeySession *)self _finishOfflineKeyGeneration];
      }

      else if (v18)
      {
        v19 = v17;
        offlineKeyIdentifiersInProgress3 = [(TVPContentKeySession *)self offlineKeyIdentifiersInProgress];
        v21 = [offlineKeyIdentifiersInProgress3 count];
        keyRequestsInProgress3 = [(TVPContentKeySession *)self keyRequestsInProgress];
        v23 = [keyRequestsInProgress3 count];
        *buf = 134217984;
        v27 = (v21 - v23);
        _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Offline key generation: still waiting for %lu offline content key requests", buf, 0xCu);
      }
    }

    else
    {
      v25 = requestCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [(TVPContentKeySession *)self _loadAVContentKeyRequests:v10 type:2 isRenewal:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didUpdatePersistableContentKey:(id)key forContentKeyIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  keyCopy = key;
  identifierCopy = identifier;
  v11 = sLogObject_7;
  if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Received updated persistable content key for identifier %@", &v17, 0xCu);
  }

  if (!identifierCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentKeyLoader2 = identifierCopy;
      if (![contentKeyLoader2 length])
      {
        v12 = 0;
        goto LABEL_14;
      }

      v12 = [MEMORY[0x277CBEBC0] URLWithString:contentKeyLoader2];

      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = identifierCopy;
LABEL_6:
  contentKeyLoader = [(TVPContentKeySession *)self contentKeyLoader];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    contentKeyLoader2 = [(TVPContentKeySession *)self contentKeyLoader];
    [contentKeyLoader2 updateOfflineKeyWithIdentifier:v12 updatedOfflineKeyData:keyCopy];
LABEL_14:
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_timeoutOfflineKeyRequestGeneration
{
  if (os_log_type_enabled(sLogObject_7, OS_LOG_TYPE_ERROR))
  {
    [TVPContentKeySession _timeoutOfflineKeyRequestGeneration];
  }

  [(TVPContentKeySession *)self _finishOfflineKeyGeneration];
}

- (void)_finishOfflineKeyGeneration
{
  keyRequestsInProgress = [(TVPContentKeySession *)self keyRequestsInProgress];
  v6 = [keyRequestsInProgress copy];

  offlineKeyGenerationCompletionHandler = [(TVPContentKeySession *)self offlineKeyGenerationCompletionHandler];
  [(TVPContentKeySession *)self setOfflineKeyGenerationCompletionHandler:0];
  [(TVPContentKeySession *)self setOfflineKeyIdentifiersInProgress:0];
  [(TVPContentKeySession *)self setOfflineKeyGenerationIsForRenewal:0];
  keyRequestsInProgress2 = [(TVPContentKeySession *)self keyRequestsInProgress];
  [keyRequestsInProgress2 removeAllObjects];

  if (offlineKeyGenerationCompletionHandler)
  {
    (offlineKeyGenerationCompletionHandler)[2](offlineKeyGenerationCompletionHandler, v6);
  }
}

- (void)finishKeyRequest:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 requestID];
  v4 = [a2 keyIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_26CEDD000, v5, v6, "Processing error for key request [%lu: %{public}@] : %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)finishKeyRequest:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 requestID];
  v4 = [a2 keyIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0(&dword_26CEDD000, v5, v6, "Received error for key request, but not processing because no content key recipient exists.  [%lu: %{public}@] : %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(uint64_t)a1 didProvideContentKeyRequest:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Offline key generation: Request for persistable key request failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end