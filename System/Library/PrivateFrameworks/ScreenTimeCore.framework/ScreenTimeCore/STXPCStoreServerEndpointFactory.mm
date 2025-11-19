@interface STXPCStoreServerEndpointFactory
- (id)newEndpoint;
- (void)newEndpoint;
@end

@implementation STXPCStoreServerEndpointFactory

- (id)newEndpoint
{
  v2 = objc_opt_new();
  v7 = 0;
  v3 = [v2 startCoreDataServerWithError:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = +[STLog persistence];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(STXPCStoreServerEndpointFactory *)v4 newEndpoint];
    }
  }

  return v3;
}

- (void)newEndpoint
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Error getting endpoint for CoreData server: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end