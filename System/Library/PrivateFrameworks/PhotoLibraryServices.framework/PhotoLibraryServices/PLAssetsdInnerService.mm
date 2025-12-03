@interface PLAssetsdInnerService
- (PLAssetsdInnerService)initWithPermissions:(id)permissions requiredLibraryServicesState:(int64_t)state lazyService:(id)service;
- (PLAssetsdInnerService)innerServiceWithContext:(id)context forceValidation:(BOOL)validation;
- (id)_awaitForRequiredLibraryStateWithContext:(id)context;
- (id)_validateWithContext:(id)context;
- (void)getInnerServiceWithContext:(id)context reply:(id)reply;
@end

@implementation PLAssetsdInnerService

- (id)_awaitForRequiredLibraryStateWithContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  requiredState = self->_requiredState;
  v6 = PLGatekeeperXPCGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (requiredState)
  {
    if (v7)
    {
      v8 = PLStringFromLibraryServicesState();
      clientDebugDescription = [contextCopy clientDebugDescription];
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = clientDebugDescription;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Waiting for library services manager state: %@ for client: %@", &v15, 0x16u);
    }

    v10 = [contextCopy awaitLibraryState:self->_requiredState];
  }

  else
  {
    if (v7)
    {
      clientDebugDescription2 = [contextCopy clientDebugDescription];
      v15 = 138412290;
      v16 = clientDebugDescription2;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "No required library services manager state for client: %@", &v15, 0xCu);
    }

    v12 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v10 = [v12 successWithResult:null];
  }

  return v10;
}

- (id)_validateWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(PLAssetsdServicePermissions *)self->_permissions refreshCachedAuthorizationsWithContext:contextCopy];
  v5 = [(PLAssetsdServicePermissions *)self->_permissions verifyPermissionsWithContext:contextCopy];
  if (v5)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      clientDebugDescription = [contextCopy clientDebugDescription];
      v13 = 138412546;
      v14 = v5;
      v15 = 2114;
      v16 = clientDebugDescription;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Verify permissions error: %@ for client: %{public}@", &v13, 0x16u);
    }

    v8 = [MEMORY[0x1E69BF2D0] failureWithError:v5];
  }

  else
  {
    v8 = [(PLAssetsdInnerService *)self _awaitForRequiredLibraryStateWithContext:contextCopy];
    if ([v8 isFailure])
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        error = [v8 error];
        clientDebugDescription2 = [contextCopy clientDebugDescription];
        v13 = 138412546;
        v14 = error;
        v15 = 2114;
        v16 = clientDebugDescription2;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Await for required library state error: %@ for client: %{public}@", &v13, 0x16u);
      }
    }
  }

  return v8;
}

- (PLAssetsdInnerService)innerServiceWithContext:(id)context forceValidation:(BOOL)validation
{
  validationCopy = validation;
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  shutdownReason = [contextCopy shutdownReason];
  if (shutdownReason)
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = shutdownReason;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Library is shutting down: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E69BF2D0] failureWithError:shutdownReason];
  }

  else
  {
    if (validationCopy)
    {
      v10 = [(PLAssetsdInnerService *)self _validateWithContext:contextCopy];
      if ([v10 isFailure])
      {
        v11 = MEMORY[0x1E69BF2D0];
        error = [v10 error];
        v9 = [v11 failureWithError:error];

        goto LABEL_17;
      }
    }

    objectValue = [(PLLazyObject *)self->_lazyService objectValue];
    v14 = PLGatekeeperXPCGetLog();
    v15 = v14;
    if (objectValue)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        clientDebugDescription = [contextCopy clientDebugDescription];
        *buf = 138412546;
        v26 = objectValue;
        v27 = 2112;
        v28 = clientDebugDescription;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Sending back service: %@ for client: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E69BF2D0] successWithResult:objectValue];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        clientDebugDescription2 = [contextCopy clientDebugDescription];
        *buf = 138412290;
        v26 = clientDebugDescription2;
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

- (void)getInnerServiceWithContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v9 = [(PLAssetsdInnerService *)self innerServiceWithContext:context forceValidation:1];
  result = [v9 result];
  error = [v9 error];
  replyCopy[2](replyCopy, result, error);
}

- (PLAssetsdInnerService)initWithPermissions:(id)permissions requiredLibraryServicesState:(int64_t)state lazyService:(id)service
{
  permissionsCopy = permissions;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = PLAssetsdInnerService;
  v10 = [(PLAssetsdInnerService *)&v15 init];
  if (v10)
  {
    v11 = [permissionsCopy copy];
    permissions = v10->_permissions;
    v10->_permissions = v11;

    v10->_requiredState = state;
    objc_storeStrong(&v10->_lazyService, service);
    v13 = v10;
  }

  return v10;
}

@end