@interface SBSHomeScreenConfigurationServiceProxy
- (id)_makeErrorWithCode:(void *)a1;
- (id)_makeSessionNotActiveError;
- (id)initWithInvalidationHandler:(id *)a1;
- (id)makeConnection;
- (void)applyConfiguration:(id)a3 completion:(id)a4;
- (void)beginConfigurationSessionWithCompletion:(id)a3;
- (void)connectionDidInvalidate;
- (void)endConfigurationSessionWithCompletion:(id)a3;
- (void)setInvalidationHandler:(void *)a1;
@end

@implementation SBSHomeScreenConfigurationServiceProxy

- (id)makeConnection
{
  if (a1)
  {
    v2 = [MEMORY[0x1E698F498] defaultShellMachName];
    v3 = +[SBSHomeScreenConfigurationServiceInterfaceSpecification identifier];
    v4 = [MEMORY[0x1E698F498] endpointForMachName:v2 service:v3 instance:0];
    v5 = [MEMORY[0x1E698F490] connectionWithEndpoint:v4];
    objc_initWeak(&location, a1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__SBSHomeScreenConfigurationServiceProxy_makeConnection__block_invoke;
    v7[3] = &unk_1E735F0A8;
    v7[4] = a1;
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

- (id)initWithInvalidationHandler:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SBSHomeScreenConfigurationServiceProxy;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.springboard.home-screen-configuration.connectionQueue", v4);
      v6 = a1[1];
      a1[1] = v5;

      v7 = MEMORY[0x193AFFB30](v3);
      v8 = a1[2];
      a1[2] = v7;

      v9 = [(SBSHomeScreenConfigurationServiceProxy *)a1 makeConnection];
      v10 = a1[3];
      a1[3] = v9;

      [a1[3] activate];
    }
  }

  return a1;
}

- (void)beginConfigurationSessionWithCompletion:(id)a3
{
  v8 = a3;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  v5 = [(BSServiceConnection *)connection remoteTarget];
  v6 = v5;
  if (v5)
  {
    [v5 beginConfigurationSessionWithCompletion:v8];
  }

  else
  {
    v7 = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    v8[2](v8, v7);
  }
}

- (id)_makeSessionNotActiveError
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:SBSHomeScreenConfigurationErrorDomain code:1 userInfo:0];
    v1 = vars8;
  }

  return a1;
}

- (void)applyConfiguration:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  v8 = [(BSServiceConnection *)connection remoteTarget];
  v9 = v8;
  if (v8)
  {
    [v8 applyConfiguration:v11 completion:v6];
  }

  else
  {
    v10 = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    v6[2](v6, v10);
  }
}

- (void)endConfigurationSessionWithCompletion:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v4, 0, 16);
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  v7 = [(BSServiceConnection *)connection remoteTarget];
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__SBSHomeScreenConfigurationServiceProxy_endConfigurationSessionWithCompletion___block_invoke;
    v9[3] = &unk_1E735F5A8;
    v9[4] = self;
    v10 = v5;
    [v7 endConfigurationSessionWithCompletion:v9];
  }

  else
  {
    [(BSServiceConnection *)self->_connection invalidate];
    v8 = [(SBSHomeScreenConfigurationServiceProxy *)self _makeSessionNotActiveError];
    (*(v5 + 2))(v5, v8);
  }
}

- (void)setInvalidationHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

- (void)connectionDidInvalidate
{
  if (a1)
  {
    v4 = a1[2];
    objc_setProperty_nonatomic_copy(a1, v2, 0, 16);
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

- (id)_makeErrorWithCode:(void *)a1
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:SBSHomeScreenConfigurationErrorDomain code:a2 userInfo:0];
    v2 = vars8;
  }

  return a1;
}

@end