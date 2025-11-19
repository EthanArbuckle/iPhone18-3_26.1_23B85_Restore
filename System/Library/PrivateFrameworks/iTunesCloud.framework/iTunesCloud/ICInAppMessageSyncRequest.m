@interface ICInAppMessageSyncRequest
- (ICInAppMessageSyncRequest)initWithStoreRequestContext:(id)a3 fromRevision:(unint64_t)a4;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICInAppMessageSyncRequest

- (void)execute
{
  v3 = [(ICStoreRequestContext *)self->_storeRequestContext identityStore];
  v4 = [(ICStoreRequestContext *)self->_storeRequestContext identity];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ICInAppMessageSyncRequest_execute__block_invoke;
  v5[3] = &unk_1E7BF7B20;
  v5[4] = self;
  [v3 getPropertiesForUserIdentity:v4 completionHandler:v5];
}

void __36__ICInAppMessageSyncRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load account properties. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v9 = +[ICURLBagProvider sharedBagProvider];
    v10 = *(a1 + 32);
    v11 = *(v10 + 304);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__ICInAppMessageSyncRequest_execute__block_invoke_4;
    v12[3] = &unk_1E7BF7AF8;
    v12[4] = v10;
    v13 = v5;
    [v9 getBagForRequestContext:v11 withCompletionHandler:v12];
  }
}

void __36__ICInAppMessageSyncRequest_execute__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v32 = v8;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v9 = [ICInAppMessageConfiguration alloc];
    v10 = [v5 dictionaryForBagKey:@"inAppMessages"];
    v11 = [(ICInAppMessageConfiguration *)v9 initWithDictionary:v10];

    v12 = [(ICInAppMessageConfiguration *)v11 syncURL];
    if (v12)
    {
      v13 = objc_alloc_init(ICIAMSynchronizeMessagesRequest);
      v14 = [*(a1 + 40) DSID];
      -[ICIAMSynchronizeMessagesRequest setDSID:](v13, "setDSID:", [v14 longLongValue]);

      [(ICIAMSynchronizeMessagesRequest *)v13 setActiveCommandsOnly:*(*(a1 + 32) + 320) != 0];
      [(ICIAMSynchronizeMessagesRequest *)v13 setCommandSerialNumber:*(*(a1 + 32) + 320)];
      v15 = +[ICDeviceInfo currentDeviceInfo];
      v16 = [v15 deviceGUID];
      [(ICIAMSynchronizeMessagesRequest *)v13 setDeviceID:v16];

      v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 320);
        *buf = 138543875;
        v32 = v18;
        v33 = 2048;
        v34 = v19;
        v35 = 2113;
        v36 = v13;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending sync request with revision %lld; %{private}@", buf, 0x20u);
      }

      v20 = [(ICIAMSynchronizeMessagesRequest *)v13 data];
      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v12];
        [v21 setHTTPBody:v20];
        [v21 setHTTPMethod:@"POST"];
        [v21 setValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
        v22 = [[ICStoreURLRequest alloc] initWithURLRequest:v21 requestContext:*(*(a1 + 32) + 304)];
        v23 = +[ICURLSessionManager defaultSession];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __36__ICInAppMessageSyncRequest_execute__block_invoke_12;
        v30[3] = &unk_1E7BFA4D8;
        v30[4] = *(a1 + 32);
        [v23 enqueueDataRequest:v22 withCompletionHandler:v30];
      }

      else
      {
        v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          *buf = 138543362;
          v32 = v28;
          _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to serialize request object", buf, 0xCu);
        }

        v29 = *(a1 + 32);
        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
        [v29 finishWithError:v21];
      }
    }

    else
    {
      v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        *buf = 138543362;
        v32 = v25;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to find bag key for url endpoint", buf, 0xCu);
      }

      v26 = *(a1 + 32);
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v26 finishWithError:v13];
    }
  }
}

void __36__ICInAppMessageSyncRequest_execute__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync request failed. err=%{public}@", &v17, 0x16u);
    }

    v9 = v6;
  }

  else
  {
    v10 = [ICIAMSynchronizeMessagesResponse alloc];
    v11 = [v5 bodyData];
    v12 = [(ICIAMSynchronizeMessagesResponse *)v10 initWithData:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 312);
    *(v13 + 312) = v12;

    if (*(*(a1 + 32) + 312))
    {
      v9 = 0;
    }

    else
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to decode response object", &v17, 0xCu);
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }
  }

  [*(a1 + 32) finishWithError:v9];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__ICInAppMessageSyncRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICInAppMessageSyncRequest)initWithStoreRequestContext:(id)a3 fromRevision:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = ICInAppMessageSyncRequest;
  v8 = [(ICRequestOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storeRequestContext, a3);
    v10 = [v7 copyWithBlock:&__block_literal_global_30905];
    storeRequestContext = v9->_storeRequestContext;
    v9->_storeRequestContext = v10;

    v9->_fromRevision = a4;
  }

  return v9;
}

void __70__ICInAppMessageSyncRequest_initWithStoreRequestContext_fromRevision___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isMac];

  if (v3)
  {
    v4 = [[ICClientInfo alloc] initWithSystemApplicationType:0];
    [v5 setClientInfo:v4];
  }
}

@end