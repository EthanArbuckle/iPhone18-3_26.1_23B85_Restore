@interface TCSCallCenter
- (TCSCallCenter)init;
- (TCSCallCenterDelegate)delegate;
- (id)_callPassingPredicate:(id)a3;
- (id)activeCall;
- (id)currentCall;
- (id)ringingCall;
- (void)callConnected:(id)a3;
- (void)callStatusChanged:(id)a3;
- (void)completeInvitationFlowForContact:(id)a3;
- (void)disconnectCall:(id)a3;
- (void)invalidate;
- (void)logEntryForCallWithUniqueProxyIdentifier:(id)a3 completion:(id)a4;
- (void)queryIsTinCannable:(id)a3;
- (void)remoteUplinkMuteChanged:(id)a3;
- (void)sessionViewControllerViewDidAppear;
- (void)synchronouslyFetchCall;
@end

@implementation TCSCallCenter

- (TCSCallCenter)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TCSCallCenter;
  v2 = [(TCSCallCenter *)&v24 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.tincan.server" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2AB80];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    v7 = v2->_connection;
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2ADC8];
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    objc_initWeak(&location, v2);
    objc_initWeak(&from, v2->_connection);
    v9 = v2->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __21__TCSCallCenter_init__block_invoke;
    v20[3] = &unk_279DC1990;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v20];
    v10 = v2->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __21__TCSCallCenter_init__block_invoke_107;
    v18 = &unk_279DC1990;
    objc_copyWeak(&v19, &from);
    [(NSXPCConnection *)v10 setInterruptionHandler:&v15];
    [(NSXPCConnection *)v2->_connection resume:v15];
    [(TCSCallCenter *)v2 synchronouslyFetchCall];
    _TCSInitializeLogging();
    v11 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      call = v2->_call;
      *buf = 138412290;
      v26 = call;
      _os_log_impl(&dword_26F110000, v11, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (init) now tracking call: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

void __21__TCSCallCenter_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _TCSInitializeLogging();
    v2 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[1];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26F110000, v2, OS_LOG_TYPE_DEFAULT, "TCSCallCenter connection invalidation handler called for %@", &v6, 0xCu);
    }

    v4 = WeakRetained[1];
    WeakRetained[1] = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __21__TCSCallCenter_init__block_invoke_107(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _TCSInitializeLogging();
    v2 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_26F110000, v2, OS_LOG_TYPE_DEFAULT, "TCSCallCenter connection interruption handler called for %@", &v4, 0xCu);
    }

    [WeakRetained invalidate];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSCallCenter explicitly invalidating connection.", v4, 2u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
}

- (id)_callPassingPredicate:(id)a3
{
  if ((*(a3 + 2))(a3, self->_call))
  {
    call = self->_call;
  }

  else
  {
    call = 0;
  }

  return call;
}

- (void)synchronouslyFetchCall
{
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_110];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_111;
  v4[3] = &unk_279DC1DA0;
  v4[4] = self;
  [v3 getCall:v4];
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_cold_1();
    }
  }
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_111(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  [*(*(a1 + 32) + 16) setCallCenter:?];
  _TCSInitializeLogging();
  v5 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSCallCenter synchronously fetched call: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)ringingCall
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_104];
  if (v2)
  {
    _TCSInitializeLogging();
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has a ringing call: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)activeCall
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_2];
  if (v2)
  {
    _TCSInitializeLogging();
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has an active call: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)currentCall
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_100];
  if (v2)
  {
    _TCSInitializeLogging();
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has a current call: %@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)sessionViewControllerViewDidAppear
{
  v2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v2 sessionViewControllerViewDidAppear];
}

- (void)queryIsTinCannable:(id)a3
{
  v4 = a3;
  if (+[TCSBehavior isRunningInStoreDemoModeOrSimulator])
  {
    _TCSInitializeLogging();
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "Skipping invitation IDS query since we are running in store demo mode or the simulator.", buf, 2u);
    }

    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CBEAA8] now];
    [v6 didReceiveCallFromContact:v4 date:v7];
  }

  else
  {
    v8 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v8 queryIsTinCannable:v4];
  }
}

- (void)completeInvitationFlowForContact:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 completeInvitationFlowForContact:v4];
}

- (void)logEntryForCallWithUniqueProxyIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke;
  v14[3] = &unk_279DC1DC8;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_117;
  v12[3] = &unk_279DC1DF0;
  v13 = v8;
  v11 = v8;
  [v10 getLogEntryForCallWithUniqueProxyIdentifier:v9 completion:v12];
}

void __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = objc_opt_new();
      (*(v4 + 16))(v4, v5);
    }
  }
}

uint64_t __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_117(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    _TCSInitializeLogging();
    v2 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[TCSCallCenter setUplinkMuted:for:completion:]_block_invoke";
      _os_log_impl(&dword_26F110000, v2, OS_LOG_TYPE_DEFAULT, "Timed out waiting for completion to fire for %s, manually firing", &v4, 0xCu);
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    result = (*(*(v1 + 32) + 16))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke_118(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    _TCSInitializeLogging();
    v2 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[TCSCallCenter setUplinkMuted:for:completion:]_block_invoke";
      _os_log_impl(&dword_26F110000, v2, OS_LOG_TYPE_DEFAULT, "Calling completion for %s", &v4, 0xCu);
    }

    *(*(*(v1 + 40) + 8) + 24) = 1;
    result = (*(*(v1 + 32) + 16))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)disconnectCall:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 disconnectCall:v4];
}

- (void)callStatusChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_call, a3);
  [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging();
  v6 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v10 = 138412290;
    v11 = call;
    _os_log_impl(&dword_26F110000, v6, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (callStatusChanged) now tracking call: %@", &v10, 0xCu);
  }

  v8 = [(TCSCallCenter *)self delegate];
  [v8 callStatusChanged:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)callConnected:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_call, a3);
  [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging();
  v6 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v10 = 138412290;
    v11 = call;
    _os_log_impl(&dword_26F110000, v6, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (callConnected) now tracking call: %@", &v10, 0xCu);
  }

  v8 = [(TCSCallCenter *)self delegate];
  [v8 callConnected:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteUplinkMuteChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_call, a3);
  [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging();
  v6 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v10 = 138412290;
    v11 = call;
    _os_log_impl(&dword_26F110000, v6, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (remoteUplinkMuteChanged) now tracking call: %@", &v10, 0xCu);
  }

  v8 = [(TCSCallCenter *)self delegate];
  [v8 remoteUplinkMuteChanged:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (TCSCallCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end