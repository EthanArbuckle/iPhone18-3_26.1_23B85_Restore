@interface TRActivationOperationHandler
- (TRActivationOperationHandler)initWithActivationHandler:(id)a3;
- (TRActivationOperationHandler)initWithActivationHandlerWithError:(id)a3;
- (void)_handleActivationRequest:(id)a3 withResponseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRActivationOperationHandler

- (TRActivationOperationHandler)initWithActivationHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRActivationOperationHandler;
  v5 = [(TRActivationOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activationHandler = v5->_activationHandler;
    v5->_activationHandler = v6;
  }

  return v5;
}

- (TRActivationOperationHandler)initWithActivationHandlerWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRActivationOperationHandler;
  v5 = [(TRActivationOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activationHandlerWithError = v5->_activationHandlerWithError;
    v5->_activationHandlerWithError = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__TRActivationOperationHandler_registerMessageHandlersForSession___block_invoke;
  v5[3] = &unk_279DCF1B0;
  objc_copyWeak(&v6, &location);
  [v4 setRequestHandler:v5 forRequestClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__TRActivationOperationHandler_registerMessageHandlersForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActivationRequest:v7 withResponseHandler:v5];
}

- (void)_handleActivationRequest:(id)a3 withResponseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  activationHandler = self->_activationHandler;
  activationHandlerWithError = self->_activationHandlerWithError;
  if (activationHandler)
  {
    if (!activationHandlerWithError)
    {
      goto LABEL_6;
    }
  }

  else if (!activationHandlerWithError)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (v8)[2](v8, v11, 0);

    goto LABEL_7;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__TRActivationOperationHandler__handleActivationRequest_withResponseHandler___block_invoke;
  v14[3] = &unk_279DCEEC8;
  v15 = v7;
  activationHandlerWithError[2](activationHandlerWithError, v14);

  activationHandler = self->_activationHandler;
LABEL_6:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__TRActivationOperationHandler__handleActivationRequest_withResponseHandler___block_invoke_2;
  v12[3] = &unk_279DCEEA0;
  v13 = v8;
  activationHandler[2](activationHandler, v12);

LABEL_7:
}

void __77__TRActivationOperationHandler__handleActivationRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(TRSetupActivationResponse);
  [(TRSetupActivationResponse *)v6 setActivated:a2];
  [(TRSetupActivationResponse *)v6 setError:v5];

  (*(*(a1 + 32) + 16))();
}

void __77__TRActivationOperationHandler__handleActivationRequest_withResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(TRSetupActivationResponse);
  [(TRSetupActivationResponse *)v4 setActivated:a2];
  (*(*(a1 + 32) + 16))();
}

@end