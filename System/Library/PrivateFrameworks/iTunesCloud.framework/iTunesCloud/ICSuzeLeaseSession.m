@interface ICSuzeLeaseSession
- (ICSuzeLeaseSession)initWithConfiguration:(id)a3;
- (ICSuzeLeaseSessionDelegate)delegate;
- (id)_newSuzeLeaseRequestWithType:(int64_t)a3 clientData:(id)a4;
- (void)_renewLeaseTimerAction;
- (void)_updateRenewalTimer;
- (void)_updateRenewalTimerWithResponse:(id)a3;
- (void)beginAutomaticallyRefreshingLease;
- (void)dealloc;
- (void)endAutomaticallyRefreshingLease;
- (void)startLeaseSessionWithCompletionHandler:(id)a3;
- (void)stopLeaseSessionWithCompletionHandler:(id)a3;
@end

@implementation ICSuzeLeaseSession

- (ICSuzeLeaseSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateRenewalTimerWithResponse:(id)a3
{
  v4 = [a3 leaseExpirationDate];
  leaseExpirationDate = self->_leaseExpirationDate;
  self->_leaseExpirationDate = v4;

  [(ICSuzeLeaseSession *)self _updateRenewalTimer];
}

- (void)_updateRenewalTimer
{
  v29 = *MEMORY[0x1E69E9840];
  leaseRenewTimer = self->_leaseRenewTimer;
  if (leaseRenewTimer)
  {
    dispatch_source_cancel(leaseRenewTimer);
    v4 = self->_leaseRenewTimer;
    self->_leaseRenewTimer = 0;
  }

  if (self->_automaticRefreshCount && (v5 = self->_leaseExpirationDate) != 0 && self->_isRunning)
  {
    [(NSDate *)v5 timeIntervalSinceNow];
    v7 = fmax(v6 + -30.0, 30.0);
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      leaseExpirationDate = self->_leaseExpirationDate;
      *buf = 138543874;
      v22 = self;
      v23 = 2048;
      v24 = v7;
      v25 = 2114;
      v26 = leaseExpirationDate;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling lease renewal in %f seconds with expiration date of: %{public}@.", buf, 0x20u);
    }

    v10 = dispatch_get_global_queue(0, 0);
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);

    v12 = dispatch_time(0, (v7 * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, (v7 * 0.01 * 1000000000.0));
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__ICSuzeLeaseSession__updateRenewalTimer__block_invoke;
    handler[3] = &unk_1E7BFA328;
    objc_copyWeak(&v20, buf);
    dispatch_source_set_event_handler(v11, handler);
    v13 = self->_leaseRenewTimer;
    self->_leaseRenewTimer = v11;
    v14 = v11;

    dispatch_resume(v14);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      automaticRefreshCount = self->_automaticRefreshCount;
      v17 = self->_leaseExpirationDate;
      if (self->_isRunning)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138544130;
      v22 = self;
      v23 = 2048;
      v24 = *&automaticRefreshCount;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping renewal timer scheduling with automatic refresh count: %li, leaseExpirationDate: %{public}@, isRunning: %{public}@", buf, 0x2Au);
    }
  }
}

void __41__ICSuzeLeaseSession__updateRenewalTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renewLeaseTimerAction];
}

- (void)_renewLeaseTimerAction
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Lease renew timer fired.", buf, 0xCu);
  }

  v4 = [ICAsyncBlockOperation alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke;
  v6[3] = &unk_1E7BF6C48;
  v6[4] = self;
  v5 = [(ICAsyncBlockOperation *)v4 initWithStartHandler:v6];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
}

void __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_2;
  v21[3] = &unk_1E7BF8198;
  v21[4] = *(a1 + 32);
  v4 = v3;
  v22 = v4;
  v5 = MEMORY[0x1B8C781E0](v21);
  v6 = *(a1 + 32);
  if (*(v6 + 24) == 1)
  {
    v7 = *(v6 + 48);
    v19 = 0;
    v20 = 0;
    v8 = [v7 getLeaseSyncRenewRequestData:&v20 error:&v19];
    v9 = v20;
    v10 = v19;
    if (v8)
    {
      v11 = [*(a1 + 32) _newSuzeLeaseRequestWithType:2 clientData:v9];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_4;
      v17[3] = &unk_1E7BF5628;
      v17[4] = *(a1 + 32);
      v18 = v5;
      [v11 performWithResponseHandler:v17];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        v24 = v15;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Renew: Failed to generate renew request data with error: %{public}@", buf, 0x16u);
      }

      if (v10)
      {
        (v5)[2](v5, 0, v10);
      }

      else
      {
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7502 userInfo:0];
        (v5)[2](v5, 0, v16);
      }
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Lease renew invalid because the session is no longer running.", buf, 0xCu);
    }

    v5[2](v5, 1, 0);
  }
}

void __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_3;
    block[3] = &unk_1E7BFA178;
    v11 = WeakRetained;
    v12 = v7;
    v13 = v5;
    v9 = WeakRetained;
    dispatch_async(v8, block);
  }

  [*(a1 + 40) finishWithError:v5];
}

void __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && !v9)
  {
    v11 = [v7 clientData];
    if (!v11)
    {
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Renew: No client data in response, treating as successful.", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_24;
    }

    v12 = *(*(a1 + 32) + 48);
    v26 = 0;
    v13 = [v12 processRenewResponseData:v11 error:&v26];
    v14 = v26;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      if ([v14 code] != -42564)
      {
        v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          *buf = 138543618;
          v28 = v24;
          v29 = 2114;
          v30 = v15;
          _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Renew: Failed to process response data with error: %{public}@.", buf, 0x16u);
        }

        v25 = *(a1 + 40);
        if (!v15)
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7502 userInfo:0];
        }

        (*(v25 + 16))(v25, 0, v15);
        goto LABEL_23;
      }

      v15 = 0;
    }

    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Renew: Successfully processed renew response data.", buf, 0xCu);
    }

    [*(a1 + 32) _updateRenewalTimerWithResponse:v7];
    (*(*(a1 + 40) + 16))();
LABEL_23:

    goto LABEL_24;
  }

  v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Renew: Response failed with error: %{public}@", buf, 0x16u);
  }

  v20 = *(a1 + 40);
  if (!v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    (*(v20 + 16))(v20, 0, v11);
LABEL_24:

    goto LABEL_25;
  }

  (*(v20 + 16))(v20, 0, v10);
LABEL_25:
}

void __44__ICSuzeLeaseSession__renewLeaseTimerAction__block_invoke_3(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = a1[4];
    v3 = a1[5];
    if (a1[6])
    {
      v4 = a1[4];
      v5 = a1[5];

      [v4 suzeLeaseSession:v5 leaseRenewalDidFailWithError:?];
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      [v2 suzeLeaseSession:v3 leaseRenewalDidFailWithError:v6];
    }
  }
}

- (id)_newSuzeLeaseRequestWithType:(int64_t)a3 clientData:(id)a4
{
  v6 = a4;
  v7 = [ICSuzeLeaseRequest alloc];
  v8 = [(ICSuzeLeaseSessionConfiguration *)self->_configuration requestContext];
  v9 = [(ICSuzeLeaseSessionConfiguration *)self->_configuration leaseID];
  v10 = [(ICSuzeLeaseRequest *)v7 initWithRequestContext:v8 requestType:a3 leaseID:v9 mediaType:[(ICSuzeLeaseSessionConfiguration *)self->_configuration mediaType] clientData:v6];

  [(ICSuzeLeaseRequest *)v10 setQualityOfService:[(NSOperationQueue *)self->_operationQueue qualityOfService]];
  return v10;
}

- (void)stopLeaseSessionWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping lease session...", buf, 0xCu);
  }

  v6 = [ICAsyncBlockOperation alloc];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__ICSuzeLeaseSession_stopLeaseSessionWithCompletionHandler___block_invoke;
  v12 = &unk_1E7BF8080;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = [(ICAsyncBlockOperation *)v6 initWithStartHandler:&v9];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8, v9, v10, v11, v12, v13];
}

void __60__ICSuzeLeaseSession_stopLeaseSessionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60__ICSuzeLeaseSession_stopLeaseSessionWithCompletionHandler___block_invoke_2;
  v22[3] = &unk_1E7BF9240;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v24 = v4;
  v22[4] = v5;
  v6 = v3;
  v23 = v6;
  v7 = MEMORY[0x1B8C781E0](v22);
  v8 = *(a1 + 32);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 0;
    [*(a1 + 32) _updateRenewalTimer];
    v9 = *(*(a1 + 32) + 48);
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = 0;

    v21 = 0;
    v12 = [v9 endLeaseSyncAndReturnError:&v21];
    v13 = v21;
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v16 = *(a1 + 32);
        *buf = 138543362;
        v26 = v16;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Stop: Successfully ended lease sync.", buf, 0xCu);
      }

      v7[2](v7, 1, 0);
    }

    else
    {
      if (v15)
      {
        v19 = *(a1 + 32);
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v13;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Stop: FairPlay failed ending lease sync with error: %{public}@.", buf, 0x16u);
      }

      if (v13)
      {
        (v7)[2](v7, 0, v13);
      }

      else
      {
        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7502 userInfo:0];
        (v7)[2](v7, 0, v20);
      }
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Lease session already stopped, returning success.", buf, 0xCu);
    }

    v7[2](v7, 1, 0);
  }
}

void __60__ICSuzeLeaseSession_stopLeaseSessionWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__ICSuzeLeaseSession_stopLeaseSessionWithCompletionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9B68;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }

  [*(a1 + 40) finishWithError:v5];
}

- (void)startLeaseSessionWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting lease session...", buf, 0xCu);
  }

  v6 = [ICAsyncBlockOperation alloc];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke;
  v12 = &unk_1E7BF8080;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = [(ICAsyncBlockOperation *)v6 initWithStartHandler:&v9];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8, v9, v10, v11, v12, v13];
}

void __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_1E7BF55D8;
  v4 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v19 = v4;
  v5 = v3;
  v18 = v5;
  v6 = MEMORY[0x1B8C781E0](v17);
  v7 = *(a1 + 32);
  if (*(v7 + 24))
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Start: Lease session already started.", buf, 0xCu);
    }

    v6[2](v6, 1, 0, 0);
  }

  else
  {
    v10 = [*(v7 + 64) requestContext];
    v11 = [v10 identityStore];
    v12 = [v10 identity];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E7BF5600;
    v14[4] = *(a1 + 32);
    v15 = v10;
    v16 = v6;
    v13 = v10;
    [v11 getPropertiesForUserIdentity:v12 completionHandler:v14];
  }
}

void __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 16);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_3;
  v16 = &unk_1E7BF9B18;
  v10 = *(a1 + 48);
  v18 = v8;
  v19 = v10;
  v20 = a2;
  v17 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, &v13);
  [*(a1 + 40) finishWithError:{v11, v13, v14, v15, v16}];
}

void __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_4(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 DSID];
  v5 = [v4 unsignedLongLongValue];

  if (v5)
  {
    v6 = [*(a1[4] + 8) leaseID];
    v7 = [*(a1[4] + 8) mediaType] - 1;
    if (v7 > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1B47555FC[v7];
    }

    v29 = 0;
    v30 = 0;
    v17 = [ICFPLeaseSyncSession leaseSyncSessionWithID:v6 accountID:v5 mediaKind:v8 returningLeaseSyncRequestData:&v30 error:&v29];
    v14 = v30;
    v16 = v29;

    if (v17)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = a1[4];
        *buf = 138543618;
        v34 = v20;
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Start: Failed to generate FairPlay sync session with error: %{public}@", buf, 0x16u);
      }

      v21 = a1[6];
      if (v16)
      {
        (*(v21 + 2))(v21, 0, 0, v16);
LABEL_19:

        goto LABEL_20;
      }

      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      (*(v21 + 2))(v21, 0, 0, v22);
    }

    else
    {
      v22 = [a1[4] _newSuzeLeaseRequestWithType:1 clientData:v14];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_5;
      v25[3] = &unk_1E7BF66E8;
      v23 = v17;
      v24 = a1[4];
      v26 = v23;
      v27 = v24;
      v28 = a1[6];
      [v22 performWithResponseHandler:v25];
    }

    goto LABEL_19;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    *buf = 138543362;
    v34 = v10;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Start: Failed to retrieve a valid DSID from the identity store.", buf, 0xCu);
  }

  v31 = *MEMORY[0x1E696A278];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [a1[5] identity];
  v13 = [v11 stringWithFormat:@"Unable to start lease session [no valid DSID for user identity] - userIdentity=%@ - properties=%@", v12, v3];
  v32 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v15 = a1[6];
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v14];
  (*(v15 + 2))(v15, 0, 0, v16);
LABEL_20:
}

void __61__ICSuzeLeaseSession_startLeaseSessionWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && !v9)
  {
    v11 = [v7 clientData];
    if ([v11 length])
    {
      v12 = *(a1 + 32);
      v30 = 0;
      v13 = [v12 importLeaseSyncResponseData:v11 error:&v30];
      v14 = v30;
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v16 = v15;
      if (!v13)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 40);
          *buf = 138543618;
          v32 = v27;
          v33 = 2114;
          v34 = v14;
          _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Start: Failed to import lease response data with error: %{public}@", buf, 0x16u);
        }

        v28 = *(a1 + 48);
        if (v14)
        {
          (*(v28 + 16))(v28, 0, v8, v14);
        }

        else
        {
          v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
          (*(v28 + 16))(v28, 0, v8, v29);

          v14 = 0;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 138543362;
        v32 = v17;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Start: Successfully started.", buf, 0xCu);
      }

      *(*(a1 + 40) + 24) = 1;
      objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
      [*(a1 + 40) _updateRenewalTimerWithResponse:v7];
      v18 = *(*(a1 + 48) + 16);
    }

    else
    {
      v23 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = [v7 responseDictionary];
        *buf = 138543618;
        v32 = v24;
        v33 = 2114;
        v34 = v25;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Start: Client data missing from response: %{public}@", buf, 0x16u);
      }

      v26 = *(a1 + 48);
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      v18 = *(v26 + 16);
    }

    v18();
LABEL_22:

    goto LABEL_23;
  }

  v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 40);
    *buf = 138543618;
    v32 = v20;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Start: Received response error: %{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 48);
  if (v10)
  {
    (*(v21 + 16))(*(a1 + 48), 0, v8, v10);
  }

  else
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(v21 + 16))(v21, 0, v8, v22);
  }

LABEL_23:
}

- (void)endAutomaticallyRefreshingLease
{
  operationQueue = self->_operationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__ICSuzeLeaseSession_endAutomaticallyRefreshingLease__block_invoke;
  v3[3] = &unk_1E7BFA300;
  v3[4] = self;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v3];
}

void *__53__ICSuzeLeaseSession_endAutomaticallyRefreshingLease__block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 8);
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _updateRenewalTimer];
  }

  return result;
}

- (void)beginAutomaticallyRefreshingLease
{
  operationQueue = self->_operationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__ICSuzeLeaseSession_beginAutomaticallyRefreshingLease__block_invoke;
  v3[3] = &unk_1E7BFA300;
  v3[4] = self;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v3];
}

void *__55__ICSuzeLeaseSession_beginAutomaticallyRefreshingLease__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 8);
  result = *(a1 + 32);
  if (result[1] == 1)
  {
    return [result _updateRenewalTimer];
  }

  return result;
}

- (void)dealloc
{
  leaseRenewTimer = self->_leaseRenewTimer;
  if (leaseRenewTimer)
  {
    dispatch_source_cancel(leaseRenewTimer);
  }

  v4.receiver = self;
  v4.super_class = ICSuzeLeaseSession;
  [(ICSuzeLeaseSession *)&v4 dealloc];
}

- (ICSuzeLeaseSession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICSuzeLeaseSession;
  v5 = [(ICSuzeLeaseSession *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = dispatch_queue_create("com.apple.iTunesCloud.ICSuzeLeaseSession.calloutQueue", 0);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v10;

    [(NSOperationQueue *)v5->_operationQueue setName:@"com.apple.iTunesCloud.ICSuzeLeaseSession.operationQueue"];
    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:25];
  }

  return v5;
}

@end