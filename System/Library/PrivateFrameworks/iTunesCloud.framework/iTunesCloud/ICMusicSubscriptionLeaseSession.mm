@interface ICMusicSubscriptionLeaseSession
+ (id)_sharedOperationQueue;
- (BOOL)isAutomaticallyRefreshingLease;
- (ICMusicSubscriptionLeaseSessionDelegate)delegate;
- (ICMusicSubscriptionLeaseStatus)leaseStatus;
- (NSDate)lastPlaybackRequestDate;
- (id)_initWithRequestContext:(id)context isDelegatedLeaseSession:(BOOL)session delegate:(id)delegate leaseStatus:(id)status;
- (id)_newOperationForPlaybackRequest:(id)request completionHandler:(id)handler;
- (id)description;
- (id)performPlaybackRequest:(id)request completionHandler:(id)handler;
- (void)_didMigratePlaybackSession;
- (void)_handlePlaybackLeaseDidEndPushNotification;
- (void)_handleRemoteServerDidBecomeLikelyReachable;
- (void)_locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady;
- (void)_locked_performAutomaticRefresh;
- (void)_locked_setLeaseStatus:(id)status updatedLeaseExpirationDate:(id)date;
- (void)_locked_updateAutomaticRefreshProperties;
- (void)_receivedUserInteractionEvent;
- (void)_setLeaseStatus:(id)status updatedLeaseExpirationDate:(id)date;
- (void)beginAutomaticallyRefreshingLease;
- (void)dealloc;
- (void)endAutomaticallyRefreshingLease;
- (void)reloadFairPlayKeyStatusWithCompletionHandler:(id)handler;
@end

@implementation ICMusicSubscriptionLeaseSession

- (ICMusicSubscriptionLeaseSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_hasPendingLeaseDidEndPushNotification)
  {
    if (self->_automaticRefreshCount)
    {
      if ([(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasInflightLeaseAcquisition])
      {
        v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          v4 = "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Deferred until the in-flight lease acquisition completed [hasInflightLeaseAcquisition:YES]";
LABEL_16:
          _os_log_impl(&dword_1B4491000, &v3->super, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
        }
      }

      else
      {
        self->_hasPendingLeaseDidEndPushNotification = 0;
        if ([(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasOnlinePlaybackKeys])
        {
          v3 = [[ICMusicSubscriptionLeasePlaybackRequest alloc] initWithRequestContext:self->_requestContext];
          [(ICMusicSubscriptionLeasePlaybackRequest *)v3 setShouldPreventLeaseAcquisition:1];
          [(ICMusicSubscriptionLeasePlaybackRequest *)v3 setTriggeredByLeasePrevention:1];
          _sharedOperationQueue = [objc_opt_class() _sharedOperationQueue];
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __98__ICMusicSubscriptionLeaseSession__locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady__block_invoke;
          v8[3] = &unk_1E7BF7060;
          v8[4] = self;
          v6 = [(ICMusicSubscriptionLeaseSession *)self _newOperationForPlaybackRequest:v3 completionHandler:v8];
          [_sharedOperationQueue addOperation:v6];
          v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy5 = self;
            _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Handled", buf, 0xCu);
          }
        }

        else
        {
          v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
          if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy5 = self;
            v4 = "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Dropped [hasOnlinePlaybackKeys:NO]";
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
      v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        v4 = "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Deferred until refresh timer gets activated [_automaticRefreshCount:0]";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      v4 = "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Dropped [_hasPendingLeaseDidEndPushNotification:NO]";
      goto LABEL_16;
    }
  }
}

void __98__ICMusicSubscriptionLeaseSession__locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Completed error=%{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - PlaybackLeaseDidEndPushNotification - Completed", &v11, 0xCu);
  }
}

- (void)_locked_updateAutomaticRefreshProperties
{
  v26 = *MEMORY[0x1E69E9840];
  automaticRefreshTimerSource = self->_automaticRefreshTimerSource;
  if (automaticRefreshTimerSource)
  {
    dispatch_source_cancel(self->_automaticRefreshTimerSource);
    v4 = self->_automaticRefreshTimerSource;
    self->_automaticRefreshTimerSource = 0;
  }

  if (self->_automaticRefreshCount >= 1 && [(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasOnlinePlaybackKeys]&& (leaseExpirationDate = self->_leaseExpirationDate) != 0)
  {
    [(NSDate *)leaseExpirationDate timeIntervalSinceNow];
    v7 = v6;
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v24 = 2048;
      v25 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - Automatic lease refresh timer enabled with time left: %f.", buf, 0x16u);
    }

    if (v7 < 1.0)
    {
      if (self->_lastLeaseAcquisitionAttempt)
      {
        v9 = [MEMORY[0x1E695DF00] now];
        [v9 timeIntervalSinceDate:self->_lastLeaseAcquisitionAttempt];
        v11 = v10;

        if (v11 < 120.0)
        {
          v7 = 120.0 - v11;
          v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy3 = self;
            v24 = 2048;
            v25 = 120.0 - v11;
            _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - Delaying lease refresh for %fs due to recent attempts", buf, 0x16u);
          }
        }
      }
    }

    if (v7 >= 1.0)
    {
      if (!self->_isPerformingAutomaticRefresh)
      {
        v14 = dispatch_get_global_queue(0, 0);
        v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
        v16 = self->_automaticRefreshTimerSource;
        self->_automaticRefreshTimerSource = v15;

        v17 = self->_automaticRefreshTimerSource;
        v18 = dispatch_time(0, (v7 * 1000000000.0));
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
        objc_initWeak(buf, self);
        v19 = self->_automaticRefreshTimerSource;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __75__ICMusicSubscriptionLeaseSession__locked_updateAutomaticRefreshProperties__block_invoke;
        handler[3] = &unk_1E7BFA328;
        objc_copyWeak(&v21, buf);
        dispatch_source_set_event_handler(v19, handler);
        dispatch_resume(self->_automaticRefreshTimerSource);
        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(ICMusicSubscriptionLeaseSession *)self _locked_performAutomaticRefresh];
    }
  }

  else if (automaticRefreshTimerSource)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - Automatic lease refresh timer disabled.", buf, 0xCu);
    }
  }
}

void __75__ICMusicSubscriptionLeaseSession__locked_updateAutomaticRefreshProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] lock];
    [v2 _locked_updateAutomaticRefreshProperties];
    [v2[1] unlock];
    WeakRetained = v2;
  }
}

- (void)_locked_setLeaseStatus:(id)status updatedLeaseExpirationDate:(id)date
{
  statusCopy = status;
  dateCopy = date;
  leaseStatus = self->_leaseStatus;
  if (leaseStatus == statusCopy || [(ICMusicSubscriptionLeaseStatus *)leaseStatus isEqual:statusCopy])
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_leaseStatus, status);
    v10 = 1;
  }

  if ([(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasOnlinePlaybackKeys])
  {
    if (!dateCopy)
    {
      goto LABEL_10;
    }

    v11 = [dateCopy copy];
  }

  else
  {
    v11 = 0;
  }

  leaseExpirationDate = self->_leaseExpirationDate;
  self->_leaseExpirationDate = v11;

LABEL_10:
  [(ICMusicSubscriptionLeaseSession *)self _locked_updateAutomaticRefreshProperties];
  if (v10)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__ICMusicSubscriptionLeaseSession__locked_setLeaseStatus_updatedLeaseExpirationDate___block_invoke;
    block[3] = &unk_1E7BFA300;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

void __85__ICMusicSubscriptionLeaseSession__locked_setLeaseStatus_updatedLeaseExpirationDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:ICMusicSubscriptionLeaseSessionLeaseStatusDidChangeNotification object:*(a1 + 32)];
}

- (void)_locked_performAutomaticRefresh
{
  if (!self->_isPerformingAutomaticRefresh)
  {
    automaticRefreshTimerSource = self->_automaticRefreshTimerSource;
    if (automaticRefreshTimerSource)
    {
      dispatch_source_cancel(automaticRefreshTimerSource);
      v4 = self->_automaticRefreshTimerSource;
      self->_automaticRefreshTimerSource = 0;
    }

    objc_initWeak(&location, self);
    self->_isPerformingAutomaticRefresh = 1;
    v5 = [ICMusicSubscriptionLeasePlaybackRequest alloc];
    requestContext = [(ICMusicSubscriptionLeaseSession *)self requestContext];
    v7 = [(ICMusicSubscriptionLeasePlaybackRequest *)v5 initWithRequestContext:requestContext];

    [(ICMusicSubscriptionLeasePlaybackRequest *)v7 setShouldPreventLeaseAcquisition:1];
    _sharedOperationQueue = [objc_opt_class() _sharedOperationQueue];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __66__ICMusicSubscriptionLeaseSession__locked_performAutomaticRefresh__block_invoke;
    v13 = &unk_1E7BF7038;
    objc_copyWeak(&v14, &location);
    v9 = [(ICMusicSubscriptionLeaseSession *)self _newOperationForPlaybackRequest:v7 completionHandler:&v10];
    [_sharedOperationQueue addOperation:{v9, v10, v11, v12, v13}];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __66__ICMusicSubscriptionLeaseSession__locked_performAutomaticRefresh__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] lock];
    *(v2 + 40) = 0;
    [v2 _locked_updateAutomaticRefreshProperties];
    [v2[1] unlock];
    WeakRetained = v2;
  }
}

- (id)_newOperationForPlaybackRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [request copy];
  v8 = [ICAsyncBlockOperation alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF8BE8;
  v14 = v7;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = v7;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v13];

  return v11;
}

void __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke(id *a1, void *a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "[AL] - ICMusicSubscriptionPlaybackRequestOperation canceled - request: %{public}@", &buf, 0xCu);
    }

    v6 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A278];
    v61[0] = @"Playback request operation was canceled";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v8 = [v6 errorWithDomain:@"ICError" code:-7004 userInfo:v7];

    v9 = *(a1[5] + 4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_30;
    block[3] = &unk_1E7BF9EC8;
    v10 = a1[6];
    v55 = v8;
    v56 = v10;
    v11 = v8;
    dispatch_async(v9, block);
    [v3 finishWithError:v11];

    v12 = &v56;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v14 = [MEMORY[0x1E696AF00] currentThread];
    [v13 setQualityOfService:{objc_msgSend(v14, "qualityOfService")}];

    [v13 setName:@"com.apple.iTunesCloud.ICMusicSubscriptionLeaseSession.innerOperationQueue"];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_2;
    v50[3] = &unk_1E7BF6F98;
    v15 = a1[6];
    v16 = a1[5];
    v53 = v15;
    v50[4] = v16;
    v17 = v3;
    v51 = v17;
    v11 = v13;
    v52 = v11;
    v18 = MEMORY[0x1B8C781E0](v50);
    v19 = [MEMORY[0x1E695DF00] now];
    v20 = *(a1[5] + 11);
    *(a1[5] + 11) = v19;

    v21 = objc_alloc_init(ICMusicSubscriptionPlaybackRequestOperation);
    v22 = [a1[4] assetSourceStorefrontID];
    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setAssetSourceStorefrontID:v22];

    -[ICMusicSubscriptionPlaybackRequestOperation setStoreCloudID:](v21, "setStoreCloudID:", [a1[4] storeCloudID]);
    -[ICMusicSubscriptionPlaybackRequestOperation setStoreSubscriptionAdamID:](v21, "setStoreSubscriptionAdamID:", [a1[4] storeSubscriptionAdamID]);
    -[ICMusicSubscriptionPlaybackRequestOperation setStorePurchasedAdamID:](v21, "setStorePurchasedAdamID:", [a1[4] storePurchasedAdamID]);
    v23 = [a1[4] cloudUniversalLibraryID];
    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setCloudUniversalLibraryID:v23];

    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setDelegatedPlayback:*(a1[5] + 96)];
    -[ICMusicSubscriptionPlaybackRequestOperation setFollowUp:](v21, "setFollowUp:", [a1[4] isFollowUp]);
    v24 = [a1[4] requestContext];
    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setRequestContext:v24];

    objc_initWeak(&location, a1[5]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x2020000000;
    v59 = 0;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_4;
    v44[3] = &unk_1E7BF6FC0;
    v45 = a1[4];
    objc_copyWeak(&v48, &location);
    v46 = a1[5];
    p_buf = &buf;
    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setWillBeginExecutionHandler:v44];
    objc_initWeak(&from, v21);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_37;
    v35[3] = &unk_1E7BF7010;
    v25 = v17;
    v36 = v25;
    objc_copyWeak(&v41, &from);
    objc_copyWeak(&v42, &location);
    v26 = a1[4];
    v40 = &buf;
    v27 = a1[5];
    v37 = v26;
    v38 = v27;
    v28 = v18;
    v39 = v28;
    [(ICMusicSubscriptionPlaybackRequestOperation *)v21 setResponseHandler:v35];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_41;
    v33 = &unk_1E7BFA300;
    v29 = v21;
    v34 = v29;
    [v25 setCancellationHandler:&v30];
    [v11 addOperation:{v29, v30, v31, v32, v33}];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&from);
    objc_destroyWeak(&v48);

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(&location);

    v12 = &v53;
  }
}

void __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_3;
    v15 = &unk_1E7BF9E78;
    v19 = v10;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    dispatch_async(v11, &v12);
  }

  [*(a1 + 40) finishWithError:{v9, v12, v13, v14, v15}];
}

void __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldPreventLeaseAcquisition])
  {
    v4 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[1] lock];
      v7 = [v6[6] hasPendingLeaseAcquisition];
      *(*(*(a1 + 48) + 8) + 24) = v6[7];
      [v6[1] unlock];
      if (v7)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  [v3 setRequestType:v4];
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = [v3 requestType];
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _newOperationForPlaybackRequest - Will start playback request operation - Request: %{public}@ - Type: %ld", &v12, 0x20u);
  }
}

void __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [*(a1 + 32) setCancellationHandler:0];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v14 = [WeakRetained requestType];

  v15 = objc_loadWeakRetained((a1 + 80));
  v16 = [v15 delegate];
  if (v16)
  {
    v21 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_2_38;
    v22[3] = &unk_1E7BF6FE8;
    v23 = v15;
    v17 = v9;
    v18 = *(a1 + 64);
    v24 = v17;
    v29 = v18;
    v30 = v14;
    v20 = *(a1 + 40);
    v19 = v20.i64[0];
    v25 = vextq_s8(v20, v20, 8uLL);
    v28 = *(a1 + 56);
    v26 = v11;
    v27 = v12;
    [v16 musicLeaseSession:v23 didFinishPlaybackRequest:v21 withPlaybackResponse:v17 responseError:v27 updatedFairPlayKeyStatusList:v10 completionHandler:v22];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __85__ICMusicSubscriptionLeaseSession__newOperationForPlaybackRequest_completionHandler___block_invoke_2_38(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_19;
  }

  [*(v7 + 8) lock];
  if (*(a1 + 40))
  {
    if (*(a1 + 96) == 2)
    {
      v8 = *(a1 + 32);
      if (*(v8 + 56) == *(*(*(a1 + 88) + 8) + 24))
      {
        if ([*(v8 + 48) hasPendingLeaseAcquisition])
        {
          v9 = v6;
          v10 = 0;
LABEL_11:
          [v9 setHasPendingLeaseAcquisition:v10];
          goto LABEL_12;
        }
      }
    }
  }

  v11 = [*(*(a1 + 32) + 48) hasPendingLeaseAcquisition];
  if (v11 != [v6 hasPendingLeaseAcquisition])
  {
    v12 = [*(*(a1 + 32) + 48) hasPendingLeaseAcquisition];
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v21 = 138543874;
      v22 = v14;
      v23 = 2114;
      v24 = v6;
      v25 = 1024;
      LODWORD(v26) = v12;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _newOperationForPlaybackRequest - updated status: %{public}@, will change hasPendingLeaseAcquisition to the latest value: %{BOOL}u", &v21, 0x1Cu);
    }

    v9 = v6;
    v10 = v12;
    goto LABEL_11;
  }

LABEL_12:
  v15 = *(*(a1 + 32) + 64);
  v16 = *(*(*(a1 + 88) + 8) + 24);
  if (v15 <= v16)
  {
    [v6 setHasInflightLeaseAcquisition:0];
  }

  v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 96);
    v21 = 138544130;
    v22 = v18;
    v23 = 2114;
    v24 = v19;
    v25 = 2048;
    v26 = v20;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _newOperationForPlaybackRequest - Completed playback request operation - Request: %{public}@ - Type: %ld - status: %{public}@", &v21, 0x2Au);
  }

  [*(a1 + 32) _locked_setLeaseStatus:v6 updatedLeaseExpirationDate:v5];
  if (v15 <= v16)
  {
    [*(a1 + 32) _locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady];
  }

  [*(*(a1 + 32) + 8) unlock];
LABEL_19:
  (*(*(a1 + 80) + 16))();
}

- (void)_setLeaseStatus:(id)status updatedLeaseExpirationDate:(id)date
{
  dateCopy = date;
  v7 = [status copy];
  [(NSRecursiveLock *)self->_lock lock];
  [(ICMusicSubscriptionLeaseSession *)self _locked_setLeaseStatus:v7 updatedLeaseExpirationDate:dateCopy];

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_didMigratePlaybackSession
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_leaseExpirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    leaseExpirationDate = self->_leaseExpirationDate;
    self->_leaseExpirationDate = date;

    leaseStatus = [(ICMusicSubscriptionLeaseSession *)self leaseStatus];
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = leaseStatus;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _didMigratePlaybackSession - leaseStatus: %{public}@", &v7, 0x16u);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_receivedUserInteractionEvent
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  leaseStatus = self->_leaseStatus;
  ++self->_pendingLeaseAcquisitionRevisionID;
  if (![(ICMusicSubscriptionLeaseStatus *)leaseStatus hasPendingLeaseAcquisition])
  {
    v4 = [(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus copy];
    [v4 setHasPendingLeaseAcquisition:1];
    [(ICMusicSubscriptionLeaseSession *)self _locked_setLeaseStatus:v4 updatedLeaseExpirationDate:0];
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _receivedUserInteractionEvent - leaseStatus: %{public}@", &v6, 0x16u);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_handleRemoteServerDidBecomeLikelyReachable
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(ICMusicSubscriptionLeaseSession *)self isAutomaticallyRefreshingLease])
  {
    return;
  }

  leaseStatus = [(ICMusicSubscriptionLeaseSession *)self leaseStatus];
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if (([v4 isWatch] & 1) == 0)
  {

    goto LABEL_6;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (!isLowPowerModeEnabled)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v7 = [leaseStatus leaseState] == 0;
LABEL_7:
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "skipping";
    if (v7)
    {
      v9 = "performing";
    }

    v13 = 138543618;
    selfCopy = self;
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _handleRemoteServerDidBecomeLikelyReachable: %{public}s renewal", &v13, 0x16u);
  }

  if (v7)
  {
    v10 = [[ICMusicSubscriptionLeasePlaybackRequest alloc] initWithRequestContext:self->_requestContext];
    _sharedOperationQueue = [objc_opt_class() _sharedOperationQueue];
    v12 = [(ICMusicSubscriptionLeaseSession *)self _newOperationForPlaybackRequest:v10 completionHandler:&__block_literal_global_26278];
    [_sharedOperationQueue addOperation:v12];
  }
}

- (void)_handlePlaybackLeaseDidEndPushNotification
{
  v12 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  self->_hasPendingLeaseDidEndPushNotification = 1;
  [(NSDate *)self->_leaseExpirationDate timeIntervalSinceNow];
  if (v3 >= 0.0)
  {
    date = [MEMORY[0x1E695DF00] date];
    leaseExpirationDate = self->_leaseExpirationDate;
    self->_leaseExpirationDate = date;
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    hasPendingLeaseDidEndPushNotification = self->_hasPendingLeaseDidEndPushNotification;
    v8 = 138543618;
    selfCopy = self;
    v10 = 1024;
    v11 = hasPendingLeaseDidEndPushNotification;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - _handlePlaybackLeaseDidEndPushNotification - _hasPendingLeaseDidEndPushNotification: %{BOOL}u", &v8, 0x12u);
  }

  [(ICMusicSubscriptionLeaseSession *)self _locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)reloadFairPlayKeyStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__ICMusicSubscriptionLeaseSession_reloadFairPlayKeyStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF6F50;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [WeakRetained musicLeaseSession:self requestsFairPlayKeyStatusUpdateWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __80__ICMusicSubscriptionLeaseSession_reloadFairPlayKeyStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!v5 && WeakRetained)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = v7[15];
    v7[15] = v8;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v11, v5);
  }
}

- (id)performPlaybackRequest:(id)request completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [(NSRecursiveLock *)self->_lock lock];
  if ([requestCopy shouldRequireLeaseAcquisition])
  {
    v9 = ![(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasPendingLeaseAcquisition];
  }

  else
  {
    v9 = 0;
  }

  if ([requestCopy shouldPreventLeaseAcquisition])
  {
    [(NSRecursiveLock *)self->_lock unlock];
    if (!v9)
    {
LABEL_13:
      _sharedOperationQueue = [objc_opt_class() _sharedOperationQueue];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __76__ICMusicSubscriptionLeaseSession_performPlaybackRequest_completionHandler___block_invoke;
      v25[3] = &unk_1E7BF6F28;
      v15 = v8;
      v26 = v15;
      v27 = handlerCopy;
      v16 = [(ICMusicSubscriptionLeaseSession *)self _newOperationForPlaybackRequest:requestCopy completionHandler:v25];
      [v15 setCancellable:1];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__ICMusicSubscriptionLeaseSession_performPlaybackRequest_completionHandler___block_invoke_2;
      v23[3] = &unk_1E7BFA300;
      v17 = v16;
      v24 = v17;
      [v15 setCancellationHandler:v23];
      [_sharedOperationQueue addOperation:v17];
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        operationCount = [_sharedOperationQueue operationCount];
        *buf = 138543874;
        selfCopy = self;
        v30 = 2114;
        v31 = v17;
        v32 = 2048;
        v33 = operationCount;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "[Lease] - [%{public}@] - performPlaybackRequest - enqueued operation: %{public}@ - operation count: %ld", buf, 0x20u);
      }

      [(NSRecursiveLock *)self->_lock lock];
      date = [MEMORY[0x1E695DF00] date];
      lastPlaybackRequestDate = self->_lastPlaybackRequestDate;
      self->_lastPlaybackRequestDate = date;

      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_16;
    }
  }

  else
  {
    hasPendingLeaseAcquisition = [(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus hasPendingLeaseAcquisition];
    [(NSRecursiveLock *)self->_lock unlock];
    if ((v9 & 1) == 0)
    {
      if (hasPendingLeaseAcquisition)
      {
        leaseStatus = self->_leaseStatus;
        self->_startedLeaseAcquisitionRevisionID = self->_pendingLeaseAcquisitionRevisionID;
        if (![(ICMusicSubscriptionLeaseStatus *)leaseStatus hasInflightLeaseAcquisition])
        {
          v13 = [(ICMusicSubscriptionLeaseStatus *)self->_leaseStatus copy];
          [v13 setHasInflightLeaseAcquisition:1];
          [(NSRecursiveLock *)self->_lock lock];
          [(ICMusicSubscriptionLeaseSession *)self _locked_setLeaseStatus:v13 updatedLeaseExpirationDate:0];
          [(NSRecursiveLock *)self->_lock unlock];
        }
      }

      goto LABEL_13;
    }
  }

  [v8 setCompletedUnitCount:1];
  if (handlerCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7600 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);
  }

LABEL_16:

  return v8;
}

void __76__ICMusicSubscriptionLeaseSession_performPlaybackRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 setCompletedUnitCount:1];
  [*(a1 + 32) setCancellationHandler:0];
  (*(*(a1 + 40) + 16))();
}

- (NSDate)lastPlaybackRequestDate
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_lastPlaybackRequestDate;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)isAutomaticallyRefreshingLease
{
  selfCopy = self;
  [(NSRecursiveLock *)self->_lock lock];
  lock = selfCopy->_lock;
  LOBYTE(selfCopy) = selfCopy->_automaticRefreshCount > 0;
  [(NSRecursiveLock *)lock unlock];
  return selfCopy;
}

- (void)endAutomaticallyRefreshingLease
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_automaticRefreshCount - 1;
  self->_automaticRefreshCount = v3;
  if (!v3)
  {
    [(ICMusicSubscriptionLeaseSession *)self _locked_updateAutomaticRefreshProperties];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)beginAutomaticallyRefreshingLease
{
  [(NSRecursiveLock *)self->_lock lock];
  automaticRefreshCount = self->_automaticRefreshCount;
  self->_automaticRefreshCount = automaticRefreshCount + 1;
  if (!automaticRefreshCount)
  {
    [(ICMusicSubscriptionLeaseSession *)self _locked_updateAutomaticRefreshProperties];
    [(ICMusicSubscriptionLeaseSession *)self _locked_handlePendingPlaybackLeaseDidEndPushNotificationIfReady];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (ICMusicSubscriptionLeaseStatus)leaseStatus
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_leaseStatus;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestContext = self->_requestContext;
  leaseStatus = [(ICMusicSubscriptionLeaseSession *)self leaseStatus];
  v8 = [v3 stringWithFormat:@"<%@ %p requestContext: %@ leaseStatus: %@>", v5, self, requestContext, leaseStatus];;

  return v8;
}

- (void)dealloc
{
  [(NSRecursiveLock *)self->_lock lock];
  automaticRefreshTimerSource = self->_automaticRefreshTimerSource;
  if (automaticRefreshTimerSource)
  {
    dispatch_source_cancel(automaticRefreshTimerSource);
    v4 = self->_automaticRefreshTimerSource;
    self->_automaticRefreshTimerSource = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v5.receiver = self;
  v5.super_class = ICMusicSubscriptionLeaseSession;
  [(ICMusicSubscriptionLeaseSession *)&v5 dealloc];
}

- (id)_initWithRequestContext:(id)context isDelegatedLeaseSession:(BOOL)session delegate:(id)delegate leaseStatus:(id)status
{
  contextCopy = context;
  delegateCopy = delegate;
  statusCopy = status;
  v21.receiver = self;
  v21.super_class = ICMusicSubscriptionLeaseSession;
  v13 = [(ICMusicSubscriptionLeaseSession *)&v21 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v13->_lock;
    v13->_lock = v14;

    v16 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionLease.calloutQueue", MEMORY[0x1E69E96A8]);
    calloutQueue = v13->_calloutQueue;
    v13->_calloutQueue = v16;

    v13->_delegatedLeaseSession = session;
    v18 = [contextCopy copy];
    requestContext = v13->_requestContext;
    v13->_requestContext = v18;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_leaseStatus, status);
  }

  return v13;
}

+ (id)_sharedOperationQueue
{
  if (_sharedOperationQueue_sOnceToken != -1)
  {
    dispatch_once(&_sharedOperationQueue_sOnceToken, &__block_literal_global_20);
  }

  v3 = _sharedOperationQueue_sOperationQueue;

  return v3;
}

uint64_t __56__ICMusicSubscriptionLeaseSession__sharedOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _sharedOperationQueue_sOperationQueue;
  _sharedOperationQueue_sOperationQueue = v0;

  [_sharedOperationQueue_sOperationQueue setMaxConcurrentOperationCount:1];
  [_sharedOperationQueue_sOperationQueue setName:@"com.apple.iTunesCloud.ICMusicSubscriptionLeaseSession.operationQueue"];
  v2 = _sharedOperationQueue_sOperationQueue;

  return [v2 setQualityOfService:25];
}

@end