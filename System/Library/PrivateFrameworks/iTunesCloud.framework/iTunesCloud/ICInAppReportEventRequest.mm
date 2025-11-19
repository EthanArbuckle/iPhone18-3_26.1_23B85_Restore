@interface ICInAppReportEventRequest
- (ICInAppReportEventRequest)initWithStoreRequestContext:(id)a3 messageIdentifier:(id)a4 params:(id)a5;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICInAppReportEventRequest

- (void)execute
{
  v3 = [(ICStoreRequestContext *)self->_storeRequestContext identityStore];
  v4 = [(ICStoreRequestContext *)self->_storeRequestContext identity];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ICInAppReportEventRequest_execute__block_invoke;
  v5[3] = &unk_1E7BF7B20;
  v5[4] = self;
  [v3 getPropertiesForUserIdentity:v4 completionHandler:v5];
}

void __36__ICInAppReportEventRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v12[2] = __36__ICInAppReportEventRequest_execute__block_invoke_1;
    v12[3] = &unk_1E7BF7AF8;
    v12[4] = v10;
    v13 = v5;
    [v9 getBagForRequestContext:v11 withCompletionHandler:v12];
  }
}

void __36__ICInAppReportEventRequest_execute__block_invoke_1(uint64_t a1, void *a2, void *a3)
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
      v34 = v8;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v9 = [ICInAppMessageConfiguration alloc];
    v10 = [v5 dictionaryForBagKey:@"inAppMessages"];
    v11 = [(ICInAppMessageConfiguration *)v9 initWithDictionary:v10];

    v12 = [(ICInAppMessageConfiguration *)v11 reportEventURL];
    if (v12)
    {
      v13 = objc_alloc_init(ICIAMLogEventRequest);
      v14 = [*(a1 + 40) DSID];
      -[ICIAMLogEventRequest setDSID:](v13, "setDSID:", [v14 longLongValue]);

      v15 = +[ICDeviceInfo currentDeviceInfo];
      v16 = [v15 deviceGUID];
      [(ICIAMLogEventRequest *)v13 setDeviceID:v16];

      [(ICIAMLogEventRequest *)v13 setApplicationMessageIdentifier:*(*(a1 + 32) + 312)];
      v17 = *(a1 + 32);
      v18 = *(v17 + 320);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __36__ICInAppReportEventRequest_execute__block_invoke_6;
      v31[3] = &unk_1E7BF8B48;
      v31[4] = v17;
      v19 = v13;
      v32 = v19;
      [v18 enumerateKeysAndObjectsUsingBlock:v31];
      v20 = [(ICIAMLogEventRequest *)v19 data];
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
        v30[2] = __36__ICInAppReportEventRequest_execute__block_invoke_13;
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
          v34 = v28;
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
        v34 = v25;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to find bag key for url endpoint", buf, 0xCu);
      }

      v26 = *(a1 + 32);
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v26 finishWithError:v19];
    }
  }
}

void __36__ICInAppReportEventRequest_execute__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (_NSIsNSString() && (_NSIsNSString() & 1) != 0)
  {
    v7 = objc_alloc_init(ICIAMParameter);
    [(ICIAMParameter *)v7 setKey:v5];
    [(ICIAMParameter *)v7 setValue:v6];
    [*(a1 + 40) addEventParameters:v7];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1B4491000, &v7->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid message parm: {%{public}@ : %{public}@}", &v9, 0x20u);
    }
  }
}

void __36__ICInAppReportEventRequest_execute__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Log event request failed. err=%{public}@", &v7, 0x16u);
    }
  }

  [*(a1 + 32) finishWithError:v4];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__ICInAppReportEventRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BF77C0;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICInAppReportEventRequest)initWithStoreRequestContext:(id)a3 messageIdentifier:(id)a4 params:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ICInAppReportEventRequest;
  v12 = [(ICRequestOperation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeRequestContext, a3);
    v14 = [v10 copy];
    messageIdentifier = v13->_messageIdentifier;
    v13->_messageIdentifier = v14;

    v16 = [v11 copy];
    params = v13->_params;
    v13->_params = v16;
  }

  return v13;
}

@end