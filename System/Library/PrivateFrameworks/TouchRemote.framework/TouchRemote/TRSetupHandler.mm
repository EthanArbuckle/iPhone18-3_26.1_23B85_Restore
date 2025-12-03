@interface TRSetupHandler
- (TRSetupHandler)initWithDelegate:(id)delegate;
- (TRSetupHandlerDelegate)delegate;
- (void)_handleActivationRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleCompletionRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleConfigurationRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleHandshakeRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleNetworkRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleProxyAuthenticationRequest:(id)request withResponseHandler:(id)handler;
- (void)_handleProxyDeviceRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRSetupHandler

- (TRSetupHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = TRSetupHandler;
  v5 = [(TRSetupHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)registerMessageHandlersForSession:(id)session
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke;
  v12[3] = &unk_279DCEAD8;
  v12[4] = self;
  sessionCopy = session;
  [sessionCopy setRequestHandler:v12 forRequestClass:objc_opt_class()];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_2;
  v11[3] = &unk_279DCEAD8;
  v11[4] = self;
  [sessionCopy setRequestHandler:v11 forRequestClass:objc_opt_class()];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_3;
  v10[3] = &unk_279DCEAD8;
  v10[4] = self;
  [sessionCopy setRequestHandler:v10 forRequestClass:objc_opt_class()];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_4;
  v9[3] = &unk_279DCEAD8;
  v9[4] = self;
  [sessionCopy setRequestHandler:v9 forRequestClass:objc_opt_class()];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_5;
  v8[3] = &unk_279DCEAD8;
  v8[4] = self;
  [sessionCopy setRequestHandler:v8 forRequestClass:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_6;
  v7[3] = &unk_279DCEAD8;
  v7[4] = self;
  [sessionCopy setRequestHandler:v7 forRequestClass:objc_opt_class()];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_7;
  v6[3] = &unk_279DCEAD8;
  v6[4] = self;
  [sessionCopy setRequestHandler:v6 forRequestClass:objc_opt_class()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__TRSetupHandler_registerMessageHandlersForSession___block_invoke_8;
  v5[3] = &unk_279DCEAD8;
  v5[4] = self;
  [sessionCopy setRequestHandler:v5 forRequestClass:objc_opt_class()];
}

- (void)_handleHandshakeRequest:(id)request withResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(TRHandshakeResponse);
  [(TRHandshakeResponse *)v5 setProtocolVersion:0];
  handlerCopy[2](handlerCopy, 0, v5);
}

- (void)_handleConfigurationRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    deviceName = [requestCopy deviceName];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = dictionary;
    if (deviceName)
    {
      [dictionary setObject:deviceName forKey:@"DeviceName"];
    }

    v12 = [v11 copy];
    if (objc_opt_respondsToSelector())
    {
      [delegate setupHandler:self configurationWithParams:v12 completion:handlerCopy];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__TRSetupHandler__handleConfigurationRequest_withResponseHandler___block_invoke;
      v14[3] = &unk_279DCECA0;
      v15 = handlerCopy;
      [delegate setupHandler:self prepareConfigurationWithParams:v12 completion:v14];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13, 0);
  }
}

void __66__TRSetupHandler__handleConfigurationRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(TRSetupConfigurationResponse);
  [(TRSetupConfigurationResponse *)v6 setNeedsNetwork:a2];
  [(TRSetupConfigurationResponse *)v6 setUnauthenticatedAccountServices:v5];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleNetworkRequest:(id)request withResponseHandler:(id)handler
{
  v18[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    networkSSID = [requestCopy networkSSID];
    networkPassword = [requestCopy networkPassword];
    if (networkSSID)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:networkSSID forKey:@"NetworkSSID"];
      if (networkPassword)
      {
        [dictionary setObject:networkPassword forKey:@"NetworkPassword"];
      }

      v12 = [dictionary copy];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TRSetupHandler__handleNetworkRequest_withResponseHandler___block_invoke;
      v15[3] = &unk_279DCEEA0;
      v16 = handlerCopy;
      [delegate setupHandler:self joinNetworkWithParams:v12 completion:v15];
    }

    else
    {
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA450];
      v17[1] = v13;
      v18[0] = @"Invalid Message Parameters";
      v18[1] = @"Missing SSID parameter";
      dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9202 userInfo:dictionary];
      (*(handlerCopy + 2))(handlerCopy, v12, 0);
    }
  }

  else
  {
    networkSSID = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, networkSSID, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__TRSetupHandler__handleNetworkRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(TRSetupNetworkResponse);
  [(TRSetupNetworkResponse *)v4 setHasNetwork:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_handleActivationRequest:(id)request withResponseHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__TRSetupHandler__handleActivationRequest_withResponseHandler___block_invoke;
      v11[3] = &unk_279DCEEC8;
      v12 = handlerCopy;
      [delegate setupHandler:self activateWithCompletionWithError:v11];
      v7 = v12;
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __63__TRSetupHandler__handleActivationRequest_withResponseHandler___block_invoke_2;
      v9[3] = &unk_279DCEEA0;
      v10 = handlerCopy;
      [delegate setupHandler:self activateWithCompletion:v9];
      v7 = v10;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v8, 0);
  }
}

void __63__TRSetupHandler__handleActivationRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(TRSetupActivationResponse);
  [(TRSetupActivationResponse *)v6 setActivated:a2];
  [(TRSetupActivationResponse *)v6 setError:v5];

  (*(*(a1 + 32) + 16))();
}

void __63__TRSetupHandler__handleActivationRequest_withResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(TRSetupActivationResponse);
  [(TRSetupActivationResponse *)v4 setActivated:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler
{
  v37[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
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
          v30[0] = @"Account";
          v30[1] = @"TargetedAccountServices";
          v31[0] = account;
          v31[1] = targetedAccountServices;
          v31[2] = companionDevice;
          v30[2] = @"CompanionDevice";
          v30[3] = @"UseAIDA";
          v13 = [MEMORY[0x277CCABB0] numberWithBool:shouldUseAIDA];
          v31[3] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

          if (objc_opt_respondsToSelector())
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke;
            v28[3] = &unk_279DCEEF0;
            v15 = &v29;
            v29 = handlerCopy;
            [delegate setupHandler:self performCompanionAuthenticationWithParams:v14 completionWithErrorAuthResults:v28];
          }

          else if (objc_opt_respondsToSelector())
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2;
            v26[3] = &unk_279DCED18;
            v15 = &v27;
            v27 = handlerCopy;
            [delegate setupHandler:self performCompanionAuthenticationWithParams:v14 completionWithError:v26];
          }

          else
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_3;
            v24[3] = &unk_279DCED40;
            v15 = &v25;
            v25 = handlerCopy;
            [delegate setupHandler:self performCompanionAuthenticationWithParams:v14 completion:v24];
          }

          v22 = *v15;
          goto LABEL_17;
        }

        v21 = *MEMORY[0x277CCA470];
        v32[0] = *MEMORY[0x277CCA450];
        v32[1] = v21;
        v33[0] = @"Invalid Message Parameters";
        v33[1] = @"Missing companionDevice parameter";
        v17 = MEMORY[0x277CBEAC0];
        v18 = v33;
        v19 = v32;
      }

      else
      {
        v20 = *MEMORY[0x277CCA470];
        v34[0] = *MEMORY[0x277CCA450];
        v34[1] = v20;
        v35[0] = @"Invalid Message Parameters";
        v35[1] = @"Missing targetedAccountServices parameter";
        v17 = MEMORY[0x277CBEAC0];
        v18 = v35;
        v19 = v34;
      }
    }

    else
    {
      v16 = *MEMORY[0x277CCA470];
      v36[0] = *MEMORY[0x277CCA450];
      v36[1] = v16;
      v37[0] = @"Invalid Message Parameters";
      v37[1] = @"Missing account parameter";
      v17 = MEMORY[0x277CBEAC0];
      v18 = v37;
      v19 = v36;
    }

    v14 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9202 userInfo:v14];
    (*(handlerCopy + 2))(handlerCopy, v22, 0);
LABEL_17:

    goto LABEL_18;
  }

  account = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
  (*(handlerCopy + 2))(handlerCopy, account, 0);
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

void __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v10 setUnauthenticatedAccountServices:v9];

  [(TRSetupAuthenticationResponse *)v10 setError:v8];
  [(TRSetupAuthenticationResponse *)v10 setAuthenticationResults:v7];

  (*(*(a1 + 32) + 16))();
}

void __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v7 setUnauthenticatedAccountServices:v6];

  [(TRSetupAuthenticationResponse *)v7 setError:v5];
  (*(*(a1 + 32) + 16))();
}

void __76__TRSetupHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v4 setUnauthenticatedAccountServices:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleProxyDeviceRequest:(id)request withResponseHandler:(id)handler
{
  v4 = MEMORY[0x277CF0218];
  handlerCopy = handler;
  currentDevice = [v4 currentDevice];
  [currentDevice setLinkType:3];
  v6 = objc_alloc_init(TRSetupProxyDeviceResponse);
  [(TRSetupProxyDeviceResponse *)v6 setProxyDevice:currentDevice];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)_handleProxyAuthenticationRequest:(id)request withResponseHandler:(id)handler
{
  v37[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    account = [requestCopy account];
    rawPassword = [requestCopy rawPassword];
    targetedAccountServices = [requestCopy targetedAccountServices];
    shouldUseAIDA = [requestCopy shouldUseAIDA];
    if (account)
    {
      if (rawPassword)
      {
        if (targetedAccountServices)
        {
          v30[0] = @"Account";
          v30[1] = @"TargetedAccountServices";
          v31[0] = account;
          v31[1] = targetedAccountServices;
          v31[2] = rawPassword;
          v30[2] = @"AccountRawPassword";
          v30[3] = @"UseAIDA";
          v13 = [MEMORY[0x277CCABB0] numberWithBool:shouldUseAIDA];
          v31[3] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

          if (objc_opt_respondsToSelector())
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke;
            v28[3] = &unk_279DCEEF0;
            v15 = &v29;
            v29 = handlerCopy;
            [delegate setupHandler:self performProxyAuthenticationWithParamsAuthResult:v14 completionWithErrorAuthResults:v28];
          }

          else if (objc_opt_respondsToSelector())
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_2;
            v26[3] = &unk_279DCED18;
            v15 = &v27;
            v27 = handlerCopy;
            [delegate setupHandler:self performProxyAuthenticationWithParams:v14 completionWithError:v26];
          }

          else
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_3;
            v24[3] = &unk_279DCED40;
            v15 = &v25;
            v25 = handlerCopy;
            [delegate setupHandler:self performProxyAuthenticationWithParams:v14 completion:v24];
          }

          v22 = *v15;
          goto LABEL_17;
        }

        v21 = *MEMORY[0x277CCA470];
        v32[0] = *MEMORY[0x277CCA450];
        v32[1] = v21;
        v33[0] = @"Invalid Message Parameters";
        v33[1] = @"Missing targetedAccountServices parameter";
        v17 = MEMORY[0x277CBEAC0];
        v18 = v33;
        v19 = v32;
      }

      else
      {
        v20 = *MEMORY[0x277CCA470];
        v34[0] = *MEMORY[0x277CCA450];
        v34[1] = v20;
        v35[0] = @"Invalid Message Parameters";
        v35[1] = @"Missing accountRawPassword parameter";
        v17 = MEMORY[0x277CBEAC0];
        v18 = v35;
        v19 = v34;
      }
    }

    else
    {
      v16 = *MEMORY[0x277CCA470];
      v36[0] = *MEMORY[0x277CCA450];
      v36[1] = v16;
      v37[0] = @"Invalid Message Parameters";
      v37[1] = @"Missing account parameter";
      v17 = MEMORY[0x277CBEAC0];
      v18 = v37;
      v19 = v36;
    }

    v14 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:2];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9202 userInfo:v14];
    (*(handlerCopy + 2))(handlerCopy, v22, 0);
LABEL_17:

    goto LABEL_18;
  }

  account = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
  (*(handlerCopy + 2))(handlerCopy, account, 0);
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

void __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v10 setUnauthenticatedAccountServices:v9];

  [(TRSetupAuthenticationResponse *)v10 setError:v8];
  [(TRSetupAuthenticationResponse *)v10 setAuthenticationResults:v7];

  (*(*(a1 + 32) + 16))();
}

void __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v7 setUnauthenticatedAccountServices:v6];

  [(TRSetupAuthenticationResponse *)v7 setError:v5];
  (*(*(a1 + 32) + 16))();
}

void __72__TRSetupHandler__handleProxyAuthenticationRequest_withResponseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v4 setUnauthenticatedAccountServices:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleCompletionRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(TRSetupHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(TRSetupCompletionResponse);
    handlerCopy[2](handlerCopy, 0, v8);

    [delegate setupHandler:self didCompleteSuccessfully:objc_msgSend(requestCopy errorCode:{"completedSuccessfully"), objc_msgSend(requestCopy, "errorCode")}];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (handlerCopy)[2](handlerCopy, v8, 0);
  }
}

- (TRSetupHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end