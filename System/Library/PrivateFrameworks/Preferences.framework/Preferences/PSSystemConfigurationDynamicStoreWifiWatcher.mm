@interface PSSystemConfigurationDynamicStoreWifiWatcher
+ (BOOL)wifiEnabled;
+ (id)sharedInstance;
- (PSSystemConfigurationDynamicStoreWifiWatcher)init;
- (id)_wifiNameWithState:(id)state;
- (id)_wifiPowerWithState:(id)state;
- (id)_wifiTetheringWithState:(id)state;
- (id)wifiConfig;
- (void)dealloc;
- (void)findKeysAirPortState:(id *)state andTetheringState:(id *)tetheringState;
@end

@implementation PSSystemConfigurationDynamicStoreWifiWatcher

+ (id)sharedInstance
{
  if (sharedInstance_cacheOnce_71 != -1)
  {
    +[PSSystemConfigurationDynamicStoreWifiWatcher sharedInstance];
  }

  v3 = sharedInstance___dynamicStoreSharedInstance;

  return v3;
}

void __62__PSSystemConfigurationDynamicStoreWifiWatcher_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSSystemConfigurationDynamicStoreWifiWatcher);
  v1 = sharedInstance___dynamicStoreSharedInstance;
  sharedInstance___dynamicStoreSharedInstance = v0;
}

+ (BOOL)wifiEnabled
{
  v2 = +[PSSystemConfigurationDynamicStoreWifiWatcher sharedInstance];
  wifiConfig = [v2 wifiConfig];
  v4 = [wifiConfig objectForKey:@"wifiPower"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)findKeysAirPortState:(id *)state andTetheringState:(id *)tetheringState
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69822F0];
  v8 = *MEMORY[0x1E6982318];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982318]);
  if (NetworkInterfaceEntity)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithObject:NetworkInterfaceEntity];
    SCDynamicStoreSetNotificationKeys(self->_prefs, v10, 0);
  }

  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, v7);
  if (!NetworkInterface)
  {
    goto LABEL_33;
  }

  v12 = NetworkInterface;
  v13 = SCDynamicStoreCopyValue(self->_prefs, NetworkInterface);
  CFRelease(v12);
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = CFGetTypeID(v13);
  if (v14 != CFDictionaryGetTypeID() || (v15 = *MEMORY[0x1E69822F8], !CFDictionaryContainsKey(v13, *MEMORY[0x1E69822F8])) || (Value = CFDictionaryGetValue(v13, v15)) == 0 || (v17 = Value, v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()))
  {
    CFRelease(v13);
    goto LABEL_33;
  }

  tetheringStateCopy = tetheringState;
  stateCopy = state;
  if (CFArrayGetCount(v17))
  {
    v19 = socket(2, 2, 0);
    if (v19 == -1)
    {
      [PSSystemConfigurationDynamicStoreWifiWatcher findKeysAirPortState:andTetheringState:];
    }

    else
    {
      v20 = v19;
      theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        if (CFArrayGetCount(v17) >= 1)
        {
          v21 = 0;
          do
          {
            memset(v83, 0, 44);
            *buffer = 0;
            v82 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v21);
            if (ValueAtIndex)
            {
              v23 = ValueAtIndex;
              CFStringGetCString(ValueAtIndex, buffer, 16, 0);
              if (buffer[0])
              {
                __strcpy_chk();
                if (!ioctl(v20, 0xC02C6938uLL, v83) && (v83[1] & 0xE0) == 0x80)
                {
                  CFArrayAppendValue(theArray, v23);
                }
              }

              else
              {
                v24 = _PSLoggingFacility();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v80 = "__WiFiManagerCopyAirPortInterfaces";
                  _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "%s, interfaceCName is zero length.", buf, 0xCu);
                }
              }
            }

            ++v21;
          }

          while (v21 < CFArrayGetCount(v17));
        }

        v25 = theArray;
        Count = CFArrayGetCount(theArray);
        close(v20);
        if (Count)
        {
          goto LABEL_26;
        }

        CFRelease(theArray);
      }

      else
      {
        close(v20);
      }
    }
  }

  v25 = 0;
LABEL_26:
  CFRelease(v13);
  wifiKey = self->_wifiKey;
  theArraya = v25;
  selfCopy = self;
  if (wifiKey)
  {
    v28 = SCDynamicStoreCopyValue(self->_prefs, wifiKey);
    if (v28)
    {
      v29 = v28;
      if (stateCopy)
      {
        v30 = CFGetTypeID(v28);
        if (v30 == CFDictionaryGetTypeID())
        {
          v31 = v29;
          *stateCopy = v29;
        }
      }

      CFRelease(v29);
    }
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v32 = v25;
    v33 = [(__CFArray *)v32 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v74;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v74 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v73 + 1) + 8 * i);
          v38 = CFGetTypeID(v37);
          if (v38 == CFStringGetTypeID() && CFStringFind(v37, @"lo", 8uLL).location == -1)
          {
            v39 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v37, v8);
            if (v39)
            {
              v40 = v39;
              v41 = SCDynamicStoreCopyValue(selfCopy->_prefs, v39);
              if (v41)
              {
                v42 = v41;
                v43 = selfCopy->_wifiKey;
                if (v43)
                {
                  CFRelease(v43);
                }

                wifiInterface = selfCopy->_wifiInterface;
                if (wifiInterface)
                {
                  CFRelease(wifiInterface);
                }

                selfCopy->_wifiKey = v40;
                selfCopy->_wifiInterface = CFRetain(v37);
                if (stateCopy)
                {
                  v45 = CFGetTypeID(v42);
                  if (v45 == CFDictionaryGetTypeID())
                  {
                    v46 = v42;
                    *stateCopy = v42;
                  }
                }

                CFRelease(v42);
                goto LABEL_55;
              }

              CFRelease(v40);
            }
          }
        }

        v34 = [(__CFArray *)v32 countByEnumeratingWithState:&v73 objects:v78 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    v25 = theArraya;
    self = selfCopy;
  }

  if (self->_wifiInterface)
  {
    [(__CFArray *)v25 removeObjectIdenticalTo:?];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v47 = v25;
    v48 = [(__CFArray *)v47 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v70;
      v51 = *MEMORY[0x1E6982350];
      while (2)
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v70 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v69 + 1) + 8 * j);
          v54 = CFGetTypeID(v53);
          if (v54 == CFStringGetTypeID() && CFStringFind(v53, @"lo", 8uLL).location == -1)
          {
            v55 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v53, v51);
            if (v55)
            {
              v56 = v55;
              v57 = SCDynamicStoreCopyValue(selfCopy->_prefs, v55);
              if (v57)
              {
                v58 = v57;
                tetheringLink = selfCopy->_tetheringLink;
                if (tetheringLink)
                {
                  CFRelease(tetheringLink);
                }

                selfCopy->_tetheringLink = v56;
                if (tetheringStateCopy)
                {
                  v60 = CFGetTypeID(v58);
                  if (v60 == CFDictionaryGetTypeID())
                  {
                    v61 = v58;
                    *tetheringStateCopy = v58;
                  }
                }

                CFRelease(v58);
                goto LABEL_76;
              }

              CFRelease(v56);
            }
          }
        }

        v49 = [(__CFArray *)v47 countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_76:

    v25 = theArraya;
    self = selfCopy;
  }

  v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v63 = v62;
  if (self->_wifiKey)
  {
    [v62 addObject:?];
    if (self->_tetheringLink)
    {
      [v63 addObject:?];
    }

    SCDynamicStoreSetNotificationKeys(self->_prefs, v63, 0);
  }

LABEL_33:
}

- (id)_wifiTetheringWithState:(id)state
{
  v3 = [state objectForKey:*MEMORY[0x1E6982548]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  v5 = v4;

  return v5;
}

- (id)_wifiPowerWithState:(id)state
{
  v3 = [state objectForKey:@"POWER"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:0];
LABEL_6:

  return v4;
}

- (id)_wifiNameWithState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy objectForKey:@"WiFiNetworkType"];
  v5 = v4;
  if (v4 && [v4 intValue] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [stateCopy objectForKey:@"SSID_STR"];
  }

  return v6;
}

- (id)wifiConfig
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  wifiKey = self->_wifiKey;
  if (wifiKey && self->_tetheringLink)
  {
    v5 = SCDynamicStoreCopyValue(self->_prefs, wifiKey);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        CFRelease(v6);
        v6 = 0;
      }
    }

    v8 = SCDynamicStoreCopyValue(self->_prefs, self->_tetheringLink);
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 != CFDictionaryGetTypeID())
      {
        CFRelease(v9);
        v9 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    [(PSSystemConfigurationDynamicStoreWifiWatcher *)self findKeysAirPortState:&v16 andTetheringState:&v15];
    v6 = v16;
    v9 = v15;
  }

  v11 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiNameWithState:v6];
  if (v11)
  {
    [v3 setObject:v11 forKey:@"wifiName"];
  }

  v12 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiPowerWithState:v6];
  if (v12)
  {
    [v3 setObject:v12 forKey:@"wifiPower"];
  }

  v13 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiTetheringWithState:v9];
  if (v13)
  {
    [v3 setObject:v13 forKey:@"wifiTethering"];
  }

  return v3;
}

- (PSSystemConfigurationDynamicStoreWifiWatcher)init
{
  v8.receiver = self;
  v8.super_class = PSSystemConfigurationDynamicStoreWifiWatcher;
  v2 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7.version = 0;
    memset(&v7.retain, 0, 24);
    v7.info = v2;
    v4 = SCDynamicStoreCreateWithOptions(0, @"com.apple.preferences", 0, WifiStateChanged, &v7);
    v3->_prefs = v4;
    if (!v4)
    {
      v5 = 0;
      goto LABEL_6;
    }

    SCDynamicStoreSetDispatchQueue(v4, MEMORY[0x1E69E96A0]);
  }

  v5 = v3;
LABEL_6:

  return v5;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    SCDynamicStoreSetDispatchQueue(prefs, 0);
    CFRelease(self->_prefs);
  }

  wifiKey = self->_wifiKey;
  if (wifiKey)
  {
    CFRelease(wifiKey);
  }

  wifiInterface = self->_wifiInterface;
  if (wifiInterface)
  {
    CFRelease(wifiInterface);
  }

  tetheringLink = self->_tetheringLink;
  if (tetheringLink)
  {
    CFRelease(tetheringLink);
  }

  v7.receiver = self;
  v7.super_class = PSSystemConfigurationDynamicStoreWifiWatcher;
  [(PSSystemConfigurationDynamicStoreWifiWatcher *)&v7 dealloc];
}

- (void)findKeysAirPortState:andTetheringState:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _PSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "__WiFiManagerCopyAirPortInterfaces";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "Socket creation failed at %s", &v1, 0xCu);
  }
}

@end