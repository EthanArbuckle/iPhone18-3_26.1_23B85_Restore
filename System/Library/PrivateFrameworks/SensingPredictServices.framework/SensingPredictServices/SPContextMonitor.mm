@interface SPContextMonitor
- (BOOL)isSystemContext;
- (SPContextMonitor)init;
- (SPContextMonitor)initWithCoder:(id)a3;
- (id)description;
- (void)_activate:(BOOL)a3;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)contextMonitorContextChanged:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)setContextChangeFlags:(unsigned int)a3;
@end

@implementation SPContextMonitor

- (SPContextMonitor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPContextMonitor *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_contextChangeFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contextChangeFlags = self->_contextChangeFlags;
  if (contextChangeFlags)
  {
    [a3 encodeInt64:contextChangeFlags forKey:@"cmcf"];
  }
}

- (SPContextMonitor)init
{
  v5.receiver = self;
  v5.super_class = SPContextMonitor;
  v2 = [(SPContextMonitor *)&v5 init];
  if (v2)
  {
    if (SPXPCGetNextClientID_sOnce != -1)
    {
      [SPContextMonitor init];
    }

    v2->_clientID = atomic_fetch_add(&SPXPCGetNextClientID_sNext, 1u) + 1;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (void)setContextChangeFlags:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_activateCalled)
  {
    dispatchQueue = v4->_dispatchQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__SPContextMonitor_setContextChangeFlags___block_invoke;
    v6[3] = &unk_279B97290;
    v6[4] = v4;
    v7 = a3;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    v4->_contextChangeFlags = a3;
  }

  objc_sync_exit(v4);
}

void __42__SPContextMonitor_setContextChangeFlags___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 contextMonitorUpdate:*(a1 + 32)];
}

- (id)description
{
  clientID = self->_clientID;
  contextChangeFlags = self->_contextChangeFlags;
  NSAppendPrintF();

  return 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SPContextMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_279B972B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__SPContextMonitor_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_SPContextMonitor <= 90 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
    {
      __43__SPContextMonitor_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x266759430](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate:0];
  }
}

- (void)_activate:(BOOL)a3
{
  if (!self->_invalidateCalled)
  {
    if (a3)
    {
      if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }
    }

    else if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    [SPContextMonitor _activate:?];
LABEL_13:
    [(SPContextMonitor *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__SPContextMonitor__activate___block_invoke;
    v13[3] = &unk_279B972E0;
    v14 = a3;
    v13[4] = self;
    v7 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__SPContextMonitor__activate___block_invoke_2;
    v11[3] = &unk_279B972E0;
    v11[4] = self;
    v12 = a3;
    [v7 contextMonitorActivate:self completion:v11];

    return;
  }

  v4 = *MEMORY[0x277CCA590];
  v10 = NSErrorF();
  if (gLogCategory_SPContextMonitor <= 90 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = MEMORY[0x266759430](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v8)
  {
    (v8)[2](v8, v10);
  }
}

void __30__SPContextMonitor__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_SPContextMonitor <= 30)
    {
      if (gLogCategory_SPContextMonitor != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __30__SPContextMonitor__activate___block_invoke_cold_2();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (gLogCategory_SPContextMonitor <= 90)
  {
    if (gLogCategory_SPContextMonitor != -1 || (v5 = _LogCategory_Initialize(), v3 = v6, v5))
    {
      __30__SPContextMonitor__activate___block_invoke_cold_1();
      goto LABEL_13;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __30__SPContextMonitor__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SPContextMonitor <= 90)
    {
      if (gLogCategory_SPContextMonitor != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __30__SPContextMonitor__activate___block_invoke_2_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (gLogCategory_SPContextMonitor > 30 || gLogCategory_SPContextMonitor == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  __30__SPContextMonitor__activate___block_invoke_2_cold_2(a1);
LABEL_14:
  v6 = MEMORY[0x266759430](*(*(a1 + 32) + 16));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_17:
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SensingPredictXPCService"];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876FBCA0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__SPContextMonitor__ensureXPCStarted__block_invoke;
    v12[3] = &unk_279B97308;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SPContextMonitor__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_279B97308;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876FBD00];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __37__SPContextMonitor__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SPContextMonitor <= 50 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor _interrupted];
  }

  v3 = *MEMORY[0x277CCA590];
  v4 = NSErrorF();
  [(SPContextMonitor *)self _reportError:v4];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SPContextMonitor_invalidate__block_invoke;
  block[3] = &unk_279B97308;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __30__SPContextMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_SPContextMonitor <= 30 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
    {
      __30__SPContextMonitor_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v10 = MEMORY[0x266759430](*(v4 + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    if (v10)
    {
      v8 = *MEMORY[0x277CCA590];
      v9 = NSErrorF();
      v10[2](v10, v9);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)contextMonitorContextChanged:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  contextChangeHandler = self->_contextChangeHandler;
  if (contextChangeHandler)
  {
    contextChangeHandler[2](contextChangeHandler, v5);
  }

  else if (gLogCategory_SPContextMonitor <= 30 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor contextMonitorContextChanged:?];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SPContextMonitor <= 50 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
    {
      [SPContextMonitor _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v9 = MEMORY[0x266759430](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v9)
      {
        v4 = *MEMORY[0x277CCA590];
        v5 = NSErrorF();
        v9[2](v9, v5);
      }

      v6 = MEMORY[0x266759430](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v6)
      {
        v6[2](v6);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_SPContextMonitor <= 10 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
      {
        [SPContextMonitor _invalidated];
      }
    }
  }
}

- (BOOL)isSystemContext
{
  if (isSystemContext_once != -1)
  {
    [SPContextMonitor isSystemContext];
  }

  return isSystemContext_result;
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_SPContextMonitor <= 90 && (gLogCategory_SPContextMonitor != -1 || _LogCategory_Initialize()))
  {
    [SPContextMonitor _reportError:];
  }

  v4 = MEMORY[0x266759430](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

@end