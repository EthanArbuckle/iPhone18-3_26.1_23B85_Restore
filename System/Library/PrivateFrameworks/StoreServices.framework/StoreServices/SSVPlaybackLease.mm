@interface SSVPlaybackLease
- (BOOL)_shouldEndLeaseForError:(id)a3 returningEndReasonType:(unint64_t *)a4;
- (BOOL)refreshesAutomatically;
- (NSData)certificateData;
- (NSString)certificateURLBagKey;
- (SSVPlaybackLease)init;
- (SSVPlaybackLease)initWithLeaseConfiguration:(id)a3;
- (SSVPlaybackLease)initWithURLBag:(id)a3 leaseType:(int64_t)a4;
- (SSVPlaybackLeaseDelegate)delegate;
- (id)_addOperationWithRequest:(id)a3 configurationURL:(id)a4 completionBlock:(id)a5;
- (id)_initSSVPlaybackLease;
- (void)_cancelRefreshTimer;
- (void)_endLease;
- (void)_fireRefreshTimer;
- (void)_sendLeaseDidEndWithEndReasonType:(unint64_t)a3;
- (void)_startRefreshTimerIfNecessary;
- (void)_updateForLeaseResponse:(id)a3 error:(id)a4;
- (void)_updateWithLeaseResponseError:(id)a3;
- (void)beginLeaseWithRequest:(id)a3 completionBlock:(id)a4;
- (void)cancelAllAssetRequests;
- (void)dealloc;
- (void)endLease;
- (void)getAssetWithRequest:(id)a3 completionBlock:(id)a4;
- (void)getCertificateDataWithCompletionBlock:(id)a3;
- (void)preheatLeaseRequestsWithCompletionBlock:(id)a3;
- (void)refreshLeaseWithRequest:(id)a3 completionBlock:(id)a4;
- (void)setCertificateData:(id)a3;
- (void)setCertificateURLBagKey:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setRefreshesAutomatically:(BOOL)a3;
- (void)updateWithExternalLeaseResponseError:(id)a3;
@end

@implementation SSVPlaybackLease

- (id)_initSSVPlaybackLease
{
  v17.receiver = self;
  v17.super_class = SSVPlaybackLease;
  v2 = [(SSVPlaybackLease *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVPlaybackLease.delegate", 0);
    v4 = *(v2 + 6);
    *(v2 + 6) = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVPlaybackLease", 0);
    v6 = *(v2 + 17);
    *(v2 + 17) = v5;

    v7 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(*(v2 + 6), v7);
    dispatch_set_target_queue(*(v2 + 17), v7);
    v8 = objc_alloc_init(SSVFairPlaySubscriptionController);
    v9 = *(v2 + 7);
    *(v2 + 7) = v8;

    *(v2 + 8) = 0;
    *(v2 + 120) = 1;
    v10 = objc_alloc_init(SSVBarrierOperationQueue);
    v11 = *(v2 + 14);
    *(v2 + 14) = v10;

    [*(v2 + 14) setMaxConcurrentOperationCount:5];
    [*(v2 + 14) setName:@"com.apple.StoreServices.SSVPlaybackLease"];
    objc_initWeak(&location, v2);
    v12 = *(v2 + 17);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__SSVPlaybackLease__initSSVPlaybackLease__block_invoke;
    v14[3] = &unk_1E84ACFA8;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.itunesstored.PlaybackLeaseDidEnd", v2 + 20, v12, v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__SSVPlaybackLease__initSSVPlaybackLease__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:@"SSVPlaybackLeaseIgnorePushNotifications"])
  {
    v3 = MGGetBoolAnswer();

    if (v3)
    {
      return;
    }
  }

  else
  {
  }

  v5 = objc_alloc_init(SSVPlaybackLeaseRequest);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshLeaseWithRequest:v5 completionBlock:0];
}

- (SSVPlaybackLease)init
{
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = SSVDefaultUserAgent();
  [v3 setValue:v4 forHTTPHeaderField:@"User-Agent"];

  v5 = [[SSURLBag alloc] initWithURLBagContext:v3];
  v6 = [(SSVPlaybackLease *)self initWithURLBag:v5];

  return v6;
}

- (SSVPlaybackLease)initWithLeaseConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SSVPlaybackLease *)self _initSSVPlaybackLease];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v5->_leaseType = [(SSVPlaybackLeaseConfiguration *)v5->_configuration leaseType];
  }

  return v5;
}

- (SSVPlaybackLease)initWithURLBag:(id)a3 leaseType:(int64_t)a4
{
  v7 = a3;
  v8 = [(SSVPlaybackLease *)self _initSSVPlaybackLease];
  v9 = v8;
  if (v8)
  {
    v8->_leaseType = a4;
    objc_storeStrong(&v8->_urlBag, a3);
  }

  return v9;
}

- (void)dealloc
{
  refreshTimer = self->_refreshTimer;
  if (refreshTimer)
  {
    dispatch_source_cancel(refreshTimer);
  }

  notify_cancel(self->_leaseDidEndNotificationToken);
  v4.receiver = self;
  v4.super_class = SSVPlaybackLease;
  [(SSVPlaybackLease *)&v4 dealloc];
}

- (void)beginLeaseWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SSVPlaybackLease_beginLeaseWithRequest_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

void __58__SSVPlaybackLease_beginLeaseWithRequest_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyWithLeaseType:*(*(a1 + 40) + 96)];
  [v2 _setActionType:0];
  [v2 setStartsLeaseSession:1];
  v3 = *(*(a1 + 40) + 48);
  v4 = *(a1 + 40);
  v5 = [v4[4] beginLeaseURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SSVPlaybackLease_beginLeaseWithRequest_completionBlock___block_invoke_2;
  v9[3] = &unk_1E84B1840;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  v8 = [v4 _addOperationWithRequest:v2 configurationURL:v5 completionBlock:v9];
}

void __58__SSVPlaybackLease_beginLeaseWithRequest_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SSVPlaybackLease_beginLeaseWithRequest_completionBlock___block_invoke_3;
    block[3] = &unk_1E84ABEC8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)cancelAllAssetRequests
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSVPlaybackLease_cancelAllAssetRequests__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __42__SSVPlaybackLease_cancelAllAssetRequests__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSData)certificateData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__48;
  v10 = __Block_byref_object_dispose__48;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSVPlaybackLease_certificateData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)certificateURLBagKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__48;
  v10 = __Block_byref_object_dispose__48;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSVPlaybackLease_certificateURLBagKey__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (SSVPlaybackLeaseDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__48;
  v10 = __Block_byref_object_dispose__48;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__SSVPlaybackLease_delegate__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__SSVPlaybackLease_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)endLease
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSVPlaybackLease_endLease__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)getAssetWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSVPlaybackLease_getAssetWithRequest_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

void __56__SSVPlaybackLease_getAssetWithRequest_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyWithLeaseType:*(*(a1 + 40) + 96)];
  [v2 _setActionType:1];
  v3 = *(*(a1 + 40) + 48);
  v4 = *(a1 + 40);
  v5 = [v4[4] getAssetURL];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__SSVPlaybackLease_getAssetWithRequest_completionBlock___block_invoke_2;
  v15 = &unk_1E84B1840;
  v17 = *(a1 + 48);
  v6 = v3;
  v16 = v6;
  v7 = [v4 _addOperationWithRequest:v2 configurationURL:v5 completionBlock:&v12];

  v8 = *(*(a1 + 40) + 8);
  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    v8 = *(*(a1 + 40) + 8);
  }

  [v8 addObject:{v7, v12, v13, v14, v15}];
}

void __56__SSVPlaybackLease_getAssetWithRequest_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SSVPlaybackLease_getAssetWithRequest_completionBlock___block_invoke_3;
    block[3] = &unk_1E84ABEC8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getCertificateDataWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self->_delegateQueue;
  v6 = self->_certificateData;
  if (!v6)
  {
    configuration = self->_configuration;
    v9 = [SSVLeaseCertificateRequestOperation alloc];
    if (configuration)
    {
      v10 = [(SSVLeaseCertificateRequestOperation *)v9 initWithConfiguration:self->_configuration];
    }

    else
    {
      v10 = [(SSVLeaseCertificateRequestOperation *)v9 initWithURLBag:self->_urlBag];
    }

    v7 = v10;
    [(SSVLeaseCertificateRequestOperation *)v10 setCertificateURLBagKey:self->_certificateURLBagKey];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __58__SSVPlaybackLease_getCertificateDataWithCompletionBlock___block_invoke_2;
    v14 = &unk_1E84B1868;
    v16 = v4;
    v15 = v5;
    [(SSVLeaseCertificateRequestOperation *)v7 setOutputBlock:&v11];
    [(SSVBarrierOperationQueue *)self->_operationQueue addOperation:v7, v11, v12, v13, v14];

    goto LABEL_8;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SSVPlaybackLease_getCertificateDataWithCompletionBlock___block_invoke;
    block[3] = &unk_1E84AC338;
    v19 = v4;
    v18 = v6;
    dispatch_async(v5, block);

    v7 = v19;
LABEL_8:
  }
}

void __58__SSVPlaybackLease_getCertificateDataWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SSVPlaybackLease_getCertificateDataWithCompletionBlock___block_invoke_3;
    block[3] = &unk_1E84ABEC8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)preheatLeaseRequestsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SSVPlaybackLease_preheatLeaseRequestsWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B1890;
  v7 = v4;
  v5 = v4;
  [(SSVPlaybackLease *)self getCertificateDataWithCompletionBlock:v6];
}

uint64_t __60__SSVPlaybackLease_preheatLeaseRequestsWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (BOOL)refreshesAutomatically
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSVPlaybackLease_refreshesAutomatically__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)refreshLeaseWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SSVPlaybackLease_refreshLeaseWithRequest_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

void __60__SSVPlaybackLease_refreshLeaseWithRequest_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyWithLeaseType:*(*(a1 + 40) + 96)];
  [v2 _setActionType:2];
  v3 = *(*(a1 + 40) + 48);
  v4 = *(a1 + 40);
  v5 = [v4[4] refreshLeaseURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SSVPlaybackLease_refreshLeaseWithRequest_completionBlock___block_invoke_2;
  v9[3] = &unk_1E84B1840;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  v8 = [v4 _addOperationWithRequest:v2 configurationURL:v5 completionBlock:v9];
}

void __60__SSVPlaybackLease_refreshLeaseWithRequest_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSVPlaybackLease_refreshLeaseWithRequest_completionBlock___block_invoke_3;
    block[3] = &unk_1E84ABEC8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)setCertificateData:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SSVPlaybackLease_setCertificateData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __39__SSVPlaybackLease_setCertificateData___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 16) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }
}

- (void)setCertificateURLBagKey:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSVPlaybackLease_setCertificateURLBagKey___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __44__SSVPlaybackLease_setCertificateURLBagKey___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SSVPlaybackLease_setDelegate___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)setRefreshesAutomatically:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSVPlaybackLease_setRefreshesAutomatically___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

uint64_t __46__SSVPlaybackLease_setRefreshesAutomatically___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = *(a1 + 40);
  v1 = *(a1 + 32);
  if (v1[120] == 1)
  {
    return [v1 _startRefreshTimerIfNecessary];
  }

  else
  {
    return [v1 _cancelRefreshTimer];
  }
}

- (void)updateWithExternalLeaseResponseError:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSVPlaybackLease_updateWithExternalLeaseResponseError___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (id)_addOperationWithRequest:(id)a3 configurationURL:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  leaseType = self->_leaseType;
  [v9 _setCertificateData:self->_certificateData];
  [v9 _setKDMovieIdentifier:self->_kdMovieIdentifier];
  [v9 _setURL:v10];
  v13 = [SSVLeaseRequestOperation alloc];
  if (v10)
  {
    v14 = [(SSVLeaseRequestOperation *)v13 initWithLeaseRequest:v9 configuration:self->_configuration];
  }

  else
  {
    v14 = [(SSVLeaseRequestOperation *)v13 initWithLeaseRequest:v9 URLBag:self->_urlBag];
  }

  v15 = v14;
  [(SSVLeaseRequestOperation *)v14 setCertificateURLBagKey:self->_certificateURLBagKey];
  if (leaseType == 1)
  {
    objc_storeStrong(&self->_lastKDLeaseRequest, a3);
  }

  v16 = self->_serialQueue;
  objc_initWeak(&location, v15);
  objc_initWeak(&from, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__SSVPlaybackLease__addOperationWithRequest_configurationURL_completionBlock___block_invoke;
  v20[3] = &unk_1E84B18E0;
  v17 = v16;
  v21 = v17;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  v22 = self;
  v18 = v11;
  v23 = v18;
  [(SSVLeaseRequestOperation *)v15 setOutputBlock:v20];
  [(SSVBarrierOperationQueue *)self->_operationQueue addBarrierOperation:v15];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v15;
}

void __78__SSVPlaybackLease__addOperationWithRequest_configurationURL_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SSVPlaybackLease__addOperationWithRequest_configurationURL_completionBlock___block_invoke_2;
  v11[3] = &unk_1E84B18B8;
  objc_copyWeak(&v15, (a1 + 56));
  objc_copyWeak(&v16, (a1 + 64));
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void __78__SSVPlaybackLease__addOperationWithRequest_configurationURL_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 72));
    if (v2)
    {
      [WeakRetained[1] removeObjectIdenticalTo:v2];
    }

    [*(a1 + 32) _updateForLeaseResponse:*(a1 + 40) error:*(a1 + 48)];
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
    }
  }

  else
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_9;
    }

    v2 = SSError(@"SSErrorDomain", 100, 0, 0);
    (*(v4 + 16))(v4, 0, v2);
  }

LABEL_9:
}

- (void)_cancelRefreshTimer
{
  refreshTimer = self->_refreshTimer;
  if (refreshTimer)
  {
    dispatch_source_cancel(refreshTimer);
    v4 = self->_refreshTimer;
    self->_refreshTimer = 0;
  }
}

- (void)_endLease
{
  [(SSVPlaybackLease *)self _cancelRefreshTimer];
  assetOperations = self->_assetOperations;
  self->_assetOperations = 0;

  self->_kdMovieIdentifier = 0;
  leaseExpirationDate = self->_leaseExpirationDate;
  self->_leaseExpirationDate = 0;

  [(SSVFairPlaySubscriptionController *)self->_fairPlaySubscriptionController stopSubscriptionLease:0];
  operationQueue = self->_operationQueue;

  [(SSVBarrierOperationQueue *)operationQueue cancelAllOperations];
}

- (void)_fireRefreshTimer
{
  [(SSVPlaybackLease *)self _cancelRefreshTimer];
  leaseExpirationDate = self->_leaseExpirationDate;
  self->_leaseExpirationDate = 0;

  objc_initWeak(&location, self);
  lastKDLeaseRequest = self->_lastKDLeaseRequest;
  if (lastKDLeaseRequest)
  {
    v5 = [(SSVPlaybackLeaseRequest *)lastKDLeaseRequest _copyWithLeaseType:self->_leaseType];
  }

  else
  {
    v5 = [SSVPlaybackLeaseRequest _requestWithType:self->_leaseType];
  }

  v6 = v5;
  [v5 _setActionType:2];
  v7 = [(SSVPlaybackLeaseConfiguration *)self->_configuration refreshLeaseURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SSVPlaybackLease__fireRefreshTimer__block_invoke;
  v9[3] = &unk_1E84B1930;
  objc_copyWeak(&v10, &location);
  v8 = [(SSVPlaybackLease *)self _addOperationWithRequest:v6 configurationURL:v7 completionBlock:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__SSVPlaybackLease__fireRefreshTimer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(WeakRetained + 5);
    if (objc_opt_respondsToSelector())
    {
      v10 = v8[6];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__SSVPlaybackLease__fireRefreshTimer__block_invoke_2;
      block[3] = &unk_1E84B1908;
      v11 = &v24;
      v24 = v9;
      v12 = &v25;
      v25 = v8;
      v26 = v5;
      v27 = v6;
      dispatch_async(v10, block);

      v13 = v26;
    }

    else
    {
      if (v5)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_9:

          goto LABEL_10;
        }

        v14 = v8[6];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __37__SSVPlaybackLease__fireRefreshTimer__block_invoke_3;
        v20[3] = &unk_1E84AC028;
        v11 = &v21;
        v21 = v9;
        v12 = &v22;
        v22 = v8;
        dispatch_async(v14, v20);
LABEL_8:

        goto LABEL_9;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      v15 = v8[6];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __37__SSVPlaybackLease__fireRefreshTimer__block_invoke_4;
      v16[3] = &unk_1E84AC078;
      v11 = &v17;
      v17 = v9;
      v12 = &v18;
      v18 = v8;
      v19 = v6;
      dispatch_async(v15, v16);
      v13 = v19;
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)_sendLeaseDidEndWithEndReasonType:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__SSVPlaybackLease__sendLeaseDidEndWithEndReasonType___block_invoke;
    v13[3] = &unk_1E84AC028;
    v7 = v14;
    v14[0] = WeakRetained;
    v14[1] = self;
    v8 = v13;
    v9 = delegateQueue;
LABEL_5:
    dispatch_async(v9, v8);

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SSVPlaybackLease__sendLeaseDidEndWithEndReasonType___block_invoke_2;
    block[3] = &unk_1E84AD6E0;
    v7 = v12;
    v12[0] = WeakRetained;
    v12[1] = self;
    v12[2] = a3;
    v8 = block;
    v9 = v10;
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)_shouldEndLeaseForError:(id)a3 returningEndReasonType:(unint64_t *)a4
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"SSServerErrorDomain"] && (objc_msgSend(v5, "code") == 3059 || objc_msgSend(v5, "code") == 3060))
  {
    v7 = 1;
    v8 = 2;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"SSVFairPlayErrorDomain"])
  {
    v7 = ([v5 code] + 42589) < 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  if (a4)
  {
LABEL_10:
    *a4 = v8;
  }

LABEL_11:

  return v7;
}

- (void)_startRefreshTimerIfNecessary
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self->_refreshTimer && self->_leaseExpirationDate && self->_refreshesAutomatically)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_serialQueue);
    refreshTimer = self->_refreshTimer;
    self->_refreshTimer = v3;

    v5 = self->_refreshTimer;
    [(NSDate *)self->_leaseExpirationDate timeIntervalSinceNow];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v5, v7, 0, 0);
    objc_initWeak(&location, self);
    v8 = self->_refreshTimer;
    handler = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __49__SSVPlaybackLease__startRefreshTimerIfNecessary__block_invoke;
    v27 = &unk_1E84AD820;
    objc_copyWeak(&v28, &location);
    dispatch_source_set_event_handler(v8, &handler);
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk];
    v12 = [v9 OSLogObject];
    v13 = v12;
    if (v11)
    {
      v10 |= 2u;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = objc_opt_class();
      [(NSDate *)self->_leaseExpirationDate timeIntervalSinceNow];
      v30 = 138412546;
      v31 = v14;
      v32 = 2048;
      v33 = v15;
      LODWORD(v23) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        dispatch_resume(self->_refreshTimer);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        return;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v30, v23, handler, v25, v26, v27}];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v13);
    }

    goto LABEL_15;
  }
}

void __49__SSVPlaybackLease__startRefreshTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireRefreshTimer];
}

- (void)_updateForLeaseResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SSVPlaybackLease *)self _cancelRefreshTimer];
  if (!self->_certificateData)
  {
    v8 = [v6 certificateData];
    certificateData = self->_certificateData;
    self->_certificateData = v8;
  }

  self->_kdMovieIdentifier = [v6 KDMovieIdentifier];
  if (v7)
  {
    [(SSVPlaybackLease *)self _updateWithLeaseResponseError:v7];
  }

  else
  {
    [v6 leaseDuration];
    if (v10 >= 2.22044605e-16)
    {
      if (v10 <= 90.0)
      {
        [(SSVPlaybackLease *)self _fireRefreshTimer];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v10 + -90.0];
        leaseExpirationDate = self->_leaseExpirationDate;
        self->_leaseExpirationDate = v12;

        [(SSVPlaybackLease *)self _startRefreshTimerIfNecessary];
      }
    }

    else
    {
      v11 = self->_leaseExpirationDate;
      self->_leaseExpirationDate = 0;
    }

    if ([v6 isOfflineSlotAvailable] && !self->_offlineSlotRequest && !self->_leaseType)
    {
      v14 = objc_alloc_init(SSVRefreshSubscriptionRequest);
      offlineSlotRequest = self->_offlineSlotRequest;
      self->_offlineSlotRequest = v14;

      [(SSVRefreshSubscriptionRequest *)self->_offlineSlotRequest setRequestingOfflineSlot:1];
      objc_initWeak(&location, self);
      v16 = self->_offlineSlotRequest;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __50__SSVPlaybackLease__updateForLeaseResponse_error___block_invoke;
      v17[3] = &unk_1E84B1958;
      objc_copyWeak(&v18, &location);
      v17[4] = self;
      [(SSVRefreshSubscriptionRequest *)v16 startWithResponseBlock:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __50__SSVPlaybackLease__updateForLeaseResponse_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SSVPlaybackLease__updateForLeaseResponse_error___block_invoke_2;
    block[3] = &unk_1E84AC050;
    block[4] = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __50__SSVPlaybackLease__updateForLeaseResponse_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  *(v1 + 104) = 0;
}

- (void)_updateWithLeaseResponseError:(id)a3
{
  v7 = 1;
  if ([(SSVPlaybackLease *)self _shouldEndLeaseForError:a3 returningEndReasonType:&v7])
  {
    [(SSVPlaybackLease *)self _endLease];
    [(SSVPlaybackLease *)self _sendLeaseDidEndWithEndReasonType:v7];
  }

  else
  {
    [(NSDate *)self->_leaseExpirationDate timeIntervalSinceNow];
    if (v4 < 2.22044605e-16)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:90.0];
      leaseExpirationDate = self->_leaseExpirationDate;
      self->_leaseExpirationDate = v5;
    }

    [(SSVPlaybackLease *)self _startRefreshTimerIfNecessary];
  }
}

@end