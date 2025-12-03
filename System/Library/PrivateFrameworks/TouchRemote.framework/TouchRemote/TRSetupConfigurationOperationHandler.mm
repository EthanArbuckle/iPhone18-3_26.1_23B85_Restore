@interface TRSetupConfigurationOperationHandler
- (TRSetupConfigurationOperationHandler)initWithConfigurationHandler:(id)handler;
- (void)_handleConfigurationRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRSetupConfigurationOperationHandler

- (TRSetupConfigurationOperationHandler)initWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TRSetupConfigurationOperationHandler;
  v5 = [(TRSetupConfigurationOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x27438C490](handlerCopy);
    configurationHandler = v5->_configurationHandler;
    v5->_configurationHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__TRSetupConfigurationOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  sessionCopy = session;
  [sessionCopy setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleConfigurationRequest:(id)request withResponseHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_configurationHandler)
  {
    deviceName = [request deviceName];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = dictionary;
    if (deviceName)
    {
      [dictionary setObject:deviceName forKey:@"TRSetupConfigurationOperationHandlerParamKeyDeviceName"];
    }

    v10 = [v9 copy];
    configurationHandler = self->_configurationHandler;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__TRSetupConfigurationOperationHandler__handleConfigurationRequest_withResponseHandler___block_invoke;
    v12[3] = &unk_279DCECA0;
    v13 = handlerCopy;
    configurationHandler[2](configurationHandler, v10, v12);
  }

  else
  {
    deviceName = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, deviceName, 0);
  }
}

void __88__TRSetupConfigurationOperationHandler__handleConfigurationRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(TRSetupConfigurationResponse);
  [(TRSetupConfigurationResponse *)v6 setNeedsNetwork:a2];
  [(TRSetupConfigurationResponse *)v6 setUnauthenticatedAccountServices:v5];

  (*(*(a1 + 32) + 16))();
}

@end