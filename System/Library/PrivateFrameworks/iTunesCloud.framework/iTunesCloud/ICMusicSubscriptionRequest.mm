@interface ICMusicSubscriptionRequest
- (ICMusicSubscriptionRequest)initWithStoreRequestContext:(id)context requestType:(int64_t)type requestingOfflineSlot:(BOOL)slot;
- (id)_bagKeyForRequestType:(int64_t)type;
- (void)execute;
@end

@implementation ICMusicSubscriptionRequest

- (id)_bagKeyForRequestType:(int64_t)type
{
  if (type <= 2)
  {
    self = *off_1E7BF36C8[type];
  }

  return self;
}

- (void)execute
{
  v3 = +[ICURLBagProvider sharedBagProvider];
  storeRequestContext = self->_storeRequestContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke;
  v5[3] = &unk_1E7BFA500;
  v5[4] = self;
  [v3 getBagForRequestContext:storeRequestContext withCompletionHandler:v5];
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 finishWithError:v6];
  }

  else
  {
    v8 = [v7 _bagKeyForRequestType:v7[39]];
    v9 = [v5 urlForBagKey:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E695AC18] requestWithURL:v9];
      [v10 setHTTPMethod:@"POST"];
      [v10 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      [v10 setValue:@"true" forHTTPHeaderField:@"x-apple-use-amd"];
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy_;
      v30 = __Block_byref_object_dispose_;
      v31 = [MEMORY[0x1E695DF90] dictionary];
      v11 = [*(*(a1 + 32) + 304) deviceInfo];
      v12 = [v11 deviceGUID];

      if (v12)
      {
        [v27[5] setObject:v12 forKey:@"guid"];
      }

      v13 = [*(*(a1 + 32) + 304) deviceInfo];
      v14 = [v13 isWatch];

      if (v14)
      {
        v15 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
        v16 = [v15 pairedDeviceMediaGUID];

        if (v16)
        {
          [v27[5] setObject:v16 forKey:@"companion-guid"];
        }
      }

      v17 = *(a1 + 32);
      if (*(v17 + 320) == 1)
      {
        [v27[5] setObject:MEMORY[0x1E695E118] forKey:@"isRequestingSlot"];
        v17 = *(a1 + 32);
      }

      v18 = [*(v17 + 304) identityStore];
      v19 = [*(*(a1 + 32) + 304) identity];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke_17;
      v23[3] = &unk_1E7BF36A8;
      v23[4] = *(a1 + 32);
      v20 = v10;
      v24 = v20;
      v25 = &v26;
      [v18 getPropertiesForUserIdentity:v19 completionHandler:v23];

      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v21 finishWithError:v22];
    }
  }
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v31 = v8;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get user identity properties. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke_18;
    v26[3] = &unk_1E7BF3658;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v27 = v9;
    v28 = v10;
    v29 = 0;
    v11 = MEMORY[0x1B8C781E0](v26);
    v12 = [v5 DSID];
    v13 = [v12 unsignedLongLongValue];

    v24 = 0;
    v25 = 0;
    v14 = [ICADIUtilities generateMachineDataForAccountID:-1 returningMachineIDData:&v25 otpData:0 error:&v24];
    v15 = v25;
    v16 = v24;
    if (v14)
    {
      v17 = +[ICMusicSubscriptionFairPlayController sharedController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke_33;
      v21[3] = &unk_1E7BF3680;
      v18 = *(a1 + 48);
      v21[4] = *(a1 + 32);
      v23 = v18;
      v22 = v11;
      [v17 generateSubscriptionBagRequestWithAccountUniqueIdentifier:v13 transactionType:312 machineIDData:v15 completionHandler:v21];
    }

    else
    {
      v19 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to generate machine data for subscription request. err=%{public}@", buf, 0x16u);
      }

      v11[2](v11, *(*(*(a1 + 48) + 8) + 40));
    }
  }
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke_18(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:a2 format:100 options:0 error:0];
  if (v3)
  {
    [*(a1 + 32) setHTTPBody:v3];
  }

  v4 = [[ICStoreURLRequest alloc] initWithURLRequest:*(a1 + 32) requestContext:*(*(a1 + 40) + 304)];
  v5 = +[ICURLSessionManager defaultSession];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke_2;
  v7[3] = &unk_1E7BF7AB0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  [v5 enqueueDataRequest:v4 withCompletionHandler:v7];
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke_33(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@  failed to generate subscription bag sync data. err=%{public}@", &v9, 0x16u);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [*(*(a1[6] + 8) + 40) setObject:v7 forKey:@"sbsync"];
    }

    goto LABEL_7;
  }

LABEL_8:
  (*(a1[5] + 16))();
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = [a2 parsedBodyDictionary];
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received subscription response %{public}@", buf, 0x16u);
    }

    v8 = [v5 objectForKey:@"statusCode"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 intValue];
      if (!v9)
      {
        v10 = ICMusicSubscriptionFairPlaySubscriptionKeyBagForResponseDictionary(v5);
        if (v10)
        {
          v11 = +[ICMusicSubscriptionFairPlayController sharedController];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __37__ICMusicSubscriptionRequest_execute__block_invoke_28;
          v16[3] = &unk_1E7BF3CD0;
          v12 = *(a1 + 40);
          v16[4] = *(a1 + 32);
          v17 = v12;
          [v11 importSubscriptionKeyBagData:v10 completionHandler:v16];

LABEL_14:
          return;
        }

        v14 = *(a1 + 32);
        v15 = 0;
LABEL_13:
        [v14 finishWithError:v15];
        goto LABEL_14;
      }
    }

    else
    {
      v9 = -7102;
    }

    v13 = *(a1 + 32);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICStoreServerError" code:v9 userInfo:0];
    v14 = v13;
    v15 = v10;
    goto LABEL_13;
  }

  v4 = *(a1 + 32);

  [v4 finishWithError:?];
}

void __37__ICMusicSubscriptionRequest_execute__block_invoke_28(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to import subscription keybag. err=%{public}@", &v8, 0x16u);
    }
  }

  [*(a1 + 32) finishWithError:v4];
}

- (ICMusicSubscriptionRequest)initWithStoreRequestContext:(id)context requestType:(int64_t)type requestingOfflineSlot:(BOOL)slot
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = ICMusicSubscriptionRequest;
  v10 = [(ICRequestOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_storeRequestContext, context);
    v11->_requestType = type;
    v11->_requestingOfflineSlot = slot;
  }

  return v11;
}

@end