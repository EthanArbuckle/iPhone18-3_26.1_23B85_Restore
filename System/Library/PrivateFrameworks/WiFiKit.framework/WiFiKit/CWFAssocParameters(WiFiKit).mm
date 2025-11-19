@interface CWFAssocParameters(WiFiKit)
+ (id)associationParametersFromScanRecord:()WiFiKit profile:;
@end

@implementation CWFAssocParameters(WiFiKit)

+ (id)associationParametersFromScanRecord:()WiFiKit profile:
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D02AE0]);
  v8 = [v5 attributes];
  v9 = [v8 mutableCopy];
  v10 = WiFiNetworkCreate();

  v11 = [v5 carPlayType];
  v12 = MEMORY[0x277CBED28];
  if (v11 == 1)
  {
    v13 = WFLogForCategory(5uLL);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        v16 = [v5 ssid];
        *buf = 138412290;
        v70 = v16;
        _os_log_impl(&dword_273ECD000, v15, v14, "adding kWiFiJoiningFromUI == 1 for CarPlayOnly network %@", buf, 0xCu);
      }
    }

    v17 = *MEMORY[0x277D29818];
    v18 = *v12;
    WiFiNetworkSetProperty();
  }

  if ([v6 isInstantHotspotJoin])
  {
    v19 = WFLogForCategory(5uLL);
    v20 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v19)
    {
      v21 = v19;
      if (os_log_type_enabled(v21, v20))
      {
        v22 = [v5 ssid];
        *buf = 138412290;
        v70 = v22;
        _os_log_impl(&dword_273ECD000, v21, v20, "adding kWiFiInstantHotspotJoining for instant hotspot join to %@", buf, 0xCu);
      }
    }

    v23 = *MEMORY[0x277D29810];
    v24 = *v12;
    WiFiNetworkSetProperty();
  }

  if (v6)
  {
    v25 = [v6 scanAttributes];
    v26 = [v25 mutableCopy];

    [v26 removeObjectForKey:@"enabled"];
    [v26 removeObjectForKey:*MEMORY[0x277D29848]];
    v27 = 0x277CCA000uLL;
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isHidden")}];
    [v26 setObject:v28 forKey:@"HIDDEN_NETWORK"];

    WiFiNetworkCreate();
    if ([v5 isEnterprise])
    {
      WiFiNetworkMergeForAssociation();
      v29 = [v6 enterpriseProfile];
      if (v29)
      {
        v30 = *MEMORY[0x277D29850];
        WiFiNetworkSetProperty();
      }

      else
      {
        v31 = WFLogForCategory(5uLL);
        v32 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v31)
        {
          v33 = v31;
          if (os_log_type_enabled(v33, v32))
          {
            v67 = [v5 ssid];
            *buf = 138412290;
            v70 = v67;
            _os_log_impl(&dword_273ECD000, v33, v32, "enterprise profile is nil for %@", buf, 0xCu);
          }

          v27 = 0x277CCA000;
        }
      }

      v34 = [v6 policyUUID];
      if (v34)
      {
        v35 = v34;
        Property = WiFiNetworkGetProperty();

        if (!Property)
        {
          v37 = WFLogForCategory(5uLL);
          v38 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v37)
          {
            v39 = v37;
            if (os_log_type_enabled(v39, v38))
            {
              v68 = [v6 policyUUID];
              v66 = [v5 ssid];
              *buf = 138412546;
              v70 = v68;
              v71 = 2112;
              v72 = v66;
              _os_log_impl(&dword_273ECD000, v39, v38, "setting policyUUID %@ for %@", buf, 0x16u);
            }

            v27 = 0x277CCA000uLL;
          }

          v40 = [v6 policyUUID];
          WiFiNetworkSetProperty();
        }
      }
    }

    v41 = [v6 originatorBundleIdentifier];

    if (v41)
    {
      v42 = *MEMORY[0x277D29840];
      v43 = [v6 originatorBundleIdentifier];
      WiFiNetworkSetProperty();
    }

    v44 = [v6 hotspotDeviceIdentifier];

    if (v44)
    {
      v45 = [v6 hotspotDeviceIdentifier];
      WiFiNetworkSetProperty();
    }

    v46 = [v6 isInSaveDataMode];
    v47 = *MEMORY[0x277D29898];
    v48 = *(v27 + 2992);
    if (v46)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    [*(v27 + 2992) numberWithInt:v49];
    WiFiNetworkSetProperty();
    CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile();
    if ([v6 wasAddedFromWiFiPasswordSharing])
    {
      v51 = WFLogForCategory(5uLL);
      v52 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v51)
      {
        v53 = v51;
        if (os_log_type_enabled(v53, v52))
        {
          v54 = [v5 ssid];
          *buf = 138412290;
          v70 = v54;
          _os_log_impl(&dword_273ECD000, v53, v52, "'%@' was added from WiFi password sharing, setting add reason.", buf, 0xCu);
        }
      }

      [CoreWiFiNetworkProfile setAddReason:11];
    }

    [v7 setKnownNetworkProfile:CoreWiFiNetworkProfile];
    v55 = WFLogForCategory(5uLL);
    v56 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v55 && os_log_type_enabled(v55, v56))
    {
      *buf = 138412290;
      v70 = CoreWiFiNetworkProfile;
      _os_log_impl(&dword_273ECD000, v55, v56, "known network profile %@", buf, 0xCu);
    }
  }

  v57 = [v6 password];

  if (v57)
  {
    v58 = WFLogForCategory(5uLL);
    v59 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v58)
    {
      v60 = v58;
      if (os_log_type_enabled(v60, v59))
      {
        v61 = [v5 ssid];
        *buf = 138412290;
        v70 = v61;
        _os_log_impl(&dword_273ECD000, v60, v59, "password provided to assoication parameters for %@", buf, 0xCu);
      }
    }

    v62 = [v6 password];
    [v7 setPassword:v62];
  }

  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [v7 setScanResult:CoreWiFiScanResult];
  if (v10)
  {
    CFRelease(v10);
  }

  [v7 setRememberUponSuccessfulAssociation:1];

  v64 = *MEMORY[0x277D85DE8];

  return v7;
}

@end