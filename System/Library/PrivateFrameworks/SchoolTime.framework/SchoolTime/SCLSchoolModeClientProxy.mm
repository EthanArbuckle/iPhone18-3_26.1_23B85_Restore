@interface SCLSchoolModeClientProxy
- (BOOL)validateBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)validatePairing:(id *)pairing;
- (NSString)description;
- (SCLSchoolModeClientProxy)initWithConnection:(id)connection;
- (SCLSchoolModeClientProxyDelegate)delegate;
- (SCLSchoolModeCoordinator)coordinator;
- (id)remoteClient;
- (id)serverSettings;
- (void)addUnlockHistoryItem:(id)item completion:(id)completion;
- (void)applySchedule:(id)schedule completion:(id)completion;
- (void)connectWithPairingID:(id)d identifier:(id)identifier completion:(id)completion;
- (void)deleteHistoryWithCompletion:(id)completion;
- (void)didUpdateState:(id)state fromState:(id)fromState;
- (void)dumpState;
- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion;
- (void)noteSignificantUserInteraction;
- (void)sendServerSettings:(id)settings;
- (void)triggerRemoteSync;
- (void)unlockHistoryDidChange;
@end

@implementation SCLSchoolModeClientProxy

- (SCLSchoolModeClientProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = SCLSchoolModeClientProxy;
  v6 = [(SCLSchoolModeClientProxy *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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
  pairingID = [(SCLSchoolModeClientProxy *)self pairingID];
  v5 = [v3 appendObject:pairingID withName:@"pairingID"];

  identifier = [(SCLSchoolModeClientProxy *)self identifier];
  v7 = [v3 appendObject:identifier withName:@"identifier"];

  v8 = [v3 appendInt:-[NSXPCConnection processIdentifier](self->_connection withName:{"processIdentifier"), @"pid"}];
  build = [v3 build];

  return build;
}

- (void)connectWithPairingID:(id)d identifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  dCopy = d;
  v11 = scl_framework_log();
  v12 = os_signpost_id_make_with_pointer(v11, self);

  v13 = scl_framework_log();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v20 = 134217984;
    selfCopy2 = self;
    _os_signpost_emit_with_name_impl(&dword_264829000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Connect Client", "Client: %p", &v20, 0xCu);
  }

  [(SCLSchoolModeClientProxy *)self setPairingID:dCopy];
  [(SCLSchoolModeClientProxy *)self setIdentifier:identifierCopy];

  delegate = [(SCLSchoolModeClientProxy *)self delegate];
  [delegate clientProxy:self didConnectWithPairingID:dCopy];

  serverSettings = [(SCLSchoolModeClientProxy *)self serverSettings];
  completionCopy[2](completionCopy, serverSettings, 0);

  v17 = scl_framework_log();
  v18 = v17;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = 134217984;
    selfCopy2 = self;
    _os_signpost_emit_with_name_impl(&dword_264829000, v18, OS_SIGNPOST_INTERVAL_END, v12, "Connect Client", "Client: %p", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)applySchedule:(id)schedule completion:(id)completion
{
  scheduleCopy = schedule;
  completionCopy = completion;
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
      coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
      v15 = v12;
      v14 = [coordinator applySchedule:scheduleCopy error:&v15];
      v10 = v15;

      completionCopy[2](completionCopy, v14, v10);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v12);
      v10 = v12;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)addUnlockHistoryItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
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
      coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
      [coordinator addUnlockHistoryItem:itemCopy completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0, v12);
    }

    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)deleteHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
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
      coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
      [coordinator deleteHistoryWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0, v9);
    }

    v7 = v9;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion
{
  completionCopy = completion;
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
      coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
      [coordinator fetchRecentUnlockHistoryItemsWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8], v9);
    }

    v7 = v9;
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8], v6);
  }
}

- (void)triggerRemoteSync
{
  coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
  configuration = [coordinator configuration];
  transportController = [configuration transportController];
  [transportController requestRemoteSettings];
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
  coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
  configuration = [coordinator configuration];
  transportController = [configuration transportController];
  settingsSyncCoordinator = [transportController settingsSyncCoordinator];
  [settingsSyncCoordinator noteSignificantUserInteractionOccured];
}

- (BOOL)validateBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  connection = [(SCLSchoolModeClientProxy *)self connection];
  v8 = [connection valueForEntitlement:entitlementCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = 1;
  }

  else if (error)
  {
    SCLEntitlementError(entitlementCopy);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validatePairing:(id *)pairing
{
  coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
  isReady = [coordinator isReady];

  if (pairing && (isReady & 1) == 0)
  {
    pairingID = [(SCLSchoolModeClientProxy *)self pairingID];
    *pairing = SCLPairingUnavailableError(pairingID);
  }

  return isReady;
}

- (id)serverSettings
{
  coordinator = [(SCLSchoolModeClientProxy *)self coordinator];
  currentState = [coordinator currentState];

  coordinator2 = [(SCLSchoolModeClientProxy *)self coordinator];
  scheduleSettings = [coordinator2 scheduleSettings];

  coordinator3 = [(SCLSchoolModeClientProxy *)self coordinator];
  isReady = [coordinator3 isReady];

  v9 = objc_alloc_init(SCLSchoolModeServerSettings);
  [(SCLSchoolModeServerSettings *)v9 setState:currentState];
  [(SCLSchoolModeServerSettings *)v9 setScheduleSettings:scheduleSettings];
  [(SCLSchoolModeServerSettings *)v9 setLoaded:isReady];

  return v9;
}

- (void)sendServerSettings:(id)settings
{
  settingsCopy = settings;
  remoteClient = [(SCLSchoolModeClientProxy *)self remoteClient];
  [remoteClient applyServerSettings:settingsCopy];
}

- (id)remoteClient
{
  connection = [(SCLSchoolModeClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)didUpdateState:(id)state fromState:(id)fromState
{
  v5 = [(SCLSchoolModeClientProxy *)self serverSettings:state];
  [(SCLSchoolModeClientProxy *)self sendServerSettings:v5];
}

- (void)unlockHistoryDidChange
{
  remoteClient = [(SCLSchoolModeClientProxy *)self remoteClient];
  [remoteClient didChangeUnlockHistory];
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