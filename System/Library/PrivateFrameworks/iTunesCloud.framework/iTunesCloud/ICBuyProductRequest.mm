@interface ICBuyProductRequest
- (ICBuyProductRequest)initWithRequestContext:(id)a3 buyParameters:(id)a4 includeKeybagSyncData:(BOOL)a5;
- (ICBuyProductRequest)initWithRequestContext:(id)a3 buyParametersString:(id)a4 includeKeybagSyncData:(BOOL)a5;
- (void)cancel;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICBuyProductRequest

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ICBuyProductRequest;
  [(ICBuyProductRequest *)&v4 cancel];
  v3 = +[ICURLSessionManager highPrioritySession];
  [v3 cancelRequest:self->_storeURLRequest];
}

- (void)execute
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buyParameters = self->_buyParameters;
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = buyParameters;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing BuyProdcut request with params %{public}@", buf, 0x16u);
  }

  v5 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ICBuyProductRequest_execute__block_invoke;
  v7[3] = &unk_1E7BFA500;
  v7[4] = self;
  [v5 getBagForRequestContext:requestContext withCompletionHandler:v7];
}

void __30__ICBuyProductRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load url bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v9 = [v5 urlForBagKey:@"buyProduct"];
    if (v9)
    {
      v10 = [*(*(a1 + 32) + 304) identityStore];
      v11 = [*(*(a1 + 32) + 304) identity];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __30__ICBuyProductRequest_execute__block_invoke_4;
      v16[3] = &unk_1E7BF7930;
      v16[4] = *(a1 + 32);
      v17 = v9;
      v18 = v5;
      [v10 getPropertiesForUserIdentity:v11 completionHandler:v16];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v20 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing buyProduct url in bag - skipping", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v14 finishWithError:v15];
    }
  }
}

void __30__ICBuyProductRequest_execute__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v44 = v8;
      v45 = 2114;
      v46 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load identity properties. err=%{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
    [v9 finishWithError:v10];
    goto LABEL_30;
  }

  v10 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 40)];
  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v11 = +[ICDeviceInfo currentDeviceInfo];
  if ([v11 isWatch])
  {
    v12 = +[ICEnvironmentMonitor sharedMonitor];
    v13 = [v12 networkType];

    if (v13 == 500)
    {
      [v10 setValue:@"WiFi" forHTTPHeaderField:@"X-Apple-Connection-Type"];
    }
  }

  else
  {
  }

  v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(*(a1 + 32) + 320)];
  v15 = [*(*(a1 + 32) + 304) deviceInfo];
  v16 = [v15 deviceGUID];

  if (v16)
  {
    v17 = [*(*(a1 + 32) + 304) deviceInfo];
    v18 = [v17 deviceGUID];
    [v14 setObject:v18 forKey:@"guid"];
  }

  v19 = [*(*(a1 + 32) + 304) deviceInfo];
  v20 = [v19 isWatch];

  if (v20)
  {
    v21 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v22 = [v21 pairedDeviceMediaGUID];

    if (v22)
    {
      [v14 setObject:v22 forKey:@"companion-guid"];
    }
  }

  if (*(*(a1 + 32) + 328) == 1 && [*(a1 + 48) canPostKeybagSyncData])
  {
    v23 = [v5 DSID];
    v41 = 0;
    v42 = 0;
    v24 = ICFairPlayCopyKeyBagSyncData([v23 unsignedLongLongValue], 1, &v42, &v41);
    v25 = v42;
    v26 = v41;

    if (v24)
    {
      if (!v25)
      {
LABEL_24:

        goto LABEL_25;
      }

      v27 = [v25 base64EncodedStringWithOptions:0];
      if (v27)
      {
        [v14 setObject:v27 forKey:@"kbsync"];
      }
    }

    else
    {
      v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138543618;
        v44 = v28;
        v45 = 2114;
        v46 = v26;
        _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to copy keybag sync data. err=%{public}@", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

LABEL_25:
  v29 = +[ICDeviceInfo currentDeviceInfo];
  v30 = [v29 isWatch];

  if (v30)
  {
    [v14 setObject:@"true" forKey:@"wasWarnedOverLimitBuyOnCellular"];
  }

  v31 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:100 options:0 error:0];
  if (v31)
  {
    [v10 setHTTPBody:v31];
  }

  v32 = [[ICStoreURLRequest alloc] initWithURLRequest:v10 requestContext:*(*(a1 + 32) + 304)];
  v33 = *(a1 + 32);
  v34 = *(v33 + 312);
  *(v33 + 312) = v32;

  v35 = [*(a1 + 32) progress];
  v36 = [*(*(a1 + 32) + 312) progress];
  [v35 addChild:v36 withPendingUnitCount:100];

  v37 = +[ICURLSessionManager highPrioritySession];
  v38 = *(a1 + 32);
  v39 = *(v38 + 312);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __30__ICBuyProductRequest_execute__block_invoke_32;
  v40[3] = &unk_1E7BFA4D8;
  v40[4] = v38;
  [v37 enqueueDataRequest:v39 withCompletionHandler:v40];

LABEL_30:
}

void __30__ICBuyProductRequest_execute__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v5;
      v8 = "%{public}@ buyProduct request failed. err=%{public}@";
LABEL_6:
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, v8, &v14, 0x16u);
    }
  }

  else
  {
    v9 = [a2 parsedBody];
    v10 = *(a1 + 32);
    v11 = *(v10 + 336);
    *(v10 + 336) = v9;

    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 336);
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      v8 = "%{public}@ buyProduct request returned response %{public}@";
      goto LABEL_6;
    }
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:25];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICBuyProductRequest_performRequestWithResponseHandler___block_invoke;
  v7[3] = &unk_1E7BFA490;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ICRequestOperation *)self performRequestOnOperationQueue:v5 withCompletionHandler:v7];
}

- (ICBuyProductRequest)initWithRequestContext:(id)a3 buyParametersString:(id)a4 includeKeybagSyncData:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E695DFF8];
  v9 = a3;
  v10 = [v8 ic_queryParametersDictionaryFromString:a4];
  v11 = [(ICBuyProductRequest *)self initWithRequestContext:v9 buyParameters:v10 includeKeybagSyncData:v5];

  return v11;
}

- (ICBuyProductRequest)initWithRequestContext:(id)a3 buyParameters:(id)a4 includeKeybagSyncData:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(ICRequestOperation *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContext, a3);
    objc_storeStrong(&v12->_buyParameters, a4);
    v12->_includeKeybagSyncData = a5;
  }

  return v12;
}

@end