@interface STConcretePasscodeAuthenticationProviderService
- (STConcretePasscodeAuthenticationProviderService)initWithClientListenerEndpoint:(id)endpoint;
- (id)description;
- (void)authenticatePasscodeWithCommunicationServiceProxy:(id)proxy completionHandler:(id)handler;
- (void)receivePasscodeAuthenticationResult:(id)result completionHandler:(id)handler;
@end

@implementation STConcretePasscodeAuthenticationProviderService

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  pendingAuthenticationCompletionHandler = [(STConcretePasscodeAuthenticationProviderService *)self pendingAuthenticationCompletionHandler];
  v6 = [v3 stringWithFormat:@"<%@ { Pending: %ld }>", v4, pendingAuthenticationCompletionHandler != 0];

  return v6;
}

- (STConcretePasscodeAuthenticationProviderService)initWithClientListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v8.receiver = self;
  v8.super_class = STConcretePasscodeAuthenticationProviderService;
  v5 = [(STConcretePasscodeAuthenticationProviderService *)&v8 init];
  clientListenerEndpoint = v5->_clientListenerEndpoint;
  v5->_clientListenerEndpoint = endpointCopy;

  return v5;
}

- (void)authenticatePasscodeWithCommunicationServiceProxy:(id)proxy completionHandler:(id)handler
{
  proxyCopy = proxy;
  [(STConcretePasscodeAuthenticationProviderService *)self setPendingAuthenticationCompletionHandler:handler];
  clientListenerEndpoint = [(STConcretePasscodeAuthenticationProviderService *)self clientListenerEndpoint];
  [proxyCopy authenticatePasscodeForUserWithEndpoint:clientListenerEndpoint completionHandler:&__block_literal_global_5];
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

- (void)receivePasscodeAuthenticationResult:(id)result completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  pendingAuthenticationCompletionHandler = [(STConcretePasscodeAuthenticationProviderService *)self pendingAuthenticationCompletionHandler];
  if (pendingAuthenticationCompletionHandler)
  {
    v9 = +[STLog passcodeAuthenticationProviderService];
    v10 = v9;
    if (resultCopy)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Resolving pending completion with authentication result", v14, 2u);
      }

      (pendingAuthenticationCompletionHandler)[2](pendingAuthenticationCompletionHandler, resultCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v10 completionHandler:?];
      }

      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:51 userInfo:0];
      (pendingAuthenticationCompletionHandler)[2](pendingAuthenticationCompletionHandler, 0, v13);
    }

    [(STConcretePasscodeAuthenticationProviderService *)self setPendingAuthenticationCompletionHandler:0];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v11 = +[STLog passcodeAuthenticationProviderService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConcretePasscodeAuthenticationProviderService receivePasscodeAuthenticationResult:v11 completionHandler:?];
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, v12);

    handlerCopy = v12;
  }
}

@end