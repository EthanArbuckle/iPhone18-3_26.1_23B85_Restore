@interface ICMediaRedownloadRequest
- (ICMediaRedownloadRequest)init;
- (ICMediaRedownloadRequest)initWithRequestContext:(id)context redownloadParameters:(id)parameters;
- (ICMediaRedownloadRequest)initWithRequestContext:(id)context redownloadParametersString:(id)string;
- (void)_executeWithActiveICloudAccountProperties:(id)properties;
- (void)cancel;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICMediaRedownloadRequest

- (void)_executeWithActiveICloudAccountProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  qualityOfService = [(ICMediaRedownloadRequest *)self qualityOfService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke;
  v9[3] = &unk_1E7BF7AF8;
  v9[4] = self;
  v10 = propertiesCopy;
  v8 = propertiesCopy;
  [v5 getBagForRequestContext:requestContext qualityOfService:qualityOfService forceRefetch:0 withCompletionHandler:v9];
}

void __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v89 = v8;
      v90 = 2114;
      v91 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load url bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
    goto LABEL_60;
  }

  if (![*(a1 + 32) isCancelled])
  {
    v13 = [v5 urlForBagKey:*(*(a1 + 32) + 368)];
    if (!v13)
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = v19[46];
        *buf = 138543618;
        v89 = v19;
        v90 = 2114;
        v91 = v20;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failing due to missing bag key '%{public}@", buf, 0x16u);
      }

      v21 = *(a1 + 32);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v21 finishWithError:v22];
      goto LABEL_59;
    }

    v14 = [MEMORY[0x1E695AC18] requestWithURL:v13];
    [v14 setHTTPMethod:@"POST"];
    v72 = v14;
    [v14 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(*(a1 + 32) + 360)];
    v16 = [*(*(a1 + 32) + 304) deviceInfo];
    v17 = [v16 deviceGUID];

    v71 = v17;
    if (v17)
    {
      [v15 setObject:v17 forKey:@"guid"];
    }

    else
    {
      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        *buf = 138543362;
        v89 = v24;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Error getting deviceGUID", buf, 0xCu);
      }
    }

    v25 = [*(*(a1 + 32) + 304) deviceInfo];
    v26 = [v25 isWatch];

    if (v26)
    {
      v27 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
      v28 = [v27 pairedDeviceMediaGUID];

      if (v28)
      {
        [v15 setObject:v28 forKey:@"companion-guid"];
      }
    }

    v29 = [*(*(a1 + 32) + 304) deviceInfo];
    v30 = [v29 isAppleTV];

    if ((v30 & 1) == 0 && [*(a1 + 40) isCloudBackupEnabled])
    {
      [v15 setObject:@"1" forKey:@"icloud-backup-enabled"];
    }

    v31 = *(a1 + 32);
    if (*(v31 + 344) == 1)
    {
      [v15 setObject:@"1" forKey:@"lightweight"];
      [v15 setObject:@"1" forKey:@"playback"];
      v31 = *(a1 + 32);
    }

    if (*(v31 + 345) == 1)
    {
      [v15 setObject:@"1" forKey:@"streamingRental"];
      v31 = *(a1 + 32);
    }

    v32 = [*(v31 + 304) identityStore];
    v33 = [*(*(a1 + 32) + 304) identity];
    v85 = 0;
    v34 = [v32 getPropertiesForUserIdentity:v33 error:&v85];
    v35 = v85;

    if (v35)
    {
      v36 = v15;
      v37 = v34;
      v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 32);
        *buf = 138543618;
        v89 = v39;
        v90 = 2114;
        v91 = v35;
        _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve user account properties. err='%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) finishWithError:v35];
      v22 = v72;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    v70 = v13;
    if (*(*(a1 + 32) + 347) != 1 || ![v5 canPostKeybagSyncData])
    {
LABEL_44:
      if (*(*(a1 + 32) + 348) != 1)
      {
        goto LABEL_51;
      }

      v47 = [v34 DSID];
      v48 = [v47 unsignedLongLongValue];

      v81 = 0;
      v82 = 0;
      LOBYTE(v47) = [ICADIUtilities generateMachineDataForAccountID:-1 returningMachineIDData:&v82 otpData:0 error:&v81];
      v49 = v82;
      v68 = v81;
      if (v47)
      {
        v50 = dispatch_semaphore_create(0);
        v66 = +[ICMusicSubscriptionFairPlayController sharedController];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_39;
        v78[3] = &unk_1E7BF5650;
        v78[4] = *(a1 + 32);
        v79 = v15;
        v80 = v50;
        v51 = v50;
        v52 = v48;
        v53 = v51;
        [v66 generateSubscriptionBagRequestWithAccountUniqueIdentifier:v52 transactionType:312 machineIDData:v49 completionHandler:v78];

        dispatch_semaphore_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        v53 = _ICLogCategoryDefault();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v54 = v68;
          v89 = v68;
          _os_log_impl(&dword_1B4491000, v53, OS_LOG_TYPE_DEFAULT, "failed to generate machine data for download request. err=%{public}@", buf, 0xCu);
LABEL_50:

LABEL_51:
          v77 = 0;
          v36 = v15;
          v55 = [MEMORY[0x1E696AE40] dataWithPropertyList:v15 format:100 options:0 error:{&v77, v66}];
          v56 = v77;
          v57 = v56;
          if (!v55 || v56)
          {
            v69 = v55;
            v37 = v34;
            v60 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = *(a1 + 32);
              *buf = 138543874;
              v89 = v61;
              v90 = 2114;
              v91 = v57;
              v92 = 2114;
              v93 = v36;
              _os_log_impl(&dword_1B4491000, v60, OS_LOG_TYPE_ERROR, "%{public}@ failed to serialize body data. err=%{public}@, bodyDictionary=%{public}@", buf, 0x20u);
            }

            v62 = *(a1 + 32);
            v63 = MEMORY[0x1E696ABC0];
            v86 = *MEMORY[0x1E696AA08];
            v87 = v57;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            v65 = [v63 errorWithDomain:@"ICError" code:-7005 userInfo:v64];
            [v62 finishWithError:v65];

            v22 = v72;
            v55 = v69;
          }

          else
          {
            v37 = v34;
            v58 = *(a1 + 32);
            v59 = *(v58 + 328);
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_46;
            v73[3] = &unk_1E7BFA1F0;
            v73[4] = v58;
            v22 = v72;
            v74 = v72;
            v75 = v55;
            v76 = v5;
            [v59 lockWithBlock:v73];
          }

          v13 = v70;
          goto LABEL_58;
        }
      }

      v54 = v68;
      goto LABEL_50;
    }

    v40 = [v34 DSID];
    v84 = 0;
    v83 = 0;
    v41 = ICFairPlayCopyKeyBagSyncData([v40 unsignedLongLongValue], 1, &v84, &v83);
    v42 = v84;
    v67 = v83;

    if (v41)
    {
      v43 = v67;
      v44 = v42;
      if (!v42)
      {
LABEL_43:

        goto LABEL_44;
      }

      v45 = [v42 base64EncodedStringWithOptions:0];
      if (v45)
      {
        [v15 setObject:v45 forKey:@"kbsync"];
      }
    }

    else
    {
      v44 = v42;
      v45 = _ICLogCategoryDefault();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 32);
        *buf = 138543618;
        v89 = v46;
        v90 = 2114;
        v43 = v67;
        v91 = v67;
        _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_ERROR, "%{public}@ failed to copy keybag sync data. err=%{public}@", buf, 0x16u);
      }

      else
      {
        v43 = v67;
      }
    }

    goto LABEL_43;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v89 = v10;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ stopping because the operation was cancelled", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
  [v11 finishWithError:v12];

LABEL_60:
}

void __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to generate subscription sync data. err=%{public}@", &v9, 0x16u);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKey:@"sbsync"];
    }

    goto LABEL_7;
  }

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 48));
}

void __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_46(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v23 = v3;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "%{public}@ stopping because the operation was cancelled", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
    [v4 finishWithError:v5];
  }

  else
  {
    [*(a1 + 40) setHTTPBody:*(a1 + 48)];
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [[ICStoreURLRequest alloc] initWithURLRequest:*(a1 + 40) requestContext:*(*(a1 + 32) + 304)];
    v8 = *(a1 + 32);
    v9 = *(v8 + 320);
    *(v8 + 320) = v7;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MediaRedownload endpoint:%@", *(*(a1 + 32) + 368)];
    [*(*(a1 + 32) + 320) setRequestName:v10];

    v11 = [*(a1 + 32) progress];
    v12 = [*(*(a1 + 32) + 320) progress];
    [v11 addChild:v12 withPendingUnitCount:100];

    v13 = *(a1 + 32);
    v14 = *(v13 + 352);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      if (*(v13 + 346))
      {
        +[ICURLSessionManager highPrioritySession];
      }

      else
      {
        +[ICURLSessionManager defaultSession];
      }
      v15 = ;
    }

    v16 = v15;
    v17 = *(a1 + 32);
    v18 = *(v17 + 320);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_53;
    v19[3] = &unk_1E7BF56C8;
    v19[4] = v17;
    v20 = v6;
    v21 = *(a1 + 56);
    v5 = v6;
    [v16 enqueueDataRequest:v18 withCompletionHandler:v19];
  }
}

void __70__ICMediaRedownloadRequest__executeWithActiveICloudAccountProperties___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Request completed with error %{public}@", &v20, 0x16u);
  }

  [*(*(a1 + 32) + 328) lock];
  v9 = *(a1 + 32);
  v10 = *(v9 + 320);
  *(v9 + 320) = 0;

  [*(*(a1 + 32) + 328) unlock];
  v11 = [v6 parsedBodyDictionary];
  v12 = [[ICMediaRedownloadResponse alloc] initWithResponseDictionary:v11 requestDate:*(a1 + 40) urlBag:*(a1 + 48)];
  v13 = *(a1 + 32);
  v14 = *(v13 + 312);
  *(v13 + 312) = v12;

  v15 = *(*(a1 + 32) + 336);
  v16 = [v6 aggregatedPerformanceMetrics];

  v17 = [ICURLAggregatedPerformanceMetrics aggregatedMetricsFromAggregatedMetrics:v15 addingAggregatedMetrics:v16];
  v18 = *(a1 + 32);
  v19 = *(v18 + 336);
  *(v18 + 336) = v17;

  [*(a1 + 32) finishWithError:v5];
}

- (void)cancel
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__ICMediaRedownloadRequest_cancel__block_invoke;
  v3[3] = &unk_1E7BFA300;
  v3[4] = self;
  [(ICUnfairLock *)lock lockWithBlock:v3];
}

void __34__ICMediaRedownloadRequest_cancel__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = ICMediaRedownloadRequest;
  objc_msgSendSuper2(&v4, sel_cancel);
  v2 = *(a1 + 32);
  if (*(v2 + 320))
  {
    if (*(v2 + 346))
    {
      +[ICURLSessionManager highPrioritySession];
    }

    else
    {
      +[ICURLSessionManager defaultSession];
    }
    v3 = ;
    [v3 cancelRequest:*(*(a1 + 32) + 320)];
  }
}

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting", buf, 0xCu);
  }

  deviceInfo = [(ICRequestContext *)self->_requestContext deviceInfo];
  isAppleTV = [deviceInfo isAppleTV];

  if (isAppleTV)
  {
    [(ICMediaRedownloadRequest *)self _executeWithActiveICloudAccountProperties:0];
  }

  else
  {
    identityStore = [(ICStoreRequestContext *)self->_requestContext identityStore];
    v10 = 0;
    v7 = [identityStore getPropertiesForActiveICloudAccountReturningError:&v10];
    v8 = v10;

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load icloud account properties. err=%{public}@", buf, 0x16u);
      }
    }

    [(ICMediaRedownloadRequest *)self _executeWithActiveICloudAccountProperties:v7];
  }
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_usePrioritizedURLSession)
  {
    v5 = 25;
  }

  else
  {
    v5 = -1;
  }

  v6 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__ICMediaRedownloadRequest_performRequestWithResponseHandler___block_invoke;
  v8[3] = &unk_1E7BFA490;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ICRequestOperation *)self performRequestOnOperationQueue:v6 withCompletionHandler:v8];
}

void __62__ICMediaRedownloadRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 336);
  *(v4 + 336) = 0;
}

- (ICMediaRedownloadRequest)initWithRequestContext:(id)context redownloadParametersString:(id)string
{
  v6 = MEMORY[0x1E695DFF8];
  contextCopy = context;
  v8 = [v6 ic_queryParametersDictionaryFromString:string];
  v9 = [(ICMediaRedownloadRequest *)self initWithRequestContext:contextCopy redownloadParameters:v8];

  return v9;
}

- (ICMediaRedownloadRequest)initWithRequestContext:(id)context redownloadParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v9 = [(ICMediaRedownloadRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestContext, context);
    objc_storeStrong(&v10->_redownloadParameters, parameters);
  }

  return v10;
}

- (ICMediaRedownloadRequest)init
{
  v7.receiver = self;
  v7.super_class = ICMediaRedownloadRequest;
  v2 = [(ICRequestOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_requestURLBagKey, @"redownloadProduct");
    v3->_includeKeybagSyncData = 1;
    v3->_includeSubscriptionKeybagSyncData = 0;
    v3->_usePrioritizedURLSession = 0;
    v4 = objc_alloc_init(ICUnfairLock);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

@end