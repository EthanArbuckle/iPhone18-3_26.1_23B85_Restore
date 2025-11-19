@interface STConcretePasscodeProviderService
- (STConcretePasscodeProviderService)initWithClientListenerEndpoint:(id)a3;
- (id)description;
- (void)collectPasscodeWithSetupServiceProxy:(id)a3 completionHandler:(id)a4;
- (void)receivePasscode:(id)a3 completionHandler:(id)a4;
@end

@implementation STConcretePasscodeProviderService

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STConcretePasscodeProviderService *)self pendingProvidePasscodeCompletionHandler];
  v6 = [v3 stringWithFormat:@"<%@ { Pending: %ld }>", v4, v5 != 0];

  return v6;
}

- (STConcretePasscodeProviderService)initWithClientListenerEndpoint:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STConcretePasscodeProviderService;
  v5 = [(STConcretePasscodeProviderService *)&v8 init];
  clientListenerEndpoint = v5->_clientListenerEndpoint;
  v5->_clientListenerEndpoint = v4;

  return v5;
}

- (void)collectPasscodeWithSetupServiceProxy:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  [(STConcretePasscodeProviderService *)self setPendingProvidePasscodeCompletionHandler:a4];
  v7 = [(STConcretePasscodeProviderService *)self clientListenerEndpoint];
  [v6 promptForPasscodeFromUserWithEndpoint:v7 completionHandler:&__block_literal_global_6];
}

void __92__STConcretePasscodeProviderService_collectPasscodeWithSetupServiceProxy_completionHandler___block_invoke()
{
  v0 = +[STLog passcodeProviderService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEFAULT, "Prompted for passcode collection", v1, 2u);
  }
}

- (void)receivePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STConcretePasscodeProviderService *)self pendingProvidePasscodeCompletionHandler];
  if (v8)
  {
    v9 = +[STLog passcodeProviderService];
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with passcode", v14, 2u);
      }

      (v8)[2](v8, v6, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v10 completionHandler:?];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:48 userInfo:0];
      (v8)[2](v8, 0, v13);
    }

    [(STConcretePasscodeProviderService *)self setPendingProvidePasscodeCompletionHandler:0];
    v7[2](v7, 0);
  }

  else
  {
    v11 = +[STLog passcodeProviderService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConcretePasscodeProviderService receivePasscode:v11 completionHandler:?];
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    v7[2](v7, v12);

    v7 = v12;
  }
}

@end