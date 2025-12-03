@interface RPStreamServer
- (RPStreamServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_handleStopRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation RPStreamServer

- (RPStreamServer)init
{
  v6.receiver = self;
  v6.super_class = RPStreamServer;
  v2 = [(RPStreamServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__RPStreamServer_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    [RPStreamServer _activateWithCompletion:?];
  }

  v5 = self->_messenger;
  v6 = v5;
  if (!v5)
  {
    v7 = RPErrorF();
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      [RPStreamServer _activateWithCompletion:];
      if (!completionCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!completionCopy)
    {
LABEL_12:

      goto LABEL_13;
    }

    completionCopy[2](completionCopy, v7);
    goto LABEL_12;
  }

  [(RPMessageable *)v5 setServiceType:self->_serviceType];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__RPStreamServer__activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C94EE8;
  v9[4] = self;
  [(RPMessageable *)v6 registerRequestID:@"_streamStart" options:0 handler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__RPStreamServer__activateWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7C94EE8;
  v8[4] = self;
  [(RPMessageable *)v6 registerRequestID:@"_streamStop" options:0 handler:v8];
  objc_storeStrong(&self->_selfRef, self);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_13:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__RPStreamServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v7 = v2;
    self->_invalidateCalled = 1;
    if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      [RPStreamServer _invalidate];
    }

    [(RPMessageable *)self->_messenger deregisterRequestID:@"_streamStart", v3, v7, v4];
    [(RPMessageable *)self->_messenger deregisterRequestID:@"_streamStop"];
    [(NSMutableDictionary *)self->_streamSessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_17];
    [(NSMutableDictionary *)self->_streamSessions removeAllObjects];

    [(RPStreamServer *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;

    self->_invalidateDone = 1;
    streamAcceptHandler = self->_streamAcceptHandler;
    self->_streamAcceptHandler = 0;

    streamPrepareHandler = self->_streamPrepareHandler;
    self->_streamPrepareHandler = 0;

    streamPrepareHandlerEx = self->_streamPrepareHandlerEx;
    self->_streamPrepareHandlerEx = 0;

    selfRef = self->_selfRef;
    self->_selfRef = 0;

    if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      [RPStreamServer _invalidated];
    }
  }
}

- (void)_handleStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__6;
  v50 = __Block_byref_object_dispose__6;
  v51 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v45 = &v46;
  v11 = handlerCopy;
  v44 = v11;
  v12 = _Block_copy(aBlock);
  v33 = v12;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13 || (Int64Ranged = CFDictionaryGetInt64Ranged(), !Int64Ranged))
  {
    v29 = RPErrorF();
    v35 = v47[5];
    v47[5] = v29;

    goto LABEL_25;
  }

  v34 = _Block_copy(self->_streamAcceptHandler);
  if (!v34)
  {
    v30 = RPErrorF();
    v16 = v47[5];
    v47[5] = v30;
    goto LABEL_24;
  }

  if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    if (Int64Ranged > 3)
    {
      v15 = "?";
    }

    else
    {
      v15 = *(off_1E7C950B8 + (((Int64Ranged << 32) - 0x100000000) >> 29));
    }

    v31 = v13;
    v32 = v15;
    LogPrintF();
  }

  v16 = objc_alloc_init(RPStreamSession);
  [(RPStreamSession *)v16 setDispatchQueue:self->_dispatchQueue];
  [(RPStreamSession *)v16 setMessenger:self->_messenger];
  [(RPStreamSession *)v16 setStreamID:v13];
  [(RPStreamSession *)v16 setStreamType:Int64Ranged];
  [(RPStreamSession *)v16 setServiceType:self->_serviceType];
  [(RPStreamSession *)v16 setStreamQoS:self->_streamQoS];
  v17 = requestCopy;
  [(RPStreamSession *)v16 setStreamFlags:[(RPStreamSession *)v16 streamFlags]| CFDictionaryGetInt64Ranged() & 2];
  v18 = v11;
  v19 = _Block_copy(self->_streamPrepareHandlerEx);
  v20 = v19;
  v21 = optionsCopy;
  if (!v19)
  {
    v27 = _Block_copy(self->_streamPrepareHandler);
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v16);
    }

    goto LABEL_18;
  }

  v22 = v47;
  obj = v47[5];
  v23 = (*(v19 + 2))(v19, v16, &obj);
  objc_storeStrong(v22 + 5, obj);
  if (v23)
  {
LABEL_18:
    optionsCopy = v21;
    v11 = v18;
    requestCopy = v17;
    if ((self->_streamFlags & 1) != 0 || Int64Ranged == 2 && ([(RPStreamSession *)v16 streamFlags]& 4) != 0)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_2;
      v40[3] = &unk_1E7C95048;
      v40[4] = v16;
      v40[5] = self;
      v41 = Int64Ranged;
      v40[6] = v13;
      v40[7] = v34;
      [(RPStreamSession *)v16 setStreamAcceptHandler:v40, v31, v32];
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6;
    v36[3] = &unk_1E7C95098;
    v36[4] = v16;
    v39 = Int64Ranged;
    v37 = v11;
    v38 = v34;
    v36[5] = self;
    v36[6] = v13;
    [(RPStreamSession *)v16 activateForServerRequest:v17 options:optionsCopy responseHandler:v36];

    goto LABEL_23;
  }

  v24 = v47[5];
  v25 = RPNestedErrorF();
  v26 = v47[5];
  v47[5] = v25;

  optionsCopy = v21;
  v11 = v18;
  requestCopy = v17;
LABEL_23:

  v12 = v33;
LABEL_24:

LABEL_25:
  v12[2](v12);

  _Block_object_dispose(&v46, 8);
}

uint64_t __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamServer <= 90)
  {
    if (gLogCategory_RPStreamServer == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

uint64_t __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_2(int8x16_t *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_3;
  v4[3] = &unk_1E7C95020;
  v1 = a1[2];
  v5 = vextq_s8(v1, v1, 8uLL);
  v7 = a1[4].i32[0];
  v2 = a1[3].i64[1];
  v6 = a1[3].i64[0];
  return (*(v2 + 16))(v2, v1.i64[0], v4);
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_3(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[2].i64[0] + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_4;
  block[3] = &unk_1E7C94FF8;
  v7 = v3;
  v10 = a1[3].i32[2];
  v8 = vextq_s8(a1[2], a1[2], 8uLL);
  v9 = a1[3].i64[0];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_RPStreamServer <= 90)
    {
      if (gLogCategory_RPStreamServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v4 = *(a1 + 32);
      }

      LogPrintF();
    }

LABEL_11:
    v3 = *(a1 + 40);

    return [v3 invalidate];
  }

  result = [*(a1 + 40) streamFlags];
  if ((result & 1) == 0)
  {
    if (*(a1 + 64) != 2 || (result = [*(a1 + 40) streamFlags], (result & 4) == 0))
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5;
      v5[3] = &unk_1E7C94FD0;
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      return [v6 startServerConnectionWithCompletion:v5];
    }
  }

  return result;
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5_cold_1();
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    v3 = *(*(a1 + 40) + 32);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = *(a1 + 40);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(*(a1 + 40) + 32);
    }

    [v3 setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    [*(a1 + 32) invalidate];
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6_cold_1();
    }

    v13 = *(a1 + 56);
    if (v10)
    {
      (*(v13 + 16))(v13, 0, 0, v10);
    }

    else
    {
      v14 = RPErrorF();
      (*(v13 + 16))(v13, 0, 0, v14);
    }
  }

  else if ((*(*(a1 + 40) + 40) & 1) != 0 || *(a1 + 72) == 2 && ([*(a1 + 32) streamFlags] & 4) != 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7;
    v15[3] = &unk_1E7C95070;
    v15[4] = v11;
    v12 = *(a1 + 64);
    v18 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = v7;
    (*(v12 + 16))(v12, v11, v15);
  }
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    [*(a1 + 32) invalidate];
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7_cold_1();
    }

    v3 = *(*(a1 + 64) + 16);
  }

  else
  {
    v4 = *(*(a1 + 40) + 32);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      v4 = *(*(a1 + 40) + 32);
    }

    [v4 setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
    [*(a1 + 32) acceptedByServer];
    v8 = *(a1 + 56);
    v3 = *(*(a1 + 64) + 16);
  }

  v3();
}

- (void)_handleStopRequest:(id)request options:(id)options responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_streamSessions objectForKeyedSubscript:v8];
    if (v9)
    {
      [(NSMutableDictionary *)self->_streamSessions setObject:0 forKeyedSubscript:v8];
      [v9 invalidate];
      if (gLogCategory_RPStreamServer > 30 || gLogCategory_RPStreamServer == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }
    }

    else if (gLogCategory_RPStreamServer > 30 || gLogCategory_RPStreamServer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    [RPStreamServer _handleStopRequest:options:responseHandler:];
LABEL_14:
    v10 = handlerCopy[2];
    goto LABEL_15;
  }

  v9 = RPErrorF();
  if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    [RPStreamServer _handleStopRequest:options:responseHandler:];
  }

  v10 = handlerCopy[2];
LABEL_15:
  v10();
}

- (uint64_t)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 40);
  return LogPrintF();
}

@end