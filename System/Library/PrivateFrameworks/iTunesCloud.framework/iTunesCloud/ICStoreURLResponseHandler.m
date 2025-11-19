@interface ICStoreURLResponseHandler
+ (void)_updateDefaultStorefrontIdentifier:(id)a3 usingIdentityStore:(id)a4;
- (BOOL)_isAuthenticationError:(id)a3;
- (void)_verifyMescalSignatureForResponse:(id)a3 toRequest:(id)a4 completionHandler:(id)a5;
- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ICStoreURLResponseHandler

- (BOOL)_isAuthenticationError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"ICStoreServerError"];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v6 = [v3 code];
  v7 = 0;
  if (v6 > 2033)
  {
    if (((v6 - 2034) > 0x26 || ((1 << (v6 + 14)) & 0x7000001001) == 0) && v6 != 510005)
    {
      goto LABEL_12;
    }

LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ((v6 - 1001) <= 3 && v6 != 1002 || v6 == 2002)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (void)_verifyMescalSignatureForResponse:(id)a3 toRequest:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 storeRequestContext];
  v11 = +[ICURLBagProvider sharedBagProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__ICStoreURLResponseHandler__verifyMescalSignatureForResponse_toRequest_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF9768;
  v17 = v7;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v11 getBagForRequestContext:v12 withCompletionHandler:v16];
}

void __91__ICStoreURLResponseHandler__verifyMescalSignatureForResponse_toRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) urlResponse];
  v8 = [v5 mescalConfigurationForResponse:v7];

  if (!v8)
  {
    goto LABEL_44;
  }

  if (([v8 shouldSignBody] & 1) == 0)
  {
    v9 = [v8 fields];
    if ([v9 count])
    {

      goto LABEL_6;
    }

    v10 = [v8 headers];
    v11 = [v10 count];

    if (v11)
    {
      goto LABEL_6;
    }

LABEL_44:
    (*(*(a1 + 56) + 16))();
    goto LABEL_57;
  }

LABEL_6:
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 138543618;
    v84 = v13;
    v85 = 2114;
    v86 = v8;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ verifying mescal signature for request. configuration=%{public}@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) urlResponse];
  v15 = [v14 ic_valueForHTTPHeaderField:@"X-Apple-ActionSignature"];
  if (v15)
  {
    v60 = v15;
    v58 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
    v70 = objc_alloc_init(MEMORY[0x1E695DF88]);
    if ([v8 shouldSignBody])
    {
      v16 = [*(a1 + 32) bodyData];
      [v70 appendData:v16];
    }

    v66 = a1;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v17 = [v8 headers];
    v18 = [v17 countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v80;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v80 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v14 ic_valueForHTTPHeaderField:*(*(&v79 + 1) + 8 * i)];
          v23 = v22;
          if (v22 && [v22 length])
          {
            v24 = [v23 dataUsingEncoding:4];
            [v70 appendData:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v79 objects:v91 count:16];
      }

      while (v19);
    }

    v61 = v14;
    v63 = v6;
    v64 = v5;

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v62 = v8;
    obj = [v8 fields];
    v25 = [obj countByEnumeratingWithState:&v75 objects:v90 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v76;
      v29 = v66;
      v65 = *v76;
      do
      {
        v30 = 0;
        v67 = v26;
        do
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v75 + 1) + 8 * v30);
          if (!v27)
          {
            v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v32 = objc_alloc(MEMORY[0x1E696AF20]);
            v33 = [*(v29 + 32) urlResponse];
            v34 = [v33 URL];
            v35 = [v32 initWithURL:v34 resolvingAgainstBaseURL:0];

            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = v35;
            v36 = [v35 queryItems];
            v37 = [v36 countByEnumeratingWithState:&v71 objects:v89 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v72;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v72 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v71 + 1) + 8 * j);
                  v42 = [v41 name];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = [v41 value];

                    if (v44)
                    {
                      v45 = [v41 value];
                      v46 = [v41 name];
                      [v27 setObject:v45 forKeyedSubscript:v46];
                    }
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v71 objects:v89 count:16];
              }

              while (v38);
            }

            v28 = v65;
            v29 = v66;
            v26 = v67;
          }

          v47 = [v27 objectForKey:v31];
          v48 = v47;
          if (v47 && [v47 length])
          {
            v49 = [v48 dataUsingEncoding:4];
            [v70 appendData:v49];
          }

          ++v30;
        }

        while (v30 != v26);
        v26 = [obj countByEnumeratingWithState:&v75 objects:v90 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
      v29 = v66;
    }

    if ([v70 length] <= 0x100000)
    {
      v5 = v64;
      v55 = [ICSAPSession sharedSAPSessionWithVersion:200 URLBag:v64 requestContext:*(v29 + 48)];
      v56 = v55;
      v57 = *(v29 + 56);
      v14 = v61;
      if (v55)
      {
        v51 = v59;
        [v55 verifySignatureData:v59 forData:v70 withCompletionHandler:v57];
      }

      else
      {
        (*(v57 + 16))(*(v29 + 56), 1, 0);
        v51 = v59;
      }

      v15 = v60;
    }

    else
    {
      v52 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v5 = v64;
      v14 = v61;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(v29 + 40);
        v54 = [v70 length];
        *buf = 138543874;
        v84 = v53;
        v85 = 2048;
        v86 = v54;
        v87 = 2048;
        v88 = 0x100000;
        _os_log_impl(&dword_1B4491000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Not verifying mescal signature because the payload is too large. length=%lld, limit=%lld", buf, 0x20u);
      }

      (*(*(v29 + 56) + 16))();
      v51 = v59;
      v15 = v60;
    }

    v8 = v62;
    v6 = v63;
  }

  else
  {
    v50 = *(a1 + 56);
    v51 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    (*(v50 + 16))(v50, 0, v51);
  }

LABEL_57:
}

- (void)processCompletedResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7BF9710;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v14.receiver = self;
  v14.super_class = ICStoreURLResponseHandler;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(ICURLResponseHandler *)&v14 processCompletedResponse:v12 toRequest:v13 withCompletionHandler:v15];
}

void __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke(id *a1, uint64_t a2, void *a3, void *a4)
{
  v102[3] = *MEMORY[0x1E69E9840];
  v68 = a3;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__37133;
  v89 = __Block_byref_object_dispose__37134;
  v66 = a4;
  v90 = v66;
  v7 = a1[4];
  v67 = [v7 storeRequestContext];
  v64 = a2;
  v8 = [a1[5] urlResponse];
  if ([v7 shouldParseBodyData])
  {
    v9 = [a1[5] parsedBodyDictionary];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKey:@"invalidate-url-bags"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      *buf = 138543362;
      v92 = v12;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating bag cache because invalidate-url-bags is set in the response", buf, 0xCu);
    }

    v13 = +[ICURLBagProvider sharedBagProvider];
    [v13 invalidateCache];
  }

  v14 = [v8 statusCode];
  if (!v86[5])
  {
    v15 = v14;
    if (v14 >= 400)
    {
      v16 = MEMORY[0x1E696ABC0];
      v101[0] = *MEMORY[0x1E696A278];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received HTTP error status code %ld", v14];
      v102[0] = v17;
      v101[1] = @"ICStoreURLRequestHTTPStatusCodeUserInfoKey";
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v19 = v18;
      v101[2] = @"ICStoreURLRequestParsedBodyInfoKey";
      v20 = MEMORY[0x1E695E0F8];
      if (v9)
      {
        v20 = v9;
      }

      v102[1] = v18;
      v102[2] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
      v22 = [v16 errorWithDomain:@"ICError" code:-7101 userInfo:v21];
      v23 = v86[5];
      v86[5] = v22;
    }
  }

  v24 = [v8 ic_valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
  if (v86[5])
  {
    v25 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v86[5];
      v27 = a1[4];
      v28 = [a1[5] parsedBodyText];
      *buf = 138544386;
      v92 = v27;
      v93 = 2114;
      v94 = v26;
      v95 = 2114;
      v96 = v24;
      v97 = 2114;
      v98 = v8;
      v99 = 2114;
      v100 = v28;
      _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ completed with:\nerror: %{public}@\ncorrelationKey: %{public}@\nresponse: \n%{public}@\nbody: \n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1[4];
      *buf = 138543618;
      v92 = v29;
      v93 = 2114;
      v94 = v24;
      _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ completed successfully. correlationKey=%{public}@", buf, 0x16u);
    }
  }

  if (!v86[5])
  {
    v30 = [v9 ic_integerValueForKey:@"failureType"];
    if (v30 || (v30 = [v9 ic_integerValueForKey:@"errorNumber"]) != 0 || (v30 = 510005, objc_msgSend(v9, "ic_integerValueForKey:", @"status") == 510005))
    {
      v31 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1[6];
        v33 = a1[4];
        *buf = 138543874;
        v92 = v32;
        v93 = 2114;
        v94 = v33;
        v95 = 2114;
        v96 = v9;
        _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Found error in response body %{public}@", buf, 0x20u);
      }

      v34 = @"Found error in response body. correlation-key: %@";
    }

    else
    {
      v60 = [v9 objectForKey:@"dialog"];
      v61 = v60 == 0;

      if (v61)
      {
LABEL_28:
        v37 = [v9 objectForKey:@"dialog"];
        if (v37)
        {
          v38 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = a1[6];
            v40 = a1[4];
            *buf = 138543874;
            v92 = v39;
            v93 = 2114;
            v94 = v40;
            v95 = 2114;
            v96 = v37;
            _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Received store dialog response %{public}@", buf, 0x20u);
          }

          v41 = [v67 storeDialogResponseHandler];
          v42 = v41 == 0;

          if (!v42)
          {
            v43 = [[ICStoreDialogResponse alloc] initWithResponseDictionary:v37];
            v44 = [v67 storeDialogResponseHandler];
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 3221225472;
            v81[2] = __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_44;
            v81[3] = &unk_1E7BF9698;
            v82 = a1[4];
            v83 = a1[7];
            v84 = &v85;
            [v44 handleStoreDialogResponse:v43 usingRequestContext:v67 withCompletionHandler:v81];

LABEL_41:
LABEL_48:

            goto LABEL_49;
          }

          v54 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = a1[4];
            *buf = 138543362;
            v92 = v55;
            v56 = "%{public}@ Response contains a dialog but there's no response handler set - treating as error";
LABEL_46:
            _os_log_impl(&dword_1B4491000, v54, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
          }
        }

        else
        {
          if (![a1[6] _isAuthenticationError:v86[5]])
          {
            v57 = +[ICMachineDataActionHandler sharedHandler];
            v58 = [v7 storeRequestContext];
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_47;
            v69[3] = &unk_1E7BF96E8;
            v75 = &v85;
            v70 = a1[4];
            v71 = v7;
            v74 = a1[7];
            v63 = *(a1 + 5);
            v59 = v63.i64[0];
            v72 = vextq_s8(v63, v63, 8uLL);
            v76 = v64;
            v73 = v68;
            [v57 processActionFromResponse:v8 withRequestContext:v58 withCompletionHandler:v69];

            v43 = v70;
            goto LABEL_41;
          }

          v45 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = a1[6];
            v47 = a1[4];
            *buf = 138543874;
            v92 = v46;
            v93 = 2114;
            v94 = v47;
            v95 = 2114;
            v96 = v9;
            _os_log_impl(&dword_1B4491000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ Received authentication error. server response=%{public}@", buf, 0x20u);
          }

          v48 = [a1[4] requestContext];
          v49 = [v48 authenticationProvider];
          v50 = v49 == 0;

          if (!v50)
          {
            v51 = [a1[4] requestContext];
            v52 = [v51 authenticationProvider];
            v53 = a1[5];
            v65 = a1[4];
            v77[0] = MEMORY[0x1E69E9820];
            v77[1] = 3221225472;
            v77[2] = __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_45;
            v77[3] = &unk_1E7BF9698;
            v79 = a1[7];
            v78 = a1[4];
            v80 = &v85;
            [v52 performAuthenticationToHandleResponse:v53 toRequest:v65 withCompletionHandler:v77];

            v43 = v79;
            goto LABEL_41;
          }

          v54 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v62 = a1[4];
            *buf = 138543362;
            v92 = v62;
            v56 = "%{public}@ Not attempting reauthentication because no provider was specified";
            goto LABEL_46;
          }
        }

        (*(a1[7] + 2))();
        goto LABEL_48;
      }

      v34 = @"Found dialog in response body without an error code - treating as an error. correlation-key: %@";
      v30 = -7902;
    }

    v35 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICStoreServerError" code:v30 userInfo:v9 debugDescription:{v34, v24}];
    v36 = v86[5];
    v86[5] = v35;

    goto LABEL_28;
  }

  (*(a1[7] + 2))();
LABEL_49:

  _Block_object_dispose(&v85, 8);
}

void __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_44(void *a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = a1[4];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrying request after action taken for dialog response", &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = a1[4];
    v10 = v5;
    if (!v5)
    {
      v10 = *(*(a1[6] + 8) + 40);
    }

    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Dialog action not completed - completing response handling with error %{public}@", &v11, 0x16u);
  }

  (*(a1[5] + 16))();
}

uint64_t __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_45(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrying request after successful re-authentication", &v8, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_47(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 80) + 8);
  v11 = v9;
  if (!v9)
  {
    v11 = *(v10 + 40);
  }

  objc_storeStrong((v10 + 40), v11);
  if (v7)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrying request after machine data action %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) setMachineDataSyncState:v8];
    v14 = *(a1 + 72);
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      (*(v14 + 16))(*(a1 + 72), 1, @"machine-data-action-performed");
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7103 userInfo:0];
      (*(v14 + 16))(v14, 1, @"machine-data-action-performed", v22);
    }
  }

  else if (*(*(*(a1 + 80) + 8) + 40) || (v15 = [*(a1 + 40) shouldUseMescalSigning], v16 = *(a1 + 80), (v15 & 1) == 0))
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_48;
    v23[3] = &unk_1E7BF96C0;
    v27 = v16;
    v19 = *(a1 + 40);
    v24 = *(a1 + 32);
    v20 = *(a1 + 72);
    v21 = *(a1 + 88);
    v26 = v20;
    v28 = v21;
    v25 = *(a1 + 64);
    [v18 _verifyMescalSignatureForResponse:v17 toRequest:v19 completionHandler:v23];
  }
}

void __86__ICStoreURLResponseHandler_processCompletedResponse_toRequest_withCompletionHandler___block_invoke_48(void *a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = v5;
    if (!v5)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    }

    objc_storeStrong((*(a1[7] + 8) + 40), v7);
    if (!v6)
    {
    }

    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = *(*(a1[7] + 8) + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Mescal verification failed for the response. err=%{public}@", &v11, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)processInitialResponse:(id)a3 toRequest:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7BF9658;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v14.receiver = self;
  v14.super_class = ICStoreURLResponseHandler;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(ICURLResponseHandler *)&v14 processInitialResponse:v12 toRequest:v13 withCompletionHandler:v15];
}

void __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke(id *a1, char a2, uint64_t a3, void *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a1[4];
  v9 = [v8 storeRequestContext];
  v10 = [a1[5] urlResponse];
  v11 = [a1[4] currentURLRequest];
  v55 = [v11 URL];
  v66 = 0;
  v12 = +[ICAuthenticationUtilities sharedAuthKitSession];
  [v12 handleResponse:v10 forRequest:v11 shouldRetry:&v66];

  if (v66 == 1)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      *buf = 138543362;
      v72 = v14;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ retry requested by authkit", buf, 0xCu);
    }

    v15 = @"authentication-performed";
    a3 = 1;
    v7 = @"authentication-performed";
    a2 = 1;
  }

  v52 = a2;
  v53 = a3;
  v16 = [v9 identityStore];
  v17 = [v9 identity];
  v65 = 0;
  v54 = [v16 getPropertiesForUserIdentity:v17 error:&v65];
  v18 = v65;

  v19 = v18;
  if (v18)
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = a1[4];
      *buf = 138543618;
      v72 = v21;
      v73 = 2114;
      v74 = v19;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch identity properties to process the response. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v49 = v8;
    v47 = v9;
    v48 = v7;
    v20 = [v10 allHeaderFields];
    v22 = +[ICHTTPCookieStore sharedCookieStore];
    v23 = [MEMORY[0x1E695ABF8] cookiesWithResponseHeaderFields:v20 forURL:v55];
    if ([v23 count])
    {
      v24 = [v54 DSID];
      [v22 saveCookies:v23 forURL:v55 userIdentifier:v24];
    }

    v25 = [v10 ic_valueForHTTPHeaderField:@"X-Apple-Set-Cookie"];
    v26 = v25;
    if (v25)
    {
      v27 = MEMORY[0x1E695ABF8];
      v69 = @"X-Apple-Set-Cookie";
      v70 = v25;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v29 = [v27 cookiesWithResponseHeaderFields:v28 forURL:v55];

      [v22 saveGlobalAccountCookies:v29 forURL:v55];
    }

    v30 = [v10 ic_valueForHTTPHeaderField:@"X-Apple-Set-User-Cookie"];
    v31 = v30;
    if (v30)
    {
      v32 = MEMORY[0x1E695ABF8];
      v67 = @"X-Apple-Set-User-Cookie";
      v68 = v30;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v34 = [v32 cookiesWithResponseHeaderFields:v33 forURL:v55];

      v35 = [v54 DSID];
      [v22 saveCookies:v34 forURL:v55 userIdentifier:v35];
    }

    v7 = v48;
    v8 = v49;
    v9 = v47;
    v19 = 0;
  }

  v36 = [v10 ic_valueForHTTPHeaderField:@"X-Set-Apple-Store-Front"];
  if (!v36)
  {
    goto LABEL_19;
  }

  v37 = [v11 ic_valueForHTTPHeaderField:@"X-Apple-Store-Front"];
  if (([v36 isEqual:v37] & 1) == 0)
  {
    v38 = [v11 ic_valueForHTTPHeaderField:@"X-Enqueuer-DSID"];

    if (v38)
    {
      goto LABEL_19;
    }

    v51 = v19;
    v39 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = a1[4];
      *buf = 138543618;
      v72 = v40;
      v73 = 2114;
      v74 = v36;
      _os_log_impl(&dword_1B4491000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Server response included an updated storefront %{public}@", buf, 0x16u);
    }

    v37 = [v9 identity];
    v41 = v9;
    v42 = [v9 identityStore];
    v43 = v42;
    if (v37 && v42)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke_7;
      v62[3] = &unk_1E7BF9608;
      v63 = v36;
      v64 = v43;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke_2;
      v56[3] = &unk_1E7BF9630;
      v57 = a1[4];
      v44 = a1[6];
      v61 = v52;
      v59 = v44;
      v60 = v53;
      v58 = v7;
      v45 = v43;
      [v45 updatePropertiesForUserIdentity:v37 usingBlock:v62 completionHandler:v56];

      v9 = v41;
      v19 = v51;
      goto LABEL_20;
    }

    if (v42)
    {
      [ICStoreURLResponseHandler _updateDefaultStorefrontIdentifier:v36 usingIdentityStore:v42];
    }

    else
    {
      +[ICUserIdentityStore defaultIdentityStore];
      v46 = v50 = v8;
      [ICStoreURLResponseHandler _updateDefaultStorefrontIdentifier:v36 usingIdentityStore:v46];

      v8 = v50;
    }

    v9 = v41;
    v19 = v51;
  }

LABEL_19:
  (*(a1[6] + 2))();
LABEL_20:
}

uint64_t __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 setStorefrontIdentifier:*(a1 + 32)];
  }

  else
  {
    return [ICStoreURLResponseHandler _updateDefaultStorefrontIdentifier:*(a1 + 32) usingIdentityStore:*(a1 + 40)];
  }
}

void __84__ICStoreURLResponseHandler_processInitialResponse_toRequest_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to save updated storefront value. err=%{public}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)_updateDefaultStorefrontIdentifier:(id)a3 usingIdentityStore:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__ICStoreURLResponseHandler__updateDefaultStorefrontIdentifier_usingIdentityStore___block_invoke;
  v7[3] = &unk_1E7BF9738;
  v8 = v5;
  v6 = v5;
  [a4 updatePropertiesForLocalStoreAccountUsingBlock:v7 completionHandler:0];
}

@end