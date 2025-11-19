@interface TRNetworkOperationHandler
- (TRNetworkOperationHandler)initWithJoinNetworkHandler:(id)a3;
- (void)_handleNetworkRequest:(id)a3 withResponseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRNetworkOperationHandler

- (TRNetworkOperationHandler)initWithJoinNetworkHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRNetworkOperationHandler;
  v5 = [(TRNetworkOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    joinNetworkHandler = v5->_joinNetworkHandler;
    v5->_joinNetworkHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__TRNetworkOperationHandler_registerMessageHandlersForSession___block_invoke;
  v5[3] = &unk_279DCF1B0;
  objc_copyWeak(&v6, &location);
  [v4 setRequestHandler:v5 forRequestClass:objc_opt_class()];
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

- (void)_handleNetworkRequest:(id)a3 withResponseHandler:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_joinNetworkHandler)
  {
    v8 = [v6 networkSSID];
    v9 = [v6 networkPassword];
    if (v8)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [v10 setObject:v8 forKey:@"TRNetworkOperationHandlerParamKeyNetworkSSID"];
      if (v9)
      {
        [v10 setObject:v9 forKey:@"TRNetworkOperationHandlerParamKeyNetworkSSID"];
      }

      v11 = [v10 copy];
      joinNetworkHandler = self->_joinNetworkHandler;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__TRNetworkOperationHandler__handleNetworkRequest_withResponseHandler___block_invoke;
      v15[3] = &unk_279DCEEA0;
      v16 = v7;
      joinNetworkHandler[2](joinNetworkHandler, v11, v15);
    }

    else
    {
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA450];
      v17[1] = v13;
      v18[0] = @"Invalid Message Parameters";
      v18[1] = @"Missing SSID parameter";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10002 userInfo:v10];
      (*(v7 + 2))(v7, v11, 0);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(v7 + 2))(v7, v8, 0);
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