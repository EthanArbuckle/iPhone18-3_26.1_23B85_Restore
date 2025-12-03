@interface RWIRelay
- (RWIRelay)init;
- (id)_allApplicationDetails;
- (id)_allDriverDetails;
- (void)_addPendingClientConnection:(id)connection;
- (void)_applicationConnected:(id)connected;
- (void)_applicationDisconnected:(id)disconnected;
- (void)_applicationUpdated:(id)updated;
- (void)_disconnectApplicationConnect:(id)connect;
- (void)_driverConnected:(id)connected;
- (void)_driverDisconnected:(id)disconnected;
- (void)_driverUpdated:(id)updated;
- (void)_dumpApplication:(id)application withOrdinal:(unint64_t)ordinal;
- (void)_dumpClientConnection:(id)connection withOrdinal:(unint64_t)ordinal;
- (void)_finalizePendingClientConnection:(id)connection withIdentifier:(id)identifier;
- (void)_handleApplicationListenConnectionEvent:(id)event;
- (void)_handleDumpStateNotification;
- (void)_proxyApplicationConnected:(id)connected;
- (void)_proxyApplicationResponse:(id)response userInfo:(id)info;
- (void)_receivedAutomaticInspectionCandidate:(id)candidate connection:(id)connection;
- (void)_receivedDataMessage:(id)message connection:(id)connection;
- (void)_receivedListingMessage:(id)message connection:(id)connection;
- (void)_receivedProxyApplicationSetupResponseMessage:(id)message connection:(id)connection;
- (void)_reportCurrentStateToAllClients;
- (void)_reportCurrentStateToClient:(id)client;
- (void)_rpc_debuggerDidWake:(id)wake;
- (void)_rpc_debuggerWillSleep:(id)sleep;
- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)configuration;
- (void)_rpc_forwardAutomaticInspectionRejection:(id)rejection;
- (void)_rpc_forwardAutomationSessionRequest:(id)request;
- (void)_rpc_forwardDidClose:(id)close;
- (void)_rpc_forwardDriverStateChangeRequest:(id)request;
- (void)_rpc_forwardGetListing:(id)listing;
- (void)_rpc_forwardIndicateWebView:(id)view;
- (void)_rpc_forwardSocketData:(id)data;
- (void)_rpc_forwardSocketSetup:(id)setup;
- (void)_rpc_forwardWakeUpDebuggables:(id)debuggables;
- (void)_rpc_getConnectedApplications:(id)applications;
- (void)_rpc_getConnectedDrivers:(id)drivers;
- (void)_rpc_reportDriverConnected:(id)connected;
- (void)_rpc_reportDriverDisconnected:(id)disconnected;
- (void)_rpc_reportDriverUpdated:(id)updated;
- (void)_rpc_reportIdentifier:(id)identifier;
- (void)_rpc_requestApplicationLaunch:(id)launch;
- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)enabled;
- (void)clientConnectionDidClose:(id)close;
- (void)setup;
- (void)shutdownIfDisabled;
- (void)xpcConnection:(id)connection receivedMessage:(id)message userInfo:(id)info;
- (void)xpcConnectionFailed:(id)failed;
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

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v23 selector:sel__developerPreferencesChanged name:@"_SFDeveloperPreferencesDidChangeNotification" object:0];

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[RWIRelayDelegate relay:remoteInspectionEnablementDidChange:](delegate, "relay:remoteInspectionEnablementDidChange:", self, [standardUserDefaults BOOLForKey:@"RemoteInspectorEnabled"]);
}

- (void)shutdownIfDisabled
{
  if (MGGetSInt32Answer() != 7)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"RemoteInspectorEnabled"];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        dictionaryRepresentation = [v10 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19 = @"WIRApplicationDictionaryKey";
  v20 = dictionary;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_allDriverDetails
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        dictionaryRepresentation = [v10 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19 = @"WIRDriverDictionaryKey";
  v20 = dictionary;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)enabled
{
  LODWORD(v3) = enabled;
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

- (void)_dumpClientConnection:(id)connection withOrdinal:(unint64_t)ordinal
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [connectionCopy tag];
    if (isKindOfClass)
    {
      v10 = @"TCP";
    }

    else
    {
      v10 = @"XPC";
    }

    sleeping = [connectionCopy sleeping];
    v12 = @"NO";
    v13 = 134218754;
    ordinalCopy = ordinal;
    v15 = 2114;
    if (sleeping)
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

- (void)_dumpApplication:(id)application withOrdinal:(unint64_t)ordinal
{
  v21 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if ([applicationCopy isProxy])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"isProxied[YES, via %d]", objc_msgSend(applicationCopy, "hostApplicationPID")];
  }

  else
  {
    v6 = @"isProxied[NO]";
  }

  v7 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    identifier = [applicationCopy identifier];
    hasRemoteDebugSession = [applicationCopy hasRemoteDebugSession];
    v12 = @"NO";
    *buf = 134218754;
    ordinalCopy = ordinal;
    v15 = 2114;
    if (hasRemoteDebugSession)
    {
      v12 = @"YES";
    }

    v16 = identifier;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v12;
    _os_log_debug_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEBUG, "  %zu: Application[%{public}@] %{public}@ hasRemoteDebugSession[%{public}@]", buf, 0x2Au);
  }

  v8 = RWIMessageDumpStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RWIRelay _dumpApplication:applicationCopy withOrdinal:?];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDumpStateNotification
{
  v7 = *MEMORY[0x277D85DE8];
  [*(self + 56) count];
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
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(RWIRelay *)self _reportCurrentStateToClient:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reportCurrentStateToClient:(id)client
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBD0];
  clientCopy = client;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"RemoteAutomationEnabled"];

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

  [clientCopy _rpc_reportCurrentState:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_reportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [identifierCopy objectForKeyedSubscript:@"RWIServiceConnectionKey"];
    [(RWIRelay *)self _finalizePendingClientConnection:v5 withIdentifier:v4];
  }

  else
  {
    v6 = objc_opt_class();
    logUnexpectedType(v6, v5);
  }
}

- (void)_rpc_getConnectedApplications:(id)applications
{
  v4 = [applications objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      _allApplicationDetails = [(RWIRelay *)self _allApplicationDetails];
      [v5 _rpc_reportConnectedApplicationList:_allApplicationDetails];
    }

    else
    {
      _allApplicationDetails = RWIDefaultLog();
      if (os_log_type_enabled(_allApplicationDetails, OS_LOG_TYPE_ERROR))
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

- (void)_rpc_forwardGetListing:(id)listing
{
  listingCopy = listing;
  v4 = [listingCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [listingCopy dictionaryWithValuesForKeys:&unk_2882BC7E0];
    [connection sendMessage:@"WIRApplicationGetListingMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardWakeUpDebuggables:(id)debuggables
{
  debuggablesCopy = debuggables;
  v4 = [debuggablesCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [debuggablesCopy dictionaryWithValuesForKeys:&unk_2882BC7F8];
    [connection sendMessage:@"WIRApplicationWakeUpDebuggablesMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardIndicateWebView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [viewCopy dictionaryWithValuesForKeys:&unk_2882BC810];
    [connection sendMessage:@"WIRIndicateMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardDidClose:(id)close
{
  closeCopy = close;
  v4 = [closeCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [closeCopy dictionaryWithValuesForKeys:&unk_2882BC828];
    [connection sendMessage:@"WIRWebPageCloseMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardSocketSetup:(id)setup
{
  v30 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  v5 = [setupCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [setupCopy objectForKeyedSubscript:@"WIRPageIdentifierKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v5];
      connection = [v7 connection];
      v9 = [setupCopy dictionaryWithValuesForKeys:&unk_2882BC840];
      [connection sendMessage:@"WIRSocketSetupMessage" userInfo:v9];

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
                  identifier = [v15 identifier];
                  *buf = 138543362;
                  v28 = identifier;
                  _os_log_impl(&dword_273C9C000, v18, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate ACCEPT : Session (%{public}@)", buf, 0xCu);
                }

                automaticInspectionSessions = self->_automaticInspectionSessions;
                identifier2 = [v15 identifier];
                [(NSMutableDictionary *)automaticInspectionSessions removeObjectForKey:identifier2];

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

- (void)_rpc_forwardSocketData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [dataCopy dictionaryWithValuesForKeys:&unk_2882BC858];
    [connection sendMessage:@"WIRSocketDataMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)configuration
{
  v26[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [configurationCopy objectForKeyedSubscript:@"WIRAutomaticInspectionEnabledKey"];
  v6 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v6);
    goto LABEL_15;
  }

  v6 = [configurationCopy objectForKeyedSubscript:@"RWIServiceConnectionKey"];
  bOOLValue = [v5 BOOLValue];
  automaticInspectionDebuggers = self->_automaticInspectionDebuggers;
  if (bOOLValue)
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

  [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:bOOLValue];
  v25 = @"WIRAutomaticInspectionEnabledKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v26[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  allValues = [(NSMutableDictionary *)self->_applicationConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allValues);
        }

        connection = [*(*(&v20 + 1) + 8 * v17) connection];
        [connection sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:v12];

        ++v17;
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_rpc_forwardAutomaticInspectionRejection:(id)rejection
{
  rejectionCopy = rejection;
  v4 = [rejectionCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [rejectionCopy objectForKeyedSubscript:@"WIRAutomaticInspectionSessionIdentifierKey"];
    v6 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v6 = [(NSMutableDictionary *)self->_automaticInspectionSessions objectForKey:v5];
      if ([v6 receivedRejectResponse])
      {
        v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
        connection = [v7 connection];
        v9 = [rejectionCopy dictionaryWithValuesForKeys:&unk_2882BC870];
        [connection sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v9];

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

- (void)_rpc_forwardDriverStateChangeRequest:(id)request
{
  v16[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [requestCopy objectForKeyedSubscript:@"WIRDriverIsActiveKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v8 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v5];
      connection = [v8 connection];
      v15[1] = @"WIRDriverIsActiveKey";
      v16[0] = v5;
      v15[0] = @"WIRDriverIdentifierKey";
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
      v16[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [connection _rpc_requestDriverStateChange:v11];
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

- (void)_rpc_reportDriverConnected:(id)connected
{
  connectedCopy = connected;
  v5 = [connectedCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverConfiguration decodeFromPayload:connectedCopy];
    if (v6)
    {
      v7 = [RWIDriverState decodeFromPayload:connectedCopy];
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

- (void)_rpc_reportDriverUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverState decodeFromPayload:updatedCopy];
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

- (void)_rpc_reportDriverDisconnected:(id)disconnected
{
  v4 = [disconnected objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
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

- (void)_rpc_getConnectedDrivers:(id)drivers
{
  v4 = [drivers objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      _allDriverDetails = [(RWIRelay *)self _allDriverDetails];
      [v5 _rpc_reportConnectedDriverList:_allDriverDetails];
    }

    else
    {
      _allDriverDetails = RWIDefaultLog();
      if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
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

- (void)_rpc_forwardAutomationSessionRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    delegate = self->_delegate;
    bundleId = [v5 bundleId];
    [(RWIRelayDelegate *)delegate relay:self activateApplicationWithBundleIdentifier:bundleId];

    connection = [v5 connection];
    v9 = [requestCopy dictionaryWithValuesForKeys:&unk_2882BC888];
    [connection sendMessage:@"WIRAutomationSessionRequestMessage" userInfo:v9];
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v5);
  }
}

- (void)_rpc_requestApplicationLaunch:(id)launch
{
  v6 = [launch objectForKeyedSubscript:@"WIRApplicationBundleIdentifierKey"];
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

- (void)_rpc_debuggerWillSleep:(id)sleep
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [sleep objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
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

- (void)_rpc_debuggerDidWake:(id)wake
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [wake objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
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

- (void)_proxyApplicationConnected:(id)connected
{
  v18 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [connectedCopy pid];
    identifier = [connectedCopy identifier];
    bundleId = [connectedCopy bundleId];
    v13[0] = 67109635;
    v13[1] = v6;
    v14 = 2114;
    v15 = identifier;
    v16 = 2113;
    v17 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Proxy Application Connected: %d - %{public}@ - %{private}@", v13, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)pendingProxyApplicationConnections setObject:connectedCopy forKey:identifier2];

  connection = [connectedCopy connection];
  [connection sendMessage:@"WIRProxyApplicationSetupMessage" userInfo:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_proxyApplicationResponse:(id)response userInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  infoCopy = info;
  v8 = RWIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [responseCopy pid];
    identifier = [responseCopy identifier];
    bundleId = [responseCopy bundleId];
    v26 = 67109635;
    *v27 = v9;
    *&v27[4] = 2114;
    *&v27[6] = identifier;
    v28 = 2113;
    v29 = bundleId;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Proxy Application Response: %d - %{public}@ - %{private}@", &v26, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  identifier2 = [responseCopy identifier];
  v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:identifier2];

  if (v14)
  {
    v15 = self->_pendingProxyApplicationConnections;
    identifier3 = [responseCopy identifier];
    [(NSMutableDictionary *)v15 removeObjectForKey:identifier3];

    connection3 = [infoCopy objectForKeyedSubscript:@"WIRProxyApplicationParentPID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = RWIDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_273C9C000, v21, OS_LOG_TYPE_DEFAULT, "Proxy setup response message missing data", &v26, 2u);
      }

      connection = [responseCopy connection];
      [(RWIRelay *)self _disconnectApplicationConnect:connection];
      goto LABEL_19;
    }

    connection = [infoCopy objectForKeyedSubscript:@"WIRProxyApplicationParentAuditData"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [connection length])
    {
      if ([connection length] == 32)
      {
        [responseCopy setHostApplicationPID:{objc_msgSend(connection3, "unsignedLongValue")}];
        [(RWIRelay *)self _applicationConnected:responseCopy];
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

    connection2 = [responseCopy connection];
    [(RWIRelay *)self _disconnectApplicationConnect:connection2];

    goto LABEL_19;
  }

  v19 = RWIDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [responseCopy identifier];
    v26 = 138543362;
    *v27 = identifier4;
    _os_log_impl(&dword_273C9C000, v19, OS_LOG_TYPE_DEFAULT, "Attempted to Complete Setup of a Proxy Connection not found in Pending Proxy Connections: %{public}@", &v26, 0xCu);
  }

  connection3 = [responseCopy connection];
  [(RWIRelay *)self _disconnectApplicationConnect:connection3];
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_applicationUpdated:(id)updated
{
  v27 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [updatedCopy pid];
    identifier = [updatedCopy identifier];
    bundleId = [updatedCopy bundleId];
    *buf = 67109635;
    v22 = v6;
    v23 = 2114;
    v24 = identifier;
    v25 = 2113;
    v26 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_INFO, "Application Updated: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  dictionaryRepresentation = [updatedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v16 + 1) + 8 * v14++) _rpc_applicationUpdated:dictionaryRepresentation];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationUpdated:updatedCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_applicationConnected:(id)connected
{
  v30 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [connectedCopy pid];
    identifier = [connectedCopy identifier];
    bundleId = [connectedCopy bundleId];
    *buf = 67109635;
    v25 = v6;
    v26 = 2114;
    v27 = identifier;
    v28 = 2113;
    v29 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Connected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  applicationConnections = self->_applicationConnections;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)applicationConnections setObject:connectedCopy forKey:identifier2];

  if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
  {
    connection = [connectedCopy connection];
    [connection sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:&unk_2882BC8B8];
  }

  dictionaryRepresentation = [connectedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v19 + 1) + 8 * v17++) _rpc_applicationConnected:dictionaryRepresentation];
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationConnected:connectedCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_applicationDisconnected:(id)disconnected
{
  v29 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [disconnectedCopy pid];
    identifier = [disconnectedCopy identifier];
    bundleId = [disconnectedCopy bundleId];
    *buf = 67109635;
    v24 = v6;
    v25 = 2114;
    v26 = identifier;
    v27 = 2113;
    v28 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Disconnected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  dictionaryRepresentation = [disconnectedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v18 + 1) + 8 * v14++) _rpc_applicationDisconnected:dictionaryRepresentation];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  applicationConnections = self->_applicationConnections;
  identifier2 = [disconnectedCopy identifier];
  [(NSMutableDictionary *)applicationConnections removeObjectForKey:identifier2];

  [(RWIRelayDelegate *)self->_delegate relay:self applicationDisconnected:disconnectedCopy];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectApplicationConnect:(id)connect
{
  connectCopy = connect;
  [connectCopy sendMessage:@"WIRPermissionDenied" userInfo:0];
  [connectCopy setDelegate:0];
}

- (void)_handleApplicationListenConnectionEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (MEMORY[0x2743DBE80]() == MEMORY[0x277D86450])
  {
    v5 = eventCopy;
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

- (void)_addPendingClientConnection:(id)connection
{
  v9 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = connectionCopy;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Received Pending Client Connection: %{public}@", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingClientConnections addObject:connectionCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finalizePendingClientConnection:(id)connection withIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  identifierCopy = identifier;
  v8 = RWIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = connectionCopy;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Finalized Client Connection: %{public}@", &v13, 0xCu);
  }

  if (removeObjectFromArray(self->_pendingClientConnections, connectionCopy))
  {
    v9 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:identifierCopy];

    if (v9)
    {
      _allDriverDetails = RWIDefaultLog();
      if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _finalizePendingClientConnection:withIdentifier:];
      }
    }

    else
    {
      [connectionCopy setTag:identifierCopy];
      MEMORY[0x2743DBE90]([(NSMutableDictionary *)self->_clientConnections setObject:connectionCopy forKey:identifierCopy]);
      [(RWIRelay *)self _reportCurrentStateToClient:connectionCopy];
      _allApplicationDetails = [(RWIRelay *)self _allApplicationDetails];
      [connectionCopy _rpc_reportConnectedApplicationList:_allApplicationDetails];

      _allDriverDetails = [(RWIRelay *)self _allDriverDetails];
      [connectionCopy _rpc_reportConnectedDriverList:_allDriverDetails];
    }
  }

  else
  {
    _allDriverDetails = RWIDefaultLog();
    if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
    {
      [RWIRelay _finalizePendingClientConnection:withIdentifier:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clientConnectionDidClose:(id)close
{
  v38[1] = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v5 = [closeCopy tag];

  if (v5)
  {
    v37 = @"WIRConnectionIdentifierKey";
    v6 = [closeCopy tag];
    v38[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

    allValues = [(NSMutableDictionary *)self->_applicationConnections allValues];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(allValues);
          }

          connection = [*(*(&v31 + 1) + 8 * i) connection];
          [connection sendMessage:@"WIRConnectionDiedMessage" userInfo:v7];
        }

        v10 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    clientConnections = self->_clientConnections;
    v15 = [closeCopy tag];
    [(NSMutableDictionary *)clientConnections removeObjectForKey:v15];

    v16 = removeObjectFromArray(self->_automaticInspectionDebuggers, closeCopy);
    MEMORY[0x2743DBEA0](v16);
    allValues2 = [(NSMutableDictionary *)self->_driverInterfaces allValues];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = [allValues2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          connection2 = [v22 connection];

          if (connection2 == closeCopy)
          {
            [(RWIRelay *)self _driverDisconnected:v22];
          }
        }

        v19 = [allValues2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }
  }

  else
  {
    removeObjectFromArray(self->_pendingClientConnections, closeCopy);
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

- (void)_driverConnected:(id)connected
{
  v31 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [connectedCopy identifier];
    name = [connectedCopy name];
    isActive = [connectedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v26 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v27 = 2113;
    v28 = name;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Added Driver Interface: %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)driverInterfaces setObject:connectedCopy forKey:identifier2];

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        dictionaryRepresentation = [connectedCopy dictionaryRepresentation];
        [v17 _rpc_driverConnected:dictionaryRepresentation];

        ++v16;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_driverUpdated:(id)updated
{
  v29 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [updatedCopy identifier];
    name = [updatedCopy name];
    isActive = [updatedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v24 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v25 = 2113;
    v26 = name;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Updated Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        dictionaryRepresentation = [updatedCopy dictionaryRepresentation];
        [v15 _rpc_driverUpdated:dictionaryRepresentation];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_driverDisconnected:(id)disconnected
{
  v31 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [disconnectedCopy identifier];
    name = [disconnectedCopy name];
    isActive = [disconnectedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v26 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v27 = 2113;
    v28 = name;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Removed Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  identifier2 = [disconnectedCopy identifier];
  [(NSMutableDictionary *)driverInterfaces removeObjectForKey:identifier2];

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        dictionaryRepresentation = [disconnectedCopy dictionaryRepresentation];
        [v17 _rpc_driverDisconnected:dictionaryRepresentation];

        ++v16;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)xpcConnectionFailed:(id)failed
{
  failedCopy = failed;
  v5 = [failedCopy tag];

  if (v5)
  {
    applicationConnections = self->_applicationConnections;
    v7 = [failedCopy tag];
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
    v11 = [failedCopy tag];
    [(NSMutableDictionary *)pendingProxyApplicationConnections removeObjectForKey:v11];
  }
}

- (void)xpcConnection:(id)connection receivedMessage:(id)message userInfo:(id)info
{
  connectionCopy = connection;
  messageCopy = message;
  infoCopy = info;
  v10 = [connectionCopy tag];

  if (v10)
  {
    if ([messageCopy isEqualToString:@"WIRRawDataMessage"])
    {
      [(RWIRelay *)self _receivedDataMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRListingMessage"])
    {
      [(RWIRelay *)self _receivedListingMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRProxyApplicationSetupResponseMessage"])
    {
      [(RWIRelay *)self _receivedProxyApplicationSetupResponseMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRAutomaticInspectionCandidateMessage"])
    {
      [(RWIRelay *)self _receivedAutomaticInspectionCandidate:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRPingMessage"])
    {
      [(RWIRelay *)self _receivedPingMessage:infoCopy connection:connectionCopy];
    }
  }
}

- (void)_receivedDataMessage:(id)message connection:(id)connection
{
  v27[4] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  v8 = [messageCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = [messageCopy objectForKeyedSubscript:@"WIRRawDataKey"];
    v10 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v11 = [messageCopy objectForKeyedSubscript:@"WIRMessageDataTypeKey"];
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

        v16 = [messageCopy objectForKeyedSubscript:@"WIRDestinationKey"];
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
          v19 = [connectionCopy tag];
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

- (void)_receivedListingMessage:(id)message connection:(id)connection
{
  v42[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  v8 = [messageCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_opt_class();
    logUnexpectedType(v20, v9);
  }

  else
  {

    v10 = [messageCopy objectForKeyedSubscript:@"WIRListingKey"];
    v11 = objc_opt_class();
    if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = objc_opt_class();
      logUnexpectedType(v21, v11);
    }

    else
    {

      pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
      v13 = [connectionCopy tag];
      v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v13];

      if (v10)
      {
        if (v14)
        {
          allValues = [v10 allValues];
          v16 = [allValues indexOfObjectPassingTest:&__block_literal_global_232];

          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = self->_pendingProxyApplicationConnections;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)v17 removeObjectForKey:identifier];

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
      v23 = [connectionCopy tag];
      v42[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

      if (v19)
      {
        [v19 _rpc_applicationSentListing:v24];
      }

      else
      {
        v34 = v14;
        selfCopy = self;
        allValues2 = [(NSMutableDictionary *)self->_clientConnections allValues];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v26 = [allValues2 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
                objc_enumerationMutation(allValues2);
              }

              [*(*(&v36 + 1) + 8 * i) _rpc_applicationSentListing:v24];
            }

            v27 = [allValues2 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v27);
        }

        v14 = v34;
        self = selfCopy;
      }

      applicationConnections = self->_applicationConnections;
      v31 = [connectionCopy tag];
      v32 = [(NSMutableDictionary *)applicationConnections objectForKey:v31];

      if ([v32 updateFromListing:messageCopy])
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

- (void)_receivedProxyApplicationSetupResponseMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  v7 = [connection tag];
  v8 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v7];

  if (v8)
  {
    [(RWIRelay *)self _proxyApplicationResponse:v8 userInfo:messageCopy];
  }
}

- (void)_receivedAutomaticInspectionCandidate:(id)candidate connection:(id)connection
{
  candidateCopy = candidate;
  connectionCopy = connection;
  v8 = [candidateCopy objectForKeyedSubscript:@"WIRPageIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    applicationConnections = self->_applicationConnections;
    v11 = [connectionCopy tag];
    v9 = [(NSMutableDictionary *)applicationConnections objectForKey:v11];

    if (v9)
    {
      if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
      {
        v12 = [candidateCopy objectForKeyedSubscript:@"WIRTargetAllowsAutomaticInspectionInSameProcess"];
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
          v15 = [connectionCopy tag];
          v16 = -[_RWIAutomaticInspectionSession initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:](v14, "initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:", v8, v15, [v9 pid], self->_automaticInspectionDebuggers, -[_RWIAutomaticInspectionSession BOOLValue](v12, "BOOLValue"));

          automaticInspectionSessions = self->_automaticInspectionSessions;
          identifier = [(_RWIAutomaticInspectionSession *)v16 identifier];
          [(NSMutableDictionary *)automaticInspectionSessions setObject:v16 forKey:identifier];

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

        connection = [v9 connection];
        v22 = [candidateCopy dictionaryWithValuesForKeys:&unk_2882BC8A0];
        [connection sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v22];
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