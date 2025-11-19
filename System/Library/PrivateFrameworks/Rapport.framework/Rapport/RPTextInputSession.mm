@interface RPTextInputSession
- (RPTextInputSession)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_handleTextInputChange:(id)a3 started:(BOOL)a4;
- (void)_handleTextInputStarted:(id)a3;
- (void)_handleTextInputStopped:(id)a3;
- (void)_invalidate;
- (void)activateWithCompletion:(id)a3;
- (void)handleTextActionPayload:(id)a3;
- (void)invalidate;
- (void)performDocumentRequest:(id)a3 completion:(id)a4;
@end

@implementation RPTextInputSession

- (RPTextInputSession)init
{
  v6.receiver = self;
  v6.super_class = RPTextInputSession;
  v2 = [(RPTextInputSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__RPTextInputSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_messenger;
  if (!v5)
  {
    v10 = RPErrorF();
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      [RPTextInputSession _activateWithCompletion:];
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else if (!v4)
    {
LABEL_11:

      goto LABEL_12;
    }

    v4[2](v4, v10);
    goto LABEL_11;
  }

  if (gLogCategory_RPTextInputSession <= 30 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession _activateWithCompletion:];
  }

  v17 = @"statusFlags";
  v18[0] = &unk_1F2EEC920;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  messenger = self->_messenger;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke;
  v16[3] = &unk_1E7C94AD0;
  v16[4] = self;
  [(RPMessageable *)messenger registerEventID:@"_tiStarted" options:v6 handler:v16];
  v8 = self->_messenger;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_2;
  v15[3] = &unk_1E7C94AD0;
  v15[4] = self;
  [(RPMessageable *)v8 registerEventID:@"_tiStopped" options:v6 handler:v15];
  v9 = self->_messenger;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_3;
  v14[3] = &unk_1E7C94AD0;
  v14[4] = self;
  [(RPMessageable *)v9 registerEventID:@"_tiC" options:v6 handler:v14];
  self->_started = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__RPTextInputSession__activateWithCompletion___block_invoke_4;
  v12[3] = &unk_1E7C94750;
  v12[4] = self;
  v13 = v4;
  [(RPMessageable *)v5 sendRequestID:@"_tiStart" request:MEMORY[0x1E695E0F8] destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v12];

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

void __46__RPTextInputSession__activateWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      __46__RPTextInputSession__activateWithCompletion___block_invoke_4_cold_1();
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_12:
      v10();
    }
  }

  else
  {
    if (gLogCategory_RPTextInputSession <= 30 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      __46__RPTextInputSession__activateWithCompletion___block_invoke_4_cold_2();
    }

    [*(a1 + 32) _handleTextInputChange:v12 started:1];
    v11 = *(a1 + 40);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_12;
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPTextInputSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (gLogCategory_RPTextInputSession <= 30 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession _invalidate];
  }

  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiStarted"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiStopped"];
  [(RPMessageable *)self->_messenger deregisterEventID:@"_tiC"];
  if (self->_started)
  {
    self->_started = 0;
    [(RPMessageable *)self->_messenger sendRequestID:@"_tiStop" request:MEMORY[0x1E695E0F8] destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:&__block_literal_global_19];
  }

  messenger = self->_messenger;
  self->_messenger = 0;

  [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:0];
  rtiSession = self->_rtiSession;
  self->_rtiSession = 0;

  rtiUpdatedHandler = self->_rtiUpdatedHandler;
  self->_rtiUpdatedHandler = 0;
}

void __33__RPTextInputSession__invalidate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      __33__RPTextInputSession__invalidate__block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    __33__RPTextInputSession__invalidate__block_invoke_cold_2();
  }
}

- (void)_handleTextInputStarted:(id)a3
{
  v5 = a3;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession _handleTextInputStarted:v4];
  }

  [(RPTextInputSession *)self _handleTextInputChange:v5 started:1];
}

- (void)_handleTextInputStopped:(id)a3
{
  v8 = a3;
  if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession _handleTextInputStopped:];
  }

  if (self->_rtiSession)
  {
    v4 = [getRTIDataPayloadClass[0]() payloadWithData:0];
    [(RTIInputSystemSourceSession *)self->_rtiSession handleTextActionPayload:v4];
    [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:0];
    rtiSession = self->_rtiSession;
    self->_rtiSession = 0;

    v6 = _Block_copy(self->_rtiUpdatedHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

- (void)handleTextActionPayload:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPTextInputSession_handleTextActionPayload___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) data];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "version")}];
    [v8 setObject:v4 forKeyedSubscript:@"_tiV"];
  }

  if (v2)
  {
    [v8 setObject:v2 forKeyedSubscript:@"_tiD"];
  }

  v5 = _MergedGlobals[0]();
  v6 = [*(a1 + 32) data];
  v7 = -[objc_class payloadWithData:version:](v5, "payloadWithData:version:", v6, [*(a1 + 32) version]);

  if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    __46__RPTextInputSession_handleTextActionPayload___block_invoke_cold_1(v2, v7);
  }

  [*(*(a1 + 40) + 24) sendEventID:@"_tiC" event:v8 destinationID:@"rapport:rdid:DirectPeer" options:0 completion:&__block_literal_global_53];
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_RPTextInputSession <= 90)
    {
      v5 = v2;
      if (gLogCategory_RPTextInputSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        __46__RPTextInputSession_handleTextActionPayload___block_invoke_2_cold_1();
        v3 = v5;
      }
    }
  }
}

- (void)performDocumentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_RPTextInputSession <= 90 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
  {
    [RPTextInputSession performDocumentRequest:completion:];
  }
}

- (void)_handleTextInputChange:(id)a3 started:(BOOL)a4
{
  v18 = a3;
  CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (v6)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v8 = [_MergedGlobals[0]() payloadWithData:v6 version:Int64Ranged];
    if (!v8)
    {
      if (gLogCategory_RPTextInputSession <= 60 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_17;
    }

    if (!a4)
    {
      if (gLogCategory_RPTextInputSession > 50)
      {
LABEL_12:
        rtiSession = self->_rtiSession;
        if (!rtiSession)
        {
          v13 = objc_alloc_init(off_1EE8AC1F8());
          v14 = self->_rtiSession;
          self->_rtiSession = v13;

          [(RTIInputSystemSourceSession *)self->_rtiSession setPayloadDelegate:self];
          v15 = _Block_copy(self->_rtiUpdatedHandler);
          v16 = v15;
          if (v15)
          {
            (*(v15 + 2))(v15);
          }

          rtiSession = self->_rtiSession;
        }

        [(RTIInputSystemSourceSession *)rtiSession handleTextActionPayload:v8, v17];
LABEL_17:

        goto LABEL_18;
      }

      if (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize())
      {
        v17 = [v6 length];
        LogPrintF();
      }
    }

    if (gLogCategory_RPTextInputSession <= 50 && (gLogCategory_RPTextInputSession != -1 || _LogCategory_Initialize()))
    {
      v9 = [v8 documentState];
      v10 = [v9 documentState];
      v11 = [v10 contextBeforeInput];
      v17 = [v11 length];
      LogPrintF();
    }

    goto LABEL_12;
  }

LABEL_18:
}

void __46__RPTextInputSession_handleTextActionPayload___block_invoke_cold_1(void *a1, void *a2)
{
  [a1 length];
  v5 = [a2 documentState];
  v3 = [v5 documentState];
  v4 = [v3 contextBeforeInput];
  [v4 length];
  LogPrintF();
}

@end