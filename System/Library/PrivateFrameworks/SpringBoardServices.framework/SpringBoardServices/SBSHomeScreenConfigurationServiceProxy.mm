@interface SBSHomeScreenConfigurationServiceProxy
- (id)_makeErrorWithCode:(void *)code;
- (id)_makeSessionNotActiveError;
- (id)initWithInvalidationHandler:(id *)handler;
- (id)makeConnection;
- (void)applyConfiguration:(id)configuration completion:(id)completion;
- (void)beginConfigurationSessionWithCompletion:(id)completion;
- (void)connectionDidInvalidate;
- (void)endConfigurationSessionWithCompletion:(id)completion;
- (void)setInvalidationHandler:(void *)handler;
@end

@implementation SBSHomeScreenConfigurationServiceProxy

- (id)makeConnection
{
  if (self)
  {
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v3 = +[SBSHomeScreenConfigurationServiceInterfaceSpecification identifier];
    v4 = [MEMORY[0x1E698F498] endpointForMachName:defaultShellMachName service:v3 instance:0];
    v5 = [MEMORY[0x1E698F490] connectionWithEndpoint:v4];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke;
    v7[3] = &unk_1E735F0A8;
    v7[4] = self;
    objc_copyWeak(&v8, &location);
    [v5 configureConnection:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __80__SBSHomeScreenConfigurationServiceProxy_endConfigurationSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSHomeScreenConfigurationServiceInterfaceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSHomeScreenConfigurationServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  [v3 setTargetQueue:v7];
  [v3 setActivationHandler:&__block_literal_global_41];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke_5;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  objc_destroyWeak(&v9);
}

void __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

- (id)initWithInvalidationHandler:(id *)handler
{
  v3 = a2;
  if (handler)
  {
    v12.receiver = handler;
    v12.super_class = SBSHomeScreenConfigurationServiceProxy;
    handler = objc_msgSendSuper2(&v12, sel_init);
    if (handler)
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.springboard.home-screen-configuration.connectionQueue", v4);
      v6 = handler[1];
      handler[1] = v5;

      v7 = MEMORY[0x193AFFB30](v3);
      v8 = handler[2];
      handler[2] = v7;

      makeConnection = [(SBSHomeScreenConfigurationServiceProxy *)handler makeConnection];
      v10 = handler[3];
      handler[3] = makeConnection;

      [handler[3] activate];
    }
  }

  return handler;
}

- (void)beginConfigurationSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v6 = remoteTarget;
  if (remoteTarget)
  {
    [remoteTarget beginConfigurationSessionWithCompletion:completionCopy];
  }

  else
  {
    _makeSessionNotActiveError = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    completionCopy[2](completionCopy, _makeSessionNotActiveError);
  }
}

- (id)_makeSessionNotActiveError
{
  if (self)
  {
    self = [MEMORY[0x1E696ABC0] errorWithDomain:SBSHomeScreenConfigurationErrorDomain code:1 userInfo:0];
    v1 = vars8;
  }

  return self;
}

- (void)applyConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  v9 = remoteTarget;
  if (remoteTarget)
  {
    [remoteTarget applyConfiguration:configurationCopy completion:completionCopy];
  }

  else
  {
    _makeSessionNotActiveError = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    completionCopy[2](completionCopy, _makeSessionNotActiveError);
  }
}

- (void)endConfigurationSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v4, 0, 16);
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (remoteTarget)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__SBSHomeScreenConfigurationServiceProxy_endConfigurationSessionWithCompletion___block_invoke;
    v9[3] = &unk_1E735F5A8;
    v9[4] = self;
    v10 = completionCopy;
    [remoteTarget endConfigurationSessionWithCompletion:v9];
  }

  else
  {
    [(BSServiceConnection *)self->_connection invalidate];
    _makeSessionNotActiveError = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    (*(completionCopy + 2))(completionCopy, _makeSessionNotActiveError);
  }
}

- (void)setInvalidationHandler:(void *)handler
{
  if (handler)
  {
    objc_setProperty_nonatomic_copy(handler, newValue, newValue, 16);
  }
}

- (void)connectionDidInvalidate
{
  if (self)
  {
    v4 = self[2];
    objc_setProperty_nonatomic_copy(self, v2, 0, 16);
    v3 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
      v3 = v4;
    }
  }
}

void __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke_5(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_19169D000, v4, OS_LOG_TYPE_ERROR, "Received invalidation for connection: %{public}@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBSHomeScreenConfigurationServiceProxy *)WeakRetained connectionDidInvalidate];
}

- (id)_makeErrorWithCode:(void *)code
{
  if (code)
  {
    code = [MEMORY[0x1E696ABC0] errorWithDomain:SBSHomeScreenConfigurationErrorDomain code:a2 userInfo:0];
    v2 = vars8;
  }

  return code;
}

@end