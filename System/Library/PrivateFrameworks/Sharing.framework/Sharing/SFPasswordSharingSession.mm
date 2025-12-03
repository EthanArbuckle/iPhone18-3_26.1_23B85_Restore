@interface SFPasswordSharingSession
- (SFPasswordSharingSession)init;
- (int)_runPair;
- (int)_runPasswordShare;
- (int)_runSFSessionStart;
- (void)_cleanup;
- (void)_completedWithError:(id)error;
- (void)_receivedObject:(id)object flags:(unsigned int)flags;
- (void)_run;
- (void)_runPasswordShareReceiveResponse:(id)response;
- (void)_runPasswordShareSendInfo;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)tryPIN:(id)n;
@end

@implementation SFPasswordSharingSession

- (SFPasswordSharingSession)init
{
  v6.receiver = self;
  v6.super_class = SFPasswordSharingSession;
  v2 = [(SFPasswordSharingSession *)&v6 init];
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
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFPasswordSharingSession *)v3 activate];
  }

  else
  {
    [(SFPasswordSharingSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFPasswordSharingSession;
    [(SFPasswordSharingSession *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFPasswordSharingSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__SFPasswordSharingSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __36__SFPasswordSharingSession_activate__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1 + 32) + 8) = 1;
  v5 = *(a1 + 32);
  v6 = v5[12];
  if (v6)
  {
    (*(v6 + 16))(v5[12], 10, 0);
    v5 = *(a1 + 32);
  }

  return [v5 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFPasswordSharingSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__SFPasswordSharingSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __38__SFPasswordSharingSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _cleanup];
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFPasswordSharingSession_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __35__SFPasswordSharingSession_tryPIN___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24) && gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __35__SFPasswordSharingSession_tryPIN___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 pairSetupTryPIN:v2];
}

- (void)_cleanup
{
  self->_pairState = 0;
  self->_passwordShareState = 0;
  self->_sfSessionState = 0;
}

- (void)_completedWithError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingSession _completedWithError:?];
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = errorCopy;
  if (v5)
  {
    if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _completedWithError:];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v10 = @"eo";
      v11[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      progressHandler[2](progressHandler, 20, v7);
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _completedWithError:];
    }

    v8 = self->_progressHandler;
    if (v8)
    {
      v8[2](v8, 20, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState)
  {
    if (sfSessionState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_sfSessionState;
        }

        v9 = self->_sfSessionState;
      }

      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runSFSessionStart];
    }

    self->_sfSessionState = 1;
    [(SFSession *)self->_sfSession invalidate];
    v4 = objc_alloc_init(SFSession);
    sfSession = self->_sfSession;
    self->_sfSession = v4;

    [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
    [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
    [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.PasswordSharing"];
    contactIdentifier = [(SFDevice *)self->_peerDevice contactIdentifier];
    [(SFSession *)self->_sfSession setPeerContactIdentifier:contactIdentifier];

    [(SFSession *)self->_sfSession setSessionFlags:12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke;
    v14[3] = &unk_1E788B238;
    v14[4] = self;
    [(SFSession *)self->_sfSession setErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2;
    v13[3] = &unk_1E788B198;
    v13[4] = self;
    [(SFSession *)self->_sfSession setInterruptionHandler:v13];
    [(SFSession *)self->_sfSession setInvalidationHandler:&__block_literal_global_20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_4;
    v12[3] = &unk_1E788CFD0;
    v12[4] = self;
    [(SFSession *)self->_sfSession setPromptForPINHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_5;
    v11[3] = &unk_1E788CFF8;
    v11[4] = self;
    [(SFSession *)self->_sfSession setReceivedObjectHandler:v11];
    v7 = self->_sfSession;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFSession *)v7 activateWithCompletion:v10];
  }

  return self->_sfSessionState;
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFPasswordSharingSession <= 90)
  {
    if (gLogCategory_SFPasswordSharingSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = NSErrorWithOSStatusF();
  [v2 _completedWithError:v3];
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_3()
{
  if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_3_cold_1();
  }
}

uint64_t __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = *(*(a1 + 32) + 104);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SFPasswordSharingSession <= 90)
    {
      if (gLogCategory_SFPasswordSharingSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6_cold_1();
        v4 = v6;
      }
    }

    [*(a1 + 32) _completedWithError:v4];
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      __46__SFPasswordSharingSession__runSFSessionStart__block_invoke_6_cold_2();
    }

    *(*(a1 + 32) + 32) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runPair
{
  pairState = self->_pairState;
  if (pairState)
  {
    if (pairState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_pairState;
        }

        v9 = self->_pairState;
      }

      LogPrintF();
    }
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = 0;
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    date = [MEMORY[0x1E695DF00] date];
    v5 = v12[5];
    v12[5] = date;

    self->_pairState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 60, 0);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__SFPasswordSharingSession__runPair__block_invoke;
    aBlock[3] = &unk_1E788D020;
    aBlock[4] = self;
    aBlock[5] = &v11;
    v7 = _Block_copy(aBlock);
    [(SFSession *)self->_sfSession pairVerifyWithFlags:4096 completion:v7];

    _Block_object_dispose(&v11, 8);
  }

  return self->_pairState;
}

void __36__SFPasswordSharingSession__runPair__block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    __36__SFPasswordSharingSession__runPair__block_invoke_cold_1(a1);
  }

  if (v3)
  {
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      __36__SFPasswordSharingSession__runPair__block_invoke_cold_2();
    }

    *(*(a1 + 32) + 12) = 3;
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = v5[12];
    if (v6)
    {
      v25 = @"eo";
      v26[0] = v4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      (*(v6 + 16))(v6, 30, v7);

      v5 = *(a1 + 32);
    }

    [v5 _completedWithError:v4];
  }

  else
  {
    *(*(a1 + 32) + 12) = 4;
    v8 = *(a1 + 32);
    v9 = v8[12];
    if (v9)
    {
      (*(v9 + 16))(v8[12], 70, 0);
      v8 = *(a1 + 32);
    }

    [v8 _run];
  }

  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  v11 = v10;
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  if (v11 < 0.0)
  {
    v12 = -v12;
  }

  v13 = (v12 * 1000.0);
  v23[0] = @"_cat";
  v23[1] = @"_op";
  v24[0] = @"PasswordSharing";
  v24[1] = @"PairVerify";
  v23[2] = @"durationMS";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v24[2] = v14;
  v23[3] = @"errorCode";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:NSErrorToOSStatus()];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  SFDashboardLogJSON(v16);

  v21[0] = @"durationMS";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v21[1] = @"errorCode";
  v22[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithInt:NSErrorToOSStatus()];
  v22[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  SFMetricsLog(@"com.apple.sharing.PasswordSharingPairVerify", v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (int)_runPasswordShare
{
  passwordShareState = self->_passwordShareState;
  if (passwordShareState)
  {
    if (passwordShareState != 4 && gLogCategory_SFPasswordSharingSession <= 30)
    {
      if (gLogCategory_SFPasswordSharingSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_passwordShareState;
        }

        v5 = self->_passwordShareState;
      }

      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingSession <= 50 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShare];
    }

    [(SFPasswordSharingSession *)self _runPasswordShareSendInfo];
  }

  return self->_passwordShareState;
}

- (void)_runPasswordShareSendInfo
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  selfCopy = self;
  *a2 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
  v12 = [v5 errorWithDomain:v6 code:selfCopy userInfo:v11];
  LogPrintF();
}

- (void)_runPasswordShareReceiveResponse:(id)response
{
  v19[1] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_SFPasswordSharingSession <= 30 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShareReceiveResponse:];
    }

    self->_passwordShareState = 4;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 83, 0);
    }
  }

  else
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingSession _runPasswordShareReceiveResponse:];
    }

    self->_passwordShareState = 4;
    if (self->_progressHandler)
    {
      if (Int64Ranged)
      {
        v18 = @"eo";
        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A768];
        v16 = *MEMORY[0x1E696A578];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v10 = v9;
        v11 = @"?";
        if (v9)
        {
          v11 = v9;
        }

        v17 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v13 = [v7 errorWithDomain:v8 code:Int64Ranged userInfo:v12];
        v19[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      }

      else
      {
        v14 = 0;
      }

      (*(self->_progressHandler + 2))();
    }
  }

  [(SFPasswordSharingSession *)self _completedWithError:0];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_receivedObject:(id)object flags:(unsigned int)flags
{
  objectCopy = object;
  if (CFDictionaryGetInt64Ranged() == 5)
  {
    [(SFPasswordSharingSession *)self _runPasswordShareReceiveResponse:objectCopy];
  }

  else if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingSession _receivedObject:flags:];
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && [(SFPasswordSharingSession *)self _runSFSessionStart]== 4 && [(SFPasswordSharingSession *)self _runPair]== 4)
  {

    [(SFPasswordSharingSession *)self _runPasswordShare];
  }
}

- (void)_completedWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 40)];
  LogPrintF();
}

void __36__SFPasswordSharingSession__runPair__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(*(*(a1 + 40) + 8) + 40)];
  LogPrintF();
}

- (void)_receivedObject:flags:.cold.1()
{
  if (gLogCategory_SFPasswordSharingSession <= 60 && (gLogCategory_SFPasswordSharingSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

@end