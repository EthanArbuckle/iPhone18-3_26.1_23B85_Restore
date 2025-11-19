@interface PowerUISmartChargeClient
+ (id)remoteInterface;
- (BOOL)isCECSupported;
- (BOOL)isDEoCSupported;
- (BOOL)isMCLSupported;
- (BOOL)isOBCEngaged:(BOOL *)a3 chargeLimit:(unint64_t *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6;
- (BOOL)isOBCEngaged:(BOOL *)a3 isMaxChargeLimited:(BOOL *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6;
- (BOOL)isOBCEngaged:(id *)a3;
- (BOOL)isOBCEngagedAsDesktopDevice:(BOOL *)a3 chargingOverrideAllowed:(BOOL *)a4 withError:(id *)a5;
- (BOOL)isOBCSupported;
- (BOOL)setCECState:(unint64_t)a3 error:(id *)a4;
- (BOOL)setDEoCState:(unint64_t)a3 error:(id *)a4;
- (BOOL)setMCMState:(unint64_t)a3 error:(id *)a4;
- (BOOL)setState:(unint64_t)a3 error:(id *)a4;
- (BOOL)shouldMCMBeDisplayed:(id *)a3;
- (BOOL)smartChargingUIState:(unint64_t *)a3 chargeLimit:(unint64_t *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6;
- (BOOL)temporarilyDisableMCL:(id *)a3;
- (PowerUISmartChargeClient)initWithClientName:(id)a3;
- (id)cecFullChargeDeadline:(id *)a3;
- (id)fullChargeDeadline:(id *)a3;
- (id)getDEoCPredictions:(id *)a3;
- (id)lastUsedLeewayWithError:(id *)a3;
- (id)powerLogStatus;
- (id)status;
- (unint64_t)currentChargeLimit:(id *)a3;
- (unint64_t)currentRecommendedChargeLimitWithError:(id *)a3;
- (unint64_t)isCECCurrentlyEnabled:(id *)a3;
- (unint64_t)isDEoCCurrentlyEnabled:(id *)a3;
- (unint64_t)isMCLCurrentlyEnabled:(id *)a3;
- (unint64_t)isMCMCurrentlyEnabled:(id *)a3;
- (unint64_t)isSmartChargingCurrentlyEnabled:(id *)a3;
- (unsigned)getMCLLimitWithError:(id *)a3;
- (void)cecFullChargeDeadlineWithHandler:(id)a3;
- (void)currentRecommendedChargeLimitWithHandler:(id)a3;
- (void)dealloc;
- (void)disableCECWithHandler:(id)a3;
- (void)disableDEoCWithHandler:(id)a3;
- (void)disableMCLWithHandler:(id)a3;
- (void)disableMCMWithHandler:(id)a3;
- (void)disableSmartChargingWithHandler:(id)a3;
- (void)enableCECWithHandler:(id)a3;
- (void)enableDEoCWithHandler:(id)a3;
- (void)enableMCLWithHandler:(id)a3;
- (void)enableMCMWithHandler:(id)a3;
- (void)enableSmartChargingWithHandler:(id)a3;
- (void)enterDevelopmentMode;
- (void)fullChargeDeadlineWithHandler:(id)a3;
- (void)getMCLLimitWithHandler:(id)a3;
- (void)isCECCurrentlyEnabledWithHandler:(id)a3;
- (void)isCECSupportedWithHandler:(id)a3;
- (void)isDEoCCurrentlyEnabledWithHandler:(id)a3;
- (void)isDEoCSupportedWithHandler:(id)a3;
- (void)isMCLCurrentlyEnabledWithHandler:(id)a3;
- (void)isMCLSupportedWithHandler:(id)a3;
- (void)isMCMCurrentlyEnabledWithHandler:(id)a3;
- (void)isOBCEngagedAsDesktopDeviceWithHandler:(id)a3;
- (void)isOBCEngagedOrChargeLimitedWithHandler:(id)a3;
- (void)isOBCSupportedWithHandler:(id)a3;
- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3;
- (void)legacy_client_isOBCEngagedWithHandler:(id)a3;
- (void)listMonitorSignals;
- (void)resetDevelopmentMode;
- (void)resetEngagementOverride;
- (void)shouldMCMBeDisplayedWithHandler:(id)a3;
- (void)temporarilyDisableCECWithHandler:(id)a3;
- (void)temporarilyDisableMCLWithHandler:(id)a3;
- (void)temporarilyDisableMCMWithHandler:(id)a3;
- (void)temporarilyDisableSmartChargingWithHandler:(id)a3;
- (void)temporarilyEnableChargingWithHandler:(id)a3;
@end

@implementation PowerUISmartChargeClient

+ (id)remoteInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282D598A0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_statusWithHandler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  [v2 setClasses:v16 forSelector:sel_powerLogStatusWithHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

- (PowerUISmartChargeClient)initWithClientName:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PowerUISmartChargeClient;
  v6 = [(PowerUISmartChargeClient *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientName, a3);
    v8 = os_log_create("com.apple.powerui.smartcharging", [v5 UTF8String]);
    log = v7->_log;
    v7->_log = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.powerui.smartChargeManager" options:4096];
    connection = v7->_connection;
    v7->_connection = v10;

    v12 = v7->_connection;
    v13 = [objc_opt_class() remoteInterface];
    [(NSXPCConnection *)v12 setRemoteObjectInterface:v13];

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = PowerUISmartChargeClient;
  [(PowerUISmartChargeClient *)&v3 dealloc];
}

- (BOOL)isOBCSupported
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PowerUISmartChargeClient_isOBCSupported__block_invoke_2;
  v5[3] = &unk_2782D4470;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 isOBCSupportedWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __42__PowerUISmartChargeClient_isOBCSupported__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__PowerUISmartChargeClient_isOBCSupported__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)isOBCSupportedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isOBCSupportedWithHandler:v4];
}

- (unint64_t)isSmartChargingCurrentlyEnabled:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PowerUISmartChargeClient_isSmartChargingCurrentlyEnabled___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PowerUISmartChargeClient_isSmartChargingCurrentlyEnabled___block_invoke_2;
  v8[3] = &unk_2782D4498;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 isSmartChargingCurrentlyEnabledWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __60__PowerUISmartChargeClient_isSmartChargingCurrentlyEnabled___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isSmartChargingCurrentlyEnabledWithHandler:v4];
}

- (BOOL)setState:(unint64_t)a3 error:(id *)a4
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__PowerUISmartChargeClient_setState_error___block_invoke;
  v18[3] = &unk_2782D44C0;
  v18[4] = &v23;
  v18[5] = &v19;
  v18[6] = &v29;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
  clientName = self->_clientName;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__PowerUISmartChargeClient_setState_error___block_invoke_2;
  v17[3] = &unk_2782D44E8;
  v17[4] = &v23;
  v17[5] = &v19;
  v17[6] = &v29;
  [v8 client:clientName setState:a3 withHandler:v17];

  v10 = v30[5];
  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = [(PowerUISmartChargeClient *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [PowerUISmartChargeClient setState:v12 error:?];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:5 userInfo:0];
    v14 = v24[5];
    v24[5] = v13;

    *(v20 + 24) = 0;
  }

  if (a4)
  {
    *a4 = v24[5];
  }

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v15;
}

void __43__PowerUISmartChargeClient_setState_error___block_invoke(void *a1, void *a2)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v4 = a2;
  *(*(a1[5] + 8) + 24) = 0;
  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void __43__PowerUISmartChargeClient_setState_error___block_invoke_2(void *a1, char a2, id obj)
{
  objc_storeStrong((*(a1[4] + 8) + 40), obj);
  v6 = obj;
  *(*(a1[5] + 8) + 24) = a2;
  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

- (void)disableSmartChargingWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setState:0 withHandler:v5];
}

- (void)temporarilyDisableSmartChargingWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setState:3 withHandler:v5];
}

- (void)enableSmartChargingWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setState:1 withHandler:v5];
}

- (void)temporarilyEnableChargingWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setState:2 withHandler:v5];
}

- (id)status
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = MEMORY[0x277CBEC10];
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__PowerUISmartChargeClient_status__block_invoke;
  v7[3] = &unk_2782D4510;
  v7[4] = self;
  v7[5] = a2;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PowerUISmartChargeClient_status__block_invoke_140;
  v6[3] = &unk_2782D4538;
  v6[4] = &v8;
  [v3 statusWithHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __34__PowerUISmartChargeClient_status__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) clientName];
    v6 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)powerLogStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = MEMORY[0x277CBEC10];
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PowerUISmartChargeClient_powerLogStatus__block_invoke;
  v7[3] = &unk_2782D4510;
  v7[4] = self;
  v7[5] = a2;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PowerUISmartChargeClient_powerLogStatus__block_invoke_142;
  v6[3] = &unk_2782D4538;
  v6[4] = &v8;
  [v3 powerLogStatusWithHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __42__PowerUISmartChargeClient_powerLogStatus__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) clientName];
    v6 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Client %@ received error (%@): %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)fullChargeDeadline:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke;
  v12[3] = &unk_2782D4560;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = a2;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_143;
  v11[3] = &unk_2782D4588;
  v11[4] = &v19;
  v11[5] = &v13;
  [v5 fullChargeDeadlineWithHandler:v11];

  v6 = v14[5];
  if (v6)
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v8 = v20[5];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v7 = v9;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v7;
}

void __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v5);
  }
}

void __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fullChargeDeadlineWithHandler:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__PowerUISmartChargeClient_fullChargeDeadlineWithHandler___block_invoke;
  v8[3] = &unk_2782D45B0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 fullChargeDeadlineWithHandler:v6];
}

- (BOOL)smartChargingUIState:(unint64_t *)a3 chargeLimit:(unint64_t *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 100;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke;
  v18[3] = &unk_2782D4560;
  v18[4] = self;
  v18[5] = &v19;
  v18[6] = a2;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145;
  v17[3] = &unk_2782D45D8;
  v17[6] = &v29;
  v17[7] = &v25;
  v17[4] = self;
  v17[5] = &v33;
  v17[8] = &v19;
  v17[9] = a2;
  [v13 smartChargingUIStateWithHandler:v17];

  *a3 = v34[3];
  if (a4)
  {
    *a4 = v30[3];
  }

  if (a5)
  {
    *a5 = *(v26 + 24);
  }

  v14 = v20[5];
  if (a6 && v14)
  {
    v14 = v14;
    *a6 = v14;
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v15;
}

void __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v5);
  }
}

void __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = a5;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  *(*(a1[7] + 8) + 24) = a4;
  if (v9)
  {
    v10 = *(a1[4] + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145_cold_1(a1, v10);
    }
  }

  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
}

- (BOOL)isOBCEngaged:(BOOL *)a3 isMaxChargeLimited:(BOOL *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  connection = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__PowerUISmartChargeClient_isOBCEngaged_isMaxChargeLimited_chargingOverrideAllowed_withError___block_invoke;
  v24[3] = &unk_2782D4560;
  v24[4] = self;
  v24[5] = &v33;
  v24[6] = a2;
  v12 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__PowerUISmartChargeClient_isOBCEngaged_isMaxChargeLimited_chargingOverrideAllowed_withError___block_invoke_147;
  v23[3] = &unk_2782D4600;
  v23[6] = &v29;
  v23[7] = &v25;
  v23[4] = self;
  v23[5] = &v39;
  v23[8] = &v33;
  v23[9] = a2;
  [v12 legacy_isOBCEngagedWithHandler:v23];

  v13 = [(PowerUISmartChargeClient *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(PowerUISmartChargeClient *)self clientName];
    v15 = *(v40 + 24);
    v16 = *(v30 + 24);
    v17 = *(v26 + 24);
    *buf = 138413058;
    v44 = v14;
    v45 = 1024;
    v46 = v15;
    v47 = 1024;
    v48 = v16;
    v49 = 1024;
    v50 = v17;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_INFO, "Client %@ requested engagement state: %d - %d - %d", buf, 0x1Eu);
  }

  if (a3)
  {
    *a3 = *(v40 + 24);
  }

  if (a4)
  {
    *a4 = *(v30 + 24);
  }

  if (a5)
  {
    *a5 = *(v26 + 24);
  }

  v18 = v34[5];
  if (a6 && v18)
  {
    v18 = v18;
    *a6 = v18;
  }

  v19 = v18 == 0;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __94__PowerUISmartChargeClient_isOBCEngaged_isMaxChargeLimited_chargingOverrideAllowed_withError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v5);
  }
}

void __94__PowerUISmartChargeClient_isOBCEngaged_isMaxChargeLimited_chargingOverrideAllowed_withError___block_invoke_147(void *a1, char a2, char a3, char a4, void *a5)
{
  v9 = a5;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  *(*(a1[7] + 8) + 24) = a4;
  if (v9)
  {
    v10 = *(a1[4] + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145_cold_1(a1, v10);
    }
  }

  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
}

- (BOOL)isOBCEngagedAsDesktopDevice:(BOOL *)a3 chargingOverrideAllowed:(BOOL *)a4 withError:(id *)a5
{
  v6 = 0;
  [(PowerUISmartChargeClient *)self isOBCEngaged:&v6 isMaxChargeLimited:a3 chargingOverrideAllowed:a4 withError:a5];
  return v6;
}

- (void)isOBCEngagedAsDesktopDeviceWithHandler:(id)a3
{
  v5 = a3;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PowerUISmartChargeClient_isOBCEngagedAsDesktopDeviceWithHandler___block_invoke;
  v9[3] = &unk_2782D4628;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v7 = v5;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  [v8 isOBCEngagedAsDesktopDeviceWithHandler:v7];
}

void __67__PowerUISmartChargeClient_isOBCEngagedAsDesktopDeviceWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)isOBCEngaged:(id *)a3
{
  v4 = 0;
  [(PowerUISmartChargeClient *)self isOBCEngaged:&v4 isMaxChargeLimited:0 chargingOverrideAllowed:0 withError:a3];
  return v4;
}

- (void)legacy_client_isOBCEngagedWithHandler:(id)a3
{
  v5 = a3;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__PowerUISmartChargeClient_legacy_client_isOBCEngagedWithHandler___block_invoke;
  v12[3] = &unk_2782D4628;
  v12[4] = self;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__PowerUISmartChargeClient_legacy_client_isOBCEngagedWithHandler___block_invoke_149;
  v10[3] = &unk_2782D4650;
  v11 = v7;
  v9 = v7;
  [v8 legacy_isOBCEngagedWithHandler:v10];
}

void __66__PowerUISmartChargeClient_legacy_client_isOBCEngagedWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void __46__PowerUISmartChargeClient_setMCLLimit_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __46__PowerUISmartChargeClient_setMCLLimit_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (unsigned)getMCLLimitWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__PowerUISmartChargeClient_getMCLLimitWithError___block_invoke;
  v11[3] = &unk_2782D4678;
  v11[4] = &v16;
  v11[5] = &v12;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  clientName = self->_clientName;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__PowerUISmartChargeClient_getMCLLimitWithError___block_invoke_2;
  v10[3] = &unk_2782D46C8;
  v10[4] = &v16;
  v10[5] = &v12;
  [v6 client:clientName getMCLLimitWithHandler:v10];

  if (a3)
  {
    *a3 = v17[5];
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __49__PowerUISmartChargeClient_getMCLLimitWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __49__PowerUISmartChargeClient_getMCLLimitWithError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)getMCLLimitWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName getMCLLimitWithHandler:v5];
}

- (void)disableMCLWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setMCLLimit:100 withHandler:v5];
}

- (void)enableMCLWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setMCLLimit:80 withHandler:v5];
}

- (BOOL)temporarilyDisableMCL:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__PowerUISmartChargeClient_temporarilyDisableMCL___block_invoke;
  v11[3] = &unk_2782D4678;
  v11[4] = &v16;
  v11[5] = &v12;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  clientName = self->_clientName;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PowerUISmartChargeClient_temporarilyDisableMCL___block_invoke_2;
  v10[3] = &unk_2782D46A0;
  v10[4] = &v16;
  v10[5] = &v12;
  [v6 tmpDisableMCLViaClient:clientName withHandler:v10];

  if (a3)
  {
    *a3 = v17[5];
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __50__PowerUISmartChargeClient_temporarilyDisableMCL___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __50__PowerUISmartChargeClient_temporarilyDisableMCL___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)temporarilyDisableMCLWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 tmpDisableMCLViaClient:self->_clientName withHandler:v5];
}

- (unint64_t)isMCLCurrentlyEnabled:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PowerUISmartChargeClient_isMCLCurrentlyEnabled___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PowerUISmartChargeClient_isMCLCurrentlyEnabled___block_invoke_2;
  v8[3] = &unk_2782D4498;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 isMCLCurrentlyEnabledWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __50__PowerUISmartChargeClient_isMCLCurrentlyEnabled___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isMCLCurrentlyEnabledWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isMCLCurrentlyEnabledWithHandler:v4];
}

- (BOOL)isMCLSupported
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_152];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PowerUISmartChargeClient_isMCLSupported__block_invoke_2;
  v5[3] = &unk_2782D4470;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 isMCLSupportedWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __42__PowerUISmartChargeClient_isMCLSupported__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__PowerUISmartChargeClient_isMCLSupported__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)isMCLSupportedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isMCLSupportedWithHandler:v4];
}

- (unint64_t)currentRecommendedChargeLimitWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_154];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__PowerUISmartChargeClient_currentRecommendedChargeLimitWithError___block_invoke_2;
  v7[3] = &unk_2782D46F0;
  v7[4] = self;
  v7[5] = &v8;
  [v4 currentRecommendedChargeLimitWithHandler:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __67__PowerUISmartChargeClient_currentRecommendedChargeLimitWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__PowerUISmartChargeClient_currentRecommendedChargeLimitWithError___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)currentRecommendedChargeLimitWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 currentRecommendedChargeLimitWithHandler:v4];
}

- (BOOL)isDEoCSupported
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_156];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PowerUISmartChargeClient_isDEoCSupported__block_invoke_2;
  v5[3] = &unk_2782D4470;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 isDEoCSupportedWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __43__PowerUISmartChargeClient_isDEoCSupported__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43__PowerUISmartChargeClient_isDEoCSupported__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)isDEoCSupportedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isDEoCSupportedWithHandler:v4];
}

- (BOOL)setDEoCState:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__PowerUISmartChargeClient_setDEoCState_error___block_invoke;
  v13[3] = &unk_2782D4678;
  v13[4] = &v18;
  v13[5] = &v14;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  clientName = self->_clientName;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PowerUISmartChargeClient_setDEoCState_error___block_invoke_2;
  v12[3] = &unk_2782D46A0;
  v12[4] = &v18;
  v12[5] = &v14;
  [v8 client:clientName setDEoCState:a3 withHandler:v12];

  if (a4)
  {
    *a4 = v19[5];
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __47__PowerUISmartChargeClient_setDEoCState_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __47__PowerUISmartChargeClient_setDEoCState_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (unint64_t)isDEoCCurrentlyEnabled:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__PowerUISmartChargeClient_isDEoCCurrentlyEnabled___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PowerUISmartChargeClient_isDEoCCurrentlyEnabled___block_invoke_2;
  v8[3] = &unk_2782D4498;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 isDEoCCurrentlyEnabledWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __51__PowerUISmartChargeClient_isDEoCCurrentlyEnabled___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isDEoCCurrentlyEnabledWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isDEoCCurrentlyEnabledWithHandler:v4];
}

- (void)disableDEoCWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setDEoCState:0 withHandler:v5];
}

- (void)enableDEoCWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setDEoCState:1 withHandler:v5];
}

- (unint64_t)currentChargeLimit:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__PowerUISmartChargeClient_currentChargeLimit___block_invoke;
  v10[3] = &unk_2782D40A0;
  v10[4] = &v15;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PowerUISmartChargeClient_currentChargeLimit___block_invoke_2;
  v9[3] = &unk_2782D4718;
  v9[4] = self;
  v9[5] = &v15;
  v9[6] = &v11;
  [v6 currentChargeLimitWithHandler:v9];

  if (a3)
  {
    *a3 = v16[5];
  }

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __47__PowerUISmartChargeClient_currentChargeLimit___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = [*(a1 + 32) log];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__PowerUISmartChargeClient_currentChargeLimit___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) clientName];
      v11 = 138412546;
      v12 = v9;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_INFO, "Client %@ requested DEoC limit: %lu", &v11, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getDEoCPredictions:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__PowerUISmartChargeClient_getDEoCPredictions___block_invoke;
  v10[3] = &unk_2782D40A0;
  v10[4] = &v17;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PowerUISmartChargeClient_getDEoCPredictions___block_invoke_2;
  v9[3] = &unk_2782D4740;
  v9[4] = self;
  v9[5] = &v17;
  v9[6] = &v11;
  [v6 getDEoCPredictionsWithHandler:v9];

  if (a3)
  {
    *a3 = v18[5];
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __47__PowerUISmartChargeClient_getDEoCPredictions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v7)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__PowerUISmartChargeClient_getDEoCPredictions___block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (BOOL)isOBCEngaged:(BOOL *)a3 chargeLimit:(unint64_t *)a4 chargingOverrideAllowed:(BOOL *)a5 withError:(id *)a6
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 100;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__PowerUISmartChargeClient_isOBCEngaged_chargeLimit_chargingOverrideAllowed_withError___block_invoke;
  v18[3] = &unk_2782D4560;
  v18[4] = self;
  v18[5] = &v27;
  v18[6] = a2;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__PowerUISmartChargeClient_isOBCEngaged_chargeLimit_chargingOverrideAllowed_withError___block_invoke_158;
  v17[3] = &unk_2782D4768;
  v17[6] = &v23;
  v17[7] = &v19;
  v17[4] = self;
  v17[5] = &v33;
  v17[8] = &v27;
  v17[9] = a2;
  [v13 isOBCEngagedOrChargeLimitedWithHandler:v17];

  if (a3)
  {
    *a3 = *(v34 + 24);
  }

  if (a4)
  {
    *a4 = v24[3];
  }

  if (a5)
  {
    *a5 = *(v20 + 24);
  }

  v14 = v28[5];
  if (a6 && v14)
  {
    v14 = v14;
    *a6 = v14;
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v15;
}

void __87__PowerUISmartChargeClient_isOBCEngaged_chargeLimit_chargingOverrideAllowed_withError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v5);
  }
}

void __87__PowerUISmartChargeClient_isOBCEngaged_chargeLimit_chargingOverrideAllowed_withError___block_invoke_158(void *a1, char a2, uint64_t a3, char a4, void *a5)
{
  v9 = a5;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  *(*(a1[7] + 8) + 24) = a4;
  if (v9)
  {
    v10 = *(a1[4] + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145_cold_1(a1, v10);
    }
  }

  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
}

- (void)isOBCEngagedOrChargeLimitedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isOBCEngagedOrChargeLimitedWithHandler:v4];
}

- (BOOL)setCECState:(unint64_t)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__PowerUISmartChargeClient_setCECState_error___block_invoke;
  v16[3] = &unk_2782D4678;
  v16[4] = &v21;
  v16[5] = &v17;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  clientName = self->_clientName;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__PowerUISmartChargeClient_setCECState_error___block_invoke_2;
  v15[3] = &unk_2782D46A0;
  v15[4] = &v21;
  v15[5] = &v17;
  [v8 client:clientName setCECState:a3 withHandler:v15];

  if (a4)
  {
    *a4 = v22[5];
  }

  v10 = [(PowerUISmartChargeClient *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v18 + 24);
    *buf = 67109120;
    v28 = v11;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Returning %d", buf, 8u);
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __46__PowerUISmartChargeClient_setCECState_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __46__PowerUISmartChargeClient_setCECState_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)isCECSupported
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_161_0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PowerUISmartChargeClient_isCECSupported__block_invoke_2;
  v5[3] = &unk_2782D4470;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 isCECSupportedWithHandler:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __42__PowerUISmartChargeClient_isCECSupported__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__PowerUISmartChargeClient_isOBCSupported__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (unint64_t)isCECCurrentlyEnabled:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PowerUISmartChargeClient_isCECCurrentlyEnabled___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PowerUISmartChargeClient_isCECCurrentlyEnabled___block_invoke_2;
  v8[3] = &unk_2782D4498;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 isCECCurrentlyEnabledWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __50__PowerUISmartChargeClient_isCECCurrentlyEnabled___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isCECCurrentlyEnabledWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isCECCurrentlyEnabledWithHandler:v4];
}

- (void)isCECSupportedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isCECSupportedWithHandler:v4];
}

- (void)disableCECWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setCECState:0 withHandler:v5];
}

- (void)temporarilyDisableCECWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setCECState:3 withHandler:v5];
}

- (void)enableCECWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setCECState:1 withHandler:v5];
}

- (id)cecFullChargeDeadline:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__PowerUISmartChargeClient_cecFullChargeDeadline___block_invoke;
  v12[3] = &unk_2782D4560;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = a2;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__PowerUISmartChargeClient_cecFullChargeDeadline___block_invoke_162;
  v11[3] = &unk_2782D4588;
  v11[4] = &v19;
  v11[5] = &v13;
  [v5 cecFullChargeDeadlineWithHandler:v11];

  v6 = v14[5];
  if (v6)
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v8 = v20[5];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v7 = v9;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v7;
}

void __50__PowerUISmartChargeClient_cecFullChargeDeadline___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(a1, v5);
  }
}

void __50__PowerUISmartChargeClient_cecFullChargeDeadline___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)cecFullChargeDeadlineWithHandler:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PowerUISmartChargeClient_cecFullChargeDeadlineWithHandler___block_invoke;
  v8[3] = &unk_2782D45B0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v8];
  [v7 cecFullChargeDeadlineWithHandler:v6];
}

- (BOOL)setMCMState:(unint64_t)a3 error:(id *)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [PowerUISmartChargeClient setMCMState:a3 error:?];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__PowerUISmartChargeClient_setMCMState_error___block_invoke;
  v14[3] = &unk_2782D4678;
  v14[4] = &v19;
  v14[5] = &v15;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  clientName = self->_clientName;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__PowerUISmartChargeClient_setMCMState_error___block_invoke_2;
  v13[3] = &unk_2782D46A0;
  v13[4] = &v19;
  v13[5] = &v15;
  [v9 client:clientName setMCMState:a3 withHandler:v13];

  if (a4)
  {
    *a4 = v20[5];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __46__PowerUISmartChargeClient_setMCMState_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __46__PowerUISmartChargeClient_setMCMState_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)shouldMCMBeDisplayed:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PowerUISmartChargeClient_shouldMCMBeDisplayed___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PowerUISmartChargeClient_shouldMCMBeDisplayed___block_invoke_2;
  v8[3] = &unk_2782D46A0;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 shouldMCMBeDisplayedWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __49__PowerUISmartChargeClient_shouldMCMBeDisplayed___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)shouldMCMBeDisplayedWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 shouldMCMBeDisplayedWithHandler:v4];
}

- (unint64_t)isMCMCurrentlyEnabled:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PowerUISmartChargeClient_isMCMCurrentlyEnabled___block_invoke;
  v9[3] = &unk_2782D40A0;
  v9[4] = &v14;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PowerUISmartChargeClient_isMCMCurrentlyEnabled___block_invoke_2;
  v8[3] = &unk_2782D4498;
  v8[4] = &v14;
  v8[5] = &v10;
  [v5 isMCMCurrentlyEnabledWithHandler:v8];

  if (a3)
  {
    *a3 = v15[5];
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __50__PowerUISmartChargeClient_isMCMCurrentlyEnabled___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isMCMCurrentlyEnabledWithHandler:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 isMCMCurrentlyEnabledWithHandler:v4];
}

- (void)disableMCMWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setMCMState:0 withHandler:v5];
}

- (void)temporarilyDisableMCMWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setMCMState:2 withHandler:v5];
}

- (void)enableMCMWithHandler:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v6 client:self->_clientName setMCMState:1 withHandler:v5];
}

void __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

void __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_163(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_163_cold_1(v2);
    }
  }
}

- (void)resetEngagementOverride
{
  connection = self->_connection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PowerUISmartChargeClient_resetEngagementOverride__block_invoke;
  v6[3] = &unk_2782D4510;
  v6[4] = self;
  v6[5] = a2;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PowerUISmartChargeClient_resetEngagementOverride__block_invoke_165;
  v5[3] = &unk_2782D4790;
  v5[4] = self;
  [v4 resetEngagementOverrideWithHandler:v5];
}

void __51__PowerUISmartChargeClient_resetEngagementOverride__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "%@ Error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__PowerUISmartChargeClient_resetEngagementOverride__block_invoke_165(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Unable to reset override", v3, 2u);
    }
  }
}

void __87__PowerUISmartChargeClient_simulateCurrentOutputAsOfDate_overrideAllSignals_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

void __87__PowerUISmartChargeClient_simulateCurrentOutputAsOfDate_overrideAllSignals_withError___block_invoke_166(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (*(*(a1[6] + 8) + 40))
  {
    v8 = *(a1[4] + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__PowerUISmartChargeClient_simulateCurrentOutputAsOfDate_overrideAllSignals_withError___block_invoke_166_cold_1(a1, v8);
    }
  }
}

- (void)enterDevelopmentMode
{
  connection = self->_connection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PowerUISmartChargeClient_enterDevelopmentMode__block_invoke;
  v4[3] = &unk_2782D4510;
  v4[4] = self;
  v4[5] = a2;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 enterDevelopmentMode];
}

void __48__PowerUISmartChargeClient_enterDevelopmentMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

- (void)resetDevelopmentMode
{
  connection = self->_connection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PowerUISmartChargeClient_resetDevelopmentMode__block_invoke;
  v4[3] = &unk_2782D4510;
  v4[4] = self;
  v4[5] = a2;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 resetDevelopmentMode];
}

void __48__PowerUISmartChargeClient_resetDevelopmentMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

- (id)lastUsedLeewayWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__PowerUISmartChargeClient_lastUsedLeewayWithError___block_invoke;
  v11[3] = &unk_2782D4510;
  v11[4] = self;
  v11[5] = a2;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PowerUISmartChargeClient_lastUsedLeewayWithError___block_invoke_167;
  v10[3] = &unk_2782D47E0;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  v10[7] = a2;
  [v7 currentLeewayWithHandler:v10];

  if (a3)
  {
    *a3 = v13[5];
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __52__PowerUISmartChargeClient_lastUsedLeewayWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

void __52__PowerUISmartChargeClient_lastUsedLeewayWithError___block_invoke_167(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (*(*(a1[6] + 8) + 40))
  {
    v8 = *(a1[4] + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__PowerUISmartChargeClient_simulateCurrentOutputAsOfDate_overrideAllSignals_withError___block_invoke_166_cold_1(a1, v8);
    }
  }
}

- (void)listMonitorSignals
{
  connection = self->_connection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__PowerUISmartChargeClient_listMonitorSignals__block_invoke;
  v4[3] = &unk_2782D4510;
  v4[4] = self;
  v4[5] = a2;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v4];
  [v3 listMonitorSignals];
}

void __46__PowerUISmartChargeClient_listMonitorSignals__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(a1, v4);
  }
}

void __42__PowerUISmartChargeClient_isOBCSupported__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__PowerUISmartChargeClient_fullChargeDeadline___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1, a2);
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v6, v7, "%@ Error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __95__PowerUISmartChargeClient_smartChargingUIState_chargeLimit_chargingOverrideAllowed_withError___block_invoke_145_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = NSStringFromSelector(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v7, v8, "%@ Error: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __42__PowerUISmartChargeClient_isMCLSupported__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining MCL status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__PowerUISmartChargeClient_currentRecommendedChargeLimitWithError___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining recommended limit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__PowerUISmartChargeClient_isDEoCSupported__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining DEoC status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__PowerUISmartChargeClient_currentChargeLimit___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining DEoC limit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__PowerUISmartChargeClient_getDEoCPredictions___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error obtaining predictions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMCMState:(void *)a1 error:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v4, OS_LOG_TYPE_ERROR, "trying to set MCM state: %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __76__PowerUISmartChargeClient_engageFrom_until_repeatUntil_overrideAllSignals___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(a1, a2);
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v6, v7, "%@ Error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __87__PowerUISmartChargeClient_simulateCurrentOutputAsOfDate_overrideAllSignals_withError___block_invoke_166_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3_1();
  v6 = NSStringFromSelector(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v7, v8, "%@ Error: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end