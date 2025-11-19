@interface ICMusicRestoreRequest
- (ICMusicRestoreRequest)initWithRequestContext:(id)a3 parameters:(id)a4;
- (id)_serializedBodyDataWithAccountID:(id)a3;
- (void)cancel;
- (void)execute;
- (void)performRestoreRequestWithCompletionHandler:(id)a3;
@end

@implementation ICMusicRestoreRequest

- (id)_serializedBodyDataWithAccountID:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = +[ICDeviceInfo currentDeviceInfo];
  v7 = [v6 deviceName];

  if (v7)
  {
    [v5 setObject:v7 forKey:@"device-name"];
  }

  v8 = +[ICDeviceInfo currentDeviceInfo];
  v9 = [v8 deviceGUID];

  if (v9)
  {
    [v5 setObject:v9 forKey:@"guid"];
  }

  v10 = +[ICDeviceInfo currentDeviceInfo];
  v11 = [v10 serialNumber];

  if (v11)
  {
    [v5 setObject:v11 forKey:@"serial-number"];
  }

  v47 = 0;
  v46 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v47, &v46);
  v13 = v46;
  if (ContextIdentifierForFolderPath)
  {
    v45 = 0;
    v44 = v13;
    v14 = ICFairPlayCopyKeyBagSyncDataWithContextID(v47, [v4 unsignedLongLongValue], 1, &v45, &v44);
    v15 = v45;
    v16 = v44;

    v42 = v16;
    if (v14)
    {
      [v5 setObject:v15 forKey:@"kbsync"];
    }

    else
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v50 = self;
        v51 = 2114;
        v52 = 0;
        v53 = 2114;
        v54 = v16;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Copying keybag sync data for path %{public}@ failed with error: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v50 = self;
      v51 = 2114;
      v52 = v13;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Getting context ID failed with error: %{public}@", buf, 0x16u);
    }

    v15 = 0;
    v42 = v13;
  }

  requestParameters = self->_requestParameters;
  if (requestParameters)
  {
    v39 = v9;
    v20 = MEMORY[0x1E695DF20];
    v21 = [(ICMusicRestoreRequestParameters *)requestParameters adamID];
    [(ICMusicRestoreRequestParameters *)self->_requestParameters flavor];
    v22 = v38 = v11;
    v23 = [(ICMusicRestoreRequestParameters *)self->_requestParameters storeFrontID];
    [(ICMusicRestoreRequestParameters *)self->_requestParameters mediaKind];
    v24 = v37 = v15;
    [(ICMusicRestoreRequestParameters *)self->_requestParameters accountID];
    v40 = v5;
    v41 = v7;
    v26 = v25 = v4;
    [(ICMusicRestoreRequestParameters *)self->_requestParameters title];
    v28 = v27 = self;
    v29 = [(ICMusicRestoreRequestParameters *)v27->_requestParameters matchStatus];
    v30 = [v20 dictionaryWithObjectsAndKeys:{v21, @"item-id", v22, @"flavor", v23, @"store-front-id", v24, @"kind", v26, @"account-id", v28, @"title", v29, @"match-status", 0}];

    self = v27;
    v4 = v25;
    v5 = v40;
    v7 = v41;

    v15 = v37;
    v11 = v38;

    v48 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [v40 setValue:v31 forKey:@"items"];

    v9 = v39;
  }

  v43 = 0;
  v32 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v43];
  v33 = v43;

  if (!v32)
  {
    v34 = v15;
    v35 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v50 = self;
      v51 = 2114;
      v52 = v33;
      _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Serializing request body failed with error: %{public}@", buf, 0x16u);
    }

    v15 = v34;
  }

  return v32;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ICMusicRestoreRequest;
  [(ICMusicRestoreRequest *)&v4 cancel];
  v3 = +[ICURLSessionManager defaultSession];
  [v3 cancelRequest:self->_storeURLRequest];
}

- (void)execute
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  if ([v3 isIPhone])
  {
    goto LABEL_4;
  }

  v4 = +[ICDeviceInfo currentDeviceInfo];
  if ([v4 isIPad])
  {

LABEL_4:
LABEL_5:
    v5 = +[ICURLBagProvider sharedBagProvider];
    requestContext = self->_requestContext;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__ICMusicRestoreRequest_execute__block_invoke;
    v10[3] = &unk_1E7BFA500;
    v10[4] = self;
    [v5 getBagForRequestContext:requestContext withCompletionHandler:v10];

    return;
  }

  v7 = +[ICDeviceInfo currentDeviceInfo];
  v8 = [v7 isIPod];

  if (v8)
  {
    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
  [(ICRequestOperation *)self finishWithError:v9];
}

void __32__ICMusicRestoreRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 finishWithError:v6];
  }

  else if ([v7 isCancelled])
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
    [v8 finishWithError:v9];
  }

  else
  {
    v10 = [v5 dictionaryForBagKey:@"p2-content-restore"];
    if (v10 && (_NSIsNSDictionary() & 1) != 0)
    {
      v11 = [[ICMusicRestoreBagConfiguration alloc] initWithServerConfiguration:v10];
      v12 = [(ICMusicRestoreBagConfiguration *)v11 allowedKinds];
      if ([v12 containsObject:@"song"])
      {
        v13 = [(ICMusicRestoreBagConfiguration *)v11 allowedMatchStatus];
        v14 = [*(*(a1 + 32) + 328) matchStatus];
        v15 = v14;
        if (v13 && v14 && ([v13 containsObject:v14] & 1) == 0)
        {
          v26 = _ICLogCategoryDefault();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v13;
            *&buf[12] = 2048;
            *&buf[14] = [v15 longLongValue];
            _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "StoreMatchStatus is not in acceptable list - allowedMatchStatus=%{public}@, itemMatchStatus=%lld", buf, 0x16u);
          }

          v27 = *(a1 + 32);
          v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
          [v27 finishWithError:v28];
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v37 = __Block_byref_object_copy__10809;
          v38 = __Block_byref_object_dispose__10810;
          v39 = [(ICMusicRestoreBagConfiguration *)v11 restoreURL];
          if (*(*&buf[8] + 40))
          {
            v16 = [*(*(a1 + 32) + 304) identity];
            v17 = [*(*(a1 + 32) + 304) identityStore];
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __32__ICMusicRestoreRequest_execute__block_invoke_44;
            v29[3] = &unk_1E7BF4E40;
            v18 = v16;
            v19 = *(a1 + 32);
            v30 = v18;
            v31 = v19;
            v34 = buf;
            v32 = v11;
            v33 = v5;
            [v17 getPropertiesForUserIdentity:v18 completionHandler:v29];
          }

          else
          {
            v24 = _ICLogCategoryDefault();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v35 = 0;
              _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "Error reading restore URL from bag", v35, 2u);
            }

            v25 = *(a1 + 32);
            v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
            [v25 finishWithError:v18];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = @"song";
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "Asset type %{public}@ is not present in allowed restore kinds (%{public}@)", buf, 0x16u);
        }

        v23 = *(a1 + 32);
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
        [v23 finishWithError:v13];
      }
    }

    else
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "Error reading restore configuration from bag", buf, 2u);
      }

      v21 = *(a1 + 32);
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v21 finishWithError:v11];
    }
  }
}

void __32__ICMusicRestoreRequest_execute__block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 138543618;
      v43 = v23;
      v44 = 2114;
      v45 = v7;
      _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "Could not get properties for %{public}@, error=%{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v7];
  }

  else
  {
    v8 = [v5 DSID];
    v9 = [v5 username];
    if (v9 && v8)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      v11 = [MEMORY[0x1E695AC18] requestWithURL:*(*(*(a1 + 64) + 8) + 40)];
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v38 = +[ICDeviceInfo currentDeviceInfo];
      v13 = [v38 serialNumber];
      if (v13)
      {
        [v12 setObject:v13 forKey:@"serial-number"];
        v14 = [*(*(*(a1 + 64) + 8) + 40) ic_URLByAppendingQueryParameters:v12];
        v15 = *(*(a1 + 64) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      v37 = v13;
      v17 = [*(a1 + 48) shouldGZip];
      v18 = [*(a1 + 40) _serializedBodyDataWithAccountID:v8];
      v19 = v18;
      v36 = v12;
      if (v17 && [v18 length])
      {
        v20 = MSVGzipCompressData();
        if ([v20 length])
        {
          v35 = v20;

          v21 = @"gzip";
          v19 = v35;
        }

        else
        {
          v21 = 0;
        }

        v12 = v36;
      }

      else
      {
        v21 = 0;
      }

      if ([v19 length])
      {
        [v11 setCachePolicy:1];
        [v11 setHTTPBody:v19];
        [v11 setHTTPMethod:@"POST"];
        if (v21)
        {
          [v11 setValue:v21 forHTTPHeaderField:@"Content-Encoding"];
        }

        [v11 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
        [v11 setValue:@"com.apple.atc" forHTTPHeaderField:@"X-Apple-Issuing-Process"];
        v26 = [[ICStoreURLRequest alloc] initWithURLRequest:v11 requestContext:*(*(a1 + 40) + 304)];
        v27 = *(a1 + 40);
        v28 = *(v27 + 312);
        *(v27 + 312) = v26;

        v29 = +[ICURLSessionManager defaultSession];
        v30 = *(a1 + 40);
        v31 = *(v30 + 312);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __32__ICMusicRestoreRequest_execute__block_invoke_62;
        v39[3] = &unk_1E7BF56C8;
        v39[4] = v30;
        v40 = v10;
        v41 = *(a1 + 56);
        [v29 enqueueDataRequest:v31 withCompletionHandler:v39];

        v12 = v36;
      }

      else
      {
        v32 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, "Error serializing request body data", buf, 2u);
        }

        v33 = *(a1 + 40);
        v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7005 userInfo:0];
        [v33 finishWithError:v34];
      }
    }

    else
    {
      v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v43 = v9;
        v44 = 2114;
        v45 = v8;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "Invalid userName (%{public}@), DSID (%{public}@)", buf, 0x16u);
      }

      v25 = *(a1 + 40);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      [v25 finishWithError:v10];
    }
  }
}

void __32__ICMusicRestoreRequest_execute__block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = [a2 parsedBodyDictionary];
  v6 = [[ICMediaRedownloadResponse alloc] initWithResponseDictionary:v9 requestDate:*(a1 + 40) urlBag:*(a1 + 48)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 320);
  *(v7 + 320) = v6;

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRestoreRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__ICMusicRestoreRequest_performRestoreRequestWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

void __68__ICMusicRestoreRequest_performRestoreRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 320);
  *(v4 + 320) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 328);
  *(v6 + 328) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 304);
  *(v8 + 304) = 0;
}

- (ICMusicRestoreRequest)initWithRequestContext:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICMusicRestoreRequest;
  v9 = [(ICRequestOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestContext, a3);
    objc_storeStrong(&v10->_requestParameters, a4);
  }

  return v10;
}

@end