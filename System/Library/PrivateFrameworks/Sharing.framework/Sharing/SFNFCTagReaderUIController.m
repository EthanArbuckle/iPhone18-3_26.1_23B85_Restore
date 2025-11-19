@interface SFNFCTagReaderUIController
- (SFNFCTagReaderUIController)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_nfcTagScannedCount;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)nfcTagScannedCount:(int64_t)a3;
- (void)setPurpose:(id)a3;
- (void)uiActivatedWithCompletion:(id)a3;
- (void)uiInvalidatedWithCompletion:(id)a3;
@end

@implementation SFNFCTagReaderUIController

- (SFNFCTagReaderUIController)init
{
  v7.receiver = self;
  v7.super_class = SFNFCTagReaderUIController;
  v2 = [(SFNFCTagReaderUIController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    *&v3->_mode = xmmword_1A998FEC0;
  }

  return v3;
}

- (void)setPurpose:(id)a3
{
  v4 = [a3 copy];
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activateCalled)
  {
    dispatchQueue = v5->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFNFCTagReaderUIController_setPurpose___block_invoke;
    v7[3] = &unk_1E788A658;
    v7[4] = v5;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    objc_storeStrong(&v5->_purpose, v4);
  }

  objc_sync_exit(v5);
}

void __41__SFNFCTagReaderUIController_setPurpose___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 64) remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [v2 setPurpose:*(a1 + 40)];
LABEL_3:
    v3 = v5;
    goto LABEL_7;
  }

  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = 0;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      __41__SFNFCTagReaderUIController_setPurpose___block_invoke_cold_1();
      goto LABEL_3;
    }
  }

LABEL_7:
}

void __41__SFNFCTagReaderUIController_setPurpose___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = v2;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __41__SFNFCTagReaderUIController_setPurpose___block_invoke_2_cold_1();
      v3 = v5;
    }
  }
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
  v8[2] = __53__SFNFCTagReaderUIController_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    [SFNFCTagReaderUIController _activateWithCompletion:];
  }

  [(SFNFCTagReaderUIController *)self _ensureXPCStarted];
  v5 = [(CUXPCAgent *)self->_xpcAgent listenerEndpoint];
  if (v5)
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFNFCTagReaderUIController/nfcTagReaderUIActivateWithEndpoint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    xpcCnx = self->_xpcCnx;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke;
    v19[3] = &unk_1E788B6D8;
    v8 = v4;
    v20 = v8;
    v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v19];
    v22[0] = @"mode";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mode];
    v23[0] = v10;
    v22[1] = @"operationMode";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_operationMode];
    v12 = v11;
    v22[2] = @"purpose";
    purpose = self->_purpose;
    if (!purpose)
    {
      purpose = &stru_1F1D30528;
    }

    v23[1] = v11;
    v23[2] = purpose;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2;
    v17[3] = &unk_1E788B6D8;
    v18 = v8;
    [v9 nfcTagReaderUIActivateWithEndpoint:v5 params:v14 completion:v17];

    os_activity_scope_leave(&state);
  }

  else if (v4)
  {
    v15 = NSErrorWithOSStatusF();
    (*(v4 + 2))(v4, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_SFNFCTagReaderUIController <= 60)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_SFNFCTagReaderUIController <= 60)
    {
      if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2_cold_1();
LABEL_15:
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      __54__SFNFCTagReaderUIController__activateWithCompletion___block_invoke_2_cold_2();
      goto LABEL_15;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
    v3 = v7;
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
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke;
    v18[3] = &unk_1E788B198;
    v18[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_2;
    v17[3] = &unk_1E788B198;
    v17[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v17];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAED80];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  if (!self->_xpcAgent)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6999578]);
    xpcAgent = self->_xpcAgent;
    self->_xpcAgent = v6;

    [(CUXPCAgent *)self->_xpcAgent setDispatchQueue:self->_dispatchQueue];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:off_1EB3B00D0];
    [(CUXPCAgent *)self->_xpcAgent setLabel:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEDE0];
    [(CUXPCAgent *)self->_xpcAgent setExportedInterface:v9];

    [(CUXPCAgent *)self->_xpcAgent setExportedObject:self];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEE40];
    [(CUXPCAgent *)self->_xpcAgent setRemoteObjectInterface:v10];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3;
    v16[3] = &unk_1E7890238;
    v16[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setConnectionStartedHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4;
    v15[3] = &unk_1E7890238;
    v15[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setConnectionEndedHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5;
    v14[3] = &unk_1E788B198;
    v14[4] = self;
    [(CUXPCAgent *)self->_xpcAgent setInvalidationHandler:v14];
    v11 = self->_xpcAgent;
    v13 = 0;
    LODWORD(v10) = [(CUXPCAgent *)v11 activateDirectAndReturnError:&v13];
    v12 = v13;
    if (v10)
    {
      if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
      {
        [SFNFCTagReaderUIController _ensureXPCStarted];
      }
    }

    else if (gLogCategory_SFNFCTagReaderUIController <= 60 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
    {
      [SFNFCTagReaderUIController _ensureXPCStarted];
    }
  }
}

uint64_t __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3_cold_1();
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = *(a1 + 32);
  if (*(v4 + 40) == 1)
  {
    *(v4 + 40) = 0;
    if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
    {
      __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_3_cold_2();
    }

    [*(a1 + 32) _nfcTagScannedCount];
  }
}

void __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_4_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (v4 == v9)
  {
    *(v3 + 64) = 0;

    v3 = *(a1 + 32);
  }

  v5 = *(v3 + 72);
  if (v5)
  {
    v6 = NSErrorWithOSStatusF();
    (*(v5 + 16))(v5, v6);

    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = 0;
  }
}

uint64_t __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    __47__SFNFCTagReaderUIController__ensureXPCStarted__block_invoke_5_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 50 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    [SFNFCTagReaderUIController _interrupted];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFNFCTagReaderUIController_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __40__SFNFCTagReaderUIController_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 24) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 24) = 1;
    if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
    {
      __40__SFNFCTagReaderUIController_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 48) invalidate];
    [*(*(v6 + 32) + 56) invalidate];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFNFCTagReaderUIController <= 50 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
    {
      [SFNFCTagReaderUIController _invalidated];
    }

    if (!self->_xpcAgent && !self->_xpcCnx && !self->_xpcUICnx)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2](invalidationHandler, 0);
        v4 = self->_invalidationHandler;
      }

      else
      {
        v4 = 0;
      }

      self->_invalidationHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
      {
        [SFNFCTagReaderUIController _invalidated];
      }
    }
  }
}

- (void)nfcTagScannedCount:(int64_t)a3
{
  self->_nfcTagScanCount += a3;
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    if (gLogCategory_SFNFCTagReaderUIController != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      nfcTagScanCount = self->_nfcTagScanCount;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SFNFCTagReaderUIController *)self _nfcTagScannedCount];
}

- (void)_nfcTagScannedCount
{
  v3 = [(CUXPCAgentConnection *)self->_xpcUICnx remoteObjectProxyWithErrorHandler:&__block_literal_global_178_0];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    [v3 nfcTagScannedCount:self->_nfcTagScanCount];
LABEL_3:
    v4 = v6;
    goto LABEL_7;
  }

  self->_nfcTagScanPending = 1;
  if (gLogCategory_SFNFCTagReaderUIController <= 30)
  {
    v6 = 0;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      [SFNFCTagReaderUIController _nfcTagScannedCount];
      goto LABEL_3;
    }
  }

LABEL_7:
}

void __49__SFNFCTagReaderUIController__nfcTagScannedCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFNFCTagReaderUIController <= 60)
  {
    v5 = v2;
    if (gLogCategory_SFNFCTagReaderUIController != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __49__SFNFCTagReaderUIController__nfcTagScannedCount__block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)uiActivatedWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    [SFNFCTagReaderUIController uiActivatedWithCompletion:];
  }

  if (self->_nfcTagScanCount >= 1)
  {
    [(SFNFCTagReaderUIController *)self _nfcTagScannedCount];
  }

  v4[2](v4, 0);
}

- (void)uiInvalidatedWithCompletion:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFNFCTagReaderUIController <= 30 && (gLogCategory_SFNFCTagReaderUIController != -1 || _LogCategory_Initialize()))
  {
    [SFNFCTagReaderUIController uiInvalidatedWithCompletion:];
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v5 = NSErrorWithOSStatusF();
    invalidationHandler[2](invalidationHandler, v5);

    v6 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }

  v7[2](v7, 0);
}

@end