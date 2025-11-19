@interface PLDefaultAssetsdServiceContext
- (BOOL)hasEntitlement:(id)a3;
- (NSString)clientDebugDescription;
- (PLDefaultAssetsdServiceContext)initWithSelector:(SEL)a3 connection:(id)a4 libraryBundle:(id)a5 connectionAuthorization:(id)a6;
- (id)awaitLibraryState:(int64_t)a3;
@end

@implementation PLDefaultAssetsdServiceContext

- (NSString)clientDebugDescription
{
  v3 = PLClientBundleIdentifierFromXPCConnection();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NSXPCConnection *)self->_connection processIdentifier];
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = NSStringFromSelector(selector);
  v8 = [v4 stringWithFormat:@"PID: %d, bundle ID: %@, selector: %@", v5, v3, v7];

  return v8;
}

- (id)awaitLibraryState:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(PLDefaultAssetsdServiceContext *)self libraryServicesManager];
  v6 = v5;
  if (v5)
  {
    v16 = 0;
    [v5 awaitLibraryState:a3 error:&v16];
    v7 = v16;
    v8 = PLVoidResultFromResultAndError();
  }

  else
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PLDefaultAssetsdServiceContext *)self clientDebugDescription];
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "No library services manager: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A578];
    v18 = @"No library services manager";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [v11 errorWithDomain:v12 code:41012 userInfo:v13];

    v8 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
  }

  v14 = v8;

  return v14;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (PLDefaultAssetsdServiceContext)initWithSelector:(SEL)a3 connection:(id)a4 libraryBundle:(id)a5 connectionAuthorization:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PLDefaultAssetsdServiceContext;
  v14 = [(PLDefaultAssetsdServiceContext *)&v19 init];
  v15 = v14;
  if (v14)
  {
    if (a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0;
    }

    v14->_selector = v16;
    objc_storeStrong(&v14->_connection, a4);
    objc_storeStrong(&v15->_libraryBundle, a5);
    objc_storeStrong(&v15->_connectionAuthorization, a6);
    v17 = v15;
  }

  return v15;
}

@end