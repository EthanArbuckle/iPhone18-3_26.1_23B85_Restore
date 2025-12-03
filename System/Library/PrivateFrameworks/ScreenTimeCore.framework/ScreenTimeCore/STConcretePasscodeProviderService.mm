@interface STConcretePasscodeProviderService
- (STConcretePasscodeProviderService)initWithClientListenerEndpoint:(id)endpoint;
- (id)description;
- (void)collectPasscodeWithSetupServiceProxy:(id)proxy completionHandler:(id)handler;
- (void)receivePasscode:(id)passcode completionHandler:(id)handler;
@end

@implementation STConcretePasscodeProviderService

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  pendingProvidePasscodeCompletionHandler = [(STConcretePasscodeProviderService *)self pendingProvidePasscodeCompletionHandler];
  v6 = [v3 stringWithFormat:@"<%@ { Pending: %ld }>", v4, pendingProvidePasscodeCompletionHandler != 0];

  return v6;
}

- (STConcretePasscodeProviderService)initWithClientListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v8.receiver = self;
  v8.super_class = STConcretePasscodeProviderService;
  v5 = [(STConcretePasscodeProviderService *)&v8 init];
  clientListenerEndpoint = v5->_clientListenerEndpoint;
  v5->_clientListenerEndpoint = endpointCopy;

  return v5;
}

- (void)collectPasscodeWithSetupServiceProxy:(id)proxy completionHandler:(id)handler
{
  proxyCopy = proxy;
  [(STConcretePasscodeProviderService *)self setPendingProvidePasscodeCompletionHandler:handler];
  clientListenerEndpoint = [(STConcretePasscodeProviderService *)self clientListenerEndpoint];
  [proxyCopy promptForPasscodeFromUserWithEndpoint:clientListenerEndpoint completionHandler:&__block_literal_global_6];
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

- (void)receivePasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  pendingProvidePasscodeCompletionHandler = [(STConcretePasscodeProviderService *)self pendingProvidePasscodeCompletionHandler];
  if (pendingProvidePasscodeCompletionHandler)
  {
    v9 = +[STLog passcodeProviderService];
    v10 = v9;
    if (passcodeCopy)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with passcode", v14, 2u);
      }

      (pendingProvidePasscodeCompletionHandler)[2](pendingProvidePasscodeCompletionHandler, passcodeCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v10 completionHandler:?];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:48 userInfo:0];
      (pendingProvidePasscodeCompletionHandler)[2](pendingProvidePasscodeCompletionHandler, 0, v13);
    }

    [(STConcretePasscodeProviderService *)self setPendingProvidePasscodeCompletionHandler:0];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v11 = +[STLog passcodeProviderService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConcretePasscodeProviderService receivePasscode:v11 completionHandler:?];
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, v12);

    handlerCopy = v12;
  }
}

@end