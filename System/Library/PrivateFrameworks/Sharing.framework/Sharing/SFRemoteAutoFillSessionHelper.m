@interface SFRemoteAutoFillSessionHelper
- (SFRemoteAutoFillSessionHelper)init;
- (SFRemoteAutoFillSessionHelper)initWithCoder:(id)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)autoFillDismissUserNotification;
- (void)autoFillPromptForPIN:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)clientDismissUserNotification;
- (void)clientPairingSucceeded:(BOOL)a3 completion:(id)a4;
- (void)clientPromptForPIN:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)invalidate;
- (void)serverDidPickUsername:(id)a3 password:(id)a4 error:(id)a5;
- (void)serverTryPIN:(id)a3;
- (void)serverUserNotificationDidActivate:(id)a3;
- (void)serverUserNotificationDidDismiss:(id)a3;
@end

@implementation SFRemoteAutoFillSessionHelper

- (SFRemoteAutoFillSessionHelper)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteAutoFillSessionHelper;
  v2 = [(SFRemoteAutoFillSessionHelper *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SFRemoteAutoFillSessionHelper)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFRemoteAutoFillSessionHelper;
  v3 = [(SFRemoteAutoFillSessionHelper *)&v7 init];
  if (v3)
  {
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_activateCalled = 1;
  dispatchQueue = v5->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SFRemoteAutoFillSessionHelper_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper _activateWithCompletion:];
  }

  if (self->_invalidateCalled)
  {
    if (([(SFRemoteAutoFillSessionHelper *)v4 _activateWithCompletion:v17, &state]& 1) != 0)
    {
      goto LABEL_9;
    }

    v5 = state.opaque[0];
    goto LABEL_8;
  }

  if (!self->_agent)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    [(SFRemoteAutoFillSessionHelper *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __57__SFRemoteAutoFillSessionHelper__activateWithCompletion___block_invoke;
    v13 = &unk_1E788B6D8;
    v7 = v4;
    v14 = v7;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:&v10];
    [v8 autoFillHelperActivate:self completion:{v7, v10, v11, v12, v13}];

    os_activity_scope_leave(&state);
LABEL_8:
  }

LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SFRemoteAutoFillSessionHelper__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFRemoteAutoFillSessionHelper_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_SFRemoteAutoFillSessionHelper <= 30 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _invalidate];
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

      [(SFRemoteAutoFillSessionHelper *)self _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFRemoteAutoFillSessionHelper <= 50 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    self->_invalidateDone = 1;
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    pairingResponseHandler = self->_pairingResponseHandler;
    self->_pairingResponseHandler = 0;

    promptForPINHandler = self->_promptForPINHandler;
    self->_promptForPINHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 10 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _invalidated];
    }
  }
}

- (void)serverDidPickUsername:(id)a3 password:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke;
  v15[3] = &unk_1E788B9C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __70__SFRemoteAutoFillSessionHelper_serverDidPickUsername_password_error___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/serverDidPickUsername", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    [*(a1 + 32) _ensureXPCStarted];
    v3 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v3 autoFillHelperDidPickUsername:*(a1 + 40) password:*(a1 + 48) error:*(a1 + 56)];

    os_activity_scope_leave(&v4);
  }
}

- (void)serverTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __46__SFRemoteAutoFillSessionHelper_serverTryPIN___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperTryPin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    [*(a1 + 32) _ensureXPCStarted];
    v3 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v3 autoFillHelperTryPIN:*(a1 + 40)];

    os_activity_scope_leave(&v4);
  }
}

- (void)serverUserNotificationDidActivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __67__SFRemoteAutoFillSessionHelper_serverUserNotificationDidActivate___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperUserNotificationDidActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    [*(a1 + 32) _ensureXPCStarted];
    v3 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v3 autoFillHelperUserNotificationDidActivate:*(a1 + 40)];

    os_activity_scope_leave(&v4);
  }
}

- (void)serverUserNotificationDidDismiss:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __66__SFRemoteAutoFillSessionHelper_serverUserNotificationDidDismiss___block_invoke_cold_1();
    }
  }

  else
  {
    v2 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperUserNotificationDidDismiss", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    [*(a1 + 32) _ensureXPCStarted];
    v3 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v3 autoFillHelperUserNotificationDidDismiss:*(a1 + 40)];

    os_activity_scope_leave(&v4);
  }
}

- (void)autoFillDismissUserNotification
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper autoFillDismissUserNotification];
  }

  dismissUserNotificationHandler = self->_dismissUserNotificationHandler;
  if (dismissUserNotificationHandler)
  {
    v4 = *(dismissUserNotificationHandler + 2);

    v4();
  }
}

- (void)autoFillPromptForPIN:(unsigned int)a3 throttleSeconds:(int)a4
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper autoFillPromptForPIN:throttleSeconds:];
  }

  promptForPINHandler = self->_promptForPINHandler;
  if (promptForPINHandler)
  {
    v6 = *(promptForPINHandler + 2);

    v6();
  }
}

- (void)clientDismissUserNotification
{
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFRemoteAutoFillSessionHelper_clientDismissUserNotification__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper clientDismissUserNotification];
  }
}

- (void)clientPairingSucceeded:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SFRemoteAutoFillSessionHelper_clientPairingSucceeded_completion___block_invoke;
    block[3] = &unk_1E788B9E8;
    block[4] = self;
    v11 = a3;
    v10 = v6;
    dispatch_async(dispatchQueue, block);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper clientPairingSucceeded:completion:];
  }
}

- (void)clientPromptForPIN:(unsigned int)a3 throttleSeconds:(int)a4
{
  if (self->_agent)
  {
    dispatchQueue = self->_dispatchQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__SFRemoteAutoFillSessionHelper_clientPromptForPIN_throttleSeconds___block_invoke;
    v5[3] = &unk_1E788B260;
    v5[4] = self;
    v6 = a3;
    v7 = a4;
    dispatch_async(dispatchQueue, v5);
  }

  else if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper clientPromptForPIN:throttleSeconds:];
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__SFRemoteAutoFillSessionHelper__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__SFRemoteAutoFillSessionHelper__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE6C0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 10 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSessionHelper _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 50 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSessionHelper _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteAutoFillSessionHelper/autoFillHelperActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    if (gLogCategory_SFRemoteAutoFillSessionHelper <= 50 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SFRemoteAutoFillSessionHelper *)self _ensureXPCStarted];
    v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v5 autoFillHelperActivate:self completion:&__block_literal_global_7];

    os_activity_scope_leave(&v6);
  }
}

void __45__SFRemoteAutoFillSessionHelper__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFRemoteAutoFillSessionHelper__interrupted__block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (uint64_t)_activateWithCompletion:(__CFString *)a3 .cold.2(uint64_t a1, void *a2, __CFString **a3, uint64_t *a4)
{
  if (gLogCategory_SFRemoteAutoFillSessionHelper <= 60 && (gLogCategory_SFRemoteAutoFillSessionHelper != -1 || _LogCategory_Initialize()))
  {
    v15 = 4294960572;
    LogPrintF();
  }

  if (!a1)
  {
    return 1;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A768];
  *a2 = *MEMORY[0x1E696A578];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v11 = @"?";
  *a4 = v10;
  if (v10)
  {
    v11 = v10;
  }

  *a3 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:{1, v15}];
  v13 = [v8 errorWithDomain:v9 code:-6724 userInfo:v12];
  (*(a1 + 16))(a1, v13);

  return 0;
}

@end