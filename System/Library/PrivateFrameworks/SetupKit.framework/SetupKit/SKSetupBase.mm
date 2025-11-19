@interface SKSetupBase
- (BOOL)_runSteps;
- (CUMessageSession)messageSessionTemplate;
- (SKSetupBase)initWithLogCategory:(LogCategory *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)_addStep:(id)a3;
- (void)_completeWithError:(id)a3;
- (void)_completedStep:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_invalidateSteps;
- (void)_invalidated;
- (void)_pairSetupConfig:(id)a3;
- (void)_postEvent:(id)a3;
- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5;
- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_reportEvent:(id)a3;
- (void)_setupMessageSession;
- (void)_tearDownMessageSession;
- (void)activate;
- (void)addStep:(id)a3;
- (void)dealloc;
- (void)deregisterEventID:(id)a3 completionHandler:(id)a4;
- (void)deregisterRequestID:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)postEvent:(id)a3;
- (void)postEventType:(int)a3;
- (void)receivedData:(id)a3;
- (void)registerEventID:(id)a3 options:(id)a4 eventHandler:(id)a5 completionHandler:(id)a6;
- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5 completionHandler:(id)a6;
- (void)reportEvent:(id)a3;
- (void)reportEventType:(int)a3;
- (void)sendEventID:(id)a3 eventMessage:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)sendRequestID:(id)a3 requestMessage:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)setLabel:(id)a3;
- (void)setPasswordType:(int)a3;
@end

@implementation SKSetupBase

- (BOOL)_runSteps
{
  p_stepCurrent = &self->_stepCurrent;
  if (self->_stepCurrent)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_stepArray popFirstObject];
  v3 = v4 == 0;
  if (v4)
  {
    objc_storeStrong(p_stepCurrent, v4);
    [v4 activate];
  }

  return v3;
}

- (void)_invalidateSteps
{
  v17 = *MEMORY[0x277D85DE8];
  [(SKStepable *)self->_stepCurrent setSkCompletionHandler:0];
  [(SKStepable *)self->_stepCurrent invalidate];
  stepCurrent = self->_stepCurrent;
  self->_stepCurrent = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_stepArray;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setSkCompletionHandler:{0, v12}];
        [v9 invalidate];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_stepArray removeAllObjects];
  stepArray = self->_stepArray;
  self->_stepArray = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_completedStep:(id)a3 error:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (self->_stepCurrent == v19)
  {
    v8 = v6;
    var0 = self->_ucat->var0;
    if (v8)
    {
      if (var0 > 90)
      {
        goto LABEL_17;
      }

      if (var0 != -1)
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v13 = self->_ucat;
LABEL_8:
        v18 = CUPrintNSError();
        v17 = v19;
        LogPrintF();
      }

LABEL_17:
      [(SKStepable *)v19 invalidate:v17];
      stepCurrent = self->_stepCurrent;
      self->_stepCurrent = 0;

      if (v8)
      {
        [(SKSetupBase *)self _completeWithError:v8];
      }

      else
      {
        [(SKSetupBase *)self _run];
      }

      goto LABEL_20;
    }

    if (var0 > 30)
    {
      goto LABEL_17;
    }

    if (var0 == -1)
    {
      v14 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v16 = self->_ucat;
    }

    v17 = v19;
    LogPrintF();
    goto LABEL_17;
  }

  v7 = self->_ucat->var0;
  if (v7 > 90)
  {
    goto LABEL_21;
  }

  if (v7 == -1)
  {
    v10 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v11 = self->_ucat;
  }

  v8 = CUPrintNSError();
  LogPrintF();
LABEL_20:

LABEL_21:
}

- (void)_addStep:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v13 = v4;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v12 = v4;
      LogPrintF();
      v4 = v13;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v13;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = [v4 skSetupObject];

  if (!v7)
  {
    [v13 setSkSetupObject:self];
  }

  stepArray = self->_stepArray;
  if (!stepArray)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_stepArray;
    self->_stepArray = v9;

    stepArray = self->_stepArray;
  }

  [(NSMutableArray *)stepArray addObject:v13];
}

- (void)addStep:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__SKSetupBase_addStep___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_tearDownMessageSession
{
  [(CUMessageSession *)self->_messageSessionTemplate invalidate];
  messageSessionTemplate = self->_messageSessionTemplate;
  self->_messageSessionTemplate = 0;

  [(CUMessageSessionServer *)self->_messageSessionServer invalidate];
  messageSessionServer = self->_messageSessionServer;
  self->_messageSessionServer = 0;
}

- (void)_setupMessageSession
{
  if (self->_messageSessionServer)
  {
    return;
  }

  v17[5] = v5;
  v17[6] = v4;
  v17[9] = v2;
  v17[10] = v3;
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  v8 = objc_alloc_init(MEMORY[0x277D02888]);
  messageSessionServer = self->_messageSessionServer;
  self->_messageSessionServer = v8;

  [(CUMessageSessionServer *)self->_messageSessionServer setDispatchQueue:self->_dispatchQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__SKSetupBase__setupMessageSession__block_invoke;
  v17[3] = &unk_279BB80E0;
  v17[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setRegisterRequestHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __35__SKSetupBase__setupMessageSession__block_invoke_6;
  v16[3] = &unk_279BB8108;
  v16[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setDeregisterRequestHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __35__SKSetupBase__setupMessageSession__block_invoke_8;
  v15[3] = &unk_279BB8158;
  v15[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setSendRequestHandler:v15];
  [(CUMessageSessionServer *)self->_messageSessionServer activate];
  v10 = [(CUMessageSessionServer *)self->_messageSessionServer templateSession];
  messageSessionTemplate = self->_messageSessionTemplate;
  self->_messageSessionTemplate = v10;

  if (!self->_messageSessionTemplate)
  {
    v12 = self->_ucat->var0;
    if (v12 <= 60)
    {
      if (v12 != -1)
      {
LABEL_9:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v14 = self->_ucat;
        goto LABEL_9;
      }
    }
  }
}

void __35__SKSetupBase__setupMessageSession__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10[20])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__SKSetupBase__setupMessageSession__block_invoke_2;
    v13[3] = &unk_279BB80B8;
    v14 = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__SKSetupBase__setupMessageSession__block_invoke_5;
    v11[3] = &unk_279BB8838;
    v11[4] = *(a1 + 32);
    v12 = v7;
    [v10 registerRequestID:v12 options:a3 requestHandler:v13 completionHandler:v11];
  }
}

void *__35__SKSetupBase__setupMessageSession__block_invoke_6(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20])
  {
    return [result deregisterRequestID:a2 completionHandler:&__block_literal_global_66];
  }

  return result;
}

void __35__SKSetupBase__setupMessageSession__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11[20])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__SKSetupBase__setupMessageSession__block_invoke_9;
    v12[3] = &unk_279BB8130;
    v13 = v9;
    [v11 sendRequestID:a2 requestMessage:a4 options:a3 responseHandler:v12];
  }
}

void __35__SKSetupBase__setupMessageSession__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = a2;
  v6 = NSErrorToOSStatus();
  (*(v4 + 16))(v4, v6, v5, v7);
}

void __35__SKSetupBase__setupMessageSession__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__SKSetupBase__setupMessageSession__block_invoke_3;
  v12[3] = &unk_279BB8090;
  v13 = v8;
  v10 = *(v9 + 16);
  v11 = v8;
  v10(v9, a4, a3, v12);
}

uint64_t __35__SKSetupBase__setupMessageSession__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = **(*(a1 + 32) + 144);
    if (v5 <= 90)
    {
      v10 = v3;
      if (v5 != -1)
      {
LABEL_4:
        v6 = *(a1 + 40);
        v9 = CUPrintNSError();
        LogPrintF();

        v4 = v10;
        goto LABEL_6;
      }

      v3 = _LogCategory_Initialize();
      v4 = v10;
      if (v3)
      {
        v7 = *(*(a1 + 32) + 144);
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

void __35__SKSetupBase__setupMessageSession__block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v8 = a2;
    v9 = a4;
    v10 = a3;
    v12 = [v6 errorWithDomain:v7 code:v8 userInfo:0];
    (*(v5 + 16))(v5, v9, v10);
  }

  else
  {
    v11 = *(v5 + 16);
    v10 = a4;
    v12 = a3;
    v11(v5, v10);
  }
}

- (CUMessageSession)messageSessionTemplate
{
  messageSessionTemplate = self->_messageSessionTemplate;
  if (!messageSessionTemplate)
  {
    [(SKSetupBase *)self _setupMessageSession];
    messageSessionTemplate = self->_messageSessionTemplate;
  }

  return messageSessionTemplate;
}

- (void)sendRequestID:(id)a3 requestMessage:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SKSetupBase_sendRequestID_requestMessage_options_responseHandler___block_invoke;
  block[3] = &unk_279BB8068;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_async(dispatchQueue, block);
}

void __68__SKSetupBase_sendRequestID_requestMessage_options_responseHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 120);
  v9 = v2;
  if (v2)
  {
    [v2 sendRequestID:a1[5] request:a1[6] options:a1[7] responseHandler:a1[8]];
    goto LABEL_8;
  }

  v3 = **(a1[4] + 144);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v7 = *(a1[4] + 144);
    }

    v8 = a1[5];
    LogPrintF();
  }

LABEL_7:
  v4 = a1[8];
  v5 = *MEMORY[0x277CCA590];
  v6 = NSErrorF_safe();
  (*(v4 + 16))(v4, 0, 0, v6);

LABEL_8:
}

- (void)deregisterRequestID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SKSetupBase_deregisterRequestID_completionHandler___block_invoke;
  block[3] = &unk_279BB8040;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __53__SKSetupBase_deregisterRequestID_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = **(v2 + 144);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      v8 = a1[5];
      LogPrintF();
      v2 = a1[4];
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = a1[4];
    if (v4)
    {
      v7 = *(v2 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  [*(v2 + 88) setObject:0 forKeyedSubscript:{a1[5], v8}];
  v5 = *(a1[6] + 16);

  return v5();
}

- (void)registerRequestID:(id)a3 options:(id)a4 requestHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SKSetupBase_registerRequestID_options_requestHandler_completionHandler___block_invoke;
  block[3] = &unk_279BB8018;
  block[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v12;
  v21 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(dispatchQueue, block);
}

void __74__SKSetupBase_registerRequestID_options_requestHandler_completionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];

  v3 = **(a1[4] + 144);
  if (v2)
  {
    if (v3 <= 90)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v10 = *(a1[4] + 144);
      }

      v13 = a1[5];
      LogPrintF();
    }

LABEL_9:
    v4 = a1[7];
    v5 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    (*(v4 + 16))(v4, v14);
    goto LABEL_14;
  }

  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v11 = *(a1[4] + 144);
    }

    v12 = a1[5];
    LogPrintF();
  }

LABEL_11:
  v14 = objc_alloc_init(SKRequestRegistration);
  [(SKRequestRegistration *)v14 setHandler:a1[8]];
  [(SKRequestRegistration *)v14 setOptions:a1[6]];
  [(SKRequestRegistration *)v14 setRequestID:a1[5]];
  v6 = *(a1[4] + 88);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = a1[4];
    v9 = *(v8 + 88);
    *(v8 + 88) = v7;

    v6 = *(a1[4] + 88);
  }

  [v6 setObject:v14 forKeyedSubscript:{a1[5], v12}];
  (*(a1[7] + 16))(a1[7], 0);
LABEL_14:
}

- (void)_receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:v18];
  v14 = [v13 handler];
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v18, v10, v11, v12);
  }

  else
  {
    v16 = *MEMORY[0x277CCA590];
    v17 = NSErrorF_safe();
    (*(v12 + 2))(v12, 0, 0, v17, &__block_literal_global_892);
  }
}

- (void)sendEventID:(id)a3 eventMessage:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SKSetupBase_sendEventID_eventMessage_options_completionHandler___block_invoke;
  block[3] = &unk_279BB8068;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_async(dispatchQueue, block);
}

void __66__SKSetupBase_sendEventID_eventMessage_options_completionHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 120);
  v9 = v2;
  if (v2)
  {
    [v2 sendEventID:a1[5] event:a1[6] options:a1[7] completion:a1[8]];
    goto LABEL_8;
  }

  v3 = **(a1[4] + 144);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v7 = *(a1[4] + 144);
    }

    v8 = a1[5];
    LogPrintF();
  }

LABEL_7:
  v4 = a1[8];
  v5 = *MEMORY[0x277CCA590];
  v6 = NSErrorF_safe();
  (*(v4 + 16))(v4, v6);

LABEL_8:
}

- (void)deregisterEventID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SKSetupBase_deregisterEventID_completionHandler___block_invoke;
  block[3] = &unk_279BB8040;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __51__SKSetupBase_deregisterEventID_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = **(v2 + 144);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      v8 = a1[5];
      LogPrintF();
      v2 = a1[4];
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = a1[4];
    if (v4)
    {
      v7 = *(v2 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  [*(v2 + 80) setObject:0 forKeyedSubscript:{a1[5], v8}];
  v5 = *(a1[6] + 16);

  return v5();
}

- (void)registerEventID:(id)a3 options:(id)a4 eventHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SKSetupBase_registerEventID_options_eventHandler_completionHandler___block_invoke;
  block[3] = &unk_279BB8018;
  block[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v12;
  v21 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  dispatch_async(dispatchQueue, block);
}

void __70__SKSetupBase_registerEventID_options_eventHandler_completionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];

  v3 = **(a1[4] + 144);
  if (v2)
  {
    if (v3 <= 90)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v10 = *(a1[4] + 144);
      }

      v13 = a1[5];
      LogPrintF();
    }

LABEL_9:
    v4 = a1[7];
    v5 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    (*(v4 + 16))(v4, v14);
    goto LABEL_14;
  }

  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v11 = *(a1[4] + 144);
    }

    v12 = a1[5];
    LogPrintF();
  }

LABEL_11:
  v14 = objc_alloc_init(SKEventRegistration);
  [(SKEventRegistration *)v14 setEventID:a1[5]];
  [(SKEventRegistration *)v14 setHandler:a1[8]];
  [(SKEventRegistration *)v14 setOptions:a1[6]];
  v6 = *(a1[4] + 80);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = a1[4];
    v9 = *(v8 + 80);
    *(v8 + 80) = v7;

    v6 = *(a1[4] + 80);
  }

  [v6 setObject:v14 forKeyedSubscript:{a1[5], v12}];
  (*(a1[7] + 16))(a1[7], 0);
LABEL_14:
}

- (void)_receivedEventID:(id)a3 event:(id)a4 options:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:v12];
  v11 = [v10 handler];

  if (v11)
  {
    (v11)[2](v11, v12, v8, v9);
  }
}

- (void)_pairSetupConfig:(id)a3
{
  CFDictionaryGetInt64Ranged();
  passwordTypeChangedHandler = self->_passwordTypeChangedHandler;
  if (passwordTypeChangedHandler)
  {
    v5 = *(passwordTypeChangedHandler + 2);

    v5();
  }
}

uint64_t __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(*(a1 + 32) + 144);
  if (v4 <= 90)
  {
    if (v4 != -1)
    {
LABEL_4:
      v12 = CUPrintNSError();
      LogPrintF();

      v2 = *(a1 + 48);
      goto LABEL_6;
    }

    v5 = *(*(a1 + 32) + 144);
    v6 = _LogCategory_Initialize();
    v2 = *(a1 + 48);
    if (v6)
    {
      v10 = *(*(a1 + 32) + 144);
      v11 = *(*(v2 + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = *(*(v2 + 8) + 40);
  result = (*(*(a1 + 40) + 16))(*(a1 + 40));
  if (*(a1 + 56) == 1)
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 48) + 8) + 40);

    return [v8 _completeWithError:v9];
  }

  return result;
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SKEvent alloc] initWithEventType:140 error:v3];

  [*(a1 + 32) _reportEvent:v4];
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[SKAuthenticationRequestEvent alloc] initWithPasswordType:a2 pairingFlags:a3 throttleSeconds:a4];
  [*(a1 + 32) _reportEvent:v5];
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[SKAuthenticationPresentEvent alloc] initWithPasswordType:a2 password:v5];

  [*(a1 + 32) _reportEvent:v6];
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 120))
  {
    v10 = v3;
    v5 = **(v4 + 144);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v8 = *(*(a1 + 40) + 144);
      }

      v9 = CUPrintNSError();
      LogPrintF();
    }

LABEL_6:
    [*(a1 + 32) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 120);
    *(v6 + 120) = 0;

    [*(a1 + 40) _run];
    v3 = v10;
  }
}

int *__88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 144);
  if (*result <= 30)
  {
    if (*result != -1)
    {
LABEL_3:
      v7 = *(a1 + 40);
      result = LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    result = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (result)
    {
      v6 = *(v2 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = *(v2 + 120);
  if (*(a1 + 40) == v4)
  {
    *(v2 + 120) = 0;

    [*(a1 + 32) _connectionEnded:*(a1 + 40)];
    [*(a1 + 32) _reportEventType:41];
    v5 = *(a1 + 32);

    return [v5 _run];
  }

  return result;
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[18];
  v9 = v3;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = CUPrintNSObjectOneLine();
      LogPrintF();

      v3 = v9;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[18];
      goto LABEL_3;
    }

    v3 = v9;
  }

LABEL_6:
  [v4 _pairSetupConfig:{v3, v8}];
}

void *__88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[15])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[15])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

void *__88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[15])
  {
    return [result _run];
  }

  return result;
}

void __88__SKSetupBase__connectionStartWithSKConnection_clientMode_completeOnFailure_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = v3;
  if (v4 != *(v5 + 120))
  {
    v6 = *MEMORY[0x277CCA590];
    v7 = NSErrorF_safe();
    v8 = **(*(a1 + 40) + 144);
    if (v8 <= 90)
    {
      if (v8 == -1)
      {
        v10 = *(*(a1 + 40) + 144);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v13 = *(*(a1 + 40) + 144);
      }

      v17 = CUPrintNSError();
      LogPrintF();
    }

LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48));
    [*(a1 + 40) _run];

    goto LABEL_20;
  }

  v9 = **(v5 + 144);
  if (v3)
  {
    if (v9 > 90)
    {
      goto LABEL_15;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_15:
        [*(a1 + 32) invalidate];
        v11 = *(a1 + 40);
        v12 = *(v11 + 120);
        *(v11 + 120) = 0;

        (*(*(a1 + 48) + 16))();
        if (*(a1 + 56) == 1)
        {
          [*(a1 + 40) _completeWithError:v18];
        }

        goto LABEL_19;
      }

      v14 = *(*(a1 + 40) + 144);
    }

    v16 = CUPrintNSError();
    LogPrintF();

    goto LABEL_15;
  }

  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v4 = *(a1 + 32);
      v15 = *(*(a1 + 40) + 144);
    }

    v16 = v4;
    LogPrintF();
  }

LABEL_18:
  (*(*(a1 + 48) + 16))(*(a1 + 48));
  [*(a1 + 40) _reportEventType:40];
LABEL_19:
  [*(a1 + 40) _run];
LABEL_20:
}

- (void)receivedData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SKSetupBase_receivedData___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)reportEventType:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SKSetupBase_reportEventType___block_invoke;
  v4[3] = &unk_279BB7FA0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_reportEvent:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = MEMORY[0x26676A4C0](self->_eventHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
  }
}

- (void)reportEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SKSetupBase_reportEvent___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_postEvent:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v16 = v4;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v15 = v4;
      LogPrintF();
      v4 = v16;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v16;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if ([v4 eventType] != 130)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v16;
    v8 = [v7 password];
    if (v8)
    {
      [(SKConnection *)self->_skCnx tryPassword:v8];
    }

    else
    {
      v10 = self->_ucat->var0;
      if (v10 <= 90)
      {
        if (v10 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          v14 = self->_ucat;
        }

        LogPrintF();
      }
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = self->_ucat->var0;
  if (v9 <= 90)
  {
    if (v9 != -1)
    {
LABEL_15:
      objc_opt_class();
      LogPrintF();
      goto LABEL_10;
    }

    v12 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_15;
    }
  }

LABEL_10:
}

- (void)postEventType:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__SKSetupBase_postEventType___block_invoke;
  v4[3] = &unk_279BB7FA0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

void __29__SKSetupBase_postEventType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[SKEvent alloc] initWithEventType:*(a1 + 40)];
  [v1 _postEvent:v2];
}

- (void)postEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__SKSetupBase_postEvent___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_completeWithError:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v11 = v4;
  if (v4)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      v10 = CUPrintNSError();
      LogPrintF();
    }

LABEL_9:
    v6 = 3;
    goto LABEL_12;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  v6 = 4;
LABEL_12:
  self->_runState = v6;
  v7 = [[SKEvent alloc] initWithEventType:20 error:v11];
  [(SKSetupBase *)self _reportEvent:v7];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    [(SKSetupBase *)self _reportEventType:30];
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    passwordTypeChangedHandler = self->_passwordTypeChangedHandler;
    self->_passwordTypeChangedHandler = 0;

    sendDataHandler = self->_sendDataHandler;
    self->_sendDataHandler = 0;

    self->_invalidateDone = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }
}

- (void)_invalidate
{
  [(SKSetupBase *)self _invalidateSteps];
  registeredEvents = self->_registeredEvents;
  self->_registeredEvents = 0;

  registeredRequests = self->_registeredRequests;
  self->_registeredRequests = 0;

  [(SKConnection *)self->_skCnx invalidate];
  skCnx = self->_skCnx;
  self->_skCnx = 0;

  [(SKSetupBase *)self _tearDownMessageSession];

  [(SKSetupBase *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SKSetupBase_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__SKSetupBase_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 40))
  {
    return result;
  }

  v3 = result;
  *(v2 + 40) = 1;
  v4 = *(result + 32);
  v5 = *v4[18];
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(v3 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = v4[18];
    }

    LogPrintF();
    v4 = *(v3 + 32);
  }

LABEL_6:

  return [v4 _invalidate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SKSetupBase_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

int *__23__SKSetupBase_activate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);
  result = *(v2 + 144);
  v4 = *result;
  if (*(v2 + 40) != 1)
  {
    if (v4 <= 30)
    {
      if (v4 == -1)
      {
        v5 = _LogCategory_Initialize();
        v2 = *(a1 + 32);
        if (!v5)
        {
          goto LABEL_6;
        }

        v6 = *(v2 + 144);
      }

      LogPrintF();
      v2 = *(a1 + 32);
    }

LABEL_6:

    return [v2 _activate];
  }

  if (v4 > 90)
  {
    return result;
  }

  if (v4 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    v7 = *(*(a1 + 32) + 144);
  }

  return LogPrintF();
}

- (void)setPasswordType:(int)a3
{
  passwordType = self->_passwordType;
  self->_passwordType = a3;
  if (passwordType != a3 && self->_activateCalled)
  {
    v9 = v3;
    v10 = v4;
    dispatchQueue = self->_dispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SKSetupBase_setPasswordType___block_invoke;
    v7[3] = &unk_279BB7FA0;
    v7[4] = self;
    v8 = a3;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v7 = a3;
  var4 = self->_ucatBase->var4;
  v6 = v7;
  [v7 UTF8String];
  LogCategoryReplaceF();
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v14 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  controlFlags = self->_controlFlags;
  v15 = CUPrintFlags32();
  CUAppendF();
  v6 = v4;

  pskData = self->_pskData;
  if (pskData)
  {
    v8 = pskData;
    [(NSData *)v8 length];
    CUAppendF();
    v9 = v6;

    v6 = v9;
  }

  self->_reversePairing;
  CUAppendF();
  v10 = v6;

  v11 = &stru_2877689A8;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKSetupBase;
  [(SKSetupBase *)&v4 dealloc];
}

- (SKSetupBase)initWithLogCategory:(LogCategory *)a3
{
  v8.receiver = self;
  v8.super_class = SKSetupBase;
  v4 = [(SKSetupBase *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dispatchQueue, MEMORY[0x277D85CD0]);
    v5->_ucat = a3;
    v5->_ucatBase = a3;
    v6 = v5;
  }

  return v5;
}

@end