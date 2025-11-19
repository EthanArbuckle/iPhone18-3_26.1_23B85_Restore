@interface STConcreteClientXPCServiceProvider
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)providePasscodeAuthenticationProviderService;
- (id)providePasscodeProviderService;
@end

@implementation STConcreteClientXPCServiceProvider

- (id)providePasscodeAuthenticationProviderService
{
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  [(STConcreteClientXPCServiceProvider *)self setActiveListener:v3];
  [v3 setDelegate:self];
  v4 = [STConcretePasscodeAuthenticationProviderService alloc];
  v5 = [v3 endpoint];
  v6 = [(STConcretePasscodeAuthenticationProviderService *)v4 initWithClientListenerEndpoint:v5];

  [(STConcreteClientXPCServiceProvider *)self setProvidedService:v6];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3060358];
  [(STConcreteClientXPCServiceProvider *)self setProvidedServiceInterface:v7];

  [v3 resume];

  return v6;
}

- (id)providePasscodeProviderService
{
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  [(STConcreteClientXPCServiceProvider *)self setActiveListener:v3];
  [v3 setDelegate:self];
  v4 = [STConcretePasscodeProviderService alloc];
  v5 = [v3 endpoint];
  v6 = [(STConcretePasscodeProviderService *)v4 initWithClientListenerEndpoint:v5];

  [(STConcreteClientXPCServiceProvider *)self setProvidedService:v6];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3060640];
  [(STConcreteClientXPCServiceProvider *)self setProvidedServiceInterface:v7];

  [v3 resume];

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteClientXPCServiceProvider *)self activeListener];

  if (v8 == v7)
  {
    v9 = [(STConcreteClientXPCServiceProvider *)self providedService];
    if (v9)
    {
      v18 = [(STConcreteClientXPCServiceProvider *)self providedServiceInterface];
      v17 = v18 != 0;
      if (v18)
      {
        [v6 setExportedInterface:v18];
        [v6 setExportedObject:v9];
        [v6 resume];
        v19 = +[STLog xpcServiceProvider];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(STConcreteClientXPCServiceProvider *)self providedService];
          v37 = 138543362;
          v38 = v20;
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
      v18 = +[STLog xpcServiceProvider];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(STConcreteClientXPCServiceProvider *)v18 listener:v21 shouldAcceptNewConnection:v22, v23, v24, v25, v26, v27];
      }

      v17 = 0;
    }
  }

  else
  {
    v9 = +[STLog xpcServiceProvider];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(STConcreteClientXPCServiceProvider *)v9 listener:v10 shouldAcceptNewConnection:v11, v12, v13, v14, v15, v16];
    }

    v17 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v17;
}

@end