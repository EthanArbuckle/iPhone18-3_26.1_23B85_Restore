@interface SFClient
- (SFClient)init;
- (id)syncRemoteProxyWithError:(id *)a3;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateAssertionWithIdentifier:(id)a3;
- (void)activityStateWithCompletion:(id)a3;
- (void)appleIDInfoWithCompletion:(id)a3;
- (void)broadwayPresentCardWithCode:(id)a3 options:(id)a4 completion:(id)a5;
- (void)clearXPCHelperImageCacheWithCompletion:(id)a3;
- (void)contactHandlesForShortHashData:(id)a3 completion:(id)a4;
- (void)contactIDForEmailHash:(id)a3 phoneHash:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)displayNameForEmailHash:(id)a3 phoneHash:(id)a4 completion:(id)a5;
- (void)displayStringForContactIdentifier:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5;
- (void)displayStringForContactIdentifierSync:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5;
- (void)ensureSyncXPCStarted;
- (void)findContact:(id)a3 completion:(id)a4;
- (void)findContact:(id)a3 skipIfContactBlocked:(BOOL)a4 completion:(id)a5;
- (void)getDeviceAssets:(id)a3 completion:(id)a4;
- (void)getPairedWatchWristStateWithCompletionHandler:(id)a3;
- (void)getPeopleSuggestions:(id)a3 completion:(id)a4;
- (void)getProblemFlagsWithCompletionHandler:(id)a3;
- (void)hashManagerControl:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)monitorPairedWatchWristStateWithCompletionHandler:(id)a3;
- (void)openSetupURL:(id)a3 completion:(id)a4;
- (void)pairedWatchWristStateChanged:(int64_t)a3;
- (void)preventExitForLocaleReason:(id)a3;
- (void)reenableProxCardType:(unsigned __int8)a3 completion:(id)a4;
- (void)repairDevice:(id)a3 flags:(unsigned int)a4 completion:(id)a5;
- (void)retriggerProximityPairing:(id)a3;
- (void)retriggerProximitySetup:(id)a3;
- (void)setAudioRoutingScore:(int)a3 completion:(id)a4;
- (void)setupDevice:(id)a3 home:(id)a4 completion:(id)a5;
- (void)showDevicePickerWithInfo:(id)a3 completion:(id)a4;
- (void)startProxCardTransactionWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)subCredentialPresentCardWithParams:(id)a3 completion:(id)a4;
- (void)testContinuityKeyboardBegin:(BOOL)a3;
- (void)triggerHomeKitDeviceDetectedWithURL:(id)a3 completion:(id)a4;
- (void)triggerProximityAutoFillDetectedWithURL:(id)a3 completion:(id)a4;
- (void)wifiPasswordSharingAvailabilityWithCompletion:(id)a3;
@end

@implementation SFClient

- (SFClient)init
{
  v7.receiver = self;
  v7.super_class = SFClient;
  v2 = [(SFClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_xpcCnx)
  {
    v6 = [SFProximityClient dealloc];
    [(SFClient *)v6 invalidate];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v8.receiver = self;
    v8.super_class = SFClient;
    [(SFClient *)&v8 dealloc];
  }
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  syncXPCCnx = v2->_syncXPCCnx;
  if (syncXPCCnx)
  {
    [(NSXPCConnection *)syncXPCCnx invalidate];
    v4 = v2->_syncXPCCnx;
    v2->_syncXPCCnx = 0;
  }

  objc_sync_exit(v2);

  dispatchQueue = v2->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__SFClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_SFClient <= 30 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      [SFClient _invalidate];
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v4 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {
      [(SFClient *)self _invalidated];
    }

    wristStateMonitorCompletionHandler = self->_wristStateMonitorCompletionHandler;
    self->_wristStateMonitorCompletionHandler = 0;
  }
}

- (void)activateAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/activateAssertionWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFClient_activateAssertionWithIdentifier___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __44__SFClient_activateAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.sharing.EnhancedDiscovery"])
  {
    if (*(*(a1 + 40) + 16) == 1)
    {
      if (gLogCategory_SFClient <= 90 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
      {
        __44__SFClient_activateAssertionWithIdentifier___block_invoke_cold_2();
      }

      return;
    }

    if (gLogCategory_SFClient <= 30 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      __44__SFClient_activateAssertionWithIdentifier___block_invoke_cold_1();
    }

    *(*(a1 + 40) + 16) = 1;
  }

  v2 = *(*(a1 + 40) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 40);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 40) + 8);
  }

  [v2 addObject:*(a1 + 32)];
  [*(a1 + 40) _ensureXPCStarted];
  v6 = [*(*(a1 + 40) + 40) remoteObjectProxy];
  [v6 activateAssertionWithIdentifier:*(a1 + 32)];
}

- (void)activityStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/activityStateWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SFClient_activityStateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __40__SFClient_activityStateWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SFClient_activityStateWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 activityStateWithCompletion:*(a1 + 40)];
}

- (void)appleIDInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/appleIDInfoWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFClient_appleIDInfoWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __38__SFClient_appleIDInfoWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 appleIDInfoWithCompletion:*(a1 + 40)];
}

- (void)subCredentialPresentCardWithParams:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/subCredentialPresentCardWithParams", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SFClient_subCredentialPresentCardWithParams_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __58__SFClient_subCredentialPresentCardWithParams_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SFClient_subCredentialPresentCardWithParams_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 subCredentialPresentCardWithParams:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)clearXPCHelperImageCacheWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SFClient_clearXPCHelperImageCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __51__SFClient_clearXPCHelperImageCacheWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFClient_clearXPCHelperImageCacheWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 clearXPCHelperImageCacheWithCompletion:*(a1 + 40)];
}

- (void)broadwayPresentCardWithCode:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/broadwayPresentCardWithCode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__SFClient_broadwayPresentCardWithCode_options_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __59__SFClient_broadwayPresentCardWithCode_options_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SFClient_broadwayPresentCardWithCode_options_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 broadwayPresentCardWithCode:*(a1 + 40) options:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)contactHandlesForShortHashData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/contactHandlesForShortHashData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFClient_contactHandlesForShortHashData_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __54__SFClient_contactHandlesForShortHashData_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SFClient_contactHandlesForShortHashData_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 contactHandlesForShortHashData:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)contactIDForEmailHash:(id)a3 phoneHash:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/contactIDForEmailHash", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__SFClient_contactIDForEmailHash_phoneHash_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __55__SFClient_contactIDForEmailHash_phoneHash_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFClient_contactIDForEmailHash_phoneHash_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 contactIDForEmailHash:*(a1 + 40) phoneHash:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)displayNameForEmailHash:(id)a3 phoneHash:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/displayNameForEmailHash", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__SFClient_displayNameForEmailHash_phoneHash_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __57__SFClient_displayNameForEmailHash_phoneHash_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SFClient_displayNameForEmailHash_phoneHash_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 displayNameForEmailHash:*(a1 + 40) phoneHash:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)displayStringForContactIdentifier:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/displayStringForContactIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__SFClient_displayStringForContactIdentifier_deviceIdentifier_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __74__SFClient_displayStringForContactIdentifier_deviceIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__SFClient_displayStringForContactIdentifier_deviceIdentifier_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 displayStringForContactIdentifier:*(a1 + 40) deviceIdentifier:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)displayStringForContactIdentifierSync:(id)a3 deviceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/displayStringForContactIdentifierSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  [(SFClient *)self ensureSyncXPCStarted];
  v14 = 0;
  v12 = [(SFClient *)self syncRemoteProxyWithError:&v14];
  v13 = v14;
  if (v12)
  {
    [v12 displayStringForContactIdentifier:v8 deviceIdentifier:v9 completion:v10];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, v13);
  }

  os_activity_scope_leave(&state);
}

- (void)ensureSyncXPCStarted
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_syncXPCCnx)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEB40];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_getPeopleSuggestions_completion_ argumentIndex:0 ofReply:1];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    syncXPCCnx = v2->_syncXPCCnx;
    v2->_syncXPCCnx = v7;

    [(NSXPCConnection *)v2->_syncXPCCnx _setQueue:v2->_dispatchQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__SFClient_ensureSyncXPCStarted__block_invoke;
    v10[3] = &unk_1E788B198;
    v10[4] = v2;
    [(NSXPCConnection *)v2->_syncXPCCnx setInterruptionHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__SFClient_ensureSyncXPCStarted__block_invoke_2;
    v9[3] = &unk_1E788B198;
    v9[4] = v2;
    [(NSXPCConnection *)v2->_syncXPCCnx setInvalidationHandler:v9];
    [(NSXPCConnection *)v2->_syncXPCCnx setRemoteObjectInterface:v3];
    [(NSXPCConnection *)v2->_syncXPCCnx resume];
    if (gLogCategory_SFClient <= 10 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  objc_sync_exit(v2);
}

- (void)findContact:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/findContact", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFClient_findContact_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __35__SFClient_findContact_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 findContact:*(a1 + 40) skipIfContactBlocked:1 completion:*(a1 + 48)];
}

- (void)findContact:(id)a3 skipIfContactBlocked:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/findContact", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__SFClient_findContact_skipIfContactBlocked_completion___block_invoke;
  v14[3] = &unk_1E788E128;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

void __56__SFClient_findContact_skipIfContactBlocked_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 findContact:*(a1 + 40) skipIfContactBlocked:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)getDeviceAssets:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFClient_getDeviceAssets_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __39__SFClient_getDeviceAssets_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 getDeviceAssets:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)getPeopleSuggestions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFClient_getPeopleSuggestions_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __44__SFClient_getPeopleSuggestions_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFClient_getPeopleSuggestions_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 getPeopleSuggestions:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)getPairedWatchWristStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/getPairedWatchWristStateWithCompletionHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SFClient_getPairedWatchWristStateWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __58__SFClient_getPairedWatchWristStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 getPairedWatchWristStateWithCompletionHandler:*(a1 + 40)];
}

- (void)monitorPairedWatchWristStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/monitorPairedWatchWristStateWithCompletionHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SFClient_monitorPairedWatchWristStateWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __62__SFClient_monitorPairedWatchWristStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  [*(a1 + 32) _ensureXPCStarted];
  v5 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v5 beginMonitoringPairedWatchWristState];
}

- (void)getProblemFlagsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/getProblemFlagsWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SFClient_getProblemFlagsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __49__SFClient_getProblemFlagsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SFClient_getProblemFlagsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 getProblemFlagsWithCompletionHandler:*(a1 + 40)];
}

- (void)hashManagerControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/hashManagerControl", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFClient_hashManagerControl_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __42__SFClient_hashManagerControl_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SFClient_hashManagerControl_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 hashManagerControl:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)openSetupURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/openSetupURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFClient_openSetupURL_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __36__SFClient_openSetupURL_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 openSetupURL:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)preventExitForLocaleReason:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/preventExitForLocaleReason", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SFClient_preventExitForLocaleReason___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __39__SFClient_preventExitForLocaleReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 preventExitForLocaleReason:*(a1 + 40)];
}

- (void)reenableProxCardType:(unsigned __int8)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/reenableProxCardType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFClient_reenableProxCardType_completion___block_invoke;
  block[3] = &unk_1E788B9E8;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __44__SFClient_reenableProxCardType_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFClient_reenableProxCardType_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 reenableProxCardType:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)repairDevice:(id)a3 flags:(unsigned int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/repairDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__SFClient_repairDevice_flags_completion___block_invoke;
  v14[3] = &unk_1E788EAB8;
  v18 = a4;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

void __42__SFClient_repairDevice_flags_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFClient <= 30 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
  {
    __42__SFClient_repairDevice_flags_completion___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) _ensureXPCStarted];
  v2 = *(*(a1 + 40) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SFClient_repairDevice_flags_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 repairDevice:*(a1 + 32) flags:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)retriggerProximityPairing:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/retriggerProximityPairing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFClient_retriggerProximityPairing___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __38__SFClient_retriggerProximityPairing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SFClient_retriggerProximityPairing___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 retriggerProximityPairing:*(a1 + 40)];
}

- (void)retriggerProximitySetup:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/retriggerProximitySetup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SFClient_retriggerProximitySetup___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __36__SFClient_retriggerProximitySetup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SFClient_retriggerProximitySetup___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 retriggerProximitySetup:*(a1 + 40)];
}

- (void)setAudioRoutingScore:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/setAudioRoutingScore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFClient_setAudioRoutingScore_completion___block_invoke;
  block[3] = &unk_1E788EAE0;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __44__SFClient_setAudioRoutingScore_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFClient_setAudioRoutingScore_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 setAudioRoutingScore:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)setupDevice:(id)a3 home:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/setupDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__SFClient_setupDevice_home_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __40__SFClient_setupDevice_home_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SFClient_setupDevice_home_completion___block_invoke_2;
  v6[3] = &unk_1E788B6D8;
  v7 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) uniqueIdentifier];
  [v3 setupDevice:v4 homeIdentifier:v5 completion:*(a1 + 56)];
}

- (void)showDevicePickerWithInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/showDevicePickerWithInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SFClient_showDevicePickerWithInfo_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __48__SFClient_showDevicePickerWithInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SFClient_showDevicePickerWithInfo_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 showDevicePickerWithInfo:*(a1 + 40) completion:*(a1 + 48)];
}

- (id)syncRemoteProxyWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v4 = self;
  objc_sync_enter(v4);
  syncXPCCnx = v4->_syncXPCCnx;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFClient_syncRemoteProxyWithError___block_invoke;
  v8[3] = &unk_1E788C320;
  v8[4] = &v9;
  v6 = [(NSXPCConnection *)syncXPCCnx synchronousRemoteObjectProxyWithErrorHandler:v8];
  objc_sync_exit(v4);

  if (a3 && !v6)
  {
    *a3 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)testContinuityKeyboardBegin:(BOOL)a3
{
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/testContinuityKeyboardBegin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFClient_testContinuityKeyboardBegin___block_invoke;
  v7[3] = &unk_1E788B700;
  v7[4] = self;
  v8 = a3;
  dispatch_async(dispatchQueue, v7);
  os_activity_scope_leave(&state);
}

void __40__SFClient_testContinuityKeyboardBegin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 testContinuityKeyboardBegin:*(a1 + 40)];
}

- (void)triggerHomeKitDeviceDetectedWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/triggerHomeKitDeviceDetectedWithURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFClient_triggerHomeKitDeviceDetectedWithURL_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __59__SFClient_triggerHomeKitDeviceDetectedWithURL_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SFClient_triggerHomeKitDeviceDetectedWithURL_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 triggerHomeKitDeviceDetectedWithURL:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)triggerProximityAutoFillDetectedWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/triggerProximityAutoFillDetectedWithURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SFClient_triggerProximityAutoFillDetectedWithURL_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __63__SFClient_triggerProximityAutoFillDetectedWithURL_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SFClient_triggerProximityAutoFillDetectedWithURL_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 triggerProximityAutoFillDetectedWithURL:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)wifiPasswordSharingAvailabilityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/wifiPasswordSharingAvailabilityWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SFClient_wifiPasswordSharingAvailabilityWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __58__SFClient_wifiPasswordSharingAvailabilityWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SFClient_wifiPasswordSharingAvailabilityWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 wifiPasswordSharingAvailabilityWithCompletion:*(a1 + 40)];
}

- (void)startProxCardTransactionWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFClient/startProxCardTransactionWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (gLogCategory_SFClient <= 40 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFClient_startProxCardTransactionWithOptions_completion___block_invoke;
  block[3] = &unk_1E788D658;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __59__SFClient_startProxCardTransactionWithOptions_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SFClient_startProxCardTransactionWithOptions_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 startProxCardTransactionWithOptions:*(a1 + 48) completion:*(a1 + 40)];
}

uint64_t __59__SFClient_startProxCardTransactionWithOptions_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)pairedWatchWristStateChanged:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SFClient_pairedWatchWristStateChanged___block_invoke;
  v4[3] = &unk_1E788B260;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void __41__SFClient_pairedWatchWristStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wristStateMonitorCompletionHandler];

  if (v2)
  {
    if (gLogCategory_SFClient <= 40 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      __41__SFClient_pairedWatchWristStateChanged___block_invoke_cold_1(a1);
    }

    v3 = [*(a1 + 32) wristStateMonitorCompletionHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEB40];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_getPeopleSuggestions_completion_ argumentIndex:0 ofReply:1];

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v8;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__SFClient__ensureXPCStarted__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__SFClient__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];
    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFClient <= 10 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      [SFClient _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFClient <= 50 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
  {
    [SFClient _interrupted];
  }

  if ([(NSMutableSet *)self->_assertions count])
  {
    [(SFClient *)self _ensureXPCStarted];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_assertions;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          if (gLogCategory_SFClient <= 50 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
          {
            [SFClient _interrupted];
          }

          v9 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          [v9 activateAssertionWithIdentifier:v8];

          ++v7;
        }

        while (v5 != v7);
        v10 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v5 = v10;
      }

      while (v10);
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFClient <= 50 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      [SFClient _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFClient <= 10 && (gLogCategory_SFClient != -1 || _LogCategory_Initialize()))
    {
      [SFClient _invalidated];
    }
  }
}

uint64_t __42__SFClient_repairDevice_flags_completion___block_invoke_cold_1(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 56);
  return LogPrintF();
}

void __41__SFClient_pairedWatchWristStateChanged___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undefined state (%ld)", v1];
  }

  else
  {
    v2 = off_1E788EB00[v1];
  }

  v3 = v2;
  LogPrintF();
}

@end