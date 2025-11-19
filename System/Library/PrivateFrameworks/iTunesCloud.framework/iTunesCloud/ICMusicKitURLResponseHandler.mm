@interface ICMusicKitURLResponseHandler
- (void)_invalidateDeveloperTokenForInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)_invalidateUserTokenForInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)_updateRequest:(id)a3 forProcessedResponseOfStoreURLRequest:(id)a4;
- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ICMusicKitURLResponseHandler

- (void)_updateRequest:(id)a3 forProcessedResponseOfStoreURLRequest:(id)a4
{
  v5 = a3;
  [a4 retryDelay];
  [v5 setRetryDelay:?];
}

- (void)_invalidateUserTokenForInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 requestContext];
  v11 = [v8 _developerToken];
  v12 = +[ICMusicUserTokenCache sharedCache];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__ICMusicKitURLResponseHandler__invalidateUserTokenForInitialResponse_toRequest_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E7BF9240;
  v17 = v8;
  v18 = v7;
  v19 = v9;
  v13 = v9;
  v14 = v7;
  v15 = v8;
  [v12 setCachedUserToken:0 forDeveloperToken:v11 requestContext:v10 completion:v16];
}

void __103__ICMusicKitURLResponseHandler__invalidateUserTokenForInitialResponse_toRequest_withCompletionHandler___block_invoke(void *a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying request after successfully invalidating music user token.", &v11, 0xCu);
    }

    v6 = 0;
    v7 = @"music-user-token-invalidated";
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8104 underlyingError:a3 debugDescription:@"Failed to invalidate music user token."];
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = [v6 msv_description];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error while processing initial response %{public}@. %{public}@", &v11, 0x20u);
    }

    v7 = 0;
  }

  (*(a1[6] + 16))();
}

- (void)_invalidateDeveloperTokenForInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 requestContext];
  v11 = [v10 clientInfo];
  v12 = [v10 developerTokenProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__ICMusicKitURLResponseHandler__invalidateDeveloperTokenForInitialResponse_toRequest_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E7BF9240;
  v17 = v8;
  v18 = v7;
  v19 = v9;
  v13 = v9;
  v14 = v7;
  v15 = v8;
  [v12 invalidateCachedDeveloperTokenForClientInfo:v11 completionHandler:v16];
}

void __108__ICMusicKitURLResponseHandler__invalidateDeveloperTokenForInitialResponse_toRequest_withCompletionHandler___block_invoke(void *a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying request after successfully invalidating developer token.", &v11, 0xCu);
    }

    v6 = 0;
    v7 = @"developer-token-invalidated";
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8201 underlyingError:a3 debugDescription:@"Failed to invalidate developer token."];
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = [v6 msv_description];
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error while processing initial response %{public}@. %{public}@", &v11, 0x20u);
    }

    v7 = 0;
  }

  (*(a1[6] + 16))();
}

- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ICMusicKitURLResponseHandler.m" lineNumber:62 description:{@"%@ only knows how to process responses for MusicKit requests. %@ is unsupported.", self, v10}];
  }

  v12 = [v10 handlingType];
  if (!v12)
  {
    v16 = [v9 statusCode];
    v17 = ICURLResponseStatusCodeGetExtendedDescription(v16);
    v18 = v10;
    v19 = [v18 requestContext];
    v20 = [v19 personalizationMethod];
    if (v20)
    {
      if (v20 != 1)
      {
        v35 = v19;
        v22 = 0;
        v21 = 0;
        goto LABEL_14;
      }

      v21 = v16 == 403;
      if (v16 != 401)
      {
        v35 = v19;
        v22 = 0;
LABEL_14:
        v24 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = v16 == 403;
      if (v16 != 401)
      {
        v35 = v19;
        v21 = 0;
        v24 = 1;
LABEL_16:
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __89__ICMusicKitURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke;
        v42[3] = &unk_1E7BF6878;
        v43 = v18;
        v49 = v22;
        v48 = v11;
        v44 = self;
        v36 = v17;
        v25 = v17;
        v45 = v25;
        v26 = v9;
        v46 = v26;
        v27 = v43;
        v47 = v27;
        v50 = v21;
        v28 = MEMORY[0x1B8C781E0](v42);
        if (v24)
        {
          v29 = [v27 _pendingEquivalentStoreURLRequest];
          v30 = [v29 responseHandler];
          if (v29 && v30)
          {
            v34 = v30;
            v33 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              v52 = self;
              v53 = 2114;
              v54 = v34;
              v55 = 2114;
              v56 = v25;
              v57 = 2114;
              v58 = v29;
              _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Deferring to %{public}@ to process completed response with status code %{public}@ for %{public}@.", buf, 0x2Au);
            }

            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __89__ICMusicKitURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_13;
            v38[3] = &unk_1E7BF9710;
            v38[4] = self;
            v39 = v27;
            v40 = v29;
            v41 = v28;
            v31 = v29;
            [v34 processCompletedResponse:v26 toRequest:v31 withCompletionHandler:v38];

            goto LABEL_24;
          }
        }

        v37.receiver = self;
        v37.super_class = ICMusicKitURLResponseHandler;
        [(ICURLResponseHandler *)&v37 processCompletedResponse:v26 toRequest:v27 withCompletionHandler:v28];
LABEL_24:

        v19 = v35;
        v17 = v36;
LABEL_25:

        goto LABEL_26;
      }
    }

    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v17;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating developer token upon processing completed response with status code %{public}@.", buf, 0x16u);
    }

    [(ICMusicKitURLResponseHandler *)self _invalidateDeveloperTokenForInitialResponse:v9 toRequest:v18 withCompletionHandler:v11];
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v10 retryReason];
  v15 = [v10 error];
  (*(v11 + 2))(v11, v13, v14, v15);

LABEL_26:
}

void __89__ICMusicKitURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2 && (v7 == @"authentication-performed" || [(__CFString *)v7 isEqual:@"authentication-performed"]))
  {
    v9 = [*(a1 + 32) _retryCountForReason:@"authentication-performed"];
    if (v9 < [*(a1 + 32) _maxRetryCountForReason:@"authentication-performed"])
    {
LABEL_19:
      (*(*(a1 + 72) + 16))();
      goto LABEL_20;
    }
  }

  if (*(a1 + 80) == 1)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v24 = 138543618;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating developer token upon processing completed response with status code %{public}@, after considering generic response handler.", &v24, 0x16u);
    }

    [*(a1 + 40) _invalidateDeveloperTokenForInitialResponse:*(a1 + 56) toRequest:*(a1 + 64) withCompletionHandler:*(a1 + 72)];
    goto LABEL_20;
  }

  if (*(a1 + 81) != 1)
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v17 = v16;
    if (v8)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 56);
        v20 = [v19 urlResponse];
        v21 = [*(a1 + 56) parsedBodyDictionary];
        v24 = 138544386;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        v28 = 2114;
        v29 = v8;
        v30 = 2114;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Completed processing response %{public}@ with error %{public}@.\nHTTP response=%{public}@\nbody=%{public}@", &v24, 0x34u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 56);
      v24 = 138543618;
      v25 = v22;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed processing response %{public}@.", &v24, 0x16u);
    }

    goto LABEL_19;
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v24 = 138543618;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating user token upon processing completed response with status code %{public}@, after considering generic response handler.", &v24, 0x16u);
  }

  [*(a1 + 40) _invalidateUserTokenForInitialResponse:*(a1 + 56) toRequest:*(a1 + 64) withCompletionHandler:*(a1 + 72)];
LABEL_20:
}

void __89__ICMusicKitURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_13(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a4;
  v10 = a3;
  [v6 _updateRequest:v7 forProcessedResponseOfStoreURLRequest:v8];
  (*(a1[7] + 16))();
}

- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"ICMusicKitURLResponseHandler.m" lineNumber:35 description:{@"%@ only knows how to process responses for MusicKit requests. %@ is unsupported.", self, v10}];
  }

  v12 = v10;
  v13 = [v12 requestContext];
  if ([v13 personalizationMethod])
  {
    goto LABEL_10;
  }

  v14 = [v12 _pendingEquivalentStoreURLRequest];
  v15 = [v14 responseHandler];
  v16 = v15;
  if (!v14 || !v15)
  {

LABEL_10:
    v21.receiver = self;
    v21.super_class = ICMusicKitURLResponseHandler;
    [(ICURLResponseHandler *)&v21 processInitialResponse:v9 toRequest:v12 withCompletionHandler:v11];
    goto LABEL_11;
  }

  v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = ICURLResponseStatusCodeGetExtendedDescription([v9 statusCode]);
    *buf = 138544130;
    v27 = self;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v18;
    v32 = 2114;
    v33 = v14;
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Deferring to %{public}@ to process initial response with status code %{public}@ for %{public}@.", buf, 0x2Au);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__ICMusicKitURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E7BF6850;
  v22[4] = self;
  v23 = v12;
  v24 = v14;
  v25 = v11;
  v19 = v14;
  [v16 processInitialResponse:v9 toRequest:v19 withCompletionHandler:v22];

LABEL_11:
}

void __87__ICMusicKitURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a5;
  v11 = a4;
  [v7 _updateRequest:v8 forProcessedResponseOfStoreURLRequest:v9];
  (*(a1[7] + 16))();
}

@end