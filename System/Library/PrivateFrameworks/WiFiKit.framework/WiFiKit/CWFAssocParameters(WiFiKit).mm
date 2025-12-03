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
  attributes = [v5 attributes];
  v9 = [attributes mutableCopy];
  v10 = WiFiNetworkCreate();

  carPlayType = [v5 carPlayType];
  v12 = MEMORY[0x277CBED28];
  if (carPlayType == 1)
  {
    v13 = WFLogForCategory(5uLL);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        ssid = [v5 ssid];
        *buf = 138412290;
        v70 = ssid;
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
        ssid2 = [v5 ssid];
        *buf = 138412290;
        v70 = ssid2;
        _os_log_impl(&dword_273ECD000, v21, v20, "adding kWiFiInstantHotspotJoining for instant hotspot join to %@", buf, 0xCu);
      }
    }

    v23 = *MEMORY[0x277D29810];
    v24 = *v12;
    WiFiNetworkSetProperty();
  }

  if (v6)
  {
    scanAttributes = [v6 scanAttributes];
    v26 = [scanAttributes mutableCopy];

    [v26 removeObjectForKey:@"enabled"];
    [v26 removeObjectForKey:*MEMORY[0x277D29848]];
    v27 = 0x277CCA000uLL;
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isHidden")}];
    [v26 setObject:v28 forKey:@"HIDDEN_NETWORK"];

    WiFiNetworkCreate();
    if ([v5 isEnterprise])
    {
      WiFiNetworkMergeForAssociation();
      enterpriseProfile = [v6 enterpriseProfile];
      if (enterpriseProfile)
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
            ssid3 = [v5 ssid];
            *buf = 138412290;
            v70 = ssid3;
            _os_log_impl(&dword_273ECD000, v33, v32, "enterprise profile is nil for %@", buf, 0xCu);
          }

          v27 = 0x277CCA000;
        }
      }

      policyUUID = [v6 policyUUID];
      if (policyUUID)
      {
        v35 = policyUUID;
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
              policyUUID2 = [v6 policyUUID];
              ssid4 = [v5 ssid];
              *buf = 138412546;
              v70 = policyUUID2;
              v71 = 2112;
              v72 = ssid4;
              _os_log_impl(&dword_273ECD000, v39, v38, "setting policyUUID %@ for %@", buf, 0x16u);
            }

            v27 = 0x277CCA000uLL;
          }

          policyUUID3 = [v6 policyUUID];
          WiFiNetworkSetProperty();
        }
      }
    }

    originatorBundleIdentifier = [v6 originatorBundleIdentifier];

    if (originatorBundleIdentifier)
    {
      v42 = *MEMORY[0x277D29840];
      originatorBundleIdentifier2 = [v6 originatorBundleIdentifier];
      WiFiNetworkSetProperty();
    }

    hotspotDeviceIdentifier = [v6 hotspotDeviceIdentifier];

    if (hotspotDeviceIdentifier)
    {
      hotspotDeviceIdentifier2 = [v6 hotspotDeviceIdentifier];
      WiFiNetworkSetProperty();
    }

    isInSaveDataMode = [v6 isInSaveDataMode];
    v47 = *MEMORY[0x277D29898];
    v48 = *(v27 + 2992);
    if (isInSaveDataMode)
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
          ssid5 = [v5 ssid];
          *buf = 138412290;
          v70 = ssid5;
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

  password = [v6 password];

  if (password)
  {
    v58 = WFLogForCategory(5uLL);
    v59 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v58)
    {
      v60 = v58;
      if (os_log_type_enabled(v60, v59))
      {
        ssid6 = [v5 ssid];
        *buf = 138412290;
        v70 = ssid6;
        _os_log_impl(&dword_273ECD000, v60, v59, "password provided to assoication parameters for %@", buf, 0xCu);
      }
    }

    password2 = [v6 password];
    [v7 setPassword:password2];
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