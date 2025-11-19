@interface TRProxyAuthOperationHandler
- (TRProxyAuthOperationHandler)initWithProxyAuthHandler:(id)a3;
- (TRProxyAuthOperationHandler)initWithProxyAuthHandlerWithError:(id)a3;
- (void)_handleProxyAuthenticationRequest:(id)a3 withResponseHandler:(id)a4;
- (void)_handleProxyDeviceRequest:(id)a3 withResponseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRProxyAuthOperationHandler

- (TRProxyAuthOperationHandler)initWithProxyAuthHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRProxyAuthOperationHandler;
  v5 = [(TRProxyAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    proxyAuthHandler = v5->_proxyAuthHandler;
    v5->_proxyAuthHandler = v6;
  }

  return v5;
}

- (TRProxyAuthOperationHandler)initWithProxyAuthHandlerWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRProxyAuthOperationHandler;
  v5 = [(TRProxyAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    proxyAuthHandlerWithError = v5->_proxyAuthHandlerWithError;
    v5->_proxyAuthHandlerWithError = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__TRProxyAuthOperationHandler_registerMessageHandlersForSession___block_invoke;
  v6[3] = &unk_279DCEAD8;
  v6[4] = self;
  v4 = a3;
  [v4 setRequestHandler:v6 forRequestClass:objc_opt_class()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__TRProxyAuthOperationHandler_registerMessageHandlersForSession___block_invoke_2;
  v5[3] = &unk_279DCEAD8;
  v5[4] = self;
  [v4 setRequestHandler:v5 forRequestClass:objc_opt_class()];
}

- (void)_handleProxyDeviceRequest:(id)a3 withResponseHandler:(id)a4
{
  v4 = MEMORY[0x277CF0218];
  v5 = a4;
  v7 = [v4 currentDevice];
  [v7 setLinkType:3];
  v6 = objc_alloc_init(TRSetupProxyDeviceResponse);
  [(TRSetupProxyDeviceResponse *)v6 setProxyDevice:v7];
  v5[2](v5, 0, v6);
}

- (void)_handleProxyAuthenticationRequest:(id)a3 withResponseHandler:(id)a4
{
  v36[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*&self->_proxyAuthHandler != 0)
  {
    v20 = [v6 account];
    v8 = [v6 rawPassword];
    v9 = [v6 targetedAccountServices];
    v10 = [v6 shouldUseAIDA];
    if (v20)
    {
      if (v8)
      {
        if (v9)
        {
          v29[0] = @"TRProxyAuthOperationHandlerParamKeyAccount";
          v29[1] = @"TRProxyAuthOperationHandlerParamKeyTargetedAccountServices";
          v30[0] = v20;
          v30[1] = v9;
          v30[2] = v8;
          v29[2] = @"TRProxyAuthOperationHandlerParamKeyAccountRawPassword";
          v29[3] = @"TRProxyAuthOperationHandlerParamKeyUseAIDA";
          v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
          v30[3] = v11;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

          proxyAuthHandlerWithError = self->_proxyAuthHandlerWithError;
          if (proxyAuthHandlerWithError)
          {
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __85__TRProxyAuthOperationHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke;
            v27[3] = &unk_279DCED18;
            v14 = &v28;
            v28 = v7;
            proxyAuthHandlerWithError[2](proxyAuthHandlerWithError, v12, v27);
          }

          else
          {
            proxyAuthHandler = self->_proxyAuthHandler;
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __85__TRProxyAuthOperationHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_2;
            v25[3] = &unk_279DCED40;
            v14 = &v26;
            v26 = v7;
            proxyAuthHandler[2](proxyAuthHandler, v12, v25);
          }

          v22 = *v14;
          goto LABEL_14;
        }

        v21 = *MEMORY[0x277CCA470];
        v31[0] = *MEMORY[0x277CCA450];
        v31[1] = v21;
        v32[0] = @"Invalid Message Parameters";
        v32[1] = @"Missing targetedAccountServices parameter";
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
        v34[1] = @"Missing accountRawPassword parameter";
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
    (*(v7 + 2))(v7, v22, 0);
LABEL_14:

    goto LABEL_15;
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
  (*(v7 + 2))(v7, v20, 0);
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

void __85__TRProxyAuthOperationHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v7 setUnauthenticatedAccountServices:v6];

  [(TRSetupAuthenticationResponse *)v7 setError:v5];
  (*(*(a1 + 32) + 16))();
}

void __85__TRProxyAuthOperationHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v4 setUnauthenticatedAccountServices:v3];

  (*(*(a1 + 32) + 16))();
}

@end