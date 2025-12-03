@interface RWIRelayDelegateIOS
- (id)_processMonitorPredicatesForConnectedApplications;
- (id)relay:(id)relay applicationInfoForIncomingConnection:(id)connection bundleIdentifier:(id)identifier;
- (void)_createProcessMonitorIfNeeded;
- (void)_handleProcessMonitorStateUpdate:(id)update forProcess:(id)process;
- (void)_startPreventingDeviceFromIdling;
- (void)_stopPreventingDeviceFromIdling;
- (void)_updateDeviceIdlePrevention;
- (void)_updateProcessMonitorPredicates;
- (void)relay:(id)relay activateApplicationWithBundleIdentifier:(id)identifier;
- (void)relay:(id)relay unhandledApplicationXPCMessage:(id)message;
- (void)relayInitialize:(id)initialize;
@end

@implementation RWIRelayDelegateIOS

- (id)_processMonitorPredicatesForConnectedApplications
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  applicationConnections = [(RWIRelay *)self->_relay applicationConnections];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(applicationConnections, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  applicationConnections2 = [(RWIRelay *)self->_relay applicationConnections];
  allValues = [applicationConnections2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = MEMORY[0x277D46FA0];
        v13 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "pid")}];
        v14 = [v12 predicateMatchingIdentifier:v13];
        [v5 addObject:v14];
      }

      v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_handleProcessMonitorStateUpdate:(id)update forProcess:(id)process
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  processCopy = process;
  v8 = +[_RWIApplicationInfo identifierForPID:](_RWIApplicationInfo, "identifierForPID:", [processCopy pid]);
  applicationConnections = [(RWIRelay *)self->_relay applicationConnections];
  v10 = [applicationConnections objectForKey:v8];

  if (v10)
  {
    state = [updateCopy state];
    v12 = convertRBSProcessState(state);

    if ([v10 debuggerAvailability] != v12)
    {
      [v10 setDebuggerAvailability:v12];
      v13 = RWIDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [processCopy pid];
        v15 = NSStringFromRWIDebuggerAvailability([v10 debuggerAvailability]);
        v18[0] = 67109378;
        v18[1] = v14;
        v19 = 2114;
        v20 = v15;
        _os_log_impl(&dword_273C9C000, v13, OS_LOG_TYPE_DEFAULT, "Process (pid: %d) changed debugger availability: %{public}@", v18, 0x12u);
      }

      [(RWIRelay *)self->_relay updateApplication:v10];
    }
  }

  else
  {
    v16 = RWIDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [RWIRelayDelegateIOS _handleProcessMonitorStateUpdate:processCopy forProcess:?];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_createProcessMonitorIfNeeded
{
  if (!self->_processMonitor)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D46F80];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke;
    v6[3] = &unk_279EAC1D8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 monitorWithConfiguration:v6];
    processMonitor = self->_processMonitor;
    self->_processMonitor = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277D46FB0] descriptor];
    [v5 setValues:1];
    v11[0] = *MEMORY[0x277D0AC90];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v5 setEndowmentNamespaces:v6];

    [v3 setStateDescriptor:v5];
    v7 = [WeakRetained _processMonitorPredicatesForConnectedApplications];
    [v3 setPredicates:v7];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke_2;
    v9[3] = &unk_279EAC1B0;
    objc_copyWeak(&v10, (a1 + 32));
    [v3 setUpdateHandler:v9];
    objc_destroyWeak(&v10);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke_3;
  block[3] = &unk_279EAC188;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
}

void __52__RWIRelayDelegateIOS__createProcessMonitorIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleProcessMonitorStateUpdate:*(a1 + 32) forProcess:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_updateProcessMonitorPredicates
{
  processMonitor = self->_processMonitor;
  if (processMonitor)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__RWIRelayDelegateIOS__updateProcessMonitorPredicates__block_invoke;
    v4[3] = &unk_279EAC200;
    v4[4] = self;
    [(RBSProcessMonitor *)processMonitor updateConfiguration:v4];
  }
}

void __54__RWIRelayDelegateIOS__updateProcessMonitorPredicates__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _processMonitorPredicatesForConnectedApplications];
  [v3 setPredicates:v4];
}

- (void)relayInitialize:(id)initialize
{
  objc_storeStrong(&self->_relay, initialize);
  initializeCopy = initialize;
  v6 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RWIRelayDelegateIOS_relayInitialize___block_invoke;
  block[3] = &unk_279EAA530;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

void __39__RWIRelayDelegateIOS_relayInitialize___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 8) clientConnections];
  v2 = [v1 count];

  if (!v2)
  {
    v4 = RWIDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      v6 = 0x4000000000000000;
      _os_log_impl(&dword_273C9C000, v4, OS_LOG_TYPE_DEFAULT, "Device: shutting down automatically, no client connection after %{public}g seconds.", &v5, 0xCu);
    }

    exit(1);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (id)relay:(id)relay applicationInfoForIncomingConnection:(id)connection bundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  [(RWIRelayDelegateIOS *)self _createProcessMonitorIfNeeded];
  connection = [connectionCopy connection];
  pid = xpc_connection_get_pid(connection);

  v11 = MEMORY[0x277D46F48];
  v12 = [MEMORY[0x277D46F50] identifierWithPid:pid];
  v34 = 0;
  v13 = [v11 handleForIdentifier:v12 error:&v34];
  v14 = v34;

  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    currentState = [v13 currentState];
    v33 = convertRBSProcessState(currentState);
  }

  else
  {
    currentState = RWIDefaultLog();
    if (os_log_type_enabled(currentState, OS_LOG_TYPE_ERROR))
    {
      [RWIRelayDelegateIOS relay:v14 applicationInfoForIncomingConnection:? bundleIdentifier:?];
    }

    v33 = 0;
  }

  connection2 = [connectionCopy connection];
  v18 = identifierCopy;
  v36 = 0u;
  v37 = 0u;
  xpc_connection_get_audit_token();
  v35[0] = v36;
  v35[1] = v37;
  if (auditTokenHasEntitlement(v35, @"com.apple.private.webinspector.proxy-application"))
  {
    v32 = 1;
  }

  else
  {
    v32 = [v18 hasPrefix:@"com.apple.WebKit.WebContent"];
  }

  connection3 = [connectionCopy connection];
  v20 = v18;
  *&v36 = 0;
  v21 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v20 allowPlaceholder:0 error:&v36];
  v22 = v36;
  if (v22 || !v21)
  {
    v23 = RWIDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [RWIRelayDelegateIOS relay:v20 applicationInfoForIncomingConnection:v22 bundleIdentifier:?];
    }
  }

  v24 = v14;
  localizedName = [v21 localizedName];
  v26 = localizedName;
  if (!localizedName || ![(__CFString *)localizedName length])
  {
    v27 = processNameForPID();

    v26 = v27;
  }

  v28 = &stru_2882B1C88;
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v30 = [[_RWIApplicationInfo alloc] initWithPID:pid bundleId:v20 name:v29 isProxy:v32 connection:connectionCopy debuggerAvailability:v33];

  return v30;
}

- (void)relay:(id)relay activateApplicationWithBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [identifierCopy isEqualToString:@"com.apple.mobilesafari"];
  v6 = RWIDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&dword_273C9C000, v6, OS_LOG_TYPE_DEFAULT, "Device: activating application with bundle identifier: %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277D0AD60];
    v9 = *MEMORY[0x277D0AC20];
    v15[0] = *MEMORY[0x277D0AC70];
    v15[1] = v9;
    v16[0] = MEMORY[0x277CBEC38];
    v16[1] = &unk_2882BC8E0;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v6 = [v8 optionsWithDictionary:v10];

    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__RWIRelayDelegateIOS_relay_activateApplicationWithBundleIdentifier___block_invoke;
    v13[3] = &unk_279EAC228;
    v14 = identifierCopy;
    [serviceWithDefaultShellEndpoint openApplication:v14 withOptions:v6 completion:v13];
  }

  else if (v7)
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_273C9C000, v6, OS_LOG_TYPE_DEFAULT, "Device: application activation request ignored, not allowed for bundle identifier: %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __69__RWIRelayDelegateIOS_relay_activateApplicationWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v8 = [v6 localizedFailureReason];
    }

    else
    {
      v8 = @"(unknown error)";
    }

    v10 = RWIDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__RWIRelayDelegateIOS_relay_activateApplicationWithBundleIdentifier___block_invoke_cold_1(a1, v8, v10);
    }
  }

  else
  {
    v8 = RWIDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412546;
      v13 = v9;
      v14 = 1024;
      v15 = [v5 pid];
      _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Device: activated application (%@) with PID %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)relay:(id)relay unhandledApplicationXPCMessage:(id)message
{
  relayCopy = relay;
  cf = 0;
  if (!lockdown_copy_checkin_info())
  {
    v6 = RWIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_273C9C000, v6, OS_LOG_TYPE_DEFAULT, "Device: Starting lockdown XPC checkin process", buf, 2u);
    }

    v7 = [_RWIRelayClientTCPConnection connectionFromLockdownCheckinWithInfo:cf delegate:self->_relay];
    if (v7)
    {
      v8 = RWIDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Device: Received Client Connection", v9, 2u);
      }

      [relayCopy addPendingClientConnection:v7];
    }

    if (cf)
    {
      CFRelease(cf);
    }

    [relayCopy shutdownIfDisabled];
  }
}

- (void)_startPreventingDeviceFromIdling
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_273C9C000, a2, OS_LOG_TYPE_ERROR, "Unable to take assertion to prevent device from becoming idle: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_stopPreventingDeviceFromIdling
{
  if (self->_idleTimerAssertion)
  {
    v3 = RWIDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_273C9C000, v3, OS_LOG_TYPE_DEFAULT, "Device: Stopped Idling Prevention", v5, 2u);
    }

    [(BSInvalidatable *)self->_idleTimerAssertion invalidate];
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;
  }
}

- (void)_updateDeviceIdlePrevention
{
  v22 = *MEMORY[0x277D85DE8];
  applicationConnections = [(RWIRelay *)self->_relay applicationConnections];
  allKeys = [applicationConnections allKeys];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        applicationConnections2 = [(RWIRelay *)self->_relay applicationConnections];
        v12 = [applicationConnections2 objectForKey:v10];

        if ([v12 debuggerAvailability] && objc_msgSend(v12, "hasRemoteDebugSession"))
        {
          clientConnections = [(RWIRelay *)self->_relay clientConnections];
          debuggerConnectionIdentifier = [v12 debuggerConnectionIdentifier];
          v15 = [clientConnections objectForKey:debuggerConnectionIdentifier];

          if (([v15 sleeping] & 1) == 0)
          {
            [(RWIRelayDelegateIOS *)self _startPreventingDeviceFromIdling];

            goto LABEL_14;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(RWIRelayDelegateIOS *)self _stopPreventingDeviceFromIdling];
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleProcessMonitorStateUpdate:(void *)a1 forProcess:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 pid];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)relay:(void *)a1 applicationInfoForIncomingConnection:bundleIdentifier:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedFailureReason];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)relay:(uint64_t)a1 applicationInfoForIncomingConnection:(void *)a2 bundleIdentifier:.cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 localizedFailureReason];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __69__RWIRelayDelegateIOS_relay_activateApplicationWithBundleIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_273C9C000, log, OS_LOG_TYPE_ERROR, "Device: failed to activate application (%@): %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end