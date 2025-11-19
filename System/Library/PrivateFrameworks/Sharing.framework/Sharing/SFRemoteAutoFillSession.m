@interface SFRemoteAutoFillSession
- (SFRemoteAutoFillSession)init;
- (int)_runContextRequest;
- (int)_runPair;
- (int)_runPairContacts;
- (int)_runPairHomeKit;
- (int)_runPairPIN;
- (int)_runPairVerify;
- (int)_runPairVisual;
- (int)_runPasswordPicker;
- (int)_runSendCredentials;
- (int)_runSessionStart;
- (void)_cleanup;
- (void)_completedWithError:(id)a3;
- (void)_handleContextRequestResponse:(id)a3 error:(id)a4;
- (void)_handlePasswordPickerResponse:(id)a3 password:(id)a4 error:(id)a5;
- (void)_handleSendCredentialsResponse:(id)a3 error:(id)a4;
- (void)_receivedObject:(id)a3 flags:(unsigned int)a4;
- (void)_run;
- (void)_runContextRequest;
- (void)_runSendCredentials;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)tryPIN:(id)a3;
@end

@implementation SFRemoteAutoFillSession

- (SFRemoteAutoFillSession)init
{
  v7.receiver = self;
  v7.super_class = SFRemoteAutoFillSession;
  v2 = [(SFRemoteAutoFillSession *)&v7 init];
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
    [(SFRemoteAutoFillSession *)v3 activate];
  }

  else
  {
    [(SFRemoteAutoFillSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteAutoFillSession;
    [(SFRemoteAutoFillSession *)&v5 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFRemoteAutoFillSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFRemoteAutoFillSession_activate__block_invoke(uint64_t a1)
{
  result = CFPrefs_GetInt64();
  if (result)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __35__SFRemoteAutoFillSession_activate__block_invoke_cold_2();
    }

    *(*(a1 + 32) + 8) = 1;
    return [*(a1 + 32) _run];
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1)
    {
      return __35__SFRemoteAutoFillSession_activate__block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __35__SFRemoteAutoFillSession_activate__block_invoke_cold_1();
    }
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteAutoFillSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteAutoFillSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 72) & 1) == 0 && gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    __37__SFRemoteAutoFillSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 72) = 1;
  [*(*(a1 + 32) + 144) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(a1 + 32);

  return [v4 _cleanup];
}

- (void)_cleanup
{
  contextBundleID = self->_contextBundleID;
  self->_contextBundleID = 0;

  contextURL = self->_contextURL;
  self->_contextURL = 0;

  pairingFinishedHandler = self->_pairingFinishedHandler;
  self->_pairingFinishedHandler = 0;

  self->_pairingFinishedNotified = 0;
  *&self->_pairSubstate.homeKit = 0;
  *&self->_pairSubstate.pairVerify = 0;
  *&self->_pairState = 0;
  self->_passwordPickerState = 0;
  pickedPassword = self->_pickedPassword;
  self->_pickedPassword = 0;

  pickedUsername = self->_pickedUsername;
  self->_pickedUsername = 0;

  promptForPickerHandler = self->_promptForPickerHandler;
  self->_promptForPickerHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  self->_sendCredentialsState = 0;
  self->_sessionState = 0;
}

- (void)tryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFRemoteAutoFillSession_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __34__SFRemoteAutoFillSession_tryPIN___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 144) && gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    __34__SFRemoteAutoFillSession_tryPIN___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 144);

  return [v3 pairSetupTryPIN:v2];
}

- (void)_completedWithError:(id)a3
{
  v14[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _completedWithError:];
    }
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _completedWithError:];
  }

  completedHandler = self->_completedHandler;
  if (completedHandler)
  {
    completedHandler[2](completedHandler, v4);
  }

  v13[0] = @"contextRequestState";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_contextRequestState];
  v14[0] = v6;
  v13[1] = @"pairingState";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_pairState];
  v14[1] = v7;
  v13[2] = @"passwordPickerState";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_passwordPickerState];
  v14[2] = v8;
  v13[3] = @"sendCredentialState";
  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_sendCredentialsState];
  v14[3] = v9;
  v13[4] = @"sessionState";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_sessionState];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  SFMetricsLog(@"com.apple.sharing.AutoFillSession", v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (int)_runSessionStart
{
  sessionState = self->_sessionState;
  if (sessionState)
  {
    if (sessionState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_sessionState;
        }

        sessionState = self->_sessionState;
      }

      if (sessionState < 8)
      {
        v9 = off_1E7890358[sessionState];
      }

      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runSessionStart];
    }

    self->_sessionState = 1;
    [(SFSession *)self->_session invalidate];
    v4 = objc_alloc_init(SFSession);
    session = self->_session;
    self->_session = v4;

    [(SFSession *)self->_session setDispatchQueue:self->_dispatchQueue];
    [(SFSession *)self->_session setPeerDevice:self->_peerDevice];
    [(SFSession *)self->_session setServiceIdentifier:@"com.apple.sharing.RemoteAutoFill"];
    v6 = [(SFDevice *)self->_peerDevice contactIdentifier];
    [(SFSession *)self->_session setPeerContactIdentifier:v6];

    [(SFSession *)self->_session setSessionFlags:12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke;
    v14[3] = &unk_1E788B238;
    v14[4] = self;
    [(SFSession *)self->_session setErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2;
    v13[3] = &unk_1E788B198;
    v13[4] = self;
    [(SFSession *)self->_session setInterruptionHandler:v13];
    [(SFSession *)self->_session setInvalidationHandler:&__block_literal_global_63];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_4;
    v12[3] = &unk_1E788CFD0;
    v12[4] = self;
    [(SFSession *)self->_session setPromptForPINHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_5;
    v11[3] = &unk_1E788CFF8;
    v11[4] = self;
    [(SFSession *)self->_session setReceivedObjectHandler:v11];
    v7 = self->_session;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFSession *)v7 activateWithCompletion:v10];
  }

  return self->_sessionState;
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFRemoteAutoFillSession <= 90)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = NSErrorWithOSStatusF();
  [v2 _completedWithError:v3];
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_3()
{
  if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_3_cold_1();
  }
}

uint64_t __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = *(*(a1 + 32) + 192);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SFRemoteAutoFillSession <= 90)
    {
      if (gLogCategory_SFRemoteAutoFillSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6_cold_1();
        v4 = v6;
      }
    }

    [*(a1 + 32) _completedWithError:v4];
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runSessionStart__block_invoke_6_cold_2();
    }

    *(*(a1 + 32) + 152) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runPairContacts
{
  v15 = 0;
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefPairContactsDisabled == v3)
  {
    result = self->_pairSubstate.contacts;
    if (!result)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__16;
      v13 = __Block_byref_object_dispose__16;
      v14 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = [MEMORY[0x1E695DF00] date];
      v6 = v10[5];
      v10[5] = v5;

      self->_pairSubstate.contacts = 1;
      session = self->_session;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFRemoteAutoFillSession__runPairContacts__block_invoke;
      v8[3] = &unk_1E788D020;
      v8[4] = self;
      v8[5] = &v9;
      [(SFSession *)session pairVerifyWithFlags:4096 completion:v8];
      _Block_object_dispose(&v9, 8);

      return self->_pairSubstate.contacts;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairContacts];
    }

    self->_prefPairContactsDisabled = v3;
    result = 2;
    self->_pairSubstate.contacts = 2;
  }

  return result;
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_3();
    }

    v3 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_4();
    }

    v3 = 4;
  }

  *(*(a1 + 32) + 92) = v3;
  [*(a1 + 32) _run];
}

- (int)_runPairHomeKit
{
  v14 = 0;
  if (self->_prefPairHomeKitDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.homeKit;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = v4;

      self->_pairSubstate.homeKit = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairVerifyWithFlags:0x400000 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.homeKit;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairHomeKit];
    }

    self->_prefPairHomeKitDisabled = 1;
    result = 2;
    self->_pairSubstate.homeKit = 2;
  }

  return result;
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_3();
    }

    v3 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_4();
    }

    v3 = 4;
  }

  *(*(a1 + 32) + 96) = v3;
  [*(a1 + 32) _run];
}

- (int)_runPairVerify
{
  v14 = 0;
  if (self->_prefPairVerifyDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.pairVerify;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = v4;

      self->_pairSubstate.pairVerify = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__SFRemoteAutoFillSession__runPairVerify__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairVerifyWithFlags:0 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.pairVerify;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairVerify];
    }

    self->_prefPairVerifyDisabled = 1;
    result = 2;
    self->_pairSubstate.pairVerify = 2;
  }

  return result;
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_3();
    }

    v3 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_4();
    }

    v3 = 4;
  }

  *(*(a1 + 32) + 104) = v3;
  [*(a1 + 32) _run];
}

- (int)_runPairPIN
{
  result = self->_pairSubstate.pin;
  if (!result)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__16;
    v12 = __Block_byref_object_dispose__16;
    v13 = 0;
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = [MEMORY[0x1E695DF00] date];
    v5 = v9[5];
    v9[5] = v4;

    self->_pairSubstate.pin = 1;
    session = self->_session;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__SFRemoteAutoFillSession__runPairPIN__block_invoke;
    v7[3] = &unk_1E788D020;
    v7[4] = self;
    v7[5] = &v8;
    [(SFSession *)session pairSetupWithFlags:16 completion:v7];
    _Block_object_dispose(&v8, 8);

    return self->_pairSubstate.pin;
  }

  return result;
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_3();
    }

    v3 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_4();
    }

    v3 = 4;
  }

  *(*(a1 + 32) + 108) = v3;
  [*(a1 + 32) _run];
}

- (int)_runPairVisual
{
  v14 = 0;
  if (self->_prefPairVisualDisabled == (CFPrefs_GetInt64() != 0))
  {
    result = self->_pairSubstate.visual;
    if (!result)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__16;
      v12 = __Block_byref_object_dispose__16;
      v13 = 0;
      if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = [MEMORY[0x1E695DF00] date];
      v5 = v9[5];
      v9[5] = v4;

      self->_pairSubstate.visual = 1;
      session = self->_session;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__SFRemoteAutoFillSession__runPairVisual__block_invoke;
      v7[3] = &unk_1E788D020;
      v7[4] = self;
      v7[5] = &v8;
      [(SFSession *)session pairSetupWithFlags:272 completion:v7];
      _Block_object_dispose(&v8, 8);

      return self->_pairSubstate.visual;
    }
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _runPairVisual];
    }

    self->_prefPairVisualDisabled = 1;
    result = 2;
    self->_pairSubstate.visual = 2;
  }

  return result;
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_SFRemoteAutoFillSession <= 50)
  {
    if (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize())
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_1();
    }

    if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_2();
    }
  }

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_3();
    }

    v3 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_4();
    }

    v3 = 4;
  }

  *(*(a1 + 32) + 100) = v3;
  [*(a1 + 32) _run];
}

- (int)_runContextRequest
{
  contextRequestState = self->_contextRequestState;
  if (contextRequestState)
  {
    if (contextRequestState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_contextRequestState;
        }

        contextRequestState = self->_contextRequestState;
      }

      if (contextRequestState < 8)
      {
        v6 = off_1E7890358[contextRequestState];
      }

      LogPrintF();
    }
  }

  else if (self->_session)
  {
    self->_contextRequestState = 1;
    session = self->_session;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__SFRemoteAutoFillSession__runContextRequest__block_invoke;
    v7[3] = &unk_1E788D070;
    v7[4] = self;
    [(SFSession *)session sendRequestWithFlags:1 object:&unk_1F1D7D6F0 responseHandler:v7];
  }

  else
  {
    [SFRemoteAutoFillSession _runContextRequest];
  }

  return self->_contextRequestState;
}

- (void)_handleContextRequestResponse:(id)a3 error:(id)a4
{
  v21 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    if (v6)
    {
LABEL_5:
      if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
      }

      self->_contextRequestState = 3;
      [(SFRemoteAutoFillSession *)self _completedWithError:v6];
      goto LABEL_45;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  if (!v21 && gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
  }

  CFDataGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    }

    v8 = [v7 copy];
    contextAppIconData = self->_contextAppIconData;
    self->_contextAppIconData = v8;
  }

  CFArrayGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (v10)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:v10 error:?];
    }

    v11 = [v10 copy];
    contextAssociatedDomains = self->_contextAssociatedDomains;
    self->_contextAssociatedDomains = v11;
  }

  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    }

    objc_storeStrong(&self->_contextBundleID, v13);
  }

  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();

  if (v14)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    }

    v15 = [v14 copy];
    contextLocalizedAppName = self->_contextLocalizedAppName;
    self->_contextLocalizedAppName = v15;
  }

  CFStringGetTypeID();
  v17 = CFDictionaryGetTypedValue();

  if (v17)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    }

    v18 = [v17 copy];
    contextUnlocalizedAppName = self->_contextUnlocalizedAppName;
    self->_contextUnlocalizedAppName = v18;
  }

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();

  if (v20)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleContextRequestResponse:error:];
    }

    objc_storeStrong(&self->_contextURL, v20);
  }

  self->_contextRequestState = 4;
  [(SFRemoteAutoFillSession *)self _run];

LABEL_45:
}

- (int)_runPasswordPicker
{
  passwordPickerState = self->_passwordPickerState;
  if (passwordPickerState)
  {
    if (passwordPickerState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_passwordPickerState;
        }

        passwordPickerState = self->_passwordPickerState;
      }

      if (passwordPickerState < 8)
      {
        v13 = off_1E7890358[passwordPickerState];
      }

      LogPrintF();
    }
  }

  else
  {
    promptForPickerHandler = self->_promptForPickerHandler;
    if (promptForPickerHandler)
    {
      contextBundleID = self->_contextBundleID;
      contextLocalizedAppName = self->_contextLocalizedAppName;
      contextUnlocalizedAppName = self->_contextUnlocalizedAppName;
      contextURL = self->_contextURL;
      contextAppIconData = self->_contextAppIconData;
      contextAssociatedDomains = self->_contextAssociatedDomains;
      v11 = [(SFDevice *)self->_peerDevice name];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke;
      v14[3] = &unk_1E7890338;
      v14[4] = self;
      promptForPickerHandler[2](promptForPickerHandler, contextURL, contextBundleID, contextLocalizedAppName, contextUnlocalizedAppName, contextAssociatedDomains, contextAppIconData, v11, v14);
    }
  }

  return self->_passwordPickerState;
}

void __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 168);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__SFRemoteAutoFillSession__runPasswordPicker__block_invoke_2;
  v15[3] = &unk_1E788B9C0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

- (void)_handlePasswordPickerResponse:(id)a3 password:(id)a4 error:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v10)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:];
    }

    self->_passwordPickerState = 3;
    [(SFRemoteAutoFillSession *)self _completedWithError:v10];
  }

  else
  {
    if (v12)
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 10 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:];
      }

      objc_storeStrong(&self->_pickedUsername, a3);
    }

    if (v9)
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 10 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:];
      }

      objc_storeStrong(&self->_pickedPassword, a4);
    }

    if (self->_pickedUsername || self->_pickedPassword)
    {
      self->_passwordPickerState = 4;
      [(SFRemoteAutoFillSession *)self _run];
    }

    else
    {
      if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteAutoFillSession _handlePasswordPickerResponse:password:error:];
      }

      self->_passwordPickerState = 3;
      v11 = NSErrorWithOSStatusF();
      [(SFRemoteAutoFillSession *)self _completedWithError:v11];
    }
  }
}

- (int)_runSendCredentials
{
  sendCredentialsState = self->_sendCredentialsState;
  if (sendCredentialsState)
  {
    if (sendCredentialsState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
    {
      if (gLogCategory_SFRemoteAutoFillSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_sendCredentialsState;
        }

        sendCredentialsState = self->_sendCredentialsState;
      }

      if (sendCredentialsState < 8)
      {
        v9 = off_1E7890358[sendCredentialsState];
      }

      LogPrintF();
    }
  }

  else if (self->_session)
  {
    if (self->_pickedPassword || self->_pickedUsername)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v4 setObject:&unk_1F1D7D108 forKeyedSubscript:@"op"];
      pickedUsername = self->_pickedUsername;
      if (pickedUsername)
      {
        [v4 setObject:pickedUsername forKeyedSubscript:@"un"];
      }

      pickedPassword = self->_pickedPassword;
      if (pickedPassword)
      {
        [v4 setObject:pickedPassword forKeyedSubscript:@"pw"];
      }

      self->_sendCredentialsState = 1;
      session = self->_session;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __46__SFRemoteAutoFillSession__runSendCredentials__block_invoke;
      v10[3] = &unk_1E788D070;
      v10[4] = self;
      [(SFSession *)session sendRequestWithFlags:1 object:v4 responseHandler:v10];
    }

    else
    {
      [SFRemoteAutoFillSession _runSendCredentials];
    }
  }

  else
  {
    [SFRemoteAutoFillSession _runSendCredentials];
  }

  return self->_sendCredentialsState;
}

- (void)_handleSendCredentialsResponse:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v6)
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleSendCredentialsResponse:error:];
    }

    v7 = 3;
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillSession _handleSendCredentialsResponse:error:];
    }

    v7 = 4;
  }

  self->_sendCredentialsState = v7;
  [(SFRemoteAutoFillSession *)self _run];
}

- (void)_receivedObject:(id)a3 flags:(unsigned int)a4
{
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFRemoteAutoFillSession <= 50 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _receivedObject:Int64Ranged flags:?];
  }

  if (Int64Ranged == 5)
  {
    v6 = NSErrorWithOSStatusF();
    [(SFRemoteAutoFillSession *)self _completedWithError:v6];
  }

  else if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillSession _receivedObject:Int64Ranged flags:?];
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activateCalled && !self->_invalidateCalled && [(SFRemoteAutoFillSession *)self _runSessionStart]== 4 && [(SFRemoteAutoFillSession *)self _runPair]== 4)
  {
    if (!self->_pairingFinishedNotified)
    {
      pairingFinishedHandler = self->_pairingFinishedHandler;
      if (pairingFinishedHandler)
      {
        self->_pairingFinishedNotified = 1;
        pairingFinishedHandler[2]();
      }
    }

    v4 = [(SFRemoteAutoFillSession *)self _runContextRequest];
    v5 = v4 == 4 || v4 == 2;
    if (v5 && [(SFRemoteAutoFillSession *)self _runPasswordPicker]== 4 && [(SFRemoteAutoFillSession *)self _runSendCredentials]== 4)
    {

      [(SFRemoteAutoFillSession *)self _completedWithError:0];
    }
  }
}

- (int)_runPair
{
  pairState = self->_pairState;
  if (pairState <= 1)
  {
    if (!pairState)
    {
      self->_pairState = 1;
      if (gLogCategory_SFRemoteAutoFillSession <= 30 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = [MEMORY[0x1E695DF00] date];
      pairClock = self->_pairClock;
      self->_pairClock = v4;
    }

    v6 = [(SFRemoteAutoFillSession *)self _runPairVerify];
    if (v6 != 4)
    {
      OUTLINED_FUNCTION_5_5();
      if (!v7)
      {
        return self->_pairState;
      }

      v6 = [(SFRemoteAutoFillSession *)self _runPairHomeKit];
      if (v6 != 4)
      {
        OUTLINED_FUNCTION_5_5();
        if (!v7)
        {
          return self->_pairState;
        }

        v6 = [(SFRemoteAutoFillSession *)self _runPairContacts];
        if (v6 != 4)
        {
          OUTLINED_FUNCTION_5_5();
          if (!v7)
          {
            return self->_pairState;
          }

          v6 = [(SFRemoteAutoFillSession *)self _runPairVisual];
          if (v6 != 4)
          {
            OUTLINED_FUNCTION_5_5();
            if (!v7)
            {
              return self->_pairState;
            }

            v6 = [(SFRemoteAutoFillSession *)self _runPairPIN];
            if (v6 != 4)
            {
              OUTLINED_FUNCTION_5_5();
              if (!v7)
              {
                return self->_pairState;
              }
            }
          }
        }
      }
    }

    v7 = v6 == 4 || v6 == 2;
    if (v7)
    {
      pairState = 4;
    }

    else
    {
      pairState = 3;
    }

    self->_pairState = pairState;
  }

  if (pairState != 4 && gLogCategory_SFRemoteAutoFillSession <= 30)
  {
    if (gLogCategory_SFRemoteAutoFillSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_pairState;
      }

      pairState = self->_pairState;
    }

    if (pairState < 8)
    {
      v9 = off_1E7890358[pairState];
    }

    LogPrintF();
  }

  return self->_pairState;
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF();
}

void __43__SFRemoteAutoFillSession__runPairContacts__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF();
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF();
}

void __42__SFRemoteAutoFillSession__runPairHomeKit__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF();
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF();
}

void __41__SFRemoteAutoFillSession__runPairVerify__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF();
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF();
}

void __38__SFRemoteAutoFillSession__runPairPIN__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF();
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3_11(v0, v1);
  LogPrintF();
}

void __41__SFRemoteAutoFillSession__runPairVisual__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_4_7(v0, v1);
  LogPrintF();
}

- (void)_runContextRequest
{
  if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

- (uint64_t)_handleContextRequestResponse:error:.cold.6()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (uint64_t)_handleContextRequestResponse:error:.cold.7()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (uint64_t)_handleContextRequestResponse:error:.cold.8()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (uint64_t)_handleContextRequestResponse:error:.cold.9()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (uint64_t)_handlePasswordPickerResponse:password:error:.cold.2()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (uint64_t)_handlePasswordPickerResponse:password:error:.cold.3()
{
  IsAppleInternalBuild();
  OUTLINED_FUNCTION_2_15();
  return LogPrintF();
}

- (void)_runSendCredentials
{
  if (gLogCategory_SFRemoteAutoFillSession <= 60 && (gLogCategory_SFRemoteAutoFillSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 <= 5u)
  {
    v2 = off_1E7890398[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.3(unsigned __int8 a1, char a2)
{
  if (a1 <= 5u)
  {
    v2 = off_1E7890398[a2 & 7];
  }

  return LogPrintF();
}

@end