@interface ICURLResponseHandler
- (void)processCompletedResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler;
- (void)processInitialResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler;
@end

@implementation ICURLResponseHandler

- (void)processCompletedResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  requestCopy = request;
  handlerCopy = handler;
  statusCode = [responseCopy statusCode];
  v12 = ICURLResponseStatusCodeGetExtendedDescription(statusCode);
  requestContext = [requestCopy requestContext];
  authenticationProvider = [requestContext authenticationProvider];

  if ((statusCode & 0xFFFFFFFFFFFFFFFDLL) == 0x191 && authenticationProvider)
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v30 = 2114;
      v31 = requestCopy;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ attempting re-authentication for HTTP response code %{public}@.", buf, 0x20u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __81__ICURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E7BF7630;
    v24[4] = self;
    v25 = requestCopy;
    v26 = v12;
    v27 = handlerCopy;
    [authenticationProvider performAuthenticationToHandleResponse:responseCopy toRequest:v25 withCompletionHandler:v24];
  }

  else
  {
    handlingType = [requestCopy handlingType];
    retryReason = [requestCopy retryReason];
    if (!handlingType)
    {
      handlingType = [requestCopy error];

      if (statusCode == 502 || handlingType)
      {
        v18 = +[ICEnvironmentMonitor sharedMonitor];
        isRemoteServerLikelyReachable = [v18 isRemoteServerLikelyReachable];

        error = [requestCopy error];
        code = [error code];

        if (code != -7100 || (isRemoteServerLikelyReachable & 1) != 0)
        {

          retryReason = @"other";
          handlingType = 2;
        }

        else
        {
          v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy2 = self;
            v30 = 2114;
            v31 = requestCopy;
            _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Got connection error and server is not reachable - skipping retry", buf, 0x16u);
          }

          handlingType = 0;
        }
      }
    }

    error2 = [requestCopy error];
    (*(handlerCopy + 2))(handlerCopy, handlingType, retryReason, error2);
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

- (void)processInitialResponse:(id)response toRequest:(id)request withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  statusCode = [response statusCode];
  cancelOnHTTPErrors = [requestCopy cancelOnHTTPErrors];

  if (statusCode > 399)
  {
    v10 = cancelOnHTTPErrors;
  }

  else
  {
    v10 = 0;
  }

  (*(handlerCopy + 2))(handlerCopy, v10, 0, 0, 0);
}

@end