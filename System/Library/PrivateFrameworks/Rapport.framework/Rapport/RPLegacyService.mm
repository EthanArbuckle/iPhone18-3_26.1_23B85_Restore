@interface RPLegacyService
- (RPLegacyService)init;
- (id)description;
- (int)_bonjourUpdateService;
- (int)_bonjourUpdateTXT;
- (int)_tcpStart;
- (uint64_t)_bonjourUpdateService;
- (uint64_t)_tcpStart;
- (void)_activateWithCompletion:(id)a3;
- (void)_bonjourUpdateTXT;
- (void)_cleanup;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
@end

@implementation RPLegacyService

- (RPLegacyService)init
{
  v5.receiver = self;
  v5.super_class = RPLegacyService;
  v2 = [(RPLegacyService *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    *&v3->_tcpSockV4 = -1;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [RPLegacyDeviceDiscovery dealloc];
    [(RPLegacyService *)v3 _cleanup];
  }

  else
  {
    [(RPLegacyService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = RPLegacyService;
    [(RPLegacyService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  requestMap = self->_requestMap;
  self->_requestMap = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  sessionEndedHandler = self->_sessionEndedHandler;
  self->_sessionEndedHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPLegacyService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v9 = a3;
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacyService _activateWithCompletion:];
  }

  if (self->_invalidateCalled)
  {
    goto LABEL_14;
  }

  if (self->_activateCalled)
  {
    goto LABEL_14;
  }

  serviceType = self->_serviceType;
  if (!serviceType)
  {
    goto LABEL_14;
  }

  self->_activateCalled = 1;
  if (*[(NSString *)serviceType UTF8String]== 95)
  {
    if (![(RPLegacyService *)self _tcpStart]&& ![(RPLegacyService *)self _bonjourUpdateService])
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (gLogCategory_RPLegacySupport <= 90)
  {
    if (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize())
    {
      [RPLegacyService _activateWithCompletion:?];
    }

LABEL_14:
    if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyService _activateWithCompletion:];
    }
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    v6 = RPErrorF();
    errorHandler[2](errorHandler, v6);
  }

LABEL_20:
  v7 = v9;
  if (v9)
  {
    v8 = RPErrorF();
    (*(v9 + 2))(v9, v8);

    v7 = v9;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPLegacyService_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyService _invalidate];
    }

    if (self->_bonjourAdvertiser)
    {
      BonjourAdvertiserStop();
    }

    tcpSockV4 = self->_tcpSockV4;
    if ((tcpSockV4 & 0x80000000) == 0)
    {
      if (close(tcpSockV4) && *__error())
      {
        __error();
      }

      self->_tcpSockV4 = -1;
    }

    tcpSockV6 = self->_tcpSockV6;
    if ((tcpSockV6 & 0x80000000) == 0)
    {
      if (close(tcpSockV6) && *__error())
      {
        __error();
      }

      self->_tcpSockV6 = -1;
    }

    [(RPLegacyService *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacyService _invalidated];
    }

    if (!self->_bonjourAdvertiser)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      [(RPLegacyService *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacyService _invalidated];
      }
    }
  }
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__RPLegacyService_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __53__RPLegacyService_registerRequestID_options_handler___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v10[0] = @"handler";
  v5 = _Block_copy(*(a1 + 56));
  v6 = v5;
  v10[1] = @"options";
  v7 = *(a1 + 48);
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v11[0] = v5;
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [*(*(a1 + 32) + 16) setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v9 = *MEMORY[0x1E69E9840];
}

- (int)_bonjourUpdateService
{
  p_bonjourAdvertiser = &self->_bonjourAdvertiser;
  if (self->_bonjourAdvertiser)
  {
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [(RPLegacyService *)self _bonjourUpdateService];
    }

    v4 = [(RPLegacyService *)self _bonjourUpdateTXT];
    if (!v4)
    {
      v5 = *p_bonjourAdvertiser;
      v6 = BonjourAdvertiserUpdate();
      goto LABEL_7;
    }
  }

  else
  {
    if (gLogCategory_RPLegacySupport <= 30)
    {
      if (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize())
      {
        [(RPLegacyService *)self _bonjourUpdateService];
      }

      if (*p_bonjourAdvertiser)
      {
        BonjourAdvertiserStop();
        CFRelease(*p_bonjourAdvertiser);
        *p_bonjourAdvertiser = 0;
      }
    }

    v4 = BonjourAdvertiserCreate();
    if (!v4)
    {
      bonjourAdvertiser = self->_bonjourAdvertiser;
      dispatchQueue = self->_dispatchQueue;
      BonjourAdvertiserSetDispatchQueue();
      v10 = self->_bonjourAdvertiser;
      listenerPort = self->_listenerPort;
      BonjourAdvertiserSetPort();
      v12 = self->_bonjourAdvertiser;
      [(NSString *)self->_serviceType UTF8String];
      BonjourAdvertiserSetServiceType();
      v4 = [(RPLegacyService *)self _bonjourUpdateTXT];
      if (!v4)
      {
        v14 = *p_bonjourAdvertiser;
        v6 = BonjourAdvertiserStart();
LABEL_7:
        v7 = v6;
        if (!v6)
        {
          return v7;
        }

        goto LABEL_17;
      }
    }
  }

  v7 = v4;
LABEL_17:
  if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacyService _bonjourUpdateService];
  }

  return v7;
}

- (int)_bonjourUpdateTXT
{
  v35 = *MEMORY[0x1E69E9840];
  txtRecord = 0uLL;
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_txtDictionary;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *v28;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      v9 = [(NSDictionary *)self->_txtDictionary objectForKeyedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(RPLegacyService *)v8 _bonjourUpdateTXT];
        goto LABEL_34;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 UTF8String];
        v11 = strlen(v10);
        if (v11 < 0x100)
        {
          v12 = v11;
          goto LABEL_12;
        }

        [(RPLegacyService *)v8 _bonjourUpdateTXT];
LABEL_34:
        v16 = value[0];
        v17 = &unk_1EB97A000;
LABEL_35:

        goto LABEL_38;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(RPLegacyService *)v9 _bonjourUpdateTXT];
        goto LABEL_34;
      }

      v10 = 0;
      v12 = 0;
LABEL_12:
      v13 = TXTRecordSetValue(&txtRecord, [v8 UTF8String], v12, v10);
      if (v13)
      {
        v16 = v13;
        v17 = &unk_1EB97A000;
        if (gLogCategory_RPLegacySupport <= 90 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_35;
      }
    }

    v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (!self->_deviceActionType)
  {
    goto LABEL_20;
  }

  deviceActionType = self->_deviceActionType;
  v14 = SNPrintF();
  if (v14 > 255)
  {
    v16 = -6743;
LABEL_19:
    v17 = &unk_1EB97A000;
    goto LABEL_38;
  }

  v15 = TXTRecordSetValue(&txtRecord, "rpFl", v14, value);
  if (v15)
  {
    v16 = v15;
    goto LABEL_19;
  }

LABEL_20:
  v17 = &unk_1EB97A000;
  if (!self->_needsSetup)
  {
    goto LABEL_24;
  }

  v18 = SNPrintF();
  if (v18 > 255)
  {
    v16 = -6743;
    goto LABEL_38;
  }

  v19 = TXTRecordSetValue(&txtRecord, "rpDA", v18, value);
  if (v19)
  {
    v16 = v19;
    goto LABEL_38;
  }

LABEL_24:
  if (!self->_bonjourAdvertiser)
  {
    v16 = -6762;
    goto LABEL_38;
  }

  TXTRecordGetBytesPtr(&txtRecord);
  TXTRecordGetLength(&txtRecord);
  if (gLogCategory_RPLegacySupport <= 20 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    serviceType = self->_serviceType;
    LogPrintF();
  }

  bonjourAdvertiser = self->_bonjourAdvertiser;
  v16 = BonjourAdvertiserSetTXTRecord();
  if (v16)
  {
LABEL_38:
    v21 = v17[852];
    if (v21 <= 60 && (v21 != -1 || _LogCategory_Initialize()))
    {
      v26 = self->_serviceType;
      LogPrintF();
    }
  }

  TXTRecordDeallocate(&txtRecord);
  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (int)_tcpStart
{
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyService *)self _tcpStart];
  }

  if ((self->_tcpSockV4 & 0x80000000) == 0 || (self->_tcpSockV6 & 0x80000000) == 0)
  {
    v3 = -6721;
    goto LABEL_7;
  }

  v3 = ServerSocketPairOpen();
  if (v3)
  {
LABEL_7:
    if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      serviceType = self->_serviceType;
      LogPrintF();
    }

    return v3;
  }

  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [(RPLegacyService *)self _tcpStart];
  }

  return 0;
}

- (uint64_t)_bonjourUpdateService
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  return LogPrintF();
}

- (void)_bonjourUpdateTXT
{
  if (gLogCategory_RPLegacySupport <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v3 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  *a2 = -6743;
}

- (uint64_t)_tcpStart
{
  v3 = *(a1 + 72);
  v4 = *a2;
  return LogPrintF();
}

@end