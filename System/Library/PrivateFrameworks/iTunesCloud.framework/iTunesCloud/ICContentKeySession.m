@interface ICContentKeySession
+ (NSString)enhancedAudioSharedContentKeyPath;
+ (NSString)pendingInvalidationKeyStorePath;
+ (id)copyKeysToPendingInvalidationStoreFromPath:(id)a3;
- (BOOL)_isPrefetchKey:(id)a3;
- (BOOL)_shouldRequestPersistentKeyForKeyRequest:(id)a3;
- (ICContentKeySession)init;
- (ICContentKeySession)initWithRequestContext:(id)a3 keyStore:(id)a4 delegate:(id)a5;
- (void)_finishProcessingKeyWithIdentifier:(id)a3;
- (void)_invalidateKeyWithIdentifier:(id)a3 forAdamID:(id)a4 offline:(BOOL)a5 usingAccountDSID:(id)a6 keyData:(id)a7 withCompletion:(id)a8;
- (void)_performKeyDeliveryRequestForContentKeyRequest:(id)a3 persistResponse:(BOOL)a4 isRenewal:(BOOL)a5;
- (void)_processKeyWithIdentifier:(id)a3;
- (void)_renewExpiredKeys;
- (void)_scheduleKeyRefreshTimer;
- (void)addAsset:(id)a3 shouldPreloadKeys:(BOOL)a4 waitForKeyIdentifiers:(BOOL)a5;
- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5;
- (void)contentKeySession:(id)a3 contentKeyRequestDidSucceed:(id)a4;
- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvideRenewingContentKeyRequest:(id)a4;
- (void)dealloc;
- (void)invalidateKeyWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)pauseAutomaticKeyRenewal;
- (void)processKeyWithIdentifier:(id)a3;
- (void)renewAllKeys;
- (void)resumeAutomaticKeyRenewal;
- (void)stopSessionInvalidatingKeys:(BOOL)a3 withCompletion:(id)a4;
- (void)waitForAllKeysToProcessWithTimeout:(double)a3;
- (void)waitForKeyRenewalsWithCompletionHandler:(id)a3;
@end

@implementation ICContentKeySession

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  keyRenewalTimer = self->_keyRenewalTimer;
  if (keyRenewalTimer)
  {
    dispatch_source_cancel(keyRenewalTimer);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_renewalCompletionBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ICContentKeySession;
  [(ICContentKeySession *)&v9 dealloc];
}

+ (NSString)pendingInvalidationKeyStorePath
{
  v2 = MSVMobileHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media/ContentKeys/PendingInvalidation"];

  return v3;
}

+ (NSString)enhancedAudioSharedContentKeyPath
{
  if (enhancedAudioSharedContentKeyPath_onceToken != -1)
  {
    dispatch_once(&enhancedAudioSharedContentKeyPath_onceToken, &__block_literal_global_31461);
  }

  v3 = enhancedAudioSharedContentKeyPath_path;

  return v3;
}

- (BOOL)_shouldRequestPersistentKeyForKeyRequest:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(ICContentKeySession *)self _isPrefetchKey:v4];
  if ([(ICContentKeySession *)self allowFallbackToStreamingKeys])
  {
    v6 = +[ICDefaults standardDefaults];
    v7 = [v6 shouldForceStreamingOnlyKeysForPlayback] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = 48;
  if (v5)
  {
    v8 = 112;
  }

  if (*(&self->super.isa + v8))
  {
    v9 = self->_requestOfflineKeys & v7;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)_invalidateKeyWithIdentifier:(id)a3 forAdamID:(id)a4 offline:(BOOL)a5 usingAccountDSID:(id)a6 keyData:(id)a7 withCompletion:(id)a8
{
  v11 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = ICCreateLoggableValueForDSID(v16);
      *buf = 138544130;
      v42 = self;
      v43 = 2114;
      v44 = v14;
      v45 = 1024;
      v46 = v11;
      v47 = 2114;
      v48 = v21;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - invalidating key with identifier '%{public}@'. offline=%{BOOL}u, accountDSID=%{public}@", buf, 0x26u);
    }

    [(NSMutableDictionary *)self->_keyRenewalDates removeObjectForKey:v14];
    adamID = v15;
    if (!v15)
    {
      adamID = self->_adamID;
    }

    v23 = adamID;
    if (v11)
    {
      v24 = [[ICContentKeyNonceRequest alloc] initWithStoreRequestContext:self->_requestContext adamID:v23 accountDSID:v16 keyServerURL:self->_offlineLeaseStopNonceURL];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_113;
      v32[3] = &unk_1E7BF7D78;
      v32[4] = self;
      v33 = v14;
      v37 = v18;
      v34 = v17;
      v35 = v16;
      v36 = v23;
      [(ICContentKeyNonceRequest *)v24 performWithResponseHandler:v32];
    }

    else
    {
      streamingleaseStopURL = self->_streamingleaseStopURL;
      if (streamingleaseStopURL || (streamingleaseStopURL = self->_keyServerURL) != 0)
      {
        v27 = streamingleaseStopURL;
      }

      else
      {
        v27 = [(ICContentKeySessionPrefetchKeyConfiguration *)self->_prefetchKeyConfiguration keyServerURL];
      }

      v24 = v27;
      keyCertificateURL = self->_keyCertificateURL;
      if (keyCertificateURL)
      {
        v29 = keyCertificateURL;
      }

      else
      {
        v29 = [(ICContentKeySessionPrefetchKeyConfiguration *)self->_prefetchKeyConfiguration keyCertificateURL];
      }

      v30 = v29;
      v31 = [[ICSecureKeyDeliveryRequest alloc] initWithRequestContext:self->_requestContext serverPlaybackContextData:v17];
      [(ICSecureKeyDeliveryRequest *)v31 setContentURI:v14];
      [(ICSecureKeyDeliveryRequest *)v31 setShouldIncludeDeviceGUID:1];
      [(ICSecureKeyDeliveryRequest *)v31 setCertificateURL:v30];
      [(ICSecureKeyDeliveryRequest *)v31 setKeyServerURL:v24];
      [(ICSecureKeyDeliveryRequest *)v31 setITunesStoreRequest:[(ICContentKeySession *)self isStoreKeyServer]];
      [(ICSecureKeyDeliveryRequest *)v31 setIsOfflineDownload:0];
      [(ICSecureKeyDeliveryRequest *)v31 setAdamID:v23];
      [(ICSecureKeyDeliveryRequest *)v31 setRequestProtocolType:self->_keyServerProtocolType];
      [(ICSecureKeyDeliveryRequest *)v31 setLeaseActionType:3];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke;
      v38[3] = &unk_1E7BF7D28;
      v38[4] = self;
      v39 = v14;
      v40 = v18;
      [(ICSecureKeyDeliveryRequest *)v31 performWithResponseHandler:v38];
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v25 = ICCreateLoggableValueForDSID(v16);
    *buf = 138544130;
    v42 = self;
    v43 = 2114;
    v44 = v14;
    v45 = 1024;
    v46 = v11;
    v47 = 2114;
    v48 = v25;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - not invalidating key with identifier '%{public}@'. offline=%{BOOL}u, accountDSID=%{public}@ as keyData is nil", buf, 0x26u);
  }

  if (v18)
  {
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    (*(v18 + 2))(v18, v23);
LABEL_20:
  }
}

void __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = [v4 msv_description];
      v12 = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Completed stop request for key identifier '%{public}@' error=%{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed stop request for key identifier '%{public}@'", &v12, 0x16u);
  }

  (*(a1[6] + 16))();
}

void __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_113(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = [v6 msv_description];
      *buf = 138543874;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Completed stop nonce request for key identifier '%{public}@' error=%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed stop nonce request for key identifier '%{public}@'", buf, 0x16u);
    }

    v14 = [v5 nonceData];
    v26 = *MEMORY[0x1E69873A8];
    v27 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = *(v17 + 24);
    v19 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_115;
    v20[3] = &unk_1E7BF7D50;
    v20[4] = v17;
    v21 = v16;
    v25 = *(a1 + 72);
    v22 = 0;
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    [v18 invalidatePersistableContentKey:v19 options:v15 completionHandler:v20];
  }
}

void __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v26 = v8;
      v27 = 2114;
      v28 = v9;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to invalidate persisted key for identifier '%{public}@'. err=%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 216);
    if (v11 || (v11 = *(v10 + 8)) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = [*(v10 + 104) keyServerURL];
    }

    v13 = v12;
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = [*(v14 + 104) keyCertificateURL];
    }

    v17 = v16;
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v26 = v19;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ certificateURL=%{public}@", buf, 0x16u);
    }

    v20 = [[ICSecureKeyDeliveryRequest alloc] initWithRequestContext:*(*(a1 + 32) + 32) serverPlaybackContextData:v5];
    [(ICSecureKeyDeliveryRequest *)v20 setContentURI:*(a1 + 40)];
    [(ICSecureKeyDeliveryRequest *)v20 setAccountDSID:*(a1 + 56)];
    [(ICSecureKeyDeliveryRequest *)v20 setShouldIncludeDeviceGUID:1];
    [(ICSecureKeyDeliveryRequest *)v20 setCertificateURL:v17];
    [(ICSecureKeyDeliveryRequest *)v20 setKeyServerURL:v13];
    -[ICSecureKeyDeliveryRequest setITunesStoreRequest:](v20, "setITunesStoreRequest:", [*(a1 + 32) isStoreKeyServer]);
    [(ICSecureKeyDeliveryRequest *)v20 setIsOfflineDownload:0];
    [(ICSecureKeyDeliveryRequest *)v20 setAdamID:*(a1 + 64)];
    [(ICSecureKeyDeliveryRequest *)v20 setRequestProtocolType:*(*(a1 + 32) + 184)];
    [(ICSecureKeyDeliveryRequest *)v20 setLeaseActionType:3];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_116;
    v22[3] = &unk_1E7BF7D28;
    v21 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v21;
    v24 = *(a1 + 72);
    [(ICSecureKeyDeliveryRequest *)v20 performWithResponseHandler:v22];
  }
}

void __110__ICContentKeySession__invalidateKeyWithIdentifier_forAdamID_offline_usingAccountDSID_keyData_withCompletion___block_invoke_116(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = v5;
  if (v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      goto LABEL_7;
    }

    v7 = a1[4];
    v8 = a1[5];
    v9 = [v4 msv_description];
    v18 = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v10 = "%{public}@ [SKD] - Completed stop request for key identifier '%{public}@' error=%{public}@";
    v11 = v6;
    v12 = 32;
    goto LABEL_4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[4];
    v14 = a1[5];
    v18 = 138543618;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed stop request for key identifier '%{public}@'", &v18, 0x16u);
  }

  v15 = *(a1[4] + 48);
  if (v15)
  {
    v6 = [v15 removeKeyForIdentifier:a1[5]];
    if (!v6)
    {
      goto LABEL_6;
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v16 = a1[4];
    v17 = a1[5];
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v17;
    v10 = "%{public}@ [SKD] - Failed to purge persisted key with identifier '%{public}@'";
    v11 = v9;
    v12 = 22;
LABEL_4:
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, v10, &v18, v12);
LABEL_5:

    goto LABEL_6;
  }

LABEL_7:
  (*(a1[6] + 16))();
}

- (void)_finishProcessingKeyWithIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  pendingKeyIdentifiers = self->_pendingKeyIdentifiers;
  v5 = a3;
  [(NSMutableSet *)pendingKeyIdentifiers removeObject:v5];
  [(NSMutableSet *)self->_pendingRenewalKeyIdentifiers removeObject:v5];

  dispatch_semaphore_signal(self->_waitForKeysSemaphore);
  if (![(NSMutableSet *)self->_pendingRenewalKeyIdentifiers count]&& [(NSMutableArray *)self->_renewalCompletionBlocks count])
  {
    v6 = [(NSMutableArray *)self->_renewalCompletionBlocks copy];
    renewalCompletionBlocks = self->_renewalCompletionBlocks;
    self->_renewalCompletionBlocks = 0;

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Finished waiting for key renewals to complete", &v9, 0xCu);
    }

    [v6 enumerateObjectsUsingBlock:&__block_literal_global_111];
  }
}

- (void)_processKeyWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Requesting key with identifier %{public}@", &v6, 0x16u);
  }

  [(NSMutableSet *)self->_pendingKeyIdentifiers addObject:v4];
  [(AVContentKeySession *)self->_contentKeySession processContentKeyRequestWithIdentifier:v4 initializationData:0 options:0];
}

- (void)_renewExpiredKeys
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v3 dateByAddingTimeInterval:60.0];

  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Renewing key requests due to expire before %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](self->_keyRenewalDates, "count")}];
  keyRenewalDates = self->_keyRenewalDates;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__ICContentKeySession__renewExpiredKeys__block_invoke;
  v14[3] = &unk_1E7BF7CE0;
  v8 = v4;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  [(NSMutableDictionary *)keyRenewalDates enumerateKeysAndObjectsUsingBlock:v14];
  if ([v9 count])
  {
    pendingRenewalKeyIdentifiers = self->_pendingRenewalKeyIdentifiers;
    if (pendingRenewalKeyIdentifiers)
    {
      [(NSMutableSet *)pendingRenewalKeyIdentifiers unionSet:v9];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFA8] setWithSet:v9];
      v12 = self->_pendingRenewalKeyIdentifiers;
      self->_pendingRenewalKeyIdentifiers = v11;
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__ICContentKeySession__renewExpiredKeys__block_invoke_2;
  v13[3] = &unk_1E7BF9988;
  v13[4] = self;
  [v9 enumerateObjectsUsingBlock:v13];
}

void __40__ICContentKeySession__renewExpiredKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 compare:*(a1 + 32)] == -1)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __40__ICContentKeySession__renewExpiredKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 120) removeObjectForKey:v3];
  v4 = [*(*(a1 + 32) + 128) objectForKey:v3];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v4 ic_description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Renewing key request %{public}@", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 128) removeObjectForKey:v3];
    [*(*(a1 + 32) + 24) renewExpiringResponseDataForContentKeyRequest:v4];
  }

  else
  {
    if (v6)
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - No existing key request to renew for identifier %{public}@ - requesting a new one", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 24) processContentKeyRequestWithIdentifier:v3 initializationData:0 options:0];
  }
}

- (void)_scheduleKeyRefreshTimer
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_automaticKeyRenewalPaused)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Automatic key renewal is currently paused", buf, 0xCu);
    }
  }

  else
  {
    if (!self->_keyRenewalTimer)
    {
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_accessQueue);
      keyRenewalTimer = self->_keyRenewalTimer;
      self->_keyRenewalTimer = v4;
      v6 = v4;

      objc_initWeak(buf, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __47__ICContentKeySession__scheduleKeyRefreshTimer__block_invoke;
      handler[3] = &unk_1E7BFA328;
      objc_copyWeak(&v18, buf);
      dispatch_source_set_event_handler(v6, handler);
      dispatch_resume(v6);

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

    if ([(NSMutableDictionary *)self->_keyRenewalDates count])
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        keyRenewalDates = self->_keyRenewalDates;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = keyRenewalDates;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Scheduling next key renewal using renewal times %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v24 = __Block_byref_object_copy__31121;
      v25 = __Block_byref_object_dispose__31122;
      v26 = 0;
      v9 = self->_keyRenewalDates;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47__ICContentKeySession__scheduleKeyRefreshTimer__block_invoke_106;
      v16[3] = &unk_1E7BF7CB8;
      v16[4] = buf;
      [(NSMutableDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v16];
      [*(*&buf[8] + 40) timeIntervalSinceNow];
      if (v10 >= 1.0)
      {
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*&buf[8] + 40);
          *v19 = 138543618;
          v20 = self;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Scheduling next key refresh at %{public}@", v19, 0x16u);
        }

        v13 = self->_keyRenewalTimer;
        [*(*&buf[8] + 40) timeIntervalSinceNow];
        v15 = dispatch_time(0, (v14 * 1000000000.0));
        dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        [(ICContentKeySession *)self _renewExpiredKeys];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      dispatch_source_set_timer(self->_keyRenewalTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }
  }
}

void __47__ICContentKeySession__scheduleKeyRefreshTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renewExpiredKeys];
}

void __47__ICContentKeySession__scheduleKeyRefreshTimer__block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 40))
  {
    if ([v5 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v7 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v7 + 40), a3);
LABEL_5:
}

- (void)_performKeyDeliveryRequestForContentKeyRequest:(id)a3 persistResponse:(BOOL)a4 isRenewal:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  v10 = [(ICContentKeySession *)self _isPrefetchKey:v9];
  v11 = v10;
  v12 = 48;
  if (v10)
  {
    v12 = 112;
  }

  v13 = *(&self->super.isa + v12);
  if (v6 && (offlineLeaseStartURL = self->_offlineLeaseStartURL) != 0 || (offlineLeaseStartURL = self->_keyServerURL) != 0)
  {
    v15 = offlineLeaseStartURL;
  }

  else
  {
    v15 = [(ICContentKeySessionPrefetchKeyConfiguration *)self->_prefetchKeyConfiguration keyServerURL];
  }

  v16 = v15;
  keyCertificateURL = self->_keyCertificateURL;
  if (keyCertificateURL)
  {
    v18 = keyCertificateURL;
  }

  else
  {
    v18 = [(ICContentKeySessionPrefetchKeyConfiguration *)self->_prefetchKeyConfiguration keyCertificateURL];
  }

  v19 = v18;
  v20 = [[ICSecureKeyDeliveryRequest alloc] initWithRequestContext:self->_requestContext contentKeyRequest:v8];
  [(ICSecureKeyDeliveryRequest *)v20 setShouldIncludeDeviceGUID:1];
  [(ICSecureKeyDeliveryRequest *)v20 setCertificateURL:v19];
  [(ICSecureKeyDeliveryRequest *)v20 setKeyServerURL:v16];
  [(ICSecureKeyDeliveryRequest *)v20 setITunesStoreRequest:[(ICContentKeySession *)self isStoreKeyServer]];
  [(ICSecureKeyDeliveryRequest *)v20 setIsOfflineDownload:v6];
  if (v11)
  {
    adamID = &unk_1F2C922A8;
  }

  else
  {
    adamID = self->_adamID;
  }

  [(ICSecureKeyDeliveryRequest *)v20 setAdamID:adamID];
  [(ICSecureKeyDeliveryRequest *)v20 setRequestProtocolType:self->_keyServerProtocolType];
  [(ICSecureKeyDeliveryRequest *)v20 setLeaseActionType:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __96__ICContentKeySession__performKeyDeliveryRequestForContentKeyRequest_persistResponse_isRenewal___block_invoke;
  v25[3] = &unk_1E7BF7C90;
  v25[4] = self;
  v26 = v8;
  v29 = v6;
  v27 = v9;
  v28 = v13;
  v30 = a5;
  v31 = v11;
  v22 = v13;
  v23 = v9;
  v24 = v8;
  [(ICSecureKeyDeliveryRequest *)v20 performWithResponseHandler:v25];
}

void __96__ICContentKeySession__performKeyDeliveryRequestForContentKeyRequest_persistResponse_isRenewal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__ICContentKeySession__performKeyDeliveryRequestForContentKeyRequest_persistResponse_isRenewal___block_invoke_2;
  block[3] = &unk_1E7BF7C68;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = *(a1 + 48);
  v20 = *(a1 + 64);
  v17 = v10;
  v18 = v5;
  v19 = *(a1 + 56);
  v21 = *(a1 + 65);
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);
}

void __96__ICContentKeySession__performKeyDeliveryRequestForContentKeyRequest_persistResponse_isRenewal___block_invoke_2(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) ic_description];
      *buf = 138543874;
      v99 = v5;
      v100 = 2114;
      v101 = v6;
      v102 = 2114;
      v103 = v2;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Secure key request failed for request %{public}@. err=%{public}@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 136) removeObjectForKey:*(a1 + 56)];
    if (*(a1 + 80) != 1 || ![*(a1 + 40) allowFallbackToStreamingKeys])
    {
      goto LABEL_11;
    }

    v7 = [v2 domain];
    if ([v7 isEqualToString:@"ICKeyServerError"])
    {
      v8 = [v2 code];

      if (v8 == -1004)
      {
        v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 40);
          *buf = 138543362;
          v99 = v10;
          _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Key server returned a slot error - disabling requesting of offline keys for future retries", buf, 0xCu);
        }

        *(*(a1 + 40) + 173) = 0;
        v7 = +[ICDefaults standardDefaults];
        [v7 setShouldForceStreamingOnlyKeysForPlayback:1];
        goto LABEL_30;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) ic_description];
      v14 = *(a1 + 64);
      *buf = 138543874;
      v99 = v12;
      v100 = 2114;
      v101 = v13;
      v102 = 2114;
      v103 = v14;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Secure key request completed for request %{public}@. response=%{public}@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 136) setObject:*(a1 + 64) forKey:*(a1 + 56)];
    if (*(a1 + 80) != 1)
    {
      v35 = [*(a1 + 64) contentKeyContextData];
      if (v35)
      {
        v7 = v35;
        v2 = 0;
        v11 = v7;
      }

      else
      {
        v11 = [MEMORY[0x1E695DEF0] data];
        v7 = 0;
        v2 = 0;
      }

      goto LABEL_38;
    }

    v7 = *(a1 + 48);
    v15 = [*(a1 + 64) contentKeyContextData];
    v97 = 0;
    v11 = [v7 persistableContentKeyFromKeyVendorResponse:v15 options:0 error:&v97];
    v2 = v97;

    if (v11)
    {
      v16 = [*(*(a1 + 40) + 32) identityStore];
      v17 = [*(*(a1 + 40) + 32) identity];
      v96 = 0;
      v18 = [v16 DSIDForUserIdentity:v17 outError:&v96];
      v19 = v96;

      if (v19)
      {
        v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 40);
          v22 = [*(a1 + 48) ic_description];
          *buf = 138543874;
          v99 = v21;
          v100 = 2114;
          v101 = v22;
          v102 = 2114;
          v103 = v19;
          _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to resolve DSID for saving key request %{public}@. err=%{public}@", buf, 0x20u);
        }
      }

      v93 = v19;
      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = *(a1 + 56);
        *buf = 138543874;
        v99 = v24;
        v100 = 2114;
        v101 = v25;
        v102 = 2114;
        v103 = v18;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - saving key with identifier %{public}@. accountDSID=%{public}@", buf, 0x20u);
      }

      v26 = objc_opt_respondsToSelector();
      v27 = *(a1 + 72);
      v28 = *(*(a1 + 40) + 40);
      v29 = *(a1 + 56);
      v30 = [*(a1 + 64) renewalDate];
      if (v26)
      {
        v31 = [*(a1 + 64) rentalExpirationDate];
        v32 = v29;
        v33 = v18;
        v34 = [v27 saveKey:v11 forIdentifier:v32 adamID:v28 withRenewalDate:v30 expirationDate:v31 accountDSID:v18 keyServerProtocolType:*(*(a1 + 40) + 184)];
      }

      else
      {
        v39 = v29;
        v33 = v18;
        v34 = [v27 saveKey:v11 forIdentifier:v39 adamID:v28 withRenewalDate:v30 accountDSID:v18 keyServerProtocolType:*(*(a1 + 40) + 184)];
      }

      if (v34)
      {
        v40 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = *(a1 + 40);
          v42 = [*(a1 + 48) ic_description];
          *buf = 138543874;
          v99 = v41;
          v100 = 2114;
          v101 = v42;
          v102 = 2114;
          v103 = v34;
          _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to save key for persistable key request %{public}@. err=%{public}@", buf, 0x20u);
        }
      }

      goto LABEL_38;
    }

    v36 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 40);
      v38 = [*(a1 + 48) ic_description];
      *buf = 138543874;
      v99 = v37;
      v100 = 2114;
      v101 = v38;
      v102 = 2114;
      v103 = v2;
      _os_log_impl(&dword_1B4491000, v36, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to create persistable data for key request %{public}@. err=%{public}@", buf, 0x20u);
    }

    if (!v2)
    {
      v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }
  }

LABEL_30:
  v11 = 0;
LABEL_38:

LABEL_39:
  v43 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v44 = os_signpost_id_make_with_pointer(v43, *(a1 + 48));

  if (v2)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = [v2 domain];
    v47 = [v45 stringWithFormat:@"Error-%@-%lld", v46, objc_msgSend(v2, "code")];

    v48 = *(a1 + 72);
    v49 = *(a1 + 56);
    v95 = 0;
    LODWORD(v46) = [v48 containsKeyForIdentifier:v49 error:&v95];
    v50 = v95;
    if (v46)
    {
      v51 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(a1 + 40);
        v53 = [*(a1 + 48) ic_description];
        *buf = 138543618;
        v99 = v52;
        v100 = 2114;
        v101 = v53;
        _os_log_impl(&dword_1B4491000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Failed to renew key for request %{public}@ - falling back to existing cached key", buf, 0x16u);
      }

      v54 = *(a1 + 72);
      v55 = [*(a1 + 48) identifier];
      v94 = v50;
      v56 = [v54 loadKeyForIdentifier:v55 error:&v94];
      v57 = v94;

      if (v57 || ([v56 keyData], v75 = objc_claimAutoreleasedReturnValue(), v75, !v75))
      {
        v58 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = *(a1 + 40);
          v60 = [*(a1 + 48) ic_description];
          *buf = 138543874;
          v99 = v59;
          v100 = 2114;
          v101 = v60;
          v102 = 2114;
          v103 = v57;
          _os_log_impl(&dword_1B4491000, v58, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Can't fall back to cached prefetch key for request %{public}@. err=%{public}@", buf, 0x20u);
        }

        [*(a1 + 48) processContentKeyResponseError:v2];
        v61 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(a1 + 40);
          v63 = [*(a1 + 48) ic_description];
          *buf = 138543874;
          v99 = v62;
          v100 = 2114;
          v101 = v63;
          v102 = 2114;
          v103 = v2;
          _os_log_impl(&dword_1B4491000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed content key request %{public}@ with response error %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v76 = MEMORY[0x1E6987F68];
        v77 = [v56 keyData];
        v61 = [v76 contentKeyResponseWithFairPlayStreamingKeyResponseData:v77];

        [*(a1 + 48) processContentKeyResponse:v61];
        v47 = @"Fallback";
      }
    }

    else
    {
      [*(a1 + 48) processContentKeyResponseError:v2];
      v56 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 40);
        v71 = [*(a1 + 48) ic_description];
        *buf = 138543874;
        v99 = v70;
        v100 = 2114;
        v101 = v71;
        v102 = 2114;
        v103 = v2;
        _os_log_impl(&dword_1B4491000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed content key request %{public}@ with response error %{public}@", buf, 0x20u);
      }

      v57 = v50;
    }

    v78 = [v2 domain];
    if ([v78 isEqualToString:@"ICError"])
    {
      if ([v2 code] == -7100)
      {

LABEL_69:
        if (*(a1 + 81) == 1 && (*(a1 + 80) & 1) == 0)
        {
          v88 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = *(a1 + 40);
            v90 = [*(a1 + 48) ic_description];
            *buf = 138543618;
            v99 = v89;
            v100 = 2114;
            v101 = v90;
            _os_log_impl(&dword_1B4491000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Scheduling a retry in 2 minutes for key %{public}@", buf, 0x16u);
          }

          v91 = *(*(a1 + 40) + 120);
          v92 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:120.0];
          [v91 setObject:v92 forKey:*(a1 + 56)];
        }

        else
        {
          [*(*(a1 + 40) + 120) removeObjectForKey:*(a1 + 56)];
        }

        goto LABEL_76;
      }

      v80 = [v2 code];

      if (v80 == -7003)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

    [*(*(a1 + 40) + 120) removeObjectForKey:*(a1 + 56)];
    if ((*(a1 + 82) & 1) == 0)
    {
      v79 = [*(a1 + 72) incrementFailureCountForKeyWithIdentifier:*(a1 + 56)];
    }
  }

  else
  {
    v57 = [MEMORY[0x1E6987F68] contentKeyResponseWithFairPlayStreamingKeyResponseData:v11];
    [*(a1 + 48) processContentKeyResponse:v57];
    v64 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = *(a1 + 40);
      v66 = [*(a1 + 48) ic_description];
      *buf = 138543874;
      v99 = v65;
      v100 = 2114;
      v101 = v66;
      v102 = 2114;
      v103 = v57;
      _os_log_impl(&dword_1B4491000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Completed content key request %{public}@ with response %{public}@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 128) setObject:*(a1 + 48) forKey:*(a1 + 56)];
    if (*(a1 + 80) == 1)
    {
      v67 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = *(a1 + 40);
        v69 = [*(a1 + 48) ic_description];
        *buf = 138543618;
        v99 = v68;
        v100 = 2114;
        v101 = v69;
        _os_log_impl(&dword_1B4491000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - skipping automatic renewal for offline key request %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v72 = [*(a1 + 64) renewalDate];

      if (v72)
      {
        v73 = *(*(a1 + 40) + 120);
        v74 = [*(a1 + 64) renewalDate];
        [v73 setObject:v74 forKey:*(a1 + 56)];
      }

      else
      {
        v81 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = *(a1 + 40);
          v83 = [*(a1 + 48) ic_description];
          *buf = 138543618;
          v99 = v82;
          v100 = 2114;
          v101 = v83;
          _os_log_impl(&dword_1B4491000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - No renewal date provided in response to key request %{public}@ - skipping automatic renewal", buf, 0x16u);
        }

        [*(*(a1 + 40) + 120) removeObjectForKey:*(a1 + 56)];
      }
    }

    v47 = @"Success";
  }

LABEL_76:

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 160));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained contentKeySession:*(a1 + 40) didFinishProcessingKey:*(a1 + 56) withResponse:*(a1 + 64) error:*(a1 + 32)];
  }

  [*(a1 + 40) _finishProcessingKeyWithIdentifier:*(a1 + 56)];
  [*(a1 + 40) _scheduleKeyRefreshTimer];
  v85 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v86 = v85;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
  {
    v87 = [(__CFString *)v47 UTF8String];
    *buf = 136446210;
    v99 = v87;
    _os_signpost_emit_with_name_impl(&dword_1B4491000, v86, OS_SIGNPOST_INTERVAL_END, v44, "ContentKeyRequest", " enableTelemetry=YES result=%{public, signpost.telemetry:string1, name=result}s", buf, 0xCu);
  }
}

- (BOOL)_isPrefetchKey:(id)a3
{
  prefetchKeyConfiguration = self->_prefetchKeyConfiguration;
  v4 = a3;
  v5 = [(ICContentKeySessionPrefetchKeyConfiguration *)prefetchKeyConfiguration keyIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    contentKeySession = self->_contentKeySession;
    v11 = [v7 ic_description];
    v12 = 138544130;
    v13 = self;
    v14 = 2114;
    v15 = contentKeySession;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - contentKeySession:%{public}@ contentKeyRequest:%{public}@ didFailWithError:%{public}@", &v12, 0x2Au);
  }
}

- (void)contentKeySession:(id)a3 contentKeyRequestDidSucceed:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    contentKeySession = self->_contentKeySession;
    v8 = [v5 ic_description];
    v9 = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = contentKeySession;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - contentKeySession:%{public}@ contentKeyRequestDidSucceed:%{public}@", &v9, 0x20u);
  }
}

- (void)contentKeySession:(id)a3 didProvideRenewingContentKeyRequest:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v7 = os_signpost_id_make_with_pointer(v6, v5);

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240192;
    LODWORD(v24) = 3;
    _os_signpost_emit_with_name_impl(&dword_1B4491000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ContentKeyRequest", " enableTelemetry=YES type=%{public, signpost.telemetry:number1, name=type}d", buf, 8u);
  }

  v10 = [v5 identifier];
  v11 = [(ICContentKeySession *)self _isPrefetchKey:v10];
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 ic_description];
    *buf = 138543874;
    v24 = self;
    v25 = 2114;
    v26 = v13;
    v27 = 1024;
    LODWORD(v28) = v11;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - handling renewing key request %{public}@. isPrefetchKey=%{BOOL}u", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained contentKeySession:self didStartProcessingKey:v10 isPrefetchKey:v11 isPersistable:objc_msgSend(v5 isRenew:{"canProvidePersistableContentKey"), 1}];
  }

  if ([(ICContentKeySession *)self _shouldRequestPersistentKeyForKeyRequest:v5])
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 ic_description];
      *buf = 138543618;
      v24 = self;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Requesting renewal for persistable content key for %{public}@", buf, 0x16u);
    }

    pendingPersistentKeyRenewalIdentifiers = self->_pendingPersistentKeyRenewalIdentifiers;
    v18 = [v5 identifier];
    [(NSMutableSet *)pendingPersistentKeyRenewalIdentifiers addObject:v18];

    v22 = 0;
    LOBYTE(v18) = [v5 respondByRequestingPersistableContentKeyRequestAndReturnError:&v22];
    v19 = v22;
    if ((v18 & 1) == 0)
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 ic_description];
        *buf = 138543874;
        v24 = self;
        v25 = 2114;
        v26 = v21;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to request persistable content key renewal for '%{public}@'. err=%{public}@", buf, 0x20u);
      }

      [(NSMutableSet *)self->_pendingPersistentKeyRenewalIdentifiers removeObject:v10];
    }
  }

  else
  {
    [(ICContentKeySession *)self _performKeyDeliveryRequestForContentKeyRequest:v5 persistResponse:0 isRenewal:1];
  }
}

- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4
{
  v61[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v7 = os_signpost_id_make_with_pointer(v6, v5);

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240192;
    LODWORD(v57) = 2;
    _os_signpost_emit_with_name_impl(&dword_1B4491000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ContentKeyRequest", " enableTelemetry=YES type=%{public, signpost.telemetry:number1, name=type}d", buf, 8u);
  }

  v11 = [v5 identifier];
  v12 = [(ICContentKeySession *)self _isPrefetchKey:v11];
  pendingPersistentKeyRenewalIdentifiers = self->_pendingPersistentKeyRenewalIdentifiers;
  v14 = [v5 identifier];
  v15 = [(NSMutableSet *)pendingPersistentKeyRenewalIdentifiers containsObject:v14];

  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v5 ic_description];
    *buf = 138544130;
    v57 = self;
    v58 = 2114;
    v59 = v17;
    v60 = 1024;
    LODWORD(v61[0]) = v12;
    WORD2(v61[0]) = 1024;
    *(v61 + 6) = v15;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - handling persistable content key request %{public}@. isPrefetchKey=%{BOOL}u, isRenewal=%{BOOL}u", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained contentKeySession:self didStartProcessingKey:v11 isPrefetchKey:v12 isPersistable:1 isRenew:0];
  }

  v19 = 48;
  if (v12)
  {
    v19 = 112;
  }

  v20 = *(&self->super.isa + v19);
  v52 = v20;
  if (self->_bypassCache)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v24 = v20;
  spid = v7;
  v25 = [v5 identifier];
  v55 = 0;
  v26 = [v24 loadKeyForIdentifier:v25 error:&v55];
  v27 = v55;

  if (v27)
  {
    v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v5 ic_description];
      *buf = 138543874;
      v57 = self;
      v58 = 2114;
      v59 = v29;
      v60 = 2114;
      v61[0] = v27;
      _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to load key from store for key request %{public}@. err=%{public}@", buf, 0x20u);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v50 = [v26 renewalDate];
  v23 = [v26 expirationDate];
  v21 = [v26 keyData];

  if (v15)
  {
    v22 = v50;
LABEL_21:
    v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v5 ic_description];
      *buf = 138543618;
      v57 = self;
      v58 = 2114;
      v59 = v31;
      _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Ignoring cached key for renewal of persistent key request %{public}@", buf, 0x16u);
    }

    v32 = self->_pendingPersistentKeyRenewalIdentifiers;
    v33 = [v5 identifier];
    [(NSMutableSet *)v32 removeObject:v33];
LABEL_24:

LABEL_25:
    [(ICContentKeySession *)self _performKeyDeliveryRequestForContentKeyRequest:v5 persistResponse:1 isRenewal:0];
    goto LABEL_26;
  }

  if (!v21)
  {
    v22 = v50;
    goto LABEL_25;
  }

  v34 = [MEMORY[0x1E695DF00] date];
  v49 = [v50 compare:v34];

  if (v23)
  {
    v35 = [MEMORY[0x1E695DF00] date];
    v36 = [v23 compare:v35];

    if (v36 == -1 && self->_refreshExpiredPersistentKeys)
    {
      v33 = _ICLogCategoryDefault();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v5 ic_description];
        *buf = 138543874;
        v57 = self;
        v58 = 2114;
        v59 = v37;
        v60 = 2114;
        v61[0] = v23;
        _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Discarding expired cached key for request %{public}@. expirationDate=%{public}@", buf, 0x20u);
      }

      v22 = v50;
      goto LABEL_24;
    }
  }

  v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v5 ic_description];
    *buf = 138543874;
    v57 = self;
    v58 = 2114;
    v59 = v39;
    v60 = 2114;
    v61[0] = v50;
    _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Returning cached key for key request %{public}@. renewalDate=%{public}@", buf, 0x20u);
  }

  v40 = [MEMORY[0x1E6987F68] contentKeyResponseWithFairPlayStreamingKeyResponseData:v21];
  [v5 processContentKeyResponse:v40];
  v41 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
  v42 = v41;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 136446210;
    v57 = "FromCache";
    _os_signpost_emit_with_name_impl(&dword_1B4491000, v42, OS_SIGNPOST_INTERVAL_END, spid, "ContentKeyRequest", " enableTelemetry=YES result=%{public, signpost.telemetry:string1, name=result}s", buf, 0xCu);
  }

  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained contentKeySession:self didFinishProcessingKey:v11 withResponse:0 error:0];
  }

  v43 = +[ICEnvironmentMonitor sharedMonitor];
  if ([v43 isRemoteServerLikelyReachable])
  {
    refreshExpiredPersistentKeys = [v43 isCurrentNetworkLinkHighQuality];
    if (!v12 && (refreshExpiredPersistentKeys & 1) != 0)
    {
      refreshExpiredPersistentKeys = self->_refreshExpiredPersistentKeys;
    }

    if ((refreshExpiredPersistentKeys & 1) != 0 && v49 == -1)
    {
      v45 = _ICLogCategoryDefault();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v5 ic_description];
        *buf = 138543874;
        v57 = self;
        v58 = 2114;
        v59 = v46;
        v60 = 2114;
        v61[0] = v50;
        _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - attempting to renew stale persisted key for key request %{public}@. renewalDate=%{public}@", buf, 0x20u);
      }

      v47 = dispatch_time(0, 2000000000);
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__ICContentKeySession_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke;
      block[3] = &unk_1E7BFA078;
      block[4] = self;
      v54 = v5;
      dispatch_after(v47, accessQueue, block);
    }
  }

  [(ICContentKeySession *)self _finishProcessingKeyWithIdentifier:v11];

  v22 = v50;
LABEL_26:
}

- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 identifier];
  v7 = [(ICContentKeySession *)self _isPrefetchKey:v6];
  if ([(ICContentKeySession *)self allowFallbackToStreamingKeys])
  {
    v8 = +[ICDefaults standardDefaults];
    v9 = [v8 shouldForceStreamingOnlyKeysForPlayback];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ICContentKeySession *)self _shouldRequestPersistentKeyForKeyRequest:v5];
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 ic_description];
    *buf = 138544386;
    v25 = self;
    v26 = 2114;
    v27 = v12;
    v28 = 1024;
    *v29 = v7;
    *&v29[4] = 1024;
    *&v29[6] = v9;
    v30 = 1024;
    v31 = v10;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - handling key request %{public}@. isPrefetchKey=%{BOOL}u, shouldForceStreamingOnlyKeysForPlayback=%{BOOL}u, shouldRequestPersistableKey=%{BOOL}u", buf, 0x28u);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 ic_description];
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Requesting persistable content key for %{public}@", buf, 0x16u);
  }

  v23 = 0;
  v15 = [v5 respondByRequestingPersistableContentKeyRequestAndReturnError:&v23];
  WeakRetained = v23;
  if ((v15 & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v5 ic_description];
      *buf = 138543874;
      v25 = self;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      *v29 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to request persistable content key for '%{public}@' - requesting streaming key instead. err=%{public}@", buf, 0x20u);
    }

LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained contentKeySession:self didStartProcessingKey:v6 isPrefetchKey:v7 isPersistable:0 isRenew:0];
    }

    v19 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
    v20 = os_signpost_id_make_with_pointer(v19, v5);

    v21 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 67240192;
      LODWORD(v25) = 1;
      _os_signpost_emit_with_name_impl(&dword_1B4491000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "ContentKeyRequest", " enableTelemetry=YES type=%{public, signpost.telemetry:number1, name=type}d", buf, 8u);
    }

    [(ICContentKeySession *)self _performKeyDeliveryRequestForContentKeyRequest:v5 persistResponse:0 isRenewal:0];
  }
}

- (void)waitForAllKeysToProcessWithTimeout:(double)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Waiting for key requests to complete with timeout %lus", buf, 0x16u);
  }

  v6 = MEMORY[0x1E69E9820];
  while (1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    accessQueue = self->_accessQueue;
    block[0] = v6;
    block[1] = 3221225472;
    block[2] = __58__ICContentKeySession_waitForAllKeysToProcessWithTimeout___block_invoke;
    block[3] = &unk_1E7BFA430;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(accessQueue, block);
    v8 = *(*&buf[8] + 24);
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      *v21 = 138543362;
      v22 = self;
      v14 = "%{public}@ [SKD] - Finished waiting for key requests to complete";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 12;
      goto LABEL_16;
    }

    if (v10)
    {
      v11 = [(NSMutableSet *)self->_pendingKeyIdentifiers count];
      pendingKeyIdentifiers = self->_pendingKeyIdentifiers;
      *v21 = 138543874;
      v22 = self;
      v23 = 2048;
      v24 = v11;
      v25 = 2114;
      v26 = pendingKeyIdentifiers;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Waiting for %lu keys: %{public}@", v21, 0x20u);
    }

    v13 = a3 == 0.0 ? -1 : dispatch_time(0, (a3 * 1000000000.0));
    if (dispatch_semaphore_wait(self->_waitForKeysSemaphore, v13))
    {
      break;
    }

    _Block_object_dispose(buf, 8);
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

  v18 = [(NSMutableSet *)self->_pendingKeyIdentifiers count];
  v19 = self->_pendingKeyIdentifiers;
  *v21 = 138543874;
  v22 = self;
  v23 = 2048;
  v24 = v18;
  v25 = 2114;
  v26 = v19;
  v14 = "%{public}@ [SKD] - Timed out waiting for %lu keys: %{public}@";
  v15 = v9;
  v16 = OS_LOG_TYPE_ERROR;
  v17 = 32;
LABEL_16:
  _os_log_impl(&dword_1B4491000, v15, v16, v14, v21, v17);
LABEL_17:

  _Block_object_dispose(buf, 8);
}

uint64_t __58__ICContentKeySession_waitForAllKeysToProcessWithTimeout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)waitForKeyRenewalsWithCompletionHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_pendingRenewalKeyIdentifiers count];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(NSMutableSet *)self->_pendingRenewalKeyIdentifiers count];
      pendingRenewalKeyIdentifiers = self->_pendingRenewalKeyIdentifiers;
      *buf = 138543874;
      v14 = self;
      v15 = 2048;
      v16 = v8;
      v17 = 2114;
      v18 = pendingRenewalKeyIdentifiers;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Waiting for key renewals to complete for %lu identifiers %{public}@", buf, 0x20u);
    }

    accessQueue = self->_accessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__ICContentKeySession_waitForKeyRenewalsWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7BF9EC8;
    v11[4] = self;
    v12 = v4;
    dispatch_async(accessQueue, v11);
  }

  else
  {
    if (v7)
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - No pending key renewals to wait for", buf, 0xCu);
    }

    v4[2](v4);
  }
}

void __63__ICContentKeySession_waitForKeyRenewalsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 72) count])
  {
    v2 = *(*(a1 + 32) + 88);
    if (v2)
    {
      v9 = MEMORY[0x1B8C781E0](*(a1 + 40));
      [v2 addObject:?];
    }

    else
    {
      v5 = MEMORY[0x1E695DF70];
      v9 = MEMORY[0x1B8C781E0](*(a1 + 40));
      v6 = [v5 arrayWithObject:?];
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = v6;
    }
  }

  else
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Finished waiting for key renewals to complete", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)invalidateKeyWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  keyStore = self->_keyStore;
  if (keyStore)
  {
    v20 = 0;
    v9 = [(ICContentKeyStoreProtocol *)keyStore loadKeyForIdentifier:v6 error:&v20];
    v10 = v20;
    if (v10)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v22 = self;
        v23 = 2114;
        v24 = v6;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to load key to stop with identifier %{public}@. err=%{public}@", buf, 0x20u);
      }

      v7[2](v7, v10);
    }

    v12 = [v9 identifier];
    v13 = [v9 adamID];
    v14 = [v9 accountDSID];
    v15 = [v9 keyData];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__ICContentKeySession_invalidateKeyWithIdentifier_withCompletion___block_invoke;
    v17[3] = &unk_1E7BF80A8;
    v17[4] = self;
    v18 = v9;
    v19 = v7;
    v16 = v9;
    [(ICContentKeySession *)self _invalidateKeyWithIdentifier:v12 forAdamID:v13 offline:1 usingAccountDSID:v14 keyData:v15 withCompletion:v17];
  }
}

void __66__ICContentKeySession_invalidateKeyWithIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) identifier];
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to stop session for key %{public}@. err=%{public}@", &v7, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stopSessionInvalidatingKeys:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__31121;
  v13[4] = __Block_byref_object_dispose__31122;
  v14 = 0;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke;
  v9[3] = &unk_1E7BF7C18;
  v12 = a3;
  v10 = v6;
  v11 = v13;
  v9[4] = self;
  v8 = v6;
  dispatch_sync(accessQueue, v9);

  _Block_object_dispose(v13, 8);
}

void __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v58 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Stopping...", buf, 0xCu);
  }

  *(*(a1 + 32) + 153) = 0;
  group = dispatch_group_create();
  v4 = [*(*(a1 + 32) + 32) identityStore];
  v5 = [*(*(a1 + 32) + 32) identity];
  v55 = 0;
  v37 = [v4 DSIDForUserIdentity:v5 outError:&v55];
  v6 = v55;

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v58 = v8;
      v59 = 2114;
      v60 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to resolve DSID to invalidate keys with. err=%{public}@", buf, 0x16u);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    if (v11)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_78;
      v49[3] = &unk_1E7BF7BC8;
      v50 = group;
      v51 = v9;
      v12 = v37;
      v13 = *(a1 + 32);
      v52 = v12;
      v53 = v13;
      v54 = *(a1 + 48);
      [v11 enumerateKeyEntriesUsingBlock:v49];

      v10 = *(a1 + 32);
    }

    v14 = [*(v10 + 120) allKeys];
    v15 = [v14 mutableCopy];

    [v15 removeObjectsInArray:v9];
    if ([v15 count])
    {
      v35 = v9;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v45 = 0u;
      v34 = v15;
      obj = v15;
      v16 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v46;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = [*(*(a1 + 32) + 136) objectForKey:v20];
            if (v21)
            {
              [*(*(a1 + 32) + 136) removeObjectForKey:v20];
              dispatch_group_enter(group);
              v22 = *(a1 + 32);
              v23 = v22[5];
              v24 = [v21 serverPlaybackContextData];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_81;
              v42[3] = &unk_1E7BF7BA0;
              v42[4] = *(a1 + 32);
              v42[5] = v20;
              v44 = *(a1 + 48);
              v43 = group;
              [v22 _invalidateKeyWithIdentifier:v20 forAdamID:v23 offline:0 usingAccountDSID:v37 keyData:v24 withCompletion:v42];
            }

            else
            {
              v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = *(a1 + 32);
                *buf = 138543618;
                v58 = v26;
                v59 = 2114;
                v60 = v20;
                _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Skipping invalidation for key '%{public}@' because the previous response couldn't be found", buf, 0x16u);
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
        }

        while (v17);
      }

      v9 = v35;
      v15 = v34;
    }
  }

  [*(*(a1 + 32) + 120) removeAllObjects];
  v27 = *(a1 + 32);
  v28 = *(v27 + 144);
  if (v28)
  {
    dispatch_source_cancel(v28);
    v29 = *(a1 + 32);
    v30 = *(v29 + 144);
    *(v29 + 144) = 0;

    v27 = *(a1 + 32);
  }

  v31 = *(v27 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_82;
  block[3] = &unk_1E7BF7BF0;
  block[4] = v27;
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v40 = v32;
  v41 = v33;
  dispatch_group_notify(group, v31, block);
}

void __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v5 = [v3 identifier];
  [v4 addObject:v5];

  v6 = [v3 accountDSID];
  if (![v6 longLongValue])
  {
    v7 = *(a1 + 48);

    v6 = v7;
  }

  v8 = *(a1 + 56);
  v9 = [v3 identifier];
  v10 = [v3 adamID];
  v11 = [v3 keyData];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_2;
  v14[3] = &unk_1E7BF7BA0;
  v12 = *(a1 + 64);
  v14[4] = *(a1 + 56);
  v15 = v3;
  v17 = v12;
  v16 = *(a1 + 32);
  v13 = v3;
  [v8 _invalidateKeyWithIdentifier:v9 forAdamID:v10 offline:1 usingAccountDSID:v6 keyData:v11 withCompletion:v14];
}

void __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_81(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to stop session for key %{public}@. err=%{public}@", &v8, 0x20u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 168));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    os_unfair_lock_unlock((*(a1 + 32) + 168));
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_82(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Session stopped", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __66__ICContentKeySession_stopSessionInvalidatingKeys_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) identifier];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to stop session for key %{public}@. err=%{public}@", &v8, 0x20u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 168));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    os_unfair_lock_unlock((*(a1 + 32) + 168));
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)renewAllKeys
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__ICContentKeySession_renewAllKeys__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __35__ICContentKeySession_renewAllKeys__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 128) allKeys];
    *buf = 138543618;
    v27 = v3;
    v28 = 2114;
    v29 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Issuing renewal for key requests. identifiers = %{public}@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 32) + 128) allValues];
  [*(*(a1 + 32) + 128) removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v13 = [v10 ic_description];
          *buf = 138543618;
          v27 = v12;
          v28 = 2114;
          v29 = v13;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Renewing key request %{public}@", buf, 0x16u);
        }

        v14 = *(*(a1 + 32) + 72);
        if (v14)
        {
          v15 = [v10 identifier];
          [v14 addObject:v15];
        }

        else
        {
          v16 = MEMORY[0x1E695DFA8];
          v15 = [v10 identifier];
          v17 = [v16 setWithObject:v15];
          v18 = *(a1 + 32);
          v19 = *(v18 + 72);
          *(v18 + 72) = v17;
        }

        [*(*(a1 + 32) + 24) renewExpiringResponseDataForContentKeyRequest:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

- (void)resumeAutomaticKeyRenewal
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_automaticKeyRenewalPaused)
  {
    self->_automaticKeyRenewalPaused = 0;
    v3 = [(NSMutableDictionary *)self->_keyRenewalDates count];
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 138543362;
        v9 = self;
        _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Resuming automatic key renewal", buf, 0xCu);
      }

      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__ICContentKeySession_resumeAutomaticKeyRenewal__block_invoke;
      block[3] = &unk_1E7BFA300;
      block[4] = self;
      dispatch_sync(accessQueue, block);
    }

    else
    {
      if (v5)
      {
        *buf = 138543362;
        v9 = self;
        _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Automatic key renewal will resume when the first key has been requested.", buf, 0xCu);
      }
    }
  }
}

- (void)pauseAutomaticKeyRenewal
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_automaticKeyRenewalPaused)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Pausing automatic key renewal", buf, 0xCu);
    }

    self->_automaticKeyRenewalPaused = 1;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__ICContentKeySession_pauseAutomaticKeyRenewal__block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = self;
    dispatch_sync(accessQueue, block);
  }
}

void __47__ICContentKeySession_pauseAutomaticKeyRenewal__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 144);
    *(v3 + 144) = 0;
  }
}

- (void)processKeyWithIdentifier:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ICContentKeySession_processKeyWithIdentifier___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)addAsset:(id)a3 shouldPreloadKeys:(BOOL)a4 waitForKeyIdentifiers:(BOOL)a5
{
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Adding asset %{public}@. shouldPreloadKeys=%{BOOL}u", buf, 0x1Cu);
  }

  [(AVContentKeySession *)self->_contentKeySession addContentKeyRecipient:v8];
  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke;
    block[3] = &unk_1E7BF9CB0;
    v13 = a5;
    block[4] = self;
    v12 = v8;
    dispatch_async(accessQueue, block);
  }
}

void __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = dispatch_semaphore_create(0);
  }

  else
  {
    v2 = 0;
  }

  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke_2;
  v8[3] = &unk_1E7BF7B78;
  objc_copyWeak(&v11, &location);
  v9 = *(a1 + 40);
  v12 = *(a1 + 48);
  v4 = v2;
  v10 = v4;
  [v3 loadValuesAsynchronouslyForKeys:&unk_1F2C923C8 completionHandler:v8];
  if (*(a1 + 48) == 1)
  {
    v5 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v4, v5))
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Timed out waiting for the list of content keys on the asset to load. this may delay key fetch", buf, 0xCu);
      }
    }
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke_3;
    v6[3] = &unk_1E7BFA078;
    v7 = *(a1 + 32);
    v3 = WeakRetained;
    v8 = v3;
    v4 = MEMORY[0x1B8C781E0](v6);
    v5 = v4;
    if (*(a1 + 56) == 1)
    {
      v4[2](v4);
      dispatch_semaphore_signal(*(a1 + 40));
    }

    else
    {
      dispatch_async(v3[7], v4);
    }
  }
}

void __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke_3(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
  v3 = [*(a1 + 32) contentKeySpecifiersEligibleForPreloading];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v68;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v68 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v67 + 1) + 8 * i) identifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) metadata];
  v10 = [v9 msv_firstWhere:&__block_literal_global_68_31417];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 value];
    if (v12)
    {
      if (_NSIsNSString())
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
        if (v13)
        {
          v66 = 0;
          v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:&v66];
          v15 = v66;
          if (v14)
          {
            if (_NSIsNSArray())
            {
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v54 = v14;
              obj = v14;
              v16 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
              if (v16)
              {
                v17 = v16;
                v49 = v15;
                v50 = v13;
                v51 = v12;
                v52 = v11;
                v53 = v9;
                v18 = *v63;
                v19 = obj;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v63 != v18)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v21 = *(*(&v62 + 1) + 8 * j);
                    if (_NSIsNSDictionary())
                    {
                      v22 = [v21 ic_stringValueForKey:@"uri"];
                      if (v22)
                      {
                        v23 = v22;
                        [v2 addObject:v22];
                      }

                      else
                      {
                        v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          v28 = *(a1 + 40);
                          *buf = 138543618;
                          v73 = v28;
                          v74 = 2114;
                          v75 = v21;
                          _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to find key URI in key info dictionary %{public}@", buf, 0x16u);
                        }

                        v23 = 0;
                      }
                    }

                    else
                    {
                      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                      {
                        v24 = *(a1 + 40);
                        v25 = objc_opt_class();
                        *buf = 138543874;
                        v73 = v24;
                        v19 = obj;
                        v74 = 2114;
                        v75 = v25;
                        v76 = 2114;
                        v77 = v21;
                        v26 = v25;
                        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Got unexpected key info object type %{public}@. info=%{public}@", buf, 0x20u);
                      }
                    }
                  }

                  v17 = [v19 countByEnumeratingWithState:&v62 objects:v80 count:16];
                }

                while (v17);
                v29 = v19;
                v11 = v52;
                v9 = v53;
                v13 = v50;
                v12 = v51;
                v15 = v49;
                v14 = v54;
              }

              else
              {
                v29 = obj;
              }
            }

            else
            {
              v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                obja = *(a1 + 40);
                v37 = objc_opt_class();
                *buf = 138543874;
                v73 = obja;
                v74 = 2114;
                v75 = v37;
                v76 = 2114;
                v77 = v14;
                objb = v37;
                _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Key list is not an array! class=%{public}@. keyList=%{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v36 = *(a1 + 40);
              *buf = 138543618;
              v73 = v36;
              v74 = 2114;
              v75 = v15;
              _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to create keyInfo list from data. err=%{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a1 + 40);
            *buf = 138543618;
            v73 = v35;
            v74 = 2114;
            v75 = v12;
            _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ [SKD] - Failed to create key data from metadata string '%{public}@'", buf, 0x16u);
          }
        }

        goto LABEL_44;
      }

      v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 40);
        *buf = 138543618;
        v73 = v34;
        v74 = 2114;
        v75 = v12;
        v31 = "%{public}@ [SKD] - Got unexpected value type for key metadata item - ignoring. value=%{public}@";
        v32 = v13;
        v33 = 22;
        goto LABEL_34;
      }
    }

    else
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        *buf = 138543362;
        v73 = v30;
        v31 = "%{public}@ [SKD] - Got nil value for key metadata item - ignoring";
        v32 = v13;
        v33 = 12;
LABEL_34:
        _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      }
    }

LABEL_44:
  }

  v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(a1 + 40);
    v40 = [v2 count];
    v41 = *(a1 + 32);
    *buf = 138544130;
    v73 = v39;
    v74 = 2048;
    v75 = v40;
    v76 = 2114;
    v77 = v41;
    v78 = 2114;
    v79 = v2;
    _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Found %lu keys to preload for asset %{public}@: %{public}@", buf, 0x2Au);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = v2;
  v43 = [v42 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v59;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v58 + 1) + 8 * k);
        v48 = [*(a1 + 40) _isPrefetchKey:{v47, v49, v50, v51, v52, v53}];
        if ((!MSVDeviceIsAudioAccessory() || v48) && ([*(*(a1 + 40) + 64) containsObject:v47] & 1) == 0)
        {
          [*(a1 + 40) _processKeyWithIdentifier:v47];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v44);
  }
}

uint64_t __72__ICContentKeySession_addAsset_shouldPreloadKeys_waitForKeyIdentifiers___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = v2;
  if (v2 == @"com.apple.hls.keys")
  {
    v4 = 1;
  }

  else
  {
    v4 = [(__CFString *)v2 isEqual:@"com.apple.hls.keys"];
  }

  return v4;
}

- (ICContentKeySession)initWithRequestContext:(id)a3 keyStore:(id)a4 delegate:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = ICContentKeySession;
  v11 = [(ICContentKeySession *)&v39 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.iTunesCloud.ICContentKeySession.accessQueue", 0);
    accessQueue = v11->_accessQueue;
    v11->_accessQueue = v12;

    v14 = dispatch_semaphore_create(0);
    waitForKeysSemaphore = v11->_waitForKeysSemaphore;
    v11->_waitForKeysSemaphore = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    pendingKeyIdentifiers = v11->_pendingKeyIdentifiers;
    v11->_pendingKeyIdentifiers = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    pendingPersistentKeyRenewalIdentifiers = v11->_pendingPersistentKeyRenewalIdentifiers;
    v11->_pendingPersistentKeyRenewalIdentifiers = v18;

    v20 = [v8 copy];
    requestContext = v11->_requestContext;
    v11->_requestContext = v20;

    objc_storeStrong(&v11->_keyStore, a4);
    v22 = [MEMORY[0x1E695DF90] dictionary];
    keyRenewalDates = v11->_keyRenewalDates;
    v11->_keyRenewalDates = v22;

    v24 = [MEMORY[0x1E695DF90] dictionary];
    completedKeyRequests = v11->_completedKeyRequests;
    v11->_completedKeyRequests = v24;

    v26 = [MEMORY[0x1E695DF90] dictionary];
    keyResponses = v11->_keyResponses;
    v11->_keyResponses = v26;

    objc_storeWeak(&v11->_delegate, v10);
    v11->_active = 1;
    v11->_isStoreKeyServer = 1;
    v11->_lock._os_unfair_lock_opaque = 0;
    v28 = +[ICContentKeySession enhancedAudioSharedContentKeyPath];
    v29 = [MEMORY[0x1E696AC08] defaultManager];
    [v29 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:0];

    v30 = [[ICFileContentKeyStore alloc] initWithPath:v28];
    prefetchedContentKeyStore = v11->_prefetchedContentKeyStore;
    v11->_prefetchedContentKeyStore = v30;

    v32 = [[ICContentKeySessionPrefetchKeyConfiguration alloc] initWithRequestContext:v8];
    prefetchKeyConfiguration = v11->_prefetchKeyConfiguration;
    v11->_prefetchKeyConfiguration = v32;

    v34 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
    contentKeySession = v11->_contentKeySession;
    v11->_contentKeySession = v34;

    [(AVContentKeySession *)v11->_contentKeySession setDelegate:v11 queue:v11->_accessQueue];
    v36 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v11->_contentKeySession;
      *buf = 138543618;
      v41 = v11;
      v42 = 2114;
      v43 = v37;
      _os_log_impl(&dword_1B4491000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Created AVContentKeySession %{public}@", buf, 0x16u);
    }
  }

  return v11;
}

- (ICContentKeySession)init
{
  v3 = [ICStoreRequestContext alloc];
  v4 = +[ICUserIdentity activeAccount];
  v5 = [(ICStoreRequestContext *)v3 initWithIdentity:v4];

  v6 = [(ICContentKeySession *)self initWithRequestContext:v5];
  return v6;
}

+ (id)copyKeysToPendingInvalidationStoreFromPath:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__31121;
  v22 = __Block_byref_object_dispose__31122;
  v23 = 0;
  v4 = +[ICContentKeySession pendingInvalidationKeyStorePath];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v5 fileExistsAtPath:v4] & 1) == 0)
  {
    v17 = 0;
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v17];
    v6 = v17;
    if (v6)
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 msv_description];
        *buf = 138543362;
        v25 = v8;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ICContentKeySession Failed to create key purgatory directory error=%{public}@", buf, 0xCu);
      }
    }
  }

  v9 = [[ICFileContentKeyStore alloc] initWithPath:v4];
  v10 = [[ICFileContentKeyStore alloc] initWithPath:v3];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICContentKeySession_copyKeysToPendingInvalidationStoreFromPath___block_invoke;
  v14[3] = &unk_1E7BF7C40;
  v11 = v9;
  v15 = v11;
  v16 = &v18;
  [(ICFileContentKeyStore *)v10 enumerateKeyEntriesUsingBlock:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  return v12;
}

void __66__ICContentKeySession_copyKeysToPendingInvalidationStoreFromPath___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) saveKeyEntry:v3];
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 identifier];
      v7 = [v4 msv_description];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "ICContentKeySession Moving key '%{public}@' to invalidation directory error=%{public}@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }
}

void __56__ICContentKeySession_enhancedAudioSharedContentKeyPath__block_invoke()
{
  v2 = MSVMobileHomeDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Media/EnhancedAudioSharedKeys/"];
  v1 = enhancedAudioSharedContentKeyPath_path;
  enhancedAudioSharedContentKeyPath_path = v0;
}

@end