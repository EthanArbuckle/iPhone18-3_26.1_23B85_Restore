@interface SiriVocalShortcutSource
- (SiriVocalShortcutSource)init;
- (void)activateWithContext:(id)context;
- (void)configureConnection;
@end

@implementation SiriVocalShortcutSource

- (SiriVocalShortcutSource)init
{
  v5.receiver = self;
  v5.super_class = SiriVocalShortcutSource;
  v2 = [(SiriActivationSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SiriVocalShortcutSource *)v2 configureConnection];
  }

  return v3;
}

- (void)configureConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = +[SASBoardServicesConfiguration configuration];
  machServiceIdentifier = [v4 machServiceIdentifier];
  v6 = +[SASBoardServicesConfiguration configuration];
  v7 = [v6 identifierForService:1];
  v8 = [v3 endpointForMachName:machServiceIdentifier service:v7 instance:0];

  v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
  connection = self->super._connection;
  self->super._connection = v9;

  objc_initWeak(&location, self);
  v11 = self->super._connection;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__SiriVocalShortcutSource_configureConnection__block_invoke;
  v15 = &unk_1E82F3658;
  objc_copyWeak(&v16, &location);
  [(BSServiceConnection *)v11 configureConnection:&v12];
  [(BSServiceConnection *)self->super._connection activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__SiriVocalShortcutSource_configureConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained identifier];
    v7 = +[SASSignalServer serviceQuality];
    [v3 setServiceQuality:v7];

    v8 = +[SASSignalServer interface];
    [v3 setInterface:v8];

    [v3 setInterfaceTarget:v5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__SiriVocalShortcutSource_configureConnection__block_invoke_2;
    v14[3] = &unk_1E82F35E8;
    v9 = v6;
    v15 = v9;
    [v3 setInvalidationHandler:v14];
    [v3 setInterruptionHandler:&__block_literal_global_22];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SiriVocalShortcutSource_configureConnection__block_invoke_26;
    v11[3] = &unk_1E82F3630;
    objc_copyWeak(&v13, (a1 + 32));
    v10 = v9;
    v12 = v10;
    [v3 setActivationHandler:v11];

    objc_destroyWeak(&v13);
  }
}

void __46__SiriVocalShortcutSource_configureConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SiriVocalShortcutSource configureConnection]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Invalidated %@", &v7, 0x16u);
  }

  v5 = [v3 remoteTarget];
  [v5 unregisterNonButtonSourceWithType:&unk_1F47D18D8 withUUID:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

void __46__SiriVocalShortcutSource_configureConnection__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    __46__SiriVocalShortcutSource_configureConnection__block_invoke_24_cold_1(v2, v3);
  }
}

void __46__SiriVocalShortcutSource_configureConnection__block_invoke_26(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SiriVocalShortcutSource configureConnection]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated %@", &v9, 0x16u);
    }

    v7 = [v3 remoteTarget];
    [v7 registerNonButtonSourceWithType:&unk_1F47D18D8 withUUID:*(a1 + 32)];

    os_unfair_lock_unlock(v5 + 4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->super._lock);
  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  [remoteTarget activationRequestFromVocalShortcutWithContext:contextCopy];

  os_unfair_lock_unlock(&self->super._lock);
}

void __46__SiriVocalShortcutSource_configureConnection__block_invoke_24_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SiriVocalShortcutSource configureConnection]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #activation BSServiceConnection Interrupted %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end