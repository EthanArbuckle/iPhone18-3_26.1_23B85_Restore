@interface SFSystemSession
- (SFSystemSession)init;
- (void)_cleanup;
- (void)_processRequests;
- (void)_processRequestsWithError:(id)error;
- (void)_run;
- (void)_runPairVerifyStart;
- (void)_runSFSessionStart;
- (void)activate;
- (void)getProfilesResponse:(id)response error:(id)error completion:(id)completion;
- (void)getProfilesWithCompletion:(id)completion;
- (void)getSystemInfoWithCompletion:(id)completion;
- (void)installProfileResponse:(id)response error:(id)error completion:(id)completion;
- (void)installProfileWithData:(id)data completion:(id)completion;
- (void)installProfileWithURL:(id)l completion:(id)completion;
- (void)invalidate;
- (void)rebootSystemWithCompletion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SFSystemSession

- (SFSystemSession)init
{
  v7.receiver = self;
  v7.super_class = SFSystemSession;
  v2 = [(SFSystemSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)_cleanup
{
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFSystemSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __27__SFSystemSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    __27__SFSystemSession_activate__block_invoke_cold_1();
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFSystemSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__SFSystemSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    __29__SFSystemSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 40) = 7;
  v4 = *(a1 + 32);

  return [v4 _run];
}

- (void)_run
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A768];
  v18 = *MEMORY[0x1E696A768];
  v19 = *MEMORY[0x1E696A578];
  v4 = &gLogCategory_SFSystemSession;
  state = self->_state;
  do
  {
    if (state <= 10)
    {
      if (state > 6)
      {
        if (state == 7)
        {
          v15 = NSErrorWithOSStatusF();
          [(SFSystemSession *)self _processRequestsWithError:v15];

          goto LABEL_39;
        }

        if (state == 10)
        {
          self->_state = 11;
          [(SFSystemSession *)self _runSFSessionStart];
          goto LABEL_39;
        }
      }

      else
      {
        if (!state)
        {
          self->_state = 10;
          goto LABEL_39;
        }

        if (state == 3)
        {
          if (!self->_stateError)
          {
            v6 = MEMORY[0x1E696ABC0];
            v20 = v19;
            v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
            v8 = v7;
            v9 = @"?";
            if (v7)
            {
              v9 = v7;
            }

            v21[0] = v9;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
            v11 = v10 = v4;
            v12 = [v6 errorWithDomain:v18 code:-6700 userInfo:v11];
            stateError = self->_stateError;
            self->_stateError = v12;

            v4 = v10;
          }

          if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
          {
            [(SFSystemSession *)&self->_stateError _run];
          }

          [(SFSystemSession *)self _processRequestsWithError:self->_stateError];
          goto LABEL_39;
        }
      }

      goto LABEL_33;
    }

    if (state > 12)
    {
      if (state == 13)
      {
        if (!self->_stateDone)
        {
          goto LABEL_39;
        }

        if (self->_stateError && !self->_allowUnencrypted)
        {
          v14 = 3;
        }

        else
        {
          v14 = 14;
        }

        goto LABEL_38;
      }

      if (state == 14)
      {
        [(SFSystemSession *)self _processRequests];
        goto LABEL_39;
      }

LABEL_33:
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        [SFSystemSession _run];
      }

      goto LABEL_39;
    }

    if (state != 11)
    {
      self->_state = 13;
      self->_stateDone = 0;
      [(SFSystemSession *)self _runPairVerifyStart];
      goto LABEL_39;
    }

    if (self->_stateDone)
    {
      if (self->_stateError)
      {
        v14 = 3;
      }

      else
      {
        v14 = 12;
      }

LABEL_38:
      self->_state = v14;
    }

LABEL_39:
    v16 = self->_state == state;
    state = self->_state;
  }

  while (!v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_runSFSessionStart
{
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession _runSFSessionStart];
  }

  v3 = objc_alloc_init(SFSession);
  sfSession = self->_sfSession;
  self->_sfSession = v3;

  [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
  [(SFSession *)self->_sfSession setLabel:@"System"];
  [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.System"];
  [(SFSession *)self->_sfSession setSessionFlags:33];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SFSystemSession__runSFSessionStart__block_invoke;
  v7[3] = &unk_1E788B198;
  v7[4] = self;
  [(SFSession *)self->_sfSession setSessionStartedHandler:v7];
  v5 = self->_sfSession;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFSystemSession__runSFSessionStart__block_invoke_2;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFSession *)v5 activateWithCompletion:v6];
}

uint64_t __37__SFSystemSession__runSFSessionStart__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
    {
      __37__SFSystemSession__runSFSessionStart__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 44) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

void __37__SFSystemSession__runSFSessionStart__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    if (v4)
    {
      v7 = v4;
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        __37__SFSystemSession__runSFSessionStart__block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 48), a2);
      *(*(a1 + 32) + 44) = 1;
      [*(a1 + 32) _run];
      goto LABEL_7;
    }

    if (gLogCategory_SFSystemSession <= 30)
    {
      v7 = 0;
      if (gLogCategory_SFSystemSession != -1 || (v6 = _LogCategory_Initialize(), v5 = 0, v6))
      {
        __37__SFSystemSession__runSFSessionStart__block_invoke_2_cold_2();
LABEL_7:
        v5 = v7;
      }
    }
  }
}

- (void)_runPairVerifyStart
{
  sfSession = self->_sfSession;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SFSystemSession__runPairVerifyStart__block_invoke;
  v3[3] = &unk_1E788B238;
  v3[4] = self;
  [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v3];
}

void __38__SFSystemSession__runPairVerifyStart__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v5 = v4;
    if (v4)
    {
      if (gLogCategory_SFSystemSession <= 60 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
      {
        __38__SFSystemSession__runPairVerifyStart__block_invoke_cold_1();
      }
    }

    else if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
    {
      __38__SFSystemSession__runPairVerifyStart__block_invoke_cold_2();
    }

    objc_storeStrong((*(a1 + 32) + 48), a2);
    *(*(a1 + 32) + 44) = 1;
    [*(a1 + 32) _run];
    v4 = v5;
  }
}

- (void)_processRequests
{
  p_currentRequest = &self->_currentRequest;
  if (!self->_currentRequest)
  {
    firstObject = [(NSMutableArray *)self->_requests firstObject];
    if (firstObject)
    {
      objc_storeStrong(p_currentRequest, firstObject);
      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
      sfSession = self->_sfSession;
      requestID = [firstObject requestID];
      options = [firstObject options];
      request = [firstObject request];
      v9 = request;
      if (request)
      {
        v10 = request;
      }

      else
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35__SFSystemSession__processRequests__block_invoke;
      v11[3] = &unk_1E7891360;
      v12 = firstObject;
      selfCopy = self;
      [(SFSession *)sfSession sendRequestID:requestID options:options request:v10 responseHandler:v11];
    }
  }
}

uint64_t __35__SFSystemSession__processRequests__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 responseHandler];
  (v11)[2](v11, v10, v9, v8);

  v12 = *(a1 + 40);
  v13 = v12[1];
  if (*(a1 + 32) == v13)
  {
    v12[1] = 0;

    v12 = *(a1 + 40);
  }

  return [v12 _run];
}

- (void)_processRequestsWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        responseHandler = [*(*(&v12 + 1) + 8 * v9) responseHandler];
        (responseHandler)[2](responseHandler, errorCopy, 0, 0);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_requests removeAllObjects];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)getSystemInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession getSystemInfoWithCompletion:];
  }

  v5 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v5 setRequestID:@"_getSysInfo"];
  if (self->_allowUnencrypted)
  {
    [(SFSessionRequestInfo *)v5 setOptions:&unk_1F1D7D7E0];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke;
  v11[3] = &unk_1E7890D78;
  v12 = completionCopy;
  v6 = completionCopy;
  [(SFSessionRequestInfo *)v5 setResponseHandler:v11];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke_2;
  block[3] = &unk_1E788A658;
  block[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFSystemSession_getSystemInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)getProfilesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession getProfilesWithCompletion:];
  }

  v5 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v5 setRequestID:@"_profilesGet"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SFSystemSession_getProfilesWithCompletion___block_invoke;
  v11[3] = &unk_1E788C728;
  v11[4] = self;
  v12 = completionCopy;
  v6 = completionCopy;
  [(SFSessionRequestInfo *)v5 setResponseHandler:v11];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SFSystemSession_getProfilesWithCompletion___block_invoke_2;
  v9[3] = &unk_1E788A658;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);
}

uint64_t __45__SFSystemSession_getProfilesWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)getProfilesResponse:(id)response error:(id)error completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = completionCopy;
  if (error)
  {
    (*(completionCopy + 2))(completionCopy, 0, error);
  }

  else
  {
    CFArrayGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      (v8)[2](v8, v9, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      (v8)[2](v8, 0, v10);
    }
  }
}

- (void)installProfileWithData:(id)data completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v23 = 0;
  v8 = NSDataCompress();
  v9 = 0;
  if (v8)
  {
    if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
    {
      [SFSystemSession installProfileWithData:dataCopy completion:v8];
    }

    v10 = objc_alloc_init(SFSessionRequestInfo);
    [(SFSessionRequestInfo *)v10 setRequestID:@"_profileInstall"];
    v24 = @"profileData";
    v25[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(SFSessionRequestInfo *)v10 setRequest:v11];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke_2;
    v18[3] = &unk_1E788C728;
    v18[4] = self;
    v19 = completionCopy;
    [(SFSessionRequestInfo *)v10 setResponseHandler:v18];
    dispatchQueue = self->_dispatchQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke_3;
    v16[3] = &unk_1E788A658;
    v16[4] = self;
    v17 = v10;
    v13 = v10;
    dispatch_async(dispatchQueue, v16);
  }

  else
  {
    v14 = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SFSystemSession_installProfileWithData_completion___block_invoke;
    block[3] = &unk_1E788B318;
    v22 = completionCopy;
    v21 = v9;
    dispatch_async(v14, block);

    v13 = v22;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __53__SFSystemSession_installProfileWithData_completion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)installProfileWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    [(SFSystemSession *)self installProfileWithData:v7 completion:completionCopy];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SFSystemSession_installProfileWithURL_completion___block_invoke;
    block[3] = &unk_1E788B318;
    v12 = completionCopy;
    v11 = v8;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)installProfileResponse:(id)response error:(id)error completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = completionCopy;
  if (error)
  {
    (*(completionCopy + 2))(completionCopy, 0, error);
  }

  else
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      (v8)[2](v8, v9, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      (v8)[2](v8, 0, v10);
    }
  }
}

- (void)removeProfileWithIdentifier:(id)identifier completion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession removeProfileWithIdentifier:completion:];
  }

  v8 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v8 setRequestID:@"_profileRemove"];
  v18 = @"id";
  v19[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [(SFSessionRequestInfo *)v8 setRequest:v9];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke;
  v16[3] = &unk_1E7890D78;
  v17 = completionCopy;
  v10 = completionCopy;
  [(SFSessionRequestInfo *)v8 setResponseHandler:v16];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke_2;
  v14[3] = &unk_1E788A658;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  dispatch_async(dispatchQueue, v14);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __58__SFSystemSession_removeProfileWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)rebootSystemWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_SFSystemSession <= 30 && (gLogCategory_SFSystemSession != -1 || _LogCategory_Initialize()))
  {
    [SFSystemSession rebootSystemWithCompletion:];
  }

  v5 = objc_alloc_init(SFSessionRequestInfo);
  [(SFSessionRequestInfo *)v5 setRequestID:@"_rebootSystem"];
  [(SFSessionRequestInfo *)v5 setRequest:MEMORY[0x1E695E0F8]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SFSystemSession_rebootSystemWithCompletion___block_invoke;
  v9[3] = &unk_1E7890D78;
  v10 = completionCopy;
  v6 = completionCopy;
  [(SFSessionRequestInfo *)v5 setResponseHandler:v9];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFSystemSession_rebootSystemWithCompletion___block_invoke_2;
  block[3] = &unk_1E788A658;
  block[4] = self;
  block[5] = v5;
  dispatch_async(dispatchQueue, block);
}

uint64_t __46__SFSystemSession_rebootSystemWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (uint64_t)installProfileWithData:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  [a1 length];
  [a2 length];
  return LogPrintF();
}

@end