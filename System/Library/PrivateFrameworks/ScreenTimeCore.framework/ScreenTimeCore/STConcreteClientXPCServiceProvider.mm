@interface STConcreteClientXPCServiceProvider
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)providePasscodeAuthenticationProviderService;
- (id)providePasscodeProviderService;
@end

@implementation STConcreteClientXPCServiceProvider

- (id)providePasscodeAuthenticationProviderService
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [(STConcreteClientXPCServiceProvider *)self setActiveListener:anonymousListener];
  [anonymousListener setDelegate:self];
  v4 = [STConcretePasscodeAuthenticationProviderService alloc];
  endpoint = [anonymousListener endpoint];
  v6 = [(STConcretePasscodeAuthenticationProviderService *)v4 initWithClientListenerEndpoint:endpoint];

  [(STConcreteClientXPCServiceProvider *)self setProvidedService:v6];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3060358];
  [(STConcreteClientXPCServiceProvider *)self setProvidedServiceInterface:v7];

  [anonymousListener resume];

  return v6;
}

- (id)providePasscodeProviderService
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [(STConcreteClientXPCServiceProvider *)self setActiveListener:anonymousListener];
  [anonymousListener setDelegate:self];
  v4 = [STConcretePasscodeProviderService alloc];
  endpoint = [anonymousListener endpoint];
  v6 = [(STConcretePasscodeProviderService *)v4 initWithClientListenerEndpoint:endpoint];

  [(STConcreteClientXPCServiceProvider *)self setProvidedService:v6];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3060640];
  [(STConcreteClientXPCServiceProvider *)self setProvidedServiceInterface:v7];

  [anonymousListener resume];

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  listenerCopy = listener;
  activeListener = [(STConcreteClientXPCServiceProvider *)self activeListener];

  if (activeListener == listenerCopy)
  {
    providedService = [(STConcreteClientXPCServiceProvider *)self providedService];
    if (providedService)
    {
      providedServiceInterface = [(STConcreteClientXPCServiceProvider *)self providedServiceInterface];
      v17 = providedServiceInterface != 0;
      if (providedServiceInterface)
      {
        [connectionCopy setExportedInterface:providedServiceInterface];
        [connectionCopy setExportedObject:providedService];
        [connectionCopy resume];
        v19 = +[STLog xpcServiceProvider];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          providedService2 = [(STConcreteClientXPCServiceProvider *)self providedService];
          v37 = 138543362;
          v38 = providedService2;
          _os_log_impl(&dword_1B831F000, v19, OS_LOG_TYPE_DEFAULT, "Accepted connection for service: %{public}@", &v37, 0xCu);
        }
      }

      else
      {
        v19 = +[STLog xpcServiceProvider];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(STConcreteClientXPCServiceProvider *)v19 listener:v28 shouldAcceptNewConnection:v29, v30, v31, v32, v33, v34];
        }
      }
    }

    else
    {
      providedServiceInterface = +[STLog xpcServiceProvider];
      if (os_log_type_enabled(providedServiceInterface, OS_LOG_TYPE_ERROR))
      {
        [(STConcreteClientXPCServiceProvider *)providedServiceInterface listener:v21 shouldAcceptNewConnection:v22, v23, v24, v25, v26, v27];
      }

      v17 = 0;
    }
  }

  else
  {
    providedService = +[STLog xpcServiceProvider];
    if (os_log_type_enabled(providedService, OS_LOG_TYPE_ERROR))
    {
      [(STConcreteClientXPCServiceProvider *)providedService listener:v10 shouldAcceptNewConnection:v11, v12, v13, v14, v15, v16];
    }

    v17 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v17;
}

@end