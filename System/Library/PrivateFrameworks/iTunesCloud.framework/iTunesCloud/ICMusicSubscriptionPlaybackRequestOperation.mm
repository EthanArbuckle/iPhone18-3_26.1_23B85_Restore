@interface ICMusicSubscriptionPlaybackRequestOperation
- (ICMusicSubscriptionPlaybackRequestOperation)init;
- (void)cancel;
- (void)start;
@end

@implementation ICMusicSubscriptionPlaybackRequestOperation

- (void)start
{
  v33 = *MEMORY[0x1E69E9840];
  willBeginExecutionHandler = self->_willBeginExecutionHandler;
  if (willBeginExecutionHandler)
  {
    willBeginExecutionHandler[2](willBeginExecutionHandler, self);
    v4 = self->_willBeginExecutionHandler;
    self->_willBeginExecutionHandler = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke;
  v30[3] = &unk_1E7BF4500;
  v30[4] = self;
  v5 = MEMORY[0x1B8C781E0](v30, a2);
  v6 = objc_alloc(MEMORY[0x1E69B13F0]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2;
  v28[3] = &unk_1E7BF4528;
  v28[4] = self;
  v7 = v5;
  v29 = v7;
  v8 = [v6 initWithTimeout:v28 interruptionHandler:60.0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_19;
  v25[3] = &unk_1E7BF4550;
  v9 = v8;
  v26 = v9;
  v10 = v7;
  v27 = v10;
  v11 = MEMORY[0x1B8C781E0](v25);
  v12 = [(ICStoreRequestContext *)self->_requestContext identity];
  v13 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v12];
  v14 = [v13 shouldBlockPersonalizedNetworkRequestsForMusic];

  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
    (v11)[2](v11, 0, 0, 0, v15);
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__6356;
    v23[4] = __Block_byref_object_dispose__6357;
    v24 = 0;
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = self;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching bag", buf, 0xCu);
    }

    v17 = +[ICURLBagProvider sharedBagProvider];
    requestContext = self->_requestContext;
    v19 = [(ICMusicSubscriptionPlaybackRequestOperation *)self qualityOfService];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_22;
    v20[3] = &unk_1E7BF4618;
    v20[4] = self;
    v21 = v11;
    v22 = v23;
    [v17 getBagForRequestContext:requestContext qualityOfService:v19 forceRefetch:0 withCompletionHandler:v20];

    _Block_object_dispose(v23, 8);
  }
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v11 = v10[43];
  v14 = v9;
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3, a4, v9);
    v12 = *(a1 + 32);
    v13 = *(v12 + 344);
    *(v12 + 344) = 0;

    v9 = v14;
    v10 = *(a1 + 32);
  }

  [v10 finishWithError:v9];
}

uint64_t __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "%{public}@ execution timed out", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7003 debugDescription:@"ICMusicSubscriptionPlaybackRequestOperation timed out"];
  (*(v4 + 16))(v4, 0, 0, 0, v5);

  return [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1350] type:@"Timeout" subType:@"SubPlaybackDispatchTimedOut" context:&stru_1F2C4A680 triggerThresholdValues:0 events:0 completion:0];
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (*(*(a1 + 32) + 304))
    {
      v9 = @"delegatePlayback";
    }

    else
    {
      v9 = @"subDownload";
    }

    v10 = v9;
    v11 = [v5 urlForBagKey:v10];
    if (!v11)
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543362;
        v63 = v16;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ playback endpoing missing from bag - treating as an error", buf, 0xCu);
      }

      v17 = *(a1 + 40);
      v18 = *(*(*(a1 + 48) + 8) + 40);
      v19 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E696A278];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing bag key '%@'", v10];
      v61 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v22 = [v19 errorWithDomain:@"ICError" code:-7201 userInfo:v21];
      (*(v17 + 16))(v17, 0, 0, v18, v22);

      goto LABEL_27;
    }

    if ([*(a1 + 32) isCancelled])
    {
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 48) + 8) + 40);
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
      (*(v12 + 16))(v12, 0, 0, v13, v14);

LABEL_27:
      goto LABEL_28;
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_28;
    v53[3] = &unk_1E7BF45C8;
    v53[4] = *(a1 + 32);
    v23 = v11;
    v24 = *(a1 + 48);
    v54 = v23;
    v57 = v24;
    v25 = v5;
    v55 = v25;
    v56 = *(a1 + 40);
    v26 = MEMORY[0x1B8C781E0](v53);
    v27 = +[ICDeviceInfo currentDeviceInfo];
    if ([v27 isMac])
    {
      v28 = *(*(a1 + 32) + 320);

      if (v28 != 3)
      {
        v29 = [v25 urlForBagKey:@"fps-cert"];
        v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        v31 = v30;
        if (v29)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            *buf = 138543362;
            v63 = v32;
            _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching certificate", buf, 0xCu);
          }

          v33 = [[ICStoreURLRequest alloc] initWithURL:v29 requestContext:*(*(a1 + 32) + 336)];
          [(ICStoreURLRequest *)v33 setShouldParseBodyData:0];
          v34 = *(a1 + 32);
          v35 = *(v34 + 288);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_59;
          block[3] = &unk_1E7BFA078;
          block[4] = v34;
          v52 = v33;
          v36 = v33;
          dispatch_barrier_async(v35, block);
          v37 = +[ICCertificateCache shared];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2_61;
          v47[3] = &unk_1E7BF45F0;
          v38 = *(a1 + 40);
          v47[4] = *(a1 + 32);
          v39 = v38;
          v40 = *(a1 + 48);
          v48 = v39;
          v50 = v40;
          v49 = v26;
          [v37 getDataForCertificateRequest:v36 withCompletionHandler:v47];
        }

        else
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v41 = *(a1 + 32);
            *buf = 138543362;
            v63 = v41;
            _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_ERROR, "%{public}@ certificate url missing from bag - treating as an error", buf, 0xCu);
          }

          v42 = *(a1 + 40);
          v46 = *(*(*(a1 + 48) + 8) + 40);
          v43 = MEMORY[0x1E696ABC0];
          v58 = *MEMORY[0x1E696A278];
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing bag key '%@'", @"fps-cert"];
          v59 = v36;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v45 = [v43 errorWithDomain:@"ICError" code:-7201 userInfo:v44];
          (*(v42 + 16))(v42, 0, 0, v46, v45);
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v26[2](v26, 0, 0);
LABEL_26:

    goto LABEL_27;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v63 = v8;
    v64 = 2114;
    v65 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load bag. err=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_28:
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v37 = v8;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting playback request", buf, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:*(a1 + 40)];
  [v9 setHTTPMethod:@"POST"];
  v26 = [MEMORY[0x1E695DF00] date];
  v10 = [(ICStoreURLRequest *)[ICMusicSubscriptionPlaybackURLRequest alloc] initWithURLRequest:v9 requestContext:*(*(a1 + 32) + 336)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setAssetSourceStorefrontID:*(*(a1 + 32) + 312)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setRequestType:*(*(a1 + 32) + 320)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setStoreCloudID:*(*(a1 + 32) + 352)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setStorePurchasedAdamID:*(*(a1 + 32) + 368)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setStoreSubscriptionAdamID:*(*(a1 + 32) + 360)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setDelegatedPlayback:*(*(a1 + 32) + 304)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setCloudUniversalLibraryID:*(*(a1 + 32) + 376)];
  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setLeaseCertificateData:v6];

  [(ICMusicSubscriptionPlaybackURLRequest *)v10 setLeaseAssetIDData:v5];
  v11 = MEMORY[0x1E696AEC0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 320);
  v14 = !*(v12 + 352) && !*(v12 + 368) && !*(v12 + 360) && [*(v12 + 376) length] == 0;
  v15 = [v11 stringWithFormat:@"SubPlaybackDispatch type:%ld lease-only:%d", v13, v14];
  [(ICURLRequest *)v10 setRequestName:v15];

  v16 = *(a1 + 32);
  if (*(v16 + 320) != 1)
  {
    [(ICURLRequest *)v10 setRetryDelay:1.0];
    v16 = *(a1 + 32);
  }

  if (*(v16 + 305) == 1)
  {
    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"followup" value:@"1"];
    v35 = v17;
    v18 = &v35;
LABEL_11:
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(ICStoreURLRequest *)v10 setAdditionalQueryItems:v19];

    goto LABEL_16;
  }

  if (!*(v16 + 352) && !*(v16 + 368) && !*(v16 + 360) && ![*(v16 + 376) length])
  {
    v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"lease-only" value:@"1"];
    v34 = v17;
    v18 = &v34;
    goto LABEL_11;
  }

LABEL_16:
  v20 = *(a1 + 32);
  v21 = *(v20 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_49;
  block[3] = &unk_1E7BFA078;
  block[4] = v20;
  v33 = v10;
  v22 = v10;
  dispatch_barrier_async(v21, block);
  v23 = +[ICURLSessionManager unlimitedHighPrioritySession];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2_50;
  v27[3] = &unk_1E7BF45A0;
  v24 = *(a1 + 32);
  v31 = *(a1 + 64);
  v27[4] = v24;
  v28 = v26;
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v25 = v26;
  [v23 enqueueDataRequest:v22 withCompletionHandler:v27];
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2_61(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_3_62;
  block[3] = &unk_1E7BFA300;
  block[4] = v7;
  dispatch_barrier_async(v8, block);
  if (v6)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      *buf = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load certificate data. err=%{public}@", buf, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  else if (v5)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:"lease" length:5];
    (*(a1[6] + 16))();
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ No certificate data in response - treating as an error", buf, 0xCu);
    }

    v14 = a1[5];
    v15 = *(*(a1[7] + 8) + 40);
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    (*(v14 + 16))(v14, 0, 0, v15, v16);
  }
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_3_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 296);
  *(v1 + 296) = 0;
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_2_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_3;
  block[3] = &unk_1E7BFA300;
  block[4] = v6;
  v8 = a2;
  dispatch_barrier_async(v7, block);
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = [v8 aggregatedPerformanceMetrics];
  v11 = [ICURLAggregatedPerformanceMetrics aggregatedMetricsFromAggregatedMetrics:v9 addingAggregatedMetrics:v10];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v8 parsedBodyDictionary];

  if (v14)
  {
    v15 = [[ICMusicSubscriptionPlaybackResponse alloc] initWithResponseDictionary:v14 requestDate:*(a1 + 40) urlBag:*(a1 + 48)];
    v16 = [(ICMusicSubscriptionPlaybackResponse *)v15 leaseInfoData];
    v17 = [(ICMusicSubscriptionPlaybackResponse *)v15 subscriptionKeyBagData];
    if (v16 | v17)
    {
      v18 = +[ICMusicSubscriptionFairPlayController sharedController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_4;
      v21[3] = &unk_1E7BF4578;
      v23 = *(a1 + 56);
      v19 = v15;
      v20 = *(a1 + 64);
      v22 = v19;
      v24 = v20;
      [v18 importSubscriptionKeyBagData:v17 leaseInfoData:v16 completionHandler:v21];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v15 = v5;
    if (!v15)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __52__ICMusicSubscriptionPlaybackRequestOperation_start__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 296);
  *(v1 + 296) = 0;
}

- (void)cancel
{
  v12.receiver = self;
  v12.super_class = ICMusicSubscriptionPlaybackRequestOperation;
  [(ICMusicSubscriptionPlaybackRequestOperation *)&v12 cancel];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6356;
  v10 = __Block_byref_object_dispose__6357;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICMusicSubscriptionPlaybackRequestOperation_cancel__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  if (v7[5])
  {
    v4 = +[ICURLSessionManager unlimitedHighPrioritySession];
    [v4 cancelRequest:v7[5]];
  }

  _Block_object_dispose(&v6, 8);
}

- (ICMusicSubscriptionPlaybackRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = ICMusicSubscriptionPlaybackRequestOperation;
  v2 = [(ICAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionPlaybackRequestOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

@end