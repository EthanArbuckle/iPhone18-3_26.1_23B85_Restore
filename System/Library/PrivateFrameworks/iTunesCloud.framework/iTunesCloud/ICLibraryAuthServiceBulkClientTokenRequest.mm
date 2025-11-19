@interface ICLibraryAuthServiceBulkClientTokenRequest
- (ICLibraryAuthServiceBulkClientTokenRequest)initWithStoreRequestContext:(id)a3 accountDSIDs:(id)a4;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICLibraryAuthServiceBulkClientTokenRequest

- (void)execute
{
  v3 = +[ICURLBagProvider sharedBagProvider];
  storeRequestContext = self->_storeRequestContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICLibraryAuthServiceBulkClientTokenRequest_execute__block_invoke;
  v5[3] = &unk_1E7BFA500;
  v5[4] = self;
  [v3 getBagForRequestContext:storeRequestContext withCompletionHandler:v5];
}

void __53__ICLibraryAuthServiceBulkClientTokenRequest_execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [a2 urlForBagKey:@"library-auth-service-token-url"];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6[38] identityStore];
      v8 = [*(*(a1 + 32) + 304) identity];
      v58 = 0;
      v9 = [v7 getPropertiesForUserIdentity:v8 error:&v58];
      v10 = v58;

      if (v10)
      {
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 32);
          v13 = [*(v12 + 304) identity];
          *buf = 138543874;
          v63 = v12;
          v64 = 2114;
          v65 = v13;
          v66 = 2114;
          v67 = v10;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for account %{public}@. err=%{public}@", buf, 0x20u);
        }

        [*(a1 + 32) finishWithError:v10];
      }

      else if (v9)
      {
        v48 = v5;
        v15 = [MEMORY[0x1E695AC18] requestWithURL:v5];
        [v15 setHTTPMethod:@"POST"];
        v46 = v15;
        [v15 setCachePolicy:1];
        v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        v17 = [*(*(a1 + 32) + 304) deviceInfo];
        v18 = [v17 deviceGUID];

        if (v18)
        {
          [v16 setObject:v18 forKey:@"guid"];
        }

        v44 = v18;
        v45 = v16;
        v49 = a1;
        v19 = [*(*(a1 + 32) + 320) mutableCopy];
        v47 = v9;
        v20 = [v9 DSID];
        [v19 addObject:v20];

        v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
        v21 = +[ICHTTPCookieStore sharedCookieStore];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v19;
        v22 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v55;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v55 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v54 + 1) + 8 * i);
              v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mz_at_ssl-%@", v26];
              v28 = [v21 getCookieWithName:v27 userIdentifier:v26];
              v29 = v28;
              if (v28)
              {
                v59[0] = @"dsid";
                v59[1] = @"sslToken";
                v60[0] = v26;
                v30 = [v28 value];
                v60[1] = v30;
                v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
                [v51 addObject:v31];
              }

              else
              {
                v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v32 = *(a1 + 32);
                  *buf = 138543618;
                  v63 = v32;
                  v64 = 2112;
                  v65 = v26;
                  _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load sslToken for account DSID %@ - skipping", buf, 0x16u);
                }
              }
            }

            v23 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
          }

          while (v23);
        }

        [v45 setObject:v51 forKey:@"dsids"];
        v53 = 0;
        v33 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v45 options:1 error:&v53];
        v34 = v53;
        if (v33)
        {
          v35 = v46;
          [v46 setHTTPBody:v33];
          [v46 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
          v36 = [[ICStoreURLRequest alloc] initWithURLRequest:v46 requestContext:*(*(v49 + 32) + 304)];
          v37 = +[ICURLSessionManager defaultSession];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __53__ICLibraryAuthServiceBulkClientTokenRequest_execute__block_invoke_33;
          v52[3] = &unk_1E7BFA4D8;
          v52[4] = *(v49 + 32);
          [v37 enqueueDataRequest:v36 withCompletionHandler:v52];

          v9 = v47;
          v5 = v48;
          v10 = 0;
        }

        else
        {
          v42 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          v35 = v46;
          v10 = 0;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = *(v49 + 32);
            *buf = 138543618;
            v63 = v43;
            v64 = 2114;
            v65 = v34;
            _os_log_impl(&dword_1B4491000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Failed to serialize request body. err=%{public}@", buf, 0x16u);
          }

          [*(v49 + 32) finishWithError:v34];
          v9 = v47;
          v5 = v48;
        }
      }

      else
      {
        v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = *(a1 + 32);
          *buf = 138543362;
          v63 = v39;
          _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_ERROR, "%{public}@ No active account - failing request", buf, 0xCu);
        }

        v40 = *(a1 + 32);
        v41 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7406 debugDescription:@"This request requires an active iTunes account"];
        [v40 finishWithError:v41];
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v6 finishWithError:v14];
    }
  }
}

void __53__ICLibraryAuthServiceBulkClientTokenRequest_execute__block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = [a2 parsedBodyDictionary];
    if (v6)
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received token response %@", &v14, 0x16u);
      }

      v9 = [[ICLibraryAuthServiceBulkClientTokenResponse alloc] initWithResponseDictionary:v6];
      v10 = *(a1 + 32);
      v11 = *(v10 + 312);
      *(v10 + 312) = v9;

      v5 = 0;
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ failed to parse token response", &v14, 0xCu);
      }

      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    }
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ICLibraryAuthServiceBulkClientTokenRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICLibraryAuthServiceBulkClientTokenRequest)initWithStoreRequestContext:(id)a3 accountDSIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICLibraryAuthServiceBulkClientTokenRequest;
  v9 = [(ICRequestOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeRequestContext, a3);
    v11 = [v8 copy];
    accountDSIDs = v10->_accountDSIDs;
    v10->_accountDSIDs = v11;
  }

  return v10;
}

@end