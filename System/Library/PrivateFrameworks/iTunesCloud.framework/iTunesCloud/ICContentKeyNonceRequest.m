@interface ICContentKeyNonceRequest
- (ICContentKeyNonceRequest)initWithStoreRequestContext:(id)a3 adamID:(id)a4 accountDSID:(id)a5 keyServerURL:(id)a6;
- (void)execute;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation ICContentKeyNonceRequest

- (void)execute
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    adamID = self->_adamID;
    if (!adamID)
    {
      adamID = &unk_1F2C921B8;
    }

    v27[0] = adamID;
    v26[0] = @"adamID";
    v26[1] = @"DSID";
    v5 = ICCreateLoggableValueForDSID(self->_accountDSID);
    v27[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *buf = 138543618;
    v29 = self;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing nonce request with params: %{public}@", buf, 0x16u);
  }

  v7 = self->_adamID;
  if (!v7)
  {
    v7 = &unk_1F2C921B8;
  }

  v24[0] = @"adam-id";
  v24[1] = @"id";
  v25[0] = v7;
  v25[1] = &unk_1F2C921D0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v22[1] = @"nonce-requests";
  v23[0] = &unk_1F2C921D0;
  v21 = v8;
  v22[0] = @"version";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v23[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v20 = 0;
  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:&v20];
  v12 = v20;
  v13 = v12;
  if (!v11 || v12)
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to serialize key server request data with error: %{public}@", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 underlyingError:v13 debugDescription:@"Failed to serialize key server request data"];
    [(ICRequestOperation *)self finishWithError:v14];
  }

  else
  {
    v14 = [MEMORY[0x1E695AC18] requestWithURL:self->_keyServerURL];
    [v14 setHTTPMethod:@"POST"];
    [v14 setHTTPBody:v11];
    v15 = [(NSNumber *)self->_accountDSID stringValue];
    [v14 setValue:v15 forHTTPHeaderField:@"X-Secure-Invalidation-Dsid"];

    [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v16 = [[ICStoreURLRequest alloc] initWithURLRequest:v14 requestContext:self->_storeRequestContext];
    [(ICURLRequest *)v16 setRequestName:@"SKDNonce"];
    v17 = +[ICURLSessionManager highPrioritySession];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__ICContentKeyNonceRequest_execute__block_invoke;
    v19[3] = &unk_1E7BFA4D8;
    v19[4] = self;
    [v17 enqueueDataRequest:v16 withCompletionHandler:v19];
  }
}

void __35__ICContentKeyNonceRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v36 = 138543362;
      v37 = v11;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed Nonce request", &v36, 0xCu);
    }

    v12 = [v5 parsedBodyDictionary];
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v36 = 138543618;
      v37 = v14;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Received response %@", &v36, 0x16u);
    }

    if (!v12)
    {
      v33 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 32);
        v36 = 138543362;
        v37 = v34;
        _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Received empty response", &v36, 0xCu);
      }

      v35 = *(a1 + 32);
      v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:@"Received empty response"];
      [v35 finishWithError:v16];
      goto LABEL_24;
    }

    v15 = [v12 ic_arrayValueForKey:@"nonce-responses"];
    v16 = v15;
    if (v15 && ([v15 objectAtIndexedSubscript:0], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v19 = [[ICContentKeyNonceResponse alloc] initWithResponseDictionary:v17];
      v20 = *(a1 + 32);
      v21 = *(v20 + 336);
      *(v20 + 336) = v19;

      v22 = [*(*(a1 + 32) + 336) status];
      if (v22)
      {
        v23 = v22;
        v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 32);
          v36 = 138543618;
          v37 = v25;
          v38 = 2114;
          v39 = v12;
          _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Received non-zero status code response: %{public}@", &v36, 0x16u);
        }

        v26 = *(a1 + 32);
        v27 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICKeyServerError" code:v23 debugDescription:@"received non-zero status in nonce response"];
        [v26 finishWithError:v27];

        goto LABEL_20;
      }

      v31 = *(a1 + 32);
      v32 = 0;
    }

    else
    {
      v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        v36 = 138543618;
        v37 = v29;
        v38 = 2114;
        v39 = v12;
        _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Received a response with no nonce-responses: %{public}@", &v36, 0x16u);
      }

      v30 = *(a1 + 32);
      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:@"Received a response with no nonce-responses"];
      v31 = v30;
      v32 = v18;
    }

    [v31 finishWithError:v32];
LABEL_20:

LABEL_24:
    goto LABEL_25;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = [v6 msv_description];
    v36 = 138543618;
    v37 = v9;
    v38 = 2114;
    v39 = v10;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Completed Nonce request error=%{public}@", &v36, 0x16u);
  }

  [*(a1 + 32) finishWithError:v6];
LABEL_25:
}

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__ICContentKeyNonceRequest_performWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICContentKeyNonceRequest)initWithStoreRequestContext:(id)a3 adamID:(id)a4 accountDSID:(id)a5 keyServerURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICContentKeyNonceRequest;
  v15 = [(ICRequestOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_storeRequestContext, a3);
    objc_storeStrong(&v16->_adamID, a4);
    objc_storeStrong(&v16->_accountDSID, a5);
    objc_storeStrong(&v16->_keyServerURL, a6);
  }

  return v16;
}

@end