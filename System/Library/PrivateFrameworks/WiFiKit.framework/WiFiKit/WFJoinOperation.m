@interface WFJoinOperation
- (WFJoinOperation)initWithAssocParameters:(id)a3 interface:(id)a4;
- (WFJoinOperation)initWithNetwork:(id)a3 profile:(id)a4;
- (id)__hasPrivateMACUserJoinFailureUIState:(id)a3;
- (void)_joinWithCoreWiFi;
- (void)dealloc;
- (void)joinNetworkRef:(__WiFiNetwork *)a3;
- (void)start;
@end

@implementation WFJoinOperation

- (WFJoinOperation)initWithNetwork:(id)a3 profile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = WFJoinOperation;
  v9 = [(WFJoinOperation *)&v20 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_profile, a4), !v7))
  {
    v17 = 0;
LABEL_14:

    v10 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v10->_network, a3);
  v11 = *MEMORY[0x277CBECE8];
  v12 = WiFiManagerClientCreate();
  v10->_manager = v12;
  if (!v12)
  {
    [WFEnterpriseJoinOperation initWithNetwork:&v22 profile:?];
    goto LABEL_13;
  }

  v13 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v13 getCFRunLoop];
  v14 = *MEMORY[0x277CBF058];
  WiFiManagerClientScheduleWithRunLoop();

  manager = v10->_manager;
  v16 = WiFiManagerClientCopyDevices();
  v17 = v16;
  if (!v16 || ![v16 count])
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
LABEL_13:
    v17 = v22;

    goto LABEL_14;
  }

  v18 = [v17 objectAtIndex:0];
  v10->_device = v18;
  if (!v18)
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
    goto LABEL_13;
  }

  CFRetain(v18);
LABEL_8:

  return v10;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFJoinOperation;
  [(WFOperation *)&v3 start];
  [(WFJoinOperation *)self _joinWithCoreWiFi];
}

- (id)__hasPrivateMACUserJoinFailureUIState:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x277D02AB0];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D02AB0]];

  if (!v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v3 underlyingErrors];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) userInfo];
        v6 = [v12 objectForKeyedSubscript:v5];

        if (v6)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v6 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_joinWithCoreWiFi
{
  objc_initWeak(&location, self);
  v3 = [(WFJoinOperation *)self interface];
  v4 = [(WFJoinOperation *)self associationParameters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__WFJoinOperation__joinWithCoreWiFi__block_invoke;
  v5[3] = &unk_279EBCEC8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 associateWithParameters:v4 reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__WFJoinOperation__joinWithCoreWiFi__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained associationParameters];
  v6 = [v5 scanResult];
  v7 = [v6 networkName];

  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v3)
  {
    if (v11 && os_log_type_enabled(v8, v9))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&dword_273ECD000, v8, v9, "{ASSOC*} association failed to %@, error: %@", buf, 0x16u);
    }

    v32 = v7;

    v12 = [*(a1 + 32) associationParameters];
    v13 = [v12 scanResult];
    v30 = [v13 RSSI];

    v14 = [*(a1 + 32) associationParameters];
    v15 = [v14 scanResult];
    v8 = [v15 scanRecord];

    v16 = WiFiNetworkCreate();
    v17 = WiFiNetworkRequiresPassword();
    if (v16)
    {
      CFRelease(v16);
    }

    v18 = [*(a1 + 32) __hasPrivateMACUserJoinFailureUIState:{v3, v30}];
    if (v18)
    {
      v19 = [*(a1 + 32) interface];
      v20 = [v18 BOOLValue];
      v21 = [*(a1 + 32) associationParameters];
      v22 = [v21 scanResult];
      v23 = [v22 networkProfile];
      [v19 setPrivateMACAddressUserJoinFailureUIState:v20 networkProfile:v23];
    }

    v24 = [v18 BOOLValue];
    v25 = WFLogForCategory(5uLL);
    v26 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v25 && os_log_type_enabled(v25, v26))
    {
      v27 = "is not";
      *buf = 136315650;
      if (v17)
      {
        v27 = "is";
      }

      v34 = v27;
      v35 = 2112;
      v36 = v32;
      v37 = 2048;
      v38 = v31;
      _os_log_impl(&dword_273ECD000, v25, v26, "password %s required for %@, rssi at join: %ld", buf, 0x20u);
    }

    v28 = [MEMORY[0x277CCA9B8] associationErrorWithCode:objc_msgSend(v3 requiresPassword:"code") signalStrength:v17 != 0 isPrivateMACFailureThresholdMet:{v31, v24}];
    [WeakRetained setError:v28];

    v7 = v32;
  }

  else if (v11 && os_log_type_enabled(v8, v9))
  {
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&dword_273ECD000, v8, v9, "{ASSOC*} association successful to %@", buf, 0xCu);
  }

  [WeakRetained finish];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)joinNetworkRef:(__WiFiNetwork *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5 && os_log_type_enabled(v5, v6))
  {
    device = self->_device;
    v11 = 136315650;
    v12 = "[WFJoinOperation joinNetworkRef:]";
    v13 = 2112;
    v14 = a3;
    v15 = 2112;
    v16 = device;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: networkRef: %@ device %@", &v11, 0x20u);
  }

  v8 = self->_device;
  v9 = WiFiDeviceClientAssociateAsync();
  if (v9)
  {
    [(WFJoinOperation *)self _joinComplete:v9 userInfo:0 network:0];
  }

  if (a3)
  {
    CFRelease(a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
    self->_device = 0;
  }

  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v5.receiver = self;
  v5.super_class = WFJoinOperation;
  [(WFJoinOperation *)&v5 dealloc];
}

- (WFJoinOperation)initWithAssocParameters:(id)a3 interface:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = WFJoinOperation;
  v9 = [(WFJoinOperation *)&v20 init];
  v10 = v9;
  if (v9)
  {
    if (v7)
    {
      objc_storeStrong(&v9->_associationParameters, a3);
      objc_storeStrong(&v10->_interface, a4);
      v11 = MEMORY[0x277CCACA8];
      v12 = [v7 scanResult];
      v13 = [(WFJoinOperation *)v12 networkName];
      v14 = [v11 stringWithFormat:@"Association operation to network='%@'", v13];
      name = v10->_name;
      v10->_name = v14;
    }

    else
    {
      v13 = WFLogForCategory(5uLL);
      v19 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v19))
      {
        *buf = 136315138;
        v22 = "[WFJoinOperation initWithAssocParameters:interface:]";
        _os_log_impl(&dword_273ECD000, v13, v19, "%s: missing association parameters", buf, 0xCu);
      }

      v12 = v10;
      v10 = 0;
    }

    v16 = v10;

    v10 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end