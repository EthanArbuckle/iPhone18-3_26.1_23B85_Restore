@interface WFEnterpriseJoinOperation
- (WFEnterpriseJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface;
- (WFEnterpriseJoinOperation)initWithNetwork:(id)network profile:(id)profile;
- (id)__hasPrivateMACUserJoinFailureUIState:(id)state;
- (void)_handleEnterpriseJoinResult:(int64_t)result userInfo:(id)info network:(__WiFiNetwork *)network;
- (void)_joinWithCoreWiFi;
- (void)_joinWithMobileWiFi;
- (void)dealloc;
- (void)joinNetworkRef:(__WiFiNetwork *)ref;
- (void)start;
@end

@implementation WFEnterpriseJoinOperation

- (WFEnterpriseJoinOperation)initWithNetwork:(id)network profile:(id)profile
{
  networkCopy = network;
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = WFEnterpriseJoinOperation;
  v9 = [(WFEnterpriseJoinOperation *)&v20 init];
  v10 = v9;
  v11 = 0;
  if (!networkCopy || !v9)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v9->_network, network);
  if (!profileCopy)
  {
    v11 = 0;
LABEL_15:

    v10 = 0;
    goto LABEL_9;
  }

  objc_storeStrong(&v10->_profile, profile);
  v12 = *MEMORY[0x277CBECE8];
  v13 = WiFiManagerClientCreate();
  v10->_manager = v13;
  if (!v13)
  {
    [WFEnterpriseJoinOperation initWithNetwork:&v22 profile:?];
    goto LABEL_14;
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop getCFRunLoop];
  v15 = *MEMORY[0x277CBF058];
  WiFiManagerClientScheduleWithRunLoop();

  manager = v10->_manager;
  v17 = WiFiManagerClientCopyDevices();
  v11 = v17;
  if (!v17 || ![v17 count])
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
LABEL_14:
    v11 = v22;

    goto LABEL_15;
  }

  v18 = [v11 objectAtIndex:0];
  v10->_device = v18;
  if (!v18)
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
    goto LABEL_14;
  }

  CFRetain(v18);
LABEL_9:

  return v10;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFEnterpriseJoinOperation;
  [(WFOperation *)&v3 start];
  [(WFEnterpriseJoinOperation *)self _joinWithCoreWiFi];
}

- (id)__hasPrivateMACUserJoinFailureUIState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  userInfo = [stateCopy userInfo];
  v5 = *MEMORY[0x277D02AB0];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D02AB0]];

  if (!v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    underlyingErrors = [stateCopy underlyingErrors];
    v8 = [underlyingErrors countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(underlyingErrors);
        }

        userInfo2 = [*(*(&v15 + 1) + 8 * v11) userInfo];
        v6 = [userInfo2 objectForKeyedSubscript:v5];

        if (v6)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [underlyingErrors countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  interface = [(WFEnterpriseJoinOperation *)self interface];
  associationParameters = [(WFEnterpriseJoinOperation *)self associationParameters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__WFEnterpriseJoinOperation__joinWithCoreWiFi__block_invoke;
  v5[3] = &unk_279EBCEC8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [interface associateWithParameters:associationParameters reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__WFEnterpriseJoinOperation__joinWithCoreWiFi__block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
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
      v38 = v7;
      v39 = 2112;
      v40 = v3;
      _os_log_impl(&dword_273ECD000, v8, v9, "{ASSOC*} association failed to %@, error: %@", buf, 0x16u);
    }

    v12 = [v3 code];
    if ((v12 & 0xFFFF0000) == 0xEA010000)
    {
      v13 = v12;
      v14 = WFLogForCategory(5uLL);
      v15 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
      {
        *buf = 134217984;
        v38 = v13;
        _os_log_impl(&dword_273ECD000, v14, v15, "association failed with EAP specific error: %ld", buf, 0xCu);
      }

      v8 = [v3 userInfo];
      [WeakRetained _handleEnterpriseJoinResult:v13 userInfo:v8 network:0];
    }

    else
    {
      v16 = [*(a1 + 32) associationParameters];
      v17 = [v16 scanResult];
      v36 = [v17 RSSI];

      v18 = [*(a1 + 32) associationParameters];
      v19 = [v18 scanResult];
      v8 = [v19 scanRecord];

      v20 = WiFiNetworkCreate();
      v21 = WiFiNetworkRequiresPassword();
      if (v20)
      {
        CFRelease(v20);
      }

      v22 = WFLogForCategory(5uLL);
      v23 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v22 && os_log_type_enabled(v22, v23))
      {
        v24 = "is not";
        *buf = 136315650;
        if (v21)
        {
          v24 = "is";
        }

        v38 = v24;
        v39 = 2112;
        v40 = v7;
        v41 = 2048;
        v42 = v36;
        _os_log_impl(&dword_273ECD000, v22, v23, "password %s required for %@, rssi at join: %ld", buf, 0x20u);
      }

      v25 = [*(a1 + 32) __hasPrivateMACUserJoinFailureUIState:v3];
      if (v25)
      {
        v26 = [*(a1 + 32) interface];
        v35 = v7;
        v27 = [v25 BOOLValue];
        v28 = [*(a1 + 32) associationParameters];
        v29 = [v28 scanResult];
        v30 = [v29 networkProfile];
        v31 = v27;
        v7 = v35;
        [v26 setPrivateMACAddressUserJoinFailureUIState:v31 networkProfile:v30];
      }

      v32 = [v25 BOOLValue];
      v33 = [MEMORY[0x277CCA9B8] associationErrorWithCode:objc_msgSend(v3 requiresPassword:"code") signalStrength:v21 != 0 isPrivateMACFailureThresholdMet:{v36, v32}];
      [WeakRetained setError:v33];
    }
  }

  else if (v11 && os_log_type_enabled(v8, v9))
  {
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&dword_273ECD000, v8, v9, "{ASSOC*} association successful to %@", buf, 0xCu);
  }

  [WeakRetained finish];
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_joinWithMobileWiFi
{
  v2 = WFLogForCategory(5uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_1_1(&dword_273ECD000, v4, v5, "Unable to create WiFiNetworkRef", v6, v7, v8, v9, 0);
  }

  *self = v2;
}

- (void)joinNetworkRef:(__WiFiNetwork *)ref
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5 && os_log_type_enabled(v5, v6))
  {
    device = self->_device;
    v11 = 136315650;
    v12 = "[WFEnterpriseJoinOperation joinNetworkRef:]";
    v13 = 2112;
    refCopy = ref;
    v15 = 2112;
    v16 = device;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: networkRef: %@ device %@", &v11, 0x20u);
  }

  v8 = self->_device;
  v9 = WiFiDeviceClientAssociateAsync();
  if (v9)
  {
    [(WFEnterpriseJoinOperation *)self _joinComplete:v9 userInfo:0 network:0];
  }

  if (ref)
  {
    CFRelease(ref);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleEnterpriseJoinResult:(int64_t)result userInfo:(id)info network:(__WiFiNetwork *)network
{
  v43 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (network)
  {
    v9 = WiFiNetworkCopyRecord();
    v10 = [v9 objectForKey:*MEMORY[0x277D298D0]];
    network = [v10 BOOLValue];
  }

  v11 = WFLogForCategory(5uLL);
  v12 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
  {
    *buf = 134218498;
    resultCopy2 = result;
    v39 = 2112;
    v40 = infoCopy;
    v41 = 1024;
    networkCopy = network;
    _os_log_impl(&dword_273ECD000, v11, v12, "handling enterprise join result: %ld userInfo: %@ isPrivateMACFailureThresholdMet: %d", buf, 0x1Cu);
  }

  switch(result)
  {
    case 3:
      v18 = [infoCopy objectForKey:@"RequiredProperties"];
      v19 = WFLogForCategory(5uLL);
      v20 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v19 && os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        resultCopy2 = v18;
        _os_log_impl(&dword_273ECD000, v19, v20, "user input required, requested info %@", buf, 0xCu);
      }

      v21 = [infoCopy objectForKey:@"TLSServerCertificateChain"];
      v22 = v21;
      if (v21)
      {
        v35 = @"kWFAssociationCertificateChainKey";
        v36 = v21;
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v36;
        v25 = &v35;
      }

      else if ([v18 containsObject:@"UserName"])
      {
        v33 = @"kWFAssociationUsernameRequiredKey";
        v34 = MEMORY[0x277CBEC38];
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v34;
        v25 = &v33;
      }

      else
      {
        if (![v18 containsObject:@"UserPassword"])
        {
          v28 = 0;
          goto LABEL_37;
        }

        v31 = @"kWFAssociationPasswordRequiredKey";
        v32 = MEMORY[0x277CBEC38];
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v32;
        v25 = &v31;
      }

      v28 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:{1, v31, v32, v33, v34, v35, v36}];
LABEL_37:
      v29 = [MEMORY[0x277CCA9B8] associationErrorWithReason:7 userInfo:v28];
      [(WFOperation *)self setError:v29];

      [(WFOperation *)self finish];
      goto LABEL_38;
    case 1:
      v15 = WFLogForCategory(5uLL);
      v16 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v15, v16, "EAP status = failed", buf, 2u);
      }

      v17 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
      break;
    case 0:
      v13 = WFLogForCategory(5uLL);
      v14 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v13, v14, "EAP status = ok", buf, 2u);
      }

      goto LABEL_31;
    default:
      v26 = WFLogForCategory(5uLL);
      v27 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v26 && os_log_type_enabled(v26, v27))
      {
        *buf = 134349056;
        resultCopy2 = result;
        _os_log_impl(&dword_273ECD000, v26, v27, "EAP status = unhandled error code %{public}ld", buf, 0xCu);
      }

      v17 = [MEMORY[0x277CCA9B8] associationErrorWithCode:result isPrivateMACFailureThresholdMet:network];
      break;
  }

  v13 = v17;
  [(WFOperation *)self setError:v17];
LABEL_31:

  [(WFOperation *)self finish];
LABEL_38:

  v30 = *MEMORY[0x277D85DE8];
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
  v5.super_class = WFEnterpriseJoinOperation;
  [(WFEnterpriseJoinOperation *)&v5 dealloc];
}

- (WFEnterpriseJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  interfaceCopy = interface;
  v20.receiver = self;
  v20.super_class = WFEnterpriseJoinOperation;
  v9 = [(WFEnterpriseJoinOperation *)&v20 init];
  v10 = v9;
  if (v9)
  {
    if (parametersCopy)
    {
      objc_storeStrong(&v9->_associationParameters, parameters);
      objc_storeStrong(&v10->_interface, interface);
      v11 = MEMORY[0x277CCACA8];
      scanResult = [parametersCopy scanResult];
      networkName = [(WFEnterpriseJoinOperation *)scanResult networkName];
      v14 = [v11 stringWithFormat:@"Association operation to network='%@'", networkName];
      name = v10->_name;
      v10->_name = v14;
    }

    else
    {
      networkName = WFLogForCategory(5uLL);
      v19 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && networkName && os_log_type_enabled(networkName, v19))
      {
        *buf = 136315138;
        v22 = "[WFEnterpriseJoinOperation initWithAssocParameters:interface:]";
        _os_log_impl(&dword_273ECD000, networkName, v19, "%s: missing association parameters", buf, 0xCu);
      }

      scanResult = v10;
      v10 = 0;
    }

    v16 = v10;

    v10 = scanResult;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)initWithNetwork:profile:.cold.1()
{
  v3 = OUTLINED_FUNCTION_0_2();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_2_0(&dword_273ECD000, v6, v7, "failed to get WiFiDeviceClient", v8, v9, v10, v11, 0);
  }

  *v1 = v2;
  *v0 = v4;
}

- (void)initWithNetwork:profile:.cold.2()
{
  v3 = OUTLINED_FUNCTION_0_2();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_2_0(&dword_273ECD000, v6, v7, "failed to get array of WiFiDeviceClients", v8, v9, v10, v11, 0);
  }

  *v1 = v2;
  *v0 = v4;
}

- (void)initWithNetwork:(NSObject *)a1 profile:(void *)a2 .cold.3(NSObject **a1, void *a2)
{
  v4 = WFLogForCategory(5uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "failed to create WiFiManagerClientRef", v6, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

@end