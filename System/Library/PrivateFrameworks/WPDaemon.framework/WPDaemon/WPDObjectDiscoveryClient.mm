@interface WPDObjectDiscoveryClient
- (WPDObjectDiscoveryClient)initWithXPCConnection:(id)a3 server:(id)a4;
- (WPDObjectDiscoveryManager)objectDiscoveryManager;
- (void)dealloc;
- (void)destroy;
- (void)endTestMode;
- (void)generateStateDump;
- (void)notifyClientObjectDiscoveryStateChange:(int64_t)a3;
- (void)registerWithDaemon:(id)a3 forProcess:(id)a4 machName:(id)a5 holdVouchers:(int64_t)a6;
- (void)sendTestRequest:(id)a3;
- (void)startAdvertising:(id)a3;
- (void)startSPBeaconing;
- (void)stopAdvertising:(id)a3;
- (void)stopSPBeaconing;
- (void)updateSPBeaconing;
- (void)updateSPNearbyTokens;
@end

@implementation WPDObjectDiscoveryClient

- (WPDObjectDiscoveryClient)initWithXPCConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = WPDObjectDiscoveryClient;
  v8 = [(WPDClient *)&v25 initWithXPCConnection:0 server:v7];
  v9 = v8;
  if (v8)
  {
    v8->_pendingSent = 0;
    v10 = objc_opt_new();
    keyAddressAndPayload = v9->_keyAddressAndPayload;
    v9->_keyAddressAndPayload = v10;

    spAgent = v9->_spAgent;
    v9->_spAgent = 0;

    testBeaconingInterval = v9->_testBeaconingInterval;
    v9->_testBeaconingInterval = 0;

    if (objc_opt_class())
    {
      objc_initWeak(location, v9);
      v14 = [WPDSearchPartyAgent alloc];
      v15 = [(WPDClient *)v9 serverQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke;
      v22[3] = &unk_279E59530;
      objc_copyWeak(&v23, location);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_152;
      v20[3] = &unk_279E59530;
      objc_copyWeak(&v21, location);
      v16 = [(WPDSearchPartyAgent *)v14 initWithQueue:v15 beaconChange:v22 tokensChange:v20];
      v17 = v9->_spAgent;
      v9->_spAgent = v16;

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDObjectDiscoveryClient initWithXPCConnection:server:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "WPDObjectDiscoveryClient SPOwner framework not found, beaconing is disabled", location, 2u);
      }
    }
  }

  return v9;
}

void __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_cold_2();
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else if (!a2)
    {
LABEL_7:
      [WeakRetained updateSPBeaconing];
      goto LABEL_8;
    }

    [WeakRetained setKeyRequestID:a2];
    goto LABEL_7;
  }

LABEL_8:
}

void __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_152(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WPLogInitOnce != -1)
    {
      __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_152_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_152_cold_2();
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else if (!a2)
    {
LABEL_7:
      [WeakRetained updateSPNearbyTokens];
      goto LABEL_8;
    }

    [WeakRetained setTokenRequestID:a2];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(WPDClient *)self clientUUID];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "Deallocing WPDObjectDiscoveryClient %@", buf, 0xCu);
  }

  [(WPDObjectDiscoveryClient *)self setSpAgent:0];
  v7.receiver = self;
  v7.super_class = WPDObjectDiscoveryClient;
  [(WPDClient *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateStateDump
{
  v16 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient generateStateDump];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(WPDClient *)self clientTypeString];
    v6 = [(WPDClient *)self clientUUID];
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: ========= %@ %@ =========", &v12, 0x16u);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient generateStateDump];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(WPDObjectDiscoveryClient *)self keyAddressAndPayload];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: beacon buffer %@", &v12, 0xCu);
  }

  v10 = [(WPDObjectDiscoveryClient *)self spAgent];
  [v10 generateStateDump];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)endTestMode
{
  v12 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient endTestMode];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(WPDClient *)self clientUUID];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "Ending test mode WPDObjectDiscoveryClient %@", buf, 0xCu);
  }

  v6 = [(WPDObjectDiscoveryClient *)self spAgent];

  if (v6)
  {
    v7 = [(WPDObjectDiscoveryClient *)self spAgent];
    [v7 stopTest];
  }

  v9.receiver = self;
  v9.super_class = WPDObjectDiscoveryClient;
  [(WPDClient *)&v9 endTestMode];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerWithDaemon:(id)a3 forProcess:(id)a4 machName:(id)a5 holdVouchers:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = WPDObjectDiscoveryClient;
  [(WPDClient *)&v21 registerWithDaemon:v10 forProcess:v11 machName:v12 holdVouchers:a6];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __80__WPDObjectDiscoveryClient_registerWithDaemon_forProcess_machName_holdVouchers___block_invoke;
  v18 = &unk_279E59208;
  objc_copyWeak(&v19, &location);
  v13 = MEMORY[0x2743D14E0](&v15);
  v14 = [(WPDClient *)self server:v15];
  [v14 registerClient:self withMachName:v12 withCompletion:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __80__WPDObjectDiscoveryClient_registerWithDaemon_forProcess_machName_holdVouchers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRegistered:1];
    [v8 setObjectDiscoveryManager:v9];
    [v8 sendRegisteredWithDaemonAndContinuingSession:0];
  }
}

- (void)destroy
{
  v18 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient destroy];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(WPDClient *)self clientUUID];
    v6 = [(WPDClient *)self processName];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 1024;
    v17 = [(WPDClient *)self processID];
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Removing WPDObjectDiscoveryClient %{public}@ of process %{public}@ (%d)", &v12, 0x1Cu);
  }

  if ([(WPDClient *)self registered])
  {
    v7 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];
    v8 = [(WPDClient *)self clientUUID];
    [v7 removeAdvertisingRequestsForClient:v8];

    v9 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];
    [v9 updateNearbyTokens:0];
  }

  v10 = [(WPDClient *)self server];
  [v10 removeClient:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateSPNearbyTokens
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateSPBeaconing
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 spAgent];
  if ([v4 beaconState])
  {
    v5 = "ON";
  }

  else
  {
    v5 = "OFF";
  }

  v6 = [a2 objectDiscoveryManager];
  v9 = 136315650;
  v10 = "[WPDObjectDiscoveryClient updateSPBeaconing]";
  if ([v6 state] == 3)
  {
    v7 = "ON";
  }

  else
  {
    v7 = "OFF";
  }

  v11 = 2080;
  v12 = v5;
  v13 = 2080;
  v14 = v7;
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "%s spAgent.beaconState: %s objectDiscoveryManager.state: %s", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startSPBeaconing
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSPBeaconing
{
  v4 = [WPAdvertisingRequest requestForClientType:18];
  [(WPDObjectDiscoveryClient *)self stopAdvertising:v4];
  v3 = [(WPDObjectDiscoveryClient *)self keyAddressAndPayload];
  [v3 wipeout];
}

- (void)startAdvertising:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  v5 = [v4 clientType];
  if (![(WPDClient *)self registered])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient startAdvertising:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDObjectDiscoveryClient *)v15 startAdvertising:?];
    }

    v16 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"The client is currently not registered with the daemon";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v18 = v16;
    v19 = 2;
    goto LABEL_27;
  }

  v6 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];

  if (!v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient startAdvertising:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryClient updateSPNearbyTokens];
    }

    v20 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"WPDObjectDiscovery manager is nil";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v18 = v20;
    v19 = 26;
LABEL_27:
    v12 = [v18 errorWithDomain:@"WPErrorDomain" code:v19 userInfo:v17];

    if (v12)
    {
      v14 = 1;
      goto LABEL_29;
    }

    v21 = 0;
LABEL_37:
    [(WPDObjectDiscoveryClient *)self completeSPBeaconingWithSuccess:v21];
    goto LABEL_38;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(WPDClient *)self processName];
    v23 = 138544386;
    v24 = v9;
    v25 = 1024;
    v26 = [(WPDClient *)self processID];
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = [v4 advertisingRate];
    v31 = 2048;
    v32 = [v4 advertisingRate] * 0.625;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Start advertising for process %{public}@ (%d) of type %ld with advertising interval %ld (%.2f ms)", &v23, 0x30u);
  }

  v10 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];
  v11 = [(WPDClient *)self clientUUID];
  v12 = [v10 addAdvertisingRequest:v4 forClient:v11];

  if (!v12)
  {
    v21 = 1;
    goto LABEL_37;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient stopAdvertising_async:v13];
  }

  v14 = 0;
LABEL_29:
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDObjectDiscoveryClient startAdvertising:];
  }

  [(WPDClient *)self advertisingFailedToStart:v12 ofType:v5];
  [(WPDObjectDiscoveryClient *)self setPendingSent:0];
  v21 = 0;
  if (v14)
  {
    goto LABEL_37;
  }

LABEL_38:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient stopAdvertising:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryClient stopAdvertising:];
  }

  if (![(WPDClient *)self registered])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient stopAdvertising:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDObjectDiscoveryClient *)v14 stopAdvertising:?];
    }

    v15 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"The client is currently not registered with the daemon";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = v15;
    v18 = 2;
    goto LABEL_26;
  }

  v5 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];

  if (!v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient stopAdvertising:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDObjectDiscoveryClient updateSPNearbyTokens];
    }

    v19 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"ObjectDiscovery manager is nil ";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v17 = v19;
    v18 = 26;
LABEL_26:
    v12 = [v17 errorWithDomain:@"WPErrorDomain" code:v18 userInfo:v16];

    v20 = 0;
LABEL_27:
    [(WPDObjectDiscoveryClient *)self completeSPBeaconingWithSuccess:v20];
    goto LABEL_28;
  }

  v6 = [v4 clientType];
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient stopAdvertising:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(WPDClient *)self processName];
    v24 = 138543874;
    v25 = v9;
    v26 = 1024;
    v27 = [(WPDClient *)self processID];
    v28 = 2048;
    v29 = v6;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Stop advertising for process %{public}@ (%d) of type %ld", &v24, 0x1Cu);
  }

  v10 = [(WPDObjectDiscoveryClient *)self objectDiscoveryManager];
  v11 = [(WPDClient *)self clientUUID];
  v12 = [v10 removeAdvertisingRequest:v4 forClient:v11];

  if (!v12)
  {
    v22 = [(WPDClient *)self conn];
    v23 = [v22 remoteObjectProxy];
    [v23 advertisingStoppedOfType:objc_msgSend(v4 withError:{"clientType"), 0}];

    [(WPDObjectDiscoveryClient *)self setPendingSent:0];
    v12 = 0;
    v20 = 1;
    goto LABEL_27;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient stopAdvertising:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDClient stopAdvertising_async:v13];
  }

LABEL_28:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientObjectDiscoveryStateChange:(int64_t)a3
{
  if (notifyClientObjectDiscoveryStateChange__state != a3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient notifyClientObjectDiscoveryStateChange:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDObjectDiscoveryClient notifyClientObjectDiscoveryStateChange:];
    }

    notifyClientObjectDiscoveryStateChange__state = a3;
    objc_initWeak(&location, self);
    v5 = [(WPDClient *)self serverQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__WPDObjectDiscoveryClient_notifyClientObjectDiscoveryStateChange___block_invoke_253;
    v6[3] = &unk_279E58EE8;
    objc_copyWeak(&v7, &location);
    dispatch_async(v5, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __67__WPDObjectDiscoveryClient_notifyClientObjectDiscoveryStateChange___block_invoke_253(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateSPBeaconing];
    [v2 updateSPNearbyTokens];
    WeakRetained = v2;
  }
}

- (void)sendTestRequest:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient sendTestRequest:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDObjectDiscoveryClient *)v4 sendTestRequest:v5, self];
  }

  v6 = [v4 objectForKeyedSubscript:@"kWPTestRequestKeyID"];
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v8 = [v6 integerValue];
  v9 = v8;
  if (v8 <= 4)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        [(WPDClient *)self setIsTestModeClient:1];
        v17 = [(WPDObjectDiscoveryClient *)self spAgent];
        [v17 startTest];

        goto LABEL_41;
      }

      if (v8 == 2)
      {
        [(WPDClient *)self setIsTestModeClient:0];
        v10 = [(WPDObjectDiscoveryClient *)self spAgent];
        [v10 stopTest];

        [(WPDObjectDiscoveryClient *)self setTestBeaconingInterval:0];
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    if (v8 == 3)
    {
      v18 = [v4 objectForKeyedSubscript:@"kWPTestBeaconKeysKey"];
      if (v18)
      {
        v12 = v18;
      }

      else
      {
        v12 = MEMORY[0x277CBEBF8];
      }

      v13 = [(WPDObjectDiscoveryClient *)self spAgent];
      [v13 updateTestBeaconKeys:v12];
    }

    else
    {
      v14 = [v4 objectForKeyedSubscript:@"kWPTestNearOwnerTokensKey"];
      if (v14)
      {
        v12 = v14;
      }

      else
      {
        v12 = MEMORY[0x277CBEBF8];
      }

      v13 = [(WPDObjectDiscoveryClient *)self spAgent];
      [v13 updateTestNearOwnerTokens:v12];
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v8 <= 6)
  {
    if (v8 == 5)
    {
      v12 = [v4 objectForKeyedSubscript:@"kWPTestBeaconStatusKey"];
      v13 = [(WPDObjectDiscoveryClient *)self spAgent];
      [v13 updateTestBeaconStatus:v12];
    }

    else
    {
      v12 = [v4 objectForKeyedSubscript:@"kWPTestBeaconExtendedKey"];
      v13 = [(WPDObjectDiscoveryClient *)self spAgent];
      [v13 updateTestBeaconExtended:v12];
    }

    goto LABEL_40;
  }

  if (v8 == 7)
  {
    v19 = [v4 objectForKeyedSubscript:@"kWPTestBeaconStateKey"];
    if (v19)
    {
      v12 = v19;
    }

    else
    {
      v12 = MEMORY[0x277CBEC28];
    }

    v13 = [(WPDObjectDiscoveryClient *)self spAgent];
    [v13 updateTestBeaconState:v12];
    goto LABEL_40;
  }

  if (v8 != 8)
  {
LABEL_12:
    if (WPLogInitOnce != -1)
    {
      [WPDObjectDiscoveryClient sendTestRequest:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDObjectDiscoveryClient *)v11 sendTestRequest:v9];
    }

    goto LABEL_41;
  }

  v15 = [v4 objectForKeyedSubscript:@"kWPTestBeaconIntervalKey"];
  [(WPDObjectDiscoveryClient *)self setTestBeaconingInterval:v15];

  if (WPLogInitOnce != -1)
  {
    [WPDObjectDiscoveryClient sendTestRequest:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDObjectDiscoveryClient *)v16 sendTestRequest:?];
  }

LABEL_41:
}

- (WPDObjectDiscoveryManager)objectDiscoveryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_objectDiscoveryManager);

  return WeakRetained;
}

void __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__WPDObjectDiscoveryClient_initWithXPCConnection_server___block_invoke_152_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)completeSPNearbyTockensWithSuccess:(void *)a1 .cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 tokenRequestID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeSPBeaconingWithSuccess:(void *)a1 .cold.2(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 keyRequestID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(void *)a1 .cold.4(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(void *)a1 .cold.4(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_9() processID];
  v5 = [a2 clientUUID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientObjectDiscoveryStateChange:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendTestRequest:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 clientUUID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendTestRequest:(void *)a1 .cold.4(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_9() testBeaconingInterval];
  v6 = [a2 clientUUID];
  v8 = 138412546;
  v9 = v5;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_272965000, v2, OS_LOG_TYPE_DEBUG, "Requested custom beaconing interval %@ ms for test client %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendTestRequest:(uint64_t)a3 .cold.6(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 clientUUID];
  v8 = 134218242;
  v9 = a3;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_272965000, v5, OS_LOG_TYPE_ERROR, "Bad send test request %ld for client %@, dropping on the floor", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end