@interface IOUIAngelService
+ (id)interface;
- (BOOL)isServerRunning;
- (IOUIAngelService)init;
- (IOUIAngelService)initWithIdentifier:(id)identifier;
- (IOUIAngelServiceDelegate)delegate;
- (void)invalidate;
- (void)pingServerWithCompletion:(id)completion;
- (void)setIntrusiveUI:(BOOL)i completion:(id)completion;
- (void)setIsIntrusiveUIDisplayed:(BOOL)displayed;
@end

@implementation IOUIAngelService

+ (id)interface
{
  if (interface_onceToken != -1)
  {
    +[IOUIAngelService interface];
  }

  v3 = interface___interface;

  return v3;
}

void __29__IOUIAngelService_interface__block_invoke(id a1)
{
  v4 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.IOUIAngel.LDCM-service"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___IOUIAngelServiceServerInterface];
  [v4 setServer:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = interface___interface;
  interface___interface = v2;
}

- (IOUIAngelService)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[IOUIAngelService initWithIdentifier:]";
    v19 = 1024;
    v20 = 46;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Setting up IOUIAngelService and establishing connection to IOUIAngelServer", buf, 0x12u);
  }

  v16.receiver = self;
  v16.super_class = IOUIAngelService;
  v5 = [(IOUIAngelService *)&v16 init];
  v6 = v5;
  if (v5)
  {
    criticalUIAssertion = v5->_criticalUIAssertion;
    v5->_criticalUIAssertion = 0;

    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [BSServiceConnectionEndpoint endpointForMachName:@"com.apple.IOUIAngel.LDCM" service:@"com.apple.IOUIAngel.LDCM-service" instance:0];
    endpoint = v6->_endpoint;
    v6->_endpoint = v8;

    if (v6->_endpoint)
    {
      v10 = [BSServiceConnection connectionWithEndpoint:?];
      server = v6->_server;
      v6->_server = v10;

      v12 = v6->_server;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __39__IOUIAngelService_initWithIdentifier___block_invoke;
      v14[3] = &unk_59698;
      v15 = v6;
      [(BSServiceConnectionClient *)v12 configureConnection:v14];
      [(BSServiceConnectionClient *)v6->_server activate];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [IOUIAngelService initWithIdentifier:];
    }
  }

  return v6;
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IOUIAngelService interface];
  [v3 setInterface:v4];

  v5 = +[BSServiceQuality userInteractive];
  [v3 setServiceQuality:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __39__IOUIAngelService_initWithIdentifier___block_invoke_2;
  v10[3] = &unk_59670;
  v11 = *(a1 + 32);
  [v3 setActivationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __39__IOUIAngelService_initWithIdentifier___block_invoke_3;
  v8[3] = &unk_59670;
  v9 = *(a1 + 32);
  [v3 setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __39__IOUIAngelService_initWithIdentifier___block_invoke_57;
  v6[3] = &unk_59670;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = [v4 remoteTarget];

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained serverRunningDidChange:*(a1 + 32) status:0];
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __39__IOUIAngelService_initWithIdentifier___block_invoke_3_cold_1();
  }

  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained serverRunningDidChange:*(a1 + 32) status:2];

  [v3 activate];
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke_57(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __39__IOUIAngelService_initWithIdentifier___block_invoke_57_cold_1();
  }

  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained serverRunningDidChange:*(a1 + 32) status:1];
}

- (IOUIAngelService)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IOUIAngelService init]";
    v6 = 1024;
    v7 = 107;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Empty init (Should not be getting called)", &v4, 0x12u);
  }

  return [(IOUIAngelService *)self initWithIdentifier:0];
}

- (void)invalidate
{
  [(BSServiceConnectionClient *)self->_server invalidate];
  os_unfair_lock_lock(&self->_lock);
  activeProxy = self->_activeProxy;
  self->_activeProxy = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isServerRunning
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_activeProxy != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setIsIntrusiveUIDisplayed:(BOOL)displayed
{
  os_unfair_lock_lock(&self->_lock);
  self->_isIntrusiveUIDisplayed = displayed;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pingServerWithCompletion:(id)completion
{
  completionCopy = completion;
  server = self->_server;
  v6 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v16 = v6;
  v7 = [NSArray arrayWithObjects:&v16 count:1];
  v8 = [(BSServiceConnectionClient *)server remoteTargetWithLaunchingAssertionAttributes:v7];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[IOUIAngelService pingServerWithCompletion:]";
    v14 = 1024;
    v15 = 144;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Sending ping", buf, 0x12u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __45__IOUIAngelService_pingServerWithCompletion___block_invoke;
  v10[3] = &unk_596C0;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 pingWithCompletion:v10];
}

void __45__IOUIAngelService_pingServerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __45__IOUIAngelService_pingServerWithCompletion___block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[IOUIAngelService pingServerWithCompletion:]_block_invoke";
    v8 = 1024;
    v9 = 155;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Recieved ping back", &v6, 0x12u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)setIntrusiveUI:(BOOL)i completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  server = self->_server;
  v8 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v38 = v8;
  v9 = [NSArray arrayWithObjects:&v38 count:1];
  v10 = [(BSServiceConnectionClient *)server remoteTargetWithLaunchingAssertionAttributes:v9];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"remove";
    v33 = "[IOUIAngelService setIntrusiveUI:completion:]";
    *buf = 136315650;
    if (iCopy)
    {
      v11 = @"display";
    }

    v34 = 1024;
    v35 = 166;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Sending message to %@ intrusive UI", buf, 0x1Cu);
  }

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = __46__IOUIAngelService_setIntrusiveUI_completion___block_invoke;
  v27 = &unk_596E8;
  v30 = iCopy;
  v12 = completionCopy;
  selfCopy = self;
  v29 = v12;
  v13 = objc_retainBlock(&v24);
  if (iCopy)
  {
    [v10 setIntrusiveUIWithCompletion:{v13, v24, v25, v26, v27}];
    v14 = [RBSDomainAttribute attributeWithDomain:@"com.apple.IOUIAngel" name:@"criticalUI"];
    if (v14)
    {
      v15 = [RBSProcessPredicate predicateMatchingServiceName:@"com.apple.IOUIAngel.LDCM-service"];
      if (v15)
      {
        v16 = [RBSProcessHandle handleForPredicate:v15 error:0];
        v17 = v16;
        if (v16)
        {
          v18 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v16 pid]);
          if (v18)
          {
            v19 = [RBSAssertion alloc];
            v31 = v14;
            v20 = [NSArray arrayWithObjects:&v31 count:1];
            v21 = [v19 initWithExplanation:@"Critical UI Presented" target:v18 attributes:v20];

            if (v21)
            {
              v22 = -[_IOUIAngelServiceAssertions initWithRBSAssertion:forPid:]([_IOUIAngelServiceAssertions alloc], "initWithRBSAssertion:forPid:", v21, [v17 pid]);
              criticalUIAssertion = self->_criticalUIAssertion;
              self->_criticalUIAssertion = v22;
            }

            else
            {
              [IOUIAngelService setIntrusiveUI:completion:];
            }
          }

          else
          {
            [IOUIAngelService setIntrusiveUI:completion:];
          }
        }

        else
        {
          [IOUIAngelService setIntrusiveUI:completion:];
        }
      }

      else
      {
        [IOUIAngelService setIntrusiveUI:completion:];
      }
    }
  }

  else
  {
    [v10 removeIntrusiveUIWithCompletion:{v13, v24, v25, v26, v27}];
    if ([(_IOUIAngelServiceAssertions *)self->_criticalUIAssertion isValid])
    {
      [(_IOUIAngelServiceAssertions *)self->_criticalUIAssertion invalidateWithError:0];
    }
  }
}

void __46__IOUIAngelService_setIntrusiveUI_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __46__IOUIAngelService_setIntrusiveUI_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"disabled";
    v5 = *(a1 + 48);
    *&v6[4] = "[IOUIAngelService setIntrusiveUI:completion:]_block_invoke";
    *v6 = 136315650;
    if (v5)
    {
      v4 = @"enabled";
    }

    *&v6[12] = 1024;
    *&v6[14] = 175;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:%d: Successfully %@ intrusiveUI", v6, 0x1Cu);
  }

  [*(a1 + 32) setIsIntrusiveUIDisplayed:{*(a1 + 48), *v6}];
  (*(*(a1 + 40) + 16))();
}

- (IOUIAngelServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __39__IOUIAngelService_initWithIdentifier___block_invoke_57_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__IOUIAngelService_pingServerWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setIntrusiveUI:completion:.cold.1()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

- (void)setIntrusiveUI:completion:.cold.2()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

- (void)setIntrusiveUI:completion:.cold.3()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

- (void)setIntrusiveUI:completion:.cold.4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void __46__IOUIAngelService_setIntrusiveUI_completion___block_invoke_cold_1(uint64_t a1)
{
  *(a1 + 48);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

@end