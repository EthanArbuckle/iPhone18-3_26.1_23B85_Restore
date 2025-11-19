@interface PLAssetsdServicePermissions
- (BOOL)_isAuthorizedForWriteOnlyWithContext:(id)a3;
- (BOOL)_isAuthorizedViaPhotoKitEntitlementWithContext:(id)a3;
- (BOOL)_isAuthorizedViaTCCWithContext:(id)a3;
- (PLAssetsdServicePermissions)initWithPermissions:(id)a3;
- (id)_errorForMissingEntitlements:(id)a3 withContext:(id)a4;
- (id)_verifyAuthorizationWithContext:(id)a3;
- (id)_verifyEntitlementsWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)verifyPermissionsWithContext:(id)a3;
- (void)refreshCachedAuthorizationsWithContext:(id)a3;
@end

@implementation PLAssetsdServicePermissions

- (id)_errorForMissingEntitlements:(id)a3 withContext:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 clientDebugDescription];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "assetsd client %{public}@ is missing required entitlements: %{public}@", buf, 0x16u);
  }

  v12 = @"MissingEntitlements";
  v13 = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46104 userInfo:v9];

  return v10;
}

- (id)_verifyEntitlementsWithContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    requiredEntitlements = self->_requiredEntitlements;
    v7 = [v4 clientDebugDescription];
    *buf = 138412546;
    v18 = requiredEntitlements;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Checking entitlements: %@ for client: %@", buf, 0x16u);
  }

  v8 = self->_requiredEntitlements;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__PLAssetsdServicePermissions__verifyEntitlementsWithContext___block_invoke;
  v15[3] = &unk_1E75672D8;
  v9 = v4;
  v16 = v9;
  v10 = [(NSArray *)v8 _pl_filter:v15];
  v11 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v9 clientDebugDescription];
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
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

- (BOOL)_isAuthorizedViaPhotoKitEntitlementWithContext:(id)a3
{
  if (self->_allowsAuthorizationWithPhotoKitEntitlement)
  {
    return [a3 hasEntitlement:*MEMORY[0x1E69C0050]];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isAuthorizedForWriteOnlyWithContext:(id)a3
{
  v3 = a3;
  if ([v3 isClientAuthorizedForTCCServicePhotosAdd])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isClientAuthorizedForTCCServicePhotos];
  }

  return v4;
}

- (BOOL)_isAuthorizedViaTCCWithContext:(id)a3
{
  v4 = a3;
  requiredAuthorization = self->_requiredAuthorization;
  if (requiredAuthorization)
  {
    if (requiredAuthorization == 2)
    {
      v6 = [(PLAssetsdServicePermissions *)self _isAuthorizedForWriteOnlyWithContext:v4];
    }

    else
    {
      if (requiredAuthorization != 1)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v6 = [(PLAssetsdServicePermissions *)self _isAuthorizedForReadWriteWithContext:v4];
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

- (id)_verifyAuthorizationWithContext:(id)a3
{
  v4 = a3;
  if ([(PLAssetsdServicePermissions *)self _isAuthorizedViaTCCWithContext:v4]|| [(PLAssetsdServicePermissions *)self _isAuthorizedViaPhotoKitEntitlementWithContext:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46104 userInfo:0];
  }

  return v5;
}

- (void)refreshCachedAuthorizationsWithContext:(id)a3
{
  v3 = a3;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating cached client authorizations", v5, 2u);
  }

  [v3 invalidateClientAuthorizationCache];
}

- (id)verifyPermissionsWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLAssetsdServicePermissions *)self _verifyAuthorizationWithContext:v4];
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
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Authorization error: %@ for client: %{public}@", &v13, 0x16u);
    }

    v8 = v5;
  }

  else
  {
    v8 = [(PLAssetsdServicePermissions *)self _verifyEntitlementsWithContext:v4];
    if (v8)
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 clientDebugDescription];
        v13 = 138412546;
        v14 = v8;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Entitlements error: %@ for client: %{public}@", &v13, 0x16u);
      }

      v11 = v8;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PLAssetsdServicePermissions alloc];

  return [(PLAssetsdServicePermissions *)v4 initWithPermissions:self];
}

- (PLAssetsdServicePermissions)initWithPermissions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLAssetsdServicePermissions.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"permissions != nil"}];
  }

  v13.receiver = self;
  v13.super_class = PLAssetsdServicePermissions;
  v6 = [(PLAssetsdServicePermissions *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_requiredAuthorization = *(v5 + 2);
    v6->_allowsAuthorizationWithPhotoKitEntitlement = *(v5 + 8);
    v8 = [*(v5 + 3) copy];
    requiredEntitlements = v7->_requiredEntitlements;
    v7->_requiredEntitlements = v8;

    v10 = v7;
  }

  return v7;
}

@end