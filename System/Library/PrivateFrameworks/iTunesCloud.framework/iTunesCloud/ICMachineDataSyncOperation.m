@interface ICMachineDataSyncOperation
- (void)_finishWithSyncState:(id)a3 error:(id)a4;
- (void)execute;
@end

@implementation ICMachineDataSyncOperation

- (void)_finishWithSyncState:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ICMachineDataOperation *)self completionHandler];

  if (v7)
  {
    v8 = [(ICMachineDataOperation *)self completionHandler];
    (v8)[2](v8, v9, v6);
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
  v6[2] = __37__ICMachineDataSyncOperation_execute__block_invoke;
  v6[3] = &unk_1E7BF7B20;
  v6[4] = self;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v6];
}

void __37__ICMachineDataSyncOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__14555;
  v41 = __Block_byref_object_dispose__14556;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__14555;
  v35[4] = __Block_byref_object_dispose__14556;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if ([*(a1 + 32) protocolVersion] == 2)
  {
    v7 = -1;
  }

  else
  {
    v8 = [v5 DSID];
    v7 = [v8 unsignedLongLongValue];
  }

  v9 = [*(a1 + 32) data];
  v10 = v9;
  v11 = [v9 bytes];
  v12 = [*(a1 + 32) data];
  tn46gtiuhw(v7, v11, [v12 length], &v34, &v33, &v32, &v31);
  v14 = v13;

  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v14 userInfo:0];
    v16 = v38[5];
    v38[5] = v15;

    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v38[5];
      *buf = 138543362;
      v44 = v18;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "failed to sync machine data. err=%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _finishWithSyncState:0 error:v38[5]];
  }

  else
  {
    v19 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v32 length:v31];
    v20 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v34 length:v33];
    v21 = +[ICURLBagProvider sharedBagProvider];
    v22 = [*(a1 + 32) requestContext];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __37__ICMachineDataSyncOperation_execute__block_invoke_3;
    v25[3] = &unk_1E7BF5868;
    v25[4] = *(a1 + 32);
    v28 = &v37;
    v23 = v19;
    v26 = v23;
    v24 = v20;
    v27 = v24;
    v29 = v35;
    v30 = v7;
    [v21 getBagForRequestContext:v22 withCompletionHandler:v25];
  }

  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
}

void __37__ICMachineDataSyncOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "failed to fetch url bag for machine data sync. err=%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _finishWithSyncState:0 error:v6];
  }

  else
  {
    v8 = [*(a1 + 32) protocolVersion];
    v9 = @"md-sync-machine";
    if (v8 == 2)
    {
      v9 = @"amd-sync-machine";
    }

    v10 = v9;
    v11 = [v5 urlForBagKey:v10];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = [*(a1 + 40) base64EncodedStringWithOptions:0];
      [v12 setObject:v13 forKey:@"clientData"];

      v14 = [*(a1 + 48) base64EncodedStringWithOptions:0];
      [v12 setObject:v14 forKey:@"machineId"];

      if ([*(a1 + 32) protocolVersion] == 1)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 72)];
        [v12 setObject:v15 forKey:@"dsId"];
      }

      v16 = [MEMORY[0x1E695AC18] requestWithURL:v11];
      [v16 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      [v16 setHTTPMethod:@"POST"];
      v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:100 options:0 error:0];
      [v16 setHTTPBody:v17];

      v18 = [ICStoreURLRequest alloc];
      v19 = [*(a1 + 32) requestContext];
      v20 = [(ICStoreURLRequest *)v18 initWithURLRequest:v16 requestContext:v19];

      [(ICURLRequest *)v20 setMaxRetryCount:0];
      [(ICURLRequest *)v20 setPrioritize:1];
      v21 = +[ICURLSessionManager unlimitedHighPrioritySession];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __37__ICMachineDataSyncOperation_execute__block_invoke_19;
      v25[3] = &unk_1E7BF5840;
      v25[4] = *(a1 + 32);
      v26 = *(a1 + 56);
      [v21 enqueueDataRequest:v20 withCompletionHandler:v25];
    }

    else
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "failed to sync machine data because the bag is missing the request url", buf, 2u);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      v24 = *(*(a1 + 56) + 8);
      v12 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }
}

void __37__ICMachineDataSyncOperation_execute__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "failed to perform machine data sync request. err=%{public}@", &v13, 0xCu);
    }

    [*(a1 + 32) _finishWithSyncState:0 error:v5];
  }

  else
  {
    v7 = [a2 parsedBodyDictionary];
    v8 = v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      v10 = [v7 objectForKey:@"syncState"];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    [*(a1 + 32) _finishWithSyncState:*(*(*(a1 + 48) + 8) + 40) error:0];
  }
}

@end