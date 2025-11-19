@interface WFKnownNetworksManager
- (BOOL)removeNetworks:(id)a3;
- (WFKnownNetworksManager)initWithInterface:(id)a3;
- (id)allEditableNetworkProfiles;
- (id)allNonEditableNetworkProfiles;
- (id)passwordForNetworksWithSSID:(id)a3;
- (id)privateAddressConfigForNetworkName:(id)a3;
@end

@implementation WFKnownNetworksManager

- (WFKnownNetworksManager)initWithInterface:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WFKnownNetworksManager;
  v6 = [(WFKnownNetworksManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_interface, a3);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
      interface = v7->_interface;
      v7->_interface = v8;

      [(CWFInterface *)v7->_interface resume];
    }

    v10 = objc_alloc_init(WFPrivateAddressConfigManager);
    privateAddressConfigManager = v7->_privateAddressConfigManager;
    v7->_privateAddressConfigManager = v10;

    if (!v7->_privateAddressConfigManager)
    {
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
      {
        *buf = 136315138;
        v18 = "[WFKnownNetworksManager initWithInterface:]";
        _os_log_impl(&dword_273ECD000, v12, v13, "%s: failed to create WFPrivateAddressConfigManager", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)allNonEditableNetworkProfiles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isProfileBased])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)allEditableNetworkProfiles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isProfileBased] & 1) == 0 && objc_msgSend(v9, "shouldShowInKnownNetworkList"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)removeNetworks:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      *buf = 134217984;
      v39 = [v3 count];
      _os_log_impl(&dword_273ECD000, v6, v5, "Trying to forget %lu networks.", buf, 0xCu);
    }
  }

  if (v3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v30 = v3;
      v10 = 0;
      v11 = *v35;
      v12 = 1;
      obj = v7;
      do
      {
        v13 = 0;
        v14 = v10;
        do
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v13);
          if (!v15)
          {
            v16 = WFLogForCategory(0);
            v17 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v17))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v16, v17, "Invalid CWFNetworkProfile object.", buf, 2u);
            }
          }

          v18 = WFLogForCategory(0);
          v19 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v18)
          {
            v20 = v18;
            if (os_log_type_enabled(v20, v19))
            {
              v21 = [v15 networkName];
              *buf = 138412290;
              v39 = v21;
              _os_log_impl(&dword_273ECD000, v20, v19, "Trying to forget network: %@", buf, 0xCu);
            }
          }

          interface = self->_interface;
          v33 = v14;
          [(CWFInterface *)interface removeKnownNetworkProfile:v15 reason:2 error:&v33];
          v10 = v33;

          if ([v10 code])
          {
            v23 = WFLogForCategory(0);
            v24 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v23)
            {
              v25 = v23;
              if (os_log_type_enabled(v25, v24))
              {
                v26 = [v15 networkName];
                *buf = 138412546;
                v39 = v10;
                v40 = 2112;
                v41 = v26;
                _os_log_impl(&dword_273ECD000, v25, v24, "Error:%@ happen when trying to remove network profile for %@", buf, 0x16u);
              }
            }

            v12 = 0;
          }

          ++v13;
          v14 = v10;
        }

        while (v9 != v13);
        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v9);

      v3 = v30;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v7 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(1uLL);
    v12 = 0;
    if (WFCurrentLogLevel() && v7)
    {
      if (os_log_type_enabled(v7, v27))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v7, v27, "No networks to delete, return function.", buf, 2u);
      }

      v12 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (id)passwordForNetworksWithSSID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [v10 networkName];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v13];
    v15 = [(WFNetworkProfile *)v14 password];
  }

  else
  {
LABEL_9:

LABEL_12:
    v13 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    v15 = 0;
    if (WFCurrentLogLevel() && v13)
    {
      if (os_log_type_enabled(v13, v16))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_impl(&dword_273ECD000, v13, v16, "failed to find password for network '%@'", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)privateAddressConfigForNetworkName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFKnownNetworksManager *)self privateAddressConfigManager];
  v6 = [v5 privateAddressConfig];

  if (!v6)
  {
    [WFKnownNetworksManager privateAddressConfigForNetworkName:?];
LABEL_12:

    v15 = 0;
    goto LABEL_14;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (!v8)
  {
LABEL_10:

LABEL_11:
    [(WFKnownNetworksManager *)v4 privateAddressConfigForNetworkName:?];
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v19;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v19 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v18 + 1) + 8 * v11);
    v13 = [v12 objectForKeyedSubscript:{@"SSID_STR", v18}];
    v14 = [v13 isEqualToString:v4];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v15 = v12;

  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)privateAddressConfigForNetworkName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138412290;
    v8 = a1;
    _os_log_impl(&dword_273ECD000, v4, v5, "nil private address config for network '%@'", &v7, 0xCu);
  }

  *a2 = v4;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)privateAddressConfigForNetworkName:(NSObject *)a1 .cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v2, v3, "nil private address configs", v4, 2u);
  }

  *a1 = v2;
}

@end