@interface ICPlayInfoRequest
- (BOOL)_hasRentalInfo;
- (ICPlayInfoRequest)initWithRequestContext:(id)a3;
- (id)_getSinfParamValue:(int)a3;
- (void)execute;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation ICPlayInfoRequest

- (BOOL)_hasRentalInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v18, &v17);
  v4 = v17;
  LOBYTE(v5) = 0;
  if (ContextIdentifierForFolderPath)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_sinfs;
    v5 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v5)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v12[0] = 0;
          v12[1] = 0;
          RbFpir(v18, [v9 bytes], objc_msgSend(v9, "length"), v12);
          if (!v10)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (id)_getSinfParamValue:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_sinfs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v13 = 0;
        hZZRqgZwI([v9 bytes], objc_msgSend(v9, "length"), v3, &v13);
        if (!v10)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)execute
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestContext = self->_requestContext;
    *buf = 138543618;
    v31 = self;
    v32 = 2114;
    v33 = requestContext;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing playInfo request with context %{public}@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = self->_DSID;
  if (v6 || ([(ICPlayInfoRequest *)self _getSinfParamValue:1], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v5 setObject:v6 forKey:@"dsid"];
    contentIdentifier = self->_contentIdentifier;
    if (contentIdentifier)
    {
      [v5 setObject:contentIdentifier forKey:@"content-id"];
    }

    else
    {
      v9 = [(ICPlayInfoRequest *)self _getSinfParamValue:2];
      if (v9)
      {
        if ([(ICPlayInfoRequest *)self _hasRentalInfo])
        {
          v29 = v9;
          v10 = @"rental-ids";
          v11 = &v29;
        }

        else
        {
          v28 = v9;
          v10 = @"key-ids";
          v11 = &v28;
        }

        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        [v5 setObject:v13 forKey:v10];
      }
    }

    v14 = +[ICDeviceInfo currentDeviceInfo];
    v15 = [v14 deviceGUID];
    if (v15)
    {
      [v5 setObject:v15 forKey:@"guid"];
    }

    v16 = [v14 deviceModel];
    if (v16)
    {
      [v5 setObject:v16 forKey:@"hw.model"];
    }

    subscriptionPlaybackType = self->_subscriptionPlaybackType;
    if (subscriptionPlaybackType)
    {
      [v5 setObject:subscriptionPlaybackType forKey:@"subPlayType"];
    }

    playerGUID = self->_playerGUID;
    if (playerGUID)
    {
      [v5 setObject:playerGUID forKey:@"player-guid"];
    }

    SICData = self->_SICData;
    if (SICData)
    {
      [v5 setObject:SICData forKey:@"sic"];
    }

    v27 = 0;
    v20 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v27];
    v21 = v27;
    if (v21)
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = self;
        v32 = 2114;
        v33 = v21;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize body data. err=%{public}@", buf, 0x16u);
      }

      [(ICRequestOperation *)self finishWithError:v21];
    }

    else
    {
      v23 = +[ICURLBagProvider sharedBagProvider];
      v24 = self->_requestContext;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __28__ICPlayInfoRequest_execute__block_invoke;
      v25[3] = &unk_1E7BF7AF8;
      v25[4] = self;
      v26 = v20;
      [v23 getBagForRequestContext:v24 withCompletionHandler:v25];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = self;
      v32 = 2114;
      v33 = 0;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to extract account DSID. err=%{public}@", buf, 0x16u);
    }

    [(ICRequestOperation *)self finishWithError:0];
  }
}

void __28__ICPlayInfoRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load url bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [a2 urlForBagKey:@"get-play-info"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695AC18] requestWithURL:v8];
      [v9 setHTTPMethod:@"POST"];
      [v9 setCachePolicy:1];
      [v9 setHTTPBody:*(a1 + 40)];
      [v9 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      v10 = [[ICStoreURLRequest alloc] initWithURLRequest:v9 requestContext:*(*(a1 + 32) + 304)];
      v11 = +[ICURLSessionManager defaultSession];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __28__ICPlayInfoRequest_execute__block_invoke_43;
      v15[3] = &unk_1E7BFA4D8;
      v15[4] = *(a1 + 32);
      [v11 enqueueDataRequest:v10 withCompletionHandler:v15];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Request URL not found - failing request", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v14 finishWithError:v9];
    }
  }
}

void __28__ICPlayInfoRequest_execute__block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = [a2 parsedBodyDictionary];
    v8 = v7;
    if (v7)
    {
      if (![v7 ic_intValueForKey:@"status"])
      {
        v16 = [[ICPlayInfoResponse alloc] initWithResponseDictionary:v8];
        v17 = *(a1 + 32);
        v18 = *(v17 + 312);
        *(v17 + 312) = v16;

        v6 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = [v8 ic_intValueForKey:@"status"];
      v11 = @"ICStoreServerError";
      v12 = v9;
      v13 = v8;
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ failed to parse response", &v19, 0xCu);
      }

      v12 = MEMORY[0x1E696ABC0];
      v11 = @"ICError";
      v10 = -7102;
      v13 = 0;
    }

    v6 = [v12 errorWithDomain:v11 code:v10 userInfo:v13];
LABEL_10:
  }

  [*(a1 + 32) finishWithError:v6];
}

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__ICPlayInfoRequest_performWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

void __48__ICPlayInfoRequest_performWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Request completed. err=%{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (ICPlayInfoRequest)initWithRequestContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICPlayInfoRequest;
  v5 = [(ICRequestOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;
  }

  return v5;
}

@end