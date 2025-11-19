@interface ICUserCredentialProvider
+ (ICUserCredentialProvider)sharedProvider;
- (ICUserCredentialProvider)init;
- (void)_handleCredentialRequestIdentityPropertiesForSession:(id)a3;
- (void)_handleDelegationAccountUUIDsForSession:(id)a3;
- (void)_handleIdentityProperties:(id)a3 forIdentity:(id)a4 loadingError:(id)a5 credentialRequest:(id)a6 session:(id)a7;
- (void)_handlePendingDelegationRequestsForSession:(id)a3;
- (void)_handleRequestIndependentPropertiesForSession:(id)a3;
- (void)performCredentialRequest:(id)a3 withResponseHandler:(id)a4;
- (void)performCredentialRequests:(id)a3 withResponseHandler:(id)a4;
@end

@implementation ICUserCredentialProvider

+ (ICUserCredentialProvider)sharedProvider
{
  if (sharedProvider_sOnceToken_40447 != -1)
  {
    dispatch_once(&sharedProvider_sOnceToken_40447, &__block_literal_global_40448);
  }

  v3 = sharedProvider_sSharedProvider_40449;

  return v3;
}

- (void)performCredentialRequests:(id)a3 withResponseHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  if (![v8 count])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ICUserCredentialProvider.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"[credentialRequests count] > 0"}];
  }

  v9 = [[_ICUserCredentialProviderRequestSession alloc] initWithCredentialRequests:v8 responseHandler:v7];

  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Created new credentials provider session %{public}@", buf, 0x16u);
  }

  [(ICUserCredentialProvider *)self _handleRequestIndependentPropertiesForSession:v9];
}

- (void)_handleCredentialRequestIdentityPropertiesForSession:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 credentialRequests];
  v6 = [v5 mutableCopy];
  [v4 setPendingPropertyLoadCredentialRequests:v6];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v22 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v22)
  {
    v8 = *v25;
    *&v7 = 138543874;
    v20 = v7;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v10;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Loading identity properties for request %{public}@", buf, 0x16u);
        }

        v12 = [v10 identity];
        v13 = [v10 identityStore];
        v23 = 0;
        v14 = [v13 getPropertiesForUserIdentity:v12 error:&v23];
        v15 = v23;

        if (v15)
        {
          v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [v15 msv_description];
            v17 = v8;
            v19 = v18 = v4;
            *buf = v20;
            v29 = self;
            v30 = 2114;
            v31 = v10;
            v32 = 2114;
            v33 = v19;
            _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load identity properties for request: %{public}@ error=%{public}@", buf, 0x20u);

            v4 = v18;
            v8 = v17;
          }
        }

        [(ICUserCredentialProvider *)self _handleIdentityProperties:v14 forIdentity:v12 loadingError:v15 credentialRequest:v10 session:v4, v20];
      }

      v22 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v22);
  }
}

- (void)_handleIdentityProperties:(id)a3 forIdentity:(id)a4 loadingError:(id)a5 credentialRequest:(id)a6 session:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = v12;
    v18 = [v17 DSID];
    if (v18)
    {
      v19 = [ICUserIdentity specificAccountWithDSID:v18];
    }

    else
    {
      v21 = [v17 carrierBundleDeviceIdentifier];
      if (v21)
      {
        v19 = [ICUserIdentity carrierBundleWithDeviceIdentifier:v21];
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = [v19 identityAllowingDelegation:{objc_msgSend(v13, "allowsDelegation")}];
  }

  else
  {
    v20 = 0;
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__ICUserCredentialProvider__handleIdentityProperties_forIdentity_loadingError_credentialRequest_session___block_invoke;
  block[3] = &unk_1E7BFA2B8;
  v30 = v16;
  v31 = v15;
  v32 = v12;
  v33 = self;
  v34 = v14;
  v35 = v13;
  v36 = v20;
  v23 = v20;
  v24 = v13;
  v25 = v14;
  v26 = v12;
  v27 = v15;
  v28 = v16;
  dispatch_barrier_async(accessQueue, block);
}

void __105__ICUserCredentialProvider__handleIdentityProperties_forIdentity_loadingError_credentialRequest_session___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pendingPropertyLoadCredentialRequests];
  [v2 removeObject:*(a1 + 40)];
  v3 = [*(a1 + 32) delegationCredentialRequestToSpecificUserIdentity];
  if ([*(a1 + 48) isDelegated])
  {
    v4 = [*(a1 + 48) delegateToken];
    v5 = v4;
    if (v4 && ([v4 isExpired] & 1) == 0 && objc_msgSend(v5, "type") == 1)
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 72);
        *buf = 138543874;
        v38 = v7;
        v39 = 2114;
        v40 = v8;
        v41 = 2114;
        v42 = v5;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Using existing delegation token for identity %{public}@: %{public}@", buf, 0x20u);
      }

      v9 = objc_alloc_init(ICUserCredentialResponse);
      [(ICUserCredentialResponse *)v9 setIdentityProperties:*(a1 + 48)];
      v10 = [*(a1 + 32) activeICloudAccountProperties];
      [(ICUserCredentialResponse *)v9 setICloudIdentityProperties:v10];

      v11 = [*(a1 + 32) pendingResponseCredentialRequests];
      [v11 removeObject:*(a1 + 40)];

      v12 = [*(a1 + 32) hasPendingResponses] ^ 1;
      v13 = [*(a1 + 32) responseHandler];
      v14 = *(*(a1 + 56) + 16);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __105__ICUserCredentialProvider__handleIdentityProperties_forIdentity_loadingError_credentialRequest_session___block_invoke_20;
      v25[3] = &unk_1E7BFA240;
      v29 = v13;
      v26 = *(a1 + 40);
      v27 = v9;
      v28 = *(a1 + 64);
      v30 = v12;
      v15 = v9;
      v16 = v13;
      dispatch_async(v14, v25);
    }

    else
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 56);
        v24 = *(a1 + 72);
        *buf = 138543618;
        v38 = v23;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching new delegation token for identity %{public}@", buf, 0x16u);
      }

      if (!v3)
      {
        v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        [*(a1 + 32) setDelegationCredentialRequestToSpecificUserIdentity:v3];
      }

      [v3 setObject:*(a1 + 80) forKey:*(a1 + 40)];
      v16 = [*(a1 + 32) delegationCredentialRequestToIdentityProperties];
      if (!v16)
      {
        v16 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        [*(a1 + 32) setDelegationCredentialRequestToIdentityProperties:v16];
      }

      [(ICUserCredentialResponse *)v16 setObject:*(a1 + 48) forKey:*(a1 + 40)];
    }
  }

  else
  {
    v17 = objc_alloc_init(ICUserCredentialResponse);
    [(ICUserCredentialResponse *)v17 setIdentityProperties:*(a1 + 48)];
    v18 = [*(a1 + 32) activeICloudAccountProperties];
    [(ICUserCredentialResponse *)v17 setICloudIdentityProperties:v18];

    v19 = [*(a1 + 32) pendingResponseCredentialRequests];
    [v19 removeObject:*(a1 + 40)];

    LOBYTE(v19) = [*(a1 + 32) hasPendingResponses] ^ 1;
    v20 = [*(a1 + 32) responseHandler];
    v21 = *(*(a1 + 56) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__ICUserCredentialProvider__handleIdentityProperties_forIdentity_loadingError_credentialRequest_session___block_invoke_2;
    block[3] = &unk_1E7BFA240;
    v35 = v20;
    v32 = *(a1 + 40);
    v33 = v17;
    v34 = *(a1 + 64);
    v36 = v19;
    v16 = v17;
    v5 = v20;
    dispatch_async(v21, block);
  }

  if (![v2 count] && objc_msgSend(v3, "count"))
  {
    [*(a1 + 56) _handleDelegationAccountUUIDsForSession:*(a1 + 32)];
  }
}

- (void)_handlePendingDelegationRequestsForSession:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = self;
    v43 = 2114;
    v44 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling pending delegation requests for session %{public}@", buf, 0x16u);
  }

  v30 = [v4 delegationCredentialRequestToIdentityProperties];
  v31 = v4;
  v6 = [v4 delegationCredentialRequestToSpecificUserIdentity];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v37;
    v13 = 30.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v8 objectForKey:v15];
        if (v16)
        {
          [v7 addObject:v16];
        }

        if (!v11)
        {
          v17 = [ICStoreRequestContext alloc];
          v18 = [v15 clientInfo];
          v11 = [(ICRequestContext *)v17 initWithClientInfo:v18];
        }

        [v15 timeoutInterval];
        if (v13 >= v19)
        {
          v13 = v19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v13 = 30.0;
  }

  v20 = [ICDelegationConsumerServiceRequest alloc];
  v21 = [v31 delegationUserIdentityToUUIDs];
  v22 = [v21 copy];
  v23 = [(ICDelegationConsumerServiceRequest *)v20 initWithUserIdentityDelegationAccountUUIDs:v22 requestContext:v11 timeoutInterval:v13];

  delegationConsumerService = self->_delegationConsumerService;
  if (!delegationConsumerService)
  {
    v25 = objc_alloc_init(ICDelegationConsumerService);
    v26 = self->_delegationConsumerService;
    self->_delegationConsumerService = v25;

    delegationConsumerService = self->_delegationConsumerService;
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke;
  v32[3] = &unk_1E7BFA290;
  v32[4] = self;
  v33 = v31;
  v34 = v8;
  v35 = v30;
  v27 = v30;
  v28 = v8;
  v29 = v31;
  [(ICDelegationConsumerService *)delegationConsumerService performRequest:v23 withResponseHandler:v32];
}

void __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = [v14 msv_description];
      *buf = 138544386;
      v46 = v17;
      v47 = 2114;
      v48 = v11;
      v49 = 1024;
      v50 = a6;
      v51 = 2114;
      v52 = v12;
      v53 = 2114;
      v54 = v18;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Finished delegation request for identity: %{public}@. isLastResponse=%{BOOL}u. delegateToken=%{public}@ error=%{public}@", buf, 0x30u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138544130;
    v46 = v19;
    v47 = 2114;
    v48 = v11;
    v49 = 1024;
    v50 = a6;
    v51 = 2114;
    v52 = v12;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished delegation request for identity: %{public}@. isLastResponse=%{BOOL}u. delegateToken=%{public}@", buf, 0x26u);
  }

  if (v12 && [v12 type] == 1)
  {
    v20 = 1;
LABEL_10:
    v22 = [*(a1 + 40) identityStore];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke_16;
    v41[3] = &unk_1E7BFA218;
    v44 = v20;
    v42 = v12;
    v43 = v13;
    [v22 updatePropertiesForUserIdentity:v11 usingBlock:v41];

    v21 = v20;
    goto LABEL_11;
  }

  v20 = 0;
  v21 = 0;
  if ([v13 length])
  {
    goto LABEL_10;
  }

LABEL_11:
  v23 = *(*(a1 + 32) + 8);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke_2;
  v30[3] = &unk_1E7BFA268;
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = v11;
  v39 = a6;
  v24 = *(a1 + 56);
  v40 = v21;
  v34 = v24;
  v35 = v12;
  v25 = *(a1 + 32);
  v36 = v13;
  v37 = v25;
  v38 = v14;
  v26 = v14;
  v27 = v13;
  v28 = v12;
  v29 = v11;
  dispatch_barrier_async(v23, v30);
}

uint64_t __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke_16(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 48) == 1)
  {
    [v6 setDelegateToken:*(a1 + 32)];
  }

  v3 = [*(a1 + 40) length];
  v4 = v6;
  if (v3)
  {
    v3 = [v6 setStorefrontIdentifier:*(a1 + 40)];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) pendingResponseCredentialRequests];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v30 = 0u;
  obj = [v20 copy];
  v2 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v21 = *v28;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [*(a1 + 40) objectForKey:v5];
        v7 = *(a1 + 48);
        v8 = [v5 identityStore];
        if ([v6 isEqualToIdentity:v7 inStore:v8])
        {
        }

        else
        {
          v9 = *(a1 + 96);

          if ((v9 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v10 = objc_alloc_init(ICUserCredentialResponse);
        v11 = [*(a1 + 56) objectForKey:v5];
        v12 = [v11 mutableCopy];

        if (*(a1 + 97) == 1)
        {
          [v12 setDelegateToken:*(a1 + 64)];
        }

        if (*(a1 + 72))
        {
          [v12 setStorefrontIdentifier:?];
        }

        [(ICUserCredentialResponse *)v10 setIdentityProperties:v12];
        v13 = [*(a1 + 32) activeICloudAccountProperties];
        [(ICUserCredentialResponse *)v10 setICloudIdentityProperties:v13];

        [v20 removeObject:v5];
        v14 = [*(a1 + 32) hasPendingResponses] ^ 1;
        v15 = [*(a1 + 32) responseHandler];
        v16 = *(*(a1 + 80) + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__ICUserCredentialProvider__handlePendingDelegationRequestsForSession___block_invoke_3;
        block[3] = &unk_1E7BFA240;
        v25 = v15;
        block[4] = v5;
        v23 = v10;
        v24 = *(a1 + 88);
        v26 = v14;
        v17 = v10;
        v18 = v15;
        dispatch_async(v16, block);

LABEL_14:
      }

      v3 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v3);
  }
}

- (void)_handleDelegationAccountUUIDsForSession:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = self;
    v45 = 2114;
    v46 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching delegation UUIDs for session %{public}@", buf, 0x16u);
  }

  v5 = [v3 maximumQualityOfService];
  v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  qos_class = v5;
  [v6 setQualityOfService:v5];
  [v6 setMaxConcurrentOperationCount:3];
  [v6 setName:@"com.apple.iTunesCloud.ICUserCredentialProvider.delegationAccountUUIDOperationQueue"];
  v7 = dispatch_group_create();
  v25 = [v3 identityStore];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v3;
  v9 = [v3 delegationCredentialRequestToSpecificUserIdentity];
  v10 = [v9 objectEnumerator];

  v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v16 = [ICAsyncBlockOperation alloc];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke;
        v32[3] = &unk_1E7BFA1C8;
        v33 = v25;
        v34 = v15;
        v35 = self;
        v36 = v8;
        v37 = v7;
        v17 = [(ICAsyncBlockOperation *)v16 initWithStartHandler:v32];
        [v6 addOperation:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  v18 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v19 = dispatch_queue_create("com.apple.iTunesCloud.ICUserCredentialProvider.delegationAccountUUIDSerialQueue", v18);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_4;
  block[3] = &unk_1E7BFA1F0;
  v28 = v6;
  v29 = self;
  v30 = v24;
  v31 = v8;
  v20 = v8;
  v21 = v24;
  v22 = v6;
  dispatch_group_notify(v7, v19, block);
}

void __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_2;
  v12[3] = &unk_1E7BFA1A0;
  v11 = *(a1 + 48);
  v6 = *(&v11 + 1);
  v10 = *(a1 + 40);
  v7 = *(a1 + 64);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v15 = v3;
  v9 = v3;
  [v4 getDelegationUUIDsForUserIdentity:v5 completionHandler:v12];
}

void __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_5;
  block[3] = &unk_1E7BFA178;
  block[4] = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v5 = v3;
  dispatch_barrier_async(v4, block);
}

uint64_t __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_5(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished loading delegation UUIDs for session %{public}@: %{public}@", &v7, 0x20u);
  }

  [*(a1 + 40) setDelegationUserIdentityToUUIDs:*(a1 + 48)];
  return [*(a1 + 32) _handlePendingDelegationRequestsForSession:*(a1 + 40)];
}

void __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICUserCredentialProvider__handleDelegationAccountUUIDsForSession___block_invoke_3;
    block[3] = &unk_1E7BFA178;
    v11 = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    dispatch_barrier_async(v7, block);
  }

  dispatch_group_leave(*(a1 + 56));
  [*(a1 + 64) finishWithError:v6];
}

- (void)_handleRequestIndependentPropertiesForSession:(id)a3
{
  v4 = a3;
  v5 = [v4 maximumQualityOfService];
  v6 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:v5];
  v7 = [v4 identityStore];
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__ICUserCredentialProvider__handleRequestIndependentPropertiesForSession___block_invoke;
  v12[3] = &unk_1E7BFA150;
  v13 = v7;
  v14 = v4;
  v15 = self;
  v9 = v4;
  v10 = v7;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [v6 addOperation:v11];
}

void __74__ICUserCredentialProvider__handleRequestIndependentPropertiesForSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 getPropertiesForActiveICloudAccountReturningError:0];
  [*(a1 + 40) setActiveICloudAccountProperties:v5];
  [*(a1 + 48) _handleCredentialRequestIdentityPropertiesForSession:*(a1 + 40)];
  [v4 finish];
}

- (void)performCredentialRequest:(id)a3 withResponseHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13[0] = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__ICUserCredentialProvider_performCredentialRequest_withResponseHandler___block_invoke;
  v11[3] = &unk_1E7BFA128;
  v12 = v6;
  v10 = v6;
  [(ICUserCredentialProvider *)self performCredentialRequests:v9 withResponseHandler:v11];
}

uint64_t __73__ICUserCredentialProvider_performCredentialRequest_withResponseHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (ICUserCredentialProvider)init
{
  v8.receiver = self;
  v8.super_class = ICUserCredentialProvider;
  v2 = [(ICUserCredentialProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICUserCredentialProvider.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICUserCredentialProvider.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;
  }

  return v2;
}

uint64_t __42__ICUserCredentialProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(ICUserCredentialProvider);
  v1 = sharedProvider_sSharedProvider_40449;
  sharedProvider_sSharedProvider_40449 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end