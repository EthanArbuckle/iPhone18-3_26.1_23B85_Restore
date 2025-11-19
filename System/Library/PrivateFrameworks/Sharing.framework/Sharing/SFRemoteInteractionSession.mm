@interface SFRemoteInteractionSession
- (SFRemoteInteractionSession)init;
- (SFRemoteInteractionSession)initWithCoder:(id)a3;
- (id)description;
- (void)_activateWithCompletion:(id)a3;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_sessionHandleEvent:(id)a3;
- (void)_sessionSendPayload:(id)a3;
- (void)_sessionStart;
- (void)activateWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)remoteInteractionSessionRemoteTextEvent:(id)a3;
- (void)remoteInteractionSessionTextSessionDidBegin:(id)a3;
- (void)remoteInteractionSessionTextSessionDidChange:(id)a3;
- (void)remoteInteractionSessionTextSessionDidEnd:(id)a3;
- (void)sendPayload:(id)a3;
- (void)setDispatchQueue:(id)a3;
@end

@implementation SFRemoteInteractionSession

- (SFRemoteInteractionSession)init
{
  v7.receiver = self;
  v7.super_class = SFRemoteInteractionSession;
  v2 = [(SFRemoteInteractionSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [a3 encodeObject:peerDevice forKey:@"peerDevice"];
  }
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_invalidateCalled)
  {
    v7 = v3;
    NSAppendPrintF();
    v5 = v7;

    v4 = v5;
  }

  return v4;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
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
  v8[2] = __53__SFRemoteInteractionSession_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession _activateWithCompletion:];
  }

  if (self->_invalidateCalled)
  {
    v13 = 4294960572;
LABEL_13:
    [(SFRemoteInteractionSession *)v4 _activateWithCompletion:v13, &v22, v23];
    goto LABEL_10;
  }

  if (!self->_peerDevice)
  {
    v13 = 4294960551;
    goto LABEL_13;
  }

  if (self->_agent)
  {
    v5 = objc_alloc_init(SFSession);
    remoteSession = self->_remoteSession;
    self->_remoteSession = v5;

    [(SFSession *)self->_remoteSession setDispatchQueue:self->_dispatchQueue];
    [(SFSession *)self->_remoteSession setPeerDevice:self->_peerDevice];
    [(SFSession *)self->_remoteSession setServiceIdentifier:@"com.apple.sharing.Control"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke;
    v21[3] = &unk_1E78903D0;
    v21[4] = self;
    [(SFSession *)self->_remoteSession setEventMessageHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_2;
    v20[3] = &unk_1E788B198;
    v20[4] = self;
    [(SFSession *)self->_remoteSession setInvalidationHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_3;
    v19[3] = &unk_1E788CFF8;
    v19[4] = self;
    [(SFSession *)self->_remoteSession setReceivedObjectHandler:v19];
    v7 = self->_remoteSession;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_4;
    v17[3] = &unk_1E788BF88;
    v17[4] = self;
    v18 = v4;
    [(SFSession *)v7 activateWithCompletion:v17];
  }

  else
  {
    v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    [(SFRemoteInteractionSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_5;
    v14[3] = &unk_1E788B6D8;
    v10 = v4;
    v15 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
    [v11 remoteInteractionSessionActivate:self completion:v10];

    os_activity_scope_leave(&state);
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
}

void __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  CFDictionaryGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  v5 = v7;
  if (v7)
  {
    v6 = *(*(a1 + 32) + 64);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
      v5 = v7;
    }
  }
}

void __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _sessionStart];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t __54__SFRemoteInteractionSession__activateWithCompletion___block_invoke_5(uint64_t a1)
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
  block[2] = __40__SFRemoteInteractionSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
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
  if (!self->_invalidateDone && gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession _invalidate];
  }

  remoteSession = self->_remoteSession;
  if (remoteSession)
  {
    [(SFSession *)remoteSession invalidate];
    v4 = self->_remoteSession;
    self->_remoteSession = 0;
LABEL_10:

    return;
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v4 = self->_xpcCnx;
    self->_xpcCnx = 0;
    goto LABEL_10;
  }

  [(SFRemoteInteractionSession *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _invalidated];
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

    textSessionDidBegin = self->_textSessionDidBegin;
    self->_textSessionDidBegin = 0;

    textSessionDidEnd = self->_textSessionDidEnd;
    self->_textSessionDidEnd = 0;

    textSessionDidChange = self->_textSessionDidChange;
    self->_textSessionDidChange = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _invalidated];
    }
  }
}

- (void)sendPayload:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFRemoteInteractionSession_sendPayload___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __42__SFRemoteInteractionSession_sendPayload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = *(a1 + 40);

    [v2 _sessionSendPayload:v3];
  }

  else
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionSendPayload", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    v5 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v5 remoteInteractionSessionSendPayload:*(a1 + 40)];

    os_activity_scope_leave(&v6);
  }
}

- (void)_sessionStart
{
  v4 = objc_alloc_init(SFEventMessage);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(SFMessage *)v4 setIdentifier:v3];

  [(SFMessage *)v4 setHeaderFields:&unk_1F1D7D718];
  [(SFMessage *)v4 setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_remoteSession sendEvent:v4];
}

- (void)_sessionSendPayload:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0;
  if (v4)
  {
    v6 = SFRTIDataPayloadForData(v4);
    if (v6)
    {
      v7 = v6;
      [v5 setObject:v4 forKeyedSubscript:@"rp"];
      v15 = 0;
      SFRemoteTextInputPayloadToLegacyAPI(v7, &v16, &v15);
      v8 = v15;
      v9 = v16;
      if (v16)
      {
        if (gLogCategory_SFRemoteInteractionSession <= 30)
        {
          if (gLogCategory_SFRemoteInteractionSession != -1 || (v10 = _LogCategory_Initialize(), v9 = v16, v10))
          {
            v14 = v9;
            LogPrintF();
            v9 = v16;
          }
        }

        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v9, v14}];
        [v5 setObject:v11 forKeyedSubscript:@"o"];

        if (v8)
        {
          [v5 setObject:v8 forKeyedSubscript:@"t"];
        }
      }

      else if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
      {
        [SFRemoteInteractionSession _sessionSendPayload:];
      }

      v12 = objc_alloc_init(SFEventMessage);
      [(SFMessage *)v12 setHeaderFields:v5];
      v13 = [MEMORY[0x1E696AFB0] UUID];
      [(SFMessage *)v12 setIdentifier:v13];

      [(SFMessage *)v12 setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_remoteSession sendEvent:v12];
    }

    else
    {
      [SFRemoteInteractionSession _sessionSendPayload:];
    }
  }

  else
  {
    [SFRemoteInteractionSession _sessionSendPayload:];
  }
}

- (void)_sessionHandleEvent:(id)a3
{
  v4 = a3;
  v20 = 0;
  v5 = [v4 headerFields];
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:];
    }

    remoteTextEventHandler = self->_remoteTextEventHandler;
    if (remoteTextEventHandler)
    {
      remoteTextEventHandler[2](remoteTextEventHandler, v6);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v8 = [v4 headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v10 = Int64Ranged;
  if (Int64Ranged > 9u)
  {
    goto LABEL_60;
  }

  if (((1 << Int64Ranged) & 0x23C) != 0)
  {
    if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:];
    }

    goto LABEL_12;
  }

  if (((1 << Int64Ranged) & 0xC0) != 0)
  {
    v14 = [v4 headerFields];
    CFDictionaryGetTypeID();
    v11 = CFDictionaryGetTypedValue();

    v15 = [[SFRemoteTextSessionInfo alloc] initWithDictionary:v11];
    if (v15)
    {
      v12 = v15;
      if (v10 == 6)
      {
        if (self->_agent)
        {
          v16 = [v4 peerDevice];
          if (v16)
          {
            [(SDRemoteInteractionAgent *)self->_agent clientTextSessionDidBegin:v12 device:v16];
          }
        }

        if (!self->_textSessionDidBegin)
        {
          if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
          {
            [SFRemoteInteractionSession _sessionHandleEvent:];
          }

          goto LABEL_14;
        }

        if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
        {
          [SFRemoteInteractionSession _sessionHandleEvent:];
        }

        textSessionDidBegin = self->_textSessionDidBegin;
      }

      else
      {
        if (!self->_textSessionDidEnd)
        {
          if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
          {
            [SFRemoteInteractionSession _sessionHandleEvent:];
          }

          goto LABEL_14;
        }

        if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
        {
          [SFRemoteInteractionSession _sessionHandleEvent:];
        }

        textSessionDidBegin = self->_textSessionDidEnd;
      }

      textSessionDidBegin[2](textSessionDidBegin, v12);
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:?];
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (Int64Ranged != 8)
  {
LABEL_60:
    if (gLogCategory_SFRemoteInteractionSession <= 40 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _sessionHandleEvent:];
    }

    goto LABEL_12;
  }

  v18 = [v4 headerFields];
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();

  v12 = objc_alloc_init(SFRemoteTextSessionInfo);
  [(SFRemoteTextSessionInfo *)v12 setText:v13];
  textSessionDidChange = self->_textSessionDidChange;
  if (textSessionDidChange)
  {
    textSessionDidChange[2](textSessionDidChange, v12);
  }

  v11 = 0;
LABEL_15:
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
    v8[2] = __47__SFRemoteInteractionSession__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__SFRemoteInteractionSession__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEEA0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteInteractionSession _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteInteractionSession/remoteInteractionSessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    if (gLogCategory_SFRemoteInteractionSession <= 50 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SFRemoteInteractionSession *)self _ensureXPCStarted];
    v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v5 remoteInteractionSessionActivate:self completion:&__block_literal_global_64];

    os_activity_scope_leave(&v6);
  }
}

void __42__SFRemoteInteractionSession__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteInteractionSession <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteInteractionSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __42__SFRemoteInteractionSession__interrupted__block_invoke_cold_1();
      v3 = v5;
    }
  }
}

- (void)remoteInteractionSessionRemoteTextEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionRemoteTextEvent:];
  }

  remoteTextEventHandler = self->_remoteTextEventHandler;
  v5 = v6;
  if (remoteTextEventHandler)
  {
    remoteTextEventHandler[2](remoteTextEventHandler, v6);
    v5 = v6;
  }
}

- (void)remoteInteractionSessionTextSessionDidBegin:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidBegin:];
  }

  textSessionDidBegin = self->_textSessionDidBegin;
  v5 = v6;
  if (textSessionDidBegin)
  {
    textSessionDidBegin[2](textSessionDidBegin, v6);
    v5 = v6;
  }
}

- (void)remoteInteractionSessionTextSessionDidEnd:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 30 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidEnd:];
  }

  textSessionDidEnd = self->_textSessionDidEnd;
  v5 = v6;
  if (textSessionDidEnd)
  {
    textSessionDidEnd[2](textSessionDidEnd, v6);
    v5 = v6;
  }
}

- (void)remoteInteractionSessionTextSessionDidChange:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFRemoteInteractionSession <= 10 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteInteractionSession remoteInteractionSessionTextSessionDidChange:];
  }

  textSessionDidChange = self->_textSessionDidChange;
  v5 = v6;
  if (textSessionDidChange)
  {
    textSessionDidChange[2](textSessionDidChange, v6);
    v5 = v6;
  }
}

- (SFRemoteInteractionSession)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFRemoteInteractionSession;
  v5 = [(SFRemoteInteractionSession *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    if ([v4 containsValueForKey:@"peerDevice"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
      peerDevice = v6->_peerDevice;
      v6->_peerDevice = v9;
    }

    v11 = v6;
  }

  return v6;
}

- (void)_activateWithCompletion:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    v16 = a2;
    LogPrintF();
  }

  if (a1)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v10 = a2;
    *a3 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    *a4 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:{1, v16}];
    v15 = [v8 errorWithDomain:v9 code:v10 userInfo:v14];
    (*(a1 + 16))(a1, v15);
  }
}

- (void)_sessionSendPayload:.cold.2()
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

- (void)_sessionSendPayload:.cold.3()
{
  if (gLogCategory_SFRemoteInteractionSession <= 60 && (gLogCategory_SFRemoteInteractionSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

@end