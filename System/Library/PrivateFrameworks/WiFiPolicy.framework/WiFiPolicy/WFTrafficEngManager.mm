@interface WFTrafficEngManager
- (BOOL)__configureRapportDiscoveryClient;
- (WFTrafficEngManager)initWithTrafficEngDelegate:(id)delegate;
- (id)__collectCriticalAppInfo;
- (void)__activateDiscovery;
- (void)__configureRapportSessionClient:(id)client;
- (void)__invalidateDiscovery;
- (void)__invalidateSession;
- (void)__registerCallbacksAndActivate;
- (void)__registerRequestHandler;
- (void)__requestCriticalAppInfo:(id)info completionBlock:(id)block;
- (void)__sendEventToPeers;
- (void)__sendPeriodicEvent:(id)event;
- (void)cleanup;
- (void)dealloc;
@end

@implementation WFTrafficEngManager

- (WFTrafficEngManager)initWithTrafficEngDelegate:(id)delegate
{
  v21 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = WFTrafficEngManager;
  v5 = [(WFTrafficEngManager *)&v19 init];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String = [v7 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (!v5)
  {
    [WFTrafficEngManager initWithTrafficEngDelegate:buf];
LABEL_18:
    v11 = *buf;
    goto LABEL_12;
  }

  v9 = dispatch_queue_create("com.apple.wifi.trafficEngineering", 0);
  traffic_engr_queue = v5->_traffic_engr_queue;
  v5->_traffic_engr_queue = v9;

  if (!v5->_traffic_engr_queue)
  {
    [WFTrafficEngManager initWithTrafficEngDelegate:buf];
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(WFTrafficEngManager *)v5 setTrafficEngDelegate:delegateCopy];
    goto LABEL_13;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Invalid trafficEngDelegate", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    uTF8String2 = [v12 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

LABEL_12:

  v5 = 0;
LABEL_13:
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v14, "UTF8String")];
    uTF8String3 = [v15 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager dealloc]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  traffic_engr_queue = self->_traffic_engr_queue;
  if (traffic_engr_queue)
  {
    self->_traffic_engr_queue = 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager dealloc]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = WFTrafficEngManager;
  [(WFTrafficEngManager *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)__configureRapportDiscoveryClient
{
  v50 = *MEMORY[0x277D85DE8];
  self->_configured = 0;
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = v3;
    v8 = [v6 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    v9 = v8;
    uTF8String = [v8 UTF8String];
    *buf = 136446210;
    v49 = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session Started", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v12 = MEMORY[0x277D86220];
  v13 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v11;
    v16 = [v14 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    v17 = v16;
    uTF8String2 = [v16 UTF8String];
    *buf = 136446210;
    v49 = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  if (objc_opt_class())
  {
    v19 = objc_alloc_init(MEMORY[0x277D44158]);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v19;
  }

  v21 = self->_discoveryClient;
  if (v21)
  {
    [(RPCompanionLinkClient *)v21 setDispatchQueue:self->_traffic_engr_queue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke;
    v45[3] = &unk_2789C68F8;
    objc_copyWeak(&v46, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setInvalidationHandler:v45];
    [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:[(RPCompanionLinkClient *)self->_discoveryClient controlFlags]| 0x801006];
    [(RPCompanionLinkClient *)self->_discoveryClient setTargetUserSession:1];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_41;
    v43[3] = &unk_2789C7808;
    objc_copyWeak(&v44, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:v43];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_46;
    v41[3] = &unk_2789C7808;
    objc_copyWeak(&v42, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:v41];
    [(WFTrafficEngManager *)self __activateDiscovery];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session Ended", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = v22;
      v27 = [v25 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v22, "UTF8String")];
      v28 = v27;
      uTF8String3 = [v27 UTF8String];
      *buf = 136446210;
      v49 = uTF8String3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    self->_configured = 1;
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
  }

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v31 = MEMORY[0x277D86220];
  v32 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = v30;
    v35 = [v33 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v30, "UTF8String")];
    v36 = v35;
    uTF8String4 = [v35 UTF8String];
    *buf = 136446210;
    v49 = uTF8String4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  configured = self->_configured;
  objc_destroyWeak(&location);
  v39 = *MEMORY[0x277D85DE8];
  return configured;
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session invalidated", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    v7 = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __invalidateDiscovery];

  v5 = *MEMORY[0x277D85DE8];
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_41(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%s Rapport discovery session found device:%@", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke", v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    *buf = 136446210;
    v10 = [v6 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __configureRapportSessionClient:v4];

  v8 = *MEMORY[0x277D85DE8];
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_46(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session lost device:%@", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke", a2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    v8 = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __tearDownRapportDataSession];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)__activateDiscovery
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __activateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(WFTrafficEngManager *)self __registerCallbacksAndActivate];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __activateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    uTF8String2 = [v6 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)__registerCallbacksAndActivate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __registerCallbacksAndActivate]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  traffic_engr_queue = self->_traffic_engr_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(traffic_engr_queue, block);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __registerCallbacksAndActivate]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) __registerRequestHandler];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_2;
  v5[3] = &unk_2789C73D0;
  v5[4] = v2;
  return [v3 activateWithCompletion:v5];
}

void __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Activation of rapport disovery client failed, error: %@", "-[WFTrafficEngManager __registerCallbacksAndActivate]_block_invoke_2", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
      *buf = 136446210;
      v9 = [v3 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_56;
    v7[3] = &unk_2789C7830;
    v7[4] = v4;
    [v5 registerEventID:@"com.apple.wifi.trafficeng.event" options:0 handler:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_56(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) trafficEngDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) trafficEngDelegate];
    [v5 handleCriticalAppEvent:v6];
  }
}

- (void)__registerRequestHandler
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __registerRequestHandler]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  discoveryClient = self->_discoveryClient;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WFTrafficEngManager___registerRequestHandler__block_invoke;
  v10[3] = &unk_2789C7858;
  v10[4] = self;
  [(RPCompanionLinkClient *)discoveryClient registerRequestID:@"com.apple.wifi.trafficEngineering" options:0 handler:v10];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __registerRequestHandler]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__WFTrafficEngManager___registerRequestHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v5 = [*(a1 + 32) trafficEngDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) trafficEngDelegate];
    v8 = [v7 retrieveCurrentLinkHealth];

    (*(v9 + 2))(v9, v8, 0, 0);
  }
}

- (void)__invalidateDiscovery
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __invalidateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(WFTrafficEngManager *)self __tearDownRapportDataSession];
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  self->_configured = 0;
  [(WFTrafficEngManager *)self cleanup];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __invalidateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager cleanup]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager cleanup]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)__configureRapportSessionClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __configureRapportSessionClient:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __configureRapportSessionClient:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    uTF8String2 = [v6 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)__invalidateSession
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __invalidateSession]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __invalidateSession]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v4, "UTF8String")];
    uTF8String2 = [v5 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)__sendEventToPeers
{
  v14 = *MEMORY[0x277D85DE8];
  trafficEngDelegate = [(WFTrafficEngManager *)self trafficEngDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    trafficEngDelegate2 = [(WFTrafficEngManager *)self trafficEngDelegate];
    retrieveEventDetails = [trafficEngDelegate2 retrieveEventDetails];

    if (retrieveEventDetails)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = retrieveEventDetails;
      v9 = [v7 stringWithFormat:@"[TrafficEngineering]: EventData %@", v8];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v9, "UTF8String")];
        *buf = 136446210;
        uTF8String = [v10 UTF8String];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
      }

      [(WFTrafficEngManager *)self __sendPeriodicEvent:v8];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)__sendPeriodicEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v6 = [activeDevices count];

  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    activeDevices2 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v8 = [activeDevices2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(activeDevices2);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          traffic_engr_queue = self->_traffic_engr_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__WFTrafficEngManager___sendPeriodicEvent___block_invoke;
          block[3] = &unk_2789C6C70;
          block[4] = self;
          block[5] = v12;
          v16 = eventCopy;
          dispatch_async(traffic_engr_queue, block);

          ++v11;
        }

        while (v9 != v11);
        v9 = [activeDevices2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [WFTrafficEngManager __sendPeriodicEvent:?];
    activeDevices2 = v21;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__WFTrafficEngManager___sendKeepAliveEvent_dictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[TrafficEngineering]: Failed to send event %@", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
      *buf = 136446210;
      v6 = [v3 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)__requestCriticalAppInfo:(id)info completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  blockCopy = block;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v7, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v8 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (objc_opt_class())
  {
    v9 = objc_alloc_init(MEMORY[0x277D44158]);
    v10 = v9;
    if (v9)
    {
      [v9 setControlFlags:{objc_msgSend(v9, "controlFlags") | 0x1004}];
      [v10 setDestinationDevice:infoCopy];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke;
      v21[3] = &unk_2789C6630;
      v22 = infoCopy;
      [v10 setInvalidationHandler:v21];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_72;
      v18 = &unk_2789C78A8;
      v20 = blockCopy;
      v10 = v10;
      v19 = v10;
      [v10 activateWithCompletion:&v15];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]", v15, v16, v17, v18];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    uTF8String2 = [v12 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session client with device %@ invalidated", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]_block_invoke", *(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v1, "UTF8String")];
    *buf = 136446210;
    v5 = [v2 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_72(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session client falied to activate, error: %@", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]_block_invoke", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
      *buf = 136446210;
      v13 = [v4 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *MEMORY[0x277D44258];
    v11 = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_77;
    v8[3] = &unk_2789C7880;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 sendRequestID:@"com.apple.wifi.trafficEngineering" request:MEMORY[0x277CBEC10] options:v5 responseHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)__collectCriticalAppInfo
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __collectCriticalAppInfo]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  group = dispatch_group_create();
  v4 = MEMORY[0x277CCACA8];
  activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v6 = [v4 stringWithFormat:@"Number of Peers %lu", objc_msgSend(activeDevices, "count")];

  v7 = MEMORY[0x277D86220];
  v8 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = v6;
    v11 = [v9 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    v12 = v11;
    uTF8String2 = [v11 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  activeDevices2 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v15 = [activeDevices2 count] == 0;

  if (v15)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"No active clients, Returning"];
    v52 = MEMORY[0x277D86220];
    v53 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v54 = MEMORY[0x277CCACA8];
      v55 = v31;
      v56 = [v54 stringWithFormat:@"[WiFiPolicy] %s", -[NSObject UTF8String](v31, "UTF8String")];
      v57 = v56;
      uTF8String3 = [v56 UTF8String];
      *buf = 136446210;
      uTF8String = uTF8String3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    activeDevices3 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v17 = [activeDevices3 countByEnumeratingWithState:&v67 objects:v91 count:16];
    if (v17)
    {
      v59 = 0;
      v18 = *v68;
      do
      {
        v19 = 0;
        v59 += v17;
        do
        {
          if (*v68 != v18)
          {
            objc_enumerationMutation(activeDevices3);
          }

          v20 = *(*(&v67 + 1) + 8 * v19);
          dispatch_group_enter(group);
          traffic_engr_queue = self->_traffic_engr_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke;
          block[3] = &unk_2789C78F8;
          block[4] = self;
          block[5] = v20;
          v66 = &v71;
          v64 = v61;
          v65 = group;
          dispatch_async(traffic_engr_queue, block);

          ++v19;
        }

        while (v17 != v19);
        v17 = [activeDevices3 countByEnumeratingWithState:&v67 objects:v91 count:16];
      }

      while (v17);
    }

    else
    {
      v59 = 0;
    }

    v22 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(group, v22))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d Sec timeout waiting for Critical App Info from peers", 60];
      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = v23;
        v28 = [v26 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v23, "UTF8String")];
        v29 = v28;
        uTF8String4 = [v28 UTF8String];
        *buf = 136446210;
        uTF8String = uTF8String4;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
      }
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/WiFiPolicy/frameworks/Sources/TrafficEngineering/WFTrafficEngManager.m"];
      lastPathComponent = [v33 lastPathComponent];
      v35 = lastPathComponent;
      uTF8String5 = [lastPathComponent UTF8String];
      activeDevices4 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
      v38 = [activeDevices4 count];
      v39 = v72[3];
      *buf = 141559810;
      uTF8String = 1752392040;
      v77 = 2080;
      v78 = uTF8String5;
      v79 = 2160;
      v80 = 1752392040;
      v81 = 1024;
      v82 = 384;
      v83 = 2048;
      v84 = v38;
      v85 = 2048;
      v86 = v59;
      v87 = 2048;
      v88 = v39;
      v89 = 2112;
      v90 = v61;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[TrafficEngineering] (%{mask.hash}s:%{mask.hash}d) active peers %lu, requested peers %lu,  responses %lu, diagnostics log %@", buf, 0x4Eu);

      v31 = MEMORY[0x277D86220];
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = [v61 copy];
  objc_sync_exit(selfCopy);

  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __collectCriticalAppInfo]"];
  v43 = MEMORY[0x277D86220];
  v44 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = v42;
    v47 = [v45 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v42, "UTF8String")];
    v48 = v47;
    uTF8String6 = [v47 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  _Block_object_dispose(&v71, 8);
  v50 = *MEMORY[0x277D85DE8];

  return v41;
}

void __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke_2;
  v9[3] = &unk_2789C78D0;
  v12 = *(a1 + 64);
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v3 __requestCriticalAppInfo:v2 completionBlock:v9];
}

void __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 40) addObject:v3];
    v5 = [*(a1 + 40) count];
    objc_sync_exit(v4);

    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 48) model];
    v8 = [v6 stringWithFormat:@"%s Response from peer %@: %@, total responses %lu", "-[WFTrafficEngManager __collectCriticalAppInfo]_block_invoke_2", v7, v3, v5];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v8, "UTF8String")];
      *buf = 136446210;
      v12 = [v9 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 56));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithTrafficEngDelegate:(void *)a1 .cold.1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Dispatch Queue Creation Failed", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(v1 + 3240);
    v13 = [v4 UTF8String];
    v6 = [v5 stringWithFormat:@"[WiFiPolicy] %s"];
    [v6 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v7, "%{public}s", v8, v9, v10, v11, v13, v14, 2u);
  }

  *a1 = v4;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithTrafficEngDelegate:(void *)a1 .cold.2(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s self alloc failed", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(v1 + 3240);
    v13 = [v4 UTF8String];
    v6 = [v5 stringWithFormat:@"[WiFiPolicy] %s"];
    [v6 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v7, "%{public}s", v8, v9, v10, v11, v13, v14, 2u);
  }

  *a1 = v4;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)__sendPeriodicEvent:(void *)a1 .cold.1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"No active clients, Returning"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(v1 + 3240);
    v13 = [v4 UTF8String];
    v6 = [v5 stringWithFormat:@"[WiFiPolicy] %s"];
    [v6 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v7, "%{public}s", v8, v9, v10, v11, v13, v14, 2u);
  }

  *a1 = v4;
  v12 = *MEMORY[0x277D85DE8];
}

@end