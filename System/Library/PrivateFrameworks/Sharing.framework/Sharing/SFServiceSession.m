@interface SFServiceSession
- (BOOL)pairingContainsACL:(id)a3;
- (SFServiceSession)init;
- (id)pairingDeriveKeyForIdentifier:(id)a3 keyLength:(unint64_t)a4;
- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6;
- (void)_hearbeatTimer;
- (void)_sendWithFlags:(unsigned int)a3 object:(id)a4;
- (void)activate;
- (void)clearEncryptionInfo;
- (void)dealloc;
- (void)invalidate;
- (void)pairSetup:(id)a3 start:(BOOL)a4;
- (void)pairSetupWithFlags:(unsigned int)a3;
- (void)pairVerify:(id)a3 start:(BOOL)a4;
- (void)receivedEncryptedData:(id)a3 type:(unsigned __int8)a4;
- (void)receivedStartRequest:(id)a3;
- (void)receivedUnencryptedData:(id)a3 type:(unsigned __int8)a4;
- (void)sendEncryptedObject:(id)a3;
- (void)sendFrameType:(unsigned __int8)a3 data:(id)a4;
- (void)sendRequestWithFlags:(unsigned int)a3 object:(id)a4 responseHandler:(id)a5;
- (void)sendWithFlags:(unsigned int)a3 object:(id)a4;
@end

@implementation SFServiceSession

- (SFServiceSession)init
{
  v3.receiver = self;
  v3.super_class = SFServiceSession;
  result = [(SFSession *)&v3 init];
  if (result)
  {
    result->super._ucatCore = &gLogCategory_SFServiceCore;
    result->super._ucatCrypto = &gLogCategory_SFServiceCrypto;
  }

  return result;
}

- (void)dealloc
{
  if (self->super._transaction)
  {
    v3 = [SFServiceSession dealloc];
    [(SFServiceSession *)v3 clearEncryptionInfo];
  }

  else
  {
    [(SFServiceSession *)self clearEncryptionInfo];
    v5.receiver = self;
    v5.super_class = SFServiceSession;
    [(SFSession *)&v5 dealloc];
  }
}

- (void)clearEncryptionInfo
{
  encryptionReadAEAD = self->super._encryptionReadAEAD;
  if (encryptionReadAEAD)
  {
    CFRelease(encryptionReadAEAD);
    self->super._encryptionReadAEAD = 0;
  }

  encryptionWriteAEAD = self->super._encryptionWriteAEAD;
  if (encryptionWriteAEAD)
  {
    CFRelease(encryptionWriteAEAD);
    self->super._encryptionWriteAEAD = 0;
  }

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;

  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  v3 = os_transaction_create();
  transaction = self->super._transaction;
  self->super._transaction = v3;

  if (!self->super._transaction)
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucatCore = self->super._ucatCore;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(SFSession *)self _setupMessageSession];
  if ([(SFService *)self->_service touchRemoteEnabled])
  {
    [(SFSession *)self _setupTouchRemote];
  }

  v6 = self->super._ucatCore->var0;
  if (v6 <= 30)
  {
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v10 = self->super._ucatCore;
    }

    LogPrintF();
  }

LABEL_12:
  self->super._heartbeatLastTicks = mach_absolute_time();
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->super._dispatchQueue);
  heartbeatTimer = self->super._heartbeatTimer;
  self->super._heartbeatTimer = v7;

  v9 = self->super._heartbeatTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __28__SFServiceSession_activate__block_invoke;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  SFDispatchTimerSet(self->super._heartbeatTimer, 3.0, 3.0, -4.0);
  dispatch_resume(self->super._heartbeatTimer);
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  heartbeatTimer = self->super._heartbeatTimer;
  if (heartbeatTimer)
  {
    v4 = heartbeatTimer;
    dispatch_source_cancel(v4);
    v5 = self->super._heartbeatTimer;
    self->super._heartbeatTimer = 0;
  }

  [(SFSession *)self _tearDownMessageSession];
  [(SFSession *)self _tearDownTouchRemote];
  [(NSMutableDictionary *)self->super._requestHandlers removeAllObjects];
  requestHandlers = self->super._requestHandlers;
  self->super._requestHandlers = 0;

  requestMap = self->super._requestMap;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __30__SFServiceSession_invalidate__block_invoke;
  v13[3] = &unk_1E788F430;
  v13[4] = self;
  [(NSMutableDictionary *)requestMap enumerateKeysAndObjectsUsingBlock:v13];
  [(NSMutableDictionary *)self->super._requestMap removeAllObjects];
  v8 = self->super._requestMap;
  self->super._requestMap = 0;

  [(SFServiceSession *)self clearEncryptionInfo];
  transaction = self->super._transaction;
  self->super._transaction = 0;

  var0 = self->super._ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_5:
      sessionID = self->super._sessionID;
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      ucatCore = self->super._ucatCore;
      goto LABEL_5;
    }
  }
}

void __30__SFServiceSession_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_hearbeatTimer
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!self->super._heartbeatTimer)
  {
    goto LABEL_14;
  }

  mach_absolute_time();
  heartbeatLastTicks = self->super._heartbeatLastTicks;
  UpTicksToSecondsF();
  v5 = v4;
  if (v4 >= 300.0)
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucatCore = self->super._ucatCore;
      }

      v19 = v5;
      LogPrintF();
    }

LABEL_11:
    service = self->_service;
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v21[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:{1, *&v19}];
    v15 = [v9 errorWithDomain:v10 code:-71160 userInfo:v14];
    [(SFService *)service serviceSessionFailed:self error:v15];

    goto LABEL_14;
  }

  if (v4 > 6.0)
  {
    v6 = self->super._ucatCore->var0;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v17 = self->super._ucatCore;
      }

      LogPrintF();
    }
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)receivedEncryptedData:(id)a3 type:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (!self->super._encryptionReadAEAD)
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        ucatCore = self->super._ucatCore;
      }

      goto LABEL_24;
    }

LABEL_41:
    v11 = 0;
    goto LABEL_42;
  }

  v7 = [v6 length];
  v8 = v7;
  if (v7 <= 0xF)
  {
    v23 = self->super._ucatCore->var0;
    if (v23 <= 60)
    {
      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        v35 = self->super._ucatCore;
      }

LABEL_24:
      LogPrintF();
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v9 = v7 - 16;
  v10 = [v6 bytes];
  v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8 - 16];
  if ([v11 length] != v9)
  {
    v24 = self->super._ucatCore->var0;
    if (v24 <= 60)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v30 = self->super._ucatCore;
      }

      goto LABEL_30;
    }

LABEL_42:
    v18 = 0;
    goto LABEL_43;
  }

  [v11 mutableBytes];
  encryptionReadAEAD = self->super._encryptionReadAEAD;
  serviceType = self->super._serviceType;
  encryptionReadNonce = self->super._encryptionReadNonce;
  v36 = v10 + v9;
  v14 = CryptoAEADDecryptMessage();
  v15 = 0;
  do
  {
    if (++encryptionReadNonce[v15])
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
  if (v14)
  {
    v25 = self->super._ucatCore->var0;
    if (v25 <= 60)
    {
      if (v25 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v31 = self->super._ucatCore;
      }

LABEL_30:
      LogPrintF();
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (v4 == 28)
  {
    v18 = NSDataDecompress();
    v19 = 0;
    if (!v18)
    {
      [SFServiceSession receivedEncryptedData:type:];
      goto LABEL_43;
    }
  }

  else
  {
    v18 = v11;
  }

  v20 = OPACKDecodeData();
  if (!v20)
  {
    v26 = self->super._ucatCore->var0;
    if (v26 <= 60)
    {
      if (v26 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v32 = self->super._ucatCore;
      }

      LogPrintF();
    }

LABEL_43:
    v21 = 0;
    goto LABEL_18;
  }

  v21 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFServiceSession *)self _receivedObject:v21 flags:1, v36, 16];
  }

  else
  {
    v27 = self->super._ucatCore->var0;
    if (v27 <= 60)
    {
      if (v27 == -1)
      {
        v33 = self->super._ucatCore;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v34 = self->super._ucatCore;
      }

      v28 = objc_opt_class();
      v37 = NSStringFromClass(v28);
      LogPrintF();
    }
  }

LABEL_18:
}

- (void)receivedUnencryptedData:(id)a3 type:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (v4 == 29)
  {
    v7 = NSDataDecompress();
    v8 = 0;

    if (!v7)
    {
      [SFServiceSession receivedUnencryptedData:type:];
      v6 = 0;
      goto LABEL_18;
    }

    v6 = v7;
  }

  v9 = OPACKDecodeData();
  if (!v9)
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        ucatCore = self->super._ucatCore;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v21 = self->super._ucatCore;
      }

      SFNearbyBLEFrameTypeToString(v4);
      LogPrintF();
    }

LABEL_27:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 <= 17)
    {
      if (v4 == 16)
      {
        v10 = self;
        v11 = v7;
        v12 = 1;
        goto LABEL_15;
      }

      if (v4 == 17)
      {
        v10 = self;
        v11 = v7;
        v12 = 0;
LABEL_15:
        [(SFServiceSession *)v10 pairSetup:v11 start:v12];
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v4 == 18)
    {
      v13 = self;
      v14 = v7;
      v15 = 1;
    }

    else
    {
      if (v4 != 19)
      {
LABEL_13:
        [(SFServiceSession *)self _receivedObject:v7 flags:0];
        goto LABEL_18;
      }

      v13 = self;
      v14 = v7;
      v15 = 0;
    }

    [(SFServiceSession *)v13 pairVerify:v14 start:v15];
    goto LABEL_18;
  }

  v17 = self->super._ucatCore->var0;
  if (v17 <= 60)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v20 = self->super._ucatCore;
    }

    SFNearbyBLEFrameTypeToString(v4);
    v18 = objc_opt_class();
    v22 = NSStringFromClass(v18);
    LogPrintF();
  }

LABEL_18:
}

void __52__SFServiceSession__receivedRequestID_object_flags___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
    [v16 setObject:*(a1 + 40) forKeyedSubscript:@"_xc"];
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
  v21[1] = @"_xc";
  v22[0] = v14;
  v22[1] = *(a1 + 40);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v10 sendWithFlags:a2 object:v15];

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)receivedStartRequest:(id)a3
{
  v4 = a3;
  v21 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFServiceSession_receivedStartRequest___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  if (receivedStartRequest__onceToken != -1)
  {
    dispatch_once(&receivedStartRequest__onceToken, block);
  }

  v5 = OPACKDecodeData();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  var0 = self->super._ucatCore->var0;
  if ((isKindOfClass & 1) == 0)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF();
    }

LABEL_34:
    v9 = 0;
    goto LABEL_28;
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
    v16 = self->super._ucatCore;
LABEL_6:
    LogPrintF();
  }

LABEL_8:
  self->super._sessionID = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    [v8 UTF8String];
    v10 = TextToSourceVersion();
    self->super._sharingSourceVersion = v10;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else if (self->super._sharingSourceVersion)
  {
    goto LABEL_16;
  }

  v11 = self->super._ucatCore->var0;
  if (v11 <= 115)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v18 = self->super._ucatCore;
    }

    LogPrintF();
  }

LABEL_16:
  sessionFlags = self->super._sessionFlags;
  if ((sessionFlags & 1) != 0 && self->super._sharingSourceVersion >= 0x7E57C0)
  {
    sessionFlags |= 2u;
    self->super._sessionFlags = sessionFlags;
  }

  if ((sessionFlags & 0x20) != 0 && self->super._sharingSourceVersion >= 0x8FE454)
  {
    self->super._sessionFlags = sessionFlags | 0x40;
  }

  v13 = self->super._ucatCore->var0;
  if (v13 > 30)
  {
    goto LABEL_26;
  }

  if (v13 != -1)
  {
    goto LABEL_24;
  }

  if (_LogCategory_Initialize())
  {
    v17 = self->super._ucatCore;
LABEL_24:
    LogPrintF();
  }

LABEL_26:
  DataMutable = OPACKEncoderCreateDataMutable();
  if (DataMutable)
  {
    v15 = DataMutable;
    [(SFServiceSession *)self _sendFrameType:24 data:DataMutable];
  }

  else
  {
    [(SFServiceSession *)&self->super._ucatCore receivedStartRequest:v9, &v22];
    v9 = v22;
  }

LABEL_28:
}

int *__41__SFServiceSession_receivedStartRequest___block_invoke(uint64_t a1)
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

- (void)sendEncryptedObject:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v21[0] = 0;
  v21[1] = 0;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (!self->_service->_xpcCnx)
  {
    [SFServiceSession sendEncryptedObject:];
LABEL_21:
    v6 = v20;
    goto LABEL_16;
  }

  if (!self->super._encryptionWriteAEAD)
  {
    [SFServiceSession sendEncryptedObject:];
    goto LABEL_21;
  }

  DataMutable = OPACKEncoderCreateDataMutable();
  if (!DataMutable)
  {
    [(SFServiceSession *)self sendEncryptedObject:&v20];
    goto LABEL_21;
  }

  v6 = DataMutable;
  if ((self->super._sessionFlags & 2) != 0)
  {
    v8 = NSDataCompress();
    v9 = 0;
    if (!v8)
    {
      [SFServiceSession sendEncryptedObject:];
      goto LABEL_16;
    }

    v10 = [v8 mutableCopy];

    v7 = 28;
    v6 = v10;
  }

  else
  {
    v7 = 6;
  }

  serviceType = self->super._serviceType;
  [v6 mutableBytes];
  [v6 length];
  encryptionWriteAEAD = self->super._encryptionWriteAEAD;
  encryptionWriteNonce = self->super._encryptionWriteNonce;
  v13 = CryptoAEADEncryptMessage();
  v14 = 0;
  v19 = v13;
  do
  {
    if (++encryptionWriteNonce[v14])
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 == 11;
    }

    ++v14;
  }

  while (!v16);
  if (v13)
  {
    [SFServiceSession sendEncryptedObject:];
    goto LABEL_21;
  }

  [v6 appendBytes:v21 length:{16, v21, 16}];
  [(SFServiceSession *)self _sendFrameType:v7 data:v6];
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)sendFrameType:(unsigned __int8)a3 data:(id)a4
{
  v6 = a4;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFServiceSession_sendFrameType_data___block_invoke;
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
  dispatchQueue = self->super._dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SFServiceSession_sendRequestWithFlags_object_responseHandler___block_invoke;
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
  v6 = a4;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFServiceSession_sendWithFlags_object___block_invoke;
  block[3] = &unk_1E788EC90;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_sendWithFlags:(unsigned int)a3 object:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = v6;
  if (v4)
  {
    [(SFServiceSession *)self sendEncryptedObject:v6];
  }

  else
  {
    if ((self->super._sessionFlags & 2) != 0)
    {
      v7 = 29;
    }

    else
    {
      v7 = 5;
    }

    [(SFServiceSession *)self _sendFrameType:v7 unencryptedObject:v6];
  }
}

- (BOOL)pairingContainsACL:(id)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  pairVerifySession = self->_pairVerifySession;
  if (!pairVerifySession)
  {
    pairVerifySession = self->_pairSetupSession;
  }

  v7 = [(CUPairingSession *)pairVerifySession pairedPeer];
  v8 = [v7 acl];
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
  if ((pairSetupSession || (pairSetupSession = self->_pairVerifySession) != 0) && !-[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](pairSetupSession, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", "IdentifierKeyInfo", 17, v7, v8, a4, [v9 mutableBytes]))
  {
    v12 = v10;
    goto LABEL_5;
  }

  var0 = self->super._ucatCore->var0;
  if (var0 <= 60)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucatCore = self->super._ucatCore;
    }

    LogPrintF();
  }

LABEL_12:
  v12 = 0;
LABEL_5:

  return v12;
}

- (void)pairSetupWithFlags:(unsigned int)a3
{
  RandomBytes();
  var0 = self->super._ucatCore->var0;
  if (var0 > 30)
  {
    goto LABEL_5;
  }

  if (var0 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    ucatCore = self->super._ucatCore;
LABEL_3:
    pairSetupXID = self->_pairSetupXID;
    LogPrintF();
  }

LABEL_5:
  if ((self->super._sessionFlags & 0x800) != 0)
  {
    v6 = 20;
  }

  else
  {
    v6 = a3 & 0x18 | 4;
    v7 = [(SFService *)self->_service showPINHandler];
    if (v7)
    {
    }

    else
    {
      v8 = [(SFService *)self->_service showPINHandlerEx];

      if (v8)
      {
        v6 = v6;
      }

      else
      {
        v6 = a3 & 0x18 | 0x84;
      }
    }
  }

  v9 = [(SFService *)self->_service promptForPINHandler];

  [(CUPairingSession *)self->_pairSetupSession invalidate];
  v10 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = v10;

  v12 = [(SFService *)self->_service pairSetupACL];

  if (v12)
  {
    v13 = [(SFService *)self->_service pairSetupACL];
    [(CUPairingSession *)self->_pairSetupSession setAcl:v13];
  }

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->super._dispatchQueue];
  [(CUPairingSession *)self->_pairSetupSession setFlags:v6];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
  [(CUPairingSession *)self->_pairSetupSession setLabel:v14];

  [(CUPairingSession *)self->_pairSetupSession setPinType:[(SFService *)self->_service pinType]];
  [(CUPairingSession *)self->_pairSetupSession setSessionType:1];
  v15 = self->super._fixedPIN;
  if (![(NSString *)v15 length])
  {
    v16 = [(SFService *)self->_service fixedPIN];

    v15 = v16;
  }

  if (![(NSString *)v15 length]&& IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v17 = CFPrefs_CopyTypedValue();

    v15 = v17;
  }

  if ([(NSString *)v15 length])
  {
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v15];
  }

  v18 = [(SFService *)self->_service showPINHandlerEx];

  service = self->_service;
  if (v18)
  {
    v20 = [(SFService *)service showPINHandlerEx];
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:v20];
  }

  else
  {
    v21 = [(SFService *)service showPINHandler];

    if (!v21)
    {
      goto LABEL_26;
    }

    v20 = [(SFService *)self->_service showPINHandler];
    [(CUPairingSession *)self->_pairSetupSession setShowPINHandler:v20];
  }

LABEL_26:
  v22 = [(SFService *)self->_service hidePINHandler];

  if (v22)
  {
    v23 = [(SFService *)self->_service hidePINHandler];
    [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:v23];
  }

  if (v9)
  {
    v24 = [(SFService *)self->_service promptForPINHandler];
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:v24];
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __39__SFServiceSession_pairSetupWithFlags___block_invoke;
  v35[3] = &unk_1E7890598;
  v35[4] = self;
  v36 = a3;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v35];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __39__SFServiceSession_pairSetupWithFlags___block_invoke_2;
  v34[3] = &unk_1E788B238;
  v34[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v34];
  v25 = self->super._ucatCore->var0;
  if (v25 <= 30)
  {
    if (v25 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v27 = self->super._ucatCore;
    }

    v32 = v6;
    v33 = &unk_1A9990015;
    sessionFlags = self->super._sessionFlags;
    v31 = &unk_1A998FF40;
    v29 = self->_pairSetupXID;
    LogPrintF();
  }

LABEL_34:
  [(CUPairingSession *)self->_pairSetupSession activate:v29];
}

void __39__SFServiceSession_pairSetupWithFlags___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = **(v6 + 160);
  if (v7 > 30)
  {
    goto LABEL_5;
  }

  if (v7 != -1)
  {
    goto LABEL_3;
  }

  v8 = _LogCategory_Initialize();
  v6 = *(a1 + 32);
  if (v8)
  {
    v16 = *(v6 + 160);
LABEL_3:
    v17 = a2;
    LogPrintF();
    v6 = *(a1 + 32);
  }

LABEL_5:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*(v6 + 608), v17, @"pd", @"pxid", v5}];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:2];

  if (a2)
  {
    v12 = [v10 mutableCopy];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
    [v12 setObject:v13 forKeyedSubscript:@"pf"];

    v14 = [v12 copy];
    v11 = 16;
    v10 = v14;
  }

  else
  {
    v11 = 17;
  }

  [*(a1 + 32) _sendFrameType:v11 unencryptedObject:v10];

  v15 = *MEMORY[0x1E69E9840];
}

void __39__SFServiceSession_pairSetupWithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];

  if (v4)
  {
    v5 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 32) _pairSetupCompleted:NSErrorToOSStatus()];
  if (v6)
  {
    v7 = *(a1 + 32);
    v11 = @"er";
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 _sendFrameType:17 unencryptedObject:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)pairSetup:(id)a3 start:(BOOL)a4
{
  v4 = a4;
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v60 = 0;
  if (![(SFService *)self->_service pairSetupDisabled])
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucatCore = self->super._ucatCore;
      }

      v11 = "no";
      if (v4)
      {
        v11 = "yes";
      }

      if (self->_pairSetupSession)
      {
        v12 = @"not nil";
      }

      else
      {
        v12 = @"is nil";
      }

      v50 = v11;
      v53 = v12;
      LogPrintF();
    }

LABEL_12:
    if (!v4 && self->_pairSetupSession)
    {
      v13 = self->super._ucatCore->var0;
      if (v13 > 30)
      {
        goto LABEL_58;
      }

      if (v13 != -1)
      {
        goto LABEL_16;
      }

      if (_LogCategory_Initialize())
      {
        v45 = self->super._ucatCore;
LABEL_16:
        pairSetupXID = self->_pairSetupXID;
        LogPrintF();
      }

LABEL_58:
      CFDataGetTypeID();
      v41 = CFDictionaryGetTypedValue();
      v9 = v41;
      if (v60)
      {
        [SFServiceSession pairSetup:start:];
      }

      else
      {
        if (v41)
        {
          [(CUPairingSession *)self->_pairSetupSession receivedData:v41];
          goto LABEL_61;
        }

        if (([SFServiceSession pairSetup:&self->super._ucatCore start:?]& 1) != 0)
        {
          v9 = 0;
          goto LABEL_66;
        }
      }

      v9 = v61;
      goto LABEL_61;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    self->_pairSetupXID = CFDictionaryGetInt64Ranged();
    if ((self->super._sessionFlags & 0x800) != 0)
    {
      v15 = 20;
    }

    else
    {
      v15 = Int64Ranged & 0x18 | 4;
      v16 = [(SFService *)self->_service showPINHandler];
      if (v16)
      {
      }

      else
      {
        v17 = [(SFService *)self->_service showPINHandlerEx];

        if (!v17)
        {
          v15 = Int64Ranged & 0x18 | 0x84;
        }
      }
    }

    v18 = v15 | Int64Ranged & 0x100u;
    v19 = [(SFService *)self->_service promptForPINHandler:v50];

    [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
    [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
    [(CUPairingSession *)self->_pairSetupSession invalidate];
    v20 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairSetupSession = self->_pairSetupSession;
    self->_pairSetupSession = v20;

    v22 = [(SFService *)self->_service pairSetupACL];

    if (v22)
    {
      v23 = [(SFService *)self->_service pairSetupACL];
      [(CUPairingSession *)self->_pairSetupSession setAcl:v23];
    }

    [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->super._dispatchQueue];
    [(CUPairingSession *)self->_pairSetupSession setFlags:v18];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
    [(CUPairingSession *)self->_pairSetupSession setLabel:v24];

    [(CUPairingSession *)self->_pairSetupSession setPinType:[(SFService *)self->_service pinType]];
    if (v19)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [(CUPairingSession *)self->_pairSetupSession setSessionType:v25];
    v26 = [(SFSession *)self peerDevice];
    -[CUPairingSession setPeerDeviceClass:](self->_pairSetupSession, "setPeerDeviceClass:", MGDeviceClassFromSFDeviceClassCode([v26 deviceClassCode]));

    v27 = self->super._fixedPIN;
    if (![(NSString *)v27 length])
    {
      v28 = [(SFService *)self->_service fixedPIN];

      v27 = v28;
    }

    if (![(NSString *)v27 length]&& IsAppleInternalBuild())
    {
      CFStringGetTypeID();
      v29 = CFPrefs_CopyTypedValue();

      v27 = v29;
    }

    if ([(NSString *)v27 length])
    {
      [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v27];
    }

    v30 = [(SFService *)self->_service showPINHandlerEx];

    service = self->_service;
    if (v30)
    {
      v32 = [(SFService *)service showPINHandlerEx];
      [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:v32];
    }

    else
    {
      v33 = [(SFService *)service showPINHandler];

      if (!v33)
      {
        goto LABEL_40;
      }

      v32 = [(SFService *)self->_service showPINHandler];
      [(CUPairingSession *)self->_pairSetupSession setShowPINHandler:v32];
    }

LABEL_40:
    v34 = [(SFService *)self->_service hidePINHandler];

    if (v34)
    {
      v35 = [(SFService *)self->_service hidePINHandler];
      [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:v35];
    }

    if (v19)
    {
      v36 = [(SFService *)self->_service promptForPINHandler];
      [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:v36];
    }

    v37 = [(SFService *)self->_service isCLIMode];
    v38 = self->super._ucatCore->var0;
    if (!v37)
    {
      if (v38 > 30)
      {
        goto LABEL_53;
      }

      if (v38 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_53:
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __36__SFServiceSession_pairSetup_start___block_invoke;
          v59[3] = &unk_1E78905C0;
          v59[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v59];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __36__SFServiceSession_pairSetup_start___block_invoke_2;
          v58[3] = &unk_1E788B238;
          v58[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v58];
          v40 = self->super._ucatCore->var0;
          if (v40 <= 30)
          {
            if (v40 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_57;
              }

              v48 = self->super._ucatCore;
            }

            v56 = v18;
            v57 = &unk_1A9990015;
            sessionFlags = self->super._sessionFlags;
            v55 = &unk_1A998FF40;
            v52 = self->_pairSetupXID;
            LogPrintF();
          }

LABEL_57:
          [(CUPairingSession *)self->_pairSetupSession activate:v52];

          goto LABEL_58;
        }

        v44 = self->super._ucatCore;
      }

      LogPrintF();
      goto LABEL_53;
    }

    if (v38 <= 30)
    {
      if (v38 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_52;
        }

        v49 = self->super._ucatCore;
      }

      LogPrintF();
    }

LABEL_52:
    v39 = [(SFService *)self->_service forcedPin];
    [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v39];

    goto LABEL_53;
  }

  v60 = -6731;
  v62 = @"er";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:4294960565];
  v63[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  [(SFServiceSession *)self _sendFrameType:17 unencryptedObject:v8];

  v9 = 0;
LABEL_61:
  if (v60)
  {
    v42 = self->super._ucatCore->var0;
    if (v42 <= 60)
    {
      if (v42 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_66;
        }

        v46 = self->super._ucatCore;
      }

      LogPrintF();
    }
  }

LABEL_66:

  v43 = *MEMORY[0x1E69E9840];
}

void __36__SFServiceSession_pairSetup_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v10[0] = @"pd";
  v10[1] = @"pxid";
  v11[0] = a3;
  v4 = MEMORY[0x1E696AD98];
  v5 = v3[152];
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:v5];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 _sendFrameType:17 unencryptedObject:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __36__SFServiceSession_pairSetup_start___block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];

  if (v4)
  {
    v5 = [*(*(a1 + 32) + 632) pairSetupCompletionHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 32) _pairSetupCompleted:NSErrorToOSStatus()];
  if (v6)
  {
    v7 = *(a1 + 32);
    v11 = @"er";
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 _sendFrameType:17 unencryptedObject:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)pairVerify:(id)a3 start:(BOOL)a4
{
  v6 = a3;
  v26 = 0;
  if (a4 || !self->_pairVerifySession)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ((CFDictionaryGetInt64Ranged() & 8) != 0)
    {
      v8 = 12;
    }

    else
    {
      v8 = 4;
    }

    [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
    [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
    [(CUPairingSession *)self->_pairVerifySession invalidate];
    if (([(SFService *)self->_service sessionFlags]& 4) != 0)
    {
      if (([(SFService *)self->_service sessionFlags]& 8) != 0)
      {
        v9 = 1052672;
      }

      else
      {
        v9 = 4096;
      }

      v8 = v9 & 0xFFDFFFFF | ((([(SFService *)self->_service sessionFlags]>> 4) & 1) << 21) | v8;
    }

    else if ((Int64Ranged & 0x400) == 0)
    {
      v8 = v8 & 0xFBFFFFFF | (((self->super._sessionFlags >> 6) & 1) << 26);
    }

    v10 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairVerifySession = self->_pairVerifySession;
    self->_pairVerifySession = v10;

    v12 = [(SFService *)self->_service pairVerifyACL];

    if (v12)
    {
      v13 = [(SFService *)self->_service pairVerifyACL];
      [(CUPairingSession *)self->_pairVerifySession setAcl:v13];
    }

    [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->super._dispatchQueue];
    [(CUPairingSession *)self->_pairVerifySession setFlags:v8];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->super._ucatCrypto->var4];
    [(CUPairingSession *)self->_pairVerifySession setLabel:v14];

    [(CUPairingSession *)self->_pairVerifySession setSessionType:4];
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    v15 = [(SFService *)self->_service myAppleIDInfoClient];

    service = self->_service;
    if (v15)
    {
      v17 = [(SFService *)service myAppleIDInfoClient];
      [(CUPairingSession *)self->_pairVerifySession setMyAppleIDInfoClient:v17];
    }

    else
    {
      v18 = [(SFService *)service myAppleID];

      if (!v18)
      {
        goto LABEL_21;
      }

      v17 = [(SFService *)self->_service myAppleID];
      [(CUPairingSession *)self->_pairVerifySession setMyAppleID:v17];
    }

LABEL_21:
    if (self->super._peerAppleID)
    {
      [(CUPairingSession *)self->_pairVerifySession setPeerAppleID:?];
    }

    else
    {
      v19 = [(SFService *)self->_service peerAppleID];
      [(CUPairingSession *)self->_pairVerifySession setPeerAppleID:v19];
    }

LABEL_24:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __37__SFServiceSession_pairVerify_start___block_invoke;
    v25[3] = &unk_1E78905C0;
    v25[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __37__SFServiceSession_pairVerify_start___block_invoke_2;
    v24[3] = &unk_1E788B238;
    v24[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v24];
    [(CUPairingSession *)self->_pairVerifySession activate];
  }

  CFDataGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  v21 = v20;
  if (v26)
  {
    [SFServiceSession pairVerify:start:];
LABEL_36:
    v21 = v27;
    goto LABEL_28;
  }

  if (!v20)
  {
    [(SFServiceSession *)&v26 pairVerify:&v27 start:?];
    goto LABEL_36;
  }

  [(CUPairingSession *)self->_pairVerifySession receivedData:v20];
LABEL_28:
  if (v26)
  {
    var0 = self->super._ucatCore->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        ucatCore = self->super._ucatCore;
      }

      LogPrintF();
    }
  }

LABEL_33:
}

void __37__SFServiceSession_pairVerify_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v8 = @"pd";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 _sendFrameType:19 unencryptedObject:v6];

  v7 = *MEMORY[0x1E69E9840];
}

void __37__SFServiceSession_pairVerify_start___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _pairVerifyCompleted:NSErrorToOSStatus()];
  if (v2)
  {
    v3 = *(a1 + 32);
    v7 = @"er";
    v4 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 _sendFrameType:19 unencryptedObject:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6
{
  OUTLINED_FUNCTION_7_2();
  v7 = v6;
  dispatch_assert_queue_V2(*(v6 + 8));
  v8 = *(v7 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(v7 + 16) = 0;
  }

  v9 = MEMORY[0x1E6999598];
  v10 = *MEMORY[0x1E6999598];
  v11 = CryptoAEADCreate();
  *(v7 + 16) = v11;
  if (v11)
  {
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v12 = *(v7 + 40);
    if (v12)
    {
      CFRelease(v12);
      *(v7 + 40) = 0;
    }

    v13 = *v9;
    v14 = CryptoAEADCreate();
    *(v7 + 40) = v14;
    if (v14)
    {
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      v15 = **(v7 + 160);
      if (v15 <= 30)
      {
        if (v15 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 0;
          }

          v17 = *(v7 + 160);
        }

        LogPrintF();
      }
    }
  }

  return 0;
}

- (void)receivedEncryptedData:type:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_1_18(v2);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v1 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (void)receivedUnencryptedData:type:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_1_18(v2);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v1 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (int)_receivedResponseID:(uint64_t)a1 object:flags:.cold.1(uint64_t a1)
{
  result = *(a1 + 160);
  if (*result <= 50)
  {
    OUTLINED_FUNCTION_5_7();
    if (!v3)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a1 + 160);
      return LogPrintF();
    }
  }

  return result;
}

- (int)_receivedResponseID:(uint64_t)a1 object:flags:.cold.2(uint64_t a1)
{
  result = *(a1 + 160);
  if (*result <= 50)
  {
    OUTLINED_FUNCTION_5_7();
    if (!v3)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a1 + 160);
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)receivedStartRequest:(uint64_t)a3 .cold.1(unsigned int **a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_2_17(*a1);
  if (v11 ^ v12 | v10)
  {
    v13 = v8;
    if (v9 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v14 = *a1;
    }

    v15 = *v13;
    result = LogPrintF();
  }

LABEL_6:
  *a4 = a3;
  return result;
}

- (void)sendEncryptedObject:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_1_18(v2);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v1 + 160);
    }

    LogPrintF();
  }

LABEL_6:
}

- (uint64_t)sendEncryptedObject:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  result = OUTLINED_FUNCTION_2_17(*(v3 + 160));
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v5;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v11 = *(v2 + 160);
      v12 = *v10;
    }

    result = LogPrintF();
  }

LABEL_6:
  *v0 = v1;
  return result;
}

- (uint64_t)sendEncryptedObject:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  result = OUTLINED_FUNCTION_2_17(*(a1 + 160));
  if (v9 ^ v10 | v8)
  {
    v11 = v6;
    if (v7 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 160);
    }

    v13 = *v11;
    result = LogPrintF();
  }

LABEL_6:
  *a3 = 0;
  return result;
}

- (uint64_t)sendEncryptedObject:.cold.4()
{
  OUTLINED_FUNCTION_3_13();
  result = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *(v1 + 160);
    }

    result = LogPrintF();
  }

LABEL_6:
  *v0 = 0;
  return result;
}

- (uint64_t)sendEncryptedObject:.cold.5()
{
  OUTLINED_FUNCTION_3_13();
  result = OUTLINED_FUNCTION_1_18(v2);
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *(v1 + 160);
    }

    result = LogPrintF();
  }

LABEL_6:
  *v0 = 0;
  return result;
}

- (uint64_t)pairSetup:(uint64_t)a3 start:(void *)a4 .cold.1(unsigned int **a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_2_17(*a1);
  if (v10 ^ v11 | v9)
  {
    if (v8 == -1)
    {
      result = OUTLINED_FUNCTION_8_3();
      if (!result)
      {
        goto LABEL_6;
      }

      v12 = *a1;
      v13 = *v4;
    }

    result = LogPrintF();
  }

LABEL_6:
  *a4 = 0;
  return result;
}

- (uint64_t)pairSetup:start:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  result = OUTLINED_FUNCTION_2_17(*v3);
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v5;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v11 = *v2;
      v12 = *v10;
    }

    result = LogPrintF();
  }

LABEL_6:
  *v0 = v1;
  return result;
}

- (uint64_t)pairSetup:(_DWORD *)a1 start:(unsigned int *)a2 .cold.3(_DWORD *a1, unsigned int **a2)
{
  *a1 = -6762;
  OUTLINED_FUNCTION_2_17(*a2);
  if (!(v6 ^ v7 | v5))
  {
    return 1;
  }

  v8 = v3;
  if (v4 == -1)
  {
    if (!OUTLINED_FUNCTION_8_3())
    {
      goto LABEL_6;
    }

    v10 = *v2;
  }

  LogPrintF();
LABEL_6:
  result = 0;
  *v8 = 0;
  return result;
}

- (uint64_t)pairVerify:(uint64_t)a3 start:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_2_17(*(a1 + 160));
  if (v10 ^ v11 | v9)
  {
    if (v8 == -1)
    {
      result = OUTLINED_FUNCTION_8_3();
      if (!result)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 160);
      v13 = *v4;
    }

    result = LogPrintF();
  }

LABEL_6:
  *a4 = 0;
  return result;
}

- (uint64_t)pairVerify:start:.cold.2()
{
  OUTLINED_FUNCTION_4_8();
  result = OUTLINED_FUNCTION_2_17(*(v3 + 160));
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v5;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v11 = *(v2 + 160);
      v12 = *v10;
    }

    result = LogPrintF();
  }

LABEL_6:
  *v0 = v1;
  return result;
}

- (uint64_t)pairVerify:(void *)a3 start:.cold.3(_DWORD *a1, uint64_t a2, void *a3)
{
  *a1 = -6762;
  result = OUTLINED_FUNCTION_2_17(*(a2 + 160));
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      result = OUTLINED_FUNCTION_8_3();
      if (!result)
      {
        goto LABEL_6;
      }

      v10 = *(v3 + 160);
    }

    result = LogPrintF();
  }

LABEL_6:
  *a3 = 0;
  return result;
}

@end