@interface ICUpdateAutomaticDownloadMediaKindsRequest
- (ICUpdateAutomaticDownloadMediaKindsRequest)initWithRequestContext:(id)context mediaKindsToAdd:(id)add mediaKindsToRemove:(id)remove;
- (void)execute;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation ICUpdateAutomaticDownloadMediaKindsRequest

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = requestCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received request to handle dialog request %{public}@", buf, 0x16u);
  }

  storeDialogResponseHandler = [(ICStoreRequestContext *)self->_requestContext storeDialogResponseHandler];
  if (storeDialogResponseHandler)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__ICUpdateAutomaticDownloadMediaKindsRequest_handleDialogRequest_completion___block_invoke;
    v12[3] = &unk_1E7BF8DD8;
    v13 = completionCopy;
    [storeDialogResponseHandler handleAMSDialogRequest:requestCopy completion:v12];
    v10 = v13;
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring dialog as a handler is not configured", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7009 underlyingError:0 debugDescription:@"Dialog handling not desired in this context"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = requestCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ handling authentication request %{public}@", buf, 0x16u);
  }

  options = [requestCopy options];
  v10 = options;
  if (options)
  {
    v11 = options;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698C7B0]);
  }

  v12 = v11;

  authenticationProvider = [(ICRequestContext *)self->_requestContext authenticationProvider];
  interactionLevel = [authenticationProvider interactionLevel];

  [v12 setAllowServerDialogs:interactionLevel != 1];
  [v12 setAuthenticationType:interactionLevel == 1];
  [requestCopy setOptions:v12];
  v15 = [objc_alloc(MEMORY[0x1E698C7C8]) initWithRequest:requestCopy];
  performAuthentication = [v15 performAuthentication];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__ICUpdateAutomaticDownloadMediaKindsRequest_handleAuthenticateRequest_completion___block_invoke;
  v18[3] = &unk_1E7BF8DB0;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [performAuthentication addFinishBlock:v18];
}

void __83__ICUpdateAutomaticDownloadMediaKindsRequest_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 msv_description];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Authentication task complete error=%{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Authentication task complete", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)execute
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mediaKindsToAdd = self->_mediaKindsToAdd;
    mediaKindsToRemove = self->_mediaKindsToRemove;
    *buf = 138543874;
    selfCopy6 = self;
    v62 = 2114;
    v63 = mediaKindsToAdd;
    v64 = 2114;
    v65 = mediaKindsToRemove;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ performing request with media kinds to add: %{public}@, kinds to remove: %{public}@", buf, 0x20u);
  }

  identity = [(ICStoreRequestContext *)self->_requestContext identity];
  identityStore = [(ICStoreRequestContext *)self->_requestContext identityStore];
  v57 = 0;
  v8 = [identityStore DSIDForUserIdentity:identity outError:&v57];
  v9 = v57;
  if (v9)
  {
    v10 = v9;
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      identity2 = [(ICStoreRequestContext *)self->_requestContext identity];
      *buf = 138543874;
      selfCopy6 = self;
      v62 = 2114;
      v63 = identity2;
      v64 = 2114;
      v65 = v10;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to lookup account ID for user identity %{public}@. err=%{public}@", buf, 0x20u);
    }

    [(ICRequestOperation *)self finishWithError:v10];
  }

  else if (v8)
  {
    ic_sharedAccountStore = [MEMORY[0x1E6959A48] ic_sharedAccountStore];
    v56 = 0;
    v14 = [ic_sharedAccountStore ic_storeAccountForStoreAccountID:v8 error:&v56];
    v15 = v56;

    if (v14)
    {
      ams_automaticDownloadKinds = [v14 ams_automaticDownloadKinds];
      v17 = ams_automaticDownloadKinds;
      v44 = v15;
      v45 = v14;
      if (ams_automaticDownloadKinds)
      {
        array = ams_automaticDownloadKinds;
      }

      else
      {
        array = [MEMORY[0x1E695DEC8] array];
      }

      v22 = array;

      v46 = v22;
      v23 = [(NSSet *)v22 mutableCopy];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v24 = self->_mediaKindsToRemove;
      v25 = [(NSSet *)v24 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v53;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v53 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(NSSet *)v23 removeObject:*(*(&v52 + 1) + 8 * i), v44];
          }

          v26 = [(NSSet *)v24 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v26);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v29 = self->_mediaKindsToAdd;
      v30 = [(NSSet *)v29 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v48 + 1) + 8 * j);
            if (![(NSSet *)v23 containsObject:v34, v44])
            {
              [(NSSet *)v23 addObject:v34];
            }
          }

          v31 = [(NSSet *)v29 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v31);
      }

      v14 = v45;
      v35 = v46;
      if (v46 == v23 || ([(NSSet *)v46 isEqual:v23]& 1) != 0)
      {
        v36 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_1B4491000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ No change in media types - finishing", buf, 0xCu);
        }

        [(ICRequestOperation *)self finishWithError:0];
      }

      else
      {
        v37 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy6 = self;
          v62 = 2114;
          v63 = v46;
          v64 = 2114;
          v65 = v23;
          _os_log_impl(&dword_1B4491000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating media kinds from %{public}@ --> %{public}@", buf, 0x20u);
        }

        v38 = MEMORY[0x1E698C7D8];
        bagSubProfile = [MEMORY[0x1E698C7D0] bagSubProfile];
        bagSubProfileVersion = [MEMORY[0x1E698C7D0] bagSubProfileVersion];
        v41 = [v38 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

        v42 = [objc_alloc(MEMORY[0x1E698C7D0]) initWithEnabledMediaKinds:v23 account:v45 bag:v41 presentationDelegate:self];
        perform = [v42 perform];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __53__ICUpdateAutomaticDownloadMediaKindsRequest_execute__block_invoke;
        v47[3] = &unk_1E7BF8D88;
        v47[4] = self;
        [perform resultWithCompletion:v47];

        v35 = v46;
      }

      v15 = v44;
    }

    else
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        identity3 = [(ICStoreRequestContext *)self->_requestContext identity];
        *buf = 138543874;
        selfCopy6 = self;
        v62 = 2114;
        v63 = identity3;
        v64 = 2114;
        v65 = v15;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to lookup account for user identity %{public}@. err=%{public}@", buf, 0x20u);
      }

      [(ICRequestOperation *)self finishWithError:v15];
    }
  }

  else
  {
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_ERROR, "%{public}@ No active account so nothing to do", buf, 0xCu);
    }

    [(ICRequestOperation *)self finishWithError:0];
  }
}

void __53__ICUpdateAutomaticDownloadMediaKindsRequest_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ AMSAutomaticDownloadKindsSetTask completed with result %{public}@ error=%{public}@", &v13, 0x20u);
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:0 underlyingError:v6 debugDescription:@"AMSAutomaticDownloadKindsSetTask failed"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ AMSAutomaticDownloadKindsSetTask completed with result %{public}@", &v13, 0x16u);
    }

    v11 = 0;
  }

  [*(a1 + 32) finishWithError:v11];
}

- (ICUpdateAutomaticDownloadMediaKindsRequest)initWithRequestContext:(id)context mediaKindsToAdd:(id)add mediaKindsToRemove:(id)remove
{
  contextCopy = context;
  addCopy = add;
  removeCopy = remove;
  v19.receiver = self;
  v19.super_class = ICUpdateAutomaticDownloadMediaKindsRequest;
  v11 = [(ICRequestOperation *)&v19 init];
  if (v11)
  {
    v12 = [contextCopy copy];
    requestContext = v11->_requestContext;
    v11->_requestContext = v12;

    v14 = [addCopy copy];
    mediaKindsToAdd = v11->_mediaKindsToAdd;
    v11->_mediaKindsToAdd = v14;

    v16 = [removeCopy copy];
    mediaKindsToRemove = v11->_mediaKindsToRemove;
    v11->_mediaKindsToRemove = v16;
  }

  return v11;
}

@end