@interface SFSession
- (BOOL)_appleIDAddProof:(id)a3 error:(id *)a4;
- (BOOL)_sessionReceivedRegisteredRequestID:(id)a3 flags:(unsigned int)a4 xidKey:(id)a5 xidValue:(id)a6;
- (BOOL)pairingContainsACL:(id)a3;
- (SFSession)init;
- (SFSession)initWithCoder:(id)a3;
- (id)_appleIDVerifyProof:(id)a3 error:(id *)a4;
- (id)description;
- (id)pairingDeriveKeyForIdentifier:(id)a3 keyLength:(unint64_t)a4;
- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6;
- (void)_activateWithCompletion:(id)a3;
- (void)_activated;
- (void)_activatedIfReady:(id)a3;
- (void)_cleanup;
- (void)_deregisterRequestID:(id)a3;
- (void)_ensureXPCStarted;
- (void)_fetchInfo;
- (void)_hearbeatTimer;
- (void)_interrupted;
- (void)_invalidated;
- (void)_pairSetup:(id)a3 start:(BOOL)a4;
- (void)_pairSetupTryPIN:(id)a3;
- (void)_pairSetupWithFlags:(unsigned int)a3 completion:(id)a4 isServer:(BOOL)a5;
- (void)_pairVerify:(id)a3 start:(BOOL)a4;
- (void)_pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4;
- (void)_registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_sendEncryptedObject:(id)a3;
- (void)_sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6;
- (void)_serviceInitiatedPairSetup:(id)a3;
- (void)_sessionReceivedEncryptedData:(id)a3 type:(unsigned __int8)a4;
- (void)_sessionReceivedStartAck:(id)a3;
- (void)_sessionReceivedUnencryptedData:(id)a3 type:(unsigned __int8)a4;
- (void)_setupMessageSession;
- (void)_setupTouchRemote;
- (void)_startTimeoutIfNeeded;
- (void)_tearDownMessageSession;
- (void)_tearDownTouchRemote;
- (void)_timeoutTimerFired;
- (void)activateWithCompletion:(id)a3;
- (void)appleIDAddProof:(id)a3 dispatchQueue:(id)a4 completion:(id)a5;
- (void)appleIDVerifyProof:(id)a3 dispatchQueue:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)deregisterRequestID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)a3;
- (void)pairSetupWithFlags:(unsigned int)a3 completion:(id)a4 isServer:(BOOL)a5;
- (void)pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4;
- (void)registerForExternalIO:(id)a3;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)sendEvent:(id)a3;
- (void)sendExternalIO:(id)a3;
- (void)sendFrameType:(unsigned __int8)a3 data:(id)a4;
- (void)sendFrameType:(unsigned __int8)a3 object:(id)a4;
- (void)sendRequest:(id)a3;
- (void)sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6;
- (void)sendRequestWithFlags:(unsigned int)a3 object:(id)a4 responseHandler:(id)a5;
- (void)sendResponse:(id)a3;
- (void)sendWithFlags:(unsigned int)a3 object:(id)a4;
- (void)sessionBluetoothStateChanged:(int64_t)a3;
- (void)sessionError:(id)a3;
- (void)sessionReceivedEvent:(id)a3;
- (void)sessionReceivedFragmentData:(id)a3 last:(BOOL)a4;
- (void)sessionReceivedRequest:(id)a3;
- (void)sessionReceivedResponse:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation SFSession

- (void)registerForExternalIO:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SFSession_CNJ__registerForExternalIO___block_invoke;
  v6[3] = &unk_1E788B4F8;
  v7 = v4;
  v5 = v4;
  [(SFSession *)self registerRequestID:@"_cnjExtIO" options:0 handler:v6];
}

void __40__SFSession_CNJ__registerForExternalIO___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a4;
  v6 = [a3 objectForKeyedSubscript:@"d"];
  if (v6)
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      __40__SFSession_CNJ__registerForExternalIO___block_invoke_cold_1(v6);
    }

    [*(a1 + 32) receivedData:v6];
    (*(v8 + 2))(v8, 0, 0, MEMORY[0x1E695E0F8]);
  }

  else
  {
    v7 = NSErrorWithOSStatusF();
    if (gLogCategory_SFDeviceOperationCNJ <= 90 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      __40__SFSession_CNJ__registerForExternalIO___block_invoke_cold_2();
    }

    (*(v8 + 2))(v8, v7, 0, MEMORY[0x1E695E0F8]);
  }
}

- (void)sendExternalIO:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFSession(CNJ) sendExternalIO:v4];
  }

  v7 = @"d";
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(SFSession *)self sendRequestID:@"_cnjExtIO" options:0 request:v5 responseHandler:&__block_literal_global_52];

  v6 = *MEMORY[0x1E69E9840];
}

void __33__SFSession_CNJ__sendExternalIO___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (SFSession)init
{
  v7.receiver = self;
  v7.super_class = SFSession;
  v2 = [(SFSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_ucatCore = &gLogCategory_SFSessionCore;
    v3->_ucatCrypto = &gLogCategory_SFSessionCrypto;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v9 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"ident"];
    v4 = v9;
  }

  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [v9 encodeObject:peerDevice forKey:@"pd"];
    v4 = v9;
  }

  if (self->_serviceType)
  {
    [v9 encodeInteger:? forKey:?];
    v4 = v9;
  }

  serviceUUID = self->_serviceUUID;
  if (serviceUUID)
  {
    [v9 encodeObject:serviceUUID forKey:@"sid"];
    v4 = v9;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    [v9 encodeInteger:sessionFlags forKey:@"seFl"];
    v4 = v9;
  }
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v5 = [SFProximityClient dealloc];
    [(SFSession *)v5 _cleanup];
  }

  else
  {
    [(SFSession *)self _cleanup];
    ucatCore = self->_ucatCore;
    if (ucatCore && (ucatCore->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucatCore = 0;
    }

    ucatCrypto = self->_ucatCrypto;
    if (ucatCrypto)
    {
      if ((ucatCrypto->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
        self->_ucatCrypto = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = SFSession;
    [(SFSession *)&v7 dealloc];
  }
}

- (void)_cleanup
{
  encryptionReadAEAD = self->_encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->_encryptionReadAEAD = 0;
  }

  encryptionWriteAEAD = self->_encryptionWriteAEAD;
  if (encryptionWriteAEAD)
  {
    CFRelease(encryptionWriteAEAD);
    self->_encryptionWriteAEAD = 0;
  }

  pairSetupCompletion = self->_pairSetupCompletion;
  self->_pairSetupCompletion = 0;

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  pairVerifyCompletion = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  eventMessageHandler = self->_eventMessageHandler;
  self->_eventMessageHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  receivedFrameHandler = self->_receivedFrameHandler;
  self->_receivedFrameHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  requestMessageHandler = self->_requestMessageHandler;
  self->_requestMessageHandler = 0;

  responseMessageInternalHandler = self->_responseMessageInternalHandler;
  self->_responseMessageInternalHandler = 0;

  sendFrameHandler = self->_sendFrameHandler;
  self->_sendFrameHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  transaction = self->_transaction;
  self->_transaction = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (id)description
{
  v19[1] = 0;
  NSAppendPrintF();
  v3 = 0;
  serviceType = self->_serviceType;
  if (self->_serviceType)
  {
    v19[0] = v3;
    identifier = SFNearbyBLEServiceTypeToString_0(serviceType);
    v5 = v19;
  }

  else
  {
    serviceIdentifier = self->_serviceIdentifier;
    if (!serviceIdentifier)
    {
      goto LABEL_6;
    }

    v18 = v3;
    identifier = serviceIdentifier;
    v5 = &v18;
  }

  NSAppendPrintF();
  v7 = *v5;

  v3 = v7;
LABEL_6:
  if (self->_invalidateCalled)
  {
    NSAppendPrintF();
    v8 = v3;

    v3 = v8;
  }

  if (self->_identifier)
  {
    identifier = self->_identifier;
    NSAppendPrintF();
    v9 = v3;

    v3 = v9;
  }

  if (self->_peerDevice)
  {
    identifier = self->_peerDevice;
    NSAppendPrintF();
    v10 = v3;

    v3 = v10;
  }

  if (self->_sessionFlags)
  {
    identifier = self->_sessionFlags;
    v17 = &unk_1A9990230;
    NSAppendPrintF();
    v11 = v3;

    v3 = v11;
  }

  if ([(NSMutableDictionary *)self->_requestHandlers count:identifier])
  {
    v16 = [(NSMutableDictionary *)self->_requestHandlers count];
    NSAppendPrintF();
    v12 = v3;

    v3 = v12;
  }

  if ([(NSMutableDictionary *)self->_requestMap count])
  {
    [(NSMutableDictionary *)self->_requestMap count];
    NSAppendPrintF();
    v13 = v3;

    v3 = v13;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SFSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v40 = 0;
  RandomBytes();
  v8 = self->_serviceIdentifier;
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v35 = v8;
      sessionID = self->_sessionID;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    v26 = 4294960572;
  }

  else
  {
    self->_activateCalled = 1;
    if (v8)
    {
      serviceType = self->_serviceType;
      if (!self->_serviceType)
      {
        serviceType = SFServiceIdentifierToType(v8);
        self->_serviceType = serviceType;
      }

      if (self->_serviceUUID)
      {
        goto LABEL_39;
      }

      v11 = SFServiceTypeToUUID(serviceType);
      serviceUUID = self->_serviceUUID;
      self->_serviceUUID = v11;

      if (self->_serviceUUID || (SFServiceIdentifierToUUID(v8, &v40), v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_serviceUUID, self->_serviceUUID = v13, v14, self->_serviceUUID))
      {
LABEL_39:
        if (!self->_requestQueue)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          requestQueue = self->_requestQueue;
          self->_requestQueue = v15;
        }

        if (!self->_identifier)
        {
          v17 = [MEMORY[0x1E696AFB0] UUID];
          identifier = self->_identifier;
          self->_identifier = v17;
        }

        if (!self->_peer)
        {
          v19 = [(SFDevice *)self->_peerDevice identifier];
          peer = self->_peer;
          self->_peer = v19;
        }

        [(SFSession *)self _ensureXPCStarted:v35];
        [(SFSession *)self _fetchInfo];
        v21 = _Block_copy(v6);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = v21;

        self->_activateInProgress = 1;
        xpcCnx = self->_xpcCnx;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __37__SFSession__activateWithCompletion___block_invoke;
        v38[3] = &unk_1E788BF88;
        v38[4] = self;
        v39 = v6;
        v24 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v38];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __37__SFSession__activateWithCompletion___block_invoke_2;
        v37[3] = &unk_1E788B238;
        v37[4] = self;
        [v24 sessionActivate:self completion:v37];

        v40 = 0;
        goto LABEL_19;
      }

      v26 = 4294960588;
    }

    else
    {
      v26 = 4294960551;
    }
  }

  v40 = v26;
  v27 = self->_ucatCore->var0;
  if (v27 <= 60)
  {
    if (v27 != -1)
    {
LABEL_25:
      v35 = v26;
      LogPrintF();
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v34 = self->_ucatCore;
      v26 = v40;
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v6)
  {
    v28 = v40;
    if (v40)
    {
      v29 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v30;
      v31 = @"?";
      if (v30)
      {
        v31 = v30;
      }

      v43[0] = v31;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:{1, v35, sessionID}];
      v32 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:v28 userInfo:v4];
    }

    else
    {
      v32 = 0;
    }

    (*(v6 + 2))(v6, v32);
    if (v28)
    {
    }
  }

LABEL_19:

  os_activity_scope_leave(&state);
  v25 = *MEMORY[0x1E69E9840];
}

void __37__SFSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  v9 = v3;
  if (v3)
  {
    v4 = **(*(a1 + 32) + 160);
    if (v4 <= 60)
    {
      if (v4 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v8 = *(*(a1 + 32) + 160);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v9);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = 0;
}

- (void)_activated
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
  {
    goto LABEL_32;
  }

  self->_activateCompleted = 1;
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      v23 = SFNearbyBLEServiceTypeToString_0(self->_serviceType);
      LogPrintF();
      goto LABEL_6;
    }

    ucatCore = self->_ucatCore;
    if (_LogCategory_Initialize())
    {
      v18 = self->_ucatCore;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (self->_serviceType)
  {
    [(SFSession *)self _setupMessageSession];
    if (self->_touchRemoteEnabled)
    {
      [(SFSession *)self _setupTouchRemote];
    }

    [(SFSession *)self _startTimeoutIfNeeded];
    if (!self->_transaction)
    {
      v5 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v5;

      if (!self->_transaction)
      {
        v7 = self->_ucatCore->var0;
        if (v7 <= 60)
        {
          if (v7 != -1)
          {
LABEL_13:
            LogPrintF();
            goto LABEL_15;
          }

          if (_LogCategory_Initialize())
          {
            v22 = self->_ucatCore;
            goto LABEL_13;
          }
        }
      }
    }

LABEL_15:
    v25[0] = @"sid";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionID];
    v25[1] = @"shv";
    v26[0] = v8;
    v26[1] = @"1945.10.6";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v10 = self->_ucatCore->var0;
    if (v10 > 30)
    {
      goto LABEL_19;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_19:
        DataMutable = OPACKEncoderCreateDataMutable();
        if (DataMutable)
        {
          [(SFSession *)self sendFrameType:23 data:DataMutable];
          goto LABEL_25;
        }

        v12 = self->_ucatCore->var0;
        if (v12 <= 60)
        {
          if (v12 != -1)
          {
LABEL_23:
            LogPrintF();
            goto LABEL_25;
          }

          if (_LogCategory_Initialize())
          {
            v20 = self->_ucatCore;
            goto LABEL_23;
          }
        }

LABEL_25:
        if (self->_heartbeatTimer)
        {
LABEL_31:

          goto LABEL_32;
        }

        RandomBytes();
        v13 = self->_ucatCore->var0;
        if (v13 <= 30)
        {
          if (v13 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v21 = self->_ucatCore;
          }

          LogPrintF();
        }

LABEL_30:
        self->_heartbeatLastTicks = mach_absolute_time();
        v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        heartbeatTimer = self->_heartbeatTimer;
        self->_heartbeatTimer = v14;

        v16 = self->_heartbeatTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __23__SFSession__activated__block_invoke;
        handler[3] = &unk_1E788B198;
        handler[4] = self;
        dispatch_source_set_event_handler(v16, handler);
        SFDispatchTimerSet(self->_heartbeatTimer, 3.0, 3.0, -4.0);
        dispatch_resume(self->_heartbeatTimer);
        goto LABEL_31;
      }

      v19 = self->_ucatCore;
    }

    LogPrintF();
    goto LABEL_19;
  }

LABEL_32:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    testListenerEndpoint = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = (testListenerEndpoint ? [v4 initWithListenerEndpoint:self->_testListenerEndpoint] : objc_msgSend(v4, "initWithMachServiceName:options:", @"com.apple.SharingServices", 0));
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__SFSession__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E788B198;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__SFSession__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEFC0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
    var0 = self->_ucatCore->var0;
    if (var0 <= 20)
    {
      if (var0 != -1)
      {
LABEL_7:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_7;
      }
    }
  }
}

- (void)_fetchInfo
{
  if ((self->_sessionFlags & 4) == 0)
  {
    self->_appleIDContactCompleted = 1;
    return;
  }

  if (!self->_appleIDContactInfo)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_8:
    v4 = objc_alloc_init(SFAppleIDClient);
    [(SFAppleIDClient *)v4 setDispatchQueue:self->_dispatchQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __23__SFSession__fetchInfo__block_invoke;
    v7[3] = &unk_1E7890C88;
    v7[4] = self;
    v8 = v4;
    v5 = v4;
    [(SFAppleIDClient *)v5 myAccountWithCompletion:v7];
  }
}

void __23__SFSession__fetchInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  *(*(a1 + 32) + 200) = 1;
  v8 = **(*(a1 + 32) + 160);
  if (v8 <= 30)
  {
    if (v8 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v17 = *(*v7 + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v6)
  {
    __23__SFSession__fetchInfo__block_invoke_cold_1(a1 + 32);
  }

  else if (v5)
  {
    v9 = [v5 contactInfo];
    v10 = *(*v7 + 192);
    *(*v7 + 192) = v9;

    if (!*(*v7 + 192))
    {
      __23__SFSession__fetchInfo__block_invoke_cold_2(*v7);
    }
  }

  else
  {
    __23__SFSession__fetchInfo__block_invoke_cold_3(a1 + 32);
  }

  [*(a1 + 40) invalidate];
  [*(a1 + 32) _activatedIfReady:0];
  v18[0] = @"errDomain";
  v11 = [v6 domain];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v18[1] = @"errCode";
  v19[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
  v19[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  SFMetricsLog(@"com.apple.sharing.sessionFetchInfo", v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_hearbeatTimer
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!self->_heartbeatTimer)
  {
    goto LABEL_18;
  }

  mach_absolute_time();
  heartbeatLastTicks = self->_heartbeatLastTicks;
  UpTicksToSecondsF();
  v5 = v4;
  if (v4 >= 300.0)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        ucatCore = self->_ucatCore;
      }

      v23 = v5;
      LogPrintF();
    }

LABEL_15:
    self->_heartbeatWaiting = 0;
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v28 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v29[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:{1, *&v23}];
    v15 = [v9 errorWithDomain:v10 code:-71160 userInfo:v14];
    [(SFSession *)self sessionError:v15];

    goto LABEL_18;
  }

  if (self->_heartbeatWaiting)
  {
    v6 = self->_ucatCore->var0;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v17 = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_18:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!self->_activateCompleted)
  {
    goto LABEL_18;
  }

  v8 = self->_ucatCore->var0;
  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v22 = self->_ucatCore;
    }

    v25 = 4;
    v26 = 4;
    p_heartbeatID = &self->_heartbeatID;
    v23 = v5;
    LogPrintF();
  }

LABEL_22:
  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_heartbeatID length:{4, *&v23, p_heartbeatID, v25, v26}];
  ++self->_heartbeatID;
  self->_heartbeatWaiting = 1;
  if (self->_heartbeatV2)
  {
    v19 = 21;
  }

  else
  {
    v19 = 20;
  }

  v27 = v18;
  [(SFSession *)self sendFrameType:v19 data:?];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucatCore->var0;
  if (var0 > 50)
  {
    goto LABEL_5;
  }

  if (var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->_ucatCore;
LABEL_3:
    LogPrintF();
  }

LABEL_5:
  *&self->_activateInProgress = 0;
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_activateCalled)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v5, &state);
    v6 = self->_ucatCore->var0;
    if (v6 <= 50)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v10 = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_12:
    [(SFSession *)self _ensureXPCStarted];
    self->_activateInProgress = 1;
    xpcCnx = self->_xpcCnx;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __25__SFSession__interrupted__block_invoke;
    v12[3] = &unk_1E788B238;
    v12[4] = self;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __25__SFSession__interrupted__block_invoke_2;
    v11[3] = &unk_1E788B238;
    v11[4] = self;
    [v8 sessionActivate:self completion:v11];

    os_activity_scope_leave(&state);
  }
}

void __25__SFSession__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  if (v3)
  {
    v4 = **(*(a1 + 32) + 160);
    if (v4 <= 60)
    {
      v7 = v3;
      if (v4 != -1)
      {
LABEL_4:
        LogPrintF();
        v3 = v7;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      v3 = v7;
      if (v5)
      {
        v6 = *(*(a1 + 32) + 160);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

void __25__SFSession__interrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 177) = 0;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v8 = 0;
    [v4 _activated];
    goto LABEL_6;
  }

  v5 = *v4[20];
  if (v5 > 60)
  {
    goto LABEL_7;
  }

  v8 = v3;
  if (v5 != -1)
  {
LABEL_4:
    LogPrintF();
LABEL_6:
    v3 = v8;
    goto LABEL_7;
  }

  v6 = _LogCategory_Initialize();
  v3 = v8;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 160);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFSession_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 201))
  {
    return;
  }

  *(v1 + 201) = 1;
  v3 = *(a1 + 32);
  v4 = **(v3 + 160);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_6;
      }

      v18 = *(v3 + 160);
    }

    LogPrintF();
    v3 = *(a1 + 32);
  }

LABEL_6:
  v6 = *(v3 + 96);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = 0;
  }

  v10 = *(*(a1 + 32) + 304);
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = *(a1 + 32);
    v13 = *(v12 + 304);
    *(v12 + 304) = 0;
  }

  v14 = *(*(a1 + 32) + 312);
  if (v14)
  {
    [v14 invalidate];
    v15 = *(a1 + 32);
    v16 = *(v15 + 312);
    *(v15 + 312) = 0;
  }

  else
  {
    v17 = *(a1 + 32);

    [v17 _invalidated];
  }
}

- (void)_invalidated
{
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    goto LABEL_32;
  }

  if (!self->_invalidateCalled)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 50)
    {
      if (var0 != -1)
      {
LABEL_5:
        LogPrintF();
        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->_ucatCore;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v5 = heartbeatTimer;
    dispatch_source_cancel(v5);
    v6 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  [(SFSession *)self _tearDownMessageSession];
  [(SFSession *)self _tearDownTouchRemote];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_requestQueue;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v32 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_requestQueue objectForKeyedSubscript:*(*(&v34 + 1) + 8 * v11)];
        v13 = [v12 responseHandler];

        if (v13)
        {
          v14 = [v12 responseHandler];
          v15 = MEMORY[0x1E696ABC0];
          v38 = v10;
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v17 = v16;
          v18 = @"?";
          if (v16)
          {
            v18 = v16;
          }

          v39 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v20 = [v15 errorWithDomain:v32 code:-6723 userInfo:v19];
          (v14)[2](v14, v20, 0);
        }

        [v12 invalidate];

        ++v11;
      }

      while (v8 != v11);
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_requestQueue removeAllObjects];
  requestQueue = self->_requestQueue;
  self->_requestQueue = 0;

  if (self->_pairSetupSession && !self->_pairSetupEnded)
  {
    [(SFSession *)self _pairSetupCompleted:4294960573];
  }

  if (self->_pairVerifySession && !self->_pairVerifyEnded)
  {
    [(SFSession *)self _pairVerifyCompleted:4294960573];
  }

  [(NSMutableDictionary *)self->_requestHandlers removeAllObjects];
  requestHandlers = self->_requestHandlers;
  self->_requestHandlers = 0;

  requestMap = self->_requestMap;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __25__SFSession__invalidated__block_invoke;
  v33[3] = &unk_1E7890CB0;
  v33[4] = self;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v33];
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  v24 = self->_requestMap;
  self->_requestMap = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFSession *)self _cleanup];
  self->_invalidateDone = 1;
  v26 = self->_ucatCore->var0;
  if (v26 <= 30)
  {
    if (v26 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v28 = self->_ucatCore;
    }

    sessionID = self->_sessionID;
    LogPrintF();
  }

LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
}

void __25__SFSession__invalidated__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = **(*(a1 + 32) + 160);
  if (v7 <= 50)
  {
    if (v7 != -1)
    {
LABEL_3:
      v18 = v5;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v17 = *(*(a1 + 32) + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = [v6 objectForKeyedSubscript:{@"_rh", v18}];
  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v19 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v20[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v9 errorWithDomain:v10 code:-6723 userInfo:v14];
    (v8)[2](v8, 0, v15, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
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
  var0 = self->_ucatCore->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_6:
  v8 = objc_alloc_init(MEMORY[0x1E69994C0]);
  messageSessionServer = self->_messageSessionServer;
  self->_messageSessionServer = v8;

  [(CUMessageSessionServer *)self->_messageSessionServer setDispatchQueue:self->_dispatchQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__SFSession__setupMessageSession__block_invoke;
  v17[3] = &unk_1E7890D28;
  v17[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setRegisterRequestHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__SFSession__setupMessageSession__block_invoke_4;
  v16[3] = &unk_1E7890D50;
  v16[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setDeregisterRequestHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__SFSession__setupMessageSession__block_invoke_5;
  v15[3] = &unk_1E7890DA0;
  v15[4] = self;
  [(CUMessageSessionServer *)self->_messageSessionServer setSendRequestHandler:v15];
  [(CUMessageSessionServer *)self->_messageSessionServer activate];
  v10 = [(CUMessageSessionServer *)self->_messageSessionServer templateSession];
  messageSessionTemplate = self->_messageSessionTemplate;
  self->_messageSessionTemplate = v10;

  if (!self->_messageSessionTemplate)
  {
    v12 = self->_ucatCore->var0;
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
        v14 = self->_ucatCore;
        goto LABEL_9;
      }
    }
  }
}

void __33__SFSession__setupMessageSession__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9[27])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__SFSession__setupMessageSession__block_invoke_2;
    v10[3] = &unk_1E7890D00;
    v11 = v7;
    [v9 _registerRequestID:a2 options:a3 handler:v10];
  }
}

void __33__SFSession__setupMessageSession__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__SFSession__setupMessageSession__block_invoke_3;
  v11[3] = &unk_1E7890CD8;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void __33__SFSession__setupMessageSession__block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v8 = a2;
    v9 = a4;
    v10 = a3;
    v12 = [v6 errorWithDomain:v7 code:v8 userInfo:0];
    (*(v5 + 16))(v5);
  }

  else
  {
    v11 = *(v5 + 16);
    v10 = a4;
    v12 = a3;
    v11(v5, 0);
  }
}

void *__33__SFSession__setupMessageSession__block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[27])
  {
    return [result _deregisterRequestID:a2];
  }

  return result;
}

void __33__SFSession__setupMessageSession__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11[27])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__SFSession__setupMessageSession__block_invoke_6;
    v12[3] = &unk_1E7890D78;
    v13 = v9;
    [v11 _sendRequestID:a2 options:a3 request:a4 responseHandler:v12];
  }
}

void __33__SFSession__setupMessageSession__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v8 = a3;
  v7 = NSErrorToOSStatus();
  (*(v5 + 16))(v5, v7, v8, v6);
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

- (void)_setupTouchRemote
{
  var0 = self->_ucatCore->var0;
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
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = objc_alloc_init(SFTRSession);
  sfTRSession = self->_sfTRSession;
  self->_sfTRSession = v4;

  [(SFTRSession *)self->_sfTRSession setDispatchQueue:self->_dispatchQueue];
  [(SFTRSession *)self->_sfTRSession setSession:self];
  [(SFTRSession *)self->_sfTRSession activate];
  v6 = [(SFTRSession *)self->_sfTRSession trSession];
  trSession = self->_trSession;
  self->_trSession = v6;
}

- (void)_tearDownTouchRemote
{
  trSession = self->_trSession;
  self->_trSession = 0;

  [(SFTRSession *)self->_sfTRSession invalidate];
  sfTRSession = self->_sfTRSession;
  self->_sfTRSession = 0;
}

- (void)_startTimeoutIfNeeded
{
  if (self->_timeout > 0.0)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (self->_bluetoothState == 3 && !self->_timeoutFired && !self->_timeoutTimer)
    {
      var0 = self->_ucatCore->var0;
      if (var0 <= 20)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          ucatCore = self->_ucatCore;
          timeout = self->_timeout;
        }

        LogPrintF();
      }

LABEL_9:
      v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v6;

      v8 = self->_timeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __34__SFSession__startTimeoutIfNeeded__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v8, handler);
      SFDispatchTimerSet(self->_timeoutTimer, self->_timeout, 1.0, -4.0);
      dispatch_resume(self->_timeoutTimer);
    }
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucatCore->var0;
  if (var0 <= 20)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
    timeoutHandler = self->_timeoutHandler;
  }

  self->_timeoutHandler = 0;
}

- (BOOL)pairingContainsACL:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_pairVerifySession)
  {
    v6 = PairingSessionCopyPairedPeer();
  }

  else
  {
    pairSetupSession = self->_pairSetupSession;
    if (!pairSetupSession)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [(CUPairingSession *)pairSetupSession pairedPeer];
  }

  v8 = v6;
LABEL_6:
  v9 = [v8 acl];
  Int64 = CFDictionaryGetInt64();

  return Int64 != 0;
}

- (id)pairingDeriveKeyForIdentifier:(id)a3 keyLength:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = strlen(v7);
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a4];
  v10 = v9;
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    if (!-[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](pairSetupSession, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", "IdentifierKeyInfo", 17, v7, v8, a4, [v9 mutableBytes]))
    {
LABEL_3:
      v12 = v10;
      goto LABEL_4;
    }
  }

  else if (self->_pairVerifySession)
  {
    [v9 mutableBytes];
    if (!PairingSessionDeriveKey())
    {
      goto LABEL_3;
    }
  }

  var0 = self->_ucatCore->var0;
  if (var0 <= 60)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_13:
  v12 = 0;
LABEL_4:

  return v12;
}

- (void)_serviceInitiatedPairSetup:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFSession__serviceInitiatedPairSetup___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __40__SFSession__serviceInitiatedPairSetup___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = _Block_copy(*(*(a1 + 32) + 472));
  if (v3)
  {
    v4 = *(a1 + 40);
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v6 = *(a1 + 40);
    *(*(a1 + 32) + 256) = CFDictionaryGetInt64Ranged();
    v7 = *(a1 + 32);
    v8 = *(v7 + 140);
    if ((v8 & 0x800) != 0)
    {
      v9 = 20;
    }

    else
    {
      v9 = Int64Ranged & 0x18 | 4u;
    }

    v10 = **(v7 + 160);
    if (v10 > 30)
    {
      goto LABEL_9;
    }

    if (v10 == -1)
    {
      v11 = *(v7 + 160);
      v12 = _LogCategory_Initialize();
      v7 = *v2;
      if (!v12)
      {
        goto LABEL_9;
      }

      v14 = *(v7 + 160);
      v8 = *(v7 + 140);
    }

    v19 = v9;
    v20 = &unk_1A9990305;
    v17 = v8;
    v18 = &unk_1A9990230;
    v16 = *(v7 + 256);
    LogPrintF();
    v7 = *v2;
LABEL_9:
    [v7 _pairSetupWithFlags:v9 completion:v3 isServer:{1, v16, v17, v18, v19, v20}];
    [*(a1 + 32) _pairSetup:*(a1 + 40) start:1];
    goto LABEL_14;
  }

  v13 = **(*v2 + 160);
  if (v13 <= 60)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v15 = *(*v2 + 160);
    }

    LogPrintF();
  }

LABEL_14:
}

- (void)pairSetupWithFlags:(unsigned int)a3 completion:(id)a4 isServer:(BOOL)a5
{
  v8 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SFSession_pairSetupWithFlags_completion_isServer___block_invoke;
  block[3] = &unk_1E7890DC8;
  v13 = a3;
  block[4] = self;
  v12 = v8;
  v14 = a5;
  v10 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairSetupWithFlags:(unsigned int)a3 completion:(id)a4 isServer:(BOOL)a5
{
  v5 = a5;
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!v5)
  {
    RandomBytes();
  }

  var0 = self->_ucatCore->var0;
  if (!self->_pairSetupCompletion)
  {
    if (var0 > 30)
    {
      goto LABEL_16;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucatCore = self->_ucatCore;
    }

    pairSetupXID = self->_pairSetupXID;
    LogPrintF();
    goto LABEL_16;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v31 = self->_ucatCore;
    }

    pairSetupXID = self->_pairSetupXID;
    LogPrintF();
  }

LABEL_11:
  pairSetupCompletion = self->_pairSetupCompletion;
  if ((a3 & 0x80000) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v37 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v14 = v13;
    v15 = @"?";
    if (v13)
    {
      v15 = v13;
    }

    v38[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:{1, pairSetupXID}];
    v17 = [v11 errorWithDomain:v12 code:-6723 userInfo:v16];
    pairSetupCompletion[2](pairSetupCompletion, v17);

    pairSetupCompletion = self->_pairSetupCompletion;
  }

  self->_pairSetupCompletion = 0;

LABEL_16:
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0, pairSetupXID];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  self->_pairSetupEnded = 0;
  self->_pairSetupFlags = a3 | 4;
  v19 = objc_alloc_init(MEMORY[0x1E69994F8]);
  v20 = self->_pairSetupSession;
  self->_pairSetupSession = v19;

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_ucatCrypto->var4];
  [(CUPairingSession *)self->_pairSetupSession setLabel:v21];

  [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
  if (v5)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  [(CUPairingSession *)self->_pairSetupSession setSessionType:v22];
  if (self->_promptForPINHandler)
  {
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:?];
  }

  if (self->_showPINHandlerEx)
  {
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:?];
  }

  if (self->_hidePINHandler)
  {
    [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:?];
  }

  if (self->_pairSetupACL)
  {
    [(CUPairingSession *)self->_pairSetupSession setAcl:?];
  }

  v23 = self->_fixedPIN;
  if (![(NSString *)v23 length]&& IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v24 = CFPrefs_CopyTypedValue();

    v23 = v24;
  }

  if ([(NSString *)v23 length])
  {
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v23];
  }

  forcedPasscode = self->_forcedPasscode;
  if (forcedPasscode && self->_isCLIMode && [(NSString *)forcedPasscode length]&& IsAppleInternalBuild())
  {
    v26 = self->_ucatCore->var0;
    if (v26 <= 30)
    {
      if (v26 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v32 = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_42:
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:self->_forcedPasscode];
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke;
  v35[3] = &unk_1E7890598;
  v35[4] = self;
  v36 = a3;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v35];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke_2;
  v34[3] = &unk_1E788B238;
  v34[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v34];
  v28 = _Block_copy(v8);
  v29 = self->_pairSetupCompletion;
  self->_pairSetupCompletion = v28;

  [(SFSession *)self _pairSetup:0 start:1];
  v30 = *MEMORY[0x1E69E9840];
}

void __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13[0] = @"pd";
  v13[1] = @"pxid";
  v14[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + 256)];
  v14[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (a2)
  {
    v9 = [v7 mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
    [v9 setObject:v10 forKeyedSubscript:@"pf"];

    v11 = [v9 copy];
    v8 = 16;
    v7 = v11;
  }

  else
  {
    v8 = 17;
  }

  [*(a1 + 32) sendFrameType:v8 object:v7];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __53__SFSession__pairSetupWithFlags_completion_isServer___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorToOSStatus();

  return [v1 _pairSetupCompleted:v2];
}

- (void)_pairSetup:(id)a3 start:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  Int64Ranged = 0;
  if (!self->_pairSetupSession)
  {
    v10 = 0;
    goto LABEL_15;
  }

  p_ucatCore = &self->_ucatCore;
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      pairSetupXID = self->_pairSetupXID;
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v12 = *p_ucatCore;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (v4)
  {
    [(CUPairingSession *)self->_pairSetupSession activate];
  }

  if (!v6)
  {
    v10 = 0;
    goto LABEL_14;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    [SFSession _pairSetup:? start:?];
LABEL_25:
    v10 = v17;
    goto LABEL_14;
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    [SFSession _pairSetup:? start:?];
    goto LABEL_25;
  }

  v10 = v9;
  if (self->_pairSetupXID != CFDictionaryGetInt64Ranged())
  {
    v11 = (*p_ucatCore)->var0;
    if (v11 <= 60)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        ucatCore = self->_ucatCore;
        v14 = self->_pairSetupXID;
      }

      LogPrintF();
    }

    goto LABEL_16;
  }

  [(CUPairingSession *)self->_pairSetupSession receivedData:v10, pairSetupXID];
LABEL_14:
  if (Int64Ranged)
  {
LABEL_15:
    [(SFSession *)self _pairSetupCompleted:pairSetupXID];
  }

LABEL_16:
}

- (void)pairSetupTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__SFSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairSetupTryPIN:(id)a3
{
  v4 = a3;
  var0 = self->_ucatCore->var0;
  v9 = v4;
  if (var0 > 30)
  {
    goto LABEL_5;
  }

  if (var0 != -1)
  {
    goto LABEL_3;
  }

  v6 = _LogCategory_Initialize();
  v4 = v9;
  if (v6)
  {
    ucatCore = self->_ucatCore;
LABEL_3:
    IsAppleInternalBuild();
    LogPrintF();
    v4 = v9;
  }

LABEL_5:
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    [(CUPairingSession *)pairSetupSession tryPIN:v4];
  }

  else
  {
    [(SFSession *)&self->_ucatCore _pairSetupTryPIN:?];
  }
}

- (void)pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFSession_pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E788EAE0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  var0 = self->_ucatCore->var0;
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
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = 0x1E696A000;
  v9 = MEMORY[0x1E696A768];
  v10 = 0x1E696A000;
  v11 = MEMORY[0x1E696A578];
  if (!self->_pairVerifyCompletion)
  {
    goto LABEL_14;
  }

  v58 = v6;
  v12 = self->_ucatCore->var0;
  if (v12 <= 30)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v57 = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_10:
  pairVerifyCompletion = self->_pairVerifyCompletion;
  v14 = MEMORY[0x1E696ABC0];
  v15 = v9;
  v16 = *v9;
  v62 = *v11;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"?";
  }

  v63[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v21 = v16;
  v9 = v15;
  v22 = [v14 errorWithDomain:v21 code:-6723 userInfo:v20];
  pairVerifyCompletion[2](pairVerifyCompletion, v22);

  v8 = 0x1E696A000uLL;
  v10 = 0x1E696A000uLL;
  v23 = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  v6 = v58;
LABEL_14:
  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  self->_pairVerifyEnded = 0;
  self->_pairVerifyFlags = a3 | 4;
  v25 = PairingSessionCreate();
  if (v25)
  {
    if (v6)
    {
      v26 = *(v8 + 3008);
      v27 = *v9;
      v28 = v25;
      v60 = *v11;
      v29 = [*(v10 + 3776) stringWithUTF8String:DebugGetErrorString()];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = @"?";
      }

      v61 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v33 = [v26 errorWithDomain:v27 code:v28 userInfo:v32];
      v6[2](v6, v33);
    }
  }

  else
  {
    sessionFlags = self->_sessionFlags;
    if (sessionFlags & 4 | a3 & 0x1000)
    {
      if ((sessionFlags & 8) != 0)
      {
        v35 = 1052672;
      }

      else
      {
        v35 = 4096;
      }

      self->_pairVerifyFlags |= v35 | (sessionFlags << 17) & 0x200000;
      if (self->_myAppleIDInfoClient)
      {
        v36 = self->_pairVerifySession;
        PairingSessionSetMyAppleIDInfoClient();
      }

      else if (self->_myAppleID)
      {
        v37 = self->_pairVerifySession;
        PairingSessionSetMyAppleID();
      }

      if (self->_peerAppleID)
      {
        v38 = self->_pairVerifySession;
        PairingSessionSetPeerAppleID();
      }

      v39 = self->_peerContactIdentifier;
      v40 = v39;
      if (v39)
      {
        v59 = 0;
        v41 = SFNormalizedUserIdentifiersForContactIdentifier(v39, 0, &v59);
        v42 = v41;
        if (v59 == 1)
        {
          v43 = [v41 mutableCopy];
          v44 = [(SFAppleIDContactInfo *)self->_appleIDContactInfo validatedPhoneNumbers];
          v45 = [(SFAppleIDContactInfo *)self->_appleIDContactInfo validatedEmailAddresses];
          if (v44)
          {
            [v43 addObjectsFromArray:v44];
          }

          if (v45)
          {
            [v43 addObjectsFromArray:v45];
          }

          v46 = [v43 copy];

          v42 = v46;
        }

        if ([v42 count])
        {
          v47 = self->_pairVerifySession;
          PairingSessionSetPeerAppleIDs();
        }
      }
    }

    else if ((sessionFlags & 0x440) == 0x40)
    {
      self->_pairVerifyFlags |= 0x4000000u;
    }

    if (self->_pairVerifyACL)
    {
      v48 = self->_pairVerifySession;
      PairingSessionSetACL();
    }

    v49 = self->_pairVerifySession;
    pairVerifyFlags = self->_pairVerifyFlags;
    PairingSessionSetFlags();
    v51 = self->_pairVerifySession;
    ucatCrypto = self->_ucatCrypto;
    PairingSessionSetLogging();
    v53 = _Block_copy(v6);
    v54 = self->_pairVerifyCompletion;
    self->_pairVerifyCompletion = v53;

    [(SFSession *)self _pairVerify:0 start:1];
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_pairVerify:(id)a3 start:(BOOL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Int64Ranged = 0;
  v12 = 0;
  v13 = 0;
  if (!self->_pairVerifySession)
  {
    v7 = 0;
    v10 = -6745;
    goto LABEL_21;
  }

  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_6:
  if (v5)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      [SFSession _pairVerify:? start:?];
      goto LABEL_20;
    }

    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    if (!v7)
    {
      [SFSession _pairVerify:? start:?];
LABEL_20:
      v7 = v15;
LABEL_13:
      if (!Int64Ranged)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
  }

  pairVerifySession = self->_pairVerifySession;
  [v7 bytes];
  [v7 length];
  Int64Ranged = PairingSessionExchange();
  if (Int64Ranged)
  {
    goto LABEL_13;
  }

  v10 = -6762;
LABEL_21:
  Int64Ranged = v10;
LABEL_14:
  [(SFSession *)self _pairVerifyCompleted:?];
LABEL_15:
  if (v13)
  {
    free(v13);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)appleIDAddProof:(id)a3 dispatchQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_queue_create("AppleIDAddProof", 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  [v2 _appleIDAddProof:v3 error:&v13];
  v4 = v13;
  if (v4)
  {
    v5 = **(*(a1 + 32) + 160);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v9 = *(*(a1 + 32) + 160);
      }

      LogPrintF();
    }
  }

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFSession_appleIDAddProof_dispatchQueue_completion___block_invoke_2;
  block[3] = &unk_1E788B318;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v4;
  v12 = v7;
  v8 = v4;
  dispatch_async(v6, block);
}

- (BOOL)_appleIDAddProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SDStatusMonitor *)self->_statusMonitor myMediumHashes];
  if ([v7 length])
  {
    if ([v7 length] <= 8)
    {
      v8 = v6;
      v9 = [v7 mutableCopy];
      [v9 setLength:9];

      v7 = v9;
      v6 = v8;
    }

    v10 = [(SFSession *)self pairingDeriveKeyForIdentifier:@"AppleIDChallenge" keyLength:16];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6999450]);
      v30 = 0;
      v12 = [v11 copyMyCertificateDataAndReturnError:&v30];
      v13 = v30;
      v14 = v13;
      if (v12)
      {
        v27 = v6;
        v29 = v13;
        v15 = [v11 copyMyValidationDataAndReturnError:&v29];
        v16 = v29;

        if (v15)
        {
          v24 = a4;
          v26 = v10;
          v17 = v10;
          v25 = v12;
          v18 = v12;
          v19 = v15;
          v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
          [v20 appendData:v17];
          [v20 appendData:v18];
          [v20 appendData:v19];
          v28 = v16;
          v21 = [v11 signData:v20 error:&v28];
          v14 = v28;

          if (v21)
          {
            v6 = v27;
            [v27 setObject:v18 forKeyedSubscript:{@"cert", v24}];
            [v27 setObject:v7 forKeyedSubscript:@"medHash"];
            [v27 setObject:v21 forKeyedSubscript:@"sig"];
            [v27 setObject:v19 forKeyedSubscript:@"vrec"];
          }

          else
          {
            [SFSession _appleIDAddProof:v24 error:?];
            v6 = v27;
          }

          v12 = v25;
          v10 = v26;
          v22 = v21 != 0;
        }

        else
        {
          if (a4)
          {
            SFNestedErrorF();
            *a4 = v22 = 0;
          }

          else
          {
            v22 = 0;
          }

          v14 = v16;
          v6 = v27;
        }
      }

      else if (a4)
      {
        SFNestedErrorF();
        *a4 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    else if (a4)
    {
      SFErrorF();
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (a4)
  {
    SFErrorF();
    *a4 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)appleIDVerifyProof:(id)a3 dispatchQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_queue_create("AppleIDVerifyProof", 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 _appleIDVerifyProof:v3 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = **(*(a1 + 32) + 160);
    if (v6 <= 90)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v10 = *(*(a1 + 32) + 160);
      }

      LogPrintF();
    }
  }

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFSession_appleIDVerifyProof_dispatchQueue_completion___block_invoke_2;
  block[3] = &unk_1E788C1C0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v12 = v5;
  v13 = v8;
  block[4] = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

- (id)_appleIDVerifyProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  CFDataGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    if (a4)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  statusMonitor = self->_statusMonitor;
  if (!statusMonitor)
  {
    if (a4)
    {
LABEL_24:
      SFErrorF();
      *a4 = v22 = 0;
      goto LABEL_18;
    }

LABEL_39:
    v22 = 0;
    goto LABEL_18;
  }

  v9 = [(SDStatusMonitor *)statusMonitor contactIdentifierForMediumHashes:v7];
  v10 = v9;
  if (v9)
  {
    v30 = 0;
    v11 = SFNormalizedUserIdentifiersForContactIdentifierEx(v9, 0, &v30, 0);
    v27 = v11;
    if (v11)
    {
      v12 = v11;
      CFDataGetTypeID();
      v28 = CFDictionaryGetTypedValue();
      if (v28)
      {
        CFDataGetTypeID();
        v13 = CFDictionaryGetTypedValue();
        if (v13)
        {
          CFDataGetTypeID();
          v14 = CFDictionaryGetTypedValue();
          if (v14)
          {
            v15 = [(SFSession *)self pairingDeriveKeyForIdentifier:@"AppleIDChallenge" keyLength:16];
            if (v15)
            {
              v24 = a4;
              v25 = v10;
              v26 = v7;
              v16 = v28;
              v17 = v14;
              v18 = objc_alloc_init(MEMORY[0x1E695DF88]);
              [v18 appendData:v15];
              [v18 appendData:v16];
              [v18 appendData:v17];
              v19 = objc_alloc_init(MEMORY[0x1E6999450]);
              [v19 setPeerAppleIDs:v12];
              [v19 setPeerCertificateData:v16];
              [v19 setPeerValidationData:v17];
              v29 = 0;
              v20 = [v19 verifyData:v18 signature:v13 error:&v29];
              v21 = v29;
              if (v20)
              {
                v22 = v30;
              }

              else if (v24)
              {
                SFNestedErrorF();
                *v24 = v22 = 0;
              }

              else
              {
                v22 = 0;
              }

              v10 = v25;
              v7 = v26;
            }

            else if (a4)
            {
              SFErrorF();
              *a4 = v22 = 0;
            }

            else
            {
              v22 = 0;
            }
          }

          else if (a4)
          {
            SFErrorF();
            *a4 = v22 = 0;
          }

          else
          {
            v22 = 0;
          }
        }

        else if (a4)
        {
          SFErrorF();
          *a4 = v22 = 0;
        }

        else
        {
          v22 = 0;
        }
      }

      else if (a4)
      {
        SFErrorF();
        *a4 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    else if (a4)
    {
      SFErrorF();
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (a4)
  {
    SFErrorF();
    *a4 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_18:

  return v22;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [v4 setIdentifier:v5];

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__SFSession_sendEvent___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);
}

void __23__SFSession_sendEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendEvent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendEvent:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = **(v2 + 160);
  if (v5 <= 60)
  {
    if (v5 != -1)
    {
LABEL_5:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [v4 setIdentifier:v5];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFSession_sendRequest___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(dispatchQueue, block);
}

void __25__SFSession_sendRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(a1[4] + 312) remoteObjectProxy];
    [v4 sessionSendRequest:a1[5]];

    [*(a1[4] + 288) setObject:a1[5] forKeyedSubscript:a1[6]];
    os_activity_scope_leave(&state);

    return;
  }

  v5 = **(v2 + 160);
  if (v5 <= 60)
  {
    if (v5 != -1)
    {
LABEL_5:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(a1[4] + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__SFSession_sendResponse___block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v10 = v4;
    v7 = v4;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v8 = FatalErrorF();
    __26__SFSession_sendResponse___block_invoke(v8);
  }
}

void __26__SFSession_sendResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendResponse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendResponse:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = **(v2 + 160);
  if (v5 <= 60)
  {
    if (v5 != -1)
    {
LABEL_5:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 160);
      goto LABEL_5;
    }
  }
}

- (void)sendFrameType:(unsigned __int8)a3 data:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFSession_sendFrameType_data___block_invoke;
  block[3] = &unk_1E788F2F0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void __32__SFSession_sendFrameType_data___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7.opaque[0] = 0;
    v7.opaque[1] = 0;
    os_activity_scope_enter(v3, &v7);
    v4 = [*(*(a1 + 32) + 312) remoteObjectProxy];
    [v4 sessionSendFrameType:*(a1 + 48) data:*(a1 + 40)];

    os_activity_scope_leave(&v7);
    return;
  }

  v5 = **(v2 + 160);
  if (v5 <= 60)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v6 = *(*(a1 + 32) + 160);
    }

    LogPrintF();
  }
}

- (void)sendFrameType:(unsigned __int8)a3 object:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFSession_sendFrameType_object___block_invoke;
  block[3] = &unk_1E788F2F0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)sendRequestWithFlags:(unsigned int)a3 object:(id)a4 responseHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SFSession_sendRequestWithFlags_object_responseHandler___block_invoke;
  v13[3] = &unk_1E788EAB8;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)sendWithFlags:(unsigned int)a3 object:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  if (v4)
  {
    v8 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v9 = __34__SFSession_sendWithFlags_object___block_invoke;
  }

  else
  {
    v8 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v9 = __34__SFSession_sendWithFlags_object___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v10 = v6;
  v8[5] = v10;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __34__SFSession_sendWithFlags_object___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 140) & 2) != 0)
  {
    v1 = 29;
  }

  else
  {
    v1 = 5;
  }

  return [*(a1 + 32) _sendFrameType:v1 object:*(a1 + 40)];
}

- (void)_sendEncryptedObject:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFSession/sessionSendFrameType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v34[0] = 0;
  v34[1] = 0;
  if (!self->_xpcCnx)
  {
    ucatCore = self->_ucatCore;
    p_ucatCore = &self->_ucatCore;
    var0 = ucatCore->var0;
    if (ucatCore->var0 > 60)
    {
      goto LABEL_38;
    }

    if (var0 != -1)
    {
LABEL_26:
      LogPrintF();
      goto LABEL_38;
    }

    if (!_LogCategory_Initialize())
    {
      goto LABEL_38;
    }

LABEL_36:
    v27 = *p_ucatCore;
    goto LABEL_26;
  }

  if (!self->_encryptionWriteAEAD)
  {
    v22 = self->_ucatCore;
    p_ucatCore = &self->_ucatCore;
    v23 = v22->var0;
    if (v22->var0 > 60)
    {
      goto LABEL_38;
    }

    if (v23 != -1)
    {
      goto LABEL_26;
    }

    if (!_LogCategory_Initialize())
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    v24 = self->_ucatCore->var0;
    if (v24 <= 60)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v31 = self->_ucatCore;
      }

      goto LABEL_26;
    }

LABEL_38:
    DataMutable = 0;
    goto LABEL_17;
  }

  if ((self->_sessionFlags & 2) != 0)
  {
    v8 = NSDataCompress();
    v9 = 0;
    if (!v8)
    {
      v26 = self->_ucatCore->var0;
      if (v26 <= 60)
      {
        if (v26 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v30 = self->_ucatCore;
        }

        LogPrintF();
      }

LABEL_16:

      goto LABEL_17;
    }

    v10 = [v8 mutableCopy];

    v7 = 28;
    DataMutable = v10;
  }

  else
  {
    v7 = 6;
  }

  serviceType = self->_serviceType;
  v11 = DataMutable;
  [DataMutable mutableBytes];
  [DataMutable length];
  encryptionWriteAEAD = self->_encryptionWriteAEAD;
  encryptionWriteNonce = self->_encryptionWriteNonce;
  v14 = CryptoAEADEncryptMessage();
  v15 = 0;
  do
  {
    if (++encryptionWriteNonce[v15])
    {
      v17 = 1;
    }

    else
    {
      v17 = v15 == 11;
    }

    ++v15;
  }

  while (!v17);
  if (!v14)
  {
    [DataMutable appendBytes:v34 length:{16, v34, 16}];
    v9 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v9 sessionSendFrameType:v7 data:DataMutable];
    goto LABEL_16;
  }

  v25 = self->_ucatCore->var0;
  if (v25 <= 60)
  {
    if (v25 == -1)
    {
      v28 = self->_ucatCore;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v29 = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_17:

  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (CFDictionaryGetInt64())
  {
    [(SFSession *)self _registerRequestID:v8 options:v9 handler:v10];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SFSession_registerRequestID_options_handler___block_invoke;
    v12[3] = &unk_1E788B750;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(dispatchQueue, v12);
  }
}

- (void)_registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v18 = a3;
  v8 = a4;
  dispatchQueue = self->_dispatchQueue;
  v10 = a5;
  dispatch_assert_queue_V2(dispatchQueue);
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v17 = v18;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = objc_alloc_init(SFMessageSessionRequestEntry);
  [(SFMessageSessionRequestEntry *)v12 setHandler:v10];

  if (v8)
  {
    [(SFMessageSessionRequestEntry *)v12 setOptions:v8];
  }

  [(SFMessageSessionRequestEntry *)v12 setAllowUnencrypted:CFDictionaryGetInt64() != 0, v17];
  requestHandlers = self->_requestHandlers;
  if (!requestHandlers)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = self->_requestHandlers;
    self->_requestHandlers = v14;

    requestHandlers = self->_requestHandlers;
  }

  [(NSMutableDictionary *)requestHandlers setObject:v12 forKeyedSubscript:v18];
}

- (void)deregisterRequestID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SFSession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_deregisterRequestID:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    v5 = v8;
    if (var0 != -1)
    {
LABEL_3:
      v7 = v5;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      v5 = v8;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_requestHandlers setObject:0 forKeyedSubscript:v8, v7];
}

- (void)sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFSession_sendRequestID_options_request_responseHandler___block_invoke;
  block[3] = &unk_1E7890068;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6
{
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  var0 = self->_ucatCore->var0;
  if (var0 > 30)
  {
    goto LABEL_5;
  }

  if (var0 != -1)
  {
    goto LABEL_3;
  }

  ucatCore = self->_ucatCore;
  if (_LogCategory_Initialize())
  {
    v21 = self->_ucatCore;
LABEL_3:
    v22 = v10;
    v23 = [v12 count];
    LogPrintF();
  }

LABEL_5:
  if (self->_encryptionWriteAEAD)
  {
    v16 = 1;
  }

  else
  {
    v16 = CFDictionaryGetInt64() == 0;
  }

  v28[0] = @"_ri";
  v28[1] = @"_ro";
  v29[0] = v10;
  v29[1] = v12;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{2, v22, v23}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__SFSession__sendRequestID_options_request_responseHandler___block_invoke;
  v24[3] = &unk_1E7890DF0;
  v24[4] = self;
  v25 = v10;
  v26 = v13;
  v27 = v16;
  v18 = v13;
  v19 = v10;
  [(SFSession *)self _sendRequestWithFlags:v16 object:v17 responseHandler:v24];

  v20 = *MEMORY[0x1E69E9840];
}

void __60__SFSession__sendRequestID_options_request_responseHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = **(*(a1 + 32) + 160);
    if (v9 <= 60)
    {
      if (v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v29 = *(*(a1 + 32) + 160);
      }

      v34 = *(a1 + 40);
      LogPrintF();
    }

LABEL_12:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v7);
    goto LABEL_34;
  }

  if ((a2 & 1) != 0 || (*(a1 + 56) & 1) == 0)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      v11 = **(*(a1 + 32) + 160);
      if (v11 <= 60)
      {
        if (v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_24;
          }

          v30 = *(*(a1 + 32) + 160);
        }

        v33 = *(a1 + 40);
        v38 = Int64Ranged;
        LogPrintF();
      }

LABEL_24:
      v15 = *(a1 + 48);
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A768];
      v18 = Int64Ranged;
      v39 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v12 = v19;
      v20 = @"?";
      if (v19)
      {
        v20 = v19;
      }

      v40[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:{1, v33, v38}];
      v22 = [v16 errorWithDomain:v17 code:v18 userInfo:v21];
      (*(v15 + 16))(v15, v22, 0, 0);

      goto LABEL_33;
    }

    CFDictionaryGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    v13 = **(*(a1 + 32) + 160);
    if (v12)
    {
      if (v13 <= 30)
      {
        if (v13 == -1)
        {
          v24 = *(*(a1 + 32) + 160);
          if (!_LogCategory_Initialize())
          {
            goto LABEL_30;
          }

          v31 = *(*(a1 + 32) + 160);
        }

        v35 = *(a1 + 40);
        [v12 count];
        LogPrintF();
      }

LABEL_30:
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_33:

      goto LABEL_34;
    }

    if (v13 <= 60)
    {
      if (v13 == -1)
      {
        v25 = *(*(a1 + 32) + 160);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v32 = *(*(a1 + 32) + 160);
      }

      v37 = *(a1 + 40);
      LogPrintF();
    }

LABEL_32:
    v26 = *(a1 + 48);
    v27 = NSErrorWithOSStatusF();
    (*(v26 + 16))(v26, v27, 0, 0);

    goto LABEL_33;
  }

  v14 = **(*(a1 + 32) + 160);
  if (v14 <= 60)
  {
    if (v14 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v23 = *(*(a1 + 32) + 160);
    }

    v36 = *(a1 + 40);
    LogPrintF();
  }

LABEL_34:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)sessionBluetoothStateChanged:(int64_t)a3
{
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucatCore = self->_ucatCore;
    }

    if (a3 <= 5)
    {
      v6 = off_1E7891070[a3];
    }

    LogPrintF();
  }

LABEL_8:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_bluetoothState = a3;
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  if (bluetoothStateChangedHandler)
  {
    bluetoothStateChangedHandler[2](bluetoothStateChangedHandler, a3);
  }

  [(SFSession *)self _startTimeoutIfNeeded];
}

- (void)sessionError:(id)a3
{
  v4 = a3;
  var0 = self->_ucatCore->var0;
  if (var0 <= 50)
  {
    if (var0 != -1)
    {
LABEL_3:
      v19 = v4;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v7 = heartbeatTimer;
    dispatch_source_cancel(v7);
    v8 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  if (self->_pairSetupSession && !self->_pairSetupEnded)
  {
    v9 = NSErrorToOSStatus();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 4294960596;
    }

    [(SFSession *)self _pairSetupCompleted:v10, v19];
  }

  if (self->_pairVerifySession && !self->_pairVerifyEnded)
  {
    v11 = NSErrorToOSStatus();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 4294960596;
    }

    [(SFSession *)self _pairVerifyCompleted:v12, v19];
  }

  [(NSMutableDictionary *)self->_requestHandlers removeAllObjects];
  requestHandlers = self->_requestHandlers;
  self->_requestHandlers = 0;

  requestMap = self->_requestMap;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __26__SFSession_sessionError___block_invoke;
  v20[3] = &unk_1E7890E18;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v20];
  [(NSMutableDictionary *)self->_requestMap removeAllObjects];
  v16 = self->_requestMap;
  self->_requestMap = 0;

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v15);
  }
}

void __26__SFSession_sessionError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 160);
  if (v6 <= 50)
  {
    if (v6 != -1)
    {
LABEL_3:
      v10 = v12;
      v11 = *(a1 + 40);
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *(*(a1 + 32) + 160);
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = [v5 objectForKeyedSubscript:{@"_rh", v10, v11}];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, 0, *(a1 + 40), 0);
  }
}

- (void)sessionReceivedEvent:(id)a3
{
  v8 = a3;
  var0 = self->_ucatCore->var0;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  eventMessageHandler = self->_eventMessageHandler;
  v6 = v8;
  if (eventMessageHandler)
  {
    eventMessageHandler[2](eventMessageHandler, v8);
    v6 = v8;
  }
}

- (void)sessionReceivedFragmentData:(id)a3 last:(BOOL)a4
{
  v33 = a3;
  v6 = [v33 length];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [v33 bytes];
  v9 = *v8;
  if (self->_fragmentLastIndex + 1 != v9)
  {
    v31 = *v8;
LABEL_24:
    v22 = NSErrorWithOSStatusF();
    v14 = 0;
    goto LABEL_29;
  }

  fragmentData = self->_fragmentData;
  if (!fragmentData)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v12 = self->_fragmentData;
    self->_fragmentData = v11;

    fragmentData = self->_fragmentData;
  }

  v13 = [v33 subdataWithRange:{1, v7 - 1}];
  [(NSMutableData *)fragmentData appendData:v13];

  if (!a4)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        ucatCore = self->_ucatCore;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v27 = self->_ucatCore;
      }

      peer = self->_peer;
      [(NSMutableData *)self->_fragmentData length];
      LogPrintF();
    }

LABEL_18:
    v22 = 0;
    v14 = 0;
    self->_fragmentLastIndex = v9;
    goto LABEL_19;
  }

  v14 = self->_fragmentData;
  v15 = [(NSMutableData *)v14 length];
  v16 = self->_ucatCore->var0;
  if (v16 > 30)
  {
    goto LABEL_13;
  }

  if (v16 != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v26 = self->_ucatCore;
LABEL_8:
    v29 = self->_peer;
    LogPrintF();
  }

LABEL_13:
  if (v15 > 1)
  {
    v18 = [(NSMutableData *)v14 bytes];
    v19 = *v18;
    if (((v19 - 48) & 0xEE) != 0)
    {
      if (v18[1] == self->_serviceType)
      {
        v20 = [(NSMutableData *)v14 subdataWithRange:2, v15 - 2];

        [(SFSession *)self sessionReceivedFrameType:v19 data:v20];
        v21 = self->_fragmentData;
        self->_fragmentData = 0;

        v22 = 0;
        self->_fragmentLastIndex = 0;
        v14 = v20;
        goto LABEL_19;
      }

      v32 = v18[1];
    }
  }

  v22 = NSErrorWithOSStatusF();
LABEL_29:
  if (!v22)
  {
    goto LABEL_19;
  }

  v24 = self->_ucatCore->var0;
  if (v24 <= 60)
  {
    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v28 = self->_ucatCore;
    }

    LogPrintF();
  }

LABEL_34:
  v25 = self->_fragmentData;
  self->_fragmentData = 0;

  self->_fragmentLastIndex = 0;
LABEL_19:
}

- (void)_sessionReceivedEncryptedData:(id)a3 type:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!self->_encryptionReadAEAD)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        ucatCore = self->_ucatCore;
      }

      goto LABEL_22;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v8 = [v6 length];
  v9 = v8;
  if (v8 <= 0xF)
  {
    v23 = self->_ucatCore->var0;
    if (v23 <= 60)
    {
      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v35 = self->_ucatCore;
      }

LABEL_22:
      LogPrintF();
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v10 = v8 - 16;
  v11 = [v7 bytes];
  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v9 - 16];
  if ([v12 length] != v10)
  {
    v24 = self->_ucatCore->var0;
    if (v24 <= 60)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v30 = self->_ucatCore;
      }

      goto LABEL_28;
    }

LABEL_40:
    v18 = 0;
    goto LABEL_41;
  }

  [v12 mutableBytes];
  serviceType = self->_serviceType;
  encryptionReadAEAD = self->_encryptionReadAEAD;
  v36 = v11 + v10;
  v14 = CryptoAEADDecryptMessage();
  v15 = 24;
  do
  {
    v16 = *(&self->super.isa + v15) + 1;
    *(&self->super.isa + v15) = v16;
    if (v16)
    {
      break;
    }
  }

  while (v15++ != 35);
  if (v14)
  {
    v25 = self->_ucatCore->var0;
    if (v25 <= 60)
    {
      if (v25 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v31 = self->_ucatCore;
      }

LABEL_28:
      LogPrintF();
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (v4 == 28)
  {
    v18 = NSDataDecompress();
    v19 = 0;
    if (!v18)
    {
      [SFSession _sessionReceivedEncryptedData:? type:?];
      goto LABEL_41;
    }
  }

  else
  {
    v18 = v12;
  }

  v20 = OPACKDecodeData();
  if (!v20)
  {
    v26 = self->_ucatCore->var0;
    if (v26 <= 60)
    {
      if (v26 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        v32 = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_41:
    v21 = 0;
    goto LABEL_16;
  }

  v21 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSession *)self _sessionReceivedObject:v21 flags:1, v36, 16];
  }

  else
  {
    v27 = self->_ucatCore->var0;
    if (v27 <= 60)
    {
      if (v27 == -1)
      {
        v33 = self->_ucatCore;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v34 = self->_ucatCore;
      }

      v28 = objc_opt_class();
      v37 = NSStringFromClass(v28);
      LogPrintF();
    }
  }

LABEL_16:
}

- (void)_sessionReceivedUnencryptedData:(id)a3 type:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 == 29)
  {
    v7 = NSDataDecompress();
    v8 = 0;

    if (!v7)
    {
      [SFSession _sessionReceivedUnencryptedData:? type:?];
      v6 = 0;
      goto LABEL_15;
    }

    v6 = v7;
  }

  v9 = OPACKDecodeData();
  if (!v9)
  {
    var0 = self->_ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_32:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFSession *)self _sessionReceivedUnencryptedData:v7 type:v6, &v16, &v17];
    v6 = v16;
    v7 = v17;
    goto LABEL_15;
  }

  switch(v4)
  {
    case 19:
      if (self->_pairVerifySession)
      {
        [(SFSession *)self _pairVerify:v7 start:0];
        break;
      }

      v11 = self->_ucatCore->var0;
      if (v11 > 50)
      {
        break;
      }

      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          break;
        }

        v13 = self->_ucatCore;
      }

      goto LABEL_21;
    case 17:
      if (self->_pairSetupSession)
      {
        [(SFSession *)self _pairSetup:v7 start:0];
        break;
      }

      v10 = self->_ucatCore->var0;
      if (v10 > 50)
      {
        break;
      }

      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          break;
        }

        v12 = self->_ucatCore;
      }

LABEL_21:
      LogPrintF();
      break;
    case 16:
      [(SFSession *)self _serviceInitiatedPairSetup:v7];
      break;
    default:
      [(SFSession *)self _sessionReceivedObject:v7 flags:0];
      break;
  }

LABEL_15:
}

- (BOOL)_sessionReceivedRegisteredRequestID:(id)a3 flags:(unsigned int)a4 xidKey:(id)a5 xidValue:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (v13)
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      v15 = [(NSMutableDictionary *)self->_requestHandlers objectForKeyedSubscript:v13];
      v16 = v15;
      if (v15)
      {
        if (a4 & 1) != 0 || ([v15 allowUnencrypted])
        {
          v31 = v16;
          v17 = [v16 handler];
          v18 = v17 != 0;
          var0 = self->_ucatCore->var0;
          if (!v17)
          {
            if (var0 <= 60)
            {
              if (var0 == -1)
              {
                ucatCore = self->_ucatCore;
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_29;
                }

                v26 = self->_ucatCore;
              }

              LogPrintF();
            }

LABEL_29:

            v16 = v31;
LABEL_34:

            goto LABEL_35;
          }

          if (var0 <= 30)
          {
            if (var0 == -1)
            {
              v24 = self->_ucatCore;
              if (!_LogCategory_Initialize())
              {
                goto LABEL_28;
              }

              v29 = self->_ucatCore;
            }

            [v14 count];
            LogPrintF();
          }

LABEL_28:
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __71__SFSession__sessionReceivedRegisteredRequestID_flags_xidKey_xidValue___block_invoke;
          v32[3] = &unk_1E7890E40;
          v32[4] = self;
          v33 = v13;
          v36 = a4;
          v34 = v11;
          v35 = v12;
          (v17)[2](v17, 0, v14, v32);

          goto LABEL_29;
        }

        v22 = self->_ucatCore->var0;
        if (v22 <= 60)
        {
          if (v22 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_33;
            }

            v30 = self->_ucatCore;
          }

LABEL_22:
          LogPrintF();
        }
      }

      else
      {
        v21 = self->_ucatCore->var0;
        if (v21 <= 60)
        {
          if (v21 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_33;
            }

            v23 = self->_ucatCore;
          }

          goto LABEL_22;
        }
      }

LABEL_33:
      v18 = 0;
      goto LABEL_34;
    }

    v20 = self->_ucatCore->var0;
    if (v20 <= 60)
    {
      if (v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v28 = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_24:
    v18 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v18 = 0;
LABEL_36:

  return v18;
}

void __71__SFSession__sessionReceivedRegisteredRequestID_flags_xidKey_xidValue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v10 = **(*(a1 + 32) + 160);
    if (v10 > 60)
    {
      goto LABEL_11;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v24 = *(*(a1 + 32) + 160);
    }

    v25 = *(a1 + 40);
    v26 = v7;
    LogPrintF();
LABEL_11:
    v19 = *(a1 + 32);
    v20 = *(a1 + 64);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v29[0] = @"_ro";
    v29[1] = v21;
    v30[0] = v9;
    v30[1] = v22;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:{2, v25, v26}];
    [v19 sendWithFlags:v20 object:v16];
    goto LABEL_12;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v27[0] = @"er";
  v13 = MEMORY[0x1E696AD98];
  v14 = NSErrorToOSStatus();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = 4294960596;
  }

  v16 = [v13 numberWithInt:v15];
  v17 = *(a1 + 56);
  v27[1] = *(a1 + 48);
  v28[0] = v16;
  v28[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v11 sendWithFlags:v12 object:v18];

LABEL_12:
  v23 = *MEMORY[0x1E69E9840];
}

void __52__SFSession__sessionReceivedRequestID_object_flags___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = **(*(a1 + 32) + 160);
    if (v9 > 90)
    {
      goto LABEL_11;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v18 = *(*(a1 + 32) + 160);
    }

    v19 = *(a1 + 40);
    v20 = v7;
    LogPrintF();
LABEL_11:
    v16 = [v8 mutableCopy];
    [v16 setObject:*(a1 + 40) forKeyedSubscript:@"_xs"];
    [*(a1 + 32) sendWithFlags:a2 object:v16];

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v21[0] = @"er";
  v11 = MEMORY[0x1E696AD98];
  v12 = NSErrorToOSStatus();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 4294960596;
  }

  v14 = [v11 numberWithInt:v13];
  v21[1] = @"_xs";
  v22[0] = v14;
  v22[1] = *(a1 + 40);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v10 sendWithFlags:a2 object:v15];

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sessionReceivedStartAck:(id)a3
{
  v4 = a3;
  v19 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFSession__sessionReceivedStartAck___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  if (_sessionReceivedStartAck__onceToken != -1)
  {
    dispatch_once(&_sessionReceivedStartAck__onceToken, block);
  }

  v5 = OPACKDecodeData();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  var0 = self->_ucatCore->var0;
  if ((isKindOfClass & 1) == 0)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        ucatCore = self->_ucatCore;
      }

      LogPrintF();
    }

LABEL_29:
    v9 = 0;
    goto LABEL_24;
  }

  if (var0 > 30)
  {
    goto LABEL_8;
  }

  if (var0 != -1)
  {
    goto LABEL_6;
  }

  if (_LogCategory_Initialize())
  {
    v15 = self->_ucatCore;
LABEL_6:
    LogPrintF();
  }

LABEL_8:
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    [v8 UTF8String];
    v10 = TextToSourceVersion();
    self->_sharingSourceVersion = v10;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else if (self->_sharingSourceVersion)
  {
    goto LABEL_16;
  }

  v11 = self->_ucatCore->var0;
  if (v11 <= 115)
  {
    if (v11 != -1)
    {
LABEL_14:
      LogPrintF();
      goto LABEL_16;
    }

    if (_LogCategory_Initialize())
    {
      v16 = self->_ucatCore;
      goto LABEL_14;
    }
  }

LABEL_16:
  sessionFlags = self->_sessionFlags;
  if ((sessionFlags & 1) != 0 && self->_sharingSourceVersion >= 0x7E57C0)
  {
    sessionFlags |= 2u;
    self->_sessionFlags = sessionFlags;
  }

  if ((sessionFlags & 0x20) != 0 && self->_sharingSourceVersion >= 0x8FE454)
  {
    self->_sessionFlags = sessionFlags | 0x40;
  }

  sessionStartedHandler = self->_sessionStartedHandler;
  if (sessionStartedHandler)
  {
    sessionStartedHandler[2](sessionStartedHandler);
    v14 = self->_sessionStartedHandler;
    self->_sessionStartedHandler = 0;
  }

LABEL_24:
}

int *__38__SFSession__sessionReceivedStartAck___block_invoke(uint64_t a1)
{
  [@"1945.10.6" UTF8String];
  result = TextToSourceVersion();
  if (!result)
  {
    result = *(*(a1 + 32) + 160);
    if (*result <= 115)
    {
      if (*result != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v3 = *(*(a1 + 32) + 160);
        return LogPrintF();
      }
    }
  }

  return result;
}

- (void)sessionReceivedRequest:(id)a3
{
  v8 = a3;
  var0 = self->_ucatCore->var0;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  requestMessageHandler = self->_requestMessageHandler;
  v6 = v8;
  if (requestMessageHandler)
  {
    requestMessageHandler[2](requestMessageHandler, v8);
    v6 = v8;
  }
}

- (void)sessionReceivedResponse:(id)a3
{
  v12 = a3;
  v4 = [v12 identifier];
  var0 = self->_ucatCore->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucatCore = self->_ucatCore;
    }

    v11 = v12;
    LogPrintF();
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4 && ([(NSMutableDictionary *)self->_requestQueue objectForKeyedSubscript:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 responseHandler];

    if (v8)
    {
      v9 = [v7 responseHandler];
      (v9)[2](v9, 0, v12);
    }

    [(NSMutableDictionary *)self->_requestQueue removeObjectForKey:v4, v11];
  }

  else
  {
    [SFSession sessionReceivedResponse:?];
  }
}

- (SFSession)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFSession;
  v5 = [(SFSession *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v6->_ucatCore = &gLogCategory_SFSessionCore;
    v6->_ucatCrypto = &gLogCategory_SFSessionCrypto;
    if ([v4 containsValueForKey:@"ident"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v6->_identifier;
      v6->_identifier = v9;
    }

    if ([v4 containsValueForKey:@"pd"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pd"];
      peerDevice = v6->_peerDevice;
      v6->_peerDevice = v11;
    }

    if ([v4 containsValueForKey:@"st"])
    {
      v13 = [v4 decodeIntegerForKey:@"st"];
      v6->_serviceType = v13;
      if (v13 >= 0x100)
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        v16 = _NSMethodExceptionProem();
        [v14 raise:v15 format:{@"%@: service type out-of-range: %ld", v16, v13}];
      }
    }

    if ([v4 containsValueForKey:@"sid"])
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
      serviceUUID = v6->_serviceUUID;
      v6->_serviceUUID = v17;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_sessionFlags = v22;
    }

    v19 = v6;
  }

  return v6;
}

- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  encryptionReadAEAD = self->_encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->_encryptionReadAEAD = 0;
  }

  v8 = MEMORY[0x1E6999598];
  v9 = *MEMORY[0x1E6999598];
  v10 = CryptoAEADCreate();
  self->_encryptionReadAEAD = v10;
  if (v10)
  {
    *&self->_encryptionReadNonce[8] = 0;
    *self->_encryptionReadNonce = 0;
    encryptionWriteAEAD = self->_encryptionWriteAEAD;
    if (encryptionWriteAEAD)
    {
      CFRelease(encryptionWriteAEAD);
      self->_encryptionWriteAEAD = 0;
    }

    v12 = *v8;
    v13 = CryptoAEADCreate();
    self->_encryptionWriteAEAD = v13;
    if (v13)
    {
      *&self->_encryptionWriteNonce[8] = 0;
      *self->_encryptionWriteNonce = 0;
      var0 = self->_ucatCore->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 0;
          }

          ucatCore = self->_ucatCore;
        }

        LogPrintF();
      }
    }
  }

  return 0;
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  var4 = self->_ucatCore->var4;
  [(NSString *)self->_label UTF8String];
  ASPrintF();
}

- (void)_activatedIfReady:(id)a3
{
  v11 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v11)
  {
    OUTLINED_FUNCTION_2_17(self->_ucatCore);
    if (!(v8 ^ v9 | v7))
    {
      goto LABEL_5;
    }

    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF();
LABEL_5:
    activateCompletion = self->_activateCompletion;
    if (activateCompletion)
    {
      activateCompletion[2](activateCompletion, v11);
      v5 = self->_activateCompletion;
    }

    else
    {
      v5 = 0;
    }

    self->_activateCompletion = 0;

    goto LABEL_9;
  }

  if (!self->_activateInProgress && self->_appleIDContactCompleted)
  {
    [(SFSession *)self _activated];
    goto LABEL_5;
  }

LABEL_9:
}

uint64_t __23__SFSession__fetchInfo__block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_17(*(*a1 + 160));
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*a1 + 160);
    }

    return LogPrintF();
  }

  return result;
}

uint64_t __23__SFSession__fetchInfo__block_invoke_cold_2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_17(*(a1 + 160));
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      v7 = v2;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v8 = *(*v7 + 160);
    }

    return LogPrintF();
  }

  return result;
}

uint64_t __23__SFSession__fetchInfo__block_invoke_cold_3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_17(*(*a1 + 160));
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*a1 + 160);
    }

    return LogPrintF();
  }

  return result;
}

uint64_t __40__SFSession__serviceInitiatedPairSetup___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_17(*(*a1 + 160));
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      v8 = v3;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v9 = *(*a1 + 160);
      v10 = *v8;
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_pairSetup:(unsigned int *)a1 start:.cold.1(unsigned int **a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *v2;
    }

    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairSetup:(unsigned int *)a1 start:.cold.2(unsigned int **a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v10 = *v2;
    }

    v11 = *v9;
    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairSetupTryPIN:(unsigned int *)a1 .cold.1(unsigned int **a1, void *a2)
{
  OUTLINED_FUNCTION_2_17(*a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v9 = *a1;
    }

    LogPrintF();
  }

LABEL_6:

  return [a2 _pairSetupCompleted:4294960551];
}

- (uint64_t)_pairVerify:(unsigned int *)a1 start:.cold.1(unsigned int **a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *v2;
    }

    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairVerify:(unsigned int *)a1 start:.cold.2(unsigned int **a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v10 = *v2;
    }

    v11 = *v9;
    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_pairVerify:(_DWORD *)a3 start:(void *)a4 .cold.3(void *a1, void *a2, _DWORD *a3, void *a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *a4 = v8;
  v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a1 length:*a2 freeWhenDone:1];
  [v8 setObject:v9 forKeyedSubscript:@"pd"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3[69]];
  [v8 setObject:v10 forKeyedSubscript:@"pf"];

  if ((a3[35] & 0x400) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v8 setObject:v11 forKeyedSubscript:@"seFl"];
  }

  return [a3 sendFrameType:18 object:v8];
}

- (void)_appleIDAddProof:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = SFNestedErrorF();
    *v1 = result;
  }

  return result;
}

- (void)_sendFrameType:(uint64_t)a1 object:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_20(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v2 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (uint64_t)_sendFrameType:(unsigned int *)a3 object:(void *)a4 .cold.2(uint64_t result, unsigned __int8 a2, unsigned int *a3, void *a4)
{
  v5 = **(result + 160);
  if (v5 <= 60)
  {
    if (v5 == -1)
    {
      v8 = result;
      v9 = *(result + 160);
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v10 = *(v8 + 160);
    }

    SFNearbyBLEFrameTypeToString_0(a2);
    v11 = *a3;
    result = LogPrintF();
  }

LABEL_5:
  *a4 = 0;
  return result;
}

- (void)_sessionReceivedEncryptedData:(uint64_t)a1 type:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_20(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v2 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (void)_sessionReceivedUnencryptedData:(uint64_t)a3 type:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = **(a1 + 160);
  if (v9 <= 60)
  {
    if (v9 == -1)
    {
      v12 = *(a1 + 160);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v13 = *(a1 + 160);
    }

    v10 = objc_opt_class();
    v14 = NSStringFromClass(v10);
    LogPrintF();
  }

LABEL_5:
  *a5 = a2;
  *a4 = a3;
}

- (void)_sessionReceivedUnencryptedData:(uint64_t)a1 type:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_20(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v2 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (uint64_t)_sessionReceivedEvent:(uint64_t)a1 flags:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *(v2 + 160);
    }

    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_sessionReceivedRequest:(uint64_t)a1 flags:responseHandler:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_20(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *(v2 + 160);
    }

    result = LogPrintF();
  }

LABEL_6:
  *v1 = 0;
  return result;
}

- (uint64_t)_sessionReceivedResponseID:(uint64_t)a1 object:flags:.cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_9(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 160);
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_sessionReceivedResponseID:(uint64_t)a1 object:flags:.cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_9(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(v1 + 160);
    }

    return LogPrintF();
  }

  return result;
}

- (int)sessionReceivedResponse:(int *)a1 .cold.1(int **a1)
{
  result = *a1;
  if (*result <= 50)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a1;
      return LogPrintF();
    }
  }

  return result;
}

@end