@interface SFAppleIDClient
- (SFAppleIDClient)init;
- (__SecIdentity)copyIdentityForAppleID:(id)d error:(id *)error;
- (id)myAccountWithError:(id *)error;
- (id)syncRemoteProxyWithError:(id *)error;
- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)_copyCertificateForAppleID:(id)d withCompletion:(id)completion;
- (void)_copyIdentityForAppleID:(id)d withCompletion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_myAccountWithCompletion:(id)completion;
- (void)_personInfoWithEmailOrPhone:(id)phone completion:(id)completion;
- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)authenticateAccountWithAppleID:(id)d password:(id)password completion:(id)completion;
- (void)copyCertificateForAppleID:(id)d withCompletion:(id)completion;
- (void)copyIdentityForAppleID:(id)d withCompletion:(id)completion;
- (void)dealloc;
- (void)ensureSyncXPCStarted;
- (void)invalidate;
- (void)myAccountWithCompletion:(id)completion;
- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion;
- (void)requestWithInfo:(id)info completion:(id)completion;
- (void)statusInfoWithCompletion:(id)completion;
@end

@implementation SFAppleIDClient

- (SFAppleIDClient)init
{
  v6.receiver = self;
  v6.super_class = SFAppleIDClient;
  v2 = [(SFAppleIDClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_xpcCnx)
  {
    v6 = [SFProximityClient dealloc];
    [(SFAppleIDClient *)v6 invalidate];
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
    v8.super_class = SFAppleIDClient;
    [(SFAppleIDClient *)&v8 dealloc];
  }
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syncXPCCnx = selfCopy->_syncXPCCnx;
  if (syncXPCCnx)
  {
    [(NSXPCConnection *)syncXPCCnx invalidate];
    v4 = selfCopy->_syncXPCCnx;
    selfCopy->_syncXPCCnx = 0;
  }

  objc_sync_exit(selfCopy);

  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFAppleIDClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  if (!self->_invalidateDone && gLogCategory_SFAppleIDClient <= 30 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
  {
    [SFAppleIDClient _invalidate];
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v4 = self->_xpcCnx;
    self->_xpcCnx = 0;

    xpcAuthCnx = self->_xpcAuthCnx;
    if (!xpcAuthCnx)
    {
      return;
    }

    goto LABEL_10;
  }

  xpcAuthCnx = self->_xpcAuthCnx;
  if (xpcAuthCnx)
  {
LABEL_10:
    [(NSXPCConnection *)xpcAuthCnx invalidate];
    v6 = self->_xpcAuthCnx;
    self->_xpcAuthCnx = 0;

    return;
  }

  [(SFAppleIDClient *)self _invalidated];
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
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__SFAppleIDClient__ensureXPCStarted__block_invoke;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SFAppleIDClient__ensureXPCStarted__block_invoke_2;
    v6[3] = &unk_1E788B198;
    v6[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE780];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient _ensureXPCStarted];
    }
  }
}

- (void)ensureSyncXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_syncXPCCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    syncXPCCnx = selfCopy->_syncXPCCnx;
    selfCopy->_syncXPCCnx = v3;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke;
    v7[3] = &unk_1E788B198;
    v7[4] = selfCopy;
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setInterruptionHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_3;
    v6[3] = &unk_1E788B198;
    v6[4] = selfCopy;
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setInvalidationHandler:v6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE780];
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)selfCopy->_syncXPCCnx resume];
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  objc_sync_exit(selfCopy);
}

void __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_2;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_4;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFAppleIDClient <= 50 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
  {
    [SFAppleIDClient _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFAppleIDClient <= 50 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient _invalidated];
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

    xpcAuthCnx = self->_xpcAuthCnx;
    self->_xpcAuthCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient _invalidated];
    }
  }
}

- (id)syncRemoteProxyWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syncXPCCnx = selfCopy->_syncXPCCnx;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFAppleIDClient_syncRemoteProxyWithError___block_invoke;
  v8[3] = &unk_1E788C320;
  v8[4] = &v9;
  v6 = [(NSXPCConnection *)syncXPCCnx synchronousRemoteObjectProxyWithErrorHandler:v8];
  objc_sync_exit(selfCopy);

  if (error && !v6)
  {
    *error = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)copyCertificateForAppleID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFAppleIDClient_copyCertificateForAppleID_withCompletion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_copyCertificateForAppleID:(id)d withCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/copyCertificateForAppleID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dCopy && completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke;
    v21[3] = &unk_1E788B6D8;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2;
    v19[3] = &unk_1E788C348;
    v20 = v10;
    [v11 accountForAppleID:dCopy withCompletion:v19];

    v12 = v22;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    v14 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v15;
    v16 = @"?";
    if (v15)
    {
      v16 = v15;
    }

    v25[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v17];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }

LABEL_5:
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v9 = v6;
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v7 = [v5 identity];

      if (v7)
      {
        v8 = [v5 identity];
        v7 = [v8 copyCertificate];

        if (v7)
        {
          v9 = 0;
          goto LABEL_6;
        }

        __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_1();
      }

      else
      {
        __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2();
      }
    }

    else
    {
      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
      v7 = 0;
    }

    v9 = v12;
  }

LABEL_6:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyIdentityForAppleID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (gSDAppleIDAgent)
  {
    if (gLogCategory_SFAppleIDClient <= 90 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient copyIdentityForAppleID:withCompletion:];
    }

    v8 = [gSDAppleIDAgent copyIdentityForAppleID:dCopy];
    if (v8)
    {
      completionCopy[2](completionCopy, v8, 0);
    }

    else
    {
      v10 = *MEMORY[0x1E696A768];
      v11 = NSErrorF();
      (completionCopy)[2](completionCopy, 0, v11);
    }
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SFAppleIDClient_copyIdentityForAppleID_withCompletion___block_invoke;
    block[3] = &unk_1E788A570;
    block[4] = self;
    v13 = dCopy;
    v14 = completionCopy;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_copyIdentityForAppleID:(id)d withCompletion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/copyIdentityForAppleID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dCopy && completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke;
    v21[3] = &unk_1E788B6D8;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke_2;
    v19[3] = &unk_1E788C348;
    v20 = v10;
    [v11 accountForAppleID:dCopy withCompletion:v19];

    v12 = v22;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    v14 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v15;
    v16 = @"?";
    if (v15)
    {
      v16 = v15;
    }

    v25[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v17];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }

LABEL_5:
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

void __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v9 = v6;
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v7 = [v5 identity];

      if (v7)
      {
        v8 = [v5 identity];
        v7 = [v8 copyIdentity];

        if (v7)
        {
          v9 = 0;
          goto LABEL_6;
        }
      }

      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2();
    }

    else
    {
      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
      v7 = 0;
    }

    v9 = v12;
  }

LABEL_6:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (__SecIdentity)copyIdentityForAppleID:(id)d error:(id *)error
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!dCopy)
  {
    goto LABEL_4;
  }

  if (!gSDAppleIDAgent)
  {
    [(SFAppleIDClient *)self ensureSyncXPCStarted];
    v11 = v21;
    obj = v21[5];
    v10 = [(SFAppleIDClient *)self syncRemoteProxyWithError:&obj];
    objc_storeStrong(v11 + 5, obj);
    if (v10)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke;
      v14[3] = &unk_1E788C370;
      v14[4] = &v20;
      v14[5] = &v16;
      [v10 accountForAppleID:dCopy withCompletion:v14];
    }

    goto LABEL_7;
  }

  v7 = [gSDAppleIDAgent copyIdentityForAppleID:dCopy];
  v17[3] = v7;
  if (!v7)
  {
LABEL_4:
    v8 = *MEMORY[0x1E696A768];
    v9 = NSErrorF();
    v10 = v21[5];
    v21[5] = v9;
LABEL_7:
  }

  v12 = v17[3];
  if (error && !v12)
  {
    *error = v21[5];
    v12 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else if (v5)
  {
    v7 = [v5 identity];

    if (!v7 || ([v5 identity], v8 = objc_claimAutoreleasedReturnValue(), *(*(*(a1 + 40) + 8) + 24) = objc_msgSend(v8, "copyIdentity"), v8, !*(*(*(a1 + 40) + 8) + 24)))
    {
      __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_1();
    }
  }

  else
  {
    __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)myAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (gSDAppleIDAgent)
  {
    if (gLogCategory_SFAppleIDClient <= 90 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient myAccountWithCompletion:];
    }

    myAccount = [gSDAppleIDAgent myAccount];
    if (myAccount)
    {
      (v5)[2](v5, myAccount, 0);
    }

    else
    {
      v8 = *MEMORY[0x1E696A768];
      v9 = NSErrorF();
      (v5)[2](v5, 0, v9);
    }
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SFAppleIDClient_myAccountWithCompletion___block_invoke;
    v10[3] = &unk_1E788B210;
    v10[4] = self;
    v11 = completionCopy;
    dispatch_async(dispatchQueue, v10);
  }
}

- (void)_myAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/myAccountWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SFAppleIDClient__myAccountWithCompletion___block_invoke;
    v11[3] = &unk_1E788B6D8;
    v7 = completionCopy;
    v12 = v7;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__SFAppleIDClient__myAccountWithCompletion___block_invoke_2;
    v9[3] = &unk_1E788C348;
    v10 = v7;
    [v8 myAccountWithCompletion:v9];
  }

  os_activity_scope_leave(&state);
}

void __44__SFAppleIDClient__myAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v7 = v6;
  }

  else if (v5)
  {
    v7 = 0;
  }

  else
  {
    __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
    v7 = v10;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)myAccountWithError:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  if (!gSDAppleIDAgent)
  {
    [(SFAppleIDClient *)self ensureSyncXPCStarted];
    v10 = v23;
    obj = v23[5];
    v9 = [(SFAppleIDClient *)self syncRemoteProxyWithError:&obj];
    objc_storeStrong(v10 + 5, obj);
    if (v9)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__SFAppleIDClient_myAccountWithError___block_invoke;
      v14[3] = &unk_1E788C370;
      v14[4] = &v22;
      v14[5] = &v16;
      [v9 myAccountWithCompletion:v14];
    }

    goto LABEL_6;
  }

  myAccount = [gSDAppleIDAgent myAccount];
  v6 = v17[5];
  v17[5] = myAccount;

  if (!v17[5])
  {
    v7 = *MEMORY[0x1E696A768];
    v8 = NSErrorF();
    v9 = v23[5];
    v23[5] = v8;
LABEL_6:
  }

  v11 = v17[5];
  if (error && !v11)
  {
    *error = v23[5];
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __38__SFAppleIDClient_myAccountWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if ([v7 code])
  {
    v8 = (*(*(a1 + 32) + 8) + 40);
    v9 = a3;
  }

  else
  {
    if (!v6)
    {
      __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3();
      goto LABEL_5;
    }

    v8 = (*(*(a1 + 40) + 8) + 40);
    v9 = a2;
  }

  objc_storeStrong(v8, v9);
LABEL_5:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion
{
  phoneCopy = phone;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFAppleIDClient_personInfoWithEmailOrPhone_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = phoneCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = phoneCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_personInfoWithEmailOrPhone:(id)phone completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  phoneCopy = phone;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/personInfoWithEmailOrPhone", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (completionCopy)
  {
    if (phoneCopy)
    {
      [(SFAppleIDClient *)self _ensureXPCStarted];
      xpcCnx = self->_xpcCnx;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke;
      v21[3] = &unk_1E788B6D8;
      v10 = completionCopy;
      v22 = v10;
      v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v21];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke_2;
      v19[3] = &unk_1E788C398;
      v19[4] = self;
      v20 = v10;
      [v11 personInfoWithEmailOrPhone:phoneCopy completion:v19];

      v12 = v22;
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v12 = v15;
      v16 = @"?";
      if (v15)
      {
        v16 = v15;
      }

      v25[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v18 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v17];
      (*(completionCopy + 2))(completionCopy, 0, v18);
    }
  }

  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

void __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if ([v5 code])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v6);
  }
}

- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__SFAppleIDClient_altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = emailsCopy;
  v17 = numbersCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = numbersCopy;
  v14 = emailsCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/altDSIDLookupWithEmailsAndPhoneNumbers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = emailsCopy;
  v18 = numbersCopy;
  v19 = completionCopy;
  v13 = numbersCopy;
  v14 = emailsCopy;
  v15 = completionCopy;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 altDSIDLookupWithEmails:*(a1 + 40) phoneNumbers:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)authenticateAccountWithAppleID:(id)d password:(id)password completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke;
  v15[3] = &unk_1E788C3C0;
  v15[4] = self;
  v16 = dCopy;
  v17 = passwordCopy;
  v18 = completionCopy;
  v12 = passwordCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

void __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureAuthXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 authenticateAccountWithAppleID:*(a1 + 40) password:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)requestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/requestWithInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFAppleIDClient_requestWithInfo_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = infoCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = infoCopy;
  v11 = completionCopy;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __46__SFAppleIDClient_requestWithInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SFAppleIDClient_requestWithInfo_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 requestWithInfo:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)statusInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/statusInfoWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 statusInfoWithCompletion:*(a1 + 40)];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  v1 = *MEMORY[0x1E696A768];
  *v2 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7();
  v3 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v3, @"?");
  OUTLINED_FUNCTION_5_1();
  v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
  *v0 = [OUTLINED_FUNCTION_8_0() errorWithDomain:? code:? userInfo:?];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4_5();
  v2 = *MEMORY[0x1E696A768];
  *v3 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7();
  v4 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v4, @"?");
  OUTLINED_FUNCTION_5_1();
  [v5 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [OUTLINED_FUNCTION_3_4() errorWithDomain:? code:? userInfo:?];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_4_5();
  v2 = *MEMORY[0x1E696A768];
  *v3 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7();
  v4 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v4, @"?");
  OUTLINED_FUNCTION_5_1();
  [v5 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [OUTLINED_FUNCTION_2_6() errorWithDomain:? code:? userInfo:?];
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  v1 = *MEMORY[0x1E696A768];
  *v2 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7();
  v3 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v3, @"?");
  OUTLINED_FUNCTION_5_1();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_3_4() errorWithDomain:? code:? userInfo:?];
  OUTLINED_FUNCTION_10(v5);
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_5();
  v1 = *MEMORY[0x1E696A768];
  *v2 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7();
  v3 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v3, @"?");
  OUTLINED_FUNCTION_5_1();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_6() errorWithDomain:? code:? userInfo:?];
  OUTLINED_FUNCTION_10(v5);
}

@end