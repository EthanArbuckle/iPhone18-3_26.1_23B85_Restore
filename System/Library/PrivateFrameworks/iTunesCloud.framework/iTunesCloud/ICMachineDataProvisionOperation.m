@interface ICMachineDataProvisionOperation
- (void)_finishWithError:(id)a3;
- (void)execute;
@end

@implementation ICMachineDataProvisionOperation

- (void)_finishWithError:(id)a3
{
  v6 = a3;
  v4 = [(ICMachineDataOperation *)self completionHandler];

  if (v4)
  {
    v5 = [(ICMachineDataOperation *)self completionHandler];
    (v5)[2](v5, 0, v6);
  }

  [(ICAsyncOperation *)self finishWithError:v6];
}

- (void)execute
{
  v3 = [(ICMachineDataOperation *)self requestContext];
  v4 = [v3 identityStore];
  v5 = [v3 identity];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__ICMachineDataProvisionOperation_execute__block_invoke;
  v6[3] = &unk_1E7BF7B20;
  v6[4] = self;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v6];
}

void __42__ICMachineDataProvisionOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) protocolVersion] == 2)
  {
    v7 = -1;
  }

  else
  {
    v8 = [v5 DSID];
    v7 = [v8 unsignedLongLongValue];
  }

  v9 = [[ICADIProvisionSession alloc] initWithAccountID:v7];
  v10 = *(a1 + 32);
  v11 = *(v10 + 320);
  *(v10 + 320) = v9;

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3579;
  v32 = __Block_byref_object_dispose__3580;
  v33 = 0;
  v12 = *(a1 + 32);
  v13 = v12[40];
  v14 = [v12 data];
  v15 = (v29 + 5);
  obj = v29[5];
  v27 = 0;
  v16 = [v13 startWithServerActionData:v14 returningClientData:&v27 error:&obj];
  v17 = v27;
  objc_storeStrong(v15, obj);

  if (v16)
  {
    v18 = +[ICURLBagProvider sharedBagProvider];
    v19 = [*(a1 + 32) requestContext];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__ICMachineDataProvisionOperation_execute__block_invoke_2;
    v22[3] = &unk_1E7BF3EE8;
    v22[4] = *(a1 + 32);
    v23 = v17;
    v24 = &v28;
    v25 = v7;
    [v18 getBagForRequestContext:v19 withCompletionHandler:v22];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v29[5];
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "failed to start machine data provisioning. err=%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _finishWithError:v29[5]];
  }

  _Block_object_dispose(&v28, 8);
}

void __42__ICMachineDataProvisionOperation_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 _finishWithError:a3];
  }

  else
  {
    v7 = [v6 protocolVersion];
    v8 = @"md-finish-provisioning";
    if (v7 == 2)
    {
      v8 = @"amd-finish-provisioning";
    }

    v9 = v8;
    v10 = [v5 urlForBagKey:v9];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v10];
      [v11 setHTTPMethod:@"POST"];
      [v11 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = [*(a1 + 40) base64EncodedStringWithOptions:0];
      [v12 setObject:v13 forKey:@"clientData"];

      v14 = +[ICDeviceInfo currentDeviceInfo];
      v15 = [v14 deviceGUID];

      if (v15)
      {
        [v12 setObject:v15 forKey:@"guid"];
      }

      if ([*(a1 + 32) protocolVersion] == 1)
      {
        v16 = *(a1 + 56);
        v17 = *(*(a1 + 48) + 8);
        obj = *(v17 + 40);
        v31 = 0;
        v18 = ICFairPlayCopyKeyBagSyncData(v16, 1, &v31, &obj);
        v19 = v31;
        objc_storeStrong((v17 + 40), obj);
        if (v18 && v19)
        {
          [v12 setObject:v19 forKey:@"kbsync"];
        }

        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
        [v12 setObject:v20 forKey:@"dsId"];
      }

      v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:0];
      [v11 setHTTPBody:v21];

      v22 = [ICStoreURLRequest alloc];
      v23 = [*(a1 + 32) requestContext];
      v24 = [(ICStoreURLRequest *)v22 initWithURLRequest:v11 requestContext:v23];

      [(ICURLRequest *)v24 setMaxRetryCount:0];
      [(ICURLRequest *)v24 setPrioritize:1];
      v25 = +[ICURLSessionManager unlimitedHighPrioritySession];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __42__ICMachineDataProvisionOperation_execute__block_invoke_23;
      v29[3] = &unk_1E7BF3EC0;
      v26 = *(a1 + 48);
      v29[4] = *(a1 + 32);
      v29[5] = v26;
      [v25 enqueueDataRequest:v24 withCompletionHandler:v29];
    }

    else
    {
      v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "failed to perform machine data provisioning because the url is missing from the bag", buf, 2u);
      }

      v28 = *(a1 + 32);
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v28 _finishWithError:v11];
    }
  }
}

void __42__ICMachineDataProvisionOperation_execute__block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "failed to perform machine data provisioning request. err=%{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
    [v7 _finishWithError:v8];
  }

  else
  {
    v8 = [a2 parsedBodyDictionary];
    v9 = [v8 objectForKey:@"transportKey"];
    v10 = [v8 objectForKey:@"keybag"];
    v11 = [v8 objectForKey:@"settingInfo"];
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        if (![v10 length] || (v13 = *(*(a1 + 40) + 8), obj = *(v13 + 40), v14 = ICFairPlayImportKeybagData(v10, &obj), objc_storeStrong((v13 + 40), obj), v14))
        {
          v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
          v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
          v17 = *(*(a1 + 32) + 320);
          v18 = *(*(a1 + 40) + 8);
          v22 = *(v18 + 40);
          v19 = [v17 endWithMessageData:v15 transportKey:v16 error:&v22];
          objc_storeStrong((v18 + 40), v22);
          if ((v19 & 1) == 0)
          {
            v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(*(*(a1 + 40) + 8) + 40);
              *buf = 138543362;
              v25 = v21;
              _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "failed to end machine data provisioning. err=%{public}@", buf, 0xCu);
            }
          }

          [*(a1 + 32) _finishWithError:*(*(*(a1 + 40) + 8) + 40)];
        }
      }
    }
  }
}

@end