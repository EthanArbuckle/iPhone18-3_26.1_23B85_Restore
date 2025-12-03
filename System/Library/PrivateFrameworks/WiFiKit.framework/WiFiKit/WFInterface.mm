@interface WFInterface
- (BOOL)hasPrimaryIPConfiguration;
- (BOOL)hasValidIPAddress;
- (BOOL)isReadyForConnectionVelocityTest;
- (NSArray)deviceScanChannels;
- (NSArray)deviceScanChannelsPerCurLocale;
- (NSString)interfaceName;
- (WFClient)wifiClient;
- (WFInterface)initWithDevice:(__WiFiDeviceClient *)device coreWiFiInterface:(id)interface interfaceName:(id)name;
- (WFNetworkScanRecord)currentNetwork;
- (id)IPv4ARPResolvedIPAddress;
- (id)IPv4Addresses;
- (id)IPv4RouterAddress;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6RouterAddress;
- (id)_currentInterface;
- (id)_debugLQMString:(id)string;
- (id)currentKnownNetworkProfile;
- (void)_carPlayNetworkTypeChangedCallback:(int)callback;
- (void)_currentNetworkDidChangeWithReason:(unint64_t)reason previousNetwork:(id)network;
- (void)_hostAPStateDidChange:(id)change;
- (void)_initCurrentNetwork;
- (void)_linkChangedWithInfo:(id)info;
- (void)_linkQualityChanged:(id)changed;
- (void)_resetCurrentNetworkStates;
- (void)_startMonitoringWiFiEvents;
- (void)_stopMonitoringWiFiEvents;
- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network callback:(id)callback;
- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network forceUpdateNetwork:(BOOL)updateNetwork callback:(id)callback userInfo:(id)info;
- (void)_wifiManagerRestarted:(id)restarted;
- (void)asyncAssociateToNetwork:(id)network password:(id)password reply:(id)reply;
- (void)asyncAssociateToNetwork:(id)network profile:(id)profile reply:(id)reply;
- (void)asyncCurrentNetwork:(id)network;
- (void)asyncCurrentScanResult:(id)result;
- (void)asyncHS20Supported:(id)supported;
- (void)asyncScanRequest:(id)request reply:(id)reply;
- (void)createNANInterface;
- (void)dealloc;
- (void)deviceScanChannels;
- (void)disassociateFromCarPlayUserConfiguredNetwork;
- (void)disassociateFromCurrentNetworkWithCompletion:(id)completion;
- (void)disassociateFromCurrentNetworkWithReason:(int64_t)reason;
- (void)notifyNoNetworksFound;
- (void)setDevice:(__WiFiDeviceClient *)device;
- (void)updateDeviceScanChannelsPerCurLocale;
@end

@implementation WFInterface

- (WFNetworkScanRecord)currentNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  currentNetworkQueue = self->_currentNetworkQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__WFInterface_currentNetwork__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(currentNetworkQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__WFInterface_currentNetwork__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreWiFiCurrentNetwork];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isReadyForConnectionVelocityTest
{
  v28 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];

  if (cInterface)
  {
    cInterface2 = [(WFInterface *)self cInterface];
    iPv4RouterAddress = [cInterface2 IPv4RouterAddress];
    if (iPv4RouterAddress)
    {
      v6 = 1;
    }

    else
    {
      cInterface3 = [(WFInterface *)self cInterface];
      iPv6RouterAddress = [cInterface3 IPv6RouterAddress];
      v6 = iPv6RouterAddress != 0;
    }

    cInterface4 = [(WFInterface *)self cInterface];
    dHCPLeaseStartedAt = [cInterface4 DHCPLeaseStartedAt];

    ipMonitor = [(WFInterface *)self ipMonitor];
    if ([ipMonitor isIPv4Primary])
    {
      isIPv6Primary = 1;
    }

    else
    {
      ipMonitor2 = [(WFInterface *)self ipMonitor];
      isIPv6Primary = [ipMonitor2 isIPv6Primary];
    }

    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v17 && os_log_type_enabled(v17, v18))
    {
      v19 = "not primary";
      v22 = 136315650;
      if (isIPv6Primary)
      {
        v19 = "primary";
      }

      v23 = v19;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = dHCPLeaseStartedAt != 0;
      _os_log_impl(&dword_273ECD000, v17, v18, "network is %s, has valid IP: %d, network has DHCP Lease: %d", &v22, 0x18u);
    }

    if (dHCPLeaseStartedAt)
    {
      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    result = v20 & isIPv6Primary;
  }

  else
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_273ECD000, v7, v8, "Unable to get core wifi interface!", &v22, 2u);
    }

    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (WFInterface)initWithDevice:(__WiFiDeviceClient *)device coreWiFiInterface:(id)interface interfaceName:(id)name
{
  v38 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  nameCopy = name;
  if (!device)
  {
    [WFInterface initWithDevice:&v34 coreWiFiInterface:buf interfaceName:?];
    v16 = v34;
    v12 = *buf;
LABEL_25:

    goto LABEL_26;
  }

  v33.receiver = self;
  v33.super_class = WFInterface;
  v11 = [(WFInterface *)&v33 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  [(WFInterface *)v11 setDevice:device];
  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = [WiFiDeviceClientGetInterfaceName() copy];
  }

  interfaceName = v12->_interfaceName;
  v12->_interfaceName = v13;

  v15 = v12->_interfaceName;
  v16 = WFLogForCategory(0);
  if (!v15)
  {
    v32 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v32))
    {
      *buf = 136315138;
      *&buf[4] = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
      _os_log_impl(&dword_273ECD000, v16, v32, "%s: nil interface name", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v17 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
  {
    *buf = 136315394;
    *&buf[4] = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
    v36 = 2112;
    v37 = nameCopy;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s: interface name %@", buf, 0x16u);
  }

  v18 = dispatch_queue_create(0, 0);
  currentNetworkQueue = v12->_currentNetworkQueue;
  v12->_currentNetworkQueue = v18;

  if (v12->_currentNetworkQueue)
  {
    v20 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    networkProcessingQueue = v12->_networkProcessingQueue;
    v12->_networkProcessingQueue = v20;

    if (v12->_networkProcessingQueue)
    {
      v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
      joinQueue = v12->_joinQueue;
      v12->_joinQueue = v22;

      v24 = v12->_joinQueue;
      if (v24)
      {
        [(NSOperationQueue *)v24 setQualityOfService:25];
        v25 = [[WFIPMonitor alloc] initWithInterfaceName:v12->_interfaceName];
        ipMonitor = v12->_ipMonitor;
        v12->_ipMonitor = v25;

        if (v12->_ipMonitor)
        {
          objc_storeStrong(&v12->_cInterface, interface);
          if (interfaceCopy)
          {
            [(WFInterface *)v12 createNANInterface];
          }

          else
          {
            v27 = WFLogForCategory(0);
            v28 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v27 && os_log_type_enabled(v27, v28))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v27, v28, "CoreWiFi Interface is Missing while initializing WFInterface", buf, 2u);
            }
          }

          [(WFInterface *)v12 _startMonitoringWiFiEvents];
          [(WFInterface *)v12 _initCurrentNetwork];
          goto LABEL_23;
        }
      }
    }
  }

LABEL_26:
  device = v12->_device;
  if (device)
  {
    CFRelease(device);
    v12->_device = 0;
  }

  v12 = 0;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)createNANInterface
{
  v14 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];
  nANData = [cInterface NANData];
  irInterface = self->_irInterface;
  self->_irInterface = nANData;

  self->_associatedOnIRInterface = 0;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v8 = self->_irInterface;
    v10 = 136315394;
    v11 = "[WFInterface createNANInterface]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: NAN interface: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringWiFiEvents
{
  if ([(WFInterface *)self monitoringEvents])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "Already monitoring wifi events.", buf, 2u);
    }
  }

  else
  {
    [(WFInterface *)self setMonitoringEvents:1];
    device = self->_device;
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    v6 = self->_device;
    WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__wifiManagerRestarted_ name:@"WFClientServerRestartedNotification" object:0];
  }
}

- (void)_stopMonitoringWiFiEvents
{
  if ([(WFInterface *)self monitoringEvents])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "Unable to stop monitoring wifi events, currently not monitoring.", buf, 2u);
    }
  }
}

- (void)_wifiManagerRestarted:(id)restarted
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFInterface__wifiManagerRestarted___block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)setDevice:(__WiFiDeviceClient *)device
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  self->_device = device;
  if (device)
  {

    CFRetain(device);
  }
}

- (void)asyncHS20Supported:(id)supported
{
  supportedCopy = supported;
  if (supportedCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__WFInterface_asyncHS20Supported___block_invoke;
    v6[3] = &unk_279EBD9A8;
    v6[4] = self;
    v7 = supportedCopy;
    dispatch_async(v5, v6);
  }
}

void __34__WFInterface_asyncHS20Supported___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  [MEMORY[0x277CCABB0] numberWithInt:12];
  v3 = WiFiDeviceClientCopyProperty();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:45];
  v5 = [v3 containsObject:v4];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    *buf = 136315394;
    v13 = "[WFInterface asyncHS20Supported:]_block_invoke";
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: _deviceSupportsHS20 %d", buf, 0x12u);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__WFInterface_asyncHS20Supported___block_invoke_47;
  v9[3] = &unk_279EBD980;
  v10 = *(a1 + 40);
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)interfaceName
{
  if (self->_associatedOnIRInterface)
  {
    irInterface = [(WFInterface *)self irInterface];
    interfaceName = [irInterface interfaceName];
  }

  else
  {
    interfaceName = self->_interfaceName;
  }

  return interfaceName;
}

- (void)_linkChangedWithInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = infoCopy;
    _os_log_impl(&dword_273ECD000, v5, v6, "Link change with info %@", &v8, 0xCu);
  }

  [infoCopy objectForKey:@"LINK_CHANGED_NETWORK"];
  [(WFInterface *)self _updateCurrentNetworkWithNetwork:objc_claimAutoreleasedReturnValue() forceUpdateNetwork:0 callback:0 userInfo:infoCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_linkQualityChanged:(id)changed
{
  v34 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = WFLogForCategory(0);
  v6 = v5;
  if (changedCopy)
  {
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [(WFInterface *)self _debugLQMString:changedCopy];
        *buf = 136315394;
        *&buf[4] = "[WFInterface _linkQualityChanged:]";
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_273ECD000, v8, v7, "%s %@", buf, 0x16u);
      }
    }

    currentNetwork = [(WFInterface *)self currentNetwork];

    if (currentNetwork)
    {
      v11 = [changedCopy objectForKey:@"RSSI"];
      v12 = [changedCopy objectForKey:@"SCALED_RSSI"];
      v13 = v12;
      v14 = 0;
      if (v11 && v12)
      {
        currentNetwork2 = [(WFInterface *)self currentNetwork];
        matchingKnownNetworkProfile = [currentNetwork2 matchingKnownNetworkProfile];
        displayFriendlyName = [matchingKnownNetworkProfile displayFriendlyName];

        if (!displayFriendlyName)
        {
          currentNetwork3 = [(WFInterface *)self currentNetwork];
          displayFriendlyName = [currentNetwork3 ssid];
        }

        v19 = [WFLinkQuality alloc];
        integerValue = [v11 integerValue];
        [v13 floatValue];
        v14 = [(WFLinkQuality *)v19 initWithSSID:displayFriendlyName rssi:integerValue scaledRSSI:?];
      }

      v21 = [changedCopy objectForKey:*MEMORY[0x277D29808]];
      v22 = v21;
      if (v21)
      {
        ipState = self->_ipState;
        if (ipState != [v21 intValue])
        {
          intValue = [v22 intValue];
          self->_ipState = intValue;
          self->_ipv4SelfAssigned = intValue == 1;
        }
      }

      v25 = [changedCopy objectForKey:*MEMORY[0x277D297E8]];
      v26 = v25;
      if (v25 && self->_hasNoGatewayIP != [v25 BOOLValue])
      {
        self->_hasNoGatewayIP = [v26 BOOLValue];
      }

      if (v14)
      {
        v29 = @"WFInterfaceLinkQualityKey";
        v30 = v14;
        currentNetwork = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      }

      else
      {
        currentNetwork = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceLinkQualityNotification" object:self userInfo:currentNetwork];
  }

  else
  {
    [(WFInterface *)v5 != 0 _linkQualityChanged:v5, buf];
    v14 = *buf;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_currentNetworkDidChangeWithReason:(unint64_t)reason previousNetwork:(id)network
{
  v26 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  currentNetwork = [(WFInterface *)self currentNetwork];
  v8 = [currentNetwork copy];

  if (networkCopy | v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = dictionary;
    if (v8)
    {
      [dictionary setObject:v8 forKey:@"WFInterfaceNetworkKey"];
    }

    if (networkCopy)
    {
      [v10 setObject:networkCopy forKey:@"WFInterfacePreviousNetworkKey"];
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    [v10 setObject:v11 forKey:@"WFInterfaceNetworkChangeReason"];

    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        ssid = [networkCopy ssid];
        ssid2 = [v8 ssid];
        *v19 = 138413058;
        *&v19[4] = self;
        v20 = 2112;
        v21 = ssid;
        v22 = 2112;
        v23 = ssid2;
        v24 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_273ECD000, v14, v13, "%@: current network changed from %@ to %@ (reason %lu)", v19, 0x2Au);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceNetworkChangedNotification" object:self userInfo:v10];
  }

  else
  {
    [WFInterface _currentNetworkDidChangeWithReason:v19 previousNetwork:?];
    v10 = *v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)asyncCurrentNetwork:(id)network
{
  networkCopy = network;
  objc_initWeak(&location, self);
  networkProcessingQueue = self->_networkProcessingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke;
  v7[3] = &unk_279EBDA20;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = networkCopy;
  v6 = networkCopy;
  dispatch_async(networkProcessingQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__WFInterface_asyncCurrentNetwork___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cInterface];
  v4 = [v3 currentScanResult];

  v5 = [WeakRetained irInterface];
  v6 = [v5 currentScanResult];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315650;
    *&buf[4] = "[WFInterface asyncCurrentNetwork:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v45 = v6;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: infraScanResult='%@' nanScanResult='%@'", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  v9 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_60;
  block[3] = &unk_279EBD9D0;
  block[4] = WeakRetained;
  block[5] = buf;
  dispatch_sync(v9, block);
  if (v4)
  {
    v10 = [WFCurrentNetworkScanRecord alloc];
    v11 = [WeakRetained cInterface];
    v12 = [v11 currentKnownNetworkProfile];
    v13 = [(WFCurrentNetworkScanRecord *)v10 initWithScanResult:v4 knownNetworkProfile:v12];
    v14 = 0;
  }

  else
  {
    if (!v6)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v15 = [WFCurrentNetworkScanRecord alloc];
    v11 = [WeakRetained irInterface];
    v12 = [v11 currentKnownNetworkProfile];
    v13 = [(WFCurrentNetworkScanRecord *)v15 initWithScanResult:v6 knownNetworkProfile:v12];
    v14 = 1;
  }

  *(*(a1 + 32) + 13) = v14;
LABEL_10:
  v16 = *(*(a1 + 32) + 80);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_2;
  v35[3] = &unk_279EBD290;
  v35[4] = WeakRetained;
  v17 = v13;
  v36 = v17;
  dispatch_sync(v16, v35);
  v18 = *(*&buf[8] + 40);
  if (v18 && v17 && (v19 = [v18 isEqual:v17], v18 = *(*&buf[8] + 40), !v19))
  {
    v22 = 1;
  }

  else
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 == 0;
    }

    v21 = !v20;
    if (v17)
    {
      v22 = v18 == 0;
    }

    else
    {
      v22 = v21;
    }
  }

  v23 = [v18 matchingKnownNetworkProfile];
  v24 = [v23 isStandalone6G];
  v25 = [(WFNetworkScanRecord *)v17 matchingKnownNetworkProfile];
  LOBYTE(v24) = (v22 | v24 ^ [v25 isStandalone6G]) == 0;

  if (v24)
  {
    v29 = WFLogForCategory(0);
    v30 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v29 && os_log_type_enabled(v29, v30))
    {
      v31 = *(*&buf[8] + 40);
      *v38 = 136315394;
      v39 = "[WFInterface asyncCurrentNetwork:]_block_invoke_2";
      v40 = 2112;
      v41 = v31;
      _os_log_impl(&dword_273ECD000, v29, v30, "%s: no change to network '%@'", v38, 0x16u);
    }
  }

  else
  {
    v26 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v26 && os_log_type_enabled(v26, v27))
    {
      v28 = *(*&buf[8] + 40);
      *v38 = 136315650;
      v39 = "[WFInterface asyncCurrentNetwork:]_block_invoke_3";
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_273ECD000, v26, v27, "%s: network changed to: '%@' from: '%@'", v38, 0x20u);
    }

    [WeakRetained _resetCurrentNetworkStates];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_63;
    v34[3] = &unk_279EBD9F8;
    v34[4] = WeakRetained;
    v34[5] = buf;
    v34[6] = 0;
    dispatch_async(MEMORY[0x277D85CD0], v34);
  }

  v32 = *(a1 + 40);
  if (v32)
  {
    (*(v32 + 16))(v32, v17);
  }

  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __35__WFInterface_asyncCurrentNetwork___block_invoke_60(uint64_t a1)
{
  v4 = [*(a1 + 32) coreWiFiCurrentNetwork];
  if (v4)
  {
    v1 = [*(a1 + 32) coreWiFiCurrentNetwork];
    v3 = [v1 copy];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)asyncCurrentScanResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WFInterface_asyncCurrentScanResult___block_invoke;
  v6[3] = &unk_279EBDA48;
  v7 = resultCopy;
  v5 = resultCopy;
  [(WFInterface *)self asyncCurrentNetwork:v6];
}

void __38__WFInterface_asyncCurrentScanResult___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = [a2 scanResult];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network forceUpdateNetwork:(BOOL)updateNetwork callback:(id)callback userInfo:(id)info
{
  updateNetworkCopy = updateNetwork;
  v52 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  infoCopy = info;
  if (!network && updateNetworkCopy)
  {
    device = self->_device;
    network = WiFiDeviceClientCopyCurrentNetwork();
    if (network)
    {
      v13 = WiFiNetworkCopyRecord();
      v39 = WiFiNetworkGetSSID();
      v14 = [v13 objectForKey:@"PRIVATE_MAC_ADDRESS"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
        if (v16)
        {
          v17 = WFConvertEthernetNetworkAddressToString(v16);
        }

        else
        {
          v17 = &stru_2882E4AD8;
        }

        v18 = infoCopy;
        v20 = [v15 objectForKey:@"PRIVATE_MAC_ADDRESS_TYPE"];
        v19 = ([v20 intValue] & 0xFFFFFFFE) == 2;
      }

      else
      {
        v18 = infoCopy;
        v19 = 0;
        v17 = &stru_2882E4AD8;
      }

      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v21 && os_log_type_enabled(v21, v22))
      {
        *buf = 138412802;
        v47 = v39;
        v48 = 2112;
        v49 = v17;
        v50 = 1024;
        v51 = v19;
        _os_log_impl(&dword_273ECD000, v21, v22, "RANDOM DICT FROM copyCurrentNetwork: SSID: %@, random address: %@, enabled :%d", buf, 0x1Cu);
      }

      infoCopy = v18;
    }
  }

  currentNetwork = [(WFInterface *)self currentNetwork];
  if (currentNetwork)
  {
    currentNetwork2 = [(WFInterface *)self currentNetwork];
    v25 = [currentNetwork2 copy];
  }

  else
  {
    v25 = 0;
  }

  if (network)
  {
    v26 = [[WFNetworkScanRecord alloc] initWithNetworkRef:network];
  }

  else
  {
    v26 = 0;
  }

  currentNetwork3 = [(WFInterface *)self currentNetwork];
  v28 = currentNetwork3;
  if (!network || currentNetwork3)
  {
    currentNetwork4 = [(WFInterface *)self currentNetwork];
    IsEqualToNetwork = NetworkRefIsEqualToNetwork(network, currentNetwork4);

    if (!network || IsEqualToNetwork)
    {
      currentNetwork5 = [(WFInterface *)self currentNetwork];

      if (network)
      {
        v35 = 1;
      }

      else
      {
        v35 = currentNetwork5 == 0;
      }

      v31 = !v35;
      goto LABEL_38;
    }
  }

  if (v26)
  {
    v31 = 1;
LABEL_38:
    v36 = WFLogForCategory(0);
    v37 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v36 && os_log_type_enabled(v36, v37))
    {
      *buf = 136315394;
      v47 = "[WFInterface _updateCurrentNetworkWithNetwork:forceUpdateNetwork:callback:userInfo:]";
      v48 = 1024;
      LODWORD(v49) = v31;
      _os_log_impl(&dword_273ECD000, v36, v37, "%s: network change %d", buf, 0x12u);
    }

    if (v31)
    {
      [(WFInterface *)self _resetCurrentNetworkStates];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke;
      block[3] = &unk_279EBD5D0;
      block[4] = self;
      v45 = 0;
      v44 = v25;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    if (callbackCopy)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke_2;
      v40[3] = &unk_279EBD9A8;
      v41 = v26;
      v42 = callbackCopy;
      dispatch_async(MEMORY[0x277D85CD0], v40);
    }

    if (network)
    {
      CFRelease(network);
    }

    goto LABEL_48;
  }

  v32 = WFLogForCategory(0);
  v33 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v32 && os_log_type_enabled(v32, v33))
  {
    *buf = 136315138;
    v47 = "[WFInterface _updateCurrentNetworkWithNetwork:forceUpdateNetwork:callback:userInfo:]";
    _os_log_impl(&dword_273ECD000, v32, v33, "%s: failed to create network", buf, 0xCu);
  }

LABEL_48:
  v38 = *MEMORY[0x277D85DE8];
}

void __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network callback:(id)callback
{
  v51 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  currentNetworkQueue = self->_currentNetworkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke;
  block[3] = &unk_279EBD9D0;
  block[4] = self;
  block[5] = &v37;
  dispatch_sync(currentNetworkQueue, block);
  cInterface = [(WFInterface *)self cInterface];
  currentScanResult = [cInterface currentScanResult];

  irInterface = [(WFInterface *)self irInterface];
  currentScanResult2 = [irInterface currentScanResult];

  coreWiFiCurrentNetwork = self->_coreWiFiCurrentNetwork;
  self->_coreWiFiCurrentNetwork = 0;

  if (currentScanResult)
  {
    v12 = self->_currentNetworkQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_2;
    v34[3] = &unk_279EBD290;
    v34[4] = self;
    v35 = currentScanResult;
    dispatch_sync(v12, v34);
    self->_associatedOnIRInterface = 0;
  }

  else if (currentScanResult2)
  {
    v13 = self->_currentNetworkQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_3;
    v32[3] = &unk_279EBD290;
    v32[4] = self;
    v33 = currentScanResult2;
    dispatch_sync(v13, v32);
    self->_associatedOnIRInterface = 1;
  }

  else
  {
    self->_associatedOnIRInterface = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v14 = self->_currentNetworkQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_4;
  v25[3] = &unk_279EBD9D0;
  v25[4] = self;
  v25[5] = &v26;
  dispatch_sync(v14, v25);
  v15 = v38[5];
  v16 = v27;
  if (!v15)
  {
    goto LABEL_12;
  }

  if (v27[5])
  {
    if (![v15 isEqual:?])
    {
LABEL_13:
      v17 = 1;
      goto LABEL_14;
    }

    v16 = v27;
    if (!v38[5])
    {
LABEL_12:
      v17 = v16[5] != 0;
      goto LABEL_14;
    }
  }

  if (!v16[5])
  {
    goto LABEL_13;
  }

  v17 = 0;
LABEL_14:
  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v18 && os_log_type_enabled(v18, v19))
  {
    *buf = 136315906;
    v44 = "[WFInterface _updateCurrentNetworkWithNetwork:callback:]";
    v45 = 1024;
    v46 = v17;
    v47 = 2112;
    v48 = currentScanResult;
    v49 = 2112;
    v50 = currentScanResult2;
    _os_log_impl(&dword_273ECD000, v18, v19, "%s: network change=%d, infraScanResult='%@' nanScanResult='%@'", buf, 0x26u);
  }

  if (v17)
  {
    [(WFInterface *)self _resetCurrentNetworkStates];
    v20 = [v38[5] copy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_79;
    v23[3] = &unk_279EBD290;
    v23[4] = self;
    v24 = v20;
    v21 = v20;
    dispatch_async(MEMORY[0x277D85CD0], v23);
  }

  if (callbackCopy)
  {
    callbackCopy[2](callbackCopy, v27[5]);
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v37, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) coreWiFiCurrentNetwork];
  if (v4)
  {
    v1 = [*(a1 + 32) coreWiFiCurrentNetwork];
    v3 = [v1 copy];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_2(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 32) cInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_3(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 32) irInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) coreWiFiCurrentNetwork];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_resetCurrentNetworkStates
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "resetting current network states", v6, 2u);
  }

  self->_ipState = 0;
  *&self->_ipv4SelfAssigned = 0;
  currentNetworkIssues = self->_currentNetworkIssues;
  self->_currentNetworkIssues = 0;
}

- (void)_initCurrentNetwork
{
  objc_initWeak(&location, self);
  networkProcessingQueue = self->_networkProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFInterface__initCurrentNetwork__block_invoke;
  block[3] = &unk_279EBCDE8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(networkProcessingQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__WFInterface__initCurrentNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(*(a1 + 32) + 136) currentScanResult];
  v4 = [*(*(a1 + 32) + 144) currentScanResult];
  v5 = [*(*(a1 + 32) + 136) currentKnownNetworkProfile];
  v6 = v5;
  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__WFInterface__initCurrentNetwork__block_invoke_2;
    block[3] = &unk_279EBD268;
    block[4] = v7;
    v9 = v24;
    v24[0] = v3;
    v24[1] = WeakRetained;
    dispatch_sync(v8, block);
    *(*(a1 + 32) + 13) = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__0;
    v21[4] = __Block_byref_object_dispose__0;
    v22 = 0;
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__WFInterface__initCurrentNetwork__block_invoke_3;
    v20[3] = &unk_279EBD9D0;
    v20[4] = v10;
    v20[5] = v21;
    dispatch_sync(v11, v20);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __34__WFInterface__initCurrentNetwork__block_invoke_4;
    v19[3] = &unk_279EBCFE0;
    v19[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v19);
    _Block_object_dispose(v21, 8);
    v12 = v22;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 80);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__WFInterface__initCurrentNetwork__block_invoke_5;
    v16[3] = &unk_279EBD268;
    v9 = &v17;
    v16[4] = v13;
    v17 = 0;
    v18 = v5;
    dispatch_sync(v14, v16);
    *(*(a1 + 32) + 13) = 1;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__WFInterface__initCurrentNetwork__block_invoke_6;
    v15[3] = &unk_279EBCFE0;
    v15[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v15);
    v12 = v18;
    goto LABEL_5;
  }

LABEL_6:
}

void __34__WFInterface__initCurrentNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 48) cInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

uint64_t __34__WFInterface__initCurrentNetwork__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __34__WFInterface__initCurrentNetwork__block_invoke_5(void *a1)
{
  v2 = [[WFCurrentNetworkScanRecord alloc] initWithScanResult:a1[5] knownNetworkProfile:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)currentKnownNetworkProfile
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_associatedOnIRInterface)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      v11 = 136315394;
      v12 = "[WFInterface currentKnownNetworkProfile]";
      v13 = 2112;
      v14 = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: using ir0 profile='%@'", &v11, 0x16u);
    }

    irInterface = [(WFInterface *)self irInterface];
    currentKnownNetworkProfile = [irInterface currentKnownNetworkProfile];
  }

  else
  {
    cInterface = [(WFInterface *)self cInterface];
    currentKnownNetworkProfile = [cInterface currentKnownNetworkProfile];

    irInterface = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && irInterface && os_log_type_enabled(irInterface, v10))
    {
      v11 = 136315394;
      v12 = "[WFInterface currentKnownNetworkProfile]";
      v13 = 2112;
      v14 = currentKnownNetworkProfile;
      _os_log_impl(&dword_273ECD000, irInterface, v10, "%s: using en0 profile='%@'", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return currentKnownNetworkProfile;
}

- (void)asyncScanRequest:(id)request reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = WFLogForCategory(6uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      cScanParameters = [requestCopy cScanParameters];
      *buf = 138412290;
      v19 = cScanParameters;
      _os_log_impl(&dword_273ECD000, v10, v9, "starting wifi scan with parameters: %@", buf, 0xCu);
    }
  }

  cInterface = [(WFInterface *)self cInterface];
  cScanParameters2 = [requestCopy cScanParameters];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__WFInterface_asyncScanRequest_reply___block_invoke;
  v16[3] = &unk_279EBDA70;
  v17 = replyCopy;
  v14 = replyCopy;
  [cInterface performScanWithParameters:cScanParameters2 reply:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __38__WFInterface_asyncScanRequest_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [[WFNetworkScanRecord alloc] initWithScanResults:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = WFLogForCategory(0);
          v14 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
          {
            *buf = 136315394;
            v23 = "[WFInterface asyncScanRequest:reply:]_block_invoke";
            v24 = 2112;
            v25 = v11;
            _os_log_impl(&dword_273ECD000, v13, v14, "%s: failed to convert CWFScanResult (%@) to WFNetworkScanRecord", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (NSArray)deviceScanChannels
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  if (!self->_deviceScanChannels)
  {
    if (self->_device)
    {
      [MEMORY[0x277CCABB0] numberWithInt:254];
      v3 = WiFiDeviceClientCopyProperty();
      if (v3)
      {
        v4 = v3;
        v26 = selfCopy;
        array = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v4;
        v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v31;
          v8 = @"SUP_CHANNEL";
          v9 = @"SUP_CHANNEL_FLAGS";
          v10 = 0x279EBC000uLL;
          do
          {
            v11 = 0;
            v27 = v6;
            do
            {
              if (*v31 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v30 + 1) + 8 * v11);
              v13 = [v12 objectForKey:v8];
              v14 = [v12 objectForKey:v9];
              v15 = [objc_alloc(*(v10 + 568)) initWithChannel:objc_msgSend(v13 flags:{"integerValue"), objc_msgSend(v14, "integerValue")}];
              if (v15)
              {
                [(NSArray *)array addObject:v15];
              }

              else
              {
                v16 = v7;
                v17 = v10;
                v18 = v9;
                v19 = v8;
                v20 = WFLogForCategory(0);
                v21 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v20 && os_log_type_enabled(v20, v21))
                {
                  *buf = 138412546;
                  v35 = v13;
                  v36 = 2112;
                  v37 = v14;
                  _os_log_impl(&dword_273ECD000, v20, v21, "Unable to create scan channel for channel %@ flags %@", buf, 0x16u);
                }

                v8 = v19;
                v9 = v18;
                v10 = v17;
                v7 = v16;
                v6 = v27;
              }

              ++v11;
            }

            while (v6 != v11);
            v6 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v6);
        }

        selfCopy = v26;
        deviceScanChannels = v26->_deviceScanChannels;
        v26->_deviceScanChannels = array;

        CFRelease(obj);
      }

      else
      {
        [WFInterface deviceScanChannels];
      }
    }

    else
    {
      [WFInterface deviceScanChannels];
    }
  }

  v23 = selfCopy->_deviceScanChannels;
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)updateDeviceScanChannelsPerCurLocale
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_device)
  {
    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v23 || !os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v36 = "[WFInterface updateDeviceScanChannelsPerCurLocale]";
    v25 = "%s: Failed to get WiFiDeviceClientRef";
    goto LABEL_26;
  }

  [MEMORY[0x277CCABB0] numberWithInt:27];
  v3 = WiFiDeviceClientCopyProperty();
  if (!v3)
  {
    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v23 || !os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v36 = "[WFInterface updateDeviceScanChannelsPerCurLocale]";
    v25 = "%s: Failed to get IOC supported channels from WiFiDeviceClient";
LABEL_26:
    _os_log_impl(&dword_273ECD000, v23, v24, v25, buf, 0xCu);
LABEL_27:

    goto LABEL_28;
  }

  v4 = v3;
  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = @"SUP_CHANNEL";
    v9 = @"SUP_CHANNEL_FLAGS";
    v10 = 0x279EBC000uLL;
    do
    {
      v11 = 0;
      v28 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = [v12 objectForKey:v8];
        v14 = [v12 objectForKey:v9];
        v15 = [objc_alloc(*(v10 + 568)) initWithChannel:objc_msgSend(v13 flags:{"integerValue"), objc_msgSend(v14, "integerValue")}];
        if (v15)
        {
          [(NSArray *)array addObject:v15];
        }

        else
        {
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = v8;
          v20 = WFLogForCategory(0);
          v21 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v20 && os_log_type_enabled(v20, v21))
          {
            *buf = 138412546;
            v36 = v13;
            v37 = 2112;
            v38 = v14;
            _os_log_impl(&dword_273ECD000, v20, v21, "Unable to create scan channel for channel %@ flags %@", buf, 0x16u);
          }

          v8 = v19;
          v9 = v18;
          v10 = v17;
          v7 = v16;
          v6 = v28;
        }

        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }

  deviceScanChannelsPerCurLocale = selfCopy->_deviceScanChannelsPerCurLocale;
  selfCopy->_deviceScanChannelsPerCurLocale = array;

  CFRelease(obj);
LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
}

- (NSArray)deviceScanChannelsPerCurLocale
{
  deviceScanChannelsPerCurLocale = self->_deviceScanChannelsPerCurLocale;
  if (!deviceScanChannelsPerCurLocale)
  {
    [(WFInterface *)self updateDeviceScanChannelsPerCurLocale];
    deviceScanChannelsPerCurLocale = self->_deviceScanChannelsPerCurLocale;
  }

  return deviceScanChannelsPerCurLocale;
}

- (void)asyncAssociateToNetwork:(id)network password:(id)password reply:(id)reply
{
  replyCopy = reply;
  passwordCopy = password;
  networkCopy = network;
  v11 = [[WFMutableNetworkProfile alloc] initWithNetwork:networkCopy];
  [(WFMutableNetworkProfile *)v11 setPassword:passwordCopy];
  [(WFInterface *)self asyncAssociateToNetwork:networkCopy password:passwordCopy reply:replyCopy];
}

- (void)asyncAssociateToNetwork:(id)network profile:(id)profile reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  replyCopy = reply;
  if (![networkCopy requiresPassword])
  {
    goto LABEL_13;
  }

  if ([networkCopy isEnterprise])
  {
    v11 = WFLogForCategory(5uLL);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        *buf = 136315650;
        v40 = "[WFInterface asyncAssociateToNetwork:profile:reply:]";
        v41 = 1024;
        *v42 = [profileCopy canAttemptJoin];
        *&v42[4] = 1024;
        *&v42[6] = [profileCopy isHS20Network];
        _os_log_impl(&dword_273ECD000, v13, v12, "%s: enterprise and requires password (canAttemptJoin %d, hs20Network %d)", buf, 0x18u);
      }
    }

    if ([profileCopy canAttemptJoin] & 1) != 0 || (objc_msgSend(profileCopy, "isHS20Network"))
    {
      goto LABEL_13;
    }
  }

  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];
  if (matchingKnownNetworkProfile)
  {

    goto LABEL_13;
  }

  password = [profileCopy password];
  v16 = password == 0;

  if (!v16)
  {
LABEL_13:
    objc_initWeak(&location, self);
    v17 = [MEMORY[0x277D02AE0] associationParametersFromScanRecord:networkCopy profile:profileCopy];
    v18 = WFLogForCategory(5uLL);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
    {
      *buf = 136315650;
      v40 = "[WFInterface asyncAssociateToNetwork:profile:reply:]";
      v41 = 2112;
      *v42 = networkCopy;
      *&v42[8] = 2112;
      v43 = v17;
      _os_log_impl(&dword_273ECD000, v18, v19, "%s: associating to %@ with params %@", buf, 0x20u);
    }

    isEnterprise = [networkCopy isEnterprise];
    v21 = off_279EBC0C8;
    if (!isEnterprise)
    {
      v21 = off_279EBC148;
    }

    v22 = *v21;
    v23 = objc_alloc(objc_opt_class());
    cInterface = [(WFInterface *)self cInterface];
    v25 = [v23 initWithAssocParameters:v17 interface:cInterface];

    objc_initWeak(buf, v25);
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke;
    v34 = &unk_279EBDAC0;
    objc_copyWeak(&v36, &location);
    objc_copyWeak(&v37, buf);
    v35 = replyCopy;
    [v25 setCompletionBlock:&v31];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v25];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);

    objc_destroyWeak(&location);
    goto LABEL_20;
  }

  v28 = [MEMORY[0x277CCA9B8] associationErrorWithReason:0];
  v29 = WFLogForCategory(5uLL);
  v30 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v29 && os_log_type_enabled(v29, v30))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v29, v30, "unable to find password in keychain", buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, 0, v28);
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
}

void __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [v3 error];
  if (!v4)
  {
    v5 = WFLogForCategory(5uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      *buf = 136315138;
      v14 = "[WFInterface asyncAssociateToNetwork:profile:reply:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: forcing network update for successful association", buf, 0xCu);
    }

    [WeakRetained _updateCurrentNetworkWithNetwork:0 callback:0];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke_94;
  v10[3] = &unk_279EBDA98;
  v7 = a1[4];
  v11 = v4;
  v12 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)disassociateFromCurrentNetworkWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  wifiClient = [(WFInterface *)self wifiClient];
  cInterface = [wifiClient cInterface];

  wifiClient2 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v9 = wifiClient2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (cInterface)
  {
    if (v10 && os_log_type_enabled(wifiClient2, v8))
    {
      v13 = 136315138;
      v14 = "[WFInterface disassociateFromCurrentNetworkWithCompletion:]";
      _os_log_impl(&dword_273ECD000, wifiClient2, v8, "%s: disassociating from current network", &v13, 0xCu);
    }

    wifiClient2 = [(WFInterface *)self wifiClient];
    cInterface2 = [wifiClient2 cInterface];
    [cInterface2 disassociateWithReason:2];
  }

  else if (v10 && os_log_type_enabled(wifiClient2, v8))
  {
    v13 = 136315138;
    v14 = "[WFInterface disassociateFromCurrentNetworkWithCompletion:]";
    _os_log_impl(&dword_273ECD000, wifiClient2, v8, "%s: failed to get CWFInterface", &v13, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disassociateFromCurrentNetworkWithReason:(int64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFInterface *)self wifiClient];
  cInterface = [wifiClient cInterface];

  wifiClient2 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v9 = wifiClient2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (cInterface)
  {
    if (v10 && os_log_type_enabled(wifiClient2, v8))
    {
      v13 = 136315138;
      v14 = "[WFInterface disassociateFromCurrentNetworkWithReason:]";
      _os_log_impl(&dword_273ECD000, wifiClient2, v8, "%s: disassociating from current network", &v13, 0xCu);
    }

    wifiClient2 = [(WFInterface *)self wifiClient];
    cInterface2 = [wifiClient2 cInterface];
    [cInterface2 disassociateWithReason:reason];
  }

  else if (v10 && os_log_type_enabled(wifiClient2, v8))
  {
    v13 = 136315138;
    v14 = "[WFInterface disassociateFromCurrentNetworkWithReason:]";
    _os_log_impl(&dword_273ECD000, wifiClient2, v8, "%s: failed to get CWFInterface", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disassociateFromCarPlayUserConfiguredNetwork
{
  currentNetwork = [(WFInterface *)self currentNetwork];
  if ([currentNetwork carPlayType] == 2)
  {
    device = self->_device;
    v4 = WiFiDeviceClientCopyCurrentNetwork();
    WiFiNetworkSetAssociationDate();
    [(WFInterface *)self _updateCurrentNetworkWithNetwork:v4 callback:0];
  }
}

- (id)_debugLQMString:(id)string
{
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v5 = [stringCopy objectForKey:@"RSSI"];
  v6 = [stringCopy objectForKey:@"SCALED_RSSI"];
  [string appendFormat:@"RSSI %@, Scaled RSSI: %@", v5, v6];

  v7 = [stringCopy objectForKey:*MEMORY[0x277D29808]];
  v8 = [stringCopy objectForKey:*MEMORY[0x277D297E8]];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [string appendFormat:@", ipState: %@, noGatewayIP: %@", v7, v8];
  }

  v11 = [stringCopy objectForKey:@"DIRECTED_NETWORK"];
  v12 = v11;
  if (v11)
  {
    [string appendFormat:@", directed %@", v11];
  }

  return string;
}

- (id)_currentInterface
{
  v13 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];
  associatedOnIRInterface = self->_associatedOnIRInterface;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v8 = WFCurrentLogLevel() > 2 && v5 != 0;
  if (associatedOnIRInterface)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      v11 = 136315138;
      v12 = "[WFInterface _currentInterface]";
      _os_log_impl(&dword_273ECD000, v5, v6, "%s: querying current network's IP from ir0.", &v11, 0xCu);
    }

    v5 = cInterface;
    cInterface = self->_irInterface;
  }

  else if (v8 && os_log_type_enabled(v5, v6))
  {
    v11 = 136315138;
    v12 = "[WFInterface _currentInterface]";
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: querying current network's IP from en0.", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];

  return cInterface;
}

- (id)IPv4Addresses
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4Addresses = [_currentInterface IPv4Addresses];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv4Addresses]";
    v10 = 2112;
    v11 = iPv4Addresses;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: addresses='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv4Addresses;
}

- (id)IPv4ARPResolvedIPAddress
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4ARPResolvedIPAddress = [_currentInterface IPv4ARPResolvedIPAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv4ARPResolvedIPAddress]";
    v10 = 2112;
    v11 = iPv4ARPResolvedIPAddress;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: addresses='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv4ARPResolvedIPAddress;
}

- (id)IPv4SubnetMasks
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4SubnetMasks = [_currentInterface IPv4SubnetMasks];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv4SubnetMasks]";
    v10 = 2112;
    v11 = iPv4SubnetMasks;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: subnetMasks='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv4SubnetMasks;
}

- (id)IPv4RouterAddress
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4RouterAddress = [_currentInterface IPv4RouterAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv4RouterAddress]";
    v10 = 2112;
    v11 = iPv4RouterAddress;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: address='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv4RouterAddress;
}

- (id)IPv6Addresses
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv6Addresses = [_currentInterface IPv6Addresses];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv6Addresses]";
    v10 = 2112;
    v11 = iPv6Addresses;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: addresses='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv6Addresses;
}

- (id)IPv6RouterAddress
{
  v12 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv6RouterAddress = [_currentInterface IPv6RouterAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFInterface IPv6RouterAddress]";
    v10 = 2112;
    v11 = iPv6RouterAddress;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: address='%@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return iPv6RouterAddress;
}

- (BOOL)hasValidIPAddress
{
  v25 = *MEMORY[0x277D85DE8];
  ipMonitor = [(WFInterface *)self ipMonitor];
  if ([ipMonitor ipv4ConfigMethod] == 4)
  {
    iPv4RouterAddress = [(WFInterface *)self IPv4RouterAddress];

    if (iPv4RouterAddress)
    {
      currentNetwork2 = WFLogForCategory(0);
      v6 = OSLogForWFLogLevel(4uLL);
      v7 = 1;
      if (WFCurrentLogLevel() < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v6))
      {
        goto LABEL_29;
      }

      v23 = 136315138;
      v24 = "[WFInterface hasValidIPAddress]";
      v8 = "%s: manual config with valid router address";
      goto LABEL_22;
    }
  }

  else
  {
  }

  iPv4Addresses = [(WFInterface *)self IPv4Addresses];
  if (iPv4Addresses)
  {
    v10 = iPv4Addresses;
    iPv4RouterAddress2 = [(WFInterface *)self IPv4RouterAddress];
    if (iPv4RouterAddress2)
    {

      goto LABEL_12;
    }

    iPv4ARPResolvedIPAddress = [(WFInterface *)self IPv4ARPResolvedIPAddress];

    if (iPv4ARPResolvedIPAddress)
    {
LABEL_12:
      currentNetwork2 = WFLogForCategory(0);
      v6 = OSLogForWFLogLevel(4uLL);
      v7 = 1;
      if (WFCurrentLogLevel() < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v6))
      {
        goto LABEL_29;
      }

      v23 = 136315138;
      v24 = "[WFInterface hasValidIPAddress]";
      v8 = "%s: valid client and router IPv4 address";
      goto LABEL_22;
    }
  }

  iPv6Addresses = [(WFInterface *)self IPv6Addresses];
  if (iPv6Addresses)
  {
    v14 = iPv6Addresses;
    iPv6RouterAddress = [(WFInterface *)self IPv6RouterAddress];

    if (iPv6RouterAddress)
    {
      currentNetwork2 = WFLogForCategory(0);
      v6 = OSLogForWFLogLevel(4uLL);
      v7 = 1;
      if (WFCurrentLogLevel() < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v6))
      {
        goto LABEL_29;
      }

      v23 = 136315138;
      v24 = "[WFInterface hasValidIPAddress]";
      v8 = "%s: valid client and router IPv6 address";
LABEL_22:
      _os_log_impl(&dword_273ECD000, currentNetwork2, v6, v8, &v23, 0xCu);
      goto LABEL_29;
    }
  }

  currentNetwork = [(WFInterface *)self currentNetwork];
  isAdhoc = [currentNetwork isAdhoc];

  if (!isAdhoc)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v18 && os_log_type_enabled(v18, v19))
  {
    v23 = 136315138;
    v24 = "[WFInterface hasValidIPAddress]";
    _os_log_impl(&dword_273ECD000, v18, v19, "%s: adhoc network", &v23, 0xCu);
  }

  currentNetwork2 = [(WFInterface *)self currentNetwork];
  matchingKnownNetworkProfile = [currentNetwork2 matchingKnownNetworkProfile];
  v7 = matchingKnownNetworkProfile != 0;

LABEL_29:
LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)hasPrimaryIPConfiguration
{
  ipMonitor = [(WFInterface *)self ipMonitor];
  if ([ipMonitor isIPv4Primary])
  {
    isIPv6Primary = 1;
  }

  else
  {
    ipMonitor2 = [(WFInterface *)self ipMonitor];
    isIPv6Primary = [ipMonitor2 isIPv6Primary];
  }

  return isIPv6Primary;
}

- (void)notifyNoNetworksFound
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_hostAPStateDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v12 = 136315394;
    v13 = "[WFInterface _hostAPStateDidChange:]";
    v14 = 2112;
    v15 = changeCopy;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: eventData %@", &v12, 0x16u);
  }

  if (changeCopy)
  {
    v7 = [changeCopy objectForKey:@"HostApEnabled"];

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
    {
      v12 = 136315394;
      v13 = "[WFInterface _hostAPStateDidChange:]";
      v14 = 1024;
      LODWORD(v15) = v7 != 0;
      _os_log_impl(&dword_273ECD000, v8, v9, "%s: host ap state is %d", &v12, 0x12u);
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFInterfaceHostAPStateChangeNotification" object:self userInfo:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_carPlayNetworkTypeChangedCallback:(int)callback
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface _carPlayNetworkTypeChangedCallback:]";
    v11 = 1024;
    callbackCopy = callback;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: networkType: %d", &v9, 0x12u);
  }

  if ((callback - 1) <= 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceCarPlayNetworkTypeDidChangeNotification" object:self userInfo:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (WFClient)wifiClient
{
  WeakRetained = objc_loadWeakRetained(&self->_wifiClient);

  return WeakRetained;
}

- (void)dealloc
{
  if (self->_device)
  {
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    device = self->_device;
    WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
    v4 = self->_device;
    if (v4)
    {
      CFRelease(v4);
      self->_device = 0;
    }
  }

  [(WFInterface *)self _stopMonitoringWiFiEvents];
  v5.receiver = self;
  v5.super_class = WFInterface;
  [(WFInterface *)&v5 dealloc];
}

- (void)initWithDevice:(uint64_t)a1 coreWiFiInterface:(NSObject *)a2 interfaceName:(void *)a3 .cold.1(uint64_t a1, NSObject **a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 136315138;
    v10 = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: nil WiFiDeviceClientRef", &v9, 0xCu);
  }

  *a3 = a1;
  *a2 = v6;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_linkQualityChanged:(NSObject *)a3 .cold.1(char a1, NSObject *a2, NSObject **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && (a1 & 1) != 0 && os_log_type_enabled(a2, v6))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v7, v8, "%s: linkQualityChanged is nil", v9, v10, v11, v12, 2u);
  }

  *a3 = a2;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_currentNetworkDidChangeWithReason:(NSObject *)a1 previousNetwork:.cold.1(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: current/previous network are both nil", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceScanChannels
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end