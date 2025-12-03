@interface TRNetworkOperationHandler
- (TRNetworkOperationHandler)initWithJoinNetworkHandler:(id)handler;
- (void)_handleNetworkRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRNetworkOperationHandler

- (TRNetworkOperationHandler)initWithJoinNetworkHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TRNetworkOperationHandler;
  v5 = [(TRNetworkOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    joinNetworkHandler = v5->_joinNetworkHandler;
    v5->_joinNetworkHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)session
{
  sessionCopy = session;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__TRNetworkOperationHandler_registerMessageHandlersForSession___block_invoke;
  v5[3] = &unk_279DCF1B0;
  objc_copyWeak(&v6, &location);
  [sessionCopy setRequestHandler:v5 forRequestClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__TRNetworkOperationHandler_registerMessageHandlersForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNetworkRequest:v7 withResponseHandler:v5];
}

- (void)_handleNetworkRequest:(id)request withResponseHandler:(id)handler
{
  v18[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if (self->_joinNetworkHandler)
  {
    networkSSID = [requestCopy networkSSID];
    networkPassword = [requestCopy networkPassword];
    if (networkSSID)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:networkSSID forKey:@"TRNetworkOperationHandlerParamKeyNetworkSSID"];
      if (networkPassword)
      {
        [dictionary setObject:networkPassword forKey:@"TRNetworkOperationHandlerParamKeyNetworkSSID"];
      }

      v11 = [dictionary copy];
      joinNetworkHandler = self->_joinNetworkHandler;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__TRNetworkOperationHandler__handleNetworkRequest_withResponseHandler___block_invoke;
      v15[3] = &unk_279DCEEA0;
      v16 = handlerCopy;
      joinNetworkHandler[2](joinNetworkHandler, v11, v15);
    }

    else
    {
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA450];
      v17[1] = v13;
      v18[0] = @"Invalid Message Parameters";
      v18[1] = @"Missing SSID parameter";
      dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10002 userInfo:dictionary];
      (*(handlerCopy + 2))(handlerCopy, v11, 0);
    }
  }

  else
  {
    networkSSID = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, networkSSID, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __71__TRNetworkOperationHandler__handleNetworkRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(TRSetupNetworkResponse);
  [(TRSetupNetworkResponse *)v4 setHasNetwork:a2];
  (*(*(a1 + 32) + 16))();
}

@end