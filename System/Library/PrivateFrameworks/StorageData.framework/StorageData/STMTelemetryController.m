@interface STMTelemetryController
- (void)getTelemetry:(id)a3;
- (void)retrieveTelemetryWithCompletionHandler:(id)a3;
- (void)stopService;
@end

@implementation STMTelemetryController

- (void)getTelemetry:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__STMTelemetryController_getTelemetry___block_invoke;
  v6[3] = &unk_279D1D308;
  v7 = v4;
  v5 = v4;
  [(STMTelemetryController *)self retrieveTelemetryWithCompletionHandler:v6];
}

void __39__STMTelemetryController_getTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v5;
    if (!v5)
    {
      v9 = STStorageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __39__STMTelemetryController_getTelemetry___block_invoke_cold_1(v6, v9);
      }

      v7 = *(a1 + 32);
      v8 = MEMORY[0x277CBEC10];
    }

    (*(v7 + 16))(v7, v8);
  }
}

- (void)retrieveTelemetryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STMTelemetryController *)self connection];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storagedatad" options:0];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C949F0];
    [v6 setRemoteObjectInterface:v7];

    [v6 resume];
    [(STMTelemetryController *)self setConnection:v6];
  }

  v8 = STStorageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26BB8E000, v8, OS_LOG_TYPE_INFO, "Connecting to StorageDataService", buf, 2u);
  }

  v9 = [(STMTelemetryController *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke;
  v15[3] = &unk_279D1D330;
  v10 = v4;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_5;
  v13[3] = &unk_279D1D358;
  v14 = v10;
  v12 = v10;
  [v11 storageInfoDict:v13];
}

void __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = STStorageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopService
{
  v3 = [(STMTelemetryController *)self connection];
  [v3 invalidate];

  [(STMTelemetryController *)self setConnection:0];
}

void __39__STMTelemetryController_getTelemetry___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve storage telemetry: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26BB8E000, a2, OS_LOG_TYPE_ERROR, "Error connecting to StorageDataService: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end