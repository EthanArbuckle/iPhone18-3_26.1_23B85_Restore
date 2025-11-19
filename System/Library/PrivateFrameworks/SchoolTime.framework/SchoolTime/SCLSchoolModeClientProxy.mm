@interface SCLSchoolModeClientProxy
- (BOOL)validateBooleanEntitlement:(id)a3 error:(id *)a4;
- (BOOL)validatePairing:(id *)a3;
- (NSString)description;
- (SCLSchoolModeClientProxy)initWithConnection:(id)a3;
- (SCLSchoolModeClientProxyDelegate)delegate;
- (SCLSchoolModeCoordinator)coordinator;
- (id)remoteClient;
- (id)serverSettings;
- (void)addUnlockHistoryItem:(id)a3 completion:(id)a4;
- (void)applySchedule:(id)a3 completion:(id)a4;
- (void)connectWithPairingID:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)deleteHistoryWithCompletion:(id)a3;
- (void)didUpdateState:(id)a3 fromState:(id)a4;
- (void)dumpState;
- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)a3;
- (void)noteSignificantUserInteraction;
- (void)sendServerSettings:(id)a3;
- (void)triggerRemoteSync;
- (void)unlockHistoryDidChange;
@end

@implementation SCLSchoolModeClientProxy

- (SCLSchoolModeClientProxy)initWithConnection:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SCLSchoolModeClientProxy;
  v6 = [(SCLSchoolModeClientProxy *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = SCLSchoolModeServerXPCInterface();
    [(NSXPCConnection *)connection setExportedInterface:v9];

    v10 = v7->_connection;
    v11 = SCLSchoolModeClientXPCInterface();
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    objc_initWeak(&location, v7);
    v12 = v7->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__SCLSchoolModeClientProxy_initWithConnection___block_invoke;
    v14[3] = &unk_279B6C3A8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v12 setInvalidationHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __47__SCLSchoolModeClientProxy_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 clientProxyDidInvalidate:WeakRetained];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SCLSchoolModeClientProxy *)self pairingID];
  v5 = [v3 appendObject:v4 withName:@"pairingID"];

  v6 = [(SCLSchoolModeClientProxy *)self identifier];
  v7 = [v3 appendObject:v6 withName:@"identifier"];

  v8 = [v3 appendInt:-[NSXPCConnection processIdentifier](self->_connection withName:{"processIdentifier"), @"pid"}];
  v9 = [v3 build];

  return v9;
}

- (void)connectWithPairingID:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = scl_framework_log();
  v12 = os_signpost_id_make_with_pointer(v11, self);

  v13 = scl_framework_log();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v20 = 134217984;
    v21 = self;
    _os_signpost_emit_with_name_impl(&dword_264829000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Connect Client", "Client: %p", &v20, 0xCu);
  }

  [(SCLSchoolModeClientProxy *)self setPairingID:v10];
  [(SCLSchoolModeClientProxy *)self setIdentifier:v9];

  v15 = [(SCLSchoolModeClientProxy *)self delegate];
  [v15 clientProxy:self didConnectWithPairingID:v10];

  v16 = [(SCLSchoolModeClientProxy *)self serverSettings];
  v8[2](v8, v16, 0);

  v17 = scl_framework_log();
  v18 = v17;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = 134217984;
    v21 = self;
    _os_signpost_emit_with_name_impl(&dword_264829000, v18, OS_SIGNPOST_INTERVAL_END, v12, "Connect Client", "Client: %p", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)applySchedule:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [(SCLSchoolModeClientProxy *)self validateBooleanEntitlement:@"com.apple.schooltime.setschedule" error:&v17];
  v9 = v17;
  v10 = v9;
  if (v8)
  {
    v16 = v9;
    v11 = [(SCLSchoolModeClientProxy *)self validatePairing:&v16];
    v12 = v16;

    if (v11)
    {
      v13 = [(SCLSchoolModeClientProxy *)self coordinator];
      v15 = v12;
      v14 = [v13 applySchedule:v6 error:&v15];
      v10 = v15;

      v7[2](v7, v14, v10);
    }

    else
    {
      v7[2](v7, 0, v12);
      v10 = v12;
    }
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (void)addUnlockHistoryItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(SCLSchoolModeClientProxy *)self validateBooleanEntitlement:@"com.apple.schooltime.edithistory" error:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v14 = v9;
    v11 = [(SCLSchoolModeClientProxy *)self validatePairing:&v14];
    v12 = v14;

    if (v11)
    {
      v13 = [(SCLSchoolModeClientProxy *)self coordinator];
      [v13 addUnlockHistoryItem:v6 completion:v7];
    }

    else
    {
      v7[2](v7, 0, v12);
    }

    v10 = v12;
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (void)deleteHistoryWithCompletion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(SCLSchoolModeClientProxy *)self validateBooleanEntitlement:@"com.apple.schooltime.edithistory" error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v11 = v6;
    v8 = [(SCLSchoolModeClientProxy *)self validatePairing:&v11];
    v9 = v11;

    if (v8)
    {
      v10 = [(SCLSchoolModeClientProxy *)self coordinator];
      [v10 deleteHistoryWithCompletion:v4];
    }

    else
    {
      v4[2](v4, 0, v9);
    }

    v7 = v9;
  }

  else
  {
    v4[2](v4, 0, v6);
  }
}

- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(SCLSchoolModeClientProxy *)self validateBooleanEntitlement:@"com.apple.schooltime.unlockhistory" error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v11 = v6;
    v8 = [(SCLSchoolModeClientProxy *)self validatePairing:&v11];
    v9 = v11;

    if (v8)
    {
      v10 = [(SCLSchoolModeClientProxy *)self coordinator];
      [v10 fetchRecentUnlockHistoryItemsWithCompletion:v4];
    }

    else
    {
      v4[2](v4, MEMORY[0x277CBEBF8], v9);
    }

    v7 = v9;
  }

  else
  {
    v4[2](v4, MEMORY[0x277CBEBF8], v6);
  }
}

- (void)triggerRemoteSync
{
  v4 = [(SCLSchoolModeClientProxy *)self coordinator];
  v2 = [v4 configuration];
  v3 = [v2 transportController];
  [v3 requestRemoteSettings];
}

- (void)dumpState
{
  v2 = scl_framework_log();
  if (os_log_type_enabled(v2, 0x90u))
  {
    [(SCLSchoolModeClientProxy *)v2 dumpState];
  }
}

- (void)noteSignificantUserInteraction
{
  v5 = [(SCLSchoolModeClientProxy *)self coordinator];
  v2 = [v5 configuration];
  v3 = [v2 transportController];
  v4 = [v3 settingsSyncCoordinator];
  [v4 noteSignificantUserInteractionOccured];
}

- (BOOL)validateBooleanEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SCLSchoolModeClientProxy *)self connection];
  v8 = [v7 valueForEntitlement:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = 1;
  }

  else if (a4)
  {
    SCLEntitlementError(v6);
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validatePairing:(id *)a3
{
  v5 = [(SCLSchoolModeClientProxy *)self coordinator];
  v6 = [v5 isReady];

  if (a3 && (v6 & 1) == 0)
  {
    v7 = [(SCLSchoolModeClientProxy *)self pairingID];
    *a3 = SCLPairingUnavailableError(v7);
  }

  return v6;
}

- (id)serverSettings
{
  v3 = [(SCLSchoolModeClientProxy *)self coordinator];
  v4 = [v3 currentState];

  v5 = [(SCLSchoolModeClientProxy *)self coordinator];
  v6 = [v5 scheduleSettings];

  v7 = [(SCLSchoolModeClientProxy *)self coordinator];
  v8 = [v7 isReady];

  v9 = objc_alloc_init(SCLSchoolModeServerSettings);
  [(SCLSchoolModeServerSettings *)v9 setState:v4];
  [(SCLSchoolModeServerSettings *)v9 setScheduleSettings:v6];
  [(SCLSchoolModeServerSettings *)v9 setLoaded:v8];

  return v9;
}

- (void)sendServerSettings:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeClientProxy *)self remoteClient];
  [v5 applyServerSettings:v4];
}

- (id)remoteClient
{
  v2 = [(SCLSchoolModeClientProxy *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)didUpdateState:(id)a3 fromState:(id)a4
{
  v5 = [(SCLSchoolModeClientProxy *)self serverSettings:a3];
  [(SCLSchoolModeClientProxy *)self sendServerSettings:v5];
}

- (void)unlockHistoryDidChange
{
  v2 = [(SCLSchoolModeClientProxy *)self remoteClient];
  [v2 didChangeUnlockHistory];
}

- (SCLSchoolModeCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (SCLSchoolModeClientProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end