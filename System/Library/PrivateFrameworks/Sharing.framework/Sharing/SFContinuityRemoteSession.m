@interface SFContinuityRemoteSession
- (SFContinuityRemoteSession)init;
- (void)_cleanup;
- (void)_run;
- (void)_sendQueuedMesssages;
- (void)_sfSessionStart;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sendCommand:(int)a3;
- (void)sendCommand:(int)a3 options:(id)a4;
@end

@implementation SFContinuityRemoteSession

- (SFContinuityRemoteSession)init
{
  v7.receiver = self;
  v7.super_class = SFContinuityRemoteSession;
  v2 = [(SFContinuityRemoteSession *)&v7 init];
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
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFContinuityRemoteSession *)v3 _cleanup];
  }

  else
  {
    [(SFContinuityRemoteSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFContinuityRemoteSession;
    [(SFContinuityRemoteSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
  {
    __52__SFContinuityRemoteSession_activateWithCompletion___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);

  return [v5 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFContinuityRemoteSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SFContinuityRemoteSession_invalidate__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
  {
    __39__SFContinuityRemoteSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  *(*(a1 + 32) + 56) = 0;
  v4 = *(a1 + 32);
  v5 = v4[2];
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v17[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6723 userInfo:v11];
    (*(v5 + 16))(v5, v12);

    v4 = *(a1 + 32);
  }

  v13 = v4[10];
  if (v13)
  {
    (*(v13 + 16))(v4[10]);
    v4 = *(a1 + 32);
  }

  result = [v4 _cleanup];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_run
{
  if (gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

void __33__SFContinuityRemoteSession__run__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 41) = 0;
  v4 = *(*(a1 + 32) + 16);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    v3 = v7;
  }

  if (!v3)
  {
    *(*(a1 + 32) + 40) = 1;
    [*(a1 + 32) _run];
    v3 = v7;
  }
}

- (void)_sfSessionStart
{
  if (gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
  {
    [SFContinuityRemoteSession _sfSessionStart];
  }

  [(SFSession *)self->_sfSession invalidate];
  v3 = objc_alloc_init(SFSession);
  sfSession = self->_sfSession;
  self->_sfSession = v3;

  [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
  [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.ContinuityRemote"];
  [(SFSession *)self->_sfSession setReceivedObjectHandler:&__block_literal_global_38];
  v5 = self->_sfSession;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFSession *)v5 activateWithCompletion:v6];
}

void __44__SFContinuityRemoteSession__sfSessionStart__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_SFContinuityRemoteSession <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFContinuityRemoteSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_cold_1(v4);
      v4 = v6;
    }
  }
}

void __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_SFContinuityRemoteSession <= 30 && (gLogCategory_SFContinuityRemoteSession != -1 || _LogCategory_Initialize()))
    {
      __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2_cold_2();
    }

    *(*(a1 + 32) + 56) = 1;
    [*(a1 + 32) _run];
    goto LABEL_10;
  }

  if (gLogCategory_SFContinuityRemoteSession <= 90)
  {
    v6 = v3;
    if (gLogCategory_SFContinuityRemoteSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __44__SFContinuityRemoteSession__sfSessionStart__block_invoke_2_cold_1();
LABEL_10:
      v4 = v6;
    }
  }
}

- (void)sendCommand:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SFContinuityRemoteSession_sendCommand___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)sendCommand:(int)a3 options:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFContinuityRemoteSession_sendCommand_options___block_invoke;
  block[3] = &unk_1E788EC90;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendQueuedMesssages
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_sfSessionActivated)
  {
    v3 = [(NSMutableArray *)self->_messageQueue firstObject];
    if (v3)
    {
      v4 = v3;
      do
      {
        [(NSMutableArray *)self->_messageQueue removeObjectAtIndex:0];
        [(SFSession *)self->_sfSession sendWithFlags:1 object:v4];

        v4 = [(NSMutableArray *)self->_messageQueue firstObject];
      }

      while (v4);
    }
  }
}

@end