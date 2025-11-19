@interface WFIPMonitor
- (BOOL)__isIPConfigurationPrimaryForProperty:(__CFString *)a3;
- (BOOL)globalProxyIsEnabled;
- (BOOL)hasValidIPAddress;
- (BOOL)hasValidIPv4Address;
- (BOOL)hasValidIPv6Address;
- (BOOL)httpProxyAutoConfigured;
- (BOOL)httpProxyIsAuthenticated;
- (BOOL)isUsingCustomDNSSettings;
- (BOOL)isUsingCustomProxySetting;
- (BOOL)monitorNetworkServiceID:(id)a3;
- (BOOL)personalHotspotHasClients;
- (BOOL)renewLease;
- (WFIPMonitor)init;
- (WFIPMonitor)initWithInterfaceName:(id)a3;
- (id)DHCPLeaseExpirationDate;
- (id)__dhcpInfo;
- (id)__dnsSetupConfig;
- (id)__dnsStateConfig;
- (id)__ipv4InterfaceStateConfig;
- (id)__ipv4SetupConfig;
- (id)__ipv4StateConfig;
- (id)__ipv6SetupConfig;
- (id)__ipv6StateConfig;
- (id)__proxiesSetupConfig;
- (id)__wifiServiceID;
- (id)dnsDomainName;
- (id)dnsSearchDomains;
- (id)dnsServerAddresses;
- (id)httpProxyAutoConfigURL;
- (id)httpProxyPort;
- (id)httpProxyServer;
- (id)httpProxyUsername;
- (id)ipv4Addresses;
- (id)ipv4DHCPClientID;
- (id)ipv4Router;
- (id)ipv4SubnetMasks;
- (id)ipv6Addresses;
- (id)ipv6PrefixLengths;
- (id)ipv6Router;
- (int64_t)ipv4ConfigMethod;
- (int64_t)ipv6ConfigMethod;
- (void)_postChangesNotification:(id)a3;
- (void)dealloc;
@end

@implementation WFIPMonitor

- (WFIPMonitor)initWithInterfaceName:(id)a3
{
  v5 = a3;
  location = 0;
  v26.receiver = self;
  v26.super_class = WFIPMonitor;
  v6 = [(WFIPMonitor *)&v26 init];
  if (!v6 || (objc_storeWeak(&location, v6), !v5))
  {
    v8 = 0;
LABEL_10:
    NetworkServiceEntity = 0;
    goto LABEL_11;
  }

  objc_storeStrong(v6 + 4, a3);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WiFiKit.ipmonitor-%@", v5];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = dispatch_queue_create([v7 UTF8String], 0);
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  v11 = WFCopyProcessIdentifier();
  v12 = *(v6 + 9);
  *(v6 + 9) = v11;

  if (!*(v6 + 9))
  {
    goto LABEL_10;
  }

  v13 = objc_opt_new();
  v14 = *(v6 + 2);
  *(v6 + 2) = v13;

  [*(v6 + 2) setIpMonitor:v6];
  v15 = *(v6 + 2);
  context.version = 0;
  context.info = v15;
  context.retain = MEMORY[0x277CBE558];
  context.release = MEMORY[0x277CBE550];
  context.copyDescription = 0;
  v16 = *MEMORY[0x277CBECE8];
  v17 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], *(v6 + 9), _netServiceCallback, &context);
  *(v6 + 7) = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v16, *MEMORY[0x277CE1640], *MEMORY[0x277CE1628], 0);
  v19 = *(v6 + 7);
  v20 = [MEMORY[0x277CBEA60] arrayWithObject:NetworkServiceEntity];
  LODWORD(v19) = SCDynamicStoreSetNotificationKeys(v19, 0, v20);

  if (!v19)
  {
LABEL_11:

    v22 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  SCDynamicStoreSetDispatchQueue(*(v6 + 7), *(v6 + 8));
  v21 = [v6 __wifiServiceID];
  v22 = [v21 copy];

  objc_storeStrong(v6 + 3, v22);
  [v6 monitorNetworkServiceID:*(v6 + 3)];
LABEL_8:
  v23 = v6;
  objc_destroyWeak(&location);

  return v23;
}

- (WFIPMonitor)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFIPMonitor init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)dealloc
{
  storeRef = self->_storeRef;
  if (storeRef)
  {
    SCDynamicStoreSetDispatchQueue(storeRef, 0);
    SCDynamicStoreSetNotificationKeys(self->_storeRef, 0, 0);
  }

  networkServiceStore = self->_networkServiceStore;
  if (networkServiceStore)
  {
    SCDynamicStoreSetDispatchQueue(networkServiceStore, 0);
    SCDynamicStoreSetNotificationKeys(self->_networkServiceStore, 0, 0);
  }

  prefsRef = self->_prefsRef;
  if (prefsRef)
  {
    CFRelease(prefsRef);
    self->_prefsRef = 0;
  }

  v6 = self->_storeRef;
  if (v6)
  {
    CFRelease(v6);
    self->_storeRef = 0;
  }

  v7 = self->_networkServiceStore;
  if (v7)
  {
    CFRelease(v7);
    self->_networkServiceStore = 0;
  }

  v8.receiver = self;
  v8.super_class = WFIPMonitor;
  [(WFIPMonitor *)&v8 dealloc];
}

- (void)_postChangesNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__WFIPMonitor__postChangesNotification___block_invoke;
  v6[3] = &unk_279EBD290;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__WFIPMonitor__postChangesNotification___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = MEMORY[0x277CCAB88];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = @"changedKeys";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 notificationWithName:@"WFIPMonitorStateChangedNotification" object:v5 userInfo:v6];

  [v2 postNotification:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)__wifiServiceID
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB18] array];
  v41 = self;
  v4 = SCPreferencesCreateWithAuthorization(*MEMORY[0x277CBECE8], self->_bundleIdentifier, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    v7 = 0;
LABEL_42:
    if ([(__CFString *)v3 count])
    {
      v31 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v31 && os_log_type_enabled(v31, v32))
      {
        interfaceName = v41->_interfaceName;
        *buf = 136315906;
        v44 = "[WFIPMonitor __wifiServiceID]";
        v45 = 2114;
        v46 = interfaceName;
        v47 = 2114;
        v48 = v3;
        v49 = 2114;
        v50 = v42;
        _os_log_impl(&dword_273ECD000, v31, v32, "%s Failed to return a service ID. None of the available SCNetworkInterfaceRefs matched the IEEE80211 type. _interfaceName: %{public}@, BSD names compared: %{public}@, types: %{public}@", buf, 0x2Au);
      }
    }

    InterfaceType = 0;
    goto LABEL_49;
  }

  v6 = SCNetworkSetCopyCurrent(v4);
  v7 = v6;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_42;
  }

  v8 = SCNetworkSetCopyServices(v6);
  if (!v8)
  {
    goto LABEL_42;
  }

  ServiceOrder = SCNetworkSetGetServiceOrder(v7);
  if (!ServiceOrder)
  {
    goto LABEL_42;
  }

  v10 = ServiceOrder;
  if (CFArrayGetCount(ServiceOrder) < 1)
  {
    goto LABEL_42;
  }

  v37 = v7;
  v38 = v5;
  v12 = 0;
  cf2 = *MEMORY[0x277CE16D8];
  *&v11 = 136315906;
  v36 = v11;
  v39 = v3;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      if (CFArrayGetCount(v8) >= 1)
      {
        v15 = 0;
        while (1)
        {
          v16 = CFArrayGetValueAtIndex(v8, v15);
          if (!v16)
          {
            goto LABEL_21;
          }

          v17 = v16;
          if (!SCNetworkServiceGetEnabled(v16))
          {
            goto LABEL_21;
          }

          ServiceID = SCNetworkServiceGetServiceID(v17);
          if (!ServiceID)
          {
            goto LABEL_21;
          }

          v19 = ServiceID;
          if (!CFEqual(ServiceID, v14))
          {
            goto LABEL_21;
          }

          Interface = SCNetworkServiceGetInterface(v17);
          if (!Interface)
          {
            goto LABEL_21;
          }

          do
          {
            v21 = Interface;
            Interface = SCNetworkInterfaceGetInterface(Interface);
          }

          while (Interface);
          BSDName = SCNetworkInterfaceGetBSDName(v21);
          v23 = BSDName;
          if (BSDName)
          {
            v24 = [(__CFString *)BSDName copy];
            [(__CFString *)v3 addObject:v24];

            v25 = [(__CFString *)v23 isEqualToString:v41->_interfaceName]^ 1;
          }

          else
          {
            LOBYTE(v25) = 1;
          }

          InterfaceType = SCNetworkInterfaceGetInterfaceType(v21);
          if (!InterfaceType)
          {
            goto LABEL_22;
          }

          [(NSString *)v42 addObject:InterfaceType];
          if ((CFEqual(InterfaceType, cf2) == 0) | v25 & 1)
          {
LABEL_21:
            InterfaceType = 0;
            goto LABEL_22;
          }

          if ([(__CFString *)v23 rangeOfString:@"en"]== 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          InterfaceType = [(__CFString *)v19 copy];
          if (InterfaceType)
          {
            v27 = WFLogForCategory(0);
            v29 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v27 && os_log_type_enabled(v27, v29))
            {
              v30 = v41->_interfaceName;
              *buf = v36;
              v44 = "[WFIPMonitor __wifiServiceID]";
              v45 = 2112;
              v46 = InterfaceType;
              v47 = 2112;
              v48 = v23;
              v49 = 2112;
              v50 = v30;
              _os_log_impl(&dword_273ECD000, v27, v29, "%s: wifi serviceID: %@, bsdName: %@, _interfaceName: %@", buf, 0x2Au);
            }

            goto LABEL_32;
          }

LABEL_22:
          if (CFArrayGetCount(v8) <= ++v15 || InterfaceType)
          {
            goto LABEL_39;
          }
        }

        v27 = WFLogForCategory(0);
        v28 = OSLogForWFLogLevel(1uLL);
        InterfaceType = 0;
        if (WFCurrentLogLevel() && v27)
        {
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 136315650;
            v44 = "[WFIPMonitor __wifiServiceID]";
            v45 = 2112;
            v46 = v23;
            v47 = 2112;
            v48 = v19;
            _os_log_impl(&dword_273ECD000, v27, v28, "%s: skipping non-Infra WiFi service bsdName='%@' (serviceID='%@')", buf, 0x20u);
          }

          InterfaceType = 0;
        }

        v3 = v39;
LABEL_32:

        goto LABEL_22;
      }
    }

    InterfaceType = 0;
LABEL_39:
    ++v12;
  }

  while (CFArrayGetCount(v10) > v12 && !InterfaceType);
  v7 = v37;
  v5 = v38;
  if (!InterfaceType)
  {
    goto LABEL_42;
  }

LABEL_49:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v34 = *MEMORY[0x277D85DE8];

  return InterfaceType;
}

- (BOOL)hasValidIPAddress
{
  if ([(WFIPMonitor *)self ipv4ConfigMethod]== 4)
  {
    v3 = [(WFIPMonitor *)self ipv4Router];

    if (v3)
    {
      return 1;
    }
  }

  if ([(WFIPMonitor *)self hasValidIPv4Address])
  {
    return 1;
  }

  return [(WFIPMonitor *)self hasValidIPv6Address];
}

- (int64_t)ipv6ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WFIPMonitor_ipv6ConfigMethod__block_invoke;
  v5[3] = &unk_279EBD910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__WFIPMonitor_ipv6ConfigMethod__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv6SetupConfig];
  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1760]];

  if ([v6 isEqualToString:*MEMORY[0x277CE1840]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 1;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1848]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 2;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1850]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 3;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1858]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 4;
  }

  else
  {
    v5 = [v6 isEqualToString:*MEMORY[0x277CE1838]];
    v3 = *(*(a1 + 40) + 8);
    if (v5)
    {
      v4 = 5;
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *(v3 + 24) = v4;
}

- (int64_t)ipv4ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WFIPMonitor_ipv4ConfigMethod__block_invoke;
  v5[3] = &unk_279EBD910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__WFIPMonitor_ipv4ConfigMethod__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv4SetupConfig];
  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1730]];

  if ([v6 isEqualToString:*MEMORY[0x277CE1800]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 1;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1820]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 2;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1810]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 3;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1828]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 4;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1808]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 5;
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CE1818]])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 7;
  }

  else
  {
    v5 = [v6 isEqualToString:*MEMORY[0x277CE1830]];
    v3 = *(*(a1 + 40) + 8);
    if (v5)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *(v3 + 24) = v4;
}

- (BOOL)__isIPConfigurationPrimaryForProperty:(__CFString *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  if (self->_interfaceName)
  {
    if (self->_storeRef)
    {
      queue = self->_queue;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __53__WFIPMonitor___isIPConfigurationPrimaryForProperty___block_invoke;
      v8[3] = &unk_279EBE4C8;
      v8[4] = self;
      v8[5] = &v14;
      v8[6] = &v10;
      v8[7] = v9;
      v8[8] = &v18;
      v8[9] = a3;
      dispatch_sync(queue, v8);
      v4 = v11[3];
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  v5 = v15[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v19 + 24);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

CFStringRef __53__WFIPMonitor___isIPConfigurationPrimaryForProperty___block_invoke(uint64_t a1)
{
  result = SCDynamicStoreKeyCreateNetworkGlobalEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], *(a1 + 72));
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = SCDynamicStoreCopyValue(*(*(a1 + 32) + 40), v3);
    result = *(*(*(a1 + 48) + 8) + 24);
    if (result)
    {
      *(*(*(a1 + 56) + 8) + 24) = CFDictionaryGetValue(result, *MEMORY[0x277CE1650]);
      result = *(*(*(a1 + 56) + 8) + 24);
      if (result)
      {
        result = CFEqual(result, *(*(a1 + 32) + 32));
        v4 = result != 0;
      }

      else
      {
        v4 = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = v4;
    }
  }

  return result;
}

- (id)ipv4Router
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__WFIPMonitor_ipv4Router__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__WFIPMonitor_ipv4Router__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv4StateConfig];
  v3 = *MEMORY[0x277CE1748];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1748]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv4SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)ipv4SubnetMasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WFIPMonitor_ipv4SubnetMasks__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__WFIPMonitor_ipv4SubnetMasks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv4StateConfig];
  v3 = *MEMORY[0x277CE1750];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1750]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv4SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)ipv4Addresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__WFIPMonitor_ipv4Addresses__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__WFIPMonitor_ipv4Addresses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv4StateConfig];
  v3 = *MEMORY[0x277CE1728];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1728]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv4SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)ipv4DHCPClientID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WFIPMonitor_ipv4DHCPClientID__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__WFIPMonitor_ipv4DHCPClientID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv4StateConfig];
  v3 = *MEMORY[0x277CE1738];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1738]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv4SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)DHCPLeaseExpirationDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v3 = [(WFIPMonitor *)self __dhcpInfo];
  v4 = v3;
  if (v3)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__WFIPMonitor_DHCPLeaseExpirationDate__block_invoke;
    v8[3] = &unk_279EBD9D0;
    v10 = &v11;
    v9 = v3;
    dispatch_sync(queue, v8);
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __38__WFIPMonitor_DHCPLeaseExpirationDate__block_invoke(uint64_t a1)
{
  v2 = DHCPInfoGetLeaseExpirationTime(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)ipv6Router
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__WFIPMonitor_ipv6Router__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__WFIPMonitor_ipv6Router__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv6StateConfig];
  v3 = *MEMORY[0x277CE1780];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1780]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv6SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)ipv6Addresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__WFIPMonitor_ipv6Addresses__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__WFIPMonitor_ipv6Addresses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv6StateConfig];
  v3 = *MEMORY[0x277CE1758];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1758]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv6SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)ipv6PrefixLengths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__WFIPMonitor_ipv6PrefixLengths__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__WFIPMonitor_ipv6PrefixLengths__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __ipv6StateConfig];
  v3 = *MEMORY[0x277CE1778];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1778]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(a1 + 32) __ipv6SetupConfig];
    v7 = [v10 objectForKeyedSubscript:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)dnsDomainName
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if ([(WFIPMonitor *)self isUsingCustomDNSSettings])
  {
    v3 = [(WFIPMonitor *)self __dnsSetupConfig];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE1700]];
    v5 = v11[5];
    v11[5] = v4;
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__WFIPMonitor_dnsDomainName__block_invoke;
  v9[3] = &unk_279EBD9D0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __28__WFIPMonitor_dnsDomainName__block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) __dnsStateConfig];
    v3 = *MEMORY[0x277CE1700];
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1700]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = [*(a1 + 32) __ipv4SetupConfig];
      v7 = [v10 objectForKeyedSubscript:v3];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

- (id)dnsSearchDomains
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if ([(WFIPMonitor *)self isUsingCustomDNSSettings])
  {
    v3 = [(WFIPMonitor *)self __dnsSetupConfig];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE1708]];
    v5 = v11[5];
    v11[5] = v4;
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__WFIPMonitor_dnsSearchDomains__block_invoke;
  v9[3] = &unk_279EBD9D0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __31__WFIPMonitor_dnsSearchDomains__block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) __dnsStateConfig];
    v3 = *MEMORY[0x277CE1708];
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1708]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = [*(a1 + 32) __ipv4SetupConfig];
      v7 = [v10 objectForKeyedSubscript:v3];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

- (id)dnsServerAddresses
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if ([(WFIPMonitor *)self isUsingCustomDNSSettings])
  {
    v3 = [(WFIPMonitor *)self __dnsSetupConfig];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE1710]];
    v5 = v11[5];
    v11[5] = v4;
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WFIPMonitor_dnsServerAddresses__block_invoke;
  v9[3] = &unk_279EBD9D0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __33__WFIPMonitor_dnsServerAddresses__block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) __dnsStateConfig];
    v3 = *MEMORY[0x277CE1710];
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CE1710]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = [*(a1 + 32) __ipv4SetupConfig];
      v7 = [v10 objectForKeyedSubscript:v3];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

- (BOOL)isUsingCustomDNSSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__WFIPMonitor_isUsingCustomDNSSettings__block_invoke;
  v5[3] = &unk_279EBD910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__WFIPMonitor_isUsingCustomDNSSettings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __dnsSetupConfig];
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)isUsingCustomProxySetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__WFIPMonitor_isUsingCustomProxySetting__block_invoke;
  v5[3] = &unk_279EBD910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __40__WFIPMonitor_isUsingCustomProxySetting__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) __proxiesSetupConfig];
  if ([v4 count] == 2)
  {
    v2 = +[WFSettingsProxy defaultProxyConfiguration];
    v3 = [v4 isEqualToDictionary:v2];

    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (BOOL)globalProxyIsEnabled
{
  v2 = *MEMORY[0x277CE16B8];
  v3 = CFPreferencesCopyAppValue(*MEMORY[0x277CE16B8], @"com.apple.SystemConfiguration");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFPreferencesAppValueIsForced(v2, @"com.apple.SystemConfiguration") != 0;
  CFRelease(v4);
  return v5;
}

- (id)__dhcpInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__WFIPMonitor___dhcpInfo__block_invoke;
  v5[3] = &unk_279EBD910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__WFIPMonitor___dhcpInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storeRef];
  v3 = [*(a1 + 32) serviceID];
  v4 = SCDynamicStoreCopyDHCPInfo(v2, v3);

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    CFRelease(v4);
  }
}

- (BOOL)monitorNetworkServiceID:(id)a3
{
  v71[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  storeRef = self->_storeRef;
  if (storeRef)
  {
    SCDynamicStoreSetDispatchQueue(storeRef, 0);
    v9 = self->_storeRef;
    if (v9)
    {
      CFRelease(v9);
      self->_storeRef = 0;
    }
  }

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = objc_opt_new();
  dynamicStoreInfo = self->_dynamicStoreInfo;
  self->_dynamicStoreInfo = v11;

  [(_WFIPMonitorObserver *)self->_dynamicStoreInfo setIpMonitor:self];
  v13 = self->_dynamicStoreInfo;
  context.version = 0;
  context.info = v13;
  context.retain = MEMORY[0x277CBE558];
  context.release = MEMORY[0x277CBE550];
  context.copyDescription = 0;
  if (!v7 || (v14 = WFCopyProcessIdentifier()) == 0)
  {
    v63 = 0;
    goto LABEL_30;
  }

  v15 = v14;
  v16 = *MEMORY[0x277CBECE8];
  v17 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], v14, __ipStoreCallback, &context);
  if (!v17)
  {
    OUTLINED_FUNCTION_0_12();
    v19 = 0;
LABEL_34:
    v67 = 0;
    v68 = 0;
    goto LABEL_40;
  }

  self->_storeRef = v17;
  v18 = *MEMORY[0x277CE1640];
  v19 = SCDynamicStoreKeyCreate(v16, *MEMORY[0x277CE1640]);
  if (!v19)
  {
    OUTLINED_FUNCTION_0_12();
    goto LABEL_34;
  }

  v20 = [v10 addObject:v19];
  v5 = *MEMORY[0x277CE1648];
  v23 = OUTLINED_FUNCTION_2_5(v20, v21, v22, *MEMORY[0x277CE1688]);
  v67 = v19;
  if (v23)
  {
    v68 = v23;
    v24 = [v10 addObject:v23];
    v19 = OUTLINED_FUNCTION_2_5(v24, v25, v26, *MEMORY[0x277CE1690]);
    if (v19)
    {
      v27 = [v10 addObject:v19];
      v3 = OUTLINED_FUNCTION_2_5(v27, v28, v29, *MEMORY[0x277CE1670]);
      if (v3)
      {
        v30 = [v10 addObject:v3];
        v4 = OUTLINED_FUNCTION_2_5(v30, v31, v32, *MEMORY[0x277CE1678]);
        if (v4)
        {
          v33 = [v10 addObject:v4];
          v5 = OUTLINED_FUNCTION_2_5(v33, v34, v35, *MEMORY[0x277CE16B8]);
          if (v5)
          {
            [v10 addObject:v5];
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v16, v18, v7, *MEMORY[0x277CE1628]);
            v16 = NetworkServiceEntity;
            if (NetworkServiceEntity)
            {
              cf = v15;
              v37 = self->_storeRef;
              v71[0] = NetworkServiceEntity;
              v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
              LODWORD(v37) = SCDynamicStoreSetNotificationKeys(v37, v10, v38);

              if (v37)
              {
                SCDynamicStoreSetDispatchQueue(self->_storeRef, self->_queue);
                v39 = WFLogForCategory(0);
                v40 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v39 && os_log_type_enabled(v39, v40))
                {
                  HIDWORD(v70) = HIDWORD(v7);
                  OUTLINED_FUNCTION_3_2(&dword_273ECD000, v41, v42, "Monitoring service ID %@", v43, v44, v45, v46, cf, v67, v68, context.version, context.info, context.retain, context.release, context.copyDescription, 2u);
                }

                v47 = WFLogForCategory(0);
                v48 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v47 && os_log_type_enabled(v47, v48))
                {
                  HIDWORD(v70) = HIDWORD(v10);
                  OUTLINED_FUNCTION_3_2(&dword_273ECD000, v49, v50, "SC Keys: %@", v51, v52, v53, v54, cf, v67, v68, context.version, context.info, context.retain, context.release, context.copyDescription, 2u);
                }

                v55 = WFLogForCategory(0);
                v56 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v55 && os_log_type_enabled(v55, v56))
                {
                  HIDWORD(v70) = HIDWORD(v16);
                  OUTLINED_FUNCTION_3_2(&dword_273ECD000, v57, v58, "SC Match Pattern: %@", v59, v60, v61, v62, cf, v67, v68, context.version, context.info, context.retain, context.release, context.copyDescription, 2u);
                }

                v63 = 1;
              }

              else
              {
                v63 = 0;
              }

              v15 = cf;
              goto LABEL_29;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
          v5 = 0;
        }
      }

      else
      {
        v16 = 0;
        v5 = 0;
        v4 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_12();
    v19 = 0;
    v68 = 0;
  }

LABEL_40:
  v63 = 0;
LABEL_29:
  CFRelease(v15);

LABEL_30:
  v64 = *MEMORY[0x277D85DE8];
  return v63;
}

- (BOOL)hasValidIPv4Address
{
  v3 = [(WFIPMonitor *)self ipv4Addresses];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [(WFIPMonitor *)self ipv4SubnetMasks];
    if (v5)
    {
      v6 = [v4 objectAtIndex:0];
      v7 = [v5 objectAtIndex:0];
      valid = WFIsValidIPv4Address(v6, v7);
    }

    else
    {
      valid = 0;
    }
  }

  else
  {
    valid = 0;
  }

  return valid;
}

- (BOOL)hasValidIPv6Address
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(WFIPMonitor *)self ipv6Addresses];
  v3 = v2;
  if (v2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (WFIsValidIPv6Address(*(*(&v10 + 1) + 8 * i)))
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)renewLease
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v28 = 136315138;
    v29 = "[WFIPMonitor renewLease]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: renewing lease", &v28, 0xCu);
  }

  if (![(WFIPMonitor *)self prefsRef]|| (v5 = SCNetworkSetCopyCurrent([(WFIPMonitor *)self prefsRef])) == 0)
  {
    v23 = 0;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = SCNetworkSetCopyServices(v5);
  if (!v7)
  {
    v23 = 0;
    v8 = v6;
    goto LABEL_24;
  }

  v8 = v7;
  Count = CFArrayGetCount(v7);
  if (!Count)
  {
    goto LABEL_13;
  }

  v10 = Count;
  v11 = 0;
  v12 = *MEMORY[0x277CE16D8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    v15 = SCNetworkInterfaceGetInterfaceType(Interface);
    if ([v15 isEqualToString:v12])
    {
      v16 = SCNetworkInterfaceGetBSDName(Interface);
      v17 = [v16 isEqualToString:self->_interfaceName];

      if (v17)
      {
        break;
      }
    }

    if (v10 == ++v11)
    {
      goto LABEL_13;
    }
  }

  if (!Interface)
  {
LABEL_13:
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v18)
    {
      goto LABEL_19;
    }

    v18 = v18;
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_18;
    }

    v20 = SCError();
    v21 = SCErrorString(v20);
    v28 = 136315138;
    v29 = v21;
    v22 = "WiFi: renewLease failed. Couldn't find WiFi interface. %s";
    goto LABEL_17;
  }

  if (SCNetworkInterfaceForceConfigurationRefresh(Interface))
  {
    v23 = 1;
    goto LABEL_23;
  }

  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v18)
  {
    v18 = v18;
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_18;
    }

    v26 = SCError();
    v27 = SCErrorString(v26);
    v28 = 136315138;
    v29 = v27;
    v22 = "renewLease failed: %s";
LABEL_17:
    _os_log_impl(&dword_273ECD000, v18, v19, v22, &v28, 0xCu);
LABEL_18:
  }

LABEL_19:

  v23 = 0;
LABEL_23:
  CFRelease(v6);
LABEL_24:
  CFRelease(v8);
LABEL_25:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)__ipv4StateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], serviceID, *MEMORY[0x277CE1688])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__ipv4InterfaceStateConfig
{
  interfaceName = self->_interfaceName;
  if (interfaceName && (v4 = self, (NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], interfaceName, *MEMORY[0x277CE1688])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkInterfaceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__ipv6StateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], serviceID, *MEMORY[0x277CE1690])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__ipv4SetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1640], serviceID, *MEMORY[0x277CE1688])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__ipv6SetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1640], serviceID, *MEMORY[0x277CE1690])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__dnsStateConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], serviceID, *MEMORY[0x277CE1678])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__dnsSetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1640], serviceID, *MEMORY[0x277CE1678])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)httpProxyServer
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277CE17C8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)httpProxyPort
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [v2 objectForKey:*MEMORY[0x277CE17C0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v4 = v5;
LABEL_6:
  v6 = v5;
LABEL_9:
  v7 = v6;

  return v6;
}

- (BOOL)httpProxyIsAuthenticated
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"HTTPProxyAuthenticated"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)httpProxyUsername
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"HTTPProxyUsername"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)httpProxyAutoConfigured
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (v2 && ([v2 objectForKey:*MEMORY[0x277CE17E8]], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)httpProxyAutoConfigURL
{
  v2 = [(WFIPMonitor *)self __proxiesSetupConfig];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x277CE17F0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)__proxiesSetupConfig
{
  serviceID = self->_serviceID;
  if (serviceID && (v4 = self, (NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1640], serviceID, *MEMORY[0x277CE16B8])) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_6(NetworkServiceEntity);
    if (v6)
    {
      [v6 copy];
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)personalHotspotHasClients
{
  v2 = SCDynamicStoreCopyValue(self->_storeRef, @"com.apple.MobileInternetSharing");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 objectForKey:@"Hosts"];
  v5 = v4;
  if (v4 && ([v4 objectForKey:@"Type"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 objectForKey:@"AirPort"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 intValue];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 objectForKey:@"Wifi-NAN"];
    v12 = v11;
    if (v11)
    {
      v10 += [v11 intValue];
    }

    v13 = [v7 objectForKey:@"Bluetooth"];
    v14 = v13;
    if (v13)
    {
      v10 += [v13 intValue];
    }

    v15 = v10 != 0;
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v3);

  return v15;
}

@end