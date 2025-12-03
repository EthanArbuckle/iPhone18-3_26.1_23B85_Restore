@interface ICMusicSubscriptionLeaseController
+ (ICMusicSubscriptionLeaseController)sharedController;
- (NSString)lastKnownHouseholdID;
- (id)_init;
- (void)_handlePlaybackLeaseDidEndPushNotification;
- (void)dealloc;
- (void)didMigratePlaybackSession;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)getLastKnownHouseholdIDWithCompletion:(id)completion;
- (void)getLeaseSessionWithRequestContext:(id)context completionHandler:(id)handler;
- (void)musicLeaseSession:(id)session didFinishPlaybackRequest:(id)request withPlaybackResponse:(id)response responseError:(id)error updatedFairPlayKeyStatusList:(id)list completionHandler:(id)handler;
- (void)musicLeaseSession:(id)session requestsFairPlayKeyStatusUpdateWithCompletion:(id)completion;
- (void)receivedUserInteractionEvent;
@end

@implementation ICMusicSubscriptionLeaseController

- (void)_handlePlaybackLeaseDidEndPushNotification
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_cacheKeyToLeaseSession allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) _handlePlaybackLeaseDidEndPushNotification];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)didMigratePlaybackSession
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__35676;
  v16 = __Block_byref_object_dispose__35677;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ICMusicSubscriptionLeaseController_didMigratePlaybackSession__block_invoke;
  block[3] = &unk_1E7BFA430;
  block[4] = self;
  block[5] = &v12;
  dispatch_barrier_sync(accessQueue, block);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v13[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) _didMigratePlaybackSession];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v12, 8);
}

void __63__ICMusicSubscriptionLeaseController_didMigratePlaybackSession__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)receivedUserInteractionEvent
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__35676;
  v16 = __Block_byref_object_dispose__35677;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICMusicSubscriptionLeaseController_receivedUserInteractionEvent__block_invoke;
  block[3] = &unk_1E7BFA430;
  block[4] = self;
  block[5] = &v12;
  dispatch_barrier_sync(accessQueue, block);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v13[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) _receivedUserInteractionEvent];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v12, 8);
}

void __66__ICMusicSubscriptionLeaseController_receivedUserInteractionEvent__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  v5 = [*(*(a1 + 32) + 32) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getLeaseSessionWithRequestContext:(id)context completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  identity = [contextCopy identity];
  identityStore = [contextCopy identityStore];
  v10 = identityStore;
  if (identity && identityStore)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF9070;
    v14[4] = self;
    v18 = handlerCopy;
    v15 = contextCopy;
    v16 = v10;
    v17 = identity;
    [v16 getPropertiesForUserIdentity:v17 completionHandler:v14];
  }

  else if (handlerCopy)
  {
    v19 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get lease session [missing user identity or user identity store] - userIdentity=%@ - userIdentityStore=%@", identity, identityStore];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_2;
    v20[3] = &unk_1E7BF9020;
    v7 = v5;
    v8 = *(a1 + 32);
    v21 = v7;
    v22 = v8;
    v24 = *(a1 + 64);
    v23 = *(a1 + 40);
    v9 = MEMORY[0x1B8C781E0](v20);
    v10 = [*(a1 + 40) delegatedIdentity];
    if (v10)
    {
      v11 = *(a1 + 48);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_11;
      v16[3] = &unk_1E7BF9048;
      v18 = v9;
      v19 = *(a1 + 64);
      v17 = v10;
      [v11 getPropertiesForUserIdentity:v17 completionHandler:v16];
    }

    else
    {
      v9[2](v9, 0);
    }
  }

  else if (*(a1 + 64))
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v12 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get lease session [no properties for user identity] - userIdentity=%@", *(a1 + 56)];
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A278]];

    v14 = *(a1 + 64);
    if (v6)
    {
      (*(v14 + 16))(v14, 0, v6);
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v12];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) DSID];
  v5 = [v3 DSID];
  v6 = [_ICMusicSubscriptionLeaseIdentityCacheKey alloc];
  v7 = [*(a1 + 32) carrierBundleDeviceIdentifier];
  v8 = [(_ICMusicSubscriptionLeaseIdentityCacheKey *)v6 initWithDSID:v4 carrierBundleDeviceIdentifier:v7 delegatedDSID:v5];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__35676;
  v33 = __Block_byref_object_dispose__35677;
  v34 = 0;
  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_3;
  block[3] = &unk_1E7BF97E8;
  v28 = &v29;
  block[4] = v9;
  v11 = v8;
  v27 = v11;
  dispatch_sync(v10, block);
  if (v30[5])
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    v13 = [ICAsyncBlockOperation alloc];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_4;
    v18 = &unk_1E7BF8FF8;
    v19 = *(a1 + 40);
    v25 = &v29;
    v20 = v11;
    v24 = *(a1 + 56);
    v21 = v4;
    v22 = *(a1 + 48);
    v23 = v3;
    v14 = [(ICAsyncBlockOperation *)v13 initWithStartHandler:&v15];
    [*(*(a1 + 40) + 64) addOperation:{v14, v15, v16, v17, v18, v19}];
  }

  _Block_object_dispose(&v29, 8);
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_11(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v14;
  v7 = v5;
  if (v14)
  {
    v8 = [v14 isDelegated];
    v6 = v14;
    if ((v8 & 1) == 0)
    {
      v9 = *(a1[5] + 16);
      goto LABEL_8;
    }
  }

  if ([v6 isDelegated])
  {
    v9 = *(a1[5] + 16);
LABEL_8:
    v9();
    goto LABEL_9;
  }

  if (a1[6])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get lease session [invalid delegated identity] - delegatedIdentity=%@", a1[4]];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];

    v12 = a1[6];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v10];
    (*(v12 + 16))(v12, 0, v13);
  }

LABEL_9:
}

uint64_t __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_5;
  block[3] = &unk_1E7BF97E8;
  v29 = *(a1 + 80);
  block[4] = v5;
  v28 = v4;
  dispatch_sync(v6, block);
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v7 = *(*(a1 + 32) + 16);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_6;
    v24[3] = &unk_1E7BF8F80;
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v25 = v8;
    v26 = v9;
    dispatch_async(v7, v24);
    [v3 finish];
    v10 = v25;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_7;
    v17[3] = &unk_1E7BF8FA8;
    v17[4] = *(a1 + 32);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 40);
    v23 = *(a1 + 72);
    v22 = v3;
    v11 = MEMORY[0x1B8C781E0](v17);
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_9;
    v15[3] = &unk_1E7BF9EC8;
    v15[4] = v12;
    v16 = v11;
    v14 = v11;
    dispatch_barrier_async(v13, v15);

    v10 = v18;
  }
}

uint64_t __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_5(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), 0);
  }

  return result;
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_7(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = &unk_1F2C92368;
  }

  v3 = [*(*(a1 + 32) + 24) objectForKey:v2];
  os_unfair_lock_unlock((*(a1 + 32) + 72));
  v4 = objc_alloc_init(ICMusicSubscriptionLeaseStatus);
  [(ICMusicSubscriptionLeaseStatus *)v4 setShouldPlaybackRequireOnlineKeys:*(*(a1 + 32) + 42)];
  if ([v3 hasOnlinePlaybackKeys])
  {
    [(ICMusicSubscriptionLeaseStatus *)v4 setHasOnlinePlaybackKeys:1];
    [(ICMusicSubscriptionLeaseStatus *)v4 setLeaseState:1];
  }

  -[ICMusicSubscriptionLeaseStatus setHasOfflinePlaybackKeys:](v4, "setHasOfflinePlaybackKeys:", [v3 hasOfflinePlaybackKeys]);
  if (*(*(a1 + 32) + 40) == 1)
  {
    [(ICMusicSubscriptionLeaseStatus *)v4 setHasPendingLeaseAcquisition:1];
  }

  v5 = -[ICMusicSubscriptionLeaseSession _initWithRequestContext:isDelegatedLeaseSession:delegate:leaseStatus:]([ICMusicSubscriptionLeaseSession alloc], "_initWithRequestContext:isDelegatedLeaseSession:delegate:leaseStatus:", *(a1 + 48), [*(a1 + 56) isDelegated], *(a1 + 32), v4);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 32);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *(v8 + 32) = v7;

      v6 = *(*(a1 + 32) + 32);
    }

    [v6 setObject:v5 forKey:*(a1 + 64)];
  }

  v10 = *(*(a1 + 32) + 16);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_8;
  v16 = &unk_1E7BF9EC8;
  v11 = *(a1 + 80);
  v17 = v5;
  v18 = v11;
  v12 = v5;
  dispatch_async(v10, &v13);
  [*(a1 + 72) finish];
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_9(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 72));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 72));
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = +[ICMusicSubscriptionFairPlayController sharedController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_10;
    v5[3] = &unk_1E7BF8FD0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v3 getKeyStatusListWithCompletionHandler:v5];
  }
}

void __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 72));
  [*(*(a1 + 32) + 24) removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (!*(*(a1 + 32) + 24))
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v11 = *(a1 + 32);
          v12 = *(v11 + 24);
          *(v11 + 24) = v10;
        }

        v13 = [v9 accountUniqueIdentifier];
        v14 = *(*(a1 + 32) + 24);
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
        [v14 setObject:v9 forKey:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 72));
  (*(*(a1 + 40) + 16))();
}

uint64_t __90__ICMusicSubscriptionLeaseController_getLeaseSessionWithRequestContext_completionHandler___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (void)getLastKnownHouseholdIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__ICMusicSubscriptionLeaseController_getLastKnownHouseholdIDWithCompletion___block_invoke;
    v7[3] = &unk_1E7BF9EC8;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(accessQueue, v7);
  }
}

void __76__ICMusicSubscriptionLeaseController_getLastKnownHouseholdIDWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ICMusicSubscriptionLeaseController_getLastKnownHouseholdIDWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BF9EC8;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)musicLeaseSession:(id)session requestsFairPlayKeyStatusUpdateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - musicLeaseSession:requestsFairPlayKeyStatusUpdateWithCompletion:", buf, 0xCu);
  }

  v9 = +[ICMusicSubscriptionFairPlayController sharedController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke;
  v12[3] = &unk_1E7BF8F58;
  v12[4] = self;
  v13 = sessionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = sessionCopy;
  [v9 getKeyStatusListWithCompletionHandler:v12];
}

void __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v34 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 72));
  [*(*(a1 + 32) + 24) removeAllObjects];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v7)
  {
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        if (!*(*(a1 + 32) + 24))
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = *(a1 + 32);
          v13 = *(v12 + 24);
          *(v12 + 24) = v11;
        }

        v14 = [v10 accountUniqueIdentifier];
        v15 = *(*(a1 + 32) + 24);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
        [v15 setObject:v10 forKey:v16];
      }

      v7 = [v6 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 72));
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__35676;
  v46 = __Block_byref_object_dispose__35677;
  v47 = 0;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(v18 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke_2;
  v39[3] = &unk_1E7BF8F10;
  v39[4] = v18;
  v40 = v17;
  v41 = &v42;
  [v19 enumerateKeysAndObjectsUsingBlock:v39];
  if (!v43[5])
  {
    v20 = [*(a1 + 40) leaseStatus];
    v21 = v43[5];
    v43[5] = v20;

    v22 = [v6 msv_firstWhere:&__block_literal_global_28];

    v23 = [v6 msv_firstWhere:&__block_literal_global_30];

    if (v22)
    {
      v24 = 0;
      if (v23)
      {
LABEL_13:
        v25 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v24 = [v43[5] hasOnlinePlaybackKeys];
      if (v23)
      {
        goto LABEL_13;
      }
    }

    v25 = [v43[5] hasOfflinePlaybackKeys];
LABEL_16:
    if ((v24 | v25))
    {
      v26 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        *buf = 138544130;
        v53 = v27;
        v54 = 2114;
        v55 = v28;
        v56 = 1024;
        v57 = v22 != 0;
        v58 = 1024;
        v59 = v23 != 0;
        _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - musicLeaseSession:requestsFairPlayKeyStatusUpdateWithCompletion: - Returned keyStatusList does not contains data for %{public}@, deviceHasOnlinePlaybackKeys: %{BOOL}u, deviceHasOfflinePlaybackKeys: %{BOOL}u", buf, 0x22u);
      }

      v29 = [v43[5] copy];
      v30 = v43[5];
      v43[5] = v29;

      if (v24)
      {
        if ([v43[5] leaseState] == 1)
        {
          [v43[5] setLeaseState:0];
        }

        [v43[5] setHasOnlinePlaybackKeys:v22 != 0];
      }

      if (v25)
      {
        [v43[5] setHasOfflinePlaybackKeys:v23 != 0];
      }

      [*(a1 + 40) _setLeaseStatus:v43[5] updatedLeaseExpirationDate:{0, v34}];
    }
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke_31;
    block[3] = &unk_1E7BF99D8;
    block[4] = v32;
    v38 = &v42;
    v37 = v31;
    v36 = v34;
    dispatch_async(v33, block);
  }

  _Block_object_dispose(&v42, 8);
}

void __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = [v15 leaseStatus];
  v7 = [v6 copy];

  v8 = [v7 leaseState];
  v9 = [v5 DSID];

  v10 = &unk_1F2C92368;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = [v7 stateReasonDialog];
  os_unfair_lock_lock((a1[4] + 72));
  v13 = [*(a1[4] + 24) objectForKey:v11];

  os_unfair_lock_unlock((a1[4] + 72));
  if ([v13 hasOnlinePlaybackKeys])
  {

    v12 = 0;
    v8 = 1;
  }

  else if (v8 == 1)
  {
    v8 = 0;
  }

  [v7 setStateReasonDialog:v12];
  [v7 setLeaseState:v8];
  [v7 setHasOnlinePlaybackKeys:{objc_msgSend(v13, "hasOnlinePlaybackKeys")}];
  [v7 setHasOfflinePlaybackKeys:{objc_msgSend(v13, "hasOfflinePlaybackKeys")}];
  v14 = v15;
  if (a1[5] == v15)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    v14 = v15;
  }

  [v14 _setLeaseStatus:v7 updatedLeaseExpirationDate:0];
}

uint64_t __102__ICMusicSubscriptionLeaseController_musicLeaseSession_requestsFairPlayKeyStatusUpdateWithCompletion___block_invoke_31(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(*(a1[7] + 8) + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - musicLeaseSession:requestsFairPlayKeyStatusUpdateWithCompletion: - Completing with lease status: %{public}@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

- (void)musicLeaseSession:(id)session didFinishPlaybackRequest:(id)request withPlaybackResponse:(id)response responseError:(id)error updatedFairPlayKeyStatusList:(id)list completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  listCopy = list;
  handlerCopy = handler;
  v20 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v38 = 2048;
    v39 = responseCopy;
    v40 = 1024;
    v41 = [listCopy count];
    v42 = 2114;
    v43 = errorCopy;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - musicLeaseSession:didFinishPlaybackRequest:withPlaybackResponse: finshed with response=%p, updatedFairPlayKeyStatusList(count)=%d, error=%{public}@...", buf, 0x26u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  if (responseCopy)
  {
    v22 = errorCopy == 0;
  }

  else
  {
    v22 = 0;
  }

  block[1] = 3221225472;
  block[2] = __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke;
  block[3] = &unk_1E7BF8EE8;
  v23 = v22;
  v35 = v23;
  block[4] = self;
  v30 = responseCopy;
  v31 = listCopy;
  v32 = sessionCopy;
  v33 = requestCopy;
  v34 = handlerCopy;
  v24 = handlerCopy;
  v25 = requestCopy;
  v26 = sessionCopy;
  v27 = listCopy;
  v28 = responseCopy;
  dispatch_barrier_sync(accessQueue, block);
}

void __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 42) = *(a1 + 80);
  v2 = [*(a1 + 40) householdID];
  v25 = v2;
  if (v2)
  {
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = +[ICDefaults standardDefaults];
    [v6 setLastKnownHouseholdID:v25];
  }

  if (*(a1 + 48))
  {
    os_unfair_lock_lock((*(a1 + 32) + 72));
    [*(*(a1 + 32) + 24) removeAllObjects];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v8)
    {
      v9 = *v53;
      do
      {
        v10 = 0;
        do
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v52 + 1) + 8 * v10);
          if (!*(*(a1 + 32) + 24))
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v13 = *(a1 + 32);
            v14 = *(v13 + 24);
            *(v13 + 24) = v12;
          }

          v15 = [v11 accountUniqueIdentifier];
          v16 = *(*(a1 + 32) + 24);
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
          [v16 setObject:v11 forKey:v17];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 72));
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__35676;
  v50 = __Block_byref_object_dispose__35677;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__35676;
  v44[4] = __Block_byref_object_dispose__35677;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__35676;
  v42 = __Block_byref_object_dispose__35677;
  v43 = 0;
  v18 = *(a1 + 32);
  v19 = *(v18 + 32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_2;
  v30[3] = &unk_1E7BF8E98;
  v37 = *(a1 + 80);
  v30[4] = v18;
  v31 = *(a1 + 56);
  v32 = *(a1 + 40);
  v34 = &v38;
  v33 = *(a1 + 64);
  v35 = &v46;
  v36 = v44;
  [v19 enumerateKeysAndObjectsUsingBlock:v30];
  if (!v47[5])
  {
    v20 = [*(a1 + 56) leaseStatus];
    v21 = v47[5];
    v47[5] = v20;
  }

  v22 = v39[5];
  v23 = *(*(a1 + 32) + 16);
  if (v22)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF8EC0;
    v24 = v27;
    v27[0] = *(a1 + 72);
    v27[1] = &v46;
    v27[2] = v44;
    dispatch_group_notify(v22, v23, block);
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_2_25;
    v28[3] = &unk_1E7BF8EC0;
    v24 = v29;
    v29[0] = *(a1 + 72);
    v29[1] = &v46;
    v29[2] = v44;
    dispatch_async(v23, v28);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(&v46, 8);
}

void __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [v5 leaseStatus];
  v8 = [v7 copy];

  [v8 setShouldPlaybackRequireOnlineKeys:*(a1 + 88)];
  v9 = [v6 DSID];

  v10 = &unk_1F2C92368;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  os_unfair_lock_lock((*(a1 + 32) + 72));
  v12 = [*(*(a1 + 32) + 24) objectForKey:v11];
  os_unfair_lock_unlock((*(a1 + 32) + 72));
  v13 = [v8 leaseState];
  v14 = [v8 stateReasonDialog];
  v15 = [v8 stateReasonDialogMetricsDictionary];
  if (*(a1 + 40) == v5)
  {
    v16 = [*(a1 + 48) serverError];
    v17 = v16;
    if (v16)
    {
      v38 = v11;
      [v16 domain];
      v19 = v18 = v17;
      v20 = [v19 isEqualToString:@"ICStoreServerError"];

      if (v20)
      {
        v21 = [v18 code];
        v17 = v18;
        if ((v21 - 3059) > 0x19)
        {
LABEL_18:
          v11 = v38;
          goto LABEL_21;
        }

        v11 = v38;
        if (((1 << (v21 + 13)) & 0x2000003) == 0)
        {
LABEL_21:

          goto LABEL_22;
        }

        v22 = [*(a1 + 48) dialog];

        v23 = [*(a1 + 48) metricsDictionary];

        v24 = *(*(*(a1 + 64) + 8) + 40);
        if (!v24)
        {
          v25 = dispatch_group_create();
          v26 = *(*(a1 + 64) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;

          v24 = *(*(*(a1 + 64) + 8) + 40);
        }

        dispatch_group_enter(v24);
        v28 = +[ICMusicSubscriptionFairPlayController sharedController];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_23;
        v39[3] = &unk_1E7BF8E70;
        v39[4] = *(a1 + 64);
        [v28 stopSubscriptionLeaseWithCompletion:v39];

        if (!v12)
        {
          v13 = 2;
          v15 = v23;
          v14 = v22;
          goto LABEL_21;
        }

        v18 = v17;
        v29 = [v12 copy];

        [v29 setHasOnlinePlaybackKeys:0];
        os_unfair_lock_lock((*(a1 + 32) + 72));
        [*(*(a1 + 32) + 24) setObject:v29 forKey:v38];
        os_unfair_lock_unlock((*(a1 + 32) + 72));
        v13 = 2;
        v15 = v23;
        v14 = v22;
        v12 = v29;
      }
    }

    else
    {
      v30 = +[ICDefaults standardDefaults];
      if (![v30 shouldForceStreamingOnlyKeysForPlayback])
      {

        goto LABEL_21;
      }

      v38 = v11;
      v18 = 0;
      v31 = [v12 hasOfflinePlaybackKeys];

      if (v31)
      {
        v32 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          *buf = 138543362;
          v41 = v33;
          _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - Resetting default to force streaming-only playback keys now that we have offline FairPlay keys", buf, 0xCu);
        }

        v34 = +[ICDefaults standardDefaults];
        [v34 setShouldForceStreamingOnlyKeysForPlayback:0];
      }
    }

    v17 = v18;
    goto LABEL_18;
  }

LABEL_22:
  if ([v12 hasOnlinePlaybackKeys])
  {
    if (*(a1 + 40) == v5 && (v36 = *(a1 + 48)) != 0)
    {
      v35 = [v36 leaseExpirationDate];
    }

    else
    {
      v35 = 0;
    }

    v14 = 0;
    v13 = 1;
  }

  else
  {
    v35 = 0;
    if (v13 == 1)
    {
      v13 = 0;
    }
  }

  [v8 setStateReasonDialog:v14];
  [v8 setStateReasonDialogMetricsDictionary:v15];
  [v8 setLeaseState:v13];
  if (v13 == 2)
  {
    v37 = [*(a1 + 56) isTriggeredByLeasePrevention];
  }

  else
  {
    v37 = 0;
  }

  [v8 setTakenDueToLeasePrevention:v37];
  [v8 setHasOnlinePlaybackKeys:{objc_msgSend(v12, "hasOnlinePlaybackKeys")}];
  [v8 setHasOfflinePlaybackKeys:{objc_msgSend(v12, "hasOfflinePlaybackKeys")}];
  if (*(a1 + 40) == v5)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v8);
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v35);
  }

  else
  {
    [v5 _setLeaseStatus:v8 updatedLeaseExpirationDate:v35];
  }
}

uint64_t __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_2_25(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t __163__ICMusicSubscriptionLeaseController_musicLeaseSession_didFinishPlaybackRequest_withPlaybackResponse_responseError_updatedFairPlayKeyStatusList_completionHandler___block_invoke_3(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__ICMusicSubscriptionLeaseController_environmentMonitorDidChangeNetworkReachability___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = reachabilityCopy;
  selfCopy = self;
  v6 = reachabilityCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __85__ICMusicSubscriptionLeaseController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isRemoteServerLikelyReachable];
  v3 = *(a1 + 40);
  if (*(v3 + 41) != v2)
  {
    *(v3 + 41) = v2;
    v4 = *(a1 + 40);
    if (*(v4 + 41))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [*(v4 + 32) allValues];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * i) _handleRemoteServerDidBecomeLikelyReachable];
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v10 = *(v4 + 32);

      [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_18_35738];
    }
  }
}

void __85__ICMusicSubscriptionLeaseController_environmentMonitorDidChangeNetworkReachability___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 leaseStatus];
  v5 = [v4 copy];

  [v5 setShouldPlaybackRequireOnlineKeys:0];
  [v3 _setLeaseStatus:v5 updatedLeaseExpirationDate:0];
}

- (NSString)lastKnownHouseholdID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35676;
  v10 = __Block_byref_object_dispose__35677;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__ICMusicSubscriptionLeaseController_lastKnownHouseholdID__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __58__ICMusicSubscriptionLeaseController_lastKnownHouseholdID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)dealloc
{
  v3 = +[ICEnvironmentMonitor sharedMonitor];
  [v3 unregisterObserver:self];

  notify_cancel(self->_leaseDidEndNotificationToken);
  v4.receiver = self;
  v4.super_class = ICMusicSubscriptionLeaseController;
  [(ICMusicSubscriptionLeaseController *)&v4 dealloc];
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = ICMusicSubscriptionLeaseController;
  v2 = [(ICMusicSubscriptionLeaseController *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E69E96A8];
    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionLeaseController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v5;

    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionLeaseController.accessQueue", v4);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v7;

    v9 = +[ICEnvironmentMonitor sharedMonitor];
    v3->_isRemoteServerLikelyReachable = [v9 isRemoteServerLikelyReachable];
    [v9 registerObserver:v3];
    v3->_isServerReachable = v3->_isRemoteServerLikelyReachable;
    v10 = +[ICDefaults standardDefaults];
    lastKnownHouseholdID = [v10 lastKnownHouseholdID];
    lastKnownHouseholdID = v3->_lastKnownHouseholdID;
    v3->_lastKnownHouseholdID = lastKnownHouseholdID;

    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    leaseSessionPreparationOperationQueue = v3->_leaseSessionPreparationOperationQueue;
    v3->_leaseSessionPreparationOperationQueue = v13;

    [(NSOperationQueue *)v3->_leaseSessionPreparationOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_leaseSessionPreparationOperationQueue setName:@"com.apple.iTunesCloud.ICMusicSubscriptionLeaseController.leaseSessionPreparationOperationQueue"];
    [(NSOperationQueue *)v3->_leaseSessionPreparationOperationQueue setQualityOfService:25];
    objc_initWeak(&location, v3);
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionLeaseController.notificationSerialQueue", v15);

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__ICMusicSubscriptionLeaseController__init__block_invoke;
    v18[3] = &unk_1E7BF8E28;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch("com.apple.itunesstored.PlaybackLeaseDidEnd", &v3->_leaseDidEndNotificationToken, v16, v18);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__ICMusicSubscriptionLeaseController__init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:@"ICMusicSubscriptionLeaseIgnorePushNotifications"])
  {
    v3 = +[ICDeviceInfo currentDeviceInfo];
    v4 = [v3 isInternalBuild];

    if (v4)
    {
      return;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaybackLeaseDidEndPushNotification];
}

+ (ICMusicSubscriptionLeaseController)sharedController
{
  if (sharedController_sOnceToken_35759 != -1)
  {
    dispatch_once(&sharedController_sOnceToken_35759, &__block_literal_global_35760);
  }

  v3 = sharedController_sSharedController_35761;

  return v3;
}

uint64_t __54__ICMusicSubscriptionLeaseController_sharedController__block_invoke()
{
  v0 = [[ICMusicSubscriptionLeaseController alloc] _init];
  v1 = sharedController_sSharedController_35761;
  sharedController_sSharedController_35761 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end