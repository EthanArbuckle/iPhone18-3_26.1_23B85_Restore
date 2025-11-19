@interface ICDelegationProviderServiceProtocolHandler
- (ICDelegationProviderServiceProtocolHandler)initWithUserIdentityStore:(id)a3 requestContext:(id)a4;
- (void)_getPlayInfoRequestWithStartDelegationResponse:(id)a3 streamContexts:(id)a4 completionHandler:(id)a5;
- (void)getFinishDelegationRequestsWithStartDelegationResponse:(id)a3 streamContexts:(id)a4 replyHandler:(id)a5;
- (void)getStartDelegationRequestForAccountIDs:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ICDelegationProviderServiceProtocolHandler

- (void)_getPlayInfoRequestWithStartDelegationResponse:(id)a3 streamContexts:(id)a4 completionHandler:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v49 = a4;
  v44 = a5;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v61 = self;
    v62 = 2114;
    v63 = v7;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _getPlayInfoRequestWithStartDelegationResponse - Starting - response=%{public}@", buf, 0x16u);
  }

  v45 = v7;
  if (v7)
  {
    v9 = v7[3];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v47 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      v14 = 0;
      do
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        if (v15)
        {
          v16 = *(v15 + 16);
          v17 = *(v15 + 8);
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
        v19 = [v49 objectForKey:v18];

        if (v19)
        {
          v20 = [v16 copy];
          v53 = 0;
          v54 = 0;
          v21 = [v19 getStreamerInfoContextDataUsingPlayerInfoContextData:v20 returningData:&v54 error:&v53];
          v22 = v54;
          v23 = v53;

          if (v21)
          {
            v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v19, "accountID")}];
            v25 = [[ICDelegationPlayInfoTokenRequest alloc] initWithDSID:v24 SICData:v22];
            [v47 setObject:v25 forKey:v24];
          }

          else
          {
            v24 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v61 = self;
              v62 = 2114;
              v63 = v23;
              _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: _getPlayInfoRequestWithStartDelegationResponse - Failed [Generating streamer info context] - error=%{public}@", buf, 0x16u);
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v26 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      v12 = v26;
    }

    while (v26);
  }

  if ([v47 count])
  {
    v27 = objc_alloc_init(ICDelegationPlayInfoRequest);
    v28 = v27;
    v29 = v45;
    if (v45)
    {
      v30 = v45[1];
      [v28 setPlayerAnisetteMID:v30];

      v31 = v45[2];
    }

    else
    {
      [(ICDelegationPlayInfoRequest *)v27 setPlayerAnisetteMID:0];
      v31 = 0;
    }

    v32 = v31;
    v33 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(v32, "length")}];
    v34 = [v32 bytes];
    v35 = [v32 length];
    if (v35 >= 1)
    {
      v36 = v35;
      do
      {
        v37 = *v34++;
        [v33 appendFormat:@"%02X", v37];
        --v36;
      }

      while (v36);
    }

    v38 = [v33 lowercaseString];
    [v28 setPlayerDeviceGUID:v38];

    if (v45)
    {
      v39 = v45[4];
    }

    else
    {
      v39 = 0;
    }

    v40 = v44;
    v41 = v39;
    [v28 setPlayerUserAgent:v41];

    identityStore = self->_identityStore;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __126__ICDelegationProviderServiceProtocolHandler__getPlayInfoRequestWithStartDelegationResponse_streamContexts_completionHandler___block_invoke;
    v52[3] = &unk_1E7BF8C10;
    v52[4] = v47;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __126__ICDelegationProviderServiceProtocolHandler__getPlayInfoRequestWithStartDelegationResponse_streamContexts_completionHandler___block_invoke_2;
    v50[3] = &unk_1E7BF9E78;
    v50[4] = v28;
    v50[5] = v47;
    v50[6] = self;
    v51 = v44;
    [(ICUserIdentityStore *)identityStore enumerateDelegateTokensWithType:1 usingBlock:v52 completionHandler:v50];
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7503 userInfo:0];
    v43 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    v40 = v44;
    v29 = v45;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v61 = self;
      v62 = 2114;
      v63 = v28;
      _os_log_impl(&dword_1B4491000, v43, OS_LOG_TYPE_ERROR, "%{public}@: _getPlayInfoRequestWithStartDelegationResponse - Failed [no tokens] - error=%{public}@", buf, 0x16u);
    }

    (*(v44 + 2))(v44, 0, v28);
  }
}

void __126__ICDelegationProviderServiceProtocolHandler__getPlayInfoRequestWithStartDelegationResponse_streamContexts_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 DSID];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKey:v5];
    v7 = [v8 data];
    [v6 setCloudCredentialsTokenData:v7];
  }
}

uint64_t __126__ICDelegationProviderServiceProtocolHandler__getPlayInfoRequestWithStartDelegationResponse_streamContexts_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allValues];
  [v2 setTokenRequests:v3];

  v4 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: _getPlayInfoRequestWithStartDelegationResponse - Finished [Request ready] - tokens=%{public}@", &v8, 0x16u);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)getStartDelegationRequestForAccountIDs:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__ICDelegationProviderServiceProtocolHandler_getStartDelegationRequestForAccountIDs_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF8BE8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(ICAsyncBlockOperation *)v8 initWithStartHandler:v12];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11];
}

void __107__ICDelegationProviderServiceProtocolHandler_getStartDelegationRequestForAccountIDs_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v63 = 0;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138543618;
    v65 = v4;
    v66 = 2112;
    v67 = v5;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: getStartDelegationRequestForAccountIDs - Starting - accountIDs=%@", buf, 0x16u);
  }

  v62 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v63, &v62);
  v7 = v62;
  v8 = v7;
  if (ContextIdentifierForFolderPath)
  {
    v46 = v7;
    v47 = v2;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = a1[5];
    v9 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v51 = 0;
      v12 = *v59;
      do
      {
        v13 = 0;
        v48 = v10;
        do
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v58 + 1) + 8 * v13);
          v15 = [(ICPBDGSPlayerInfoContextRequestToken *)v14 unsignedLongLongValue:v46];
          if (v15)
          {
            v16 = v15;
            v17 = [ICFPContentInfo whaContentInfoWithAccountID:v15];
            v18 = [ICFPStreamContext alloc];
            v57 = 0;
            v19 = [(ICFPStreamContext *)v18 initWithVersion:3 contextID:v63 contentInfo:v17 returningError:&v57];
            v20 = v57;
            if (v19)
            {
              v21 = objc_alloc_init(ICPBDGSPlayerInfoContextRequestToken);
              v22 = [(ICFPStreamContext *)v19 playerInfoContextRequestData];
              v23 = v22;
              if (v21)
              {
                objc_storeStrong(&v21->_token, v22);

                *&v21->_has |= 1u;
                v21->_accountID = v16;
                v24 = [a1[4] _nextSessionUniqueID];
                *&v21->_has |= 2u;
                v21->_sessionID = v24;
              }

              else
              {

                v24 = [a1[4] _nextSessionUniqueID];
              }

              v25 = v51;
              if (!v51)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v51 = v25;
              [(NSMutableArray *)v25 addObject:v21];
              if (!v11)
              {
                v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
              [v11 setObject:v19 forKey:v26];

              v27 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              v10 = v48;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = a1[4];
                *buf = 138543618;
                v65 = v28;
                v66 = 2112;
                v67 = v21;
                _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: getStartDelegationRequestForAccountIDs - Built request token: %@", buf, 0x16u);
              }
            }

            else
            {
              v21 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              if (os_log_type_enabled(&v21->super.super, OS_LOG_TYPE_ERROR))
              {
                v29 = a1[4];
                *buf = 138543874;
                v65 = v29;
                v66 = 2112;
                v67 = v14;
                v68 = 2114;
                v69 = v20;
                _os_log_impl(&dword_1B4491000, &v21->super.super, OS_LOG_TYPE_ERROR, "%{public}@: getStartDelegationRequestForAccountIDs - Failed to generate stream context - accountID=%@ - error=%{public}@", buf, 0x20u);
              }
            }
          }

          ++v13;
        }

        while (v10 != v13);
        v30 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
        v10 = v30;
      }

      while (v30);
    }

    else
    {
      v11 = 0;
      v51 = 0;
    }

    if ([(NSMutableArray *)v51 count])
    {
      v32 = 0;
      v8 = v46;
      v2 = v47;
      goto LABEL_38;
    }

    v8 = v46;
    v2 = v47;
LABEL_44:
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:{0, v46, v47}];
    p_super = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v40 = a1[4];
      *buf = 138543618;
      v65 = v40;
      v66 = 2114;
      v67 = v32;
      _os_log_impl(&dword_1B4491000, p_super, OS_LOG_TYPE_ERROR, "%{public}@: getStartDelegationRequestForAccountIDs - Unknown issue [request building failed] - error=%{public}@", buf, 0x16u);
    }

    v37 = 0;
    goto LABEL_47;
  }

  if (v7)
  {
    v31 = v7;
  }

  else
  {
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
  }

  v32 = v31;
  v33 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = a1[4];
    *buf = 138543618;
    v65 = v34;
    v66 = 2114;
    v67 = v32;
    _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_ERROR, "%{public}@: getStartDelegationRequestForAccountIDs - Fairplay issue [get context failed] - error=%{public}@", buf, 0x16u);
  }

  if (![0 count])
  {
    v11 = 0;
    v51 = 0;
    v37 = 0;
    if (v32)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v51 = 0;
  v11 = 0;
LABEL_38:
  v35 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = a1[4];
    *buf = 138543362;
    v65 = v36;
    _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: getStartDelegationRequestForAccountIDs - Request tokens ready", buf, 0xCu);
  }

  v37 = objc_alloc_init(ICPBDGSStartDelegationRequest);
  if (v37)
  {
    v38 = v51;
    p_super = &v37->_playerInfoContextRequestTokens->super.super;
    v51 = v38;
    v37->_playerInfoContextRequestTokens = v38;
LABEL_47:
  }

LABEL_48:
  v41 = *(a1[4] + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__ICDelegationProviderServiceProtocolHandler_getStartDelegationRequestForAccountIDs_withCompletionHandler___block_invoke_23;
  block[3] = &unk_1E7BF9E78;
  v42 = a1[6];
  v53 = v37;
  v54 = v11;
  v55 = v32;
  v56 = v42;
  v43 = v32;
  v44 = v11;
  v45 = v37;
  dispatch_async(v41, block);
  [v2 finishWithError:v43];
}

- (void)getFinishDelegationRequestsWithStartDelegationResponse:(id)a3 streamContexts:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [ICAsyncBlockOperation alloc];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke;
  v19 = &unk_1E7BF8BC0;
  v20 = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v16];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15, v16, v17, v18, v19, v20];
}

void __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse - Starting - startResponse=%@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_3;
  v11[3] = &unk_1E7BF8B98;
  v11[4] = v7;
  v9 = *(a1 + 48);
  v15 = *(a1 + 56);
  v12 = v3;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v10 = v3;
  [v7 _getPlayInfoRequestWithStartDelegationResponse:v8 streamContexts:v9 completionHandler:v11];
}

void __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(ICDelegationPlayInfoRequestOperation);
    [(ICDelegationPlayInfoRequestOperation *)v7 setPlayInfoRequest:v5];
    v8 = [ICStoreRequestContext alloc];
    v9 = +[ICUserIdentity activeAccount];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12 = [*(v10 + 40) clientInfo];
    v13 = [(ICStoreRequestContext *)v8 initWithIdentity:v9 identityStore:v11 clientInfo:v12];

    [(ICDelegationPlayInfoRequestOperation *)v7 setStoreRequestContext:v13];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_3;
    v22[3] = &unk_1E7BF8B70;
    v21 = *(a1 + 32);
    v25 = *(a1 + 64);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v21;
    *(&v18 + 1) = v14;
    v23 = v18;
    v24 = v17;
    [(ICDelegationPlayInfoRequestOperation *)v7 setResponseHandler:v22];
    [(ICDelegationPlayInfoRequestOperation *)v7 execute];
  }

  else
  {
    v19 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v28 = *(a1 + 64);
    v20 = v6;
    v27 = v20;
    dispatch_async(v19, block);
    [*(a1 + 40) finishWithError:v20];

    v7 = v28;
  }
}

void __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v58 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      if (v10)
      {
        v10 = v10[3];
      }

      v11 = v10;
      v12 = [v11 count];
      v13 = *(a1 + 48);
      *buf = 138543874;
      v73 = v9;
      v74 = 2048;
      v75 = v12;
      v76 = 2112;
      v77 = v13;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse [%lu tokens] - Received Response - response=%@", buf, 0x20u);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = *(a1 + 48);
    v53 = v6;
    v54 = v14;
    if (v15)
    {
      v15 = v15[3];
    }

    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v15;
    v16 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    v17 = a1;
    if (v16)
    {
      v18 = v16;
      v19 = 0x1E696A000uLL;
      v59 = *v65;
      do
      {
        v20 = 0;
        v55 = v18;
        do
        {
          if (*v65 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v64 + 1) + 8 * v20);
          if (v21)
          {
            v22 = *(v21 + 8);
          }

          else
          {
            v22 = 0;
          }

          v23 = *(v17 + 56);
          v24 = [*(v19 + 3480) numberWithUnsignedLongLong:{v22, v53}];
          v25 = [v23 objectForKey:v24];

          if (v25)
          {
            v26 = [objc_alloc(*(v19 + 3480)) initWithUnsignedLongLong:{objc_msgSend(v25, "accountID")}];
            v27 = [v58 objectForKey:v26];
            v28 = v27;
            if (v27)
            {
              v29 = [v27 tokenData];
              v62 = 0;
              v63 = 0;
              v30 = [v25 getPlayerDelegateInfoDataUsingPlayerDelegateInfoResponseData:v29 returningData:&v63 error:&v62];
              v31 = v63;
              v32 = v63;
              v33 = v62;

              if (v30)
              {
                v34 = objc_alloc_init(ICPBDGSPlayerDelegateInfoToken);
                p_super = &v34->super.super;
                if (v34)
                {
                  objc_storeStrong(&v34->_token, v31);
                  LOBYTE(p_super[5].isa) |= 2u;
                  p_super[2].isa = v22;
                }

                v36 = [v28 storefrontIdentifier];
                if (v36 && p_super)
                {
                  objc_storeStrong(&p_super[3].isa, v36);
                }

                v37 = [v28 expirationDate];
                v38 = v37;
                v39 = 604800.0;
                if (v37)
                {
                  [v37 timeIntervalSinceNow];
                  if (v39 < 0.0)
                  {
                    v39 = 0.0;
                  }
                }

                if (p_super)
                {
                  LOBYTE(p_super[5].isa) |= 1u;
                  *&p_super[1].isa = v39;
                }

                [v54 addObject:{p_super, v39}];
                v40 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = *(a1 + 32);
                  *buf = 138543618;
                  v73 = v41;
                  v74 = 2114;
                  v75 = p_super;
                  _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse - Generated player delegate info - delegateInfoToken=%{public}@", buf, 0x16u);
                }

                v17 = a1;
              }

              else
              {
                p_super = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
                v17 = a1;
                if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                {
                  v43 = *(a1 + 32);
                  *buf = 138543618;
                  v73 = v43;
                  v74 = 2114;
                  v75 = v33;
                  _os_log_impl(&dword_1B4491000, p_super, OS_LOG_TYPE_ERROR, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse - Generating player delegate info data failed - error=%{public}@", buf, 0x16u);
                }
              }

              v19 = 0x1E696A000;
              v18 = v55;
            }

            else
            {
              v32 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v42 = *(v17 + 32);
                *buf = 138543618;
                v73 = v42;
                v74 = 2112;
                v75 = v26;
                _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse - Missing token data for account: %@", buf, 0x16u);
              }
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v44 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
        v18 = v44;
      }

      while (v44);
    }

    v45 = objc_alloc_init(ICPBDGSFinishDelegationRequest);
    v46 = v45;
    v47 = v54;
    if (v45)
    {
      objc_storeStrong(&v45->_playerDelegateInfoTokens, v54);
    }

    v48 = *(*(v17 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_13;
    block[3] = &unk_1E7BF9EC8;
    v49 = *(v17 + 64);
    block[4] = v46;
    v61 = v49;
    dispatch_async(v48, block);
    [*(v17 + 40) finishWithError:0];

    v6 = v53;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v50 = *(a1 + 32);
      *buf = 138543618;
      v73 = v50;
      v74 = 2112;
      v75 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: getFinishDelegationRequestsWithStartDelegationResponse - Failed [no response] - error=%@", buf, 0x16u);
    }

    v51 = *(*(a1 + 32) + 8);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __129__ICDelegationProviderServiceProtocolHandler_getFinishDelegationRequestsWithStartDelegationResponse_streamContexts_replyHandler___block_invoke_8;
    v68[3] = &unk_1E7BF9EC8;
    v70 = *(a1 + 64);
    v52 = v6;
    v69 = v52;
    dispatch_async(v51, v68);
    [*(a1 + 40) finishWithError:v52];

    v47 = v70;
  }
}

- (ICDelegationProviderServiceProtocolHandler)initWithUserIdentityStore:(id)a3 requestContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ICDelegationProviderServiceProtocolHandler;
  v9 = [(ICDelegationProviderServiceProtocolHandler *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityStore, a3);
    objc_storeStrong(&v10->_requestContext, a4);
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setName:@"com.apple.iTunesCloud.ICDelegationProviderServiceProtocolHandler.operationQueue"];
    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:3];
    v13 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderServiceProtocolHandler.calloutQueue", 0);
    calloutQueue = v10->_calloutQueue;
    v10->_calloutQueue = v13;
  }

  return v10;
}

@end