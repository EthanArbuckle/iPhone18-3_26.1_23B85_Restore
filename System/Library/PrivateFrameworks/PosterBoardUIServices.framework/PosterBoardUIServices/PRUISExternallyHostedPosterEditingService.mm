@interface PRUISExternallyHostedPosterEditingService
+ (BOOL)isExternalEditingSupported;
- (PRUISExternallyHostedPosterEditingService)init;
- (PRUISExternallyHostedPosterEditingServiceDelegate)delegate;
- (id)_serviceInterfaceWithError:(id *)error;
- (void)beginEditingWithRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)didEndEditingWithResponse:(id)response;
- (void)init;
- (void)sendRequestDismissalActionWithRequest:(id)request;
- (void)willEndEditingWithResponse:(id)response;
@end

@implementation PRUISExternallyHostedPosterEditingService

+ (BOOL)isExternalEditingSupported
{
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  v3 = [mEMORY[0x1E698E730] deviceClass] == 2;

  return v3;
}

- (PRUISExternallyHostedPosterEditingService)init
{
  v20.receiver = self;
  v20.super_class = PRUISExternallyHostedPosterEditingService;
  v2 = [(PRUISExternallyHostedPosterEditingService *)&v20 init];
  if (v2)
  {
    v3 = PRUISExternallyHostedPosterEditingServiceInterface();
    v4 = MEMORY[0x1E698F498];
    identifier = [v3 identifier];
    v6 = [v4 endpointForMachName:@"com.apple.posterboardui.services" service:identifier instance:0];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (v6)
    {
      v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
      serviceConnection = v2->_serviceConnection;
      v2->_serviceConnection = v9;

      objc_initWeak(&location, v2);
      v11 = v2->_serviceConnection;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke;
      v14[3] = &unk_1E83A8D88;
      v15 = v3;
      v16 = v2;
      v17 = v8;
      objc_copyWeak(&v18, &location);
      [(BSServiceConnectionClient *)v11 configureConnection:v14];
      objc_destroyWeak(&v18);

      objc_destroyWeak(&location);
    }

    else
    {
      v12 = PRUISLogRemoteEditing();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PRUISExternallyHostedPosterEditingService *)v8 init];
      }
    }
  }

  return v2;
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v4 = PRUISDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_2;
  v8[3] = &unk_1E83A8D38;
  v9 = *(a1 + 48);
  objc_copyWeak(&v10, (a1 + 56));
  [v3 setInterruptionHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4;
  v5[3] = &unk_1E83A8D60;
  v6 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 56));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v10);
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 138543618;
    v6 = v3;
    v7 = 2048;
    v8 = WeakRetained;
    _os_log_impl(&dword_1CAE63000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> interrupted", &v5, 0x16u);
  }
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4(uint64_t a1)
{
  v2 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4_cold_1(a1);
  }
}

- (void)dealloc
{
  [(PRUISExternallyHostedPosterEditingService *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISExternallyHostedPosterEditingService;
  [(PRUISExternallyHostedPosterEditingService *)&v3 dealloc];
}

- (void)willEndEditingWithResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = responseCopy;
  v5 = responseCopy;
  v6 = WeakRetained;
  BSDispatchMain();
}

- (void)didEndEditingWithResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = responseCopy;
  v5 = responseCopy;
  v6 = WeakRetained;
  BSDispatchMain();
}

- (void)beginEditingWithRequest:(id)request completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v9 = completionCopy;
  if (requestCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
LABEL_3:
  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
  }

  v12 = requestCopy;
  v20 = 0;
  v13 = [(PRUISExternallyHostedPosterEditingService *)self _serviceInterfaceWithError:&v20];
  v14 = v20;
  if (v13)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke;
    v17[3] = &unk_1E83A8DB0;
    v19 = a2;
    v17[4] = self;
    v18 = v9;
    [v13 beginEditingWithEntryPointWrapper:v12 completion:v17];
  }

  else if (v9)
  {
    (v9)[2](v9, v14);
  }

  if (v14)
  {
    v15 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      selfCopy = self;
      v25 = 2114;
      v26 = v14;
      _os_log_error_impl(&dword_1CAE63000, v15, OS_LOG_TYPE_ERROR, "calling %{public}@ on %{public}@, error: %{public}@", buf, 0x20u);
    }
  }
}

void __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendRequestDismissalActionWithRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
  {
    [PRUISExternallyHostedPosterEditingService sendRequestDismissalActionWithRequest:];
  }

  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [PRUISExternallyHostedPosterEditingService sendRequestDismissalActionWithRequest:];
  }

  v8 = requestCopy;
  v13 = 0;
  v9 = [(PRUISExternallyHostedPosterEditingService *)self _serviceInterfaceWithError:&v13];
  v10 = v13;
  if (v9)
  {
    [v9 sendRequestDismissalActionWithEntryPointWrapper:v8];
  }

  if (v10)
  {
    v11 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138543874;
      v15 = v12;
      v16 = 2114;
      selfCopy = self;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_ERROR, "calling %{public}@ on %{public}@, error: %{public}@", buf, 0x20u);
    }
  }
}

- (id)_serviceInterfaceWithError:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  p_serviceConnection = &self->_serviceConnection;
  [(BSServiceConnectionClient *)self->_serviceConnection activate];
  v5 = *p_serviceConnection;
  v6 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(BSServiceConnectionClient *)v5 remoteTargetWithLaunchingAssertionAttributes:v7];

  if (!v8)
  {
    v9 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRUISExternallyHostedPosterEditingService _serviceInterfaceWithError:];
    }

    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *error = [v10 errorWithDomain:v12 code:1 userInfo:0];
    }
  }

  return v8;
}

- (PRUISExternallyHostedPosterEditingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1CAE63000, log, OS_LOG_TYPE_ERROR, "%{public}@:%p> failed to lookup endpoint", &v3, 0x16u);
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v1, v2, "<%{public}@:%p> remotely invalidated", v3, v4, v5, v6, 2u);
}

- (void)beginEditingWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"editingRequest" object:? file:? lineNumber:? description:?];
}

- (void)beginEditingWithRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)beginEditingWithRequest:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_5();
  v4 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(*(v1 + 48));
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_DEBUG, "received reply to %{public}@ on %{public}@", v3, 0x16u);
}

- (void)sendRequestDismissalActionWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"editingRequest" object:? file:? lineNumber:? description:?];
}

- (void)sendRequestDismissalActionWithRequest:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_serviceInterfaceWithError:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v2, v3, "%{public}@ failed to create proxy for connection: %{public}@", v4, v5, v6, v7, v8);
}

@end