@interface VUIStoreFPSKeyLoader
+ (void)_loadAndCacheCertificateDataForValidURL:(id)a3 completion:(id)a4;
+ (void)_loadFPSURLsFromStoreBagWithCompletion:(id)a3;
+ (void)initialize;
+ (void)preFetchFPSCertificate;
- (BOOL)_isVideoCurrentlyBeingPlayedForKeyRequest:(id)a3;
- (VUIStoreFPSKeyLoader)initWithCertificateURL:(id)a3 keyServerURL:(id)a4;
- (VUIStoreFPSKeyLoaderDelegate)delegate;
- (id)_bodyDictionaryForRequests:(id)a3 isStopRequest:(BOOL)a4 deviceLocation:(id)a5;
- (id)_errorForStoreResponseStatus:(int64_t)a3 deviceLimit:(id)a4;
- (id)_jsonDictionaryForRequest:(id)a3 isStopRequest:(BOOL)a4 deviceLocation:(id)a5;
- (void)_failKeyRequests:(id)a3 withError:(id)a4;
- (void)_generateKeyRequestDataForKeyRequests:(id)a3 completion:(id)a4;
- (void)_generateSecureInvalidationDataForFirstRequest:(id)a3 completion:(id)a4;
- (void)_handleResponseDict:(id)a3 forKeyRequest:(id)a4 completion:(id)a5;
- (void)_handleResponseDicts:(id)a3 forKeyRequests:(id)a4 completion:(id)a5;
- (void)_handleResponseForKeyRequests:(id)a3 responseData:(id)a4 URLResponse:(id)a5 error:(id)a6 completion:(id)a7;
- (void)_initiateKeyRequests:(id)a3 completion:(id)a4;
- (void)_invalidateValidKeyRequestsInBatches:(id)a3 completion:(id)a4;
- (void)_loadCertificateDataWithCompletion:(id)a3;
- (void)_loadNonceDataForRequests:(id)a3 completion:(id)a4;
- (void)_sendKeyRequestsToServer:(id)a3 isStopRequest:(BOOL)a4 isSecureInvalidationRequest:(BOOL)a5 completion:(id)a6;
- (void)_startKeyRequests:(id)a3 completion:(id)a4;
- (void)_startKeyRequestsInBatches:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)invalidateKeysWithRequests:(id)a3 completion:(id)a4;
- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4;
- (void)removeAllEntriesFromKeyIdentifierPenaltyBox;
- (void)sendStreamingStopRequestIfNecessary;
@end

@implementation VUIStoreFPSKeyLoader

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[VUIStoreFPSKeyLoader initialize];
  }
}

void __34__VUIStoreFPSKeyLoader_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");
  v1 = sLogObject_0;
  sLogObject_0 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v3 = sOperationQueue;
  sOperationQueue = v2;

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = sCachedCertData;
  sCachedCertData = v4;
}

+ (void)preFetchFPSCertificate
{
  v2 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Prefetching store FPS certificate", v3, 2u);
  }

  [VUIStoreFPSKeyLoader _loadFPSURLsFromStoreBagWithCompletion:&__block_literal_global_14];
}

uint64_t __46__VUIStoreFPSKeyLoader_preFetchFPSCertificate__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [VUIStoreFPSKeyLoader _loadAndCacheCertificateDataForValidURL:a2 completion:0];
  }

  return result;
}

- (VUIStoreFPSKeyLoader)initWithCertificateURL:(id)a3 keyServerURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = VUIStoreFPSKeyLoader;
  v8 = [(VUIStoreFPSKeyLoader *)&v22 init];
  if (v8)
  {
    v9 = [v6 copy];
    certificateURL = v8->_certificateURL;
    v8->_certificateURL = v9;

    v11 = [v7 copy];
    keyServerURL = v8->_keyServerURL;
    v8->_keyServerURL = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestsAwaitingCertFetch = v8->_requestsAwaitingCertFetch;
    v8->_requestsAwaitingCertFetch = v13;

    v8->_usesKeyIdentifierPenaltyBox = 1;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyIdentifierPenaltyBox = v8->_keyIdentifierPenaltyBox;
    v8->_keyIdentifierPenaltyBox = v15;

    v8->_state = 0;
    v17 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v17 doubleForKey:*MEMORY[0x1E69DF818]];
    v8->_downloadExpirationPeriodOverrideInSeconds = v18;

    v19 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v19 doubleForKey:*MEMORY[0x1E69DF808]];
    v8->_availabilityPeriodOverrideInSeconds = v20;
  }

  return v8;
}

- (void)dealloc
{
  v3 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIStoreFPSKeyLoader deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VUIStoreFPSKeyLoader;
  [(VUIStoreFPSKeyLoader *)&v4 dealloc];
}

- (void)loadFairPlayStreamingKeyRequests:(id)a3 completion:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = a4;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v7)
  {
    v8 = *v68;
    v4 = @"%@%@";
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v68 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v67 + 1) + 8 * i);
        v11 = [(VUIStoreFPSKeyLoader *)self eventCollection];
        v12 = *MEMORY[0x1E69D5FC0];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [v10 eventReportingID];
        v15 = [v13 stringWithFormat:@"%@%@", v12, v14];
        [v11 addStartEventWithName:v12 identifier:v15];

        v16 = [MEMORY[0x1E695DF00] date];
        [v10 setRequestStartDate:v16];
      }

      v7 = [v6 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v7);
  }

  if ([(VUIStoreFPSKeyLoader *)self state])
  {
    v17 = [(VUIStoreFPSKeyLoader *)self state];
    v18 = sLogObject_0;
    v19 = os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1)
    {
      if (v19)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Certificate data loading in progress.  Waiting for certificate data before continuing requests", buf, 2u);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v50 = v6;
      v20 = [v50 countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (v20)
      {
        v21 = *v55;
        v22 = MEMORY[0x1E69D5FB8];
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v55 != v21)
            {
              objc_enumerationMutation(v50);
            }

            v24 = *(*(&v54 + 1) + 8 * j);
            v25 = [(VUIStoreFPSKeyLoader *)self requestsAwaitingCertFetch];
            [v25 addObject:v24];

            v26 = [(VUIStoreFPSKeyLoader *)self eventCollection];
            v27 = *v22;
            v28 = MEMORY[0x1E696AEC0];
            v29 = [v24 eventReportingID];
            v30 = [v28 stringWithFormat:@"%@%@", v27, v29];
            [v26 addStartEventWithName:v27 identifier:v30];
          }

          v20 = [v50 countByEnumeratingWithState:&v54 objects:v71 count:16];
        }

        while (v20);
      }
    }

    else
    {
      if (v19)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Certificate data already loaded.  Loading key requests immediately", buf, 2u);
      }

      [(VUIStoreFPSKeyLoader *)self _initiateKeyRequests:v6 completion:v49];
    }

    goto LABEL_48;
  }

  v31 = [(VUIStoreFPSKeyLoader *)self certificateURL];
  if (!v31)
  {
    v4 = [(VUIStoreFPSKeyLoader *)self keyServerURL];
    if (!v4)
    {
      goto LABEL_34;
    }
  }

  v32 = [(VUIStoreFPSKeyLoader *)self certificateURL];
  if (v32)
  {
    v33 = [(VUIStoreFPSKeyLoader *)self keyServerURL];

    if (v31)
    {
    }

    else
    {
    }

    if (v33)
    {
LABEL_34:
      [(VUIStoreFPSKeyLoader *)self setState:1];
      v35 = [(VUIStoreFPSKeyLoader *)self requestsAwaitingCertFetch];
      [v35 addObjectsFromArray:v6];

      objc_initWeak(buf, self);
      v36 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 0;
        _os_log_impl(&dword_1E323F000, v36, OS_LOG_TYPE_DEFAULT, "Starting certificate data loading.  Waiting for certificate data before continuing requests", v65, 2u);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v51 = v6;
      v37 = [v51 countByEnumeratingWithState:&v61 objects:v72 count:16];
      if (v37)
      {
        v38 = *v62;
        v39 = MEMORY[0x1E69D5FB8];
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v62 != v38)
            {
              objc_enumerationMutation(v51);
            }

            v41 = *(*(&v61 + 1) + 8 * k);
            v42 = [(VUIStoreFPSKeyLoader *)self eventCollection];
            v43 = *v39;
            v44 = MEMORY[0x1E696AEC0];
            v45 = [v41 eventReportingID];
            v46 = [v44 stringWithFormat:@"%@%@", v43, v45];
            [v42 addStartEventWithName:v43 identifier:v46];
          }

          v37 = [v51 countByEnumeratingWithState:&v61 objects:v72 count:16];
        }

        while (v37);
      }

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __68__VUIStoreFPSKeyLoader_loadFairPlayStreamingKeyRequests_completion___block_invoke;
      v58[3] = &unk_1E872DEA0;
      objc_copyWeak(&v60, buf);
      v59 = v49;
      [(VUIStoreFPSKeyLoader *)self _loadCertificateDataWithCompletion:v58];

      objc_destroyWeak(&v60);
      objc_destroyWeak(buf);
      goto LABEL_48;
    }
  }

  else
  {

    if (v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = v4;
    }
  }

  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
  {
    [VUIStoreFPSKeyLoader loadFairPlayStreamingKeyRequests:completion:];
  }

  v47 = objc_alloc(MEMORY[0x1E696ABC0]);
  v48 = [v47 initWithDomain:*MEMORY[0x1E69D60E8] code:-345002 userInfo:0];
  [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v6 withError:v48];

  if (v49)
  {
    v49[2]();
  }

LABEL_48:
}

void __68__VUIStoreFPSKeyLoader_loadFairPlayStreamingKeyRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v24 = a1;
  v25 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained requestsAwaitingCertFetch];
  v7 = [v6 copy];

  v8 = [WeakRetained requestsAwaitingCertFetch];
  [v8 removeAllObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        [WeakRetained eventCollection];
        v16 = v15 = WeakRetained;
        v17 = *MEMORY[0x1E69D5FB8];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [v14 eventReportingID];
        v20 = [v18 stringWithFormat:@"%@%@", v17, v19];
        [v16 addEndEventWithName:v17 identifier:v20];

        WeakRetained = v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  if ([v26 length])
  {
    v21 = sLogObject_0;
    v22 = v25;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Certificate data has valid length.  Continuing key request loading for pending requests", buf, 2u);
    }

    [WeakRetained setState:2];
    [WeakRetained setCertificateData:v26];
    [WeakRetained _initiateKeyRequests:v9 completion:*(v24 + 32)];
  }

  else
  {
    [WeakRetained setState:0];
    v22 = v25;
    [WeakRetained _failKeyRequests:v9 withError:v25];
    v23 = *(v24 + 32);
    if (v23)
    {
      (*(v23 + 16))();
    }
  }
}

- (void)invalidateKeysWithRequests:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VUIStoreFPSKeyLoader *)self secureInvalidationNonceURL];
  if (v8)
  {
    v9 = v8;
    v10 = [(VUIStoreFPSKeyLoader *)self keyServerURL];
    if (v10)
    {
      v11 = v10;
      v12 = [(VUIStoreFPSKeyLoader *)self secureInvalidationDSID];

      if (v12)
      {
        v33 = v7;
        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v34 = v6;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
        v15 = &unk_1EE28A000;
        if (!v14)
        {
          goto LABEL_21;
        }

        v16 = v14;
        v17 = *v39;
        v18 = 0x1E695D000;
        while (1)
        {
          v19 = 0;
          v36 = v16;
          do
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v38 + 1) + 8 * v19);
            v21 = [v20 offlineKeyData];
            if (![v21 length])
            {
              goto LABEL_15;
            }

            v22 = [v20 keyIdentifier];
            if (!v22)
            {
              goto LABEL_15;
            }

            v23 = v22;
            v24 = [v20 additionalRequestParams];
            if (![v24 count])
            {

              v18 = 0x1E695D000uLL;
LABEL_15:

              goto LABEL_16;
            }

            [v20 contentID];
            v25 = v17;
            v26 = v15;
            v27 = self;
            v29 = v28 = v13;
            v37 = [v29 length];

            v13 = v28;
            self = v27;
            v15 = v26;
            v17 = v25;
            v16 = v36;

            v18 = 0x1E695D000;
            if (v37)
            {
              [v35 addObject:v20];
              goto LABEL_19;
            }

LABEL_16:
            v30 = v15[292];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v20;
              _os_log_error_impl(&dword_1E323F000, v30, OS_LOG_TYPE_ERROR, "Param error invalidating key request: %@", buf, 0xCu);
            }

            v42 = v20;
            v31 = [*(v18 + 3784) arrayWithObjects:&v42 count:1];
            [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v31 withError:0];

LABEL_19:
            ++v19;
          }

          while (v16 != v19);
          v16 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (!v16)
          {
LABEL_21:

            if ([v35 count])
            {
              v7 = v33;
              [(VUIStoreFPSKeyLoader *)self _invalidateValidKeyRequestsInBatches:v35 completion:v33];
              v6 = v34;
            }

            else
            {
              v32 = v15[292];
              v7 = v33;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "No key requests to invalidate.", buf, 2u);
              }

              v6 = v34;
              if (v33)
              {
                v33[2](v33);
              }
            }

            goto LABEL_33;
          }
        }
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
  {
    [VUIStoreFPSKeyLoader invalidateKeysWithRequests:completion:];
  }

  [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v6 withError:0];
  if (v7)
  {
    v7[2](v7);
  }

LABEL_33:
}

- (void)sendStreamingStopRequestIfNecessary
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIStoreFPSKeyLoader *)self savedStreamingKeyRequestToUseForStopping];
  v4 = v3;
  if (v3)
  {
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(VUIStoreFPSKeyLoader *)self _sendKeyRequestsToServer:v5 isStopRequest:1 isSecureInvalidationRequest:0 completion:0];

    [(VUIStoreFPSKeyLoader *)self setSavedStreamingKeyRequestToUseForStopping:0];
  }
}

- (void)removeAllEntriesFromKeyIdentifierPenaltyBox
{
  v3 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Removing all entries from key identifier penalty box", v5, 2u);
  }

  v4 = [(VUIStoreFPSKeyLoader *)self keyIdentifierPenaltyBox];
  [v4 removeAllObjects];
}

- (void)_loadCertificateDataWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIStoreFPSKeyLoader__loadCertificateDataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E872DEF0;
  objc_copyWeak(&v16, &location);
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(VUIStoreFPSKeyLoader *)self certificateURL];

  if (v7)
  {
    v8 = [(VUIStoreFPSKeyLoader *)self certificateURL];
    v6[2](v6, v8);
  }

  else
  {
    v9 = [(VUIStoreFPSKeyLoader *)self eventCollection];
    [v9 addStartEventWithName:*MEMORY[0x1E69D5FE0]];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__VUIStoreFPSKeyLoader__loadCertificateDataWithCompletion___block_invoke_2;
    v10[3] = &unk_1E872DF18;
    objc_copyWeak(&v13, &location);
    v11 = v6;
    v12 = v5;
    [VUIStoreFPSKeyLoader _loadFPSURLsFromStoreBagWithCompletion:v10];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__VUIStoreFPSKeyLoader__loadCertificateDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [sCachedCertData objectForKey:v3];
  v6 = [v5 length];
  v7 = sLogObject_0;
  v8 = os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Using cached cert data for %@.  Refreshing cert data, but not waiting for response", buf, 0xCu);
    }

    v9 = [WeakRetained eventCollection];
    [v9 addSingleShotEventWithName:*MEMORY[0x1E69D5FE8] value:MEMORY[0x1E695E118]];

    [VUIStoreFPSKeyLoader _loadAndCacheCertificateDataForValidURL:v3 completion:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "No cached cert data available for %@.  Fetching cert data and waiting for response", buf, 0xCu);
    }

    v10 = [WeakRetained eventCollection];
    [v10 addSingleShotEventWithName:*MEMORY[0x1E69D5FE8] value:MEMORY[0x1E695E110]];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__VUIStoreFPSKeyLoader__loadCertificateDataWithCompletion___block_invoke_27;
    v11[3] = &unk_1E872DEC8;
    v12 = *(a1 + 32);
    [VUIStoreFPSKeyLoader _loadAndCacheCertificateDataForValidURL:v3 completion:v11];
  }
}

void __59__VUIStoreFPSKeyLoader__loadCertificateDataWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCertificateURL:v7];
  [WeakRetained setKeyServerURL:v9];

  v11 = [WeakRetained eventCollection];
  [v11 addEndEventWithName:*MEMORY[0x1E69D5FE0]];

  if (v7 && v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v8)
    {
      v16 = *MEMORY[0x1E696AA08];
      v17[0] = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 40);
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = [v14 initWithDomain:*MEMORY[0x1E69D60E8] code:-345002 userInfo:v12];
    (*(v13 + 16))(v13, 0, v15);
  }
}

+ (void)_loadFPSURLsFromStoreBagWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving certificate URL and key server URL from store bag", buf, 2u);
  }

  v5 = [MEMORY[0x1E69D5928] app];
  v6 = [v5 stringForKey:@"fps-cert"];

  v7 = [MEMORY[0x1E69D5928] app];
  v8 = [v7 stringForKey:@"fps-request"];

  if ([v6 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    v9 = 0;
  }

  if ([v8 length])
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  else
  {
    v10 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VUIStoreFPSKeyLoader__loadFPSURLsFromStoreBagWithCompletion___block_invoke;
  block[3] = &unk_1E872DF40;
  v15 = v9;
  v16 = v10;
  v17 = v3;
  v11 = v3;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__VUIStoreFPSKeyLoader__loadFPSURLsFromStoreBagWithCompletion___block_invoke(void *a1)
{
  if (a1[4] && a1[5])
  {
    v2 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Finished retrieving certificate URL and key server URL from store bag", v4, 2u);
    }
  }

  else if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
  {
    __63__VUIStoreFPSKeyLoader__loadFPSURLsFromStoreBagWithCompletion___block_invoke_cold_1();
  }

  return (*(a1[6] + 16))();
}

+ (void)_loadAndCacheCertificateDataForValidURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v5];
  [v7 setHTTPMethod:@"GET"];
  [v7 setTimeoutInterval:30.0];
  v8 = [MEMORY[0x1E696AF78] sharedSession];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __75__VUIStoreFPSKeyLoader__loadAndCacheCertificateDataForValidURL_completion___block_invoke;
  v15 = &unk_1E872DF90;
  v16 = v5;
  v17 = v6;
  v9 = v6;
  v10 = v5;
  v11 = [v8 dataTaskWithURL:v10 completionHandler:&v12];

  [v11 resume];
}

void __75__VUIStoreFPSKeyLoader__loadAndCacheCertificateDataForValidURL_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__VUIStoreFPSKeyLoader__loadAndCacheCertificateDataForValidURL_completion___block_invoke_2;
  v10[3] = &unk_1E872DF68;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v7;
  v14 = *(a1 + 40);
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __75__VUIStoreFPSKeyLoader__loadAndCacheCertificateDataForValidURL_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) length];
  v3 = sLogObject_0;
  if (v2)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Updating cached cert data for URL %@", buf, 0xCu);
    }

    [sCachedCertData setObject:*(a1 + 32) forKey:*(a1 + 40)];
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __75__VUIStoreFPSKeyLoader__loadAndCacheCertificateDataForValidURL_completion___block_invoke_2_cold_1();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v10 = *MEMORY[0x1E696AA08];
      v11 = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [v8 initWithDomain:*MEMORY[0x1E69D60E8] code:-345001 userInfo:v7];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32), v5);
  }
}

- (void)_invalidateValidKeyRequestsInBatches:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    v8 = [v6 count];
    if (v8 >= 0x14)
    {
      v9 = 20;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];
    v11 = [v6 subarrayWithRange:{v9, objc_msgSend(v6, "count") - v9}];
    v12 = sLogObject_0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 count];
      *buf = 134217984;
      v25 = v13;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Starting batch of %lu invalidation requests", buf, 0xCu);
    }

    v14 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Loading nonce data from server", buf, 2u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__VUIStoreFPSKeyLoader__invalidateValidKeyRequestsInBatches_completion___block_invoke;
    v18[3] = &unk_1E872DFB8;
    objc_copyWeak(&v22, &location);
    v15 = v10;
    v19 = v15;
    v16 = v11;
    v20 = v16;
    v21 = v7;
    [(VUIStoreFPSKeyLoader *)self _loadNonceDataForRequests:v15 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Done with all invalidation key request batches", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

void __72__VUIStoreFPSKeyLoader__invalidateValidKeyRequestsInBatches_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = [v9 secureInvalidationNonceData];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [WeakRetained delegate];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v12 storeFPSKeyLoader:WeakRetained shouldKeyRequestContinueInvalidationAfterLoadingNonce:v9])
          {
            v13 = sLogObject_0;
            if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v29 = v9;
              _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Delegate disallowed invalidation after nonce retrieval for key request %@", buf, 0xCu);
            }
          }

          else
          {
            [v3 addObject:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v6 = v14;
    }

    while (v14);
  }

  v15 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v3 count];
    *buf = 134217984;
    v29 = v17;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "%lu request(s) have nonce data", buf, 0xCu);
  }

  if ([v3 count])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__VUIStoreFPSKeyLoader__invalidateValidKeyRequestsInBatches_completion___block_invoke_46;
    v19[3] = &unk_1E872DF68;
    v20 = v3;
    v21 = WeakRetained;
    v22 = *(v18 + 40);
    v23 = *(v18 + 48);
    [WeakRetained _generateSecureInvalidationDataForRequests:v20 completion:v19];
  }

  else
  {
    [WeakRetained _invalidateValidKeyRequestsInBatches:*(v18 + 40) completion:*(v18 + 48)];
  }
}

void __72__VUIStoreFPSKeyLoader__invalidateValidKeyRequestsInBatches_completion___block_invoke_46(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 keyRequestData];
        v10 = [v9 length];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = [v2 count];
  v12 = a1[5];
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__VUIStoreFPSKeyLoader__invalidateValidKeyRequestsInBatches_completion___block_invoke_2;
    v13[3] = &unk_1E872DF40;
    v13[4] = v12;
    v14 = a1[6];
    v15 = a1[7];
    [v12 _sendKeyRequestsToServer:v2 isStopRequest:1 isSecureInvalidationRequest:1 completion:v13];
  }

  else
  {
    [a1[5] _invalidateValidKeyRequestsInBatches:a1[6] completion:a1[7]];
  }
}

- (void)_loadNonceDataForRequests:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  v7 = objc_alloc(MEMORY[0x1E696AF20]);
  val = self;
  v8 = [(VUIStoreFPSKeyLoader *)self secureInvalidationNonceURL];
  v9 = [v7 initWithURL:v8 resolvingAgainstBaseURL:0];

  v36 = v9;
  v10 = [v9 queryItems];
  v11 = [v10 mutableCopy];

  v38 = v11;
  if (!v11)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v12)
  {
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x1E696AF60]);
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v15 contentID];
        v19 = [v17 stringWithFormat:@"%@", v18];
        v20 = [v16 initWithName:@"contentId" value:v19];

        if (v20)
        {
          [v38 addObject:v20];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v12);
  }

  [v36 setQueryItems:v38];
  v21 = [v36 URL];
  if (v21)
  {
    objc_initWeak(&location, val);
    v22 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v21];
    [v22 setHTTPMethod:@"GET"];
    v23 = [(VUIStoreFPSKeyLoader *)val secureInvalidationDSID];
    v24 = [v23 stringValue];
    [v22 setValue:v24 forHTTPHeaderField:@"X-Secure-Invalidation-Dsid"];

    [v22 setTimeoutInterval:30.0];
    v25 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v26 = [objc_alloc(MEMORY[0x1E698CB88]) initWithBag:v25];
    [v26 setAnisetteType:2];
    v27 = [MEMORY[0x1E69D5920] activeAccountForMediaType:*MEMORY[0x1E698C4D0]];
    v28 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = obj;
      _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Waiting for account promise for nonce requests: %@", buf, 0xCu);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke;
    v39[3] = &unk_1E872E058;
    v40 = obj;
    v29 = v26;
    v41 = v29;
    v30 = v22;
    v42 = v30;
    objc_copyWeak(&v45, &location);
    v43 = val;
    v44 = v34;
    [v27 addFinishBlock:v39];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v31 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Unable to construct valid nonce URL", buf, 2u);
    }

    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = [v32 initWithDomain:*MEMORY[0x1E69D60E8] code:-345007 userInfo:0];
    [(VUIStoreFPSKeyLoader *)val _failKeyRequests:obj withError:v33];

    if (v34)
    {
      v34[2]();
    }
  }
}

void __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Account promise completed for nonce requests.  Waiting for URL request promise for nonce requests: %@", buf, 0xCu);
  }

  [*(a1 + 40) setAccount:v5];
  v9 = [*(a1 + 40) requestByEncodingRequest:*(a1 + 48) parameters:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_61;
  v11[3] = &unk_1E872E030;
  v12 = *(a1 + 32);
  objc_copyWeak(&v15, (a1 + 72));
  v10 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v10;
  [v9 addFinishBlock:v11];

  objc_destroyWeak(&v15);
}

void __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_61(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "URL request promise completed for nonce requests: %@ with URL request %@ error %@", buf, 0x20u);
  }

  if (!v5 || v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_2;
    block[3] = &unk_1E872E008;
    v12 = *(a1 + 2);
    v11 = v12.i64[0];
    v14 = vextq_s8(v12, v12, 8uLL);
    v15 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9 = [MEMORY[0x1E698CBA8] defaultSession];
    v10 = [v9 dataTaskPromiseWithRequest:v5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63;
    v16[3] = &unk_1E872DFE0;
    objc_copyWeak(&v19, a1 + 7);
    v17 = a1[4];
    v18 = a1[6];
    [v10 addFinishBlock:v16];

    objc_destroyWeak(&v19);
  }
}

void __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63(id *a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [v5 data];
  v9 = v8;
  if (v6 || !v8)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63_cold_1();
    }

    [WeakRetained _failKeyRequests:a1[4] withError:v6];
  }

  else
  {
    v54 = 0;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v54];
    v36 = v54;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v10;
      v38 = WeakRetained;
      v35 = v5;
      v41 = [v10 vui_arrayForKey:@"nonces"];
      v11 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v41 count];
        v14 = [a1[4] count];
        *buf = 134218240;
        v59 = v13;
        v60 = 2048;
        v61 = v14;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Received %lu nonce(s) for %lu request(s)s", buf, 0x16u);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v34 = a1;
      obj = a1[4];
      v42 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v42)
      {
        v40 = *v51;
        v37 = *MEMORY[0x1E69D60E8];
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v51 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v50 + 1) + 8 * i);
            v16 = [v43 contentID];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v17 = v41;
            v18 = [v17 countByEnumeratingWithState:&v46 objects:v56 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v47;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v47 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v46 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v23 = v22;
                    v24 = [v23 vui_stringForKey:@"content-id"];
                    v25 = v24;
                    if (v16 && v24 && ([v24 isEqualToString:v16] & 1) != 0)
                    {
                      v26 = [v23 vui_stringForKey:@"nonce"];
                      v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v26 options:0];
                      [v43 setSecureInvalidationNonceData:v27];

                      goto LABEL_25;
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v46 objects:v56 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

LABEL_25:

            v28 = [v43 secureInvalidationNonceData];
            v29 = [v28 length];

            if (!v29)
            {
              v55 = v43;
              v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
              v31 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v37 code:-345007 userInfo:0];
              [v38 _failKeyRequests:v30 withError:v31];
            }
          }

          v42 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v42);
      }

      v6 = 0;
      v5 = v35;
      WeakRetained = v38;
      a1 = v34;
      v10 = v33;
      v32 = v36;
    }

    else
    {
      v32 = v36;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
      {
        __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63_cold_2();
      }

      [WeakRetained _failKeyRequests:a1[4] withError:v36];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_75;
  block[3] = &unk_1E872D7E0;
  v45 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_75(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_generateSecureInvalidationDataForFirstRequest:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 firstObject];
    objc_initWeak(&location, self);
    v9 = [objc_alloc(MEMORY[0x1E69D5A08]) initWithContentKeyLoader:0 avAsset:0];
    [(VUIStoreFPSKeyLoader *)self setContentKeySession:v9];

    v10 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Generating secure invalidation data for %@", buf, 0xCu);
    }

    v11 = [(VUIStoreFPSKeyLoader *)self contentKeySession];
    v12 = [v8 offlineKeyData];
    v13 = [v8 secureInvalidationNonceData];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__VUIStoreFPSKeyLoader__generateSecureInvalidationDataForFirstRequest_completion___block_invoke;
    v16[3] = &unk_1E872E080;
    objc_copyWeak(&v20, &location);
    v14 = v8;
    v17 = v14;
    v18 = v6;
    v19 = v7;
    [v11 makeSecureInvalidationDataForOfflineKeyData:v12 nonceData:v13 completion:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Done generating secure invalidation data", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

void __82__VUIStoreFPSKeyLoader__generateSecureInvalidationDataForFirstRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([v5 length])
  {
    [*(a1 + 32) setKeyRequestData:v5];
    v8 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Secure invalidation data successfully generated for %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [WeakRetained _failKeyRequests:v10 withError:v6];

    v11 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __82__VUIStoreFPSKeyLoader__generateSecureInvalidationDataForFirstRequest_completion___block_invoke_cold_1((a1 + 32), v6, v11);
    }
  }

  [WeakRetained setContentKeySession:0];
  v12 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
  [WeakRetained _generateSecureInvalidationDataForFirstRequest:v12 completion:*(a1 + 48)];
}

- (void)_initiateKeyRequests:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 firstObject];
  v8 = [v7 contentID];

  if (v8)
  {
    v9 = [v11 sortedArrayUsingComparator:&__block_literal_global_82];

    v10 = v9;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10;
  [(VUIStoreFPSKeyLoader *)self _startKeyRequestsInBatches:v10 completion:v6];
}

uint64_t __56__VUIStoreFPSKeyLoader__initiateKeyRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contentID];
  v6 = [v4 contentID];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

- (void)_startKeyRequestsInBatches:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v36 = v5;
  if ([v5 count])
  {
    v34 = v6;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v8)
    {
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v44 + 1) + 8 * i) contentID];
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = &stru_1F5DB25C0;
          }

          v13 = [v7 objectForKey:{v12, v34, v36}];
          v14 = v13;
          if (v7)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") + 1}];
          }

          else
          {
            v15 = &unk_1F5E5C9D8;
          }

          [v7 setObject:v15 forKey:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v8);
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([obj count])
    {
      v17 = 0;
      do
      {
        v18 = [obj objectAtIndex:{v17, v34}];
        v19 = [v18 contentID];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = &stru_1F5DB25C0;
        }

        v21 = [v7 objectForKey:v20];
        v22 = [v21 integerValue];

        if (v22)
        {
          if (([v16 count] + v22) < 0x15)
          {
            v24 = [obj subarrayWithRange:{v17, v22}];
            [v16 addObjectsFromArray:v24];

            v17 += v22;
          }

          else
          {
            if (v17)
            {

              break;
            }

            v23 = [obj subarrayWithRange:{0, 20}];
            [v16 addObjectsFromArray:v23];

            v17 = 20;
          }
        }

        else
        {
          ++v17;
        }
      }

      while (v17 < [obj count]);
    }

    v26 = [v16 count];
    if (!v26)
    {
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreFPSKeyLoader _startKeyRequestsInBatches:completion:];
      }

      v27 = [obj count];
      if (v27 >= 0x14)
      {
        v26 = 20;
      }

      else
      {
        v26 = v27;
      }

      v28 = [obj subarrayWithRange:{0, v26}];
      v29 = [v28 mutableCopy];

      v16 = v29;
    }

    v30 = [obj subarrayWithRange:{v26, objc_msgSend(obj, "count") - v26}];
    objc_initWeak(&location, self);
    v31 = sLogObject_0;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v16 count];
      *buf = 134217984;
      v49 = v32;
      _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Starting batch of %lu key requests", buf, 0xCu);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __62__VUIStoreFPSKeyLoader__startKeyRequestsInBatches_completion___block_invoke;
    v39[3] = &unk_1E872DE00;
    objc_copyWeak(&v42, &location);
    v33 = v30;
    v40 = v33;
    v41 = v35;
    [(VUIStoreFPSKeyLoader *)self _startKeyRequests:v16 completion:v39];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    v6 = v35;
  }

  else
  {
    v25 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "Done with all key request batches", buf, 2u);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __62__VUIStoreFPSKeyLoader__startKeyRequestsInBatches_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startKeyRequestsInBatches:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_startKeyRequests:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 keyIdentifier];
        v14 = [(VUIStoreFPSKeyLoader *)self keyIdentifierPenaltyBox];
        v15 = [v14 objectForKey:v13];

        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          [v7 addObject:v12];
        }

        else
        {
          v17 = sLogObject_0;
          if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v12;
            _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Automatically failing key request %@ since it is in the penalty box", buf, 0xCu);
          }

          v31 = v12;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
          [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v19 withError:v15];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v9);
  }

  objc_initWeak(buf, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__VUIStoreFPSKeyLoader__startKeyRequests_completion___block_invoke;
  v23[3] = &unk_1E872DE00;
  objc_copyWeak(&v26, buf);
  v20 = v7;
  v24 = v20;
  v21 = v22;
  v25 = v21;
  [(VUIStoreFPSKeyLoader *)self _generateKeyRequestDataForKeyRequests:v20 completion:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __53__VUIStoreFPSKeyLoader__startKeyRequests_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v18 = *MEMORY[0x1E69D60E8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isCancelled])
        {
          v10 = sLogObject_0;
          if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v9;
            _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Stopping further key loading since request is cancelled or failed: %@", buf, 0xCu);
          }
        }

        else
        {
          v11 = [v9 keyRequestData];
          v12 = [v11 length];

          if (v12)
          {
            [v3 addObject:v9];
          }

          else
          {
            v13 = [v9 error];
            if (!v13)
            {
              v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v18 code:-345007 userInfo:0];
            }

            v25 = v9;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
            [WeakRetained _failKeyRequests:v14 withError:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = [v3 count];
  v16 = *(v17 + 40);
  if (v15)
  {
    [WeakRetained _sendKeyRequestsToServer:v3 isStopRequest:0 isSecureInvalidationRequest:0 completion:v16];
  }

  else if (v16)
  {
    (*(v16 + 16))(*(v17 + 40));
  }
}

- (void)_generateKeyRequestDataForKeyRequests:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = a4;
  v7 = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 isCancelled];
        v13 = sLogObject_0;
        v14 = os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            *buf = 138412290;
            v37 = v11;
            _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Stopping further key loading since request is cancelled or failed: %@", buf, 0xCu);
          }
        }

        else
        {
          if (v14)
          {
            *buf = 138412290;
            v37 = v11;
            _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Generating key request data for %@", buf, 0xCu);
          }

          v15 = [(VUIStoreFPSKeyLoader *)self eventCollection];
          v16 = *MEMORY[0x1E69D5FC8];
          v17 = MEMORY[0x1E696AEC0];
          v18 = [v11 eventReportingID];
          v19 = [v17 stringWithFormat:@"%@%@", v16, v18];
          [v15 addStartEventWithName:v16 identifier:v19];

          v20 = [v11 keyIdentifier];
          v21 = [v20 absoluteString];
          v22 = [v21 dataUsingEncoding:4];

          objc_initWeak(buf, self);
          dispatch_group_enter(v7);
          v23 = [(VUIStoreFPSKeyLoader *)self certificateData];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __73__VUIStoreFPSKeyLoader__generateKeyRequestDataForKeyRequests_completion___block_invoke;
          v29[3] = &unk_1E872E0C8;
          objc_copyWeak(&v31, buf);
          v29[4] = v11;
          v30 = v7;
          [v11 makeKeyRequestDataForCertificateData:v23 assetIDData:v22 completion:v29];

          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VUIStoreFPSKeyLoader__generateKeyRequestDataForKeyRequests_completion___block_invoke_88;
  block[3] = &unk_1E872D7E0;
  v28 = v25;
  v24 = v25;
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
}

void __73__VUIStoreFPSKeyLoader__generateKeyRequestDataForKeyRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Key request data generated for %@", buf, 0xCu);
  }

  v10 = [WeakRetained eventCollection];
  v11 = *MEMORY[0x1E69D5FC8];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [*(a1 + 32) eventReportingID];
  v14 = [v12 stringWithFormat:@"%@%@", v11, v13];
  [v10 addEndEventWithName:v11 identifier:v14];

  [*(a1 + 32) setKeyRequestData:v6];
  [*(a1 + 32) setError:v5];

  dispatch_group_leave(*(a1 + 40));
}

- (void)_sendKeyRequestsToServer:(id)a3 isStopRequest:(BOOL)a4 isSecureInvalidationRequest:(BOOL)a5 completion:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v30 = a6;
  v31 = [MEMORY[0x1E695DF00] date];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v10)
  {
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        if ((![v13 type] || objc_msgSend(v13, "type") == 1) && !a4)
        {
          v14 = [(VUIStoreFPSKeyLoader *)self savedStreamingKeyRequestToUseForStopping];
          v15 = v14 == 0;

          if (v15)
          {
            [(VUIStoreFPSKeyLoader *)self setSavedStreamingKeyRequestToUseForStopping:v13];
          }
        }

        v16 = [(VUIStoreFPSKeyLoader *)self eventCollection];
        v17 = *MEMORY[0x1E69D5FF0];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [v13 eventReportingID];
        v20 = [v18 stringWithFormat:@"%@%@", v17, v19];
        [v16 addStartEventWithName:v17 identifier:v20];
      }

      v10 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v10);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke;
  aBlock[3] = &unk_1E872E1E0;
  v21 = obj;
  v44 = v21;
  v45 = self;
  v22 = v31;
  v46 = v22;
  v49 = a4;
  v50 = a5;
  objc_copyWeak(&v48, &location);
  v23 = v30;
  v47 = v23;
  v24 = _Block_copy(aBlock);
  if ([(VUIStoreFPSKeyLoader *)self sendsLocationWhenOptedIn])
  {
    if (_os_feature_enabled_impl())
    {
      if (!+[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus])
      {
        v29 = sLogObject_0;
        if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Retrieving device location", buf, 2u);
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_110;
        v40[3] = &unk_1E872E208;
        v41 = v24;
        [_TtC8VideosUI27VUILocationServiceProxyObjC retrieveLocationWithCompletionHandler:v40];
        v26 = &v41;
        goto LABEL_29;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v37 = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_2_113;
      v38 = &unk_1E872D7E0;
      v39 = v24;
      v25 = v36;
      v26 = &v39;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v37(v25);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v25);
      }
    }

    else
    {
      v28 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Fetching location authorization status", buf, 2u);
      }

      v25 = [MEMORY[0x1E69E1540] defaultLocationManager];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_115;
      v34[3] = &unk_1E872E258;
      v35 = v24;
      [v25 fetchAuthorizationStatus:v34];
      v26 = &v35;
    }

LABEL_29:
    goto LABEL_30;
  }

  v27 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "Skipping location authorization status and location fetch", buf, 2u);
  }

  (*(v24 + 2))(v24, 0);
LABEL_30:

  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v3)
  {
    v39 = *v52;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v51 + 1) + 8 * i);
        v6 = [*(a1 + 40) eventCollection];
        v7 = *MEMORY[0x1E69D5FF0];
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v5 eventReportingID];
        v10 = [v8 stringWithFormat:@"%@%@", v7, v9];
        [v6 addEndEventWithName:v7 identifier:v10];

        [v5 setServerRequestStartDate:*(a1 + 48)];
        v11 = [*(a1 + 40) eventCollection];
        v12 = *MEMORY[0x1E69D5FD0];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [v5 eventReportingID];
        v15 = [v13 stringWithFormat:@"%@%@", v12, v14];
        [v11 addStartEventWithName:v12 identifier:v15];
      }

      v3 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v3);
  }

  v16 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    if (*(a1 + 72))
    {
      v18 = @"stop ";
    }

    else
    {
      v18 = &stru_1F5DB25C0;
    }

    *buf = 138412546;
    v56 = v18;
    v57 = 2112;
    v58 = v17;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Sending %@requests to server: %@", buf, 0x16u);
  }

  v19 = [*(a1 + 40) _bodyDictionaryForRequests:*(a1 + 32) isStopRequest:*(a1 + 72) deviceLocation:v37];
  v20 = objc_alloc(MEMORY[0x1E696AD68]);
  v21 = [*(a1 + 40) keyServerURL];
  v22 = [v20 initWithURL:v21];

  [v22 setHTTPMethod:@"POST"];
  [v22 setTimeoutInterval:30.0];
  if (*(a1 + 73) == 1)
  {
    v23 = [*(a1 + 40) secureInvalidationDSID];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 stringValue];
      [v22 setValue:v25 forHTTPHeaderField:@"X-Secure-Invalidation-Dsid"];
    }
  }

  v26 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v27 = [objc_alloc(MEMORY[0x1E698CB88]) initWithBag:v26];
  v28 = [*(a1 + 40) sendsMescalHeader];
  [v27 setRequestEncoding:3];
  [v27 setMescalType:0];
  v29 = [MEMORY[0x1E69D5920] activeAccountForMediaType:*MEMORY[0x1E698C4D0]];
  v30 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    *buf = 138412290;
    v56 = v31;
    _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Waiting for account promise for key requests: %@", buf, 0xCu);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_95;
  v40[3] = &unk_1E872E1B8;
  v41 = *(a1 + 32);
  v32 = v27;
  v42 = v32;
  v33 = v22;
  v43 = v33;
  v34 = v19;
  v44 = v34;
  objc_copyWeak(&v48, (a1 + 64));
  v49 = *(a1 + 72);
  v47 = *(a1 + 56);
  v50 = v28;
  v35 = v26;
  v36 = *(a1 + 40);
  v45 = v35;
  v46 = v36;
  [v29 addFinishBlock:v40];

  objc_destroyWeak(&v48);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Account promise completed for key requests.  Waiting for URL request promise for key requests: %@", buf, 0xCu);
  }

  [*(a1 + 40) setAccount:v5];
  v9 = [*(a1 + 40) requestByEncodingRequest:*(a1 + 48) parameters:*(a1 + 56)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_96;
  v12[3] = &unk_1E872E190;
  v13 = *(a1 + 32);
  objc_copyWeak(&v17, (a1 + 88));
  v18 = *(a1 + 96);
  v16 = *(a1 + 80);
  v19 = *(a1 + 98);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v14 = v10;
  v15 = v11;
  [v9 addFinishBlock:v12];

  objc_destroyWeak(&v17);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v32 = v8;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "URL request promise completed for key requests: %@ with URL request %@ error %@", buf, 0x20u);
  }

  if (!v5 || v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_105;
    block[3] = &unk_1E872DF68;
    block[4] = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = v6;
    v21 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_97;
    aBlock[3] = &unk_1E872E140;
    v9 = v5;
    v26 = v9;
    v27 = *(a1 + 32);
    objc_copyWeak(&v29, (a1 + 64));
    v30 = *(a1 + 72);
    v28 = *(a1 + 56);
    v10 = _Block_copy(aBlock);
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [v11 stringForKey:@"XForwardedForHeaderValue"];

    if ([v12 length])
    {
      [v9 setValue:v12 forHTTPHeaderField:@"X-Forwarded-For"];
    }

    if (*(a1 + 74) == 1)
    {
      v13 = [v9 HTTPBody];
      if (v13)
      {
        v14 = [MEMORY[0x1E698C9F0] signaturePromiseFromData:v13 type:1 bag:*(a1 + 40)];
        v15 = sLogObject_0;
        if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          *buf = 138412290;
          v32 = v16;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Waiting for mescal promise for key requests: %@", buf, 0xCu);
        }

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_104;
        v22[3] = &unk_1E872E168;
        v23 = v9;
        v24 = v10;
        [v14 addFinishBlock:v22];
      }

      else
      {
        if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
        {
          __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_96_cold_1();
        }

        v10[2](v10);
      }
    }

    else
    {
      v17 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Not sending mescal header", buf, 2u);
      }

      v10[2](v10);
    }

    objc_destroyWeak(&v29);
  }
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_97(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698CBA8] defaultSession];
  v3 = [v2 dataTaskPromiseWithRequest:*(a1 + 32)];
  v4 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for data task promise for key requests: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_98;
  v6[3] = &unk_1E872E118;
  objc_copyWeak(&v9, (a1 + 56));
  v7 = *(a1 + 40);
  v10 = *(a1 + 64);
  v8 = *(a1 + 48);
  [v3 addFinishBlock:v6];

  objc_destroyWeak(&v9);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_2;
  v10[3] = &unk_1E872E0F0;
  objc_copyWeak(&v15, (a1 + 48));
  v7 = *(a1 + 32);
  v16 = *(a1 + 56);
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v15);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [WeakRetained eventCollection];
        v9 = *MEMORY[0x1E69D5FD0];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [v7 eventReportingID];
        v12 = [v10 stringWithFormat:@"%@%@", v9, v11];
        [v8 addEndEventWithName:v9 identifier:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  if (*(v17 + 72) == 1 && *(v17 + 73) != 1)
  {
    v16 = *(v17 + 56);
    if (v16)
    {
      (*(v16 + 16))();
    }
  }

  else
  {
    v13 = [*(v17 + 40) data];
    v14 = [*(v17 + 40) response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [*(v17 + 40) response];
    }

    else
    {
      v15 = 0;
    }

    [WeakRetained _handleResponseForKeyRequests:*(v17 + 32) responseData:v13 URLResponse:v15 error:*(v17 + 48) completion:*(v17 + 56)];
  }
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_0;
  if (v5)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Manually adding mescal signature header to request", v9, 2u);
    }

    v8 = [v5 base64EncodedStringWithOptions:0];
    [*(a1 + 32) setValue:v8 forHTTPHeaderField:*MEMORY[0x1E698C5E8]];
  }

  else if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
  {
    __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_104_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_105(uint64_t a1)
{
  [*(a1 + 32) _failKeyRequests:*(a1 + 40) withError:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Failed to retrieve authorized device location • will proceed with no location. Error: %@", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_111;
  v15 = &unk_1E872DC10;
  v10 = *(a1 + 32);
  v16 = v5;
  v17 = v10;
  v11 = MEMORY[0x1E696AF00];
  v12 = v5;
  if ([v11 isMainThread])
  {
    v14(v13);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_115(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v3 = __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_2_116;
  v4 = &unk_1E872E230;
  v6 = a2;
  v5 = *(a1 + 32);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3(v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_2_116(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x1E69E1540] defaultLocationManager];
    v3 = [v2 lastKnownLocation];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleResponseForKeyRequests:(id)a3 responseData:(id)a4 URLResponse:(id)a5 error:(id)a6 completion:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sLogObject_0;
  if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v12;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Received response for requests: %@", buf, 0xCu);
  }

  v18 = [v14 allHeaderFields];
  v19 = [v18 tvp_appleTimingAppHeaderValue];

  if (v19 >= 1)
  {
    v20 = [(VUIStoreFPSKeyLoader *)self eventCollection];
    v21 = *MEMORY[0x1E69D5FD8];
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    [v20 addSingleShotEventWithName:v21 value:v22];
  }

  if (v14)
  {
    v23 = [v14 statusCode];
  }

  else
  {
    v23 = WLKHTTPStatusCodeForAMSError();
  }

  v24 = v23;
  if (v23 != 200)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreFPSKeyLoader _handleResponseForKeyRequests:responseData:URLResponse:error:completion:];
    }

    if ((v24 & 0xFFFFFFFFFFFFFFFDLL) == 0x191)
    {
      goto LABEL_20;
    }
  }

  if (!v13)
  {
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v12 withError:v15];
    goto LABEL_21;
  }

  if (![v13 length])
  {
LABEL_20:
    v30 = TVPSKDErrorWithCode();
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v12 withError:v30];

LABEL_21:
    v29 = 1;
    if (!v16)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v34 = 0;
  v25 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:&v34];
  v33 = v34;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v25 vui_dictionaryForKey:@"fairplay-streaming-response"];
    v32 = [v26 vui_numberForKey:@"version"];
    v27 = [v26 vui_arrayForKey:@"streaming-keys"];
    v28 = v27;
    if (v26 && v32 && [v27 count])
    {
      [(VUIStoreFPSKeyLoader *)self _handleResponseDicts:v28 forKeyRequests:v12 completion:v16];
      v29 = 0;
    }

    else
    {
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreFPSKeyLoader _handleResponseForKeyRequests:responseData:URLResponse:error:completion:];
      }

      v31 = TVPSKDErrorWithCode();
      [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v12 withError:v31];

      v29 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreFPSKeyLoader _handleResponseForKeyRequests:responseData:URLResponse:error:completion:];
    }

    v26 = TVPSKDErrorWithCode();
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v12 withError:v26];
    v29 = 1;
  }

  if (v16)
  {
LABEL_31:
    if (v29)
    {
      v16[2](v16);
    }
  }

LABEL_33:
}

- (void)_handleResponseDicts:(id)a3 forKeyRequests:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = [v9 firstObject];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke;
    v23[3] = &unk_1E872E280;
    v12 = v11;
    v24 = v12;
    v13 = [v8 indexOfObjectPassingTest:v23];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
      {
        [VUIStoreFPSKeyLoader _handleResponseDicts:forKeyRequests:completion:];
      }

      v25[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v15 = TVPSKDErrorWithCode();
      [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v14 withError:v15];

      v16 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
      [(VUIStoreFPSKeyLoader *)self _handleResponseDicts:v8 forKeyRequests:v16 completion:v10];
    }

    else
    {
      v16 = [v8 objectAtIndex:v13];
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_131;
      v17[3] = &unk_1E872DFB8;
      objc_copyWeak(&v21, &location);
      v18 = v8;
      v19 = v9;
      v20 = v10;
      [(VUIStoreFPSKeyLoader *)self _handleResponseDict:v16 forKeyRequest:v12 completion:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

uint64_t __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  v4 = [v3 vui_numberForKey:@"id"];
  if (!v4)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  v5 = [*(a1 + 32) requestID];
  if (v5 != [v4 unsignedIntegerValue])
  {
LABEL_9:

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

void __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_131(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
  [WeakRetained _handleResponseDicts:v2 forKeyRequests:v3 completion:*(a1 + 48)];
}

- (void)_handleResponseDict:(id)a3 forKeyRequest:(id)a4 completion:(id)a5
{
  v97 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 vui_numberForKey:@"status"];
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreFPSKeyLoader _handleResponseDict:forKeyRequest:completion:];
    }

    v91 = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v84 = TVPSKDErrorWithCode();
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v16 withError:v84];
    goto LABEL_9;
  }

  v13 = [v11 integerValue];
  if (v13)
  {
    v14 = v13;
    v15 = sLogObject_0;
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreFPSKeyLoader _handleResponseDict:v9 forKeyRequest:v14 completion:v15];
    }

    v16 = [v8 vui_numberForKey:@"device-limit"];
    v92 = v9;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v17 = [(VUIStoreFPSKeyLoader *)self _errorForStoreResponseStatus:v14 deviceLimit:v16];
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v84 withError:v17];

LABEL_9:
    v18 = 1;
    goto LABEL_77;
  }

  v16 = [v8 vui_stringForKey:@"ckc"];
  if ([v16 length] || objc_msgSend(v9, "type") == 3)
  {
    if ([v16 length])
    {
      v84 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:1];
    }

    else
    {
      v84 = 0;
    }

    v82 = [v8 vui_numberForKey:@"renew-after"];
    v79 = [v8 vui_numberForKey:@"expiration-time"];
    v78 = [v8 vui_numberForKey:@"availability-ending-time"];
    v77 = [v8 vui_numberForKey:@"playback-start-time"];
    v75 = [v8 vui_stringForKey:@"content-id"];
    v19 = [v8 vui_BOOLForKey:@"is-low-value" defaultValue:0];
    v81 = [v8 vui_numberForKey:@"playback-duration"];
    v20 = [v8 vui_BOOLForKey:@"allow-manual-renewal" defaultValue:0];
    v74 = [v8 vui_dictionaryForKey:@"extra-server-parameters"];
    v80 = [v8 vui_stringForKey:@"offline-key-renewal-policy"];
    v76 = [v8 vui_stringForKey:@"stkn"];
    v21 = [(VUIStoreFPSKeyLoader *)self savedStreamingKeyRequestToUseForStopping];

    if (v21 && v76)
    {
      v22 = [(VUIStoreFPSKeyLoader *)self savedStreamingKeyRequestToUseForStopping];
      v23 = [v22 userInfo];
      [v23 setObject:v76 forKey:@"stkn"];
    }

    [v9 setContentID:v75];
    [v9 setIsLowValueKey:v19];
    [v9 setAllowManualRenewal:v20];
    [v9 setAdditionalRequestParamsFromResponse:v74];
    if (v82)
    {
      v24 = [v9 serverRequestStartDate];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = [MEMORY[0x1E695DF00] date];
      }

      v27 = v26;

      [v82 doubleValue];
      [v27 dateByAddingTimeInterval:?];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v29 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v28;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Key renewal date: %@", buf, 0xCu);
      }

      [v9 setRenewalDate:*&v28];
      [v9 setRenewalInterval:v82];
    }

    if (v79)
    {
      v30 = objc_alloc(MEMORY[0x1E695DF00]);
      [v79 doubleValue];
      v32 = COERCE_DOUBLE([v30 initWithTimeIntervalSince1970:v31 / 1000.0]);
      if (v32 != 0.0)
      {
        [(VUIStoreFPSKeyLoader *)self downloadExpirationPeriodOverrideInSeconds];
        v34 = v33;
        if (v33 > 0.0)
        {
          v35 = sLogObject_0;
          if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v96 = v34;
            _os_log_impl(&dword_1E323F000, v35, OS_LOG_TYPE_DEFAULT, "Overriding key expiration to %.0f seconds from now", buf, 0xCu);
          }

          v36 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v34];

          v32 = *&v36;
        }
      }

      v37 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v32;
        _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "Key expiration date: %@", buf, 0xCu);
      }

      [v9 setExpirationDate:*&v32];
      v38 = [(VUIStoreFPSKeyLoader *)self keyExpirationDate];
      v39 = [*&v32 isEqualToDate:v38];

      if ((v39 & 1) == 0)
      {
        [(VUIStoreFPSKeyLoader *)self setKeyExpirationDate:*&v32];
      }

      v73 = v39 ^ 1;
    }

    else
    {
      v73 = 0;
    }

    if (v78)
    {
      v40 = objc_alloc(MEMORY[0x1E695DF00]);
      [v78 doubleValue];
      v41 = COERCE_DOUBLE([v40 initWithTimeIntervalSince1970:?]);
      [(VUIStoreFPSKeyLoader *)self availabilityPeriodOverrideInSeconds];
      v43 = v42;
      if (v42 > 0.0)
      {
        v44 = sLogObject_0;
        if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v96 = v43;
          _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "Overriding availability end to %.0f seconds from now", buf, 0xCu);
        }

        v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v43];

        v41 = *&v45;
      }

      v46 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v41;
        _os_log_impl(&dword_1E323F000, v46, OS_LOG_TYPE_DEFAULT, "Availability end date: %@", buf, 0xCu);
      }

      [v9 setAvailabilityEndDate:*&v41];
    }

    if (v77)
    {
      v47 = objc_alloc(MEMORY[0x1E695DF00]);
      [v77 doubleValue];
      v49 = COERCE_DOUBLE([v47 initWithTimeIntervalSince1970:v48 / 1000.0]);
      v50 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v49;
        _os_log_impl(&dword_1E323F000, v50, OS_LOG_TYPE_DEFAULT, "Rental playback start date: %@", buf, 0xCu);
      }

      v51 = [(VUIStoreFPSKeyLoader *)self rentalPlaybackStartDate];
      v52 = [*&v49 isEqualToDate:v51];

      if ((v52 & 1) == 0)
      {
        [(VUIStoreFPSKeyLoader *)self setRentalPlaybackStartDate:*&v49];
      }

      v53 = v52 ^ 1;
    }

    else
    {
      v53 = 0;
    }

    if (v81)
    {
      v54 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
        [v81 doubleValue];
        *buf = 134217984;
        v96 = v56;
        _os_log_impl(&dword_1E323F000, v55, OS_LOG_TYPE_DEFAULT, "Playback duration: %f", buf, 0xCu);
      }

      [v9 setPlaybackDuration:v81];
    }

    if ([v80 isEqualToString:@"auto"])
    {
      v57 = 1;
    }

    else if ([v80 isEqualToString:@"manual"])
    {
      v57 = 2;
    }

    else if ([v80 isEqualToString:@"no-renew"])
    {
      v57 = 3;
    }

    else
    {
      v57 = 0;
    }

    [v9 setOfflineKeyRenewalPolicy:v57];
    if ((v73 | v53) == 1)
    {
      v58 = [(VUIStoreFPSKeyLoader *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v59 = [(VUIStoreFPSKeyLoader *)self keyExpirationDate];
        v60 = [(VUIStoreFPSKeyLoader *)self rentalPlaybackStartDate];
        [v58 storeFPSKeyLoader:self didReceiveUpdatedRentalExpirationDate:v59 playbackStartDate:v60];
      }
    }

    v61 = [(VUIStoreFPSKeyLoader *)self eventCollection];
    v62 = *MEMORY[0x1E69D5FC0];
    v63 = MEMORY[0x1E696AEC0];
    v64 = [v9 eventReportingID];
    v65 = [v63 stringWithFormat:@"%@%@", v62, v64];
    [v61 addEndEventWithName:v62 identifier:v65];

    v66 = [MEMORY[0x1E695DF00] date];
    [v9 setRequestEndDate:v66];

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__VUIStoreFPSKeyLoader__handleResponseDict_forKeyRequest_completion___block_invoke;
    aBlock[3] = &unk_1E872E2A8;
    objc_copyWeak(&v90, buf);
    v67 = v9;
    v88 = v67;
    v89 = v10;
    v68 = _Block_copy(aBlock);
    if ([v67 type] == 2)
    {
      if ([v67 isRenewal] && -[VUIStoreFPSKeyLoader _isVideoCurrentlyBeingPlayedForKeyRequest:](self, "_isVideoCurrentlyBeingPlayedForKeyRequest:", v67))
      {
        if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
        {
          [VUIStoreFPSKeyLoader _handleResponseDict:forKeyRequest:completion:];
        }

        v94 = v67;
        v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = [v70 initWithDomain:*MEMORY[0x1E69D60E8] code:-456001 userInfo:0];
        [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v69 withError:v71];

        v18 = 1;
      }

      else
      {
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __69__VUIStoreFPSKeyLoader__handleResponseDict_forKeyRequest_completion___block_invoke_180;
        v85[3] = &unk_1E872DEC8;
        v86 = v68;
        [v67 offlineKeyDataFromServerKeyData:v84 completion:v85];
        v18 = 0;
        v69 = v86;
      }
    }

    else
    {
      (*(v68 + 2))(v68, v84, 0);
      v18 = 0;
    }

    objc_destroyWeak(&v90);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreFPSKeyLoader _handleResponseDict:forKeyRequest:completion:];
    }

    v93 = v9;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    v83 = TVPSKDErrorWithCode();
    [(VUIStoreFPSKeyLoader *)self _failKeyRequests:v84 withError:v83];
    v18 = 1;
  }

LABEL_77:

  v72 = v18 ^ 1;
  if (!v10)
  {
    v72 = 1;
  }

  if ((v72 & 1) == 0)
  {
    v10[2](v10);
  }
}

void __69__VUIStoreFPSKeyLoader__handleResponseDict_forKeyRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) setKeyResponseData:v5];
  if ([*(a1 + 32) type] == 2 && objc_msgSend(v5, "length"))
  {
    v8 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 storeFPSKeyLoader:WeakRetained didLoadOfflineKeyData:v5 forKeyRequest:*(a1 + 32)];
    }
  }

  if ([v5 length] || objc_msgSend(*(a1 + 32), "type") == 3)
  {
    v9 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 storeFPSKeyLoader:WeakRetained willSucceedForKeyRequest:*(a1 + 32)];
    }

    [*(a1 + 32) finish];
  }

  else
  {
    if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
    {
      __69__VUIStoreFPSKeyLoader__handleResponseDict_forKeyRequest_completion___block_invoke_cold_1();
    }

    v11[0] = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [WeakRetained _failKeyRequests:v9 withError:v6];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (id)_errorForStoreResponseStatus:(int64_t)a3 deviceLimit:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 <= -1015)
  {
    if (a3 > -1018)
    {
      if (a3 == -1017 || a3 == -1016)
      {
        goto LABEL_26;
      }

      if (v5)
      {
        v18 = *MEMORY[0x1E69D60E0];
        v19 = v5;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      }

      else
      {
        v7 = 0;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E69D60E8];
      v16 = -345026;
      goto LABEL_34;
    }

    if (a3 == -42606 || a3 == -42585)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a3 <= -1009)
    {
      if (a3 != -1014)
      {
        if (a3 == -1013 || a3 == -1009)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v5)
      {
        v20 = *MEMORY[0x1E69D60E0];
        v21 = v5;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      else
      {
        v7 = 0;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E69D60E8];
      v16 = -345025;
LABEL_34:
      v8 = [v14 initWithDomain:v15 code:v16 userInfo:v7];
      goto LABEL_35;
    }

    switch(a3)
    {
      case -1008:
        goto LABEL_26;
      case -1004:
        if (v5)
        {
          v22 = *MEMORY[0x1E69D60E0];
          v23[0] = v5;
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        }

        else
        {
          v7 = 0;
        }

        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = *MEMORY[0x1E69D60E8];
        v16 = -345014;
        goto LABEL_34;
      case -1002:
LABEL_26:
        v8 = TVPSKDErrorWithCode();
        goto LABEL_36;
    }
  }

LABEL_27:
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.fpsRequest" code:a3 userInfo:0];
  v9 = TVPSKDErrorWithCode();
  v10 = [v9 userInfo];
  v11 = [v10 mutableCopy];

  [v11 setObject:v7 forKey:*MEMORY[0x1E696AA08]];
  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = [v9 domain];
  v8 = [v12 initWithDomain:v13 code:objc_msgSend(v9 userInfo:{"code"), v11}];

LABEL_35:
LABEL_36:

  return v8;
}

- (void)_failKeyRequests:(id)a3 withError:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69D60E8];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69D60E8] code:-345007 userInfo:0];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v30)
  {
    v28 = *v8;
    v29 = *v32;
    v9 = MEMORY[0x1E69D5FC0];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v7 domain];
        if ([v12 isEqualToString:v28])
        {
          v13 = [v7 code];

          if (v13 != -345015)
          {
            goto LABEL_17;
          }

          v12 = [v11 keyIdentifier];
          if (v12)
          {
            if ([(VUIStoreFPSKeyLoader *)self usesKeyIdentifierPenaltyBox])
            {
              v14 = [(VUIStoreFPSKeyLoader *)self keyIdentifierPenaltyBox];
              v15 = [v14 objectForKey:v12];

              if (!v15)
              {
                v16 = sLogObject_0;
                if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v36 = v12;
                  _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Adding key identifier [%@] to penalty box since it is not owned or entitled", buf, 0xCu);
                }

                v17 = [(VUIStoreFPSKeyLoader *)self keyIdentifierPenaltyBox];
                [v17 setObject:v7 forKey:v12];
              }
            }
          }
        }

LABEL_17:
        [v11 setError:v7];
        v18 = [MEMORY[0x1E695DF00] date];
        [v11 setRequestEndDate:v18];

        v19 = [(VUIStoreFPSKeyLoader *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v19 storeFPSKeyLoader:self willFailWithError:v7 forKeyRequest:v11];
        }

        v20 = [(VUIStoreFPSKeyLoader *)self eventCollection];
        v21 = *v9;
        v22 = MEMORY[0x1E696AEC0];
        v23 = [v11 eventReportingID];
        v24 = [v22 stringWithFormat:@"%@%@", v21, v23];
        [v20 addEndEventWithName:v21 identifier:v24];

        v25 = [(VUIStoreFPSKeyLoader *)self eventCollection];
        [v25 addSingleShotEventWithName:*MEMORY[0x1E69D5FA8] value:v7];

        v26 = [(VUIStoreFPSKeyLoader *)self eventCollection];
        [v26 addSingleShotEventWithName:*MEMORY[0x1E69D5FB0] value:*v9];

        [v11 finish];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v30);
  }
}

- (id)_bodyDictionaryForRequests:(id)a3 isStopRequest:(BOOL)a4 deviceLocation:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(VUIStoreFPSKeyLoader *)self _jsonDictionaryForRequest:*(*(&v20 + 1) + 8 * i) isStopRequest:v6 deviceLocation:v9, v20];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v17 setObject:&unk_1F5E5C9D8 forKey:@"version"];
  [v17 setObject:v10 forKey:@"streaming-keys"];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v18 setObject:v17 forKey:@"fairplay-streaming-request"];

  return v18;
}

- (id)_jsonDictionaryForRequest:(id)a3 isStopRequest:(BOOL)a4 deviceLocation:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [v8 keyRequestData];
  v12 = [v11 base64EncodedStringWithOptions:0];

  if (v12)
  {
    [v10 setObject:v12 forKey:@"spc"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "requestID")}];
  [v10 setObject:v13 forKey:@"id"];

  v14 = [v8 keyIdentifier];
  v15 = [v14 absoluteString];

  if (v15)
  {
    [v10 setObject:v15 forKey:@"uri"];
  }

  v16 = [(VUIStoreFPSKeyLoader *)self rentalID];
  if (v16)
  {
    [v10 setObject:v16 forKey:@"rental-id"];
  }

  if (v6)
  {
    [v10 setObject:@"stop" forKey:@"lease-action"];
    v17 = [v8 userInfo];
    v18 = [v17 objectForKey:@"stkn"];

    if (v18)
    {
      [v10 setObject:v18 forKey:@"stkn"];
    }
  }

  else
  {
    if ([v8 isRenewal])
    {
      v19 = @"renew";
    }

    else
    {
      v19 = @"start";
    }

    [v10 setObject:v19 forKey:@"lease-action"];
  }

  if ([(VUIStoreFPSKeyLoader *)self didSkipRentalCheckout])
  {
    [v10 setObject:MEMORY[0x1E695E118] forKey:@"skipped-rental-checkout"];
  }

  if ([v8 type] == 2 || objc_msgSend(v8, "type") == 3)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKey:@"offline"];
  }

  if (v9)
  {
    if (_os_feature_enabled_impl())
    {
      v20 = +[_TtC8VideosUI38VUILocationServiceProxyObjCLocationKey latitude];
      v21 = [v9 objectForKey:v20];

      v22 = +[_TtC8VideosUI38VUILocationServiceProxyObjCLocationKey longitude];
      v23 = [v9 objectForKey:v22];

      if (!v21)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = [v9 objectForKey:*MEMORY[0x1E69E16B8]];
      v23 = [v9 objectForKey:*MEMORY[0x1E69E16C0]];
      if (!v21)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    if (v23)
    {
      [v10 setObject:v21 forKey:@"lat"];
      [v10 setObject:v23 forKey:@"long"];
    }

    goto LABEL_27;
  }

LABEL_28:
  v24 = [v8 additionalRequestParams];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [v8 additionalRequestParams];
    [v10 addEntriesFromDictionary:v26];
  }

  v27 = [v10 objectForKey:@"adamId"];
  if (!v27)
  {
    v28 = [v8 adamID];
    v29 = [v28 length];

    if (!v29)
    {
      goto LABEL_34;
    }

    v27 = [v8 adamID];
    [v10 setObject:v27 forKey:@"adamId"];
  }

LABEL_34:

  return v10;
}

- (BOOL)_isVideoCurrentlyBeingPlayedForKeyRequest:(id)a3
{
  v3 = [a3 userInfo];
  v4 = *MEMORY[0x1E69D5AE8];
  v5 = [v3 objectForKey:*MEMORY[0x1E69D5AE8]];

  if (v5 && (+[VUIPlaybackManager sharedInstance](VUIPlaybackManager, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isPlaybackUIBeingShown], v6, v7))
  {
    v8 = +[VUIPlaybackManager sharedInstance];
    v9 = [v8 currentMediaItem];
    v10 = [v9 mediaItemMetadataForProperty:v4];

    if (v10)
    {
      v11 = [v10 isEqualToString:v5];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (VUIStoreFPSKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadFairPlayStreamingKeyRequests:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)invalidateKeysWithRequests:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__VUIStoreFPSKeyLoader__loadFPSURLsFromStoreBagWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__VUIStoreFPSKeyLoader__loadNonceDataForRequests_completion___block_invoke_63_cold_2()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__VUIStoreFPSKeyLoader__generateSecureInvalidationDataForFirstRequest_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_7(&dword_1E323F000, a2, a3, "Error generating secure invalidation data for %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_startKeyRequestsInBatches:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_96_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __102__VUIStoreFPSKeyLoader__sendKeyRequestsToServer_isStopRequest_isSecureInvalidationRequest_completion___block_invoke_104_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleResponseForKeyRequests:responseData:URLResponse:error:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleResponseForKeyRequests:responseData:URLResponse:error:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResponseForKeyRequests:responseData:URLResponse:error:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResponseDicts:forKeyRequests:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__VUIStoreFPSKeyLoader__handleResponseDicts_forKeyRequests_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResponseDict:(uint64_t)a1 forKeyRequest:(uint64_t)a2 completion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_3_7(&dword_1E323F000, a2, a3, "Received FPS response error status of %ld for %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_handleResponseDict:forKeyRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResponseDict:forKeyRequest:completion:.cold.3()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleResponseDict:forKeyRequest:completion:.cold.4()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VUIStoreFPSKeyLoader__handleResponseDict_forKeyRequest_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end