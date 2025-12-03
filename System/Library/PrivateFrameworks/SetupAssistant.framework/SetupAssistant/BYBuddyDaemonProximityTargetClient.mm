@interface BYBuddyDaemonProximityTargetClient
- (BYBuddyDaemonProximityTargetClient)init;
- (BYBuddyDaemonProximityTargetProtocol)delegate;
- (id)fileTransferSessionTemplate;
- (void)beginAdvertisingProximitySetup;
- (void)beginSIMSetupExternalAuthentication;
- (void)connectToDaemon;
- (void)dismissProximityPinCode;
- (void)endAdvertisingProximitySetup;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)endSIMSetupExternalAuthentication;
- (void)hasConnection:(id)connection;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)preparing;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)completed;
- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings;
- (void)resumeProximitySetup:(id)setup;
- (void)sendData:(id)data;
- (void)showMigrationInterfaceOnSource;
- (void)storeHandshake:(id)handshake;
- (void)storeInformation:(id)information;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
@end

@implementation BYBuddyDaemonProximityTargetClient

- (BYBuddyDaemonProximityTargetClient)init
{
  v5.receiver = self;
  v5.super_class = BYBuddyDaemonProximityTargetClient;
  v2 = [(BYBuddyDaemonProximityTargetClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYBuddyDaemonProximityTargetClient *)v2 connectToDaemon];
  }

  return v3;
}

- (void)connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.proximity.target.xpc" options:0];
  [(BYBuddyDaemonProximityTargetClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4C98];
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection setRemoteObjectInterface:v4];

  proximityTargetClientInterface = [objc_opt_class() proximityTargetClientInterface];
  connection2 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection2 setExportedInterface:proximityTargetClientInterface];

  connection3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection3 setExportedObject:self];

  connection4 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection4 setInvalidationHandler:&__block_literal_global_4];

  connection5 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection5 setInterruptionHandler:&__block_literal_global_96];

  connection6 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [connection6 resume];
}

void __53__BYBuddyDaemonProximityTargetClient_connectToDaemon__block_invoke()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Proximity target client connection invalidated!", v1, 2u);
  }
}

void __53__BYBuddyDaemonProximityTargetClient_connectToDaemon__block_invoke_94()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "Proximity target client connection interruption!", v1, 2u);
  }
}

- (void)beginAdvertisingProximitySetup
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy beginAdvertisingProximitySetup];
}

- (void)endAdvertisingProximitySetup
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy endAdvertisingProximitySetup];
}

- (void)endPairing
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy endPairing];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy sendData:dataCopy];
}

- (void)hasConnection:(id)connection
{
  connectionCopy = connection;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__BYBuddyDaemonProximityTargetClient_hasConnection___block_invoke;
  v8[3] = &unk_1E7D029E0;
  v9 = connectionCopy;
  v7 = connectionCopy;
  [remoteObjectProxy hasConnection:v8];
}

uint64_t __52__BYBuddyDaemonProximityTargetClient_hasConnection___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resumeProximitySetup:(id)setup
{
  setupCopy = setup;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__BYBuddyDaemonProximityTargetClient_resumeProximitySetup___block_invoke;
  v8[3] = &unk_1E7D02A08;
  v9 = setupCopy;
  v7 = setupCopy;
  [remoteObjectProxy resumeProximitySetup:v8];
}

uint64_t __59__BYBuddyDaemonProximityTargetClient_resumeProximitySetup___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)storeInformation:(id)information
{
  informationCopy = information;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_101];
  [v5 storeInformation:informationCopy];
}

void __55__BYBuddyDaemonProximityTargetClient_storeInformation___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v5 = 0;
      v6 = v3;
    }

    else if (v3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v6 = [v7 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Unable to store proximity information: %{public}@", buf, 0xCu);
    if (v5)
    {
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)storeHandshake:(id)handshake
{
  handshakeCopy = handshake;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_107];
  [v5 storeHandshake:handshakeCopy];
}

void __53__BYBuddyDaemonProximityTargetClient_storeHandshake___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v5 = 0;
      v6 = v3;
    }

    else if (v3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v6 = [v7 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v5 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Unable to store proximity handshake: %{public}@", buf, 0xCu);
    if (v5)
    {
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)fileTransferSessionTemplate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_109];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__BYBuddyDaemonProximityTargetClient_fileTransferSessionTemplate__block_invoke_110;
  v6[3] = &unk_1E7D02A30;
  v6[4] = &v7;
  [v3 fileTransferSessionTemplate:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__BYBuddyDaemonProximityTargetClient_fileTransferSessionTemplate__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Unable to begin device to device migration: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)endDeviceToDeviceMigration
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy endDeviceToDeviceMigration];
}

- (void)showMigrationInterfaceOnSource
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy showMigrationInterfaceOnSource];
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  updateCopy = update;
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy suspendConnectionForSoftwareUpdate:updateCopy];
}

- (void)beginSIMSetupExternalAuthentication
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy beginSIMSetupExternalAuthentication];
}

- (void)endSIMSetupExternalAuthentication
{
  connection = [(BYBuddyDaemonProximityTargetClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy endSIMSetupExternalAuthentication];
}

- (void)proximitySetupCompleted:(id)completed
{
  completedCopy = completed;
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate proximitySetupCompleted:completedCopy];
}

- (void)dismissProximityPinCode
{
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate dismissProximityPinCode];
}

- (void)proximityConnectionPreparing:(id)preparing
{
  preparingCopy = preparing;
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate proximityConnectionPreparing:preparingCopy];
}

- (void)proximityConnectionInitiated
{
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate proximityConnectionInitiated];
}

- (void)proximityConnectionTerminated
{
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate proximityConnectionTerminated];
}

- (void)proximityConnectionReconnected
{
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate proximityConnectionReconnected];
}

- (void)receivedLanguages:(id)languages locale:(id)locale model:(id)model deviceClass:(id)class accessibilitySettings:(id)settings
{
  settingsCopy = settings;
  classCopy = class;
  modelCopy = model;
  localeCopy = locale;
  languagesCopy = languages;
  delegate = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [delegate receivedLanguages:languagesCopy locale:localeCopy model:modelCopy deviceClass:classCopy accessibilitySettings:settingsCopy];
}

- (BYBuddyDaemonProximityTargetProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end