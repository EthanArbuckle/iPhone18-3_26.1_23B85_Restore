@interface ICURLResponseHandler
- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ICURLResponseHandler

- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 statusCode];
  v12 = ICURLResponseStatusCodeGetExtendedDescription(v11);
  v13 = [v9 requestContext];
  v14 = [v13 authenticationProvider];

  if ((v11 & 0xFFFFFFFFFFFFFFFDLL) == 0x191 && v14)
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v29 = self;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ attempting re-authentication for HTTP response code %{public}@.", buf, 0x20u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __81__ICURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E7BF7630;
    v24[4] = self;
    v25 = v9;
    v26 = v12;
    v27 = v10;
    [v14 performAuthenticationToHandleResponse:v8 toRequest:v25 withCompletionHandler:v24];
  }

  else
  {
    v16 = [v9 handlingType];
    v17 = [v9 retryReason];
    if (!v16)
    {
      v16 = [v9 error];

      if (v11 == 502 || v16)
      {
        v18 = +[ICEnvironmentMonitor sharedMonitor];
        v19 = [v18 isRemoteServerLikelyReachable];

        v20 = [v9 error];
        v21 = [v20 code];

        if (v21 != -7100 || (v19 & 1) != 0)
        {

          v17 = @"other";
          v16 = 2;
        }

        else
        {
          v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = self;
            v30 = 2114;
            v31 = v9;
            _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Got connection error and server is not reachable - skipping retry", buf, 0x16u);
          }

          v16 = 0;
        }
      }
    }

    v23 = [v9 error];
    (*(v10 + 2))(v10, v16, v17, v23);
  }
}

void __81__ICURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5 && a2)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ authentication for HTTP response code %{public}@ successful - retrying request", &v15, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = @"authentication-performed";
    v13 = 1;
    goto LABEL_11;
  }

  v13 = a2;
  if (a2)
  {
    v12 = @"authentication-performed";
  }

  else
  {
    v12 = 0;
  }

  v11 = *(a1 + 56);
  if (!v5)
  {
LABEL_11:
    v14 = [*(a1 + 40) error];
    (*(v11 + 16))(v11, v13, v12, v14);

    goto LABEL_12;
  }

  (*(v11 + 16))(*(a1 + 56), v13, v12, v5);
LABEL_12:
}

- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v11 = a5;
  v7 = a4;
  v8 = [a3 statusCode];
  v9 = [v7 cancelOnHTTPErrors];

  if (v8 > 399)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  (*(v11 + 2))(v11, v10, 0, 0, 0);
}

@end