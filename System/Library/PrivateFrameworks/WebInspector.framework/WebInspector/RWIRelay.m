@interface RWIRelay
- (RWIRelay)init;
- (id)_allApplicationDetails;
- (id)_allDriverDetails;
- (void)_addPendingClientConnection:(id)a3;
- (void)_applicationConnected:(id)a3;
- (void)_applicationDisconnected:(id)a3;
- (void)_applicationUpdated:(id)a3;
- (void)_disconnectApplicationConnect:(id)a3;
- (void)_driverConnected:(id)a3;
- (void)_driverDisconnected:(id)a3;
- (void)_driverUpdated:(id)a3;
- (void)_dumpApplication:(id)a3 withOrdinal:(unint64_t)a4;
- (void)_dumpClientConnection:(id)a3 withOrdinal:(unint64_t)a4;
- (void)_finalizePendingClientConnection:(id)a3 withIdentifier:(id)a4;
- (void)_handleApplicationListenConnectionEvent:(id)a3;
- (void)_handleDumpStateNotification;
- (void)_proxyApplicationConnected:(id)a3;
- (void)_proxyApplicationResponse:(id)a3 userInfo:(id)a4;
- (void)_receivedAutomaticInspectionCandidate:(id)a3 connection:(id)a4;
- (void)_receivedDataMessage:(id)a3 connection:(id)a4;
- (void)_receivedListingMessage:(id)a3 connection:(id)a4;
- (void)_receivedProxyApplicationSetupResponseMessage:(id)a3 connection:(id)a4;
- (void)_reportCurrentStateToAllClients;
- (void)_reportCurrentStateToClient:(id)a3;
- (void)_rpc_debuggerDidWake:(id)a3;
- (void)_rpc_debuggerWillSleep:(id)a3;
- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)a3;
- (void)_rpc_forwardAutomaticInspectionRejection:(id)a3;
- (void)_rpc_forwardAutomationSessionRequest:(id)a3;
- (void)_rpc_forwardDidClose:(id)a3;
- (void)_rpc_forwardDriverStateChangeRequest:(id)a3;
- (void)_rpc_forwardGetListing:(id)a3;
- (void)_rpc_forwardIndicateWebView:(id)a3;
- (void)_rpc_forwardSocketData:(id)a3;
- (void)_rpc_forwardSocketSetup:(id)a3;
- (void)_rpc_forwardWakeUpDebuggables:(id)a3;
- (void)_rpc_getConnectedApplications:(id)a3;
- (void)_rpc_getConnectedDrivers:(id)a3;
- (void)_rpc_reportDriverConnected:(id)a3;
- (void)_rpc_reportDriverDisconnected:(id)a3;
- (void)_rpc_reportDriverUpdated:(id)a3;
- (void)_rpc_reportIdentifier:(id)a3;
- (void)_rpc_requestApplicationLaunch:(id)a3;
- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)a3;
- (void)clientConnectionDidClose:(id)a3;
- (void)setup;
- (void)shutdownIfDisabled;
- (void)xpcConnection:(id)a3 receivedMessage:(id)a4 userInfo:(id)a5;
- (void)xpcConnectionFailed:(id)a3;
@end

@implementation RWIRelay

- (RWIRelay)init
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = RWIRelay;
  v2 = [(RWIRelay *)&v39 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applicationConnections = v2->_applicationConnections;
    v2->_applicationConnections = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    driverInterfaces = v2->_driverInterfaces;
    v2->_driverInterfaces = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingClientConnections = v2->_pendingClientConnections;
    v2->_pendingClientConnections = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingProxyApplicationConnections = v2->_pendingProxyApplicationConnections;
    v2->_pendingProxyApplicationConnections = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    automaticInspectionDebuggers = v2->_automaticInspectionDebuggers;
    v2->_automaticInspectionDebuggers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    automaticInspectionSessions = v2->_automaticInspectionSessions;
    v2->_automaticInspectionSessions = v15;

    [(RWIRelay *)v2 _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
    v17 = MEMORY[0x277D85CD0];
    mach_service = xpc_connection_create_mach_service("com.apple.webinspector", MEMORY[0x277D85CD0], 1uLL);
    xpcApplicationListenConnection = v2->_xpcApplicationListenConnection;
    v2->_xpcApplicationListenConnection = mach_service;

    v20 = v2->_xpcApplicationListenConnection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __16__RWIRelay_init__block_invoke;
    handler[3] = &unk_279EAA450;
    v21 = v2;
    v38 = v21;
    xpc_connection_set_event_handler(v20, handler);
    xpc_connection_resume(v2->_xpcApplicationListenConnection);
    out_token = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __16__RWIRelay_init__block_invoke_2;
    v34[3] = &unk_279EAC0D0;
    v22 = v21;
    v35 = v22;
    notify_register_dispatch("com.apple.webinspectord.enabled", &out_token, v17, v34);

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __16__RWIRelay_init__block_invoke_10;
    v32[3] = &unk_279EAC0D0;
    v23 = v22;
    v33 = v23;
    notify_register_dispatch("com.apple.webinspectord.disabled", &out_token, v17, v32);

    notify_register_dispatch("com.apple.webinspectord.availability_check", &out_token, v17, &__block_literal_global_0);
    notify_post("com.apple.webinspectord.available");
    v24 = RWIDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v41 = "com.apple.webinspectord.available";
      _os_log_impl(&dword_273C9C000, v24, OS_LOG_TYPE_INFO, "notify post for %s", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v25 addObserver:v23 selector:sel__developerPreferencesChanged name:@"_SFDeveloperPreferencesDidChangeNotification" object:0];

    if (isInternalInstall())
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __16__RWIRelay_init__block_invoke_18;
      v30[3] = &unk_279EAC0D0;
      v31 = v23;
      v26 = MEMORY[0x277D85CD0];
      notify_register_dispatch("com.apple.webinspectord.debug_dump_state", &out_token, MEMORY[0x277D85CD0], v30);
    }

    v27 = v23;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __16__RWIRelay_init__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "com.apple.webinspectord.enabled";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v5, 0xCu);
  }

  result = [*(*(a1 + 32) + 48) relay:*(a1 + 32) remoteInspectionEnablementDidChange:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __16__RWIRelay_init__block_invoke_10(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.webinspectord.disabled";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v3, 0xCu);
  }

  [*(a1 + 32) _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
  [*(*(a1 + 32) + 48) relay:*(a1 + 32) remoteInspectionEnablementDidChange:0];
  exit(0);
}

uint64_t __16__RWIRelay_init__block_invoke_12()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = RWIDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.webinspectord.availability_check";
    _os_log_impl(&dword_273C9C000, v0, OS_LOG_TYPE_INFO, "notify handler for %s", &v3, 0xCu);
  }

  result = notify_post("com.apple.webinspectord.available");
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __16__RWIRelay_init__block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "com.apple.webinspectord.debug_dump_state";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v5, 0xCu);
  }

  result = [*(a1 + 32) _handleDumpStateNotification];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setup
{
  [(RWIRelayDelegate *)self->_delegate relayInitialize:self];
  delegate = self->_delegate;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[RWIRelayDelegate relay:remoteInspectionEnablementDidChange:](delegate, "relay:remoteInspectionEnablementDidChange:", self, [v4 BOOLForKey:@"RemoteInspectorEnabled"]);
}

- (void)shutdownIfDisabled
{
  if (MGGetSInt32Answer() != 7)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"RemoteInspectorEnabled"];

    if ((v4 & 1) == 0)
    {
      v5 = RWIDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Shutting Down, Preference Disabled", v6, 2u);
      }

      [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
      notify_post("com.apple.webinspectord.disabled");
      exit(0);
    }
  }
}

- (id)_allApplicationDetails
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_applicationConnections;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v9, v15];
        v11 = [v10 dictionaryRepresentation];
        [v3 setObject:v11 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19 = @"WIRApplicationDictionaryKey";
  v20 = v3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_allDriverDetails
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_driverInterfaces;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v9, v15];
        v11 = [v10 dictionaryRepresentation];
        [v3 setObject:v11 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19 = @"WIRDriverDictionaryKey";
  v20 = v3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)a3
{
  LODWORD(v3) = a3;
  v7 = *MEMORY[0x277D85DE8];
  if (_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken || !notify_register_check("com.apple.webinspectord.automatic_inspection_enabled", &_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken))
  {
    v4 = RWIDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_273C9C000, v4, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Configuration Changed : enabled(%d)", v6, 8u);
    }

    v3 = v3;
    if (isInternalInstall() && isSimulatingCustomerInstall())
    {
      v3 = v3 | 0x8000000000000000;
    }

    notify_set_state(_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken, v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dumpClientConnection:(id)a3 withOrdinal:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 tag];
    if (isKindOfClass)
    {
      v10 = @"TCP";
    }

    else
    {
      v10 = @"XPC";
    }

    v11 = [v5 sleeping];
    v12 = @"NO";
    v13 = 134218754;
    v14 = a4;
    v15 = 2114;
    if (v11)
    {
      v12 = @"YES";
    }

    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v12;
    _os_log_debug_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEBUG, "  %zu: Client[%{public}@] type[%{public}@] sleeping[%{public}@]", &v13, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dumpApplication:(id)a3 withOrdinal:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 isProxy])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"isProxied[YES, via %d]", objc_msgSend(v5, "hostApplicationPID")];
  }

  else
  {
    v6 = @"isProxied[NO]";
  }

  v7 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v5 identifier];
    v11 = [v5 hasRemoteDebugSession];
    v12 = @"NO";
    *buf = 134218754;
    v14 = a4;
    v15 = 2114;
    if (v11)
    {
      v12 = @"YES";
    }

    v16 = v10;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v12;
    _os_log_debug_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEBUG, "  %zu: Application[%{public}@] %{public}@ hasRemoteDebugSession[%{public}@]", buf, 0x2Au);
  }

  v8 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RWIRelay _dumpApplication:v5 withOrdinal:?];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDumpStateNotification
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 56) count];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reportCurrentStateToAllClients
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(RWIRelay *)self _reportCurrentStateToClient:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reportCurrentStateToClient:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 BOOLForKey:@"RemoteAutomationEnabled"];

  v7 = @"WIRAutomationAvailabilityNotAvailable";
  if (v6)
  {
    v7 = @"WIRAutomationAvailabilityAvailable";
  }

  v12 = @"WIRAutomationAvailabilityKey";
  v13[0] = v7;
  v8 = MEMORY[0x277CBEAC0];
  v9 = v7;
  v10 = [v8 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v4 _rpc_reportCurrentState:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportIdentifier:(id)a3
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [v7 objectForKeyedSubscript:@"RWIServiceConnectionKey"];
    [(RWIRelay *)self _finalizePendingClientConnection:v5 withIdentifier:v4];
  }

  else
  {
    v6 = objc_opt_class();
    logUnexpectedType(v6, v5);
  }
}

- (void)_rpc_getConnectedApplications:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      v6 = [(RWIRelay *)self _allApplicationDetails];
      [v5 _rpc_reportConnectedApplicationList:v6];
    }

    else
    {
      v6 = RWIDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    logUnexpectedType(v7, v5);
  }
}

- (void)_rpc_forwardGetListing:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    v6 = [v5 connection];
    v7 = [v9 dictionaryWithValuesForKeys:&unk_2882BC7E0];
    [v6 sendMessage:@"WIRApplicationGetListingMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardWakeUpDebuggables:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    v6 = [v5 connection];
    v7 = [v9 dictionaryWithValuesForKeys:&unk_2882BC7F8];
    [v6 sendMessage:@"WIRApplicationWakeUpDebuggablesMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardIndicateWebView:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    v6 = [v5 connection];
    v7 = [v9 dictionaryWithValuesForKeys:&unk_2882BC810];
    [v6 sendMessage:@"WIRIndicateMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardDidClose:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    v6 = [v5 connection];
    v7 = [v9 dictionaryWithValuesForKeys:&unk_2882BC828];
    [v6 sendMessage:@"WIRWebPageCloseMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardSocketSetup:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [v4 objectForKeyedSubscript:@"WIRPageIdentifierKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v5];
      v8 = [v7 connection];
      v9 = [v4 dictionaryWithValuesForKeys:&unk_2882BC840];
      [v8 sendMessage:@"WIRSocketSetupMessage" userInfo:v9];

      if ([(NSMutableDictionary *)self->_automaticInspectionSessions count])
      {
        [(NSMutableDictionary *)self->_automaticInspectionSessions allValues];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v26 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              if ([v15 matchesPageId:v6 applicationIdentifier:{v5, v23}])
              {
                v18 = RWIDefaultLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = [v15 identifier];
                  *buf = 138543362;
                  v28 = v19;
                  _os_log_impl(&dword_273C9C000, v18, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate ACCEPT : Session (%{public}@)", buf, 0xCu);
                }

                automaticInspectionSessions = self->_automaticInspectionSessions;
                v21 = [v15 identifier];
                [(NSMutableDictionary *)automaticInspectionSessions removeObjectForKey:v21];

                goto LABEL_18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }
    }

    else
    {
      v17 = objc_opt_class();
      logUnexpectedType(v17, v7);
    }
  }

  else
  {
    v16 = objc_opt_class();
    logUnexpectedType(v16, v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_forwardSocketData:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    v6 = [v5 connection];
    v7 = [v9 dictionaryWithValuesForKeys:&unk_2882BC858];
    [v6 sendMessage:@"WIRSocketDataMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRAutomaticInspectionEnabledKey"];
  v6 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v6);
    goto LABEL_15;
  }

  v6 = [v4 objectForKeyedSubscript:@"RWIServiceConnectionKey"];
  v7 = [v5 BOOLValue];
  automaticInspectionDebuggers = self->_automaticInspectionDebuggers;
  if (v7)
  {
    v9 = [(NSMutableArray *)automaticInspectionDebuggers count];
    [(NSMutableArray *)self->_automaticInspectionDebuggers addObject:v6];
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    removeObjectFromArray(automaticInspectionDebuggers, v6);
    if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
    {
      goto LABEL_15;
    }
  }

  [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:v7];
  v25 = @"WIRAutomaticInspectionEnabledKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v26[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v13 = [(NSMutableDictionary *)self->_applicationConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) connection];
        [v18 sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:v12];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_forwardAutomaticInspectionRejection:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [v12 objectForKeyedSubscript:@"WIRAutomaticInspectionSessionIdentifierKey"];
    v6 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v6 = [(NSMutableDictionary *)self->_automaticInspectionSessions objectForKey:v5];
      if ([v6 receivedRejectResponse])
      {
        v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
        v8 = [v7 connection];
        v9 = [v12 dictionaryWithValuesForKeys:&unk_2882BC870];
        [v8 sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v9];

        [(NSMutableDictionary *)self->_automaticInspectionSessions removeObjectForKey:v6];
      }
    }

    else
    {
      v11 = objc_opt_class();
      logUnexpectedType(v11, v6);
    }
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v5);
  }
}

- (void)_rpc_forwardDriverStateChangeRequest:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [v4 objectForKeyedSubscript:@"WIRDriverIsActiveKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v8 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v5];
      v9 = [v8 connection];
      v15[1] = @"WIRDriverIsActiveKey";
      v16[0] = v5;
      v15[0] = @"WIRDriverIdentifierKey";
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
      v16[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v9 _rpc_requestDriverStateChange:v11];
    }

    else
    {
      v13 = objc_opt_class();
      logUnexpectedType(v13, v7);
    }
  }

  else
  {
    v12 = objc_opt_class();
    logUnexpectedType(v12, v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportDriverConnected:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverConfiguration decodeFromPayload:v4];
    if (v6)
    {
      v7 = [RWIDriverState decodeFromPayload:v4];
      if (v7)
      {
        v8 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v5];
        v9 = [[_RWIDriverInterfaceInfo alloc] initWithConfiguration:v6 connection:v8];
        [(_RWIDriverInterfaceInfo *)v9 updateDriverState:v7];
        [(RWIRelay *)self _driverConnected:v9];
      }

      else
      {
        v11 = RWIDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [RWIRelay _rpc_reportDriverConnected:];
        }
      }
    }

    else
    {
      v7 = RWIDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverConnected:];
      }
    }
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v6);
  }
}

- (void)_rpc_reportDriverUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverState decodeFromPayload:v4];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v5];
      [v7 updateDriverState:v6];
      [(RWIRelay *)self _driverUpdated:v7];
    }

    else
    {
      v9 = RWIDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverConnected:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v6);
  }
}

- (void)_rpc_reportDriverDisconnected:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v4];
    if (v5)
    {
      [(RWIRelay *)self _driverDisconnected:v5];
    }

    else
    {
      v7 = RWIDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverDisconnected:];
      }
    }
  }

  else
  {
    v6 = objc_opt_class();
    logUnexpectedType(v6, v5);
  }
}

- (void)_rpc_getConnectedDrivers:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      v6 = [(RWIRelay *)self _allDriverDetails];
      [v5 _rpc_reportConnectedDriverList:v6];
    }

    else
    {
      v6 = RWIDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    logUnexpectedType(v7, v5);
  }
}

- (void)_rpc_forwardAutomationSessionRequest:(id)a3
{
  v11 = a3;
  v4 = [v11 objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    delegate = self->_delegate;
    v7 = [v5 bundleId];
    [(RWIRelayDelegate *)delegate relay:self activateApplicationWithBundleIdentifier:v7];

    v8 = [v5 connection];
    v9 = [v11 dictionaryWithValuesForKeys:&unk_2882BC888];
    [v8 sendMessage:@"WIRAutomationSessionRequestMessage" userInfo:v9];
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v5);
  }
}

- (void)_rpc_requestApplicationLaunch:(id)a3
{
  v6 = [a3 objectForKeyedSubscript:@"WIRApplicationBundleIdentifierKey"];
  v4 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(RWIRelayDelegate *)self->_delegate relay:self activateApplicationWithBundleIdentifier:v6];
  }

  else
  {
    v5 = objc_opt_class();
    logUnexpectedType(v5, v4);
  }
}

- (void)_rpc_debuggerWillSleep:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    v6 = RWIDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEFAULT, "Client Connection will sleep: %{public}@", &v10, 0xCu);
      }

      [v5 setSleeping:1];
      [(RWIRelayDelegate *)self->_delegate relayClientConnectionDidChange:self];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_debuggerDidWake:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    v6 = RWIDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEFAULT, "Client Connection did wake: %{public}@", &v10, 0xCu);
      }

      [v5 setSleeping:0];
      [(RWIRelayDelegate *)self->_delegate relayClientConnectionDidChange:self];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_proxyApplicationConnected:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 pid];
    v7 = [v4 identifier];
    v8 = [v4 bundleId];
    v13[0] = 67109635;
    v13[1] = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2113;
    v17 = v8;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Proxy Application Connected: %d - %{public}@ - %{private}@", v13, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  v10 = [v4 identifier];
  [(NSMutableDictionary *)pendingProxyApplicationConnections setObject:v4 forKey:v10];

  v11 = [v4 connection];
  [v11 sendMessage:@"WIRProxyApplicationSetupMessage" userInfo:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_proxyApplicationResponse:(id)a3 userInfo:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RWIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 pid];
    v10 = [v6 identifier];
    v11 = [v6 bundleId];
    v26 = 67109635;
    *v27 = v9;
    *&v27[4] = 2114;
    *&v27[6] = v10;
    v28 = 2113;
    v29 = v11;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Proxy Application Response: %d - %{public}@ - %{private}@", &v26, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  v13 = [v6 identifier];
  v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v13];

  if (v14)
  {
    v15 = self->_pendingProxyApplicationConnections;
    v16 = [v6 identifier];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    v17 = [v7 objectForKeyedSubscript:@"WIRProxyApplicationParentPID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = RWIDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_273C9C000, v21, OS_LOG_TYPE_DEFAULT, "Proxy setup response message missing data", &v26, 2u);
      }

      v18 = [v6 connection];
      [(RWIRelay *)self _disconnectApplicationConnect:v18];
      goto LABEL_19;
    }

    v18 = [v7 objectForKeyedSubscript:@"WIRProxyApplicationParentAuditData"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 length])
    {
      if ([v18 length] == 32)
      {
        [v6 setHostApplicationPID:{objc_msgSend(v17, "unsignedLongValue")}];
        [(RWIRelay *)self _applicationConnected:v6];
LABEL_19:

        goto LABEL_20;
      }

      v22 = RWIDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v23 = "Proxy setup response audit data does not appear to be valid.";
        goto LABEL_17;
      }
    }

    else
    {
      v22 = RWIDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v23 = "Proxy setup response message missing data";
LABEL_17:
        _os_log_impl(&dword_273C9C000, v22, OS_LOG_TYPE_DEFAULT, v23, &v26, 2u);
      }
    }

    v24 = [v6 connection];
    [(RWIRelay *)self _disconnectApplicationConnect:v24];

    goto LABEL_19;
  }

  v19 = RWIDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 identifier];
    v26 = 138543362;
    *v27 = v20;
    _os_log_impl(&dword_273C9C000, v19, OS_LOG_TYPE_DEFAULT, "Attempted to Complete Setup of a Proxy Connection not found in Pending Proxy Connections: %{public}@", &v26, 0xCu);
  }

  v17 = [v6 connection];
  [(RWIRelay *)self _disconnectApplicationConnect:v17];
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_applicationUpdated:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 pid];
    v7 = [v4 identifier];
    v8 = [v4 bundleId];
    *buf = 67109635;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    v25 = 2113;
    v26 = v8;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_INFO, "Application Updated: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  v9 = [v4 dictionaryRepresentation];
  v10 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) _rpc_applicationUpdated:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationUpdated:v4];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_applicationConnected:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 pid];
    v7 = [v4 identifier];
    v8 = [v4 bundleId];
    *buf = 67109635;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2113;
    v29 = v8;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Connected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  applicationConnections = self->_applicationConnections;
  v10 = [v4 identifier];
  [(NSMutableDictionary *)applicationConnections setObject:v4 forKey:v10];

  if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
  {
    v11 = [v4 connection];
    [v11 sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:&unk_2882BC8B8];
  }

  v12 = [v4 dictionaryRepresentation];
  v13 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

        [*(*(&v19 + 1) + 8 * v17++) _rpc_applicationConnected:v12];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationConnected:v4];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_applicationDisconnected:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 pid];
    v7 = [v4 identifier];
    v8 = [v4 bundleId];
    *buf = 67109635;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    v27 = 2113;
    v28 = v8;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Disconnected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  v9 = [v4 dictionaryRepresentation];
  v10 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v18 + 1) + 8 * v14++) _rpc_applicationDisconnected:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  applicationConnections = self->_applicationConnections;
  v16 = [v4 identifier];
  [(NSMutableDictionary *)applicationConnections removeObjectForKey:v16];

  [(RWIRelayDelegate *)self->_delegate relay:self applicationDisconnected:v4];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectApplicationConnect:(id)a3
{
  v3 = a3;
  [v3 sendMessage:@"WIRPermissionDenied" userInfo:0];
  [v3 setDelegate:0];
}

- (void)_handleApplicationListenConnectionEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MEMORY[0x2743DBE80]() == MEMORY[0x277D86450])
  {
    v5 = v4;
    xpc_connection_get_audit_token();
    pid = xpc_connection_get_pid(v5);
    v7 = [[_RWIRelayConnectionToApplication alloc] initWithConnection:v5];
    [(_RWIRelayConnectionToApplication *)v7 setDelegate:self];
    v8 = [_RWIApplicationInfo identifierForPID:pid];
    v9 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v8];

    if (!v9)
    {
      memset(buf, 0, 32);
      if (CPCopyBundleIdentifierAndTeamFromAuditToken())
      {
        v10 = 0;
      }

      else
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = processNameForPID();
        v10 = [v11 stringWithFormat:@"process-%@", v12];
      }

      v13 = RWIDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        *&buf[4] = pid;
        *&buf[8] = 2113;
        *&buf[10] = v10;
        _os_log_impl(&dword_273C9C000, v13, OS_LOG_TYPE_DEFAULT, "XPC Application Connection Event: %d - %{private}@", buf, 0x12u);
      }

      v14 = [(RWIRelayDelegate *)self->_delegate relay:self applicationInfoForIncomingConnection:v7 bundleIdentifier:v10];
      if (v14)
      {
        [(_RWIRelayConnectionToApplication *)v7 setTag:v8];
        if ([v14 isProxy])
        {
          [(RWIRelay *)self _proxyApplicationConnected:v14];
        }

        else
        {
          [(RWIRelay *)self _applicationConnected:v14];
        }
      }

      else
      {
        [(RWIRelay *)self _disconnectApplicationConnect:v7];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addPendingClientConnection:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Received Pending Client Connection: %{public}@", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingClientConnections addObject:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizePendingClientConnection:(id)a3 withIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RWIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Finalized Client Connection: %{public}@", &v13, 0xCu);
  }

  if (removeObjectFromArray(self->_pendingClientConnections, v6))
  {
    v9 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:v7];

    if (v9)
    {
      v10 = RWIDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _finalizePendingClientConnection:withIdentifier:];
      }
    }

    else
    {
      [v6 setTag:v7];
      MEMORY[0x2743DBE90]([(NSMutableDictionary *)self->_clientConnections setObject:v6 forKey:v7]);
      [(RWIRelay *)self _reportCurrentStateToClient:v6];
      v11 = [(RWIRelay *)self _allApplicationDetails];
      [v6 _rpc_reportConnectedApplicationList:v11];

      v10 = [(RWIRelay *)self _allDriverDetails];
      [v6 _rpc_reportConnectedDriverList:v10];
    }
  }

  else
  {
    v10 = RWIDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RWIRelay _finalizePendingClientConnection:withIdentifier:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clientConnectionDidClose:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 tag];

  if (v5)
  {
    v37 = @"WIRConnectionIdentifierKey";
    v6 = [v4 tag];
    v38[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

    v8 = [(NSMutableDictionary *)self->_applicationConnections allValues];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v31 + 1) + 8 * i) connection];
          [v13 sendMessage:@"WIRConnectionDiedMessage" userInfo:v7];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    clientConnections = self->_clientConnections;
    v15 = [v4 tag];
    [(NSMutableDictionary *)clientConnections removeObjectForKey:v15];

    v16 = removeObjectFromArray(self->_automaticInspectionDebuggers, v4);
    MEMORY[0x2743DBEA0](v16);
    v17 = [(NSMutableDictionary *)self->_driverInterfaces allValues];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          v23 = [v22 connection];

          if (v23 == v4)
          {
            [(RWIRelay *)self _driverDisconnected:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }
  }

  else
  {
    removeObjectFromArray(self->_pendingClientConnections, v4);
  }

  if (![(NSMutableDictionary *)self->_clientConnections count])
  {
    v25 = RWIDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_273C9C000, v25, OS_LOG_TYPE_DEFAULT, "Shutting Down, last client disconnected.", v26, 2u);
    }

    [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
    exit(0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_driverConnected:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = [v4 name];
    v8 = [v4 isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v26 = v6;
    if (v8)
    {
      v9 = @"Active";
    }

    v27 = 2113;
    v28 = v7;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Added Driver Interface: %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  v11 = [v4 identifier];
  [(NSMutableDictionary *)driverInterfaces setObject:v4 forKey:v11];

  v12 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = [v4 dictionaryRepresentation];
        [v17 _rpc_driverConnected:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_driverUpdated:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = [v4 name];
    v8 = [v4 isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v24 = v6;
    if (v8)
    {
      v9 = @"Active";
    }

    v25 = 2113;
    v26 = v7;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Updated Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  v10 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [v4 dictionaryRepresentation];
        [v15 _rpc_driverUpdated:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_driverDisconnected:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = [v4 name];
    v8 = [v4 isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v26 = v6;
    if (v8)
    {
      v9 = @"Active";
    }

    v27 = 2113;
    v28 = v7;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Removed Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  v11 = [v4 identifier];
  [(NSMutableDictionary *)driverInterfaces removeObjectForKey:v11];

  v12 = [(NSMutableDictionary *)self->_clientConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = [v4 dictionaryRepresentation];
        [v17 _rpc_driverDisconnected:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)xpcConnectionFailed:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];

  if (v5)
  {
    applicationConnections = self->_applicationConnections;
    v7 = [v4 tag];
    v8 = [(NSMutableDictionary *)applicationConnections objectForKey:v7];

    v9 = RWIDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(RWIRelay *)v8 xpcConnectionFailed:v9];
    }

    if (v8)
    {
      [(RWIRelay *)self _applicationDisconnected:v8];
    }

    pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
    v11 = [v4 tag];
    [(NSMutableDictionary *)pendingProxyApplicationConnections removeObjectForKey:v11];
  }
}

- (void)xpcConnection:(id)a3 receivedMessage:(id)a4 userInfo:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v11 tag];

  if (v10)
  {
    if ([v8 isEqualToString:@"WIRRawDataMessage"])
    {
      [(RWIRelay *)self _receivedDataMessage:v9 connection:v11];
    }

    else if ([v8 isEqualToString:@"WIRListingMessage"])
    {
      [(RWIRelay *)self _receivedListingMessage:v9 connection:v11];
    }

    else if ([v8 isEqualToString:@"WIRProxyApplicationSetupResponseMessage"])
    {
      [(RWIRelay *)self _receivedProxyApplicationSetupResponseMessage:v9 connection:v11];
    }

    else if ([v8 isEqualToString:@"WIRAutomaticInspectionCandidateMessage"])
    {
      [(RWIRelay *)self _receivedAutomaticInspectionCandidate:v9 connection:v11];
    }

    else if ([v8 isEqualToString:@"WIRPingMessage"])
    {
      [(RWIRelay *)self _receivedPingMessage:v9 connection:v11];
    }
  }
}

- (void)_receivedDataMessage:(id)a3 connection:(id)a4
{
  v27[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = [v6 objectForKeyedSubscript:@"WIRRawDataKey"];
    v10 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v11 = [v6 objectForKeyedSubscript:@"WIRMessageDataTypeKey"];
      v12 = v11;
      v13 = @"WIRMessageDataTypeFull";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v10 = v14;
      v15 = objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v16 = [v6 objectForKeyedSubscript:@"WIRDestinationKey"];
        v17 = objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v18 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v8];
          v26[0] = @"WIRMessageDataKey";
          v26[1] = @"WIRMessageDataTypeKey";
          v27[0] = v9;
          v27[1] = v10;
          v27[2] = v16;
          v26[2] = @"WIRDestinationKey";
          v26[3] = @"WIRApplicationIdentifierKey";
          v19 = [v7 tag];
          v27[3] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
          [v18 _rpc_applicationSentData:v20];
        }

        else
        {
          v24 = objc_opt_class();
          logUnexpectedType(v24, v17);
        }
      }

      else
      {
        v23 = objc_opt_class();
        logUnexpectedType(v23, v15);
      }
    }

    else
    {
      v22 = objc_opt_class();
      logUnexpectedType(v22, v10);
    }
  }

  else
  {
    v21 = objc_opt_class();
    logUnexpectedType(v21, v9);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_receivedListingMessage:(id)a3 connection:(id)a4
{
  v42[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_opt_class();
    logUnexpectedType(v20, v9);
  }

  else
  {

    v10 = [v6 objectForKeyedSubscript:@"WIRListingKey"];
    v11 = objc_opt_class();
    if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = objc_opt_class();
      logUnexpectedType(v21, v11);
    }

    else
    {

      pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
      v13 = [v7 tag];
      v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v13];

      if (v10)
      {
        if (v14)
        {
          v15 = [v10 allValues];
          v16 = [v15 indexOfObjectPassingTest:&__block_literal_global_232];

          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = self->_pendingProxyApplicationConnections;
            v18 = [v14 identifier];
            [(NSMutableDictionary *)v17 removeObjectForKey:v18];

            [(RWIRelay *)self _applicationConnected:v14];
          }
        }
      }

      if (v8)
      {
        v19 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v8];
      }

      else
      {
        v19 = 0;
      }

      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = MEMORY[0x277CBEC10];
      }

      v41[0] = @"WIRListingKey";
      v41[1] = @"WIRApplicationIdentifierKey";
      v42[0] = v22;
      v23 = [v7 tag];
      v42[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

      if (v19)
      {
        [v19 _rpc_applicationSentListing:v24];
      }

      else
      {
        v34 = v14;
        v35 = self;
        v25 = [(NSMutableDictionary *)self->_clientConnections allValues];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v37;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v37 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v36 + 1) + 8 * i) _rpc_applicationSentListing:v24];
            }

            v27 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v27);
        }

        v14 = v34;
        self = v35;
      }

      applicationConnections = self->_applicationConnections;
      v31 = [v7 tag];
      v32 = [(NSMutableDictionary *)applicationConnections objectForKey:v31];

      if ([v32 updateFromListing:v6])
      {
        [(RWIRelay *)self _applicationUpdated:v32];
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

BOOL __47__RWIRelay__receivedListingMessage_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = [v2 objectForKeyedSubscript:@"WIRHostApplicationIdentifierKey"];
    v4 = v3 != 0;
  }

  else
  {
    v5 = objc_opt_class();
    logUnexpectedType(v5, v3);
    v4 = 0;
  }

  return v4;
}

- (void)_receivedProxyApplicationSetupResponseMessage:(id)a3 connection:(id)a4
{
  v9 = a3;
  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  v7 = [a4 tag];
  v8 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v7];

  if (v8)
  {
    [(RWIRelay *)self _proxyApplicationResponse:v8 userInfo:v9];
  }
}

- (void)_receivedAutomaticInspectionCandidate:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"WIRPageIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    applicationConnections = self->_applicationConnections;
    v11 = [v7 tag];
    v9 = [(NSMutableDictionary *)applicationConnections objectForKey:v11];

    if (v9)
    {
      if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
      {
        v12 = [v6 objectForKeyedSubscript:@"WIRTargetAllowsAutomaticInspectionInSameProcess"];
        v13 = objc_opt_class();
        if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = objc_opt_class();
          logUnexpectedType(v23, v13);

          v16 = v12;
        }

        else
        {

          v14 = [_RWIAutomaticInspectionSession alloc];
          v15 = [v7 tag];
          v16 = -[_RWIAutomaticInspectionSession initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:](v14, "initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:", v8, v15, [v9 pid], self->_automaticInspectionDebuggers, -[_RWIAutomaticInspectionSession BOOLValue](v12, "BOOLValue"));

          automaticInspectionSessions = self->_automaticInspectionSessions;
          v18 = [(_RWIAutomaticInspectionSession *)v16 identifier];
          [(NSMutableDictionary *)automaticInspectionSessions setObject:v16 forKey:v18];

          [(_RWIAutomaticInspectionSession *)v16 start];
        }
      }

      else
      {
        v20 = RWIDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v24[0] = 0;
          _os_log_impl(&dword_273C9C000, v20, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate REJECT : No Automatic Inspection Debuggers", v24, 2u);
        }

        v21 = [v9 connection];
        v22 = [v6 dictionaryWithValuesForKeys:&unk_2882BC8A0];
        [v21 sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v22];
      }
    }
  }

  else
  {
    v19 = objc_opt_class();
    logUnexpectedType(v19, v9);
  }
}

- (void)_dumpApplication:(void *)a1 withOrdinal:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v9 = [a1 bundleId];
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_getConnectedApplications:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Message from unknown client connection: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportDriverConnected:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Could not parse RWIDriverState from payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportDriverConnected:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Could not parse RWIDriverConfiguration from payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportDriverDisconnected:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Could not find interface information for driver with identifier: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizePendingClientConnection:withIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Attempted to Complete Setup of a Remote Connection not found in Pending Connections: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizePendingClientConnection:withIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_4(&dword_273C9C000, v0, v1, "Attempted to open multiple connections from the same client: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)xpcConnectionFailed:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 pid];
  v5 = [a1 identifier];
  v6 = [a1 bundleId];
  v8[0] = 67109635;
  v8[1] = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2113;
  v12 = v6;
  _os_log_error_impl(&dword_273C9C000, a2, OS_LOG_TYPE_ERROR, "XPC Connection Failed for Application: %d - %{public}@ - %{private}@", v8, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

@end