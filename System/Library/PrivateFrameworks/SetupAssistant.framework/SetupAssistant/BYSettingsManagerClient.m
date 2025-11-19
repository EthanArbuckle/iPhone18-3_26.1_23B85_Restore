@interface BYSettingsManagerClient
- (BOOL)hasStashedValuesOnDisk;
- (BYSettingsManagerClient)init;
- (void)_connectToDaemon;
@end

@implementation BYSettingsManagerClient

- (BYSettingsManagerClient)init
{
  v5.receiver = self;
  v5.super_class = BYSettingsManagerClient;
  v2 = [(BYSettingsManagerClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYSettingsManagerClient *)v2 _connectToDaemon];
  }

  return v3;
}

- (BOOL)hasStashedValuesOnDisk
{
  v2 = [(BYSettingsManagerClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18];

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__BYSettingsManagerClient_hasStashedValuesOnDisk__block_invoke_14;
  v5[3] = &unk_1E7D03218;
  v5[4] = &v6;
  [v3 hasStashedValuesOnDisk:v5];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __49__BYSettingsManagerClient_hasStashedValuesOnDisk__block_invoke(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Unable to retrieve whether or not stashed values exist on disk: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.settings.xpc" options:0];
  [(BYSettingsManagerClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4D58];
  v5 = [(BYSettingsManagerClient *)self connection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [(BYSettingsManagerClient *)self connection];
  [v6 setInvalidationHandler:&__block_literal_global_67];

  v7 = [(BYSettingsManagerClient *)self connection];
  [v7 setInterruptionHandler:&__block_literal_global_70];

  v8 = [(BYSettingsManagerClient *)self connection];
  [v8 resume];
}

void __43__BYSettingsManagerClient__connectToDaemon__block_invoke()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__BYSettingsManagerClient__connectToDaemon__block_invoke_cold_1(v0);
  }
}

void __43__BYSettingsManagerClient__connectToDaemon__block_invoke_68()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__BYSettingsManagerClient__connectToDaemon__block_invoke_68_cold_1(v0);
  }
}

@end