@interface PLXPCPhotoLibraryStorePolicySandbox
- (BOOL)hasSandboxAccessForPath:(id)path;
- (BOOL)shouldUseXPCStoreForDatabasePath:(id)path auditToken:(id *)token;
@end

@implementation PLXPCPhotoLibraryStorePolicySandbox

- (BOOL)shouldUseXPCStoreForDatabasePath:(id)path auditToken:(id *)token
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = *&token->var0[4];
  *v21 = *token->var0;
  *&v21[16] = v7;
  if ([MEMORY[0x1E69BF2F0] hasXPCStoreEntitlementOptInForToken:v21])
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      v9 = "Token has XPCStore Opt-In Entitlement";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 2;
LABEL_14:
      _os_log_impl(&dword_19BF1F000, v10, v11, v9, v21, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v13 = [(PLXPCPhotoLibraryStorePolicySandbox *)self hasSandboxAccessForPath:pathCopy];
  v14 = !v13;
  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"NOT ";
    if (v13)
    {
      v17 = &stru_1F0F06D80;
    }

    else
    {
      v17 = @"NOT ";
    }

    if (!v13)
    {
      v16 = &stru_1F0F06D80;
    }

    *v21 = 138412546;
    *&v21[4] = v17;
    *&v21[12] = 2112;
    *&v21[14] = v16;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "We do %@have access to the database path, so we are %@using XPC store", v21, 0x16u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v19 = [standardUserDefaults BOOLForKey:@"com.apple.Photos.forceXPCStore"];

  if (v19)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v21 = 138412290;
      *&v21[4] = @"com.apple.Photos.forceXPCStore";
      v9 = "Forcing XPCStore due to %@ user default being set";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_14;
    }

LABEL_15:

    v14 = 1;
  }

  return v14;
}

- (BOOL)hasSandboxAccessForPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager isReadableFileAtPath:pathCopy];

  if ((v7 & 1) == 0)
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];

    pathCopy = stringByDeletingLastPathComponent;
  }

  if (PLIsAssetsd())
  {
    goto LABEL_4;
  }

  getpid();
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v10 = sandbox_check();
  if (v10 < 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = __error();
    v14 = [v12 stringWithUTF8String:{strerror(*v13), fileSystemRepresentation}];
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLXPCPhotoLibraryStorePolicy.m" lineNumber:39 description:{@"Error performing sandbox check in shouldUseXPCPhotoLibraryStore:%@ %@", pathCopy, v14}];

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "We do NOT have access to the database path, so we are using XPC store", buf, 2u);
    }

    goto LABEL_11;
  }

LABEL_4:
  v9 = 1;
LABEL_12:

  return v9;
}

@end