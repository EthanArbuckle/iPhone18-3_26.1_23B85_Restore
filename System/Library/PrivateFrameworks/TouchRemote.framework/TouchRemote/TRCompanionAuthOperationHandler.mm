@interface TRCompanionAuthOperationHandler
- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandler:(id)handler;
- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandlerWithError:(id)error;
- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRCompanionAuthOperationHandler

- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TRCompanionAuthOperationHandler;
  v5 = [(TRCompanionAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    companionAuthHandler = v5->_companionAuthHandler;
    v5->_companionAuthHandler = v6;
  }

  return v5;
}

- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandlerWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = TRCompanionAuthOperationHandler;
  v5 = [(TRCompanionAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    companionAuthHandlerWithError = v5->_companionAuthHandlerWithError;
    v5->_companionAuthHandlerWithError = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__TRCompanionAuthOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  sessionCopy = session;
  [sessionCopy setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler
{
  v36[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if (*&self->_companionAuthHandler != 0)
  {
    account = [requestCopy account];
    targetedAccountServices = [requestCopy targetedAccountServices];
    companionDevice = [requestCopy companionDevice];
    shouldUseAIDA = [requestCopy shouldUseAIDA];
    if (account)
    {
      if (targetedAccountServices)
      {
        if (companionDevice)
        {
          v29[0] = @"TRCompanionAuthOperationHandlerParamKeyAccount";
          v29[1] = @"TRCompanionAuthOperationHandlerParamKeyTargetedAccountServices";
          v30[0] = account;
          v30[1] = targetedAccountServices;
          v30[2] = companionDevice;
          v29[2] = @"TRCompanionAuthOperationHandlerParamKeyCompanionDevice";
          v29[3] = @"TRCompanionAuthOperationHandlerParamKeyUseAIDA";
          v11 = [MEMORY[0x277CCABB0] numberWithBool:shouldUseAIDA];
          v30[3] = v11;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

          companionAuthHandlerWithError = self->_companionAuthHandlerWithError;
          if (companionAuthHandlerWithError)
          {
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke;
            v27[3] = &unk_279DCED18;
            v14 = &v28;
            v28 = handlerCopy;
            companionAuthHandlerWithError[2](companionAuthHandlerWithError, v12, v27);
          }

          else
          {
            companionAuthHandler = self->_companionAuthHandler;
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2;
            v25[3] = &unk_279DCED40;
            v14 = &v26;
            v26 = handlerCopy;
            companionAuthHandler[2](companionAuthHandler, v12, v25);
          }

          v22 = *v14;
          goto LABEL_14;
        }

        v21 = *MEMORY[0x277CCA470];
        v31[0] = *MEMORY[0x277CCA450];
        v31[1] = v21;
        v32[0] = @"Invalid Message Parameters";
        v32[1] = @"Missing companionDevice parameter";
        v16 = MEMORY[0x277CBEAC0];
        v17 = v32;
        v18 = v31;
      }

      else
      {
        v19 = *MEMORY[0x277CCA470];
        v33[0] = *MEMORY[0x277CCA450];
        v33[1] = v19;
        v34[0] = @"Invalid Message Parameters";
        v34[1] = @"Missing targetedAccountServices parameter";
        v16 = MEMORY[0x277CBEAC0];
        v17 = v34;
        v18 = v33;
      }
    }

    else
    {
      v15 = *MEMORY[0x277CCA470];
      v35[0] = *MEMORY[0x277CCA450];
      v35[1] = v15;
      v36[0] = @"Invalid Message Parameters";
      v36[1] = @"Missing account parameter";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v36;
      v18 = v35;
    }

    v12 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9202 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, v22, 0);
LABEL_14:

    goto LABEL_15;
  }

  account = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
  (*(handlerCopy + 2))(handlerCopy, account, 0);
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

void __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v7 setUnauthenticatedAccountServices:v6];

  [(TRSetupAuthenticationResponse *)v7 setError:v5];
  (*(*(a1 + 32) + 16))();
}

void __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v4 setUnauthenticatedAccountServices:v3];

  (*(*(a1 + 32) + 16))();
}

@end