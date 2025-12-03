@interface WFSaveSettingsOperation
- (NSOperationQueue)keychainQueue;
- (WFSaveSettingsOperation)initWithSSID:(id)d interfaceName:(id)name settings:(id)settings;
- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)named interfaceName:(id)name;
- (__SCNetworkSet)_defaultSetRetained;
- (void)_applyProxySettings:(id)settings service:(__SCNetworkProtocol *)service;
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

- (void)_applyProxySettings:(id)settings service:(__SCNetworkProtocol *)service
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = SCNetworkProtocolGetConfiguration(service);
  v7 = [[WFSettingsProxy alloc] initWithDictionary:v6];
  if (-[WFSettingsProxy customProxy](v7, "customProxy") && -[WFSettingsProxy authenticated](v7, "authenticated") && ![settingsCopy authenticated] || objc_msgSend(settingsCopy, "authenticated", selfCopy))
  {
    if (v7 && ([settingsCopy authenticated] & 1) == 0)
    {
      v19 = WFLogForCategory(0);
      v20 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v19)
      {
        v21 = v19;
        if (os_log_type_enabled(v21, v20))
        {
          server = [(WFSettingsProxy *)v7 server];
          port = [(WFSettingsProxy *)v7 port];
          username = [(WFSettingsProxy *)v7 username];
          *buf = 138412802;
          v52 = server;
          v53 = 2112;
          v54 = port;
          v55 = 2112;
          v56 = username;
          _os_log_impl(&dword_273ECD000, v21, v20, "Removing HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      server2 = [(WFSettingsProxy *)v7 server];
      port2 = [(WFSettingsProxy *)v7 port];
      username2 = [(WFSettingsProxy *)v7 username];
      v18 = [WFProxyKeychainOperation removePasswordOperationForHost:server2 port:port2 username:username2];
    }

    else
    {
      if (![settingsCopy authenticated])
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
          server3 = [settingsCopy server];
          port3 = [settingsCopy port];
          username3 = [settingsCopy username];
          *buf = 138412802;
          v52 = server3;
          v53 = 2112;
          v54 = port3;
          v55 = 2112;
          v56 = username3;
          _os_log_impl(&dword_273ECD000, v10, v9, "Saving new HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      server2 = [settingsCopy server];
      port2 = [settingsCopy port];
      username2 = [settingsCopy username];
      password = [settingsCopy password];
      v18 = [WFProxyKeychainOperation savePassswordOperationForHost:server2 port:port2 username:username2 password:password];
    }

    if (v18)
    {
      objc_initWeak(buf, v18);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __55__WFSaveSettingsOperation__applyProxySettings_service___block_invoke;
      v47[3] = &unk_279EBCDE8;
      objc_copyWeak(&v49, buf);
      v48 = settingsCopy;
      [v18 setCompletionBlock:v47];
      [(WFSaveSettingsOperation *)selfCopy addDependency:v18];
      keychainQueue = [(WFSaveSettingsOperation *)selfCopy keychainQueue];
      v50 = v18;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [keychainQueue addOperations:v26 waitUntilFinished:1];

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
        server4 = [settingsCopy server];
        port4 = [settingsCopy port];
        username4 = [settingsCopy username];
        *buf = 138412802;
        v52 = server4;
        v53 = 2112;
        v54 = port4;
        v55 = 2112;
        v56 = username4;
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
      protocol = [settingsCopy protocol];
      items = [settingsCopy items];
      *buf = 138412546;
      v52 = protocol;
      v53 = 2112;
      v54 = items;
      _os_log_impl(&dword_273ECD000, v33, v32, "%@ saving to SC %@", buf, 0x16u);
    }
  }

  items2 = [settingsCopy items];
  v37 = SCNetworkProtocolSetConfiguration(service, items2) == 0;

  if (v37)
  {
    v38 = WFLogForCategory(0);
    v39 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v38)
    {
      v40 = v38;
      if (os_log_type_enabled(v40, v39))
      {
        protocol2 = [settingsCopy protocol];
        ssid = [(WFSaveSettingsOperation *)selfCopy ssid];
        v43 = SCError();
        v44 = SCErrorString(v43);
        *buf = 138412802;
        v52 = protocol2;
        v53 = 2112;
        v54 = ssid;
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

- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)named interfaceName:(id)name
{
  v73 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  nameCopy = name;
  _defaultSetRetained = [(WFSaveSettingsOperation *)self _defaultSetRetained];
  if (!_defaultSetRetained)
  {
    v11 = 0;
    goto LABEL_54;
  }

  v9 = _defaultSetRetained;
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
  if (([(__CFString *)namedCopy isEqualToString:@"Automatic"]& 1) == 0)
  {
    SCNetworkSetSetName(v11, namedCopy);
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
  v63 = namedCopy;
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

        if ([v18 isEqualToString:nameCopy])
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
        v72 = nameCopy;
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
          namedCopy = v63;
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
  namedCopy = v63;
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

- (WFSaveSettingsOperation)initWithSSID:(id)d interfaceName:(id)name settings:(id)settings
{
  dCopy = d;
  nameCopy = name;
  settingsCopy = settings;
  v21.receiver = self;
  v21.super_class = WFSaveSettingsOperation;
  v11 = [(WFSaveSettingsOperation *)&v21 init];
  v12 = v11;
  if (!dCopy)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    name = 0;
    goto LABEL_7;
  }

  v13 = [dCopy copy];
  ssid = v12->_ssid;
  v12->_ssid = v13;

  if (!nameCopy)
  {
    goto LABEL_8;
  }

  v15 = [nameCopy copy];
  interfaceName = v12->_interfaceName;
  v12->_interfaceName = v15;

  if (settingsCopy && (objc_storeStrong(&v12->_settings, settings), v17 = SCPreferencesCreateWithAuthorization(0, @"com.apple.wifikit", 0, 0), (v12->_prefs = v17) != 0))
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
  selfCopy = self;
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
      ssid = [(WFSaveSettingsOperation *)selfCopy ssid];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_1_0(&dword_273ECD000, v6, v7, "Starting persisting settings for ssid: %@", v8, v9, v10, v11, v152, v154, v155, set, v159, v161, v163, v165, *v167, *&v167[8], v168, v169, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
  [v12 activate];
  v170 = selfCopy->_interfaceName;
  v164 = v12;
  userSettings = [v12 userSettings];
  oSSpecificAttributes = [userSettings OSSpecificAttributes];
  v14 = *MEMORY[0x277D298B0];
  v15 = [oSSpecificAttributes objectForKeyedSubscript:*MEMORY[0x277D298B0]];

  v162 = v15;
  if (!v15 || (-[WFSaveSettingsOperation ssid](selfCopy, "ssid"), v16 = objc_claimAutoreleasedReturnValue(), [v15 objectForKey:v16], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
  {
    dictionary = WFLogForCategory(0);
    OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && dictionary)
    {
      if (OUTLINED_FUNCTION_5(dictionary))
      {
        ssid2 = [(WFSaveSettingsOperation *)selfCopy ssid];
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_1_0(&dword_273ECD000, v32, v33, "No existing custom network settings for ssid: %@", v34, v35, v36, v37, v152, v154, v155, set, userSettings, v162, v12, v165, *v167, *&v167[8], v168, v170, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);

        v15 = v162;
      }
    }

    ssid5 = 0;
    v166 = 304;
LABEL_30:
    if (SCPreferencesLock(selfCopy->_prefs, 0) || (SCPreferencesSynchronize(selfCopy->_prefs), SCPreferencesLock(selfCopy->_prefs, 1u)))
    {
      dictionary = [v15 mutableCopy];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      ssid3 = [(WFSaveSettingsOperation *)selfCopy ssid];
      v45 = [(WFSaveSettingsOperation *)selfCopy _createNewSetForNetworkNamed:ssid3 interfaceName:v170];

      if (v45)
      {
        v46 = v45;
        v47 = SCNetworkSetGetSetID(v45);

        ssid4 = [(WFSaveSettingsOperation *)selfCopy ssid];
        [dictionary setObject:v47 forKey:ssid4];

        SCPreferencesCommitChanges(selfCopy->_prefs);
        SCPreferencesApplyChanges(selfCopy->_prefs);
        ssid5 = v47;
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
            [(WFSaveSettingsOperation *)selfCopy ssid];
            v53 = v52 = ssid5;
            OUTLINED_FUNCTION_2();
            _os_log_impl(&dword_273ECD000, v51, v50, "Failed to create new set for network named %{public}@", buf, 0xCu);

            ssid5 = v52;
          }
        }
      }

      SCPreferencesUnlock(selfCopy->_prefs);
      SCPreferencesSynchronize(selfCopy->_prefs);
      v54 = objc_alloc_init(MEMORY[0x277D02B60]);
      v192 = v14;
      v193[0] = dictionary;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:&v192 count:1];
      [v54 setOSSpecificAttributes:v55];

      v183 = 0;
      v56 = v164;
      v57 = [v164 applyUserSettings:v54 properties:0 error:&v183];
      v58 = v183;
      if ((v57 & 1) == 0)
      {
        v59 = ssid5;
        v60 = WFLogForCategory(0);
        v61 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v60 && os_log_type_enabled(v60, v61))
        {
          *buf = 138412546;
          v186 = dictionary;
          OUTLINED_FUNCTION_6();
          v188 = v58;
          _os_log_impl(&dword_273ECD000, v60, v61, "failed to apply custom network set %@, error='%@'", buf, 0x16u);
        }

        ssid5 = v59;
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
      if (WFCurrentLogLevel() && dictionary && OUTLINED_FUNCTION_4())
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
    if (WFCurrentLogLevel() && dictionary && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v186 = ssid5;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
    }

    v38 = 0;
    v80 = 0;
    LOBYTE(items2) = 1;
    goto LABEL_114;
  }

  v18 = v17;
  dictionary = WFLogForCategory(0);
  OSLogForWFLogLevel(3uLL);
  ssid5 = v17;
  if (WFCurrentLogLevel() >= 3 && dictionary && OUTLINED_FUNCTION_4())
  {
    *buf = 138543362;
    v186 = v17;
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
  }

  v166 = 304;
  v26 = SCNetworkSetCopyAll(selfCopy->_prefs);
  if (!v26)
  {
LABEL_25:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && dictionary && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v186 = v18;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    }

    goto LABEL_30;
  }

  dictionary = v26;
  Count = CFArrayGetCount(v26);
  if (Count < 1)
  {
LABEL_17:
    CFRelease(dictionary);
    v15 = v162;
    goto LABEL_25;
  }

  v28 = Count;
  v29 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(dictionary, v29);
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
  CFRelease(dictionary);
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

    LOBYTE(items2) = 0;
    v80 = 0;
LABEL_114:
    protocol = userSettings;
    v63 = v162;
    goto LABEL_129;
  }

  v156 = ssid5;
  OSLogForWFLogLevel(3uLL);
  ssid5 = &off_273F75000;
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

    LOBYTE(items2) = 0;
    goto LABEL_144;
  }

  protocol = 304;
  if (!SCPreferencesLock(selfCopy->_prefs, 0))
  {
    SCPreferencesSynchronize(selfCopy->_prefs);
    if (!SCPreferencesLock(selfCopy->_prefs, 1u))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3();
      v63 = v162;
      ssid5 = v156;
      if (WFCurrentLogLevel())
      {
        if (OUTLINED_FUNCTION_5(0x130))
        {
          v138 = SCError();
          SCErrorString(v138);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v139, v140, "SCPreferencesLock failed %{public}s", v141, v142, v143, v144, v152, v154, v156, set, userSettings, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v172, v174, obj, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
        }
      }

      LOBYTE(items2) = 0;
      v80 = 0;
      protocol = userSettings;
      goto LABEL_129;
    }
  }

  v70 = SCNetworkSetCopyServices(v38);
  items2 = v70;
  if (!v70)
  {
LABEL_144:
    v80 = 0;
    protocol = userSettings;
    v63 = v162;
    ssid5 = v156;
    goto LABEL_129;
  }

  seta = v38;
  if (CFArrayGetCount(v70) < 1)
  {
    goto LABEL_63;
  }

  protocol = 0;
  while (1)
  {
    v72 = CFArrayGetValueAtIndex(items2, protocol);
    Interface = SCNetworkServiceGetInterface(v72);
    v74 = SCNetworkInterfaceGetBSDName(Interface);
    v38 = [v74 isEqualToString:v170];

    if (v38)
    {
      break;
    }

    if (++protocol >= CFArrayGetCount(items2))
    {
      goto LABEL_63;
    }
  }

  if (v72)
  {
    v153 = items2;
    *v180 = 0u;
    v181 = 0u;
    *v178 = 0u;
    v179 = 0u;
    obja = [(WFSaveSettingsOperation *)selfCopy settings];
    v81 = [obja countByEnumeratingWithState:v178 objects:v191 count:16];
    v173 = selfCopy;
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

          ssid5 = *(v178[1] + 8 * i);
          protocol = [ssid5 protocol];
          v84 = SCNetworkServiceCopyProtocol(v72, protocol);

          if (v84)
          {
            protocol = [ssid5 protocol];
            v85 = [protocol isEqualToString:v177];

            if (v85)
            {
              [(WFSaveSettingsOperation *)selfCopy _applyProxySettings:ssid5 service:v84];
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
                  protocol2 = [ssid5 protocol];
                  items = [ssid5 items];
                  *buf = v171[0];
                  v186 = protocol2;
                  OUTLINED_FUNCTION_6();
                  v188 = v91;
                  _os_log_impl(&dword_273ECD000, v88, v87, "%@ saving to SC %@", buf, 0x16u);

                  selfCopy = v173;
                }

                v56 = v174;
              }

              items2 = [ssid5 items];
              protocol = SCNetworkProtocolSetConfiguration(v84, items2);

              if (!protocol)
              {
                v92 = WFLogForCategory(0);
                v93 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v92)
                {
                  protocol = v92;
                  if (os_log_type_enabled(protocol, v93))
                  {
                    items2 = [ssid5 protocol];
                    ssid5 = [(WFSaveSettingsOperation *)selfCopy ssid];
                    v94 = SCError();
                    SCErrorString(v94);
                    *buf = *v167;
                    v186 = items2;
                    OUTLINED_FUNCTION_6();
                    v188 = ssid5;
                    v189 = 2080;
                    v190 = v95;
                    _os_log_impl(&dword_273ECD000, protocol, v93, "WiFi: Couldn't set configuration for %@ for %@: %s", buf, 0x20u);
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
    if ([(WFSaveSettingsOperation *)selfCopy isCurrentNetwork]&& !SCNetworkSetSetCurrent(seta))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3();
      if (WFCurrentLogLevel() && protocol)
      {
        if (OUTLINED_FUNCTION_5(protocol))
        {
          v145 = SCError();
          SCErrorString(v145);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v146, v147, "SCNetworkSetSetCurrent failed: %{public}s", v148, v149, v150, v151, v153, 304, v156, seta, userSettings, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
        }

        selfCopy = v173;
      }

      OUTLINED_FUNCTION_7();
    }

    else
    {
      v63 = v162;
      v56 = v164;
      ssid5 = v156;
      if (SCPreferencesCommitChanges(selfCopy->_prefs))
      {
        if (SCPreferencesApplyChanges(selfCopy->_prefs))
        {
          if (!SCPreferencesUnlock(selfCopy->_prefs))
          {
            WFLogForCategory(0);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3();
            if (WFCurrentLogLevel() && protocol)
            {
              if (OUTLINED_FUNCTION_5(protocol))
              {
                v96 = SCError();
                SCErrorString(v96);
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_1_0(&dword_273ECD000, v97, v98, "WiFi: SCPreferencesUnlock failed: %{public}s", v99, v100, v101, v102, v153, 304, v156, seta, userSettings, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
              }

              v38 = seta;
            }
          }

          SCPreferencesSynchronize(selfCopy->_prefs);
        }

        else
        {
          WFLogForCategory(0);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3();
          if (WFCurrentLogLevel() && protocol)
          {
            if (OUTLINED_FUNCTION_5(protocol))
            {
              v120 = SCError();
              SCErrorString(v120);
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_1_0(&dword_273ECD000, v121, v122, "WiFi: SCPreferencesApplyChanges failed: %{public}s", v123, v124, v125, v126, v153, 304, v156, seta, userSettings, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
            }

            v38 = seta;
          }

          SCPreferencesUnlock(selfCopy->_prefs);
        }
      }

      else
      {
        WFLogForCategory(0);
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3();
        if (WFCurrentLogLevel() && protocol)
        {
          if (OUTLINED_FUNCTION_5(protocol))
          {
            v113 = SCError();
            SCErrorString(v113);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_1_0(&dword_273ECD000, v114, v115, "WiFi: SCPreferencesCommitChanges failed: %{public}s", v116, v117, v118, v119, v153, 304, v156, seta, userSettings, v162, v164, 304, *v167, *&v167[8], v168, v170, v171[0], v171[1], v173, v174, obja, v177, v178[0], v178[1], v179, *(&v179 + 1), v180[0], v180[1], v181, *(&v181 + 1), v182, v183, v184.receiver, v184.super_class, buf[0]);
          }

          v38 = seta;
        }
      }

      LOBYTE(items2) = 0;
      protocol = userSettings;
    }

    v80 = v153;
  }

  else
  {
LABEL_63:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel() && protocol && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      v187 = 2114;
      v188 = items2;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v75, v76, v77, v78, v79, 0x16u);
    }

    OUTLINED_FUNCTION_7();
    v80 = items2;
  }

LABEL_129:
  SCPreferencesUnlock(*(&selfCopy->super.super.super.isa + v166));
  if (v80)
  {
    CFRelease(v80);
  }

  if ((items2 & 1) == 0)
  {
    CFRelease(v38);
  }

  [(WFOperation *)selfCopy finish];

  v127 = *MEMORY[0x277D85DE8];
}

@end