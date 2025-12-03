@interface ICPushNotificationsDisableTypesRequest
- (ICPushNotificationsDisableTypesRequest)initWithRequestContext:(id)context notificationType:(id)type;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICPushNotificationsDisableTypesRequest

- (void)execute
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    notificationType = self->_notificationType;
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = notificationType;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Disabling push notifications for type %{public}@", buf, 0x16u);
  }

  v5 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ICPushNotificationsDisableTypesRequest_execute__block_invoke;
  v7[3] = &unk_1E7BFA500;
  v7[4] = self;
  [v5 getBagForRequestContext:requestContext withCompletionHandler:v7];
}

void __49__ICPushNotificationsDisableTypesRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v28 = v7;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load url bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [a2 dictionaryForBagKey:@"push-notification-types"];
    v9 = [v8 objectForKey:@"remove-push-notification-type-url"];
    if (v9)
    {
      v25 = v8;
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      v11 = [MEMORY[0x1E695AC18] requestWithURL:v10];
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

      [v12 setObject:*(*(a1 + 32) + 312) forKey:@"notification-type"];
      v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:0];
      if (v17)
      {
        [v11 setHTTPBody:v17];
      }

      v18 = [[ICStoreURLRequest alloc] initWithURLRequest:v11 requestContext:*(*(a1 + 32) + 304)];
      v19 = [*(a1 + 32) progress];
      v20 = [(ICURLRequest *)v18 progress];
      [v19 addChild:v20 withPendingUnitCount:100];

      v21 = +[ICURLSessionManager defaultSession];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49__ICPushNotificationsDisableTypesRequest_execute__block_invoke_18;
      v26[3] = &unk_1E7BFA4D8;
      v26[4] = *(a1 + 32);
      [v21 enqueueDataRequest:v18 withCompletionHandler:v26];

      v8 = v25;
    }

    else
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing remove-push-notification-type-url url in bag - skipping", buf, 0xCu);
      }

      v24 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v24 finishWithError:v10];
    }
  }
}

void __49__ICPushNotificationsDisableTypesRequest_execute__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ removePushNotification request failed. err=%{public}@", &v13, 0x16u);
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
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ removePushNotification request returned response %{public}@", &v13, 0x16u);
    }

    v10 = [[ICPushNotificationsResponse alloc] initWithResponseDictionary:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 320);
    *(v11 + 320) = v10;
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ICPushNotificationsDisableTypesRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

uint64_t __76__ICPushNotificationsDisableTypesRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 320), a2);
  }

  return result;
}

- (ICPushNotificationsDisableTypesRequest)initWithRequestContext:(id)context notificationType:(id)type
{
  contextCopy = context;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = ICPushNotificationsDisableTypesRequest;
  v8 = [(ICRequestOperation *)&v14 init];
  if (v8)
  {
    v9 = [contextCopy copy];
    requestContext = v8->_requestContext;
    v8->_requestContext = v9;

    v11 = [typeCopy copy];
    notificationType = v8->_notificationType;
    v8->_notificationType = v11;
  }

  return v8;
}

@end