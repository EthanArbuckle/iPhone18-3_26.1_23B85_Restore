@interface BonjourProbe
- (BOOL)loadBonjourSymbols;
- (BonjourProbe)initWithQueue:(id)a3;
- (void)cancelTest:(id)a3;
- (void)dnsResolver:(id)a3 encounteredDNSError:(int)a4;
- (void)startBonjourScanForService:(id)a3 onInterfaceNamed:(id)a4;
- (void)stopAllResolvers;
- (void)stopTest;
@end

@implementation BonjourProbe

- (BonjourProbe)initWithQueue:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BonjourProbe;
  v5 = [(TestProbe *)&v26 initWithQueue:v4];
  v6 = v5;
  if (v5)
  {
    if ([(BonjourProbe *)v5 loadBonjourSymbols])
    {
      Func = gBonjourBrowserCreateFunc(&v6->bonjourManagerRef, "NDFBonjourProbe");
      if (!Func)
      {
        objc_initWeak(&buf, v6);
        v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
        v11 = dispatch_queue_create("com.apple.symptoms.ndfES.bonjour.queue", v10);
        scanQueue = v6->_scanQueue;
        v6->_scanQueue = v11;

        gBonjourBrowserSetDispatchQueueFunc(v6->bonjourManagerRef, v6->_scanQueue);
        v13 = gBonjourBrowserSetEventHandlerFunc;
        bonjourManagerRef = v6->bonjourManagerRef;
        v15 = objc_loadWeakRetained(&buf);
        v13(bonjourManagerRef, browserCallBack, v15);

        v16 = [MEMORY[0x277CBEB38] dictionary];
        allDiscoveredServices = v6->_allDiscoveredServices;
        v6->_allDiscoveredServices = v16;

        v18 = [MEMORY[0x277CBEB38] dictionary];
        currentlyDiscoveredServices = v6->_currentlyDiscoveredServices;
        v6->_currentlyDiscoveredServices = v18;

        v20 = [MEMORY[0x277CBEB38] dictionary];
        resolvers = v6->_resolvers;
        v6->_resolvers = v20;

        if (!DNSServiceCreateConnection(&v6->_dnsRef))
        {
          v22 = DNSServiceSetDispatchQueue(v6->_dnsRef, v6->_scanQueue);
          if (!v22)
          {
            v6->_bonjourBrowserTimerDuration = 30.0;

            objc_destroyWeak(&buf);
            goto LABEL_17;
          }

          v23 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v27 = 67109120;
            v28 = v22;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "DNSServiceSetDispatchQueue failed: %d", v27, 8u);
          }

          DNSServiceRefDeallocate(v6->_dnsRef);
          v6->_dnsRef = 0;
        }

        objc_destroyWeak(&buf);
        goto LABEL_16;
      }

      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = Func;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "BonjourBrowser_Create() failed %d", &buf, 8u);
      }
    }

    else
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "loadCoreUtils failed", &buf, 2u);
      }
    }

LABEL_16:
    v6 = 0;
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)loadBonjourSymbols
{
  if (loadBonjourSymbols_symbolLoadOnce != -1)
  {
    [BonjourProbe loadBonjourSymbols];
  }

  return loadBonjourSymbols_loadedCU;
}

void __34__BonjourProbe_loadBonjourSymbols__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = +[TestProbe loadCoreUtils];
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "BonjourBrowser_Create");
    v3 = v2 != 0;
    if (v2)
    {
      gBonjourBrowserCreateFunc = v2;
    }

    else
    {
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to load BonjourBrowser_Create() in CoreUtils framework.", &v16, 2u);
      }
    }

    v7 = dlsym(v1, "BonjourBrowser_SetDispatchQueue");
    if (v7)
    {
      gBonjourBrowserSetDispatchQueueFunc = v7;
    }

    else
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to load BonjourBrowser_SetDispatchQueue() in CoreUtils framework.", &v16, 2u);
      }

      v3 = 0;
    }

    v9 = dlsym(v1, "BonjourBrowser_SetEventHandler");
    if (v9)
    {
      gBonjourBrowserSetEventHandlerFunc = v9;
    }

    else
    {
      v10 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Failed to load BonjourBrowser_SetEventHandler() in CoreUtils framework.", &v16, 2u);
      }

      v3 = 0;
    }

    v11 = dlsym(v1, "BonjourBrowser_Start");
    if (v11)
    {
      gBonjourBrowserStartFunc = v11;
    }

    else
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Failed to load BonjourBrowser_Start() in CoreUtils framework.", &v16, 2u);
      }

      v3 = 0;
    }

    v13 = dlsym(v1, "BonjourBrowser_Stop");
    if (v13)
    {
      gBonjourBrowserStopFunc = v13;
    }

    else
    {
      v14 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to load BonjourBrowser_Stop() in CoreUtils framework.", &v16, 2u);
      }

      v3 = 0;
    }

    dlclose(v1);
    loadBonjourSymbols_loadedCU = v3;
  }

  else
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v16 = 136315138;
      v17 = dlerror();
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CoreUtils failed to load due to %s\n", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startBonjourScanForService:(id)a3 onInterfaceNamed:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_includeAWDL)
  {
    v7 = 0x400000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = [a3 UTF8String];
  v16 = v6;
  v9 = [v6 UTF8String];
  for (i = 1; i != 31; ++i)
  {
    if (!gBonjourBrowserStartFunc(self->bonjourManagerRef, v8, "local.", v9, v7))
    {
      break;
    }

    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = i;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Waiting for bonjour to become ready (%d)\n", buf, 8u);
    }

    sleep(1u);
  }

  [(TestProbe *)self setStatus:1];
  v12 = [(BonjourProbe *)self scanQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);

  v14 = dispatch_time(0, (self->_bonjourBrowserTimerDuration * 1000000000.0));
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__BonjourProbe_startBonjourScanForService_onInterfaceNamed___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  [(BonjourProbe *)self setBonjourBrowserTimer:v13];
  dispatch_resume(v13);
  [(TestProbe *)self setRunning:1];

  v15 = *MEMORY[0x277D85DE8];
}

void __60__BonjourProbe_startBonjourScanForService_onInterfaceNamed___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Stopping the Bonjour Scan", &v11, 2u);
  }

  v3 = [*(a1 + 32) allDiscoveredServices];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [*(a1 + 32) setStatus:v5];
  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Bonjour Scan found %lu items", &v11, 0xCu);
  }

  if ([*(a1 + 32) isRunning])
  {
    [*(a1 + 32) stopTest];
  }

  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 bonjourProbeComplete:*(a1 + 32) status:{objc_msgSend(*(a1 + 32), "status")}];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelTest:(id)a3
{
  v4 = [(BonjourProbe *)self scanQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__BonjourProbe_cancelTest___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __27__BonjourProbe_cancelTest___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopTest];
  }

  return result;
}

- (void)stopTest
{
  if ([(TestProbe *)self isRunning])
  {
    [(TestProbe *)self setRunning:0];
    v3 = [(BonjourProbe *)self bonjourBrowserTimer];

    if (v3)
    {
      v4 = [(BonjourProbe *)self bonjourBrowserTimer];
      dispatch_source_cancel(v4);

      [(BonjourProbe *)self setBonjourBrowserTimer:0];
    }

    bonjourManagerRef = self->bonjourManagerRef;
    if (bonjourManagerRef)
    {
      gBonjourBrowserSetEventHandlerFunc(bonjourManagerRef, 0, 0);
      gBonjourBrowserStopFunc(self->bonjourManagerRef);
      v6 = self->bonjourManagerRef;
      if (v6)
      {
        CFRelease(v6);
      }

      self->bonjourManagerRef = 0;
    }

    [(BonjourProbe *)self stopAllResolvers];
    dnsRef = self->_dnsRef;
    if (dnsRef)
    {
      DNSServiceRefDeallocate(dnsRef);
      self->_dnsRef = 0;
    }
  }
}

- (void)stopAllResolvers
{
  v3 = [(BonjourProbe *)self resolvers];
  v4 = [v3 allValues];
  [v4 makeObjectsPerformSelector:sel_stopTest];

  v5 = [(BonjourProbe *)self resolvers];
  [v5 removeAllObjects];

  v6 = [(BonjourProbe *)self currentlyDiscoveredServices];
  [v6 removeAllObjects];
}

- (void)dnsResolver:(id)a3 encounteredDNSError:(int)a4
{
  v6 = a3;
  if (a4 == -65537 || a4 == -65563)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "mDNSResponder must've crashed", buf, 2u);
    }

    v8 = [(BonjourProbe *)self scanQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__BonjourProbe_dnsResolver_encounteredDNSError___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(v8, block);

    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(BonjourProbeDelegate *)self->_delegate bonjourProbeComplete:self status:3];
    }
  }
}

uint64_t __48__BonjourProbe_dnsResolver_encounteredDNSError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if (result)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Stopping the Bonjour scan and resolvers", v4, 2u);
    }

    return [*(a1 + 32) stopTest];
  }

  return result;
}

@end