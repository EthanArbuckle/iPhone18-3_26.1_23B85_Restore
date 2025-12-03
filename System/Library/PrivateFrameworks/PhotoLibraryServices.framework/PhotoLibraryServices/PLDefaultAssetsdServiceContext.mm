@interface PLDefaultAssetsdServiceContext
- (BOOL)hasEntitlement:(id)entitlement;
- (NSString)clientDebugDescription;
- (PLDefaultAssetsdServiceContext)initWithSelector:(SEL)selector connection:(id)connection libraryBundle:(id)bundle connectionAuthorization:(id)authorization;
- (id)awaitLibraryState:(int64_t)state;
@end

@implementation PLDefaultAssetsdServiceContext

- (NSString)clientDebugDescription
{
  v3 = PLClientBundleIdentifierFromXPCConnection();
  v4 = MEMORY[0x1E696AEC0];
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = NSStringFromSelector(selector);
  v8 = [v4 stringWithFormat:@"PID: %d, bundle ID: %@, selector: %@", processIdentifier, v3, v7];

  return v8;
}

- (id)awaitLibraryState:(int64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLDefaultAssetsdServiceContext *)self libraryServicesManager];
  v6 = libraryServicesManager;
  if (libraryServicesManager)
  {
    v16 = 0;
    [libraryServicesManager awaitLibraryState:state error:&v16];
    v7 = v16;
    v8 = PLVoidResultFromResultAndError();
  }

  else
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      clientDebugDescription = [(PLDefaultAssetsdServiceContext *)self clientDebugDescription];
      *buf = 138543362;
      v20 = clientDebugDescription;
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

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:entitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (PLDefaultAssetsdServiceContext)initWithSelector:(SEL)selector connection:(id)connection libraryBundle:(id)bundle connectionAuthorization:(id)authorization
{
  connectionCopy = connection;
  bundleCopy = bundle;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = PLDefaultAssetsdServiceContext;
  v14 = [(PLDefaultAssetsdServiceContext *)&v19 init];
  v15 = v14;
  if (v14)
  {
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v14->_selector = selectorCopy;
    objc_storeStrong(&v14->_connection, connection);
    objc_storeStrong(&v15->_libraryBundle, bundle);
    objc_storeStrong(&v15->_connectionAuthorization, authorization);
    v17 = v15;
  }

  return v15;
}

@end