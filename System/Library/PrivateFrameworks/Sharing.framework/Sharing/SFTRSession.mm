@interface SFTRSession
- (SFTRSession)init;
- (id)_decodeTRMessageData:(id)data kindOfClass:(Class)class;
- (void)_cleanup;
- (void)activate;
- (void)dealloc;
- (void)handleEvent:(id)event flags:(unsigned int)flags;
- (void)handleRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler;
- (void)invalidate;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
- (void)setEventHandler:(id)handler forEventClass:(Class)class;
- (void)setRequestHandler:(id)handler forRequestClass:(Class)class;
@end

@implementation SFTRSession

- (SFTRSession)init
{
  v7.receiver = self;
  v7.super_class = SFTRSession;
  v2 = [(SFTRSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_connected = 1;
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
    [(SFTRSession *)v3 _cleanup];
  }

  else
  {
    [(SFTRSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFTRSession;
    [(SFTRSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  anisetteDataHandler = self->_anisetteDataHandler;
  self->_anisetteDataHandler = 0;

  disconnectHandler = self->_disconnectHandler;
  self->_disconnectHandler = 0;

  [(NSMutableDictionary *)self->_handlerMap removeAllObjects];
  handlerMap = self->_handlerMap;
  self->_handlerMap = 0;

  sendEventImpHandler = self->_sendEventImpHandler;
  self->_sendEventImpHandler = 0;

  sendRequestImpHandler = self->_sendRequestImpHandler;
  self->_sendRequestImpHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFTRSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFTRSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __23__SFTRSession_activate__block_invoke_cold_1();
  }

  v2 = objc_alloc_init(getTRAnisetteDataHandlerClass());
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);
  v6 = v5[2];
  v7 = [v5 trSession];
  [v6 registerForAnisetteDataRequestsFromSession:v7];

  *(*(a1 + 32) + 8) = 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFTRSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__SFTRSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __25__SFTRSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 24) = 1;
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)handleEvent:(id)event flags:(unsigned int)flags
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFTRSession_handleEvent_flags___block_invoke;
  block[3] = &unk_1E788EC90;
  flagsCopy = flags;
  v10 = eventCopy;
  selfCopy = self;
  v8 = eventCopy;
  dispatch_async(dispatchQueue, block);
}

void __33__SFTRSession_handleEvent_flags___block_invoke(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_5();
    }

    goto LABEL_20;
  }

  v2 = *(a1 + 32);
  CFDataGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (!v3)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_4();
    }

LABEL_20:
    v11 = 0;
LABEL_21:
    v8 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v11 = v3;
  getTREventMessageClass();
  v4 = objc_opt_class();
  v5 = [*(a1 + 40) _decodeTRMessageData:v11 kindOfClass:v4];
  if (!v5)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_3(v4);
    }

    goto LABEL_21;
  }

  v6 = v5;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __33__SFTRSession_handleEvent_flags___block_invoke_cold_1(v11);
    }

    (v10)[2](v10, v6);
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __33__SFTRSession_handleEvent_flags___block_invoke_cold_2();
  }

LABEL_9:
}

- (void)handleRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke;
  v13[3] = &unk_1E788EAB8;
  flagsCopy = flags;
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  dispatch_async(dispatchQueue, v13);
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_5();
    }

    goto LABEL_18;
  }

  v2 = *(a1 + 32);
  CFDataGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (!v3)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_4();
    }

LABEL_18:
    v4 = 0;
LABEL_19:
    v9 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  getTRRequestMessageClass();
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) _decodeTRMessageData:v4 kindOfClass:v5];
  if (!v6)
  {
    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_3(v5);
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_1(v4);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2;
    v12[3] = &unk_1E7891388;
    v9 = v9;
    v13 = v9;
    v14 = *(a1 + 48);
    (v11)[2](v11, v7, v12);
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_2();
  }

LABEL_9:
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v9 = v8;
    if (v8)
    {
      v25 = @"trMsg";
      v26 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
      {
        __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_1(v7, v9);
      }

      v5 = 0;
      goto LABEL_18;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A768];
    v27 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v20 = v19;
    v21 = @"?";
    if (v19)
    {
      v21 = v19;
    }

    v28 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v5 = [v17 errorWithDomain:v18 code:-6712 userInfo:v22];

    if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_2();
    }

LABEL_17:
    v10 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (gLogCategory_SFTRSession <= 60 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    v23 = *(a1 + 32);
    v24 = v5;
    LogPrintF();
  }

  if (!v5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v29 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v13;
    v14 = @"?";
    if (v13)
    {
      v14 = v13;
    }

    v30[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:{1, v23, v24}];
    v5 = [v11 errorWithDomain:v12 code:-6700 userInfo:v15];

    goto LABEL_17;
  }

  v10 = 0;
LABEL_19:
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__SFTRSession_sendEvent___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(dispatchQueue, v7);
}

void __25__SFTRSession_sendEvent___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  if (v5)
  {
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __25__SFTRSession_sendEvent___block_invoke_cold_1(v5);
    }

    v11[0] = @"op";
    v11[1] = @"trMsg";
    v12[0] = &unk_1F1D7D210;
    v12[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, 1);
    }

    else
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        [v9 sendWithFlags:1 object:v6];
      }

      else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
      {
        __25__SFTRSession_sendEvent___block_invoke_cold_2();
      }
    }
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __25__SFTRSession_sendEvent___block_invoke_cold_3();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFTRSession_sendRequest_withResponseHandler___block_invoke;
  block[3] = &unk_1E788A570;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke(uint64_t *a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1[4] requiringSecureCoding:1 error:0];
  v3 = v2;
  if (v2)
  {
    v23[0] = @"op";
    v23[1] = @"trMsg";
    v24[0] = &unk_1F1D7D228;
    v24[1] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161;
    aBlock[3] = &unk_1E78913B0;
    v5 = a1[6];
    aBlock[4] = a1[5];
    v20 = v5;
    v6 = _Block_copy(aBlock);
    if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
    {
      __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_1(a1 + 4, v3);
    }

    v7 = a1[5];
    v8 = *(v7 + 80);
    if (v8)
    {
      (*(v8 + 16))(v8, v4, 1, v6);
    }

    else
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        [v9 sendRequestWithFlags:1 object:v4 responseHandler:v6];
      }

      else
      {
        if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
        {
          __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_2();
        }

        v10 = a1[6];
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A768];
        v21 = *MEMORY[0x1E696A578];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
        v14 = v13;
        v15 = @"?";
        if (v13)
        {
          v15 = v13;
        }

        v22 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v17 = [v11 errorWithDomain:v12 code:-6753 userInfo:v16];
        (*(v10 + 16))(v10, v17, 0);
      }
    }
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_3();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161(uint64_t a1, char a2, void *a3, void *a4)
{
  v18 = a3;
  v7 = a4;
  v8 = v18;
  v9 = v7;
  if (v18)
  {
    if (gLogCategory_SFTRSession <= 60)
    {
      if (gLogCategory_SFTRSession == -1 && !_LogCategory_Initialize())
      {
LABEL_24:
        v11 = 0;
LABEL_29:
        v14 = 0;
        v8 = v18;
        goto LABEL_9;
      }

      __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_1();
      v8 = v18;
    }

LABEL_25:
    v11 = 0;
    goto LABEL_30;
  }

  if ((a2 & 1) == 0)
  {
    v15 = NSErrorWithOSStatusF();
    v8 = v15;
    if (gLogCategory_SFTRSession <= 90)
    {
      v18 = v15;
      if (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize())
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_5();
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    v16 = NSErrorWithOSStatusF();
    v8 = v16;
    if (gLogCategory_SFTRSession <= 90)
    {
      v18 = v16;
      if (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize())
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_4();
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v11 = v10;
  getTRResponseMessageClass();
  v12 = objc_opt_class();
  v13 = [*(a1 + 32) _decodeTRMessageData:v11 kindOfClass:v12];
  if (!v13)
  {
    v17 = NSErrorWithOSStatusF();
    v8 = v17;
    if (gLogCategory_SFTRSession <= 90)
    {
      v18 = v17;
      if (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize())
      {
        __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_3(v12);
      }

      goto LABEL_29;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v13;
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_2(v14, v11);
  }

  v8 = 0;
LABEL_9:
  v19 = v8;
  (*(*(a1 + 40) + 16))();
}

- (void)setEventHandler:(id)handler forEventClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFTRSession_setEventHandler_forEventClass___block_invoke;
  block[3] = &unk_1E78913D8;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __45__SFTRSession_setEventHandler_forEventClass___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __45__SFTRSession_setEventHandler_forEventClass___block_invoke_cold_1(a1);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }

  v7 = [*(a1 + 40) copy];
  v5 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)setRequestHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke;
  block[3] = &unk_1E78913D8;
  v10 = handlerCopy;
  classCopy = class;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFTRSession <= 30 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke_cold_1(a1);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;
  }

  v7 = [*(a1 + 40) copy];
  v5 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (id)_decodeTRMessageData:(id)data kindOfClass:(Class)class
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v7 = [v5 alloc];
  v16[0] = class;
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v16[3] = objc_opt_class();
  v16[4] = objc_opt_class();
  v16[5] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
  v9 = [v7 initWithArray:v8];

  v15 = 0;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = v10;
  }

  else if (gLogCategory_SFTRSession <= 90 && (gLogCategory_SFTRSession != -1 || _LogCategory_Initialize()))
  {
    [SFTRSession _decodeTRMessageData:kindOfClass:];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

void __33__SFTRSession_handleEvent_flags___block_invoke_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF();
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF();
}

void __51__SFTRSession_handleRequest_flags_responseHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [a2 length];
  LogPrintF();
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [a2 length];
  LogPrintF();
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_2(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [a2 length];
  LogPrintF();
}

void __47__SFTRSession_sendRequest_withResponseHandler___block_invoke_161_cold_3(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  LogPrintF();
}

void __45__SFTRSession_setEventHandler_forEventClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromClass(*(a1 + 48));
  LogPrintF();
}

void __49__SFTRSession_setRequestHandler_forRequestClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromClass(*(a1 + 48));
  LogPrintF();
}

@end