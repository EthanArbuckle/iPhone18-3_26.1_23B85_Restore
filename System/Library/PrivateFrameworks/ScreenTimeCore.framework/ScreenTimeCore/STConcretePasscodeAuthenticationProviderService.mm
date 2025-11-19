@interface STConcretePasscodeAuthenticationProviderService
- (STConcretePasscodeAuthenticationProviderService)initWithClientListenerEndpoint:(id)a3;
- (id)description;
- (void)authenticatePasscodeWithCommunicationServiceProxy:(id)a3 completionHandler:(id)a4;
- (void)receivePasscodeAuthenticationResult:(id)a3 completionHandler:(id)a4;
@end

@implementation STConcretePasscodeAuthenticationProviderService

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STConcretePasscodeAuthenticationProviderService *)self pendingAuthenticationCompletionHandler];
  v6 = [v3 stringWithFormat:@"<%@ { Pending: %ld }>", v4, v5 != 0];

  return v6;
}

- (STConcretePasscodeAuthenticationProviderService)initWithClientListenerEndpoint:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STConcretePasscodeAuthenticationProviderService;
  v5 = [(STConcretePasscodeAuthenticationProviderService *)&v8 init];
  clientListenerEndpoint = v5->_clientListenerEndpoint;
  v5->_clientListenerEndpoint = v4;

  return v5;
}

- (void)authenticatePasscodeWithCommunicationServiceProxy:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(STConcretePasscodeAuthenticationProviderService *)self setPendingAuthenticationCompletionHandler:a4];
  v7 = [(STConcretePasscodeAuthenticationProviderService *)self clientListenerEndpoint];
  [v6 authenticatePasscodeForUserWithEndpoint:v7 completionHandler:&__block_literal_global_5];
}

void __119__STConcretePasscodeAuthenticationProviderService_authenticatePasscodeWithCommunicationServiceProxy_completionHandler___block_invoke()
{
  v0 = +[STLog passcodeAuthenticationProviderService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "Prompted for passcode authentication", v1, 2u);
  }
}

- (void)receivePasscodeAuthenticationResult:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STConcretePasscodeAuthenticationProviderService *)self pendingAuthenticationCompletionHandler];
  if (v8)
  {
    v9 = +[STLog passcodeAuthenticationProviderService];
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with authentication result", v14, 2u);
      }

      (v8)[2](v8, v6, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v10 completionHandler:?];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:51 userInfo:0];
      (v8)[2](v8, 0, v13);
    }

    [(STConcretePasscodeAuthenticationProviderService *)self setPendingAuthenticationCompletionHandler:0];
    v7[2](v7, 0);
  }

  else
  {
    v11 = +[STLog passcodeAuthenticationProviderService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v11 completionHandler:?];
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    v7[2](v7, v12);

    v7 = v12;
  }
}

@end