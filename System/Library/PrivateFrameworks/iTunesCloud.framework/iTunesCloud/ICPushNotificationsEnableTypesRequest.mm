@interface ICPushNotificationsEnableTypesRequest
- (ICPushNotificationsEnableTypesRequest)initWithRequestContext:(id)context notificationType:(id)type notificationParameters:(id)parameters;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation ICPushNotificationsEnableTypesRequest

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    notificationType = self->_notificationType;
    notificationParams = self->_notificationParams;
    *buf = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = notificationType;
    v13 = 2114;
    v14 = notificationParams;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Enabling push notifications for type %{public}@ with params %{public}@", buf, 0x20u);
  }

  v6 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__ICPushNotificationsEnableTypesRequest_execute__block_invoke;
  v8[3] = &unk_1E7BFA500;
  v8[4] = self;
  [v6 getBagForRequestContext:requestContext withCompletionHandler:v8];
}

void __48__ICPushNotificationsEnableTypesRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v9 = [v8 objectForKey:@"add-push-notification-type-url"];
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
      [v12 setObject:*(*(a1 + 32) + 320) forKey:@"parameters"];
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
      v26[2] = __48__ICPushNotificationsEnableTypesRequest_execute__block_invoke_21;
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
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing add-push-notification-type-url url in bag - skipping", buf, 0xCu);
      }

      v24 = *(a1 + 32);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v24 finishWithError:v10];
    }
  }
}

void __48__ICPushNotificationsEnableTypesRequest_execute__block_invoke_21(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ addPushNotification request failed. err=%{public}@", &v13, 0x16u);
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
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ addPushNotification request returned response %{public}@", &v13, 0x16u);
    }

    v10 = [[ICPushNotificationsResponse alloc] initWithResponseDictionary:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 328);
    *(v11 + 328) = v10;
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__ICPushNotificationsEnableTypesRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

uint64_t __75__ICPushNotificationsEnableTypesRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 328), a2);
  }

  return result;
}

- (ICPushNotificationsEnableTypesRequest)initWithRequestContext:(id)context notificationType:(id)type notificationParameters:(id)parameters
{
  contextCopy = context;
  typeCopy = type;
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = ICPushNotificationsEnableTypesRequest;
  v11 = [(ICRequestOperation *)&v19 init];
  if (v11)
  {
    v12 = [contextCopy copy];
    requestContext = v11->_requestContext;
    v11->_requestContext = v12;

    v14 = [typeCopy copy];
    notificationType = v11->_notificationType;
    v11->_notificationType = v14;

    v16 = [parametersCopy copy];
    notificationParams = v11->_notificationParams;
    v11->_notificationParams = v16;
  }

  return v11;
}

@end