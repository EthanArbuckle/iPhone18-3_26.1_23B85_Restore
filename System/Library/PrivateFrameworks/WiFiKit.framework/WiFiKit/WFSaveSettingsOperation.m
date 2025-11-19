@interface WFSaveSettingsOperation
- (NSOperationQueue)keychainQueue;
- (WFSaveSettingsOperation)initWithSSID:(id)a3 interfaceName:(id)a4 settings:(id)a5;
- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)a3 interfaceName:(id)a4;
- (__SCNetworkSet)_defaultSetRetained;
- (void)_applyProxySettings:(id)a3 service:(__SCNetworkProtocol *)a4;
- (void)dealloc;
- (void)start;
@end

@implementation WFSaveSettingsOperation

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFSaveSettingsOperation;
  [(WFSaveSettingsOperation *)&v4 dealloc];
}

- (void)_applyProxySettings:(id)a3 service:(__SCNetworkProtocol *)a4
{
  v46 = self;
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SCNetworkProtocolGetConfiguration(a4);
  v7 = [[WFSettingsProxy alloc] initWithDictionary:v6];
  if (-[WFSettingsProxy customProxy](v7, "customProxy") && -[WFSettingsProxy authenticated](v7, "authenticated") && ![v5 authenticated] || objc_msgSend(v5, "authenticated", v46))
  {
    if (v7 && ([v5 authenticated] & 1) == 0)
    {
      v19 = WFLogForCategory(0);
      v20 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v19)
      {
        v21 = v19;
        if (os_log_type_enabled(v21, v20))
        {
          v22 = [(WFSettingsProxy *)v7 server];
          v23 = [(WFSettingsProxy *)v7 port];
          v24 = [(WFSettingsProxy *)v7 username];
          *buf = 138412802;
          v52 = v22;
          v53 = 2112;
          v54 = v23;
          v55 = 2112;
          v56 = v24;
          _os_log_impl(&dword_273ECD000, v21, v20, "Removing HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      v14 = [(WFSettingsProxy *)v7 server];
      v15 = [(WFSettingsProxy *)v7 port];
      v16 = [(WFSettingsProxy *)v7 username];
      v18 = [WFProxyKeychainOperation removePasswordOperationForHost:v14 port:v15 username:v16];
    }

    else
    {
      if (![v5 authenticated])
      {
        goto LABEL_22;
      }

      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [v5 server];
          v12 = [v5 port];
          v13 = [v5 username];
          *buf = 138412802;
          v52 = v11;
          v53 = 2112;
          v54 = v12;
          v55 = 2112;
          v56 = v13;
          _os_log_impl(&dword_273ECD000, v10, v9, "Saving new HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      v14 = [v5 server];
      v15 = [v5 port];
      v16 = [v5 username];
      v17 = [v5 password];
      v18 = [WFProxyKeychainOperation savePassswordOperationForHost:v14 port:v15 username:v16 password:v17];
    }

    if (v18)
    {
      objc_initWeak(buf, v18);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __55__WFSaveSettingsOperation__applyProxySettings_service___block_invoke;
      v47[3] = &unk_279EBCDE8;
      objc_copyWeak(&v49, buf);
      v48 = v5;
      [v18 setCompletionBlock:v47];
      [(WFSaveSettingsOperation *)v46 addDependency:v18];
      v25 = [(WFSaveSettingsOperation *)v46 keychainQueue];
      v50 = v18;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [v25 addOperations:v26 waitUntilFinished:1];

      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
LABEL_27:

      goto LABEL_28;
    }

LABEL_22:
    v18 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18)
    {
      v18 = v18;
      if (os_log_type_enabled(v18, v27))
      {
        v28 = [v5 server];
        v29 = [v5 port];
        v30 = [v5 username];
        *buf = 138412802;
        v52 = v28;
        v53 = 2112;
        v54 = v29;
        v55 = 2112;
        v56 = v30;
        _os_log_impl(&dword_273ECD000, v18, v27, "Failed to create WFProxyKeychainOperation for host: %@, port: %@, user: %@", buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  v31 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v31)
  {
    v33 = v31;
    if (os_log_type_enabled(v33, v32))
    {
      v34 = [v5 protocol];
      v35 = [v5 items];
      *buf = 138412546;
      v52 = v34;
      v53 = 2112;
      v54 = v35;
      _os_log_impl(&dword_273ECD000, v33, v32, "%@ saving to SC %@", buf, 0x16u);
    }
  }

  v36 = [v5 items];
  v37 = SCNetworkProtocolSetConfiguration(a4, v36) == 0;

  if (v37)
  {
    v38 = WFLogForCategory(0);
    v39 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v38)
    {
      v40 = v38;
      if (os_log_type_enabled(v40, v39))
      {
        v41 = [v5 protocol];
        v42 = [(WFSaveSettingsOperation *)v46 ssid];
        v43 = SCError();
        v44 = SCErrorString(v43);
        *buf = 138412802;
        v52 = v41;
        v53 = 2112;
        v54 = v42;
        v55 = 2080;
        v56 = v44;
        _os_log_impl(&dword_273ECD000, v40, v39, "WiFi: Couldn't set configuration for %@ for %@: %s", buf, 0x20u);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __55__WFSaveSettingsOperation__applyProxySettings_service___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        v7 = [*(a1 + 32) server];
        v8 = [*(a1 + 32) port];
        v9 = [*(a1 + 32) username];
        v11 = 138412802;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_273ECD000, v6, v5, "Error saving password to the keychain for host: %@, port: %@, user: %@", &v11, 0x20u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)a3 interfaceName:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFSaveSettingsOperation *)self _defaultSetRetained];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_54;
  }

  v9 = v8;
  v10 = SCNetworkSetCreate(self->_prefs);
  if (!v10)
  {
    v31 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v31)
    {
      v33 = v31;
      if (os_log_type_enabled(v33, v32))
      {
        v34 = SCError();
        *buf = 136446210;
        v68 = SCErrorString(v34);
        _os_log_impl(&dword_273ECD000, v33, v32, "WiFi: SCNetworkSetCreate() failed: %{public}s\n", buf, 0xCu);
      }
    }

LABEL_52:
    v11 = 0;
    goto LABEL_53;
  }

  v11 = v10;
  if (([(__CFString *)v6 isEqualToString:@"Automatic"]& 1) == 0)
  {
    SCNetworkSetSetName(v11, v6);
  }

  ServiceOrder = SCNetworkSetGetServiceOrder(v9);
  if (!SCNetworkSetSetServiceOrder(v11, ServiceOrder))
  {
    v35 = WFLogForCategory(0);
    v36 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v35)
    {
      v37 = v35;
      if (os_log_type_enabled(v37, v36))
      {
        v38 = SCError();
        *buf = 136446210;
        v68 = SCErrorString(v38);
        _os_log_impl(&dword_273ECD000, v37, v36, "WiFi: SCNetworkSetSetServiceOrder() failed: %{public}s\n", buf, 0xCu);
      }
    }

    v14 = 0;
LABEL_50:
    SCNetworkSetRemove(v11);
    CFRelease(v11);
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_52;
  }

  v13 = SCNetworkSetCopyServices(v9);
  if (!v13)
  {
    goto LABEL_53;
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_60;
  }

  v16 = Count;
  v64 = 0;
  v62 = v9;
  v63 = v6;
  service = 0;
  v17 = 0;
  v18 = 0;
  v65 = v11;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (Interface)
    {
      v21 = Interface;
      while (1)
      {
        v22 = v18;
        v18 = SCNetworkInterfaceGetBSDName(v21);

        if ([v18 isEqualToString:v7])
        {
          break;
        }

        v21 = SCNetworkInterfaceGetInterface(v21);
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      v24 = v14;
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v25 && os_log_type_enabled(v25, v26))
      {
        *buf = 136315650;
        v68 = "[WFSaveSettingsOperation _createNewSetForNetworkNamed:interfaceName:]";
        v69 = 2112;
        v70 = v21;
        v71 = 2112;
        v72 = v7;
        _os_log_impl(&dword_273ECD000, v25, v26, "%s: found interface='%@' matching name='%@'", buf, 0x20u);
      }

      if (service)
      {
        v23 = ValueAtIndex;
        v14 = v24;
        v11 = v65;
      }

      else
      {
        v27 = SCNetworkServiceCreate(self->_prefs, v21);
        v14 = v24;
        if (!v27)
        {
          v52 = WFLogForCategory(0);
          v53 = OSLogForWFLogLevel(1uLL);
          v9 = v62;
          v11 = v65;
          if (WFCurrentLogLevel() && v52)
          {
            v54 = v52;
            if (os_log_type_enabled(v54, v53))
            {
              v55 = SCError();
              v56 = SCErrorString(v55);
              *buf = 136446210;
              v68 = v56;
              _os_log_impl(&dword_273ECD000, v54, v53, "WiFi: SCNetworkServiceCreate() failed: %{public}s\n", buf, 0xCu);
            }
          }

          goto LABEL_49;
        }

        v23 = v27;
        v11 = v65;
        if (!SCNetworkServiceEstablishDefaultConfiguration(v27))
        {
          v57 = WFLogForCategory(0);
          v58 = OSLogForWFLogLevel(1uLL);
          v9 = v62;
          if (WFCurrentLogLevel() && v57)
          {
            v59 = v57;
            if (os_log_type_enabled(v59, v58))
            {
              v60 = SCError();
              v61 = SCErrorString(v60);
              *buf = 136446210;
              v68 = v61;
              _os_log_impl(&dword_273ECD000, v59, v58, "WiFi: SCNetworkServiceEstablishDefaultConfiguration() failed: %{public}s\n", buf, 0xCu);
            }
          }

LABEL_48:
          SCNetworkServiceRemove(v23);
          CFRelease(v23);
LABEL_49:
          v6 = v63;
          goto LABEL_50;
        }

        SCNetworkServiceSetName(v23, @"Wi-Fi by wifikit");
        service = v23;
        v64 = ValueAtIndex;
      }
    }

    else
    {
LABEL_13:
      v23 = ValueAtIndex;
    }

    if (!SCNetworkSetAddService(v11, v23))
    {
      v39 = WFLogForCategory(0);
      v40 = OSLogForWFLogLevel(1uLL);
      v9 = v62;
      if (WFCurrentLogLevel() && v39)
      {
        v41 = v39;
        if (os_log_type_enabled(v41, v40))
        {
          v42 = SCError();
          v43 = SCErrorString(v42);
          *buf = 136446210;
          v68 = v43;
          _os_log_impl(&dword_273ECD000, v41, v40, "WiFi: SCNetworkSetAddService() failed: %{public}s\n", buf, 0xCu);
        }
      }

      v23 = service;
      if (service)
      {
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    ++v17;
  }

  while (v17 != v16);

  v9 = v62;
  v6 = v63;
  v28 = service;
  if (service)
  {
    if (v64)
    {
      v29 = SCNetworkSetGetServiceOrder(v62);
      if (v29)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v29);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v46 = MutableCopy;
      v47 = CFArrayGetCount(MutableCopy);
      ServiceID = SCNetworkServiceGetServiceID(v64);
      v74.location = 0;
      v74.length = v47;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v46, v74, ServiceID);
      if (FirstIndexOfValue != -1)
      {
        v50 = FirstIndexOfValue;
        v51 = SCNetworkServiceGetServiceID(service);
        CFArraySetValueAtIndex(v46, v50, v51);
        SCNetworkSetSetServiceOrder(v11, v46);
      }

      CFRelease(v46);
      v28 = service;
    }

    CFRelease(v28);
  }

LABEL_60:
  CFRelease(v14);
LABEL_53:
  CFRelease(v9);
LABEL_54:

  v44 = *MEMORY[0x277D85DE8];
  return v11;
}

- (__SCNetworkSet)_defaultSetRetained
{
  v3 = SCNetworkSetCopyAll(self->_prefs);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    v9 = SCNetworkSetGetName(ValueAtIndex);
    if ([v9 isEqualToString:@"Automatic"])
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_8;
    }
  }

  CFRetain(ValueAtIndex);

  if (!ValueAtIndex)
  {
LABEL_8:
    ValueAtIndex = SCNetworkSetCopyCurrent(self->_prefs);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return ValueAtIndex;
}

- (NSOperationQueue)keychainQueue
{
  keychainQueue = self->_keychainQueue;
  if (!keychainQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_keychainQueue;
    self->_keychainQueue = v4;

    [(NSOperationQueue *)self->_keychainQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_keychainQueue setQualityOfService:17];
    keychainQueue = self->_keychainQueue;
  }

  return keychainQueue;
}

- (WFSaveSettingsOperation)initWithSSID:(id)a3 interfaceName:(id)a4 settings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = WFSaveSettingsOperation;
  v11 = [(WFSaveSettingsOperation *)&v21 init];
  v12 = v11;
  if (!v8)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    name = 0;
    goto LABEL_7;
  }

  v13 = [v8 copy];
  ssid = v12->_ssid;
  v12->_ssid = v13;

  if (!v9)
  {
    goto LABEL_8;
  }

  v15 = [v9 copy];
  interfaceName = v12->_interfaceName;
  v12->_interfaceName = v15;

  if (v10 && (objc_storeStrong(&v12->_settings, a5), v17 = SCPreferencesCreateWithAuthorization(0, @"com.apple.wifikit", 0, 0), (v12->_prefs = v17) != 0))
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Save settings for '%@'", v12->_ssid];
    name = v12->_name;
    v12->_name = v18;
  }

  else
  {
LABEL_8:
    name = v12;
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (void)start
{
  v3 = self;
  v193[1] = *MEMORY[0x277D85DE8];
  v184.receiver = self;
  v184.super_class = WFSaveSettingsOperation;
  [(WFOperation *)&v184 start];
  v4 = WFLogForCategory(0);
  OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    if (OUTLINED_FUNCTION_5(v4))
    {
      v5 = [(WFSaveSettingsOperation *)v3 ssid];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_1_0(&dword_273ECD000, v6, v7, "Starting persisting settings for ssid: %@", v8, v9, v10, v11, v152, v154, v155, set, v159, v161, v163, v165, *v167, *&v167[8], v168, v169, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
  [v12 activate];
  v170 = v3->_interfaceName;
  v164 = v12;
  v160 = [v12 userSettings];
  v13 = [v160 OSSpecificAttributes];
  v14 = *MEMORY[0x277D298B0];
  v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D298B0]];

  v162 = v15;
  if (!v15 || (-[WFSaveSettingsOperation ssid](v3, "ssid"), v16 = objc_claimAutoreleasedReturnValue(), [v15 objectForKey:v16], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
  {
    v19 = WFLogForCategory(0);
    OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19)
    {
      if (OUTLINED_FUNCTION_5(v19))
      {
        v31 = [(WFSaveSettingsOperation *)v3 ssid];
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_1_0(&dword_273ECD000, v32, v33, "No existing custom network settings for ssid: %@", v34, v35, v36, v37, v152, v154, v155, set, v160, v162, v12, v165, *v167, *&v167[8], v168, v170, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);

        v15 = v162;
      }
    }

    v20 = 0;
    v166 = 304;
LABEL_30:
    if (SCPreferencesLock(v3->_prefs, 0) || (SCPreferencesSynchronize(v3->_prefs), SCPreferencesLock(v3->_prefs, 1u)))
    {
      v19 = [v15 mutableCopy];
      if (!v19)
      {
        v19 = [MEMORY[0x277CBEB38] dictionary];
      }

      v44 = [(WFSaveSettingsOperation *)v3 ssid];
      v45 = [(WFSaveSettingsOperation *)v3 _createNewSetForNetworkNamed:v44 interfaceName:v170];

      if (v45)
      {
        v46 = v45;
        v47 = SCNetworkSetGetSetID(v45);

        v48 = [(WFSaveSettingsOperation *)v3 ssid];
        [v19 setObject:v47 forKey:v48];

        SCPreferencesCommitChanges(v3->_prefs);
        SCPreferencesApplyChanges(v3->_prefs);
        v20 = v47;
      }

      else
      {
        v46 = 0;
        v49 = WFLogForCategory(0);
        v50 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v49)
        {
          v51 = v49;
          if (os_log_type_enabled(v51, v50))
          {
            [(WFSaveSettingsOperation *)v3 ssid];
            v53 = v52 = v20;
            OUTLINED_FUNCTION_2();
            _os_log_impl(&dword_273ECD000, v51, v50, "Failed to create new set for network named %{public}@", buf, 0xCu);

            v20 = v52;
          }
        }
      }

      SCPreferencesUnlock(v3->_prefs);
      SCPreferencesSynchronize(v3->_prefs);
      v54 = objc_alloc_init(MEMORY[0x277D02B60]);
      v192 = v14;
      v193[0] = v19;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:&v192 count:1];
      [v54 setOSSpecificAttributes:v55];

      v183 = 0;
      v56 = v164;
      v57 = [v164 applyUserSettings:v54 properties:0 error:&v183];
      v58 = v183;
      if ((v57 & 1) == 0)
      {
        v59 = v20;
        v60 = WFLogForCategory(0);
        v61 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v60 && os_log_type_enabled(v60, v61))
        {
          *buf = 138412546;
          v186 = v19;
          OUTLINED_FUNCTION_6();
          v188 = v58;
          _os_log_impl(&dword_273ECD000, v60, v61, "failed to apply custom network set %@, error='%@'", buf, 0x16u);
        }

        v20 = v59;
      }

      if (v46)
      {
        v38 = v46;
        goto LABEL_50;
      }
    }

    else
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3();
      if (WFCurrentLogLevel() && v19 && OUTLINED_FUNCTION_4())
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_1();
        _os_log_impl(v103, v104, v105, v106, v107, 2u);
      }

      v56 = v164;
    }

    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && v19 && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v186 = v20;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
    }

    v38 = 0;
    v80 = 0;
    LOBYTE(v71) = 1;
    goto LABEL_114;
  }

  v18 = v17;
  v19 = WFLogForCategory(0);
  OSLogForWFLogLevel(3uLL);
  v20 = v17;
  if (WFCurrentLogLevel() >= 3 && v19 && OUTLINED_FUNCTION_4())
  {
    *buf = 138543362;
    v186 = v17;
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
  }

  v166 = 304;
  v26 = SCNetworkSetCopyAll(v3->_prefs);
  if (!v26)
  {
LABEL_25:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && v19 && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v186 = v18;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    }

    goto LABEL_30;
  }

  v19 = v26;
  Count = CFArrayGetCount(v26);
  if (Count < 1)
  {
LABEL_17:
    CFRelease(v19);
    v15 = v162;
    goto LABEL_25;
  }

  v28 = Count;
  v29 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v29);
    if ([v18 isEqualToString:SCNetworkSetGetSetID(ValueAtIndex)])
    {
      break;
    }

    if (v28 == ++v29)
    {
      goto LABEL_17;
    }
  }

  v38 = CFRetain(ValueAtIndex);
  CFRelease(v19);
  v15 = v162;
  if (!v38)
  {
    goto LABEL_25;
  }

  v56 = v164;
LABEL_50:
  v62 = WFLogForCategory(0);
  v63 = "[WFSaveSettingsOperation start]";
  if (!v56)
  {
    OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v62 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
    }

    LOBYTE(v71) = 0;
    v80 = 0;
LABEL_114:
    v69 = v160;
    v63 = v162;
    goto LABEL_129;
  }

  v156 = v20;
  OSLogForWFLogLevel(3uLL);
  v20 = &off_273F75000;
  if (WFCurrentLogLevel() >= 3 && v62 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_6();
    v188 = v170;
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
  }

  if (!v170)
  {
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && v62 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v133, v134, v135, v136, v137, 0xCu);
    }

    LOBYTE(v71) = 0;
    goto LABEL_144;
  }

  v69 = 304;
  if (!SCPreferencesLock(v3->_prefs, 0))
  {
    SCPreferencesSynchronize(v3->_prefs);
    if (!SCPreferencesLock(v3->_prefs, 1u))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3();
      v63 = v162;
      v20 = v156;
      if (WFCurrentLogLevel())
      {
        if (OUTLINED_FUNCTION_5(0x130))
        {
          v138 = SCError();
          SCErrorString(v138);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v139, v140, "SCPreferencesLock failed %{public}s", v141, v142, v143, v144, v152, v154, v156, set, v160, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
        }
      }

      LOBYTE(v71) = 0;
      v80 = 0;
      v69 = v160;
      goto LABEL_129;
    }
  }

  v70 = SCNetworkSetCopyServices(v38);
  v71 = v70;
  if (!v70)
  {
LABEL_144:
    v80 = 0;
    v69 = v160;
    v63 = v162;
    v20 = v156;
    goto LABEL_129;
  }

  seta = v38;
  if (CFArrayGetCount(v70) < 1)
  {
    goto LABEL_63;
  }

  v69 = 0;
  while (1)
  {
    v72 = CFArrayGetValueAtIndex(v71, v69);
    Interface = SCNetworkServiceGetInterface(v72);
    v74 = SCNetworkInterfaceGetBSDName(Interface);
    v38 = [v74 isEqualToString:v170];

    if (v38)
    {
      break;
    }

    if (++v69 >= CFArrayGetCount(v71))
    {
      goto LABEL_63;
    }
  }

  if (v72)
  {
    v153 = v71;
    *v180 = 0u;
    v181 = 0u;
    *v178 = 0u;
    v179 = 0u;
    obja = [(WFSaveSettingsOperation *)v3 settings];
    v81 = [obja countByEnumeratingWithState:v178 objects:v191 count:16];
    v173 = v3;
    if (v81)
    {
      v63 = v81;
      v56 = *v179;
      v177 = *MEMORY[0x277CE16B8];
      *&v82 = 138412546;
      *v171 = v82;
      *&v82 = 138412802;
      *v167 = v82;
      v174 = *v179;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v179 != v56)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(v178[1] + 8 * i);
          v69 = [v20 protocol];
          v84 = SCNetworkServiceCopyProtocol(v72, v69);

          if (v84)
          {
            v69 = [v20 protocol];
            v85 = [v69 isEqualToString:v177];

            if (v85)
            {
              [(WFSaveSettingsOperation *)v3 _applyProxySettings:v20 service:v84];
            }

            else
            {
              v86 = WFLogForCategory(0);
              v87 = OSLogForWFLogLevel(4uLL);
              if (WFCurrentLogLevel() >= 4 && v86)
              {
                v88 = v86;
                if (os_log_type_enabled(v88, v87))
                {
                  v89 = [v20 protocol];
                  v90 = [v20 items];
                  *buf = v171[0];
                  v186 = v89;
                  OUTLINED_FUNCTION_6();
                  v188 = v91;
                  _os_log_impl(&dword_273ECD000, v88, v87, "%@ saving to SC %@", buf, 0x16u);

                  v3 = v173;
                }

                v56 = v174;
              }

              v71 = [v20 items];
              v69 = SCNetworkProtocolSetConfiguration(v84, v71);

              if (!v69)
              {
                v92 = WFLogForCategory(0);
                v93 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v92)
                {
                  v69 = v92;
                  if (os_log_type_enabled(v69, v93))
                  {
                    v71 = [v20 protocol];
                    v20 = [(WFSaveSettingsOperation *)v3 ssid];
                    v94 = SCError();
                    SCErrorString(v94);
                    *buf = *v167;
                    v186 = v71;
                    OUTLINED_FUNCTION_6();
                    v188 = v20;
                    v189 = 2080;
                    v190 = v95;
                    _os_log_impl(&dword_273ECD000, v69, v93, "WiFi: Couldn't set configuration for %@ for %@: %s", buf, 0x20u);
                  }
                }

                v56 = v174;
              }
            }

            CFRelease(v84);
          }
        }

        v63 = [obja countByEnumeratingWithState:v178 objects:v191 count:16];
      }

      while (v63);
    }

    v38 = seta;
    if ([(WFSaveSettingsOperation *)v3 isCurrentNetwork]&& !SCNetworkSetSetCurrent(seta))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3();
      if (WFCurrentLogLevel() && v69)
      {
        if (OUTLINED_FUNCTION_5(v69))
        {
          v145 = SCError();
          SCErrorString(v145);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v146, v147, "SCNetworkSetSetCurrent failed: %{public}s", v148, v149, v150, v151, v153, 304, v156, seta, v160, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
        }

        v3 = v173;
      }

      OUTLINED_FUNCTION_7();
    }

    else
    {
      v63 = v162;
      v56 = v164;
      v20 = v156;
      if (SCPreferencesCommitChanges(v3->_prefs))
      {
        if (SCPreferencesApplyChanges(v3->_prefs))
        {
          if (!SCPreferencesUnlock(v3->_prefs))
          {
            WFLogForCategory(0);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3();
            if (WFCurrentLogLevel() && v69)
            {
              if (OUTLINED_FUNCTION_5(v69))
              {
                v96 = SCError();
                SCErrorString(v96);
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_1_0(&dword_273ECD000, v97, v98, "WiFi: SCPreferencesUnlock failed: %{public}s", v99, v100, v101, v102, v153, 304, v156, seta, v160, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
              }

              v38 = seta;
            }
          }

          SCPreferencesSynchronize(v3->_prefs);
        }

        else
        {
          WFLogForCategory(0);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3();
          if (WFCurrentLogLevel() && v69)
          {
            if (OUTLINED_FUNCTION_5(v69))
            {
              v120 = SCError();
              SCErrorString(v120);
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_1_0(&dword_273ECD000, v121, v122, "WiFi: SCPreferencesApplyChanges failed: %{public}s", v123, v124, v125, v126, v153, 304, v156, seta, v160, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
            }

            v38 = seta;
          }

          SCPreferencesUnlock(v3->_prefs);
        }
      }

      else
      {
        WFLogForCategory(0);
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3();
        if (WFCurrentLogLevel() && v69)
        {
          if (OUTLINED_FUNCTION_5(v69))
          {
            v113 = SCError();
            SCErrorString(v113);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_1_0(&dword_273ECD000, v114, v115, "WiFi: SCPreferencesCommitChanges failed: %{public}s", v116, v117, v118, v119, v153, 304, v156, seta, v160, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
          }

          v38 = seta;
        }
      }

      LOBYTE(v71) = 0;
      v69 = v160;
    }

    v80 = v153;
  }

  else
  {
LABEL_63:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && v69 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      v187 = 2114;
      v188 = v71;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v75, v76, v77, v78, v79, 0x16u);
    }

    OUTLINED_FUNCTION_7();
    v80 = v71;
  }

LABEL_129:
  SCPreferencesUnlock(*(&v3->super.super.super.isa + v166));
  if (v80)
  {
    CFRelease(v80);
  }

  if ((v71 & 1) == 0)
  {
    CFRelease(v38);
  }

  [(WFOperation *)v3 finish];

  v127 = *MEMORY[0x277D85DE8];
}

@end