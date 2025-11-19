@interface PLAssetsdInnerService
- (PLAssetsdInnerService)initWithPermissions:(id)a3 requiredLibraryServicesState:(int64_t)a4 lazyService:(id)a5;
- (PLAssetsdInnerService)innerServiceWithContext:(id)a3 forceValidation:(BOOL)a4;
- (id)_awaitForRequiredLibraryStateWithContext:(id)a3;
- (id)_validateWithContext:(id)a3;
- (void)getInnerServiceWithContext:(id)a3 reply:(id)a4;
@end

@implementation PLAssetsdInnerService

- (id)_awaitForRequiredLibraryStateWithContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requiredState = self->_requiredState;
  v6 = PLGatekeeperXPCGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (requiredState)
  {
    if (v7)
    {
      v8 = PLStringFromLibraryServicesState();
      v9 = [v4 clientDebugDescription];
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Waiting for library services manager state: %@ for client: %@", &v15, 0x16u);
    }

    v10 = [v4 awaitLibraryState:self->_requiredState];
  }

  else
  {
    if (v7)
    {
      v11 = [v4 clientDebugDescription];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "No required library services manager state for client: %@", &v15, 0xCu);
    }

    v12 = MEMORY[0x1E69BF2D0];
    v13 = [MEMORY[0x1E695DFB0] null];
    v10 = [v12 successWithResult:v13];
  }

  return v10;
}

- (id)_validateWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PLAssetsdServicePermissions *)self->_permissions refreshCachedAuthorizationsWithContext:v4];
  v5 = [(PLAssetsdServicePermissions *)self->_permissions verifyPermissionsWithContext:v4];
  if (v5)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 clientDebugDescription];
      v13 = 138412546;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Verify permissions error: %@ for client: %{public}@", &v13, 0x16u);
    }

    v8 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
  }

  else
  {
    v8 = [(PLAssetsdInnerService *)self _awaitForRequiredLibraryStateWithContext:v4];
    if ([v8 isFailure])
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 error];
        v11 = [v4 clientDebugDescription];
        v13 = 138412546;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Await for required library state error: %@ for client: %{public}@", &v13, 0x16u);
      }
    }
  }

  return v8;
}

- (PLAssetsdInnerService)innerServiceWithContext:(id)a3 forceValidation:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 shutdownReason];
  if (v7)
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Library is shutting down: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
  }

  else
  {
    if (v4)
    {
      v10 = [(PLAssetsdInnerService *)self _validateWithContext:v6];
      if ([v10 isFailure])
      {
        v11 = MEMORY[0x1E69BF2D0];
        v12 = [v10 error];
        v9 = [v11 failureWithError:v12];

        goto LABEL_17;
      }
    }

    v13 = [(PLLazyObject *)self->_lazyService objectValue];
    v14 = PLGatekeeperXPCGetLog();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v6 clientDebugDescription];
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Sending back service: %@ for client: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] successWithResult:v13];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v17 = [v6 clientDebugDescription];
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "assetsd service could not be initialized for client: %@", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69BFF48];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"assetsd service could not be initialized";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v21 = [v18 errorWithDomain:v19 code:46501 userInfo:v20];

      v9 = [MEMORY[0x1E69BF2D0] failureWithError:v21];
    }
  }

LABEL_17:

  return v9;
}

- (void)getInnerServiceWithContext:(id)a3 reply:(id)a4
{
  v6 = a4;
  v9 = [(PLAssetsdInnerService *)self innerServiceWithContext:a3 forceValidation:1];
  v7 = [v9 result];
  v8 = [v9 error];
  v6[2](v6, v7, v8);
}

- (PLAssetsdInnerService)initWithPermissions:(id)a3 requiredLibraryServicesState:(int64_t)a4 lazyService:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PLAssetsdInnerService;
  v10 = [(PLAssetsdInnerService *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    permissions = v10->_permissions;
    v10->_permissions = v11;

    v10->_requiredState = a4;
    objc_storeStrong(&v10->_lazyService, a5);
    v13 = v10;
  }

  return v10;
}

@end