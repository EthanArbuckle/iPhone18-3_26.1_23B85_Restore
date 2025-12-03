@interface SiriDirectActionSource
- (SiriDirectActionSource)initWithDelegate:(id)delegate;
- (SiriDirectActionSourceDelegate)delegate;
- (void)activateWithContext:(id)context;
- (void)activateWithContext:(id)context completion:(id)completion;
- (void)canActivateChangedTo:(id)to;
- (void)configureConnection;
@end

@implementation SiriDirectActionSource

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
  v14 = __45__SiriDirectActionSource_configureConnection__block_invoke;
  v15 = &unk_1E82F3658;
  objc_copyWeak(&v16, &location);
  [(BSServiceConnection *)v11 configureConnection:&v12];
  [(BSServiceConnection *)self->super._connection activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __45__SiriDirectActionSource_configureConnection__block_invoke(uint64_t a1, void *a2)
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
    v14[2] = __45__SiriDirectActionSource_configureConnection__block_invoke_2;
    v14[3] = &unk_1E82F35E8;
    v9 = v6;
    v15 = v9;
    [v3 setInvalidationHandler:v14];
    [v3 setInterruptionHandler:&__block_literal_global_23];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__SiriDirectActionSource_configureConnection__block_invoke_27;
    v11[3] = &unk_1E82F3630;
    objc_copyWeak(&v13, (a1 + 32));
    v10 = v9;
    v12 = v10;
    [v3 setActivationHandler:v11];

    objc_destroyWeak(&v13);
  }
}

void __45__SiriDirectActionSource_configureConnection__block_invoke_27(uint64_t a1, void *a2)
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
      v10 = "[SiriDirectActionSource configureConnection]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Activated %@", &v9, 0x16u);
    }

    v7 = [v3 remoteTarget];
    [v7 registerNonButtonSourceWithType:&unk_1F47D18F0 withUUID:*(a1 + 32)];

    os_unfair_lock_unlock(v5 + 4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (SiriDirectActionSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SiriDirectActionSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SiriDirectActionSource;
  v5 = [(SiriActivationSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SiriDirectActionSource *)v5 setDelegate:delegateCopy];
    [(SiriDirectActionSource *)v6 configureConnection];
  }

  return v6;
}

- (void)activateWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriDirectActionSource activateWithContext:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation %@", &v8, 0x16u);
  }

  os_unfair_lock_lock(&self->super._lock);
  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  [remoteTarget activationRequestFromDirectActionEventWithContext:contextCopy];

  os_unfair_lock_unlock(&self->super._lock);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)activateWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SiriDirectActionSource activateWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__SiriDirectActionSource_activateWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E82F47C0;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->super._lock);
  remoteTarget = [(BSServiceConnection *)self->super._connection remoteTarget];
  [remoteTarget activationRequestFromDirectActionEventWithContext:contextCopy completion:v10];

  os_unfair_lock_unlock(&self->super._lock);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SiriDirectActionSource_activateWithContext_completion___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 BOOLValue];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

void __45__SiriDirectActionSource_configureConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SiriDirectActionSource configureConnection]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation BSServiceConnection Invalidated %@", &v7, 0x16u);
  }

  v5 = [v3 remoteTarget];
  [v5 unregisterNonButtonSourceWithType:&unk_1F47D18F0 withUUID:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

void __45__SiriDirectActionSource_configureConnection__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    __45__SiriDirectActionSource_configureConnection__block_invoke_25_cold_1(v2, v3);
  }

  [v2 activate];
}

- (void)canActivateChangedTo:(id)to
{
  v12 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriDirectActionSource canActivateChangedTo:]";
    v10 = 2112;
    v11 = toCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation canActivateChangedTo: %@", &v8, 0x16u);
  }

  delegate = [(SiriDirectActionSource *)self delegate];
  [delegate canActivateChangedTo:{objc_msgSend(toCopy, "BOOLValue")}];

  v7 = *MEMORY[0x1E69E9840];
}

void __45__SiriDirectActionSource_configureConnection__block_invoke_25_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SiriDirectActionSource configureConnection]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #activation BSServiceConnection Interrupted, re-activating %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end