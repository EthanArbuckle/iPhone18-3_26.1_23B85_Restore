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
- (void)hasConnection:(id)a3;
- (void)proximityConnectionInitiated;
- (void)proximityConnectionPreparing:(id)a3;
- (void)proximityConnectionReconnected;
- (void)proximityConnectionTerminated;
- (void)proximitySetupCompleted:(id)a3;
- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7;
- (void)resumeProximitySetup:(id)a3;
- (void)sendData:(id)a3;
- (void)showMigrationInterfaceOnSource;
- (void)storeHandshake:(id)a3;
- (void)storeInformation:(id)a3;
- (void)suspendConnectionForSoftwareUpdate:(id)a3;
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
  v5 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [objc_opt_class() proximityTargetClientInterface];
  v7 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v7 setExportedInterface:v6];

  v8 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v8 setExportedObject:self];

  v9 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v9 setInvalidationHandler:&__block_literal_global_4];

  v10 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v10 setInterruptionHandler:&__block_literal_global_96];

  v11 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  [v11 resume];
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
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 beginAdvertisingProximitySetup];
}

- (void)endAdvertisingProximitySetup
{
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 endAdvertisingProximitySetup];
}

- (void)endPairing
{
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 endPairing];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 sendData:v4];
}

- (void)hasConnection:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__BYBuddyDaemonProximityTargetClient_hasConnection___block_invoke;
  v8[3] = &unk_1E7D029E0;
  v9 = v4;
  v7 = v4;
  [v6 hasConnection:v8];
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

- (void)resumeProximitySetup:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__BYBuddyDaemonProximityTargetClient_resumeProximitySetup___block_invoke;
  v8[3] = &unk_1E7D02A08;
  v9 = v4;
  v7 = v4;
  [v6 resumeProximitySetup:v8];
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

- (void)storeInformation:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_101];
  [v5 storeInformation:v4];
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

- (void)storeHandshake:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_107];
  [v5 storeHandshake:v4];
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
  v2 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_109];
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
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 endDeviceToDeviceMigration];
}

- (void)showMigrationInterfaceOnSource
{
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 showMigrationInterfaceOnSource];
}

- (void)suspendConnectionForSoftwareUpdate:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 suspendConnectionForSoftwareUpdate:v4];
}

- (void)beginSIMSetupExternalAuthentication
{
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 beginSIMSetupExternalAuthentication];
}

- (void)endSIMSetupExternalAuthentication
{
  v3 = [(BYBuddyDaemonProximityTargetClient *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 endSIMSetupExternalAuthentication];
}

- (void)proximitySetupCompleted:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v5 proximitySetupCompleted:v4];
}

- (void)dismissProximityPinCode
{
  v2 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v2 dismissProximityPinCode];
}

- (void)proximityConnectionPreparing:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v5 proximityConnectionPreparing:v4];
}

- (void)proximityConnectionInitiated
{
  v2 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v2 proximityConnectionInitiated];
}

- (void)proximityConnectionTerminated
{
  v2 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v2 proximityConnectionTerminated];
}

- (void)proximityConnectionReconnected
{
  v2 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v2 proximityConnectionReconnected];
}

- (void)receivedLanguages:(id)a3 locale:(id)a4 model:(id)a5 deviceClass:(id)a6 accessibilitySettings:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(BYBuddyDaemonProximityTargetClient *)self delegate];
  [v17 receivedLanguages:v16 locale:v15 model:v14 deviceClass:v13 accessibilitySettings:v12];
}

- (BYBuddyDaemonProximityTargetProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end