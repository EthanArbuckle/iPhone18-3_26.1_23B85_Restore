@interface PLAssetsdServicePermissions
- (BOOL)_isAuthorizedForWriteOnlyWithContext:(id)context;
- (BOOL)_isAuthorizedViaPhotoKitEntitlementWithContext:(id)context;
- (BOOL)_isAuthorizedViaTCCWithContext:(id)context;
- (PLAssetsdServicePermissions)initWithPermissions:(id)permissions;
- (id)_errorForMissingEntitlements:(id)entitlements withContext:(id)context;
- (id)_verifyAuthorizationWithContext:(id)context;
- (id)_verifyEntitlementsWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)verifyPermissionsWithContext:(id)context;
- (void)refreshCachedAuthorizationsWithContext:(id)context;
@end

@implementation PLAssetsdServicePermissions

- (id)_errorForMissingEntitlements:(id)entitlements withContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  contextCopy = context;
  v7 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    clientDebugDescription = [contextCopy clientDebugDescription];
    *buf = 138543618;
    v15 = clientDebugDescription;
    v16 = 2114;
    v17 = entitlementsCopy;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "assetsd client %{public}@ is missing required entitlements: %{public}@", buf, 0x16u);
  }

  v12 = @"MissingEntitlements";
  v13 = entitlementsCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46104 userInfo:v9];

  return v10;
}

- (id)_verifyEntitlementsWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    requiredEntitlements = self->_requiredEntitlements;
    clientDebugDescription = [contextCopy clientDebugDescription];
    *buf = 138412546;
    v18 = requiredEntitlements;
    v19 = 2112;
    v20 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Checking entitlements: %@ for client: %@", buf, 0x16u);
  }

  v8 = self->_requiredEntitlements;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__PLAssetsdServicePermissions__verifyEntitlementsWithContext___block_invoke;
  v15[3] = &unk_1E75672D8;
  v9 = contextCopy;
  v16 = v9;
  v10 = [(NSArray *)v8 _pl_filter:v15];
  v11 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription2 = [v9 clientDebugDescription];
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = clientDebugDescription2;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Missing entitlements: %@ for client: %@", buf, 0x16u);
  }

  if ([(NSArray *)v10 count])
  {
    v13 = [(PLAssetsdServicePermissions *)self _errorForMissingEntitlements:v10 withContext:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isAuthorizedViaPhotoKitEntitlementWithContext:(id)context
{
  if (self->_allowsAuthorizationWithPhotoKitEntitlement)
  {
    return [context hasEntitlement:*MEMORY[0x1E69C0050]];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isAuthorizedForWriteOnlyWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isClientAuthorizedForTCCServicePhotosAdd])
  {
    isClientAuthorizedForTCCServicePhotos = 1;
  }

  else
  {
    isClientAuthorizedForTCCServicePhotos = [contextCopy isClientAuthorizedForTCCServicePhotos];
  }

  return isClientAuthorizedForTCCServicePhotos;
}

- (BOOL)_isAuthorizedViaTCCWithContext:(id)context
{
  contextCopy = context;
  requiredAuthorization = self->_requiredAuthorization;
  if (requiredAuthorization)
  {
    if (requiredAuthorization == 2)
    {
      v6 = [(PLAssetsdServicePermissions *)self _isAuthorizedForWriteOnlyWithContext:contextCopy];
    }

    else
    {
      if (requiredAuthorization != 1)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v6 = [(PLAssetsdServicePermissions *)self _isAuthorizedForReadWriteWithContext:contextCopy];
    }

    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (id)_verifyAuthorizationWithContext:(id)context
{
  contextCopy = context;
  if ([(PLAssetsdServicePermissions *)self _isAuthorizedViaTCCWithContext:contextCopy]|| [(PLAssetsdServicePermissions *)self _isAuthorizedViaPhotoKitEntitlementWithContext:contextCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46104 userInfo:0];
  }

  return v5;
}

- (void)refreshCachedAuthorizationsWithContext:(id)context
{
  contextCopy = context;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating cached client authorizations", v5, 2u);
  }

  [contextCopy invalidateClientAuthorizationCache];
}

- (id)verifyPermissionsWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [(PLAssetsdServicePermissions *)self _verifyAuthorizationWithContext:contextCopy];
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
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Authorization error: %@ for client: %{public}@", &v13, 0x16u);
    }

    v8 = v5;
  }

  else
  {
    v8 = [(PLAssetsdServicePermissions *)self _verifyEntitlementsWithContext:contextCopy];
    if (v8)
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        clientDebugDescription2 = [contextCopy clientDebugDescription];
        v13 = 138412546;
        v14 = v8;
        v15 = 2114;
        v16 = clientDebugDescription2;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Entitlements error: %@ for client: %{public}@", &v13, 0x16u);
      }

      v11 = v8;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PLAssetsdServicePermissions alloc];

  return [(PLAssetsdServicePermissions *)v4 initWithPermissions:self];
}

- (PLAssetsdServicePermissions)initWithPermissions:(id)permissions
{
  permissionsCopy = permissions;
  if (!permissionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdServicePermissions.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"permissions != nil"}];
  }

  v13.receiver = self;
  v13.super_class = PLAssetsdServicePermissions;
  v6 = [(PLAssetsdServicePermissions *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_requiredAuthorization = *(permissionsCopy + 2);
    v6->_allowsAuthorizationWithPhotoKitEntitlement = *(permissionsCopy + 8);
    v8 = [*(permissionsCopy + 3) copy];
    requiredEntitlements = v7->_requiredEntitlements;
    v7->_requiredEntitlements = v8;

    v10 = v7;
  }

  return v7;
}

@end