@interface ICPushNotificationsRegisterAPNSTokenRequest
- (ICPushNotificationsRegisterAPNSTokenRequest)initWithRequestContext:(id)a3 token:(id)a4;
- (void)_registerAPNSToken;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICPushNotificationsRegisterAPNSTokenRequest

- (void)_registerAPNSToken
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    token = self->_token;
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = token;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ registering APNS token %{public}@", buf, 0x16u);
  }

  v5 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ICPushNotificationsRegisterAPNSTokenRequest__registerAPNSToken__block_invoke;
  v7[3] = &unk_1E7BFA500;
  v7[4] = self;
  [v5 getBagForRequestContext:requestContext withCompletionHandler:v7];
}

void __65__ICPushNotificationsRegisterAPNSTokenRequest__registerAPNSToken__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v39 = v7;
      v40 = 2114;
      v41 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load url bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [a2 dictionaryForBagKey:@"push-notifications"];
    v9 = [v8 objectForKey:@"register-success"];
    v10 = [v8 objectForKey:@"environment"];
    if (v9)
    {
      v35 = v9;
      v36 = v8;
      v33 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      v11 = [MEMORY[0x1E695AC18] requestWithURL:?];
      [v11 setHTTPMethod:@"POST"];
      [v11 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = [*(*(a1 + 32) + 304) deviceInfo];
      v14 = [v13 deviceGUID];

      if (v14)
      {
        v15 = [*(*(a1 + 32) + 304) deviceInfo];
        v16 = [v15 deviceGUID];
        [v12 setObject:v16 forKey:@"guid"];
      }

      v17 = [*(*(a1 + 32) + 304) deviceInfo];
      v31 = [v17 deviceName];
      if (v31)
      {
        v18 = [v17 name];
        v19 = [v18 dataUsingEncoding:4 allowLossyConversion:1];

        if (v19)
        {
          [v12 setObject:v19 forKey:@"device-name-data"];
        }
      }

      v20 = [v17 serialNumber];
      if (v20)
      {
        [v12 setObject:v20 forKey:@"serial-number"];
      }

      v34 = v10;
      if (v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = *MEMORY[0x1E698CF20];
      }

      [v12 setObject:v21 forKey:@"environment"];
      [v12 setObject:*(*(a1 + 32) + 312) forKey:@"token"];
      v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:0];
      if (v22)
      {
        [v11 setHTTPBody:v22];
      }

      v23 = [[ICStoreURLRequest alloc] initWithURLRequest:v11 requestContext:*(*(a1 + 32) + 304)];
      v24 = [*(a1 + 32) progress];
      v25 = [(ICURLRequest *)v23 progress];
      [v24 addChild:v25 withPendingUnitCount:100];

      v26 = +[ICURLSessionManager defaultSession];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __65__ICPushNotificationsRegisterAPNSTokenRequest__registerAPNSToken__block_invoke_37;
      v37[3] = &unk_1E7BFA4D8;
      v37[4] = *(a1 + 32);
      [v26 enqueueDataRequest:v23 withCompletionHandler:v37];

      v9 = v35;
      v8 = v36;
      v27 = v33;
      v10 = v34;
    }

    else
    {
      v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Missing register-success url in bag - skipping", buf, 0xCu);
      }

      v30 = *(a1 + 32);
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v30 finishWithError:v27];
    }
  }
}

void __65__ICPushNotificationsRegisterAPNSTokenRequest__registerAPNSToken__block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ request failed. err=%{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v6 = [a2 parsedBodyDictionary];
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ recieved response %{public}@", &v13, 0x16u);
    }

    v10 = [[ICPushNotificationsResponse alloc] initWithResponseDictionary:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 320);
    *(v11 + 320) = v10;
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)execute
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_token)
  {

    [(ICPushNotificationsRegisterAPNSTokenRequest *)self _registerAPNSToken];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Cannot register nil token.", buf, 0xCu);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1350] type:@"Bug" subType:@"ICPushNotificationsRegisterAPNSTokenRequest" context:@"Token is nil" triggerThresholdValues:0 events:0 completion:0];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    [(ICRequestOperation *)self finishWithError:v4];
  }
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ICPushNotificationsRegisterAPNSTokenRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

uint64_t __81__ICPushNotificationsRegisterAPNSTokenRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 320), a2);
  }

  return result;
}

- (ICPushNotificationsRegisterAPNSTokenRequest)initWithRequestContext:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICPushNotificationsRegisterAPNSTokenRequest;
  v8 = [(ICRequestOperation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    requestContext = v8->_requestContext;
    v8->_requestContext = v9;

    objc_storeStrong(&v8->_token, a4);
  }

  return v8;
}

@end