@interface SBSKeyboardFocusService
+ (BKSHIDEventDeferringEnvironment)systemKeyCommandOverlayEnvironment;
- (id)_connection;
- (id)applyAdditionalDeferringRules:(id)a3 whenSceneHasKeyboardFocus:(id)a4 processID:(int)a5;
- (id)setExternalSceneIdentities:(id)a3 forReason:(id)a4;
- (void)dealloc;
- (void)removeKeyboardFocusFromSceneIdentity:(id)a3 processID:(int)a4;
- (void)requestKeyboardFocusForSceneIdentity:(id)a3 processID:(int)a4 completion:(id)a5;
@end

@implementation SBSKeyboardFocusService

+ (BKSHIDEventDeferringEnvironment)systemKeyCommandOverlayEnvironment
{
  if (systemKeyCommandOverlayEnvironment_onceToken != -1)
  {
    +[SBSKeyboardFocusService systemKeyCommandOverlayEnvironment];
  }

  v3 = systemKeyCommandOverlayEnvironment___keyCommandOverlayEnvironment;

  return v3;
}

uint64_t __61__SBSKeyboardFocusService_systemKeyCommandOverlayEnvironment__block_invoke()
{
  systemKeyCommandOverlayEnvironment___keyCommandOverlayEnvironment = [MEMORY[0x1E698E398] environmentWithIdentifier:@"systemKeyCommandOverlay"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = 0;

  v5.receiver = self;
  v5.super_class = SBSKeyboardFocusService;
  [(SBSKeyboardFocusService *)&v5 dealloc];
}

- (void)requestKeyboardFocusForSceneIdentity:(id)a3 processID:(int)a4 completion:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (v8 && v6)
  {
    v10 = [(SBSKeyboardFocusService *)self _connection];
    v11 = [v10 remoteTarget];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__SBSKeyboardFocusService_requestKeyboardFocusForSceneIdentity_processID_completion___block_invoke;
    v13[3] = &unk_1E7360228;
    v14 = v8;
    v15 = v9;
    [v11 requestKeyboardFocusForSceneIdentity:v14 pid:v12 completion:v13];
  }
}

void __85__SBSKeyboardFocusService_requestKeyboardFocusForSceneIdentity_processID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__SBSKeyboardFocusService_requestKeyboardFocusForSceneIdentity_processID_completion___block_invoke_cold_1(a1, v6, v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 BOOLValue]);
}

- (void)removeKeyboardFocusFromSceneIdentity:(id)a3 processID:(int)a4
{
  if (a3)
  {
    v4 = *&a4;
    if (a4)
    {
      v6 = a3;
      v9 = [(SBSKeyboardFocusService *)self _connection];
      v7 = [v9 remoteTarget];
      v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
      [v7 removeKeyboardFocusFromSceneIdentity:v6 pid:v8];
    }
  }
}

- (id)applyAdditionalDeferringRules:(id)a3 whenSceneHasKeyboardFocus:(id)a4 processID:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v11 = [v10 hasEntitlement:@"com.apple.springboard.keyboardfocusservice"];
  if (!v9 || !v11)
  {

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v30 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v30];
  v13 = v30;
  if (v13)
  {
    v14 = v13;
    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBSKeyboardFocusService applyAdditionalDeferringRules:v8 whenSceneHasKeyboardFocus:v15 processID:?];
    }

    goto LABEL_9;
  }

  objc_initWeak(&location, self);
  v18 = objc_alloc(MEMORY[0x1E698E778]);
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__SBSKeyboardFocusService_applyAdditionalDeferringRules_whenSceneHasKeyboardFocus_processID___block_invoke;
  v25[3] = &unk_1E7360250;
  objc_copyWeak(&v27, &location);
  v21 = v9;
  v26 = v21;
  v28 = v5;
  v16 = [v18 initWithIdentifier:v20 forReason:@"SBSKeyboardFocusService" invalidationBlock:v25];

  v22 = [(SBSKeyboardFocusService *)self _connection];
  v23 = [v22 remoteTarget];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [v23 deferAdditionalEnvironments:v12 whenSceneHasKeyboardFocus:v21 pid:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

LABEL_10:

  return v16;
}

void __93__SBSKeyboardFocusService_applyAdditionalDeferringRules_whenSceneHasKeyboardFocus_processID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _connection];
  v3 = [v2 remoteTarget];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v3 stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:v4 pid:v5];
}

- (id)setExternalSceneIdentities:(id)a3 forReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  externalSceneIdentitiesAssertion = self->_externalSceneIdentitiesAssertion;
  if (!externalSceneIdentitiesAssertion)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SBSKeyboardFocusService_setExternalSceneIdentities_forReason___block_invoke;
    v15[3] = &unk_1E735F198;
    v15[4] = self;
    v9 = [MEMORY[0x1E698E658] assertionWithIdentifier:@"SBSKeyboardFocusService-externalSceneIdentities" stateDidChangeHandler:v15];
    v10 = self->_externalSceneIdentitiesAssertion;
    self->_externalSceneIdentitiesAssertion = v9;

    v11 = self->_externalSceneIdentitiesAssertion;
    v12 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v11 setLog:v12];

    externalSceneIdentitiesAssertion = self->_externalSceneIdentitiesAssertion;
  }

  v13 = [(BSCompoundAssertion *)externalSceneIdentitiesAssertion acquireForReason:v7 withContext:v6];

  return v13;
}

void __64__SBSKeyboardFocusService_setExternalSceneIdentities_forReason___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 context];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 unionSet:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) _connection];
  v11 = [v10 remoteTarget];
  [v11 setExternalSceneIdentities:v4];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = MEMORY[0x1E698F498];
    v5 = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSKeyboardFocusServiceSpecification identifier];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    v8 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v8;

    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
    v11 = self->_connection;
    self->_connection = v10;

    v12 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SBSKeyboardFocusService__connection__block_invoke;
    v14[3] = &unk_1E735ED88;
    v14[4] = self;
    [(BSServiceConnection *)v12 configureConnection:v14];
    [(BSServiceConnection *)self->_connection activate];

    connection = self->_connection;
  }

  return connection;
}

void __38__SBSKeyboardFocusService__connection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSKeyboardFocusServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSKeyboardFocusServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __38__SBSKeyboardFocusService__connection__block_invoke_2;
  v9 = &unk_1E735ED60;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setInterruptionHandler:{&__block_literal_global_25, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__SBSKeyboardFocusService__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __38__SBSKeyboardFocusService__connection__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__SBSKeyboardFocusService__connection__block_invoke_3_cold_1(v3);
  }

  [v2 activate];
}

void __85__SBSKeyboardFocusService_requestKeyboardFocusForSceneIdentity_processID_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "SBSKeyboardFocusService: error requesting focus for sceneIdentity %{public}@: %{public}@", &v4, 0x16u);
}

- (void)applyAdditionalDeferringRules:(uint64_t)a1 whenSceneHasKeyboardFocus:(NSObject *)a2 processID:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "SBSKeyboardFocusService failed to encode deferring environments: %{public}@", &v2, 0xCu);
}

@end