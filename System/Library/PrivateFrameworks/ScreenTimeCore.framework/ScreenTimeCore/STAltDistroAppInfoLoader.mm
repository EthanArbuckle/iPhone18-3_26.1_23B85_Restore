@interface STAltDistroAppInfoLoader
- (STAltDistroAppInfoLoader)init;
- (STAltDistroAppInfoLoader)initWithAltDistroRequestsFetcher:(id)fetcher;
- (void)_enqueueRequest:(id)request;
- (void)_startNextRequest;
- (void)fetchForAppBundleId:(id)id adamId:(id)adamId distributorBundleId:(id)bundleId completionHandler:(id)handler;
@end

@implementation STAltDistroAppInfoLoader

- (STAltDistroAppInfoLoader)initWithAltDistroRequestsFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v9.receiver = self;
  v9.super_class = STAltDistroAppInfoLoader;
  v6 = [(STAltDistroAppInfoLoader *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(STAltDistroAppInfoLoader *)v6 setPendingRequests:v7];

    objc_storeStrong(&v6->_requestsFetcher, fetcher);
  }

  return v6;
}

- (STAltDistroAppInfoLoader)init
{
  v3 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"ScreenTimeLockups"];
  v4 = [(STAltDistroAppInfoLoader *)self initWithAltDistroRequestsFetcher:v3];

  return v4;
}

- (void)fetchForAppBundleId:(id)id adamId:(id)adamId distributorBundleId:(id)bundleId completionHandler:(id)handler
{
  v9 = MEMORY[0x1E698B3C0];
  v10 = MEMORY[0x1E698B398];
  handlerCopy = handler;
  bundleIdCopy = bundleId;
  adamIdCopy = adamId;
  idCopy = id;
  v15 = [[v10 alloc] initWithNumberValue:adamIdCopy];
  v16 = *MEMORY[0x1E698B360];
  v17 = *MEMORY[0x1E698B320];
  v18 = [v9 _requestWithID:v15 kind:*MEMORY[0x1E698B360] context:*MEMORY[0x1E698B320] appVersionId:0 distributorId:bundleIdCopy];

  v19 = objc_opt_new();
  [v19 setCompletion:handlerCopy];

  [v19 setRequest:v18];
  v20 = MEMORY[0x1E698B3C0];
  v21 = [objc_alloc(MEMORY[0x1E698B398]) initWithNumberValue:adamIdCopy];
  v22 = [v20 _requestWithID:v21 kind:v16 context:v17 appVersionId:0 distributorId:0];
  [v19 setRequestToRetryOnFailure:v22];

  [v19 setBundleID:idCopy];
  [v19 setAdamID:adamIdCopy];

  [v19 setDistributorID:bundleIdCopy];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  LODWORD(adamIdCopy) = [currentThread isMainThread];

  if (adamIdCopy)
  {
    [(STAltDistroAppInfoLoader *)self _enqueueRequest:v19];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__STAltDistroAppInfoLoader_fetchForAppBundleId_adamId_distributorBundleId_completionHandler___block_invoke;
    block[3] = &unk_1E7CE7AA0;
    block[4] = self;
    v26 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_enqueueRequest:(id)request
{
  requestCopy = request;
  pendingRequests = [(STAltDistroAppInfoLoader *)self pendingRequests];
  v6 = [pendingRequests count];

  pendingRequests2 = [(STAltDistroAppInfoLoader *)self pendingRequests];
  [pendingRequests2 addObject:requestCopy];

  if (!v6)
  {

    [(STAltDistroAppInfoLoader *)self _startNextRequest];
  }
}

- (void)_startNextRequest
{
  v19[4] = *MEMORY[0x1E69E9840];
  pendingRequests = [(STAltDistroAppInfoLoader *)self pendingRequests];
  v4 = [pendingRequests count];

  if (v4)
  {
    pendingRequests2 = [(STAltDistroAppInfoLoader *)self pendingRequests];
    firstObject = [pendingRequests2 firstObject];

    v7 = *MEMORY[0x1E698B410];
    v19[0] = *MEMORY[0x1E698B418];
    v19[1] = v7;
    v8 = *MEMORY[0x1E698B3F0];
    v19[2] = *MEMORY[0x1E698B3F8];
    v19[3] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    objc_initWeak(&location, self);
    requestsFetcher = self->_requestsFetcher;
    request = [firstObject request];
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__STAltDistroAppInfoLoader__startNextRequest__block_invoke;
    v15[3] = &unk_1E7CE7F98;
    objc_copyWeak(&v17, &location);
    v13 = firstObject;
    v16 = v13;
    [(STAltDistroRequestFetcher *)requestsFetcher _lockupDictionaryForRequest:request includingKeys:v12 withCompletionBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__STAltDistroAppInfoLoader__startNextRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:573 userInfo:&unk_1F3059E80];
    goto LABEL_10;
  }

  if (!v6 || (v8 = (a1 + 32), [*(a1 + 32) requestToRetryOnFailure], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v12 = [WeakRetained pendingRequests];
    [v12 removeObject:*(a1 + 32)];

    [WeakRetained _startNextRequest];
    if (v6)
    {
      v13 = [*(a1 + 32) completion];
      (v13)[2](v13, v6, 0);

      goto LABEL_12;
    }

    if (v5)
    {
      v14 = [v5 objectForKey:*MEMORY[0x1E698B418]];
      v17 = [v5 objectForKey:*MEMORY[0x1E698B410]];
      v18 = [v5 objectForKey:*MEMORY[0x1E698B3F8]];
      v19 = [v5 objectForKey:*MEMORY[0x1E698B400]];
      v20 = v19;
      if (v14 | v17)
      {
        v35 = v18;
        v24 = objc_opt_new();
        v25 = [*(a1 + 32) adamID];
        [v24 setAdamID:{objc_msgSend(v25, "unsignedLongLongValue")}];

        v26 = *MEMORY[0x1E698B2F0];
        v39[0] = *MEMORY[0x1E698B2F8];
        v39[1] = v26;
        v40[0] = @"128";
        v40[1] = @"128";
        v27 = *MEMORY[0x1E698B2E8];
        v39[2] = *MEMORY[0x1E698B2E0];
        v39[3] = v27;
        v28 = *MEMORY[0x1E698B2D8];
        v40[2] = *MEMORY[0x1E698B2D0];
        v40[3] = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
        v30 = [v17 makeURLWithSubstitutions:v29];
        [v24 setArtworkURL:v30];

        v31 = [*(a1 + 32) bundleID];
        [v24 setBundleIdentifier:v31];

        [v24 setDeveloperName:v20];
        if (v14)
        {
          [v24 setDisplayName:v14];
        }

        else
        {
          v32 = [*(a1 + 32) bundleID];
          [v24 setDisplayName:v32];
        }

        v33 = [*(a1 + 32) distributorID];
        [v24 setDistributorID:v33];

        [v24 setDistributorIsThirdParty:1];
        [v24 setRatingLabel:v36];
        [v24 setSource:5];
        v34 = [*(a1 + 32) completion];
        (v34)[2](v34, 0, v24);

        goto LABEL_11;
      }

      v21 = MEMORY[0x1E696ABC0];
      v37 = @"data";
      v22 = v5;
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v37 = @"data";
      v22 = [MEMORY[0x1E695DFB0] null];
    }

    v38 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v14 = [v21 errorWithDomain:@"STErrorDomain" code:572 userInfo:v23];

    if (!v5)
    {
    }

LABEL_10:
    v15 = [*(a1 + 32) completion];
    v15[2](v15, v14, 0);

LABEL_11:
    goto LABEL_12;
  }

  v10 = +[STLog appInfo];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __45__STAltDistroAppInfoLoader__startNextRequest__block_invoke_cold_1(v8, v10);
  }

  v11 = [*v8 requestToRetryOnFailure];
  [*v8 setRequest:v11];

  [*v8 setRequestToRetryOnFailure:0];
  [WeakRetained _startNextRequest];
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
}

void __45__STAltDistroAppInfoLoader__startNextRequest__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*a1 bundleID];
  v5 = [*a1 distributorID];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Loading info for budleId:%@ distributorId:%@ failed. Retrying with nil distributor id.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end