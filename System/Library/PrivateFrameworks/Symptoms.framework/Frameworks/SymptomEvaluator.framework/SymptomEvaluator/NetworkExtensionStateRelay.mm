@interface NetworkExtensionStateRelay
- (BOOL)_createSessionForNEConfiguration:(id)a3 queue:(id)a4;
- (BOOL)_setupNetworkExtensionSessionMonitors:(id)a3;
- (NetworkExtensionStateRelay)initWithQueue:(id)a3;
- (void)_removeNESessionWatchers;
- (void)_setUpNEConfigurationChangedWatcher:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NetworkExtensionStateRelay

- (NetworkExtensionStateRelay)initWithQueue:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NetworkExtensionStateRelay;
  v5 = [(NetworkExtensionStateRelay *)&v11 init];
  v6 = v5;
  if (v5)
  {
    vpnConnSessions = v5->_vpnConnSessions;
    v5->_vpnConnSessions = 0;

    contentFilterSessions = v6->_contentFilterSessions;
    v6->_contentFilterSessions = 0;

    dnsProxySessions = v6->_dnsProxySessions;
    v6->_dnsProxySessions = 0;

    [(NetworkExtensionStateRelay *)v6 _setupNetworkExtensionSessionMonitors:v4];
  }

  return v6;
}

- (void)dealloc
{
  [(NetworkExtensionStateRelay *)self _removeNESessionWatchers];
  vpnConnSessions = self->_vpnConnSessions;
  self->_vpnConnSessions = 0;

  contentFilterSessions = self->_contentFilterSessions;
  self->_contentFilterSessions = 0;

  dnsProxySessions = self->_dnsProxySessions;
  self->_dnsProxySessions = 0;

  v6.receiver = self;
  v6.super_class = NetworkExtensionStateRelay;
  [(NetworkExtensionStateRelay *)&v6 dealloc];
}

- (BOOL)_createSessionForNEConfiguration:(id)a3 queue:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v49 = 138412290;
    v50 = v6;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "NEStateRelay: Configuration: %@", &v49, 0xCu);
  }

  v9 = [v6 VPN];
  if ([v9 isEnabled])
  {
  }

  else
  {
    v10 = [v6 VPN];
    v11 = [v10 isOnDemandEnabled];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v12 = [SFVPNConnSession alloc];
  v13 = [v6 identifier];
  v14 = [(SFVPNConnSession *)v12 initWithQueue:v7 configID:v13];

  if (!v14)
  {
    v41 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v42 = v41;
    v43 = [v6 identifier];
    v49 = 138412290;
    v50 = v43;
    v44 = "NEStateRelay: Failed to create an NE session to monitor VPN connection: %@";
LABEL_33:
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, v44, &v49, 0xCu);

    goto LABEL_34;
  }

  if (!self->_vpnConnSessions)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vpnConnSessions = self->_vpnConnSessions;
    self->_vpnConnSessions = v15;
  }

  [(SFVPNConnSession *)v14 addObserver:self forKeyPath:@"connected" options:1 context:2];
  [(NSMutableArray *)self->_vpnConnSessions addObject:v14];
  v17 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = [v6 identifier];
    v49 = 138412290;
    v50 = v19;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor VPN connection: %@", &v49, 0xCu);
  }

LABEL_12:
  v20 = [v6 contentFilter];
  v21 = [v20 isEnabled];

  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = [SFContentFilterSession alloc];
  v23 = [v6 identifier];
  v24 = [(SFContentFilterSession *)v22 initWithQueue:v7 configID:v23];

  if (!v24)
  {
    v45 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v42 = v45;
    v43 = [v6 identifier];
    v49 = 138412290;
    v50 = v43;
    v44 = "NEStateRelay: Failed to create an NE session to monitor Content Filter connection: %@";
    goto LABEL_33;
  }

  if (!self->_contentFilterSessions)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentFilterSessions = self->_contentFilterSessions;
    self->_contentFilterSessions = v25;
  }

  [(SFContentFilterSession *)v24 addObserver:self forKeyPath:@"connected" options:1 context:3];
  [(NSMutableArray *)self->_contentFilterSessions addObject:v24];
  v27 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v28 = v27;
    v29 = [v6 identifier];
    v49 = 138412290;
    v50 = v29;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor Content Filter connection: %@", &v49, 0xCu);
  }

LABEL_19:
  v30 = [v6 dnsProxy];
  v31 = [v30 isEnabled];

  if (v31)
  {
    v32 = [SFDNSProxySession alloc];
    v33 = [v6 identifier];
    v34 = [(SFDNSProxySession *)v32 initWithQueue:v7 configID:v33];

    if (v34)
    {
      if (!self->_dnsProxySessions)
      {
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        dnsProxySessions = self->_dnsProxySessions;
        self->_dnsProxySessions = v35;
      }

      [(SFDNSProxySession *)v34 addObserver:self forKeyPath:@"connected" options:1 context:4];
      [(NSMutableArray *)self->_dnsProxySessions addObject:v34];
      v37 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        v38 = v37;
        v39 = [v6 identifier];
        v49 = 138412290;
        v50 = v39;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor DNS Proxy connection: %@", &v49, 0xCu);
      }

      goto LABEL_26;
    }

    v46 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v42 = v46;
      v43 = [v6 identifier];
      v49 = 138412290;
      v50 = v43;
      v44 = "NEStateRelay: Failed to create an NE session to monitor DNS Proxy connection: %@";
      goto LABEL_33;
    }

LABEL_34:
    v40 = 0;
    goto LABEL_35;
  }

LABEL_26:
  v40 = 1;
LABEL_35:

  v47 = *MEMORY[0x277D85DE8];
  return v40;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6 = a6;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = otherLogHandle;
  v14 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG);
  if (v10 && v11 && v12)
  {
    if (v14)
    {
      v33 = 138412546;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NEStateRelay: Update for keypath %@ of object %@", &v33, 0x16u);
    }

    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_14;
      }

      v33 = 138412546;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v17 = "NEStateRelay: Ignoring null value for keypath %@ of object %@";
      v18 = v16;
      v19 = 22;
LABEL_10:
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, v17, &v33, v19);
      goto LABEL_11;
    }

    switch(v6)
    {
      case 4:
        v29 = [v15 BOOLValue];
        if (self->_dnsProxyConnected == v29)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setDnsProxyConnected:v29];
        v30 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v23 = v30;
        v31 = [(NetworkExtensionStateRelay *)self dnsProxyConnected];
        v33 = 67109120;
        LODWORD(v34) = v31;
        v25 = "NEStateRelay: DNS proxy state changed to %u";
        break;
      case 3:
        v26 = [v15 BOOLValue];
        if (self->_contentFilterConnected == v26)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setContentFilterConnected:v26];
        v27 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v23 = v27;
        v28 = [(NetworkExtensionStateRelay *)self contentFilterConnected];
        v33 = 67109120;
        LODWORD(v34) = v28;
        v25 = "NEStateRelay: Content filter state changed to %u";
        break;
      case 2:
        v21 = [v15 BOOLValue];
        if (self->_vpnConnected == v21)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setVpnConnected:v21];
        v22 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v23 = v22;
        v24 = [(NetworkExtensionStateRelay *)self vpnConnected];
        v33 = 67109120;
        LODWORD(v34) = v24;
        v25 = "NEStateRelay: VPN state changed to %u";
        break;
      default:
        v32 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        LOWORD(v33) = 0;
        v17 = "NEStateRelay: Invalid context string passed to KVO.";
        v18 = v32;
        v19 = 2;
        goto LABEL_10;
    }

    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, v25, &v33, 8u);

    goto LABEL_11;
  }

  if (v14)
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NEStateRelay: Skipping observation of invalid value", &v33, 2u);
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupNetworkExtensionSessionMonitors:(id)a3
{
  v4 = a3;
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NEStateRelay: Setting up Session Watchers...", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NetworkExtensionStateRelay__setupNetworkExtensionSessionMonitors___block_invoke;
  v10[3] = &unk_27898F1E0;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = buf;
  [v6 loadConfigurationsWithCompletionQueue:v7 handler:v10];
  v8 = v14[24];

  _Block_object_dispose(buf, 8);
  return v8;
}

void __68__NetworkExtensionStateRelay__setupNetworkExtensionSessionMonitors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      v8 = "NEStateRelay: Failed to load Network Extension configuration with error: %@.";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 12;
LABEL_4:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, v11);
    }
  }

  else
  {
    if (!v5)
    {
      v16 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v8 = "NEStateRelay: No NEConfigurations found.";
      v9 = v16;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 2;
      goto LABEL_4;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) _createSessionForNEConfiguration:*(*(&v18 + 1) + 8 * i) queue:*(a1 + 40)];
        }

        v13 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_setUpNEConfigurationChangedWatcher:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  objc_initWeak(&location, v5);

  v6 = objc_loadWeakRetained(&location);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke;
  v8[3] = &unk_27898F230;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v9 = v7;
  v10 = self;
  [v6 setChangedQueue:v7 andHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke_2;
        v14[3] = &unk_27898F208;
        v13 = *(a1 + 32);
        v11 = v13.i64[0];
        v15 = vextq_s8(v13, v13, 8uLL);
        [WeakRetained loadConfigurationWithID:v10 withCompletionQueue:v11 handler:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      [*(a1 + 32) _createSessionForNEConfiguration:v5 queue:*(a1 + 40)];
      goto LABEL_9;
    }

    v12 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    LOWORD(v14) = 0;
    v8 = "NEStateRelay: No NEConfiguration to update.";
    v9 = v12;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 2;
    goto LABEL_4;
  }

  v7 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    v8 = "NEStateRelay: Failed to load Network Extension configuration: loadConfigurationWithID failed. error: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
LABEL_4:
    _os_log_impl(&dword_23255B000, v9, v10, v8, &v14, v11);
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeNESessionWatchers
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = self->_vpnConnSessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v27 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"connected"];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_contentFilterSessions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v23 + 1) + 8 * v12++) removeObserver:self forKeyPath:@"connected"];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_dnsProxySessions;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17++) removeObserver:self forKeyPath:{@"connected", v19}];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end