@interface ICMusicAccountNotificationsSettingsRequestOperation
- (ICMusicAccountNotificationsSettingsRequestOperation)initWithRequestContext:(id)a3 withRequestMethod:(int64_t)a4;
- (ICMusicAccountNotificationsSettingsRequestOperation)initWithRequestContext:(id)a3 withRequestMethod:(int64_t)a4 andBodyDictionary:(id)a5;
- (void)cancel;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICMusicAccountNotificationsSettingsRequestOperation

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ICMusicAccountNotificationsSettingsRequestOperation;
  [(ICMusicAccountNotificationsSettingsRequestOperation *)&v4 cancel];
  v3 = +[ICURLSessionManager highPrioritySession];
  [v3 cancelRequest:self->_storeURLRequest];
}

- (void)execute
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v4 = +[ICUserIdentity activeAccount];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke;
  v5[3] = &unk_1E7BF7B20;
  v5[4] = self;
  [v3 getPropertiesForUserIdentity:v4 completionHandler:v5];
}

void __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    v5 = +[ICURLBagProvider sharedBagProvider];
    v6 = *(a1 + 32);
    v7 = *(v6 + 312);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke_2;
    v9[3] = &unk_1E7BFA500;
    v9[4] = v6;
    [v5 getBagForRequestContext:v7 withCompletionHandler:v9];
  }

  else
  {
    v4 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
    [v4 finishWithError:v8];
  }
}

void __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 dictionaryForBagKey:@"musicFriends"];
    v4 = v3;
    if (*(*(a1 + 32) + 336))
    {
      v5 = @"setPushNotificationSettings";
    }

    else
    {
      v5 = @"getPushNotificationSettings";
    }

    v6 = [v3 objectForKey:v5];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    if (!v7)
    {
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v21 finishWithError:v22];

LABEL_20:
      return;
    }

    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [MEMORY[0x1E695DFF8] ic_queryParametersDictionaryFromString:@"v=2"];
    [v9 addEntriesFromDictionary:v10];

    v11 = [MEMORY[0x1E695DFF8] ic_queryParametersDictionaryFromString:@"serviceId=com.apple.Music"];
    [v9 addEntriesFromDictionary:v11];

    v12 = [v8 ic_URLByAppendingQueryParameters:v9];

    v13 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v12];
    v14 = *(a1 + 32);
    if (*(v14 + 336) == 1)
    {
      v15 = *(v14 + 344);
      v26 = 0;
      v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:0 error:&v26];
      v17 = v26;
      v18 = v17;
      if (!v16 || v17)
      {
        v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1 + 32) + 344);
          *buf = 138543618;
          v28 = v18;
          v29 = 2114;
          v30 = v24;
          _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "Failed to serialize body data. error=%{public}@, bodyDictionary=%{public}@", buf, 0x16u);
        }

        [*(a1 + 32) finishWithError:v18];
        goto LABEL_19;
      }

      [v13 setHTTPBody:v16];
      [v13 setValue:@"application/json; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];

      v19 = @"POST";
    }

    else
    {
      v19 = @"GET";
    }

    [v13 setHTTPMethod:v19];
    v18 = [[ICStoreURLRequest alloc] initWithURLRequest:v13 requestContext:*(*(a1 + 32) + 312)];
    v16 = +[ICURLSessionManager defaultSession];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke_29;
    v25[3] = &unk_1E7BFA4D8;
    v25[4] = *(a1 + 32);
    [v16 enqueueDataRequest:v18 withCompletionHandler:v25];
LABEL_19:

    goto LABEL_20;
  }

  v20 = *(a1 + 32);

  [v20 finishWithError:?];
}

uint64_t __62__ICMusicAccountNotificationsSettingsRequestOperation_execute__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICMusicAccountNotificationsSettingsResponse alloc];
  v5 = [v3 parsedBodyDictionary];

  v6 = [(ICMusicAccountNotificationsSettingsResponse *)v4 initWithResponseDictionary:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 328);
  *(v7 + 328) = v6;

  v9 = *(a1 + 32);

  return [v9 finish];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__ICMusicAccountNotificationsSettingsRequestOperation_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICMusicAccountNotificationsSettingsRequestOperation)initWithRequestContext:(id)a3 withRequestMethod:(int64_t)a4 andBodyDictionary:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(ICRequestOperation *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContext, a3);
    v12->_requestMethod = a4;
    objc_storeStrong(&v12->_bodyDictionary, a5);
  }

  return v12;
}

- (ICMusicAccountNotificationsSettingsRequestOperation)initWithRequestContext:(id)a3 withRequestMethod:(int64_t)a4
{
  v7 = a3;
  v8 = [(ICRequestOperation *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestContext, a3);
    v9->_requestMethod = a4;
  }

  return v9;
}

@end