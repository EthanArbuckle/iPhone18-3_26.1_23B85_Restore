@interface ICMusicSubscriptionStatusController
+ (BOOL)_canConnectToMusicSubscriptionStatusService;
+ (ICMusicSubscriptionStatusController)sharedStatusController;
- (BOOL)_willPerformSubscriptionStatusRequest:(id)request withStatusHandler:(id)handler;
- (ICMusicSubscriptionStatusController)init;
- (id)_remoteRequestingClientConnection;
- (void)_cancelPendingRequests;
- (void)_cancelRemoteRequestingClientConnectionInvalidationTimer;
- (void)_deliverSubscriptionStatusResponse:(id)response forRequest:(id)request error:(id)error;
- (void)_didEndRemoteRequestWithUniqueIdentifier:(id)identifier;
- (void)_handlePrivacyAcknowledgementRequirementChanged:(BOOL)changed;
- (void)_handleSeveredRemoteClientConnectionWithIdentifier:(id)identifier;
- (void)_handleSubscriptionStatusCacheDidChangeNotification:(id)notification;
- (void)_handleSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification:(id)notification;
- (void)_handleSubscriptionStatusDidChangeDistributedNotification:(id)notification;
- (void)_handleSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementNotification:(id)notification;
- (void)_invalidateRemoteRequestingClientConnection;
- (void)_remoteRequestingClientConnectionInvalidationTimerDidExpire;
- (void)_scheduleInvalidationOfRemoteRequestingClientConnection;
- (void)_willBeginRemoteRequestWithUniqueIdentifier:(id)identifier statusHandler:(id)handler;
- (void)dealloc;
- (void)deliverSubscriptionStatusResponse:(id)response forRemoteRequestWithUniqueIdentifier:(id)identifier error:(id)error;
- (void)disableSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)disableSubscriptionWithCompletionHandler:(id)handler;
- (void)enableSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)enableSubscriptionWithCompletionHandler:(id)handler;
- (void)getSubscriptionStatusForUserIdentity:(id)identity bypassingCache:(BOOL)cache withCompletionHandler:(id)handler;
- (void)getSubscriptionStatusWithCompletionHandler:(id)handler;
- (void)invalidateCachedSubscriptionStatusForUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)invalidateCachedSubscriptionStatusWithCompletionHandler:(id)handler;
- (void)performSubscriptionStatusRequest:(id)request withCompletionHandler:(id)handler;
- (void)performSubscriptionStatusRequest:(id)request withStatusHandler:(id)handler;
- (void)refreshSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)refreshSubscriptionUsingRequestContext:(id)context withCompletionHandler:(id)handler;
- (void)refreshSubscriptionWithCompletionHandler:(id)handler;
- (void)setSubscriptionStatusFromResponsePayload:(id)payload forUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)setSubscriptionStatusFromResponsePayload:(id)payload withCompletionHandler:(id)handler;
@end

@implementation ICMusicSubscriptionStatusController

uint64_t __61__ICMusicSubscriptionStatusController_sharedStatusController__block_invoke()
{
  sharedStatusController_sSharedStatusController = objc_alloc_init(ICMusicSubscriptionStatusController);

  return MEMORY[0x1EEE66BB8]();
}

- (ICMusicSubscriptionStatusController)init
{
  v33 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = ICMusicSubscriptionStatusController;
  v2 = [(ICMusicSubscriptionStatusController *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionStatusController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionStatusController.callbackQueue", MEMORY[0x1E69E96A8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.iTunesCloud.ICMusicSubscriptionStatusController.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
    v9 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__ICMusicSubscriptionStatusController_init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v10 = v2;
    v25 = v10;
    dispatch_sync(v9, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleSubscriptionStatusCacheDidChangeNotification_ name:@"ICMusicSubscriptionStatusCacheDidChangeNotification" object:0];
    [defaultCenter addObserver:v10 selector:sel__handleSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification_ name:@"ICMusicSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification" object:0];
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__handleSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementNotification_ name:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementDistributedNotification" object:0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    ic_isCloudDaemon = [processInfo ic_isCloudDaemon];

    if (ic_isCloudDaemon)
    {
      objc_initWeak(&location, v10);
      v15 = +[ICPrivacyInfo sharedPrivacyInfo];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __43__ICMusicSubscriptionStatusController_init__block_invoke_2;
      v21[3] = &unk_1E7BF7F90;
      objc_copyWeak(&v22, &location);
      v16 = [v15 beginObservingPrivacyAcknowledgementForIdentifier:@"Music" handler:v21];
      privacyAcknowledgementObservationToken = v10->_privacyAcknowledgementObservationToken;
      v10->_privacyAcknowledgementObservationToken = v16;

      v18 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v10->_privacyAcknowledgementObservationToken;
        *buf = 138543874;
        v28 = v10;
        v29 = 2114;
        v30 = @"Music";
        v31 = 2114;
        v32 = v19;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ began observing privacy acknowledgement for %{public}@ with token %{public}@.", buf, 0x20u);
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      [defaultCenter2 addObserver:v10 selector:sel__handleSubscriptionStatusDidChangeDistributedNotification_ name:@"_ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0];
    }
  }

  return v2;
}

uint64_t __43__ICMusicSubscriptionStatusController_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  *(*(a1 + 32) + 80) = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (ICMusicSubscriptionStatusController)sharedStatusController
{
  if (sharedStatusController_sOnceToken != -1)
  {
    dispatch_once(&sharedStatusController_sOnceToken, &__block_literal_global_32517);
  }

  v3 = sharedStatusController_sSharedStatusController;

  return v3;
}

void __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    objc_storeStrong((*(a1 + 32) + 56), v3);
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Creating connection with identifier %{public}@ to music subscription status service.", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = +[ICMusicSubscriptionStatusRemoteRequesting machServiceName];
    v7 = [v5 initWithMachServiceName:v6 options:0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    [*(*(a1 + 32) + 48) setExportedObject:?];
    v10 = *(*(a1 + 32) + 48);
    v11 = +[ICMusicSubscriptionStatusRemoteRequesting clientInterface];
    [v10 setExportedInterface:v11];

    v12 = *(*(a1 + 32) + 48);
    v13 = +[ICMusicSubscriptionStatusRemoteRequesting serviceInterface];
    [v12 setRemoteObjectInterface:v13];

    v14 = *(*(a1 + 32) + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_77;
    v24[3] = &unk_1E7BF80F8;
    v15 = v3;
    v25 = v15;
    objc_copyWeak(&v26, (a1 + 48));
    [v14 setInterruptionHandler:v24];
    v16 = *(*(a1 + 32) + 48);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_2;
    v21 = &unk_1E7BF80F8;
    v17 = v15;
    v22 = v17;
    objc_copyWeak(&v23, (a1 + 48));
    [v16 setInvalidationHandler:&v18];
    [*(*(a1 + 32) + 48) resume];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v26);
    v2 = *(*(a1 + 32) + 48);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

+ (BOOL)_canConnectToMusicSubscriptionStatusService
{
  getpid();
  v2 = +[ICMusicSubscriptionStatusRemoteRequesting machServiceName];
  [v2 UTF8String];
  v3 = sandbox_check();

  return v3 == 0;
}

- (void)_scheduleInvalidationOfRemoteRequestingClientConnection
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_accessQueue);
  remoteRequestingClientConnectionInvalidationTimer = self->_remoteRequestingClientConnectionInvalidationTimer;
  self->_remoteRequestingClientConnectionInvalidationTimer = v3;

  v5 = self->_remoteRequestingClientConnectionInvalidationTimer;
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v7 = self->_remoteRequestingClientConnectionInvalidationTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __94__ICMusicSubscriptionStatusController__scheduleInvalidationOfRemoteRequestingClientConnection__block_invoke;
  handler[3] = &unk_1E7BFA300;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_remoteRequestingClientConnectionInvalidationTimer);
}

- (void)_cancelRemoteRequestingClientConnectionInvalidationTimer
{
  dispatch_assert_queue_V2(self->_accessQueue);
  remoteRequestingClientConnectionInvalidationTimer = self->_remoteRequestingClientConnectionInvalidationTimer;
  if (remoteRequestingClientConnectionInvalidationTimer)
  {
    dispatch_source_cancel(remoteRequestingClientConnectionInvalidationTimer);
    v4 = self->_remoteRequestingClientConnectionInvalidationTimer;
    self->_remoteRequestingClientConnectionInvalidationTimer = 0;
  }
}

- (id)_remoteRequestingClientConnection
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__32438;
  v13 = __Block_byref_object_dispose__32439;
  v14 = 0;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke;
  v6[3] = &unk_1E7BF8120;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v6[5] = &v9;
  dispatch_sync(accessQueue, v6);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)_handleSubscriptionStatusDidChangeDistributedNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = name;
    v13 = 2114;
    v14 = @"ICMusicSubscriptionStatusDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling %{public}@. Posting %{public}@.", &v9, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  userInfo = [notificationCopy userInfo];
  [defaultCenter postNotificationName:@"ICMusicSubscriptionStatusDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handleSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = name;
    v15 = 2114;
    v16 = @"ICMusicSubscriptionStatusDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling %{public}@. Posting %{public}@.", &v11, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  userInfo = [notificationCopy userInfo];
  [defaultCenter postNotificationName:@"ICMusicSubscriptionStatusDidChangeNotification" object:self userInfo:userInfo];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  LODWORD(defaultCenter) = [processInfo ic_isCloudDaemon];

  if (defaultCenter)
  {
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 postNotificationName:@"_ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)_handleSubscriptionStatusCacheDidChangeNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = name;
    v15 = 2114;
    v16 = @"ICMusicSubscriptionStatusDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling %{public}@. Posting %{public}@.", &v11, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  userInfo = [notificationCopy userInfo];
  [defaultCenter postNotificationName:@"ICMusicSubscriptionStatusDidChangeNotification" object:self userInfo:userInfo];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  LODWORD(defaultCenter) = [processInfo ic_isCloudDaemon];

  if (defaultCenter)
  {
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 postNotificationName:@"_ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (void)_handleSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = name;
    v16 = 2114;
    v17 = @"ICMusicSubscriptionStatusDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling %{public}@. Posting %{public}@.", buf, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = +[ICUserIdentity activeAccount];
  v11 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"ICMusicSubscriptionStatusDidChangeNotification" object:self userInfo:v9];
}

- (void)_handlePrivacyAcknowledgementRequirementChanged:(BOOL)changed
{
  changedCopy = changed;
  v13 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543874;
    selfCopy = self;
    v9 = 1024;
    v10 = changedCopy;
    v11 = 2114;
    v12 = @"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementDistributedNotification";
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling privacy acknowledgement requirement changed notification: isPrivacyAcknowledgementRequired = %{BOOL}u. Posting distributed notification %{public}@.", &v7, 0x1Cu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementDistributedNotification" object:0];
}

- (void)_cancelPendingRequests
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_pendingRequests allKeys];
    *buf = 138543362;
    v19 = allKeys;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling requests for identifiers: %{public}@", buf, 0xCu);
  }

  allValues = [(NSMutableDictionary *)self->_pendingRequests allValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
        [(ICMusicSubscriptionStatusController *)self _deliverSubscriptionStatusResponse:0 forRequest:v10 error:v11];

        requestIdentifier = [v10 requestIdentifier];
        [(ICMusicSubscriptionStatusController *)self _didEndRemoteRequestWithUniqueIdentifier:requestIdentifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_willPerformSubscriptionStatusRequest:(id)request withStatusHandler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__32438;
  v41 = __Block_byref_object_dispose__32439;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  accessQueue = self->_accessQueue;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __95__ICMusicSubscriptionStatusController__willPerformSubscriptionStatusRequest_withStatusHandler___block_invoke;
  v26 = &unk_1E7BF8170;
  selfCopy = self;
  v9 = requestCopy;
  v28 = v9;
  v30 = &v37;
  v10 = handlerCopy;
  v29 = v10;
  v31 = &v43;
  v32 = &v33;
  dispatch_sync(accessQueue, &v23);
  v11 = *(v44 + 24);
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (v13)
    {
      v14 = [(NSMutableDictionary *)self->_pendingRequests count:v23];
      *buf = 138543618;
      v48 = v9;
      v49 = 2048;
      v50 = v14;
      v15 = "Performing %{public}@; total number of pending requests %llu";
      v16 = v12;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else if (v13)
  {
    v18 = v38[5];
    v19 = v34[3];
    v20 = [(NSMutableDictionary *)self->_pendingRequests count:v23];
    *buf = 138544130;
    v48 = v9;
    v49 = 2114;
    v50 = v18;
    v51 = 2048;
    v52 = v19;
    v53 = 2048;
    v54 = v20;
    v15 = "Skipping redundant %{public}@; pending identical request %{public}@; total number of status handlers: %llu. total number of pending requests %llu";
    v16 = v12;
    v17 = 42;
    goto LABEL_6;
  }

  v21 = *(v44 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  return v21 & 1;
}

void __95__ICMusicSubscriptionStatusController__willPerformSubscriptionStatusRequest_withStatusHandler___block_invoke(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__32438;
  v20 = __Block_byref_object_dispose__32439;
  v21 = 0;
  v2 = *(*(a1 + 32) + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__ICMusicSubscriptionStatusController__willPerformSubscriptionStatusRequest_withStatusHandler___block_invoke_2;
  v12[3] = &unk_1E7BF8148;
  v13 = *(a1 + 40);
  v14 = &v16;
  v15 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v12];
  if (v17[5])
  {
    v3 = [*(*(a1 + 32) + 72) objectForKey:?];
    v4 = MEMORY[0x1B8C781E0](*(a1 + 48));
    [v3 addObject:v4];

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = MEMORY[0x1B8C781E0](*(a1 + 48));
    v3 = [v5 arrayWithObject:v6];

    v7 = *(*(a1 + 32) + 72);
    v8 = [*(a1 + 40) requestIdentifier];
    [v7 setObject:v3 forKey:v8];

    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 80);
    v11 = [v9 requestIdentifier];
    [v10 setObject:v9 forKey:v11];
  }

  *(*(*(a1 + 72) + 8) + 24) = [v3 count];

  _Block_object_dispose(&v16, 8);
}

void __95__ICMusicSubscriptionStatusController__willPerformSubscriptionStatusRequest_withStatusHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([*(a1 + 32) isEqual:v8])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)_willBeginRemoteRequestWithUniqueIdentifier:(id)identifier statusHandler:(id)handler
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__ICMusicSubscriptionStatusController__willBeginRemoteRequestWithUniqueIdentifier_statusHandler___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__97__ICMusicSubscriptionStatusController__willBeginRemoteRequestWithUniqueIdentifier_statusHandler___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 24);
  result = *(a1 + 32);
  if (result[3] == 1)
  {
    return [result _cancelRemoteRequestingClientConnectionInvalidationTimer];
  }

  return result;
}

- (void)_remoteRequestingClientConnectionInvalidationTimerDidExpire
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(ICMusicSubscriptionStatusController *)self _cancelRemoteRequestingClientConnectionInvalidationTimer];

  [(ICMusicSubscriptionStatusController *)self _invalidateRemoteRequestingClientConnection];
}

- (void)_handleSeveredRemoteClientConnectionWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = self->_remoteRequestingClientConnectionIdentifier;
  v6 = v5;
  if (v5 == identifierCopy)
  {

    goto LABEL_7;
  }

  v7 = [(NSUUID *)v5 isEqual:identifierCopy];

  if (v7)
  {
LABEL_7:
    [(ICMusicSubscriptionStatusController *)self _cancelPendingRequests];
    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    remoteRequestingClientConnectionIdentifier = self->_remoteRequestingClientConnectionIdentifier;
    v10 = 138543618;
    v11 = identifierCopy;
    v12 = 2114;
    v13 = remoteRequestingClientConnectionIdentifier;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "Identifier for severed connection to music subscription status service %{public}@ doesn't match current identifier: %{public}@. Ignoring.", &v10, 0x16u);
  }

LABEL_8:
}

void __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_77(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Connection to music subscription status service with identifier %{public}@ interrupted.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_78;
  v7[3] = &unk_1E7BFA078;
  v8 = WeakRetained;
  v9 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

void __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Connection to music subscription status service with identifier %{public}@ invalidated.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICMusicSubscriptionStatusController__remoteRequestingClientConnection__block_invoke_79;
  v7[3] = &unk_1E7BFA078;
  v8 = WeakRetained;
  v9 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

- (void)_invalidateRemoteRequestingClientConnection
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  remoteRequestingClientConnection = self->_remoteRequestingClientConnection;
  if (remoteRequestingClientConnection)
  {
    v4 = remoteRequestingClientConnection;
    v5 = self->_remoteRequestingClientConnectionIdentifier;
    v6 = self->_remoteRequestingClientConnection;
    self->_remoteRequestingClientConnection = 0;

    remoteRequestingClientConnectionIdentifier = self->_remoteRequestingClientConnectionIdentifier;
    self->_remoteRequestingClientConnectionIdentifier = 0;

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating connection with identifier %{public}@ to music subscription status service.", &v9, 0xCu);
    }

    [(NSXPCConnection *)v4 invalidate];
  }
}

- (void)_didEndRemoteRequestWithUniqueIdentifier:(id)identifier
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v4 = self->_numberOfActiveRemoteRequests - 1;
  self->_numberOfActiveRemoteRequests = v4;
  if (!v4)
  {

    [(ICMusicSubscriptionStatusController *)self _scheduleInvalidationOfRemoteRequestingClientConnection];
  }
}

- (void)_deliverSubscriptionStatusResponse:(id)response forRequest:(id)request error:(id)error
{
  v53 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestCopy = request;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_accessQueue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__32438;
  v43 = __Block_byref_object_dispose__32439;
  v44 = 0;
  statusHandlersForPendingIdenticalRequests = self->_statusHandlersForPendingIdenticalRequests;
  requestIdentifier = [requestCopy requestIdentifier];
  v13 = [(NSMutableDictionary *)statusHandlersForPendingIdenticalRequests objectForKey:requestIdentifier];
  v14 = [v13 copy];
  v15 = v40[5];
  v40[5] = v14;

  pendingRequests = self->_pendingRequests;
  requestIdentifier2 = [requestCopy requestIdentifier];
  v18 = [(NSMutableDictionary *)pendingRequests objectForKey:requestIdentifier2];

  v19 = [responseCopy isFinalResponse] ^ 1;
  if (errorCopy)
  {
    LOBYTE(v19) = 0;
  }

  if ((v19 & 1) == 0)
  {
    v20 = self->_pendingRequests;
    requestIdentifier3 = [requestCopy requestIdentifier];
    [(NSMutableDictionary *)v20 removeObjectForKey:requestIdentifier3];

    v22 = self->_statusHandlersForPendingIdenticalRequests;
    requestIdentifier4 = [requestCopy requestIdentifier];
    [(NSMutableDictionary *)v22 removeObjectForKey:requestIdentifier4];
  }

  v24 = [v40[5] count];
  v25 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v26 = v25;
  if (errorCopy)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v27 = "s";
    *buf = 138544130;
    v47 = 2048;
    v46 = v18;
    if (v24 == 1)
    {
      v27 = "";
    }

    v48 = v24;
    v49 = 2080;
    v50 = v27;
    v51 = 2114;
    v52 = errorCopy;
    v28 = "Delivering result for %{public}@ to %llu status handler%s: error = %{public}@.";
    v29 = v26;
    v30 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v31 = "s";
    *buf = 138544130;
    v47 = 2048;
    v46 = v18;
    if (v24 == 1)
    {
      v31 = "";
    }

    v48 = v24;
    v49 = 2080;
    v50 = v31;
    v51 = 2114;
    v52 = responseCopy;
    v28 = "Delivering result for %{public}@ to %llu status handler%s: response = %{public}@.";
    v29 = v26;
    v30 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B4491000, v29, v30, v28, buf, 0x2Au);
LABEL_15:

  if (v24)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__ICMusicSubscriptionStatusController__deliverSubscriptionStatusResponse_forRequest_error___block_invoke;
    block[3] = &unk_1E7BF97E8;
    v38 = &v39;
    v36 = responseCopy;
    v37 = errorCopy;
    dispatch_async(callbackQueue, block);

    v33 = v36;
  }

  else
  {
    v33 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = self->_pendingRequests;
      *buf = 138543618;
      v46 = requestCopy;
      v47 = 2114;
      v48 = v34;
      _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_ERROR, "No status handlers found for request %{public}@. pendingRequests = %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v39, 8);
}

void __91__ICMusicSubscriptionStatusController__deliverSubscriptionStatusResponse_forRequest_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)deliverSubscriptionStatusResponse:(id)response forRemoteRequestWithUniqueIdentifier:(id)identifier error:(id)error
{
  responseCopy = response;
  identifierCopy = identifier;
  errorCopy = error;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__ICMusicSubscriptionStatusController_deliverSubscriptionStatusResponse_forRemoteRequestWithUniqueIdentifier_error___block_invoke;
  v15[3] = &unk_1E7BFA1F0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = responseCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = responseCopy;
  v14 = identifierCopy;
  dispatch_async(accessQueue, v15);
}

uint64_t __116__ICMusicSubscriptionStatusController_deliverSubscriptionStatusResponse_forRemoteRequestWithUniqueIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [*(a1 + 32) _deliverSubscriptionStatusResponse:*(a1 + 48) forRequest:v2 error:*(a1 + 56)];
    v2 = [*(a1 + 48) isFinalResponse];
    v3 = v5;
    if ((v2 & 1) != 0 || *(a1 + 56))
    {
      v2 = [*(a1 + 32) _didEndRemoteRequestWithUniqueIdentifier:*(a1 + 40)];
      v3 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)setSubscriptionStatusFromResponsePayload:(id)payload forUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  identityCopy = identity;
  handlerCopy = handler;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  ic_isCloudDaemon = [processInfo ic_isCloudDaemon];

  if (ic_isCloudDaemon)
  {
    v13 = [ICAsyncBlockOperation alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E7BF8BE8;
    v25 = identityCopy;
    v26 = payloadCopy;
    v27 = handlerCopy;
    v14 = handlerCopy;
    _remoteRequestingClientConnection = identityCopy;
    v16 = [(ICAsyncBlockOperation *)v13 initWithStartHandler:v24];
    [(NSOperationQueue *)self->_operationQueue addOperation:v16];

    v17 = v25;
  }

  else
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Subscription_Oversize");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v30 = 2114;
      v31 = identityCopy;
      v32 = 2114;
      v33 = payloadCopy;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request to update subscription status for identity %{public}@ with payload: %{public}@", buf, 0x20u);
    }

    _remoteRequestingClientConnection = [(ICMusicSubscriptionStatusController *)self _remoteRequestingClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_69;
    v23[3] = &unk_1E7BF9308;
    v23[4] = self;
    v19 = [_remoteRequestingClientConnection remoteObjectProxyWithErrorHandler:v23];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_70;
    v20[3] = &unk_1E7BF80D0;
    v20[4] = self;
    v21 = identityCopy;
    v22 = handlerCopy;
    v17 = handlerCopy;
    v14 = identityCopy;
    [v19 setSubscriptionStatusFromResponsePayload:payloadCopy forUserIdentity:v14 withCompletionHandler:v20];
  }
}

void __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICStoreRequestContext alloc] initWithIdentity:*(a1 + 32)];
  v5 = [[ICMusicSubscriptionStatusResponse alloc] initWithResponseDictionary:*(a1 + 40) expirationDate:0];
  [(ICMusicSubscriptionStatusResponse *)v5 setFinalResponse:1];
  v6 = +[ICMusicSubscriptionStatusCache sharedCache];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF80A8;
  v11 = v3;
  v7 = *(a1 + 48);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v3;
  [v6 setCachedSubscriptionStatusResponse:v8 forRequestContext:v4 completion:v10];
}

void __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain remote proxy to perform subscription status update. error = %{public}@.", &v6, 0x16u);
  }
}

void __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_70(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = [v5 msv_description];
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to set subscription status for user '%{public}@' error=%{public}@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to set subscription status for user '%{public}@'", &v14, 0x16u);
  }

  (*(a1[6] + 16))();
}

void __118__ICMusicSubscriptionStatusController_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 finishWithError:v4];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) subscriptionStatus];
  (*(v5 + 16))(v5, v6, v4);
}

- (void)setSubscriptionStatusFromResponsePayload:(id)payload withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  v8 = +[ICUserIdentity activeAccount];
  [(ICMusicSubscriptionStatusController *)self setSubscriptionStatusFromResponsePayload:payloadCopy forUserIdentity:v8 withCompletionHandler:handlerCopy];
}

- (void)invalidateCachedSubscriptionStatusForUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusForUserIdentity_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF8BE8;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = identityCopy;
  v9 = handlerCopy;
  v10 = identityCopy;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

void __111__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusForUserIdentity_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICStoreRequestContext alloc] initWithIdentity:*(a1 + 32)];
  v5 = +[ICMusicSubscriptionStatusCache sharedCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __111__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusForUserIdentity_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BF80A8;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v8[4] = *(a1 + 40);
  v7 = v3;
  [v5 setCachedSubscriptionStatusResponseNeedsReloadForRequestContext:v4 completion:v8];
}

void __111__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusForUserIdentity_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __111__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusForUserIdentity_withCompletionHandler___block_invoke_3;
    v9 = &unk_1E7BF9EC8;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, &v6);
  }

  [*(a1 + 40) finishWithError:{v3, v6, v7, v8, v9}];
}

- (void)invalidateCachedSubscriptionStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [ICAsyncBlockOperation alloc];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __95__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusWithCompletionHandler___block_invoke;
  v11 = &unk_1E7BF8080;
  selfCopy = self;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:&v8];
  [(NSOperationQueue *)self->_operationQueue addOperation:v7, v8, v9, v10, v11, selfCopy];
}

void __95__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating cached subscription status", buf, 2u);
  }

  v5 = +[ICMusicSubscriptionStatusCache sharedCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusWithCompletionHandler___block_invoke_67;
  v8[3] = &unk_1E7BF80A8;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v8[4] = *(a1 + 32);
  v7 = v3;
  [v5 setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion:v8];
}

void __95__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusWithCompletionHandler___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __95__ICMusicSubscriptionStatusController_invalidateCachedSubscriptionStatusWithCompletionHandler___block_invoke_2;
    v9 = &unk_1E7BF9EC8;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, &v6);
  }

  [*(a1 + 40) finishWithError:{v3, v6, v7, v8, v9}];
}

- (void)refreshSubscriptionUsingRequestContext:(id)context withCompletionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__ICMusicSubscriptionStatusController_refreshSubscriptionUsingRequestContext_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF8BE8;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = contextCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

void __100__ICMusicSubscriptionStatusController_refreshSubscriptionUsingRequestContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) identity];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing subscription for user identity %@", buf, 0xCu);
  }

  v6 = [[ICMusicSubscriptionRequest alloc] initWithStoreRequestContext:*(a1 + 32) requestType:2 requestingOfflineSlot:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__ICMusicSubscriptionStatusController_refreshSubscriptionUsingRequestContext_withCompletionHandler___block_invoke_65;
  v10[3] = &unk_1E7BF8058;
  v11 = v4;
  v7 = *(a1 + 48);
  v13 = v3;
  v14 = v7;
  v12 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  [(ICRequestOperation *)v6 performRequestWithCompletionHandler:v10];
}

void __100__ICMusicSubscriptionStatusController_refreshSubscriptionUsingRequestContext_withCompletionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to refresh subscription for user identity %@. err=%{public}@", &v7, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v3);
    }
  }

  else
  {
    [*(a1 + 40) getSubscriptionStatusForUserIdentity:*(a1 + 32) bypassingCache:1 withCompletionHandler:*(a1 + 56)];
  }

  [*(a1 + 48) finishWithError:v3];
}

- (void)refreshSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identityCopy = identity;
  v8 = [[ICStoreRequestContext alloc] initWithIdentity:identityCopy];

  [(ICMusicSubscriptionStatusController *)self refreshSubscriptionUsingRequestContext:v8 withCompletionHandler:handlerCopy];
}

- (void)refreshSubscriptionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ICUserIdentity activeAccount];
  [(ICMusicSubscriptionStatusController *)self refreshSubscriptionForUserIdentity:v5 withCompletionHandler:handlerCopy];
}

- (void)disableSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__ICMusicSubscriptionStatusController_disableSubscriptionForUserIdentity_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF8BE8;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = identityCopy;
  v9 = handlerCopy;
  v10 = identityCopy;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

void __96__ICMusicSubscriptionStatusController_disableSubscriptionForUserIdentity_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Disabling subscription for user identity %@", buf, 0xCu);
  }

  v6 = [[ICStoreRequestContext alloc] initWithIdentity:*(a1 + 32)];
  v7 = [[ICMusicSubscriptionRequest alloc] initWithStoreRequestContext:v6 requestType:1 requestingOfflineSlot:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__ICMusicSubscriptionStatusController_disableSubscriptionForUserIdentity_withCompletionHandler___block_invoke_64;
  v10[3] = &unk_1E7BF8058;
  v11 = *(a1 + 32);
  v8 = *(a1 + 48);
  v13 = v3;
  v14 = v8;
  v12 = *(a1 + 40);
  v9 = v3;
  [(ICRequestOperation *)v7 performRequestWithCompletionHandler:v10];
}

void __96__ICMusicSubscriptionStatusController_disableSubscriptionForUserIdentity_withCompletionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to disable subscription for user identity %{public}@. err=%{public}@", &v7, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v3);
    }
  }

  else
  {
    [*(a1 + 40) getSubscriptionStatusForUserIdentity:*(a1 + 32) bypassingCache:1 withCompletionHandler:*(a1 + 56)];
  }

  [*(a1 + 48) finishWithError:v3];
}

- (void)disableSubscriptionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ICUserIdentity activeAccount];
  [(ICMusicSubscriptionStatusController *)self disableSubscriptionForUserIdentity:v5 withCompletionHandler:handlerCopy];
}

- (void)enableSubscriptionForUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__ICMusicSubscriptionStatusController_enableSubscriptionForUserIdentity_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF8BE8;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = identityCopy;
  v9 = handlerCopy;
  v10 = identityCopy;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

void __95__ICMusicSubscriptionStatusController_enableSubscriptionForUserIdentity_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Enabling subscription for user identity %@", buf, 0xCu);
  }

  v6 = [[ICStoreRequestContext alloc] initWithIdentity:*(a1 + 32)];
  v7 = [[ICMusicSubscriptionRequest alloc] initWithStoreRequestContext:v6 requestType:0 requestingOfflineSlot:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__ICMusicSubscriptionStatusController_enableSubscriptionForUserIdentity_withCompletionHandler___block_invoke_62;
  v10[3] = &unk_1E7BF8058;
  v11 = *(a1 + 32);
  v8 = *(a1 + 48);
  v13 = v3;
  v14 = v8;
  v12 = *(a1 + 40);
  v9 = v3;
  [(ICRequestOperation *)v7 performRequestWithCompletionHandler:v10];
}

void __95__ICMusicSubscriptionStatusController_enableSubscriptionForUserIdentity_withCompletionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to enable subscription for user identity %{public}@. err=%{public}@", &v7, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v3);
    }
  }

  else
  {
    [*(a1 + 40) getSubscriptionStatusForUserIdentity:*(a1 + 32) bypassingCache:1 withCompletionHandler:*(a1 + 56)];
  }

  [*(a1 + 48) finishWithError:v3];
}

- (void)enableSubscriptionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ICUserIdentity activeAccount];
  [(ICMusicSubscriptionStatusController *)self enableSubscriptionForUserIdentity:v5 withCompletionHandler:handlerCopy];
}

- (void)performSubscriptionStatusRequest:(id)request withStatusHandler:(id)handler
{
  requestCopy = request;
  if ([(ICMusicSubscriptionStatusController *)self _willPerformSubscriptionStatusRequest:requestCopy withStatusHandler:handler])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke;
    v19[3] = &unk_1E7BF8008;
    v19[4] = self;
    v7 = requestCopy;
    v20 = v7;
    v8 = MEMORY[0x1B8C781E0](v19);
    storeRequestContext = [v7 storeRequestContext];
    identityStore = [storeRequestContext identityStore];
    identity = [storeRequestContext identity];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_3;
    v14[3] = &unk_1E7BF8030;
    v15 = storeRequestContext;
    selfCopy = self;
    v18 = v8;
    v17 = v7;
    v12 = v8;
    v13 = storeRequestContext;
    [identityStore getPropertiesForUserIdentity:identity completionHandler:v14];
  }
}

void __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_2;
  v12[3] = &unk_1E7BFA1F0;
  v12[4] = v8;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_3(id *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a2 isSandboxed])
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] identity];
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Disallowing subscription status request for sandboxed user identity %@", buf, 0xCu);
    }

    v5 = *(a1[5] + 2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_48;
    block[3] = &unk_1E7BF9EC8;
    v23 = a1[4];
    v24 = a1[7];
    dispatch_async(v5, block);

    v6 = v23;
    goto LABEL_14;
  }

  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v7 ic_isCloudDaemon];

  if (v8)
  {
LABEL_13:
    v6 = [[ICMusicSubscriptionStatusRequestOperation alloc] initWithRequest:a1[6]];
    [(ICMusicSubscriptionStatusRequestOperation *)v6 setAllowsFuseHeaderEnrichment:v8];
    [(ICMusicSubscriptionStatusRequestOperation *)v6 setResponseHandler:a1[7]];
    [*(a1[5] + 4) addOperation:v6];
    goto LABEL_14;
  }

  if (([objc_opt_class() _canConnectToMusicSubscriptionStatusService] & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[ICMusicSubscriptionStatusRemoteRequesting machServiceName];
      *buf = 138478083;
      v26 = @"com.apple.security.exception.mach-lookup.global-name";
      v27 = 2113;
      v28 = v15;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "warning: it has recently become deprecated to request the music subscription status in process; the new supported code path fetches it in itunescloudd, but you need to add %{private}@ %{private}@ to your sandbox in order to opt in to this new code path.", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v9 = [a1[6] requestIdentifier];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[5];
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request %{public}@ to subscription status service", buf, 0x16u);
  }

  [a1[5] _willBeginRemoteRequestWithUniqueIdentifier:v9 statusHandler:a1[7]];
  v6 = [a1[5] _remoteRequestingClientConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_56;
  v19 = &unk_1E7BF92E0;
  v20 = a1[5];
  v21 = v9;
  v12 = v9;
  v13 = [(ICMusicSubscriptionStatusRequestOperation *)v6 remoteObjectProxyWithErrorHandler:&v16];
  [v13 performSubscriptionStatusRequest:a1[6] forUniqueIdentifier:{v12, v16, v17, v18, v19, v20}];

LABEL_14:
}

void __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_48(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A278];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 32) identity];
  v4 = [v2 stringWithFormat:@"Disallowing subscription status request for sandboxed user identity %@", v3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v5];
  (*(v6 + 16))(v6, 0, v7);
}

void __90__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withStatusHandler___block_invoke_56(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain remote proxy to perform subscription status request. error = %{public}@.", &v6, 0x16u);
  }

  [*(a1 + 32) deliverSubscriptionStatusResponse:0 forRemoteRequestWithUniqueIdentifier:*(a1 + 40) error:v3];
}

- (void)performSubscriptionStatusRequest:(id)request withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF7FE0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ICMusicSubscriptionStatusController *)self performSubscriptionStatusRequest:request withStatusHandler:v8];
}

void __94__ICMusicSubscriptionStatusController_performSubscriptionStatusRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (![v5 isFinalResponse])
    {
      goto LABEL_6;
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
LABEL_6:
}

- (void)getSubscriptionStatusForUserIdentity:(id)identity bypassingCache:(BOOL)cache withCompletionHandler:(id)handler
{
  cacheCopy = cache;
  identityCopy = identity;
  handlerCopy = handler;
  v10 = [ICStoreRequestContext alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113__ICMusicSubscriptionStatusController_getSubscriptionStatusForUserIdentity_bypassingCache_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7BF7FB8;
  v18 = identityCopy;
  v11 = identityCopy;
  v12 = [(ICStoreRequestContext *)v10 initWithBlock:v17];
  v13 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v12];
  [(ICMusicSubscriptionStatusRequest *)v13 setCarrierBundleProvisioningStyle:1];
  [(ICMusicSubscriptionStatusRequest *)v13 setShouldIgnoreCache:cacheCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__ICMusicSubscriptionStatusController_getSubscriptionStatusForUserIdentity_bypassingCache_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF7FE0;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(ICMusicSubscriptionStatusController *)self performSubscriptionStatusRequest:v13 withCompletionHandler:v15];
}

void __113__ICMusicSubscriptionStatusController_getSubscriptionStatusForUserIdentity_bypassingCache_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentity:v2];
  v4 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v4];
}

void __113__ICMusicSubscriptionStatusController_getSubscriptionStatusForUserIdentity_bypassingCache_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 subscriptionStatus];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)getSubscriptionStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ICUserIdentity activeAccount];
  [(ICMusicSubscriptionStatusController *)self getSubscriptionStatusForUserIdentity:v5 withCompletionHandler:handlerCopy];
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"ICMusicSubscriptionStatusCacheDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"ICMusicSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification" object:0];
  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeFollowingPrivacyAcknowledgementDistributedNotification" object:0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  ic_isCloudDaemon = [processInfo ic_isCloudDaemon];

  if ((ic_isCloudDaemon & 1) == 0)
  {
    [defaultCenter2 removeObserver:self name:@"_ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0];
  }

  if (self->_privacyAcknowledgementObservationToken)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      privacyAcknowledgementObservationToken = self->_privacyAcknowledgementObservationToken;
      *buf = 138543874;
      selfCopy = self;
      v15 = 2114;
      v16 = @"Music";
      v17 = 2114;
      v18 = privacyAcknowledgementObservationToken;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ending observation of privacy acknowledgement for %{public}@ with token %{public}@.", buf, 0x20u);
    }

    v9 = +[ICPrivacyInfo sharedPrivacyInfo];
    [v9 endObservingPrivacyAcknowledgementForIdentifier:@"Music" withToken:self->_privacyAcknowledgementObservationToken];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ICMusicSubscriptionStatusController_dealloc__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);

  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionStatusController;
  [(ICMusicSubscriptionStatusController *)&v11 dealloc];
}

uint64_t __46__ICMusicSubscriptionStatusController_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelRemoteRequestingClientConnectionInvalidationTimer];
  v2 = *(a1 + 32);

  return [v2 _invalidateRemoteRequestingClientConnection];
}

void __43__ICMusicSubscriptionStatusController_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _handlePrivacyAcknowledgementRequirementChanged:a3];
    WeakRetained = v5;
  }
}

@end