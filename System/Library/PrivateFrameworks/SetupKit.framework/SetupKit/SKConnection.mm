@interface SKConnection
- (NSString)description;
- (SKConnection)init;
- (id)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen error:(id *)error;
- (void)_abortRequestsWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_clientConnectCompleted:(id)completed;
- (void)_clientConnectStart;
- (void)_clientConnectStartBLE;
- (void)_clientError:(id)error;
- (void)_clientPairSetupCompleted:(id)completed;
- (void)_clientPairSetupContinueWithData:(id)data;
- (void)_clientPairSetupStart;
- (void)_clientPairSetupStartReverse;
- (void)_clientPairVerifyCompleted:(id)completed;
- (void)_clientPairVerifyStart;
- (void)_clientPairVerifyWithData:(id)data;
- (void)_clientRun;
- (void)_invalidateCore:(id)core;
- (void)_invalidateWithError:(id)error;
- (void)_invalidated;
- (void)_pairSetupInvalidate;
- (void)_pairVerifyInvalidate;
- (void)_processSends;
- (void)_receiveCompletion:(id)completion;
- (void)_receiveStart:(id)start;
- (void)_receivedEvent:(id)event;
- (void)_receivedHeader:(id *)header body:(id)body;
- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data;
- (void)_receivedHeader:(id *)header unencryptedObjectData:(id)data;
- (void)_receivedObject:(id)object;
- (void)_receivedRequest:(id)request;
- (void)_receivedResponse:(id)response;
- (void)_run;
- (void)_sendHeaderData:(id)data bodyData:(id)bodyData completion:(id)completion;
- (void)_sendRequestID:(id)d request:(id)request options:(id)options sendEntry:(id)entry responseHandler:(id)handler;
- (void)_sendResponse:(id)response error:(id)error xid:(id)xid requestID:(id)d completion:(id)completion;
- (void)_serverAccept;
- (void)_serverAcceptBLE;
- (void)_serverError:(id)error;
- (void)_serverPairSetupCompleted:(id)completed;
- (void)_serverPairSetupContinueWithData:(id)data start:(BOOL)start;
- (void)_serverPairVerifyCompleted:(id)completed;
- (void)_serverPairVerifyContinueWithData:(id)data start:(BOOL)start;
- (void)_serverRun;
- (void)_timeoutForSendEntry:(id)entry;
- (void)_timeoutForXID:(id)d;
- (void)_updateExternalState;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)receivedData:(id)data;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)setLabel:(id)label;
- (void)tryPassword:(id)password;
- (void)updatePasswordType:(int)type;
@end

@implementation SKConnection

- (void)_receivedResponse:(id)response
{
  responseCopy = response;
  v5 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v5 unsignedIntValue];
  if (unsignedIntValue)
  {
    v7 = unsignedIntValue;
    v8 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = v8;
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v5];
      timer = [v9 timer];
      [v9 setTimer:0];
      if (timer)
      {
        dispatch_source_cancel(timer);
      }

      CFDictionaryGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      if (!v11)
      {
        var0 = self->_ucat->var0;
        if (var0 > 90)
        {
          goto LABEL_19;
        }

        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          v25 = self->_ucat;
        }

        v13 = CUPrintErrorCode();
        LogPrintF();
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      mach_absolute_time();
      [v9 sendTicks];
      v12 = UpTicksToMilliseconds();
      v13 = CUDecodeNSErrorDictionary();
      v14 = self->_ucat->var0;
      if (v13)
      {
        if (v14 <= 90)
        {
          if (v14 == -1)
          {
            v15 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_14;
            }

            v26 = self->_ucat;
          }

          CUPrintNSError();
          v31 = v30 = v12;
          v29 = v7;
          LogPrintF();
        }

LABEL_14:
        responseHandler = [v9 responseHandler];
        v17 = responseHandler[2];
LABEL_17:
        v17();

        goto LABEL_18;
      }

      if (v14 <= 30)
      {
        if (v14 == -1)
        {
          v18 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v27 = self->_ucat;
        }

        v29 = v7;
        v30 = v12;
        LogPrintF();
      }

LABEL_16:
      responseHandler = [v9 responseHandler];
      v17 = responseHandler[2];
      goto LABEL_17;
    }

    v20 = self->_ucat->var0;
    if (v20 <= 90)
    {
      if (v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        v28 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_34:
    v9 = 0;
    goto LABEL_20;
  }

  v19 = self->_ucat->var0;
  if (v19 > 90)
  {
    goto LABEL_21;
  }

  if (v19 == -1)
  {
    v22 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v23 = self->_ucat;
  }

  v9 = CUPrintErrorCode();
  LogPrintF();
LABEL_20:

LABEL_21:
}

- (void)_receivedRequest:(id)request
{
  requestCopy = request;
  v34 = 0;
  v5 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v5 unsignedIntValue];
  if (unsignedIntValue)
  {
    v7 = unsignedIntValue;
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      CFDictionaryGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      var0 = self->_ucat->var0;
      if (v9)
      {
        v11 = v9;
        if (var0 > 30)
        {
          goto LABEL_8;
        }

        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
LABEL_8:
            if ([v8 isEqual:{@"_ping", v28, v29, v30}])
            {
              [(SKConnection *)self _sendResponse:v11 error:0 xid:v5 requestID:v8 completion:&__block_literal_global_283];
LABEL_18:

              goto LABEL_19;
            }

            v13 = MEMORY[0x26676A4C0](self->_receivedRequestHandler);
            v14 = v13;
            if (v13)
            {
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __33__SKConnection__receivedRequest___block_invoke_3;
              v32[3] = &unk_279BB7BF8;
              v32[4] = self;
              v32[5] = v8;
              v33 = v7;
              v32[6] = v5;
              (*(v13 + 16))(v13, v8, v11, 0, v32);
LABEL_17:

              goto LABEL_18;
            }

            v15 = self->_ucat->var0;
            if (v15 <= 90)
            {
              if (v15 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_16;
                }

                v25 = self->_ucat;
              }

              LogPrintF();
            }

LABEL_16:
            v16 = *MEMORY[0x277CCA590];
            v17 = NSErrorF_safe();
            [(SKConnection *)self _sendResponse:0 error:v17 xid:v5 requestID:v8 completion:&__block_literal_global_287];

            goto LABEL_17;
          }

          v24 = self->_ucat;
        }

        v29 = v7;
        v30 = [v11 count];
        v28 = v8;
        LogPrintF();
        goto LABEL_8;
      }

      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          v23 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_35;
          }

          v27 = self->_ucat;
        }

        v31 = CUPrintErrorCode();
        LogPrintF();
      }

LABEL_35:
      v11 = 0;
      goto LABEL_18;
    }

    v19 = self->_ucat->var0;
    if (v19 <= 90)
    {
      if (v19 != -1)
      {
LABEL_26:
        v11 = CUPrintErrorCode();
        LogPrintF();
        goto LABEL_18;
      }

      v22 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v26 = self->_ucat;
        goto LABEL_26;
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

  v18 = self->_ucat->var0;
  if (v18 > 90)
  {
    goto LABEL_20;
  }

  if (v18 == -1)
  {
    v20 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_20;
    }

    v21 = self->_ucat;
  }

  v8 = CUPrintErrorCode();
  LogPrintF();
LABEL_19:

LABEL_20:
}

void __33__SKConnection__receivedRequest___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  if (*(v12 + 52) != 1)
  {
    [v12 _sendResponse:v17 error:v10 xid:*(a1 + 48) requestID:*(a1 + 40) completion:v11];
    goto LABEL_3;
  }

  v13 = **(v12 + 144);
  if (v13 <= 90)
  {
    if (v13 != -1)
    {
LABEL_8:
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      LogPrintF();
      goto LABEL_3;
    }

    if (_LogCategory_Initialize())
    {
      v14 = *(*(a1 + 32) + 144);
      goto LABEL_8;
    }
  }

LABEL_3:
}

- (void)_receivedEvent:(id)event
{
  eventCopy = event;
  CFDictionaryGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      v7 = NSDictionaryGetNSNumber();
      [v7 unsignedIntValue];
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_7;
          }

          v17 = self->_ucat;
        }

        [v5 count];
        LogPrintF();
      }

LABEL_7:
      v10 = MEMORY[0x26676A4C0](self->_receivedEventHandler);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10, v6, v5, 0);
      }

      goto LABEL_10;
    }

    v13 = self->_ucat->var0;
    if (v13 <= 90)
    {
      if (v13 != -1)
      {
LABEL_18:
        v7 = CUPrintErrorCode();
        LogPrintF();
LABEL_10:

        goto LABEL_11;
      }

      v16 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v18 = self->_ucat;
        goto LABEL_18;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v12 = self->_ucat->var0;
  if (v12 > 90)
  {
    goto LABEL_12;
  }

  if (v12 == -1)
  {
    v14 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    v15 = self->_ucat;
  }

  v6 = CUPrintErrorCode();
  LogPrintF();
LABEL_11:

LABEL_12:
}

- (void)_receivedObject:(id)object
{
  objectCopy = object;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 3)
  {
    p_var0 = [(SKConnection *)self _receivedResponse:objectCopy];
    goto LABEL_10;
  }

  if (Int64Ranged == 2)
  {
    p_var0 = [(SKConnection *)self _receivedRequest:objectCopy];
    goto LABEL_10;
  }

  v5 = objectCopy;
  if (Int64Ranged == 1)
  {
    p_var0 = [(SKConnection *)self _receivedEvent:objectCopy];
LABEL_10:
    v5 = objectCopy;
    goto LABEL_11;
  }

  p_var0 = &self->_ucat->var0;
  if (*p_var0 > 60)
  {
    goto LABEL_11;
  }

  if (*p_var0 != -1)
  {
LABEL_9:
    p_var0 = LogPrintF();
    goto LABEL_10;
  }

  p_var0 = _LogCategory_Initialize();
  v5 = objectCopy;
  if (p_var0)
  {
    ucat = self->_ucat;
    goto LABEL_9;
  }

LABEL_11:

  MEMORY[0x2821F96F8](p_var0, v5);
}

- (void)_receivedHeader:(id *)header unencryptedObjectData:(id)data
{
  dataCopy = data;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__243;
  v30 = __Block_byref_object_dispose__244;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__SKConnection__receivedHeader_unencryptedObjectData___block_invoke;
  v25[3] = &unk_279BB8670;
  v25[4] = self;
  v25[5] = &v26;
  v7 = MEMORY[0x26676A4C0](v25);
  v8 = OPACKDecodeData();
  if (!v8)
  {
    v16 = *MEMORY[0x277CCA590];
    v17 = NSErrorF_safe();
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = *MEMORY[0x277CCA590];
    v21 = NSErrorF_safe();
    v22 = v27[5];
    v27[5] = v21;

    goto LABEL_17;
  }

  var0 = header->var0;
  v10 = self->_ucat->var0;
  if (var0 == 8)
  {
    if (v10 > 50)
    {
      goto LABEL_12;
    }

    if (v10 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        pairSetupConfigHandler = self->_pairSetupConfigHandler;
        if (pairSetupConfigHandler)
        {
          pairSetupConfigHandler[2](pairSetupConfigHandler, v8);
        }

        goto LABEL_17;
      }

      v23 = self->_ucat;
    }

    v24 = CUPrintNSObjectOneLine();
    LogPrintF();

    goto LABEL_12;
  }

  if (v10 <= 90)
  {
    if (v10 == -1)
    {
      v14 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v15 = self->_ucat;
      var0 = header->var0;
    }

    if (var0 <= 8)
    {
      v11 = off_279BB7D50[var0];
    }

    [dataCopy length];
    LogPrintF();
  }

LABEL_17:

  v7[2](v7);
  _Block_object_dispose(&v26, 8);
}

void __54__SKConnection__receivedHeader_unencryptedObjectData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = **(*(a1 + 32) + 144);
    if (v2 <= 90)
    {
      if (v2 == -1)
      {
        v3 = *(*(a1 + 32) + 144);
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v4 = *(*(a1 + 32) + 144);
        v5 = *(*(*(a1 + 40) + 8) + 40);
      }

      v6 = CUPrintNSError();
      LogPrintF();
    }
  }
}

- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data
{
  dataCopy = data;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__243;
  v28 = __Block_byref_object_dispose__244;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__SKConnection__receivedHeader_encryptedObjectData___block_invoke;
  v23[3] = &unk_279BB8670;
  v23[4] = self;
  v23[5] = &v24;
  v7 = MEMORY[0x26676A4C0](v23);
  v8 = self->_mainStream;
  v9 = v8;
  if (v8)
  {
    v10 = (v25 + 5);
    obj = v25[5];
    v11 = [(CUPairingStream *)v8 decryptData:dataCopy aadBytes:header aadLength:4 error:&obj];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      v12 = OPACKDecodeData();
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SKConnection *)self _receivedObject:v12];
        }

        else
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = *MEMORY[0x277CCA590];
          v20 = NSErrorF_safe();
          v21 = v25[5];
          v25[5] = v20;
        }
      }

      else
      {
        v15 = *MEMORY[0x277CCA590];
        v16 = NSErrorF_safe();
      }
    }
  }

  else
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    v11 = v25[5];
    v25[5] = v14;
  }

  v7[2](v7);
  _Block_object_dispose(&v24, 8);
}

void __52__SKConnection__receivedHeader_encryptedObjectData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = **(*(a1 + 32) + 144);
    if (v2 <= 90)
    {
      if (v2 == -1)
      {
        v3 = *(*(a1 + 32) + 144);
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v4 = *(*(a1 + 32) + 144);
        v5 = *(*(*(a1 + 40) + 8) + 40);
      }

      v6 = CUPrintNSError();
      LogPrintF();
    }
  }
}

- (void)_receivedHeader:(id *)header body:(id)body
{
  bodyCopy = body;
  var0 = header->var0;
  v37 = bodyCopy;
  v8 = [bodyCopy length];
  if (var0 == 5)
  {
    v9 = 10;
  }

  else
  {
    v9 = 30;
  }

  v10 = self->_ucat->var0;
  if (v9 >= v10)
  {
    v11 = v8;
    if (v10 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v14 = self->_ucat;
    }

    if (var0 > 8)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_279BB7D50[var0];
    }

    v15 = CUPrintNSDataHex();
    v16 = v15;
    v17 = "";
    if (v11 > 0x10)
    {
      v17 = "...";
    }

    v35 = v15;
    v36 = v17;
    v33 = v12;
    v34 = v11;
    v32 = var0;
    LogPrintF();
  }

LABEL_14:
  if (var0 > 4)
  {
    if (var0 <= 6)
    {
      if (var0 == 5)
      {
        [(SKConnection *)self _receivedHeader:header encryptedObjectData:v37];
        goto LABEL_52;
      }

      if (self->_clientMode)
      {
        v18 = self->_ucat->var0;
        if (v18 > 60)
        {
          goto LABEL_52;
        }

        if (v18 != -1)
        {
          goto LABEL_51;
        }

        if (_LogCategory_Initialize())
        {
          v30 = self->_ucat;
LABEL_51:
          LogPrintF();
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      selfCopy2 = self;
      v25 = v37;
      v26 = 1;
LABEL_43:
      [(SKConnection *)selfCopy2 _serverPairVerifyContinueWithData:v25 start:v26, v32, v33, v34, v35, v36];
      goto LABEL_52;
    }

    if (var0 == 7)
    {
      selfCopy2 = self;
      if (self->_clientMode)
      {
        [(SKConnection *)self _clientPairVerifyWithData:v37];
        goto LABEL_52;
      }

      v25 = v37;
      v26 = 0;
      goto LABEL_43;
    }

    if (var0 == 8)
    {
      [(SKConnection *)self _receivedHeader:header unencryptedObjectData:v37];
      goto LABEL_52;
    }

LABEL_30:
    v22 = self->_ucat->var0;
    if (v22 > 60)
    {
      goto LABEL_52;
    }

    if (v22 == -1)
    {
      v28 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_52;
      }

      v29 = self->_ucat;
    }

    if (var0 <= 8)
    {
      v23 = off_279BB7D08[var0];
    }

    [v37 length];
    goto LABEL_51;
  }

  if (var0 == 1)
  {
    goto LABEL_52;
  }

  if (var0 != 2)
  {
    if (var0 != 3)
    {
      goto LABEL_30;
    }

    if (self->_clientMode && !self->_reversePairing)
    {
      [(SKConnection *)self _clientPairSetupContinueWithData:v37];
      goto LABEL_52;
    }

    selfCopy4 = self;
    v20 = v37;
    v21 = 0;
LABEL_40:
    [(SKConnection *)selfCopy4 _serverPairSetupContinueWithData:v20 start:v21, v32, v33, v34, v35, v36];
    goto LABEL_52;
  }

  if (!self->_clientMode || self->_reversePairing)
  {
    selfCopy4 = self;
    v20 = v37;
    v21 = 1;
    goto LABEL_40;
  }

  v27 = self->_ucat->var0;
  if (v27 > 60)
  {
    goto LABEL_52;
  }

  if (v27 != -1)
  {
    goto LABEL_51;
  }

  if (_LogCategory_Initialize())
  {
    v31 = self->_ucat;
    goto LABEL_51;
  }

LABEL_52:
}

- (void)_receiveCompletion:(id)completion
{
  completionCopy = completion;
  self->_readRequested = 0;
  error = [completionCopy error];
  v6 = error;
  if (!error)
  {
    v9 = [completionCopy length];
    bufferData = [completionCopy bufferData];
    [bufferData setLength:v9];

    if (self->_receivingHeader)
    {
      data = [completionCopy data];
      if ([data length] <= 3)
      {
        var0 = self->_ucat->var0;
        if (var0 <= 90)
        {
          if (var0 == -1)
          {
            ucat = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_36;
            }

            v30 = self->_ucat;
          }

          [data length];
          LogPrintF();
        }

LABEL_36:

        goto LABEL_37;
      }

      bytes = [data bytes];
      v13 = *bytes;
      self->_frameHeader = *bytes;
      v14 = (*&v13 << 8) & 0xFF0000 | (*&v13 >> 8) & 0xFF00 | v13.frameLen[2];
      v15 = self->_ucat->var0;
      if (v14)
      {
        if (v15 <= 10)
        {
          if (v15 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_31;
            }

            v31 = self->_ucat;
          }

          v33 = v14;
          LogPrintF();
        }

LABEL_31:
        self->_receivingHeader = 0;
        [completionCopy setMinLength:{v14, v33}];
        [completionCopy setMaxLength:v14];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __35__SKConnection__receiveCompletion___block_invoke;
        v34[3] = &unk_279BB8648;
        v34[4] = self;
        v23 = completionCopy;
        v35 = v23;
        [v23 setCompletion:v34];
        [(CUReadWriteRequestable *)self->_requestable readWithRequest:v23];
        self->_readRequested = 1;

        goto LABEL_36;
      }

      if (v15 <= 10)
      {
        if (v15 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_35;
          }

          v32 = self->_ucat;
        }

        LogPrintF();
      }

LABEL_35:
      data2 = [MEMORY[0x277CBEA90] data];
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data2];

      [(SKConnection *)self _receiveStart:completionCopy];
      goto LABEL_36;
    }

    v16 = self->_ucat->var0;
    if (v16 <= 10)
    {
      if (v16 == -1)
      {
        v20 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v28 = self->_ucat;
      }

      v33 = [completionCopy length];
      LogPrintF();
    }

LABEL_26:
    data3 = [completionCopy data];
    if (data3)
    {
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data3];
    }

    else
    {
      data4 = [MEMORY[0x277CBEA90] data];
      [(SKConnection *)self _receivedHeader:&self->_frameHeader body:data4];
    }

    [(SKConnection *)self _receiveStart:completionCopy];
    goto LABEL_37;
  }

  if ([error code] != -6753 && objc_msgSend(v6, "code") != -71148 && objc_msgSend(v6, "code") != -71143)
  {
    v19 = self->_ucat->var0;
    if (v19 > 90)
    {
      goto LABEL_37;
    }

    if (v19 == -1)
    {
      v24 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v25 = self->_ucat;
    }

LABEL_7:
    v8 = CUPrintNSError();
    LogPrintF();

    goto LABEL_37;
  }

  v7 = self->_ucat->var0;
  if (v7 <= 30)
  {
    if (v7 == -1)
    {
      v17 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v18 = self->_ucat;
    }

    goto LABEL_7;
  }

LABEL_37:
}

- (void)_receiveStart:(id)start
{
  startCopy = start;
  v5 = startCopy;
  if (!startCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277D02908]);
  }

  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_7:
  self->_receivingHeader = 1;
  [v5 setMinLength:4];
  [v5 setMaxLength:4];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __30__SKConnection__receiveStart___block_invoke;
  v12 = &unk_279BB8648;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  [v7 setCompletion:&v9];
  [(CUReadWriteRequestable *)self->_requestable readWithRequest:v7, v9, v10, v11, v12, selfCopy];
  self->_readRequested = 1;
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SKConnection_receivedData___block_invoke;
  v7[3] = &unk_279BB8648;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

void __29__SKConnection_receivedData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 <= 3)
  {
    v4 = **(*(a1 + 40) + 144);
    if (v4 > 90)
    {
      return;
    }

    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v5 = *(*(a1 + 40) + 144);
    }

    LogPrintF();
    return;
  }

  v3 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) subdataWithRange:{4, v2 - 4}];
  [*(a1 + 40) _receivedHeader:v3 body:v6];
}

- (void)_timeoutForXID:(id)d
{
  dCopy = d;
  unsignedIntValue = [dCopy unsignedIntValue];
  v5 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:dCopy];
    mach_absolute_time();
    [v5 sendTicks];
    UpTicksToSecondsF();
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      v8 = v6;
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      v16 = v8;
      v15 = unsignedIntValue;
      LogPrintF();
    }

LABEL_6:
    responseHandler = [v5 responseHandler];
    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF_safe();
    (responseHandler)[2](responseHandler, 0, 0, v11);

    goto LABEL_7;
  }

  v12 = self->_ucat->var0;
  if (v12 <= 90)
  {
    if (v12 != -1)
    {
LABEL_12:
      LogPrintF();
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_12;
    }
  }

LABEL_7:
}

- (void)_timeoutForSendEntry:(id)entry
{
  entryCopy = entry;
  xidObj = [entryCopy xidObj];
  if (xidObj)
  {
    [(SKConnection *)self _timeoutForXID:xidObj];
    goto LABEL_15;
  }

  mach_absolute_time();
  [entryCopy queueTicks];
  UpTicksToSecondsF();
  v6 = v5;
  v7 = [(NSMutableArray *)self->_sendArray indexOfObject:entryCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v7];
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      v11 = entryCopy;
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v17 = self->_ucat;
        v11 = entryCopy;
      }

      [v11 requestID];
      v18 = v19 = v6;
      LogPrintF();
    }

LABEL_13:
    responseHandler = [entryCopy responseHandler];
    v15 = *MEMORY[0x277CCA590];
    v16 = NSErrorF_safe();
    (responseHandler)[2](responseHandler, 0, 0, v16);

    goto LABEL_14;
  }

  v8 = self->_ucat->var0;
  if (v8 > 90)
  {
    goto LABEL_15;
  }

  if (v8 == -1)
  {
    v12 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v13 = self->_ucat;
  }

  responseHandler = [entryCopy requestID];
  LogPrintF();
LABEL_14:

LABEL_15:
}

- (void)_abortRequestsWithError:(id)error
{
  errorCopy = error;
  requests = self->_requests;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__SKConnection__abortRequestsWithError___block_invoke;
  v10 = &unk_279BB7BD0;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_requests removeAllObjects:v7];
}

void __40__SKConnection__abortRequestsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 144);
  if (v6 <= 60)
  {
    if (v6 != -1)
    {
LABEL_3:
      v7 = [v15 unsignedIntValue];
      v8 = *(a1 + 40);
      CUPrintNSError();
      v14 = v13 = v7;
      LogPrintF();

      goto LABEL_5;
    }

    v9 = *(*(a1 + 32) + 144);
    if (_LogCategory_Initialize())
    {
      v12 = *(*(a1 + 32) + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = [v5 timer];
  [v5 setTimer:0];
  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  v11 = [v5 responseHandler];
  [v5 setResponseHandler:0];
  if (v11)
  {
    v11[2](v11, 0, 0, *(a1 + 40));
  }
}

- (void)_processSends
{
  popFirstObject = [(NSMutableArray *)self->_sendArray popFirstObject];
  if (popFirstObject)
  {
    popFirstObject2 = popFirstObject;
    do
    {
      eventID = [popFirstObject2 eventID];
      if (eventID)
      {
        eventData = [popFirstObject2 eventData];
        v7 = eventData;
        if (eventData)
        {
          data = eventData;
        }

        else
        {
          data = [MEMORY[0x277CBEA90] data];
        }

        v10 = data;

        completion = [popFirstObject2 completion];
        v15 = completion;
        if (!completion)
        {
          completion = &__block_literal_global_243;
        }

        v16 = MEMORY[0x26676A4C0](completion);

        v17 = [popFirstObject2 xid];
        options = [popFirstObject2 options];
        [(SKConnection *)self _sendEventID:eventID data:v10 xid:v17 options:options completion:v16];

        goto LABEL_20;
      }

      requestID = [popFirstObject2 requestID];
      if (requestID)
      {
        v10 = requestID;
        request = [popFirstObject2 request];
        v12 = request;
        if (request)
        {
          dictionary = request;
        }

        else
        {
          dictionary = [MEMORY[0x277CBEAC0] dictionary];
        }

        v20 = dictionary;

        responseHandler = [popFirstObject2 responseHandler];
        options2 = [popFirstObject2 options];
        [(SKConnection *)self _sendRequestID:v10 request:v20 options:options2 sendEntry:popFirstObject2 responseHandler:responseHandler];

        goto LABEL_20;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_19:
      v10 = 0;
LABEL_20:

      popFirstObject2 = [(NSMutableArray *)self->_sendArray popFirstObject];
    }

    while (popFirstObject2);
  }
}

- (void)_sendHeaderData:(id)data bodyData:(id)bodyData completion:(id)completion
{
  v28[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bodyDataCopy = bodyData;
  completionCopy = completion;
  v11 = self->_requestable;
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D02960]);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __52__SKConnection__sendHeaderData_bodyData_completion___block_invoke;
    v24 = &unk_279BB82D0;
    v25 = v12;
    v26 = completionCopy;
    [v12 setCompletion:&v21];
    if ([bodyDataCopy length])
    {
      v28[0] = dataCopy;
      v28[1] = bodyDataCopy;
      v13 = MEMORY[0x277CBEA60];
      v14 = v28;
      v15 = 2;
    }

    else
    {
      v27 = dataCopy;
      v13 = MEMORY[0x277CBEA60];
      v14 = &v27;
      v15 = 1;
    }

    v18 = [v13 arrayWithObjects:v14 count:v15];
    [v12 setDataArray:v18];

    [(CUReadWriteRequestable *)v11 writeWithRequest:v12];
  }

  else
  {
    v12 = MEMORY[0x26676A4C0](self->_sendDataHandler);
    if (v12)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v16 appendData:dataCopy];
      if ([bodyDataCopy length])
      {
        [v16 appendData:bodyDataCopy];
      }

      (*(v12 + 2))(v12, v16);
      v17 = 0;
    }

    else
    {
      v19 = *MEMORY[0x277CCA590];
      v17 = NSErrorF_safe();
      v16 = v17;
    }

    (*(completionCopy + 2))(completionCopy, v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__SKConnection__sendHeaderData_bodyData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = *(a1 + 40);
  v6 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorNestedF();
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

- (void)_sendResponse:(id)response error:(id)error xid:(id)xid requestID:(id)d completion:(id)completion
{
  responseCopy = response;
  errorCopy = error;
  xidCopy = xid;
  dCopy = d;
  completionCopy = completion;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__243;
  v66 = __Block_byref_object_dispose__244;
  v67 = 0;
  unsignedIntValue = [xidCopy unsignedIntValue];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __61__SKConnection__sendResponse_error_xid_requestID_completion___block_invoke;
  v58[3] = &unk_279BB7BA8;
  v60 = &v62;
  v58[4] = self;
  v61 = unsignedIntValue;
  v54 = completionCopy;
  v59 = v54;
  v53 = MEMORY[0x26676A4C0](v58);
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = v18;
  if (errorCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = responseCopy == 0;
  }

  if (v20)
  {
    v21 = MEMORY[0x277CBEC10];
  }

  else
  {
    v21 = responseCopy;
  }

  [v18 setObject:v21 forKeyedSubscript:&unk_28776E120];
  [v19 setObject:&unk_28776E1B0 forKeyedSubscript:&unk_28776E150];
  [v19 setObject:xidCopy forKeyedSubscript:&unk_28776E180];
  if (errorCopy)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v43 = self->_ucat;
      }

      CUPrintNSError();
      v45 = v44 = unsignedIntValue;
      LogPrintF();
    }

LABEL_12:
    CUEncodeNSErrorDictionary();
  }

  v49 = unsignedIntValue;
  v52 = dCopy;
  v57 = 0;
  v24 = MEMORY[0x26676A090](v19, 0, &v57);
  v25 = v24;
  if (!v24)
  {
    v35 = *MEMORY[0x277CCA590];
    v36 = NSErrorF_safe();
    v37 = v63[5];
    v63[5] = v36;

    goto LABEL_24;
  }

  v56[0] = 5;
  v26 = self->_mainAuthTagLength + [v24 length];
  if (v26 >> 24)
  {
    v38 = *MEMORY[0x277CCA590];
    v39 = NSErrorF_safe();
    v27 = v63[5];
    v63[5] = v39;
    goto LABEL_23;
  }

  v56[1] = BYTE2(v26);
  v56[2] = BYTE1(v26);
  v56[3] = v26;
  v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v56 length:4];
  v28 = self->_mainStream;
  v29 = v28;
  v50 = xidCopy;
  v51 = responseCopy;
  if (!v28)
  {
    v40 = *MEMORY[0x277CCA590];
    v41 = NSErrorF_safe();
    v31 = v63[5];
    v63[5] = v41;
    goto LABEL_22;
  }

  v30 = v63;
  obj = v63[5];
  v31 = [(CUPairingStream *)v28 encryptData:v25 aadData:v27 error:&obj];
  objc_storeStrong(v30 + 5, obj);
  if (v31)
  {
    v32 = self->_ucat->var0;
    if (v32 <= 30)
    {
      if (v32 != -1)
      {
LABEL_19:
        v33 = CUPrintNSObject();
        v48 = CUPrintNSError();
        LogPrintF();

        [(SKConnection *)self _sendHeaderData:v27 bodyData:v31 completion:v54, v49, v33, v26, v48];
        goto LABEL_22;
      }

      v34 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v42 = self->_ucat;
        goto LABEL_19;
      }
    }

    [(SKConnection *)self _sendHeaderData:v27 bodyData:v31 completion:v54, v44, v45, v46, v47];
  }

LABEL_22:

  xidCopy = v50;
  responseCopy = v51;
LABEL_23:

LABEL_24:
  v53[2](v53);

  _Block_object_dispose(&v62, 8);
}

uint64_t __61__SKConnection__sendResponse_error_xid_requestID_completion___block_invoke(uint64_t a1)
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
    if (v4 == -1)
    {
      v6 = *(*(a1 + 32) + 144);
      v7 = _LogCategory_Initialize();
      v2 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_7;
      }

      v10 = *(*(a1 + 32) + 144);
      v11 = *(*(v2 + 8) + 40);
    }

    v5 = *(a1 + 56);
    v12 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 48);
  }

LABEL_7:
  v8 = *(*(v2 + 8) + 40);
  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)_sendRequestID:(id)d request:(id)request options:(id)options sendEntry:(id)entry responseHandler:(id)handler
{
  v71[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  entryCopy = entry;
  handlerCopy = handler;
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v15 = xidLast + 1;
  }

  else
  {
    v15 = 1;
  }

  self->_xidLast = v15;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__243;
  v68 = __Block_byref_object_dispose__244;
  v69 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke;
  v59[3] = &unk_279BB7B58;
  v62 = &v64;
  v59[4] = self;
  v53 = dCopy;
  v60 = v53;
  v63 = v15;
  v49 = handlerCopy;
  v61 = v49;
  v48 = MEMORY[0x26676A4C0](v59);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
  v70[0] = &unk_28776E120;
  v70[1] = &unk_28776E138;
  v71[0] = requestCopy;
  v71[1] = v53;
  v70[2] = &unk_28776E150;
  v70[3] = &unk_28776E180;
  v71[2] = &unk_28776E198;
  v71[3] = v16;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:4];
  v47 = v58 = 0;
  v17 = MEMORY[0x26676A090](v47, 0, &v58);
  v18 = v17;
  v51 = v16;
  if (!v17)
  {
    v35 = *MEMORY[0x277CCA590];
    v36 = NSErrorF_safe();
    v37 = v65[5];
    v65[5] = v36;

    goto LABEL_22;
  }

  v57 = 5;
  v19 = self->_mainAuthTagLength + [v17 length];
  if (v19 >> 24)
  {
    v38 = *MEMORY[0x277CCA590];
    v39 = NSErrorF_safe();
    v20 = v65[5];
    v65[5] = v39;
    goto LABEL_21;
  }

  BYTE1(v57) = BYTE2(v19);
  BYTE2(v57) = BYTE1(v19);
  HIBYTE(v57) = v19;
  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v57 length:4];
  v21 = self->_mainStream;
  v22 = v21;
  if (v21)
  {
    v23 = v65;
    obj = v65[5];
    v24 = [(CUPairingStream *)v21 encryptData:v18 aadData:v20 error:&obj];
    objc_storeStrong(v23 + 5, obj);
    if (v24)
    {
      v25 = objc_alloc_init(SKRequestEntry);
      [(SKRequestEntry *)v25 setOptions:optionsCopy];
      [(SKRequestEntry *)v25 setRequestID:v53];
      [(SKRequestEntry *)v25 setResponseHandler:v49];
      [(SKRequestEntry *)v25 setSendTicks:mach_absolute_time()];
      if (entryCopy)
      {
        timer = [entryCopy timer];
        [(SKRequestEntry *)v25 setTimer:timer];

        [entryCopy setXidObj:v51];
      }

      requests = self->_requests;
      if (!requests)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v29 = self->_requests;
        self->_requests = v28;

        requests = self->_requests;
      }

      [(NSMutableDictionary *)requests setObject:v25 forKeyedSubscript:v51];
      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_16;
      }

      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
LABEL_16:
          [(SKConnection *)self _sendHeaderData:v20 bodyData:v24 completion:&__block_literal_global_250, v43, v44, v45, v46];
          if (optionsCopy)
          {
            CFDictionaryGetDouble();
            if (v32 > 0.0)
            {
              v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke_2;
              handler[3] = &unk_279BB7B80;
              handler[4] = v33;
              handler[5] = self;
              handler[6] = v51;
              dispatch_source_set_event_handler(v33, handler);
              CUDispatchTimerSet();
              dispatch_activate(v33);
              [(SKRequestEntry *)v25 setTimer:v33];
            }
          }

          goto LABEL_20;
        }

        v42 = self->_ucat;
      }

      v45 = CUPrintNSObject();
      v46 = v19;
      v43 = v53;
      v44 = v15;
      LogPrintF();

      goto LABEL_16;
    }
  }

  else
  {
    v40 = *MEMORY[0x277CCA590];
    v41 = NSErrorF_safe();
    v24 = v65[5];
    v65[5] = v41;
  }

LABEL_20:

LABEL_21:
LABEL_22:

  v48[2](v48);
  _Block_object_dispose(&v64, 8);

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(*(a1 + 32) + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v7 = *(*(a1 + 32) + 144);
      v8 = _LogCategory_Initialize();
      v2 = *(a1 + 56);
      if (!v8)
      {
        goto LABEL_7;
      }

      v11 = *(*(a1 + 32) + 144);
      v12 = *(*(v2 + 8) + 40);
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v13 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 56);
  }

LABEL_7:
  v9 = *(*(v2 + 8) + 40);
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

uint64_t __73__SKConnection__sendRequestID_request_options_sendEntry_responseHandler___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForXID:v3];
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_11:
    v16 = *MEMORY[0x277CCA590];
    v17 = NSErrorF_safe();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);

    goto LABEL_18;
  }

  if ((self->_runState & 0xFFFFFFF7) == 0x14 && ![(NSMutableArray *)self->_sendArray count])
  {
    [(SKConnection *)self _sendRequestID:dCopy request:requestCopy options:optionsCopy sendEntry:0 responseHandler:handlerCopy];
    goto LABEL_18;
  }

  v15 = self->_ucat->var0;
  if (v15 <= 30)
  {
    if (v15 != -1)
    {
LABEL_9:
      v24 = dCopy;
      v25 = [(NSMutableArray *)self->_sendArray count];
      LogPrintF();
      goto LABEL_14;
    }

    v18 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v23 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_14:
  v19 = objc_alloc_init(SKSendEntry);
  [(SKSendEntry *)v19 setOptions:optionsCopy];
  [(SKSendEntry *)v19 setQueueTicks:mach_absolute_time()];
  [(SKSendEntry *)v19 setRequestID:dCopy];
  [(SKSendEntry *)v19 setRequest:requestCopy];
  [(SKSendEntry *)v19 setResponseHandler:handlerCopy];
  if (optionsCopy)
  {
    CFDictionaryGetDouble();
    if (v20 > 0.0)
    {
      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __62__SKConnection_sendRequestID_request_options_responseHandler___block_invoke;
      handler[3] = &unk_279BB7B80;
      handler[4] = v21;
      handler[5] = self;
      handler[6] = v19;
      dispatch_source_set_event_handler(v21, handler);
      CUDispatchTimerSet();
      dispatch_activate(v21);
      [(SKSendEntry *)v19 setTimer:v21];
    }
  }

  [(NSMutableArray *)self->_sendArray addObject:v19, v24, v25];

LABEL_18:
}

uint64_t __62__SKConnection_sendRequestID_request_options_responseHandler___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForSendEntry:v3];
}

uint64_t __57__SKConnection__sendEventID_data_xid_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(*(a1 + 32) + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v7 = *(*(a1 + 32) + 144);
      v8 = _LogCategory_Initialize();
      v2 = *(a1 + 56);
      if (!v8)
      {
        goto LABEL_7;
      }

      v11 = *(*(a1 + 32) + 144);
      v12 = *(*(v2 + 8) + 40);
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v13 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 56);
  }

LABEL_7:
  v9 = *(*(v2 + 8) + 40);
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  v25[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  eventCopy = event;
  dispatch_assert_queue_V2(dispatchQueue);
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v16 = xidLast + 1;
  }

  else
  {
    v16 = 1;
  }

  self->_xidLast = v16;
  v24[0] = &unk_28776E120;
  v24[1] = &unk_28776E138;
  v25[0] = eventCopy;
  v25[1] = dCopy;
  v25[2] = &unk_28776E168;
  v24[2] = &unk_28776E150;
  v24[3] = &unk_28776E180;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
  v25[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v23 = 0;
  v19 = MEMORY[0x26676A090](v18, 0, &v23);
  if (v19)
  {
    [(SKConnection *)self sendEventID:dCopy data:v19 xid:v16 options:optionsCopy completion:completionCopy];
  }

  else
  {
    v21 = *MEMORY[0x277CCA590];
    v22 = NSErrorF_safe();
    completionCopy[2](completionCopy, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_serverError:(id)error
{
  errorCopy = error;
  var0 = self->_ucat->var0;
  v9 = errorCopy;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v8 = CUPrintNSError();
      LogPrintF();

      errorCopy = v9;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    errorCopy = v9;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(SKConnection *)self _invalidateWithError:errorCopy, v8];
}

- (void)_serverPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    goto LABEL_3;
  }

  pairVerifySession = self->_pairVerifySession;
  v17 = 0;
  v7 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" error:&v17];
  v5 = v17;
  mainStream = self->_mainStream;
  self->_mainStream = v7;

  if (v5)
  {
LABEL_3:
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        v14 = self->_ucat;
      }

      v16 = CUPrintNSError();
      LogPrintF();
    }

LABEL_7:
    [(SKConnection *)self _pairVerifyInvalidate];

    goto LABEL_8;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
  v11 = self->_ucat->var0;
  if (v11 <= 30)
  {
    if (v11 != -1)
    {
LABEL_11:
      LogPrintF();
      goto LABEL_13;
    }

    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
      goto LABEL_11;
    }
  }

LABEL_13:
  if (self->_runState == 24)
  {
    v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }

    self->_stepDone = 1;
    [(SKConnection *)self _run];
  }

LABEL_8:
}

- (void)_serverPairVerifyContinueWithData:(id)data start:(BOOL)start
{
  dataCopy = data;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__243;
  v39 = __Block_byref_object_dispose__244;
  v40 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke;
  v34[3] = &unk_279BB8670;
  v34[4] = self;
  v34[5] = &v35;
  v7 = MEMORY[0x26676A4C0](v34);
  v33 = 0;
  v8 = OPACKDecodeData();
  if (!v8)
  {
    v19 = *MEMORY[0x277CCA590];
    v20 = NSErrorF_safe();
    v16 = v36[5];
    v36[5] = v20;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_opt_class();
    v16 = NSStringFromClass(v21);
    v22 = *MEMORY[0x277CCA590];
    v23 = NSErrorF_safe();
    v24 = v36[5];
    v36[5] = v23;

    goto LABEL_23;
  }

  if (start || !self->_pairVerifySession)
  {
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      goto LABEL_12;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        [(SKConnection *)self _pairVerifyInvalidate:v29];
        v10 = objc_alloc_init(MEMORY[0x277D028E8]);
        objc_storeStrong(&self->_pairVerifySession, v10);
        [v10 setDispatchQueue:self->_dispatchQueue];
        if (self->_conditionalPersistent || self->_persistentPairing)
        {
          v14 = 8;
        }

        else
        {
          v14 = 0x400000;
        }

        [v10 setFlags:v14];
        if (self->_label)
        {
          label = self->_label;
        }

        else
        {
          label = @"SKCnx";
        }

        [v10 setLabel:label];
        [v10 setSessionType:4];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_2;
        v32[3] = &unk_279BB7AE0;
        v32[4] = v10;
        v32[5] = self;
        [v10 setSendDataHandler:v32];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_3;
        v31[3] = &unk_279BB8838;
        v31[4] = v10;
        v31[5] = self;
        [v10 setCompletionHandler:v31];
        [v10 activate];
        goto LABEL_20;
      }

      v28 = self->_ucat;
    }

    v12 = [dataCopy length];
    CUPrintNSObjectOneLineEx();
    v30 = v29 = v12;
    LogPrintF();

    goto LABEL_12;
  }

  v9 = self->_ucat->var0;
  if (v9 > 30)
  {
    goto LABEL_21;
  }

  if (v9 != -1)
  {
    goto LABEL_7;
  }

  v17 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v18 = self->_ucat;
LABEL_7:
    [dataCopy length];
    v10 = CUPrintNSObjectOneLineEx();
    LogPrintF();
LABEL_20:
  }

LABEL_21:
  CFDataGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    [(CUPairingSession *)self->_pairVerifySession receivedData:v16];
  }

  else
  {
    v25 = *MEMORY[0x277CCA590];
    v26 = NSErrorF_safe();
    v27 = v36[5];
    v36[5] = v26;

    v16 = 0;
  }

LABEL_23:

  v7[2](v7);
  _Block_object_dispose(&v35, 8);
}

uint64_t __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 32);
  v4 = *v3[18];
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = v3[18];
      v6 = _LogCategory_Initialize();
      v3 = *(v2 + 32);
      v1 = *(v2 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v3[18];
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF();

    v3 = *(v2 + 32);
    v1 = *(v2 + 40);
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _serverPairVerifyCompleted:v7];
}

void __56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[10])
  {
    v8 = @"_pd";
    v9[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 _sendFrameType:7 unencryptedObject:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void *__56__SKConnection__serverPairVerifyContinueWithData_start___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[10])
  {
    return [result _serverPairVerifyCompleted:a2];
  }

  return result;
}

- (void)_serverPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (!completedCopy)
  {
    pairSetupSession = self->_pairSetupSession;
    v19 = 0;
    v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v19];
    v5 = v19;
    mainStream = self->_mainStream;
    self->_mainStream = v7;

    if (!v5)
    {
      self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_20:
      v5 = 0;
      goto LABEL_8;
    }
  }

  v9 = self->_ucat->var0;
  if (v9 > 90)
  {
    goto LABEL_7;
  }

  if (v9 == -1)
  {
    v10 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v15 = self->_ucat;
      goto LABEL_5;
    }

LABEL_7:
    [(SKConnection *)self _pairSetupInvalidate];
    goto LABEL_8;
  }

LABEL_5:
  v18 = CUPrintNSError();
  LogPrintF();

  [(SKConnection *)self _pairSetupInvalidate];
LABEL_8:
  runState = self->_runState;
  if (runState == 24 || runState == 18)
  {
    v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v5);
    }

    if (!self->_stepError)
    {
      objc_storeStrong(&self->_stepError, v5);
    }

    self->_stepDone = 1;
    [(SKConnection *)self _run];
  }
}

- (void)_serverPairSetupContinueWithData:(id)data start:(BOOL)start
{
  startCopy = start;
  dataCopy = data;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__243;
  v44 = __Block_byref_object_dispose__244;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke;
  v39[3] = &unk_279BB8670;
  v39[4] = self;
  v39[5] = &v40;
  v7 = MEMORY[0x26676A4C0](v39);
  v38 = 0;
  v8 = OPACKDecodeData();
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (startCopy)
      {
        Int64 = CFDictionaryGetInt64();
        self->_reversePairing = Int64 != 0;
        if (Int64)
        {
          var0 = self->_ucat->var0;
          if (var0 <= 30)
          {
            if (var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_37;
              }

              ucat = self->_ucat;
            }

            LogPrintF();
          }

LABEL_37:
          [(SKConnection *)self _run];
          goto LABEL_38;
        }
      }

      else if (self->_pairSetupSession)
      {
        v11 = self->_ucat->var0;
        if (v11 > 30)
        {
          goto LABEL_31;
        }

        if (v11 == -1)
        {
          v19 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
LABEL_31:
            CFDataGetTypeID();
            v18 = CFDictionaryGetTypedValue();
            if (v18)
            {
              [(CUPairingSession *)self->_pairSetupSession receivedData:v18];
            }

            else
            {
              v27 = *MEMORY[0x277CCA590];
              v28 = NSErrorF_safe();
              v29 = v41[5];
              v41[5] = v28;

              v18 = 0;
            }

            goto LABEL_33;
          }

          v20 = self->_ucat;
        }

        [dataCopy length];
        v12 = CUPrintNSObjectOneLineEx();
        LogPrintF();
LABEL_30:

        goto LABEL_31;
      }

      v13 = self->_ucat->var0;
      if (v13 <= 30)
      {
        if (v13 == -1)
        {
          v15 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          v30 = self->_ucat;
        }

        v14 = [dataCopy length];
        CUPrintNSObjectOneLineEx();
        v33 = v32 = v14;
        LogPrintF();
      }

LABEL_16:
      [(SKConnection *)self _pairSetupInvalidate:v32];
      v12 = objc_alloc_init(MEMORY[0x277D028E8]);
      objc_storeStrong(&self->_pairSetupSession, v12);
      [v12 setDispatchQueue:self->_dispatchQueue];
      [v12 setFixedPIN:self->_password];
      if (self->_conditionalPersistent)
      {
        v16 = 520;
      }

      else if (self->_persistentPairing)
      {
        v16 = 8;
      }

      else
      {
        v16 = 24;
      }

      [v12 setFlags:v16];
      if (self->_label)
      {
        label = self->_label;
      }

      else
      {
        label = @"SKCnx";
      }

      [v12 setLabel:label];
      [v12 setPinType:self->_passwordType];
      [v12 setSessionType:2];
      if (self->_authShowPasswordHandler)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_2;
        v37[3] = &unk_279BB7B30;
        v37[4] = v12;
        v37[5] = self;
        [v12 setShowPINHandlerEx:v37];
      }

      else
      {
        [v12 setFlags:{objc_msgSend(v12, "flags") | 0x80}];
      }

      if (self->_authHidePasswordHandler)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_3;
        v36[3] = &unk_279BB8648;
        v36[4] = v12;
        v36[5] = self;
        [v12 setHidePINHandler:v36];
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_4;
      v35[3] = &unk_279BB7AE0;
      v35[4] = v12;
      v35[5] = self;
      [v12 setSendDataHandler:v35];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_5;
      v34[3] = &unk_279BB8838;
      v34[4] = v12;
      v34[5] = self;
      [v12 setCompletionHandler:v34];
      [v12 activate];
      goto LABEL_30;
    }

    v23 = objc_opt_class();
    v18 = NSStringFromClass(v23);
    v24 = *MEMORY[0x277CCA590];
    v25 = NSErrorF_safe();
    v26 = v41[5];
    v41[5] = v25;
  }

  else
  {
    v21 = *MEMORY[0x277CCA590];
    v22 = NSErrorF_safe();
    v18 = v41[5];
    v41[5] = v22;
  }

LABEL_33:

LABEL_38:
  v7[2](v7);

  _Block_object_dispose(&v40, 8);
}

uint64_t __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 32);
  v4 = *v3[18];
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = v3[18];
      v6 = _LogCategory_Initialize();
      v3 = *(v2 + 32);
      v1 = *(v2 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v3[18];
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF();

    v3 = *(v2 + 32);
    v1 = *(v2 + 40);
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _serverPairSetupCompleted:v7];
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (*(a1 + 32) == *(v5 + 72))
  {
    v8 = v4;
    *(v5 + 112) = 1;
    v6 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 192));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, *(*(a1 + 40) + 160), v8);
    }

    v4 = v8;
  }
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 72) && *(v2 + 112) == 1)
  {
    *(v2 + 112) = 0;
    v3 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 184));
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[9])
  {
    v8 = @"_pd";
    v9[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 _sendFrameType:3 unencryptedObject:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void *__55__SKConnection__serverPairSetupContinueWithData_start___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[9])
  {
    return [result _serverPairSetupCompleted:a2];
  }

  return result;
}

- (void)_serverAcceptBLE
{
  bleConnection = self->_bleConnection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SKConnection__serverAcceptBLE__block_invoke;
  v6[3] = &unk_279BB8838;
  v6[4] = bleConnection;
  v6[5] = self;
  v4 = bleConnection;
  [(CBConnection *)v4 setErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SKConnection__serverAcceptBLE__block_invoke_2;
  v5[3] = &unk_279BB8648;
  v5[4] = v4;
  v5[5] = self;
  [(CBConnection *)v4 setInvalidationHandler:v5];
  [(SKConnection *)self _receiveStart:0];
}

void __32__SKConnection__serverAcceptBLE__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == v1[29])
  {
    v2 = *MEMORY[0x277CCA590];
    v3 = NSErrorNestedF();
    [v1 _serverError:v3];
  }
}

uint64_t __32__SKConnection__serverAcceptBLE__block_invoke_2(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) != *(v2 + 232))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 144);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(v3 + 40);
      if (!v5)
      {
        goto LABEL_6;
      }

      v10 = *(v2 + 144);
    }

    LogPrintF();
    v2 = *(v3 + 40);
  }

LABEL_6:
  v6 = *(v2 + 232);
  *(v2 + 232) = 0;

  v7 = *(v3 + 40);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(v3 + 40);

  return [v9 _invalidated];
}

- (void)_serverAccept
{
  [(SKConnection *)self _pairSetupInvalidate];
  [(SKConnection *)self _pairVerifyInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_reversePairing = 0;
  if (self->_bleConnection)
  {

    [(SKConnection *)self _serverAcceptBLE];
  }

  else if (self->_sendDataHandler)
  {
    self->_stepDone = 1;
  }

  else
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorF_safe();
    v6 = self->_stepError;
    self->_stepError = v5;

    MEMORY[0x2821F96F8](v5, v6);
  }
}

- (void)_serverRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      runState = self->_runState;
      if (runState > 25)
      {
        break;
      }

      if (runState <= 23)
      {
        if (runState)
        {
          if (runState != 23)
          {
            return;
          }

          [(SKConnection *)self _serverAccept];
          if ([(NSData *)self->_pskData length])
          {
            v4 = 27;
          }

          else
          {
LABEL_14:
            v4 = self->_runState + 1;
          }

LABEL_30:
          self->_runState = v4;
          goto LABEL_31;
        }

LABEL_17:
        v4 = 23;
        goto LABEL_30;
      }

      if (runState != 24)
      {
        [(SKConnection *)self _clientPairSetupStart];
        goto LABEL_14;
      }

      if (self->_reversePairing)
      {
        v4 = 25;
        goto LABEL_30;
      }

      if (self->_stepError)
      {
        goto LABEL_26;
      }

      if (self->_stepDone)
      {
        self->_stepDone = 0;
        goto LABEL_29;
      }

      v4 = 24;
LABEL_31:
      if (v4 == runState)
      {
        return;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          ucat = self->_ucat;
          v4 = self->_runState;
        }

        v6 = "?";
        if (v4 <= 0x1D)
        {
          v6 = off_279BB7C18[v4];
        }

        v8 = off_279BB7C18[runState];
        v9 = v6;
        LogPrintF();
      }

LABEL_38:
      [(SKConnection *)self _updateExternalState:v8];
    }

    if (runState > 27)
    {
      if (runState != 28)
      {
        if (runState != 29)
        {
          return;
        }

        goto LABEL_17;
      }

      if (!self->_stepError)
      {
        [(SKConnection *)self _processSends];
        v4 = self->_runState;
        goto LABEL_31;
      }
    }

    else if (runState == 26)
    {
      if (!self->_stepError)
      {
        if (!self->_stepDone)
        {
          v4 = 26;
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      [(SKConnection *)self _pskPrepareClientMode:0];
      if (!self->_stepError)
      {
LABEL_29:
        v4 = 28;
        goto LABEL_30;
      }
    }

LABEL_26:
    v4 = 29;
    goto LABEL_30;
  }
}

- (void)_clientError:(id)error
{
  errorCopy = error;
  var0 = self->_ucat->var0;
  v14 = errorCopy;
  if (var0 <= 90)
  {
    if (var0 != -1)
    {
LABEL_3:
      v13 = CUPrintNSError();
      LogPrintF();

      errorCopy = v14;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    errorCopy = v14;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v8 = startTimer;
    dispatch_source_cancel(v8);
    v9 = self->_startTimer;
    self->_startTimer = 0;

    errorCopy = v14;
  }

  if (errorCopy)
  {
    [(SKConnection *)self _abortRequestsWithError:?];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF_safe();
    [(SKConnection *)self _abortRequestsWithError:v11];
  }

  [(CBConnection *)self->_bleConnection invalidate];
  [(SKConnection *)self _invalidateWithError:v14];
}

- (void)_clientPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (!completedCopy)
  {
    pairVerifySession = self->_pairVerifySession;
    v18 = 0;
    v7 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" error:&v18];
    v5 = v18;
    mainStream = self->_mainStream;
    self->_mainStream = v7;

    if (!v5)
    {
      self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_15;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_15:
      v12 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 16))(v12, 0);
      }

      v5 = 0;
      goto LABEL_8;
    }
  }

  v9 = self->_ucat->var0;
  if (v9 <= 90)
  {
    if (v9 != -1)
    {
LABEL_5:
      v17 = CUPrintNSError();
      LogPrintF();

      [(SKConnection *)self _pairVerifyInvalidate];
      goto LABEL_8;
    }

    v10 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v14 = self->_ucat;
      goto LABEL_5;
    }
  }

  [(SKConnection *)self _pairVerifyInvalidate];
LABEL_8:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v5);
  }

  self->_stepDone = 1;
  [(SKConnection *)self _run];
}

- (void)_clientPairVerifyWithData:(id)data
{
  dataCopy = data;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__243;
  v29 = __Block_byref_object_dispose__244;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __42__SKConnection__clientPairVerifyWithData___block_invoke;
  v24[3] = &unk_279BB8670;
  v24[4] = self;
  v24[5] = &v25;
  v5 = MEMORY[0x26676A4C0](v24);
  if (!self->_pairVerifySession)
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF_safe();
    v12 = v26[5];
    v26[5] = v11;

    goto LABEL_11;
  }

  v6 = OPACKDecodeData();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_8;
      }

      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
LABEL_8:
          CFDataGetTypeID();
          v9 = CFDictionaryGetTypedValue();
          if (v9)
          {
            [(CUPairingSession *)self->_pairVerifySession receivedData:v9];
          }

          else
          {
            v19 = *MEMORY[0x277CCA590];
            v20 = NSErrorF_safe();
            v21 = v26[5];
            v26[5] = v20;

            v9 = 0;
          }

          goto LABEL_10;
        }

        v22 = self->_ucat;
      }

      [dataCopy length];
      v23 = CUPrintNSObjectOneLineEx();
      LogPrintF();

      goto LABEL_8;
    }

    v15 = objc_opt_class();
    v9 = NSStringFromClass(v15);
    v16 = *MEMORY[0x277CCA590];
    v17 = NSErrorF_safe();
    v18 = v26[5];
    v26[5] = v17;
  }

  else
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    v9 = v26[5];
    v26[5] = v14;
  }

LABEL_10:

LABEL_11:
  v5[2](v5);

  _Block_object_dispose(&v25, 8);
}

uint64_t __42__SKConnection__clientPairVerifyWithData___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 32);
  v4 = *v3[18];
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = v3[18];
      v6 = _LogCategory_Initialize();
      v3 = *(v2 + 32);
      v1 = *(v2 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v3[18];
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF();

    v3 = *(v2 + 32);
    v1 = *(v2 + 40);
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _clientPairVerifyCompleted:v7];
}

- (void)_clientPairVerifyStart
{
  [(SKConnection *)self _pairVerifyInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

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
  v5 = objc_alloc_init(MEMORY[0x277D028E8]);
  objc_storeStrong(&self->_pairVerifySession, v5);
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = 8;
  if (!self->_conditionalPersistent)
  {
    if (self->_persistentPairing)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0x400000;
    }
  }

  [v5 setFlags:v6];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [v5 setLabel:label];
  [v5 setSessionType:3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__SKConnection__clientPairVerifyStart__block_invoke;
  v10[3] = &unk_279BB7AE0;
  v10[4] = v5;
  v10[5] = self;
  [v5 setSendDataHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SKConnection__clientPairVerifyStart__block_invoke_2;
  v9[3] = &unk_279BB8838;
  v9[4] = v5;
  v9[5] = self;
  [v5 setCompletionHandler:v9];
  [v5 activate];
}

void __38__SKConnection__clientPairVerifyStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[10])
  {
    v4 = a2 & 1;
    v9 = @"_pd";
    v10[0] = a3;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a3;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 _sendFrameType:v4 ^ 7u unencryptedObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *__38__SKConnection__clientPairVerifyStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[10])
  {
    return [result _clientPairVerifyCompleted:a2];
  }

  return result;
}

- (void)_clientPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  authThrottleTimer = self->_authThrottleTimer;
  if (authThrottleTimer)
  {
    v6 = authThrottleTimer;
    dispatch_source_cancel(v6);
    v7 = self->_authThrottleTimer;
    self->_authThrottleTimer = 0;
  }

  v8 = completedCopy;
  v9 = v8;
  if (!v8)
  {
    pairSetupSession = self->_pairSetupSession;
    v22 = 0;
    v11 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v22];
    v9 = v22;
    mainStream = self->_mainStream;
    self->_mainStream = v11;

    if (!v9)
    {
      self->_mainAuthTagLength = [(CUPairingStream *)self->_mainStream authTagLength];
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_19:
      v9 = 0;
      goto LABEL_10;
    }
  }

  v13 = self->_ucat->var0;
  if (v13 <= 90)
  {
    if (v13 != -1)
    {
LABEL_7:
      v21 = CUPrintNSError();
      LogPrintF();

      [(SKConnection *)self _pairSetupInvalidate];
      goto LABEL_10;
    }

    v14 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v18 = self->_ucat;
      goto LABEL_7;
    }
  }

  [(SKConnection *)self _pairSetupInvalidate];
LABEL_10:
  v15 = MEMORY[0x26676A4C0](self->_authCompletionHandler);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v9);
  }

  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v9);
  }

  self->_stepDone = 1;
  [(SKConnection *)self _run];
}

void __77__SKConnection__clientPairSetupPromptWithFlags_passwordType_throttleSeconds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) != *(v2 + 24))
  {
    return;
  }

  v4 = *(v2 + 16);
  if ((v4 - mach_absolute_time()) < 1)
  {
    v4 = 0;
  }

  else
  {
    UpTicksToSecondsF();
    LODWORD(v4) = llround(v5);
  }

  v6 = *(a1 + 40);
  v7 = **(v6 + 144);
  if (v7 <= 30)
  {
    if (v7 == -1)
    {
      v8 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v8)
      {
        goto LABEL_9;
      }

      v15 = *(v6 + 144);
    }

    LogPrintF();
    v6 = *(a1 + 40);
  }

LABEL_9:
  if (v4 <= 0)
  {
    v10 = *(v6 + 24);
    if (v10)
    {
      v11 = v10;
      dispatch_source_cancel(v11);
      v12 = *(a1 + 40);
      v13 = *(v12 + 24);
      *(v12 + 24) = 0;

      v9 = 0;
      v6 = *(a1 + 40);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0x20000;
  }

  v14 = MEMORY[0x26676A4C0](*(v6 + 200));
  if (v14)
  {
    v16 = v14;
    v14[2](v14, *(a1 + 48), v9, v4);
    v14 = v16;
  }
}

- (void)_clientPairSetupContinueWithData:(id)data
{
  dataCopy = data;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__243;
  v32 = __Block_byref_object_dispose__244;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__SKConnection__clientPairSetupContinueWithData___block_invoke;
  v27[3] = &unk_279BB8670;
  v27[4] = self;
  v27[5] = &v28;
  v5 = MEMORY[0x26676A4C0](v27);
  v6 = self->_pairSetupSession;
  if (!v6)
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    v15 = v29[5];
    v29[5] = v14;

    goto LABEL_13;
  }

  v7 = OPACKDecodeData();
  if (!v7)
  {
    v16 = *MEMORY[0x277CCA590];
    v17 = NSErrorF_safe();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    v19 = *MEMORY[0x277CCA590];
    v20 = NSErrorF_safe();
LABEL_19:
    v24 = v29[5];
    v29[5] = v20;

    goto LABEL_11;
  }

  v8 = CUDecodeNSErrorDictionary();
  v9 = v29[5];
  v29[5] = v8;

  if (v29[5])
  {
    v21 = *MEMORY[0x277CCA590];
    v22 = NSErrorNestedF();
    goto LABEL_12;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_7:
      [dataCopy length];
      v26 = CUPrintNSObjectOneLineEx();
      LogPrintF();

      goto LABEL_9;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v25 = self->_ucat;
      goto LABEL_7;
    }
  }

LABEL_9:
  CFDataGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12)
  {
    v23 = *MEMORY[0x277CCA590];
    v20 = NSErrorF_safe();
    goto LABEL_19;
  }

  [(CUPairingSession *)v6 receivedData:v12];
LABEL_11:

LABEL_12:
LABEL_13:

  v5[2](v5);
  _Block_object_dispose(&v28, 8);
}

uint64_t __49__SKConnection__clientPairSetupContinueWithData___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 32);
  v4 = *v3[18];
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = v3[18];
      v6 = _LogCategory_Initialize();
      v3 = *(v2 + 32);
      v1 = *(v2 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v3[18];
      v9 = *(*(v1 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF();

    v3 = *(v2 + 32);
    v1 = *(v2 + 40);
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _clientPairSetupCompleted:v7];
}

- (void)_clientPairSetupStartReverse
{
  v9[1] = *MEMORY[0x277D85DE8];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_5:
  [(SKConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v8 = @"_pairReverse";
  v9[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(SKConnection *)self _sendFrameType:2 unencryptedObject:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clientPairSetupStart
{
  [(SKConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  var0 = self->_ucat->var0;
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
    ucat = self->_ucat;
LABEL_3:
    LogPrintF();
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277D028E8]);
  objc_storeStrong(&self->_pairSetupSession, v5);
  [v5 setDispatchQueue:self->_dispatchQueue];
  [v5 setFixedPIN:self->_password];
  if (self->_conditionalPersistent)
  {
    v6 = 520;
  }

  else if (self->_persistentPairing)
  {
    v6 = 8;
  }

  else
  {
    v6 = 24;
  }

  [v5 setFlags:v6];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [v5 setLabel:label];
  [v5 setSessionType:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SKConnection__clientPairSetupStart__block_invoke;
  v11[3] = &unk_279BB7AB8;
  v11[4] = self;
  v11[5] = v5;
  [v5 setPromptForPINHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__SKConnection__clientPairSetupStart__block_invoke_2;
  v10[3] = &unk_279BB7AE0;
  v10[4] = v5;
  v10[5] = self;
  [v5 setSendDataHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__SKConnection__clientPairSetupStart__block_invoke_3;
  v9[3] = &unk_279BB8838;
  v9[4] = v5;
  v9[5] = self;
  [v5 setCompletionHandler:v9];
  [v5 activate];
}

uint64_t __37__SKConnection__clientPairSetupStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) pinTypeActual];

  return [v5 _clientPairSetupPromptWithFlags:a2 passwordType:v6 throttleSeconds:a3];
}

void __37__SKConnection__clientPairSetupStart__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[9])
  {
    v4 = a2 & 1;
    v9 = @"_pd";
    v10[0] = a3;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a3;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 _sendFrameType:v4 ^ 3u unencryptedObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *__37__SKConnection__clientPairSetupStart__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[9])
  {
    return [result _clientPairSetupCompleted:a2];
  }

  return result;
}

- (void)_clientConnectCompleted:(id)completed
{
  completedCopy = completed;
  var0 = self->_ucat->var0;
  v12 = completedCopy;
  if (completedCopy)
  {
    if (var0 > 90)
    {
      goto LABEL_9;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (!self->_stepError)
        {
          v6 = *MEMORY[0x277CCA590];
          v7 = NSErrorNestedF();
          stepError = self->_stepError;
          self->_stepError = v7;
        }

        goto LABEL_15;
      }

      ucat = self->_ucat;
    }

    v11 = CUPrintNSError();
    LogPrintF();

    goto LABEL_9;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v10 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  if (!self->_readRequested)
  {
    [(SKConnection *)self _receiveStart:0];
  }

  self->_stepDone = 1;
LABEL_15:
  [(SKConnection *)self _run];
}

- (void)_clientConnectStartBLE
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CBConnection *)self->_bleConnection invalidate];
  var0 = self->_ucat->var0;
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
    ucat = self->_ucat;
LABEL_3:
    blePeerDevice = self->_blePeerDevice;
    LogPrintF();
  }

LABEL_5:
  v5 = objc_alloc_init(MEMORY[0x277CBE008]);
  bleConnection = self->_bleConnection;
  self->_bleConnection = v5;

  blePSM = [(SKDevice *)self->_blePeerDevice blePSM];
  if (blePSM)
  {
    v8 = blePSM;
  }

  else
  {
    v8 = 130;
  }

  [(CBConnection *)v5 setBlePSM:v8, blePeerDevice];
  [(CBConnection *)v5 setConnectionFlags:64];
  [(CBConnection *)v5 setConnectTimeoutSeconds:10.0];
  [(CBConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"SKCnx";
  }

  [(CBConnection *)v5 setLabel:label];
  [(CBConnection *)v5 setUseCase:self->_bluetoothUseCase];
  identifier = [(SKDevice *)self->_blePeerDevice identifier];
  if (identifier)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v11 setIdentifier:identifier];
    [(CBConnection *)v5 setPeerDevice:v11];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __38__SKConnection__clientConnectStartBLE__block_invoke;
    v19[3] = &unk_279BB8838;
    v19[4] = v5;
    v19[5] = self;
    [(CBConnection *)v5 setErrorHandler:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__SKConnection__clientConnectStartBLE__block_invoke_2;
    v18[3] = &unk_279BB8648;
    v18[4] = v5;
    v18[5] = self;
    [(CBConnection *)v5 setInvalidationHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__SKConnection__clientConnectStartBLE__block_invoke_3;
    v17[3] = &unk_279BB8838;
    v17[4] = v5;
    v17[5] = self;
    [(CBConnection *)v5 activateWithCompletion:v17];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v13 = NSErrorF_safe();
    v14 = self->_stepError;
    self->_stepError = v13;
  }
}

void __38__SKConnection__clientConnectStartBLE__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == v1[29])
  {
    v2 = *MEMORY[0x277CCA590];
    v3 = NSErrorNestedF();
    [v1 _clientError:v3];
  }
}

uint64_t __38__SKConnection__clientConnectStartBLE__block_invoke_2(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) != *(v2 + 232))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 144);
  if (v4 <= 30)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      v2 = *(v3 + 40);
      goto LABEL_6;
    }

    v5 = _LogCategory_Initialize();
    v2 = *(v3 + 40);
    if (v5)
    {
      v9 = *(v2 + 144);
      goto LABEL_4;
    }
  }

LABEL_6:
  v6 = *(v2 + 232);
  *(v2 + 232) = 0;

  v7 = *(v3 + 40);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  result = *(v3 + 40);
  if (*(result + 52) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__SKConnection__clientConnectStartBLE__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 232);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 40), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

- (void)_clientConnectStart
{
  if (self->_blePeerDevice)
  {

    [(SKConnection *)self _clientConnectStartBLE];
  }

  else if (self->_sendDataHandler)
  {
    self->_stepDone = 1;
  }

  else
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = NSErrorF_safe();
    stepError = self->_stepError;
    self->_stepError = v4;

    MEMORY[0x2821F96F8](v4, stepError);
  }
}

- (void)_clientRun
{
  if (!self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      if (runState > 0xF)
      {
        if (self->_runState <= 0x12uLL)
        {
          if (runState != 16)
          {
            if (runState == 17)
            {
              [(SKConnection *)self _clientPairSetupStartReverse];
              goto LABEL_34;
            }

            if (runState != 18)
            {
              goto LABEL_46;
            }
          }

          if (!self->_stepError)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }

        switch(runState)
        {
          case 0x13uLL:
            [(SKConnection *)self _pskPrepareClientMode:1];
            if (!self->_stepError)
            {
              goto LABEL_38;
            }

LABEL_41:
            self->_runState = 21;
            break;
          case 0x14uLL:
            if (self->_stepError)
            {
              goto LABEL_41;
            }

            [(SKConnection *)self _processSends];
            break;
          case 0x15uLL:
            if (self->_stepError)
            {
              [(SKConnection *)self _clientError:?];
            }

            else
            {
              v6 = NSErrorF_safe();
              [(SKConnection *)self _clientError:v6];
            }

            self->_runState = 3;
            break;
        }
      }

      else
      {
        if (self->_runState <= 0xCuLL)
        {
          if (!self->_runState)
          {
            self->_runState = 11;
            goto LABEL_46;
          }

          if (runState == 11)
          {
            self->_runState = 12;
            [(SKConnection *)self _clientConnectStart];
            goto LABEL_46;
          }

          if (runState != 12)
          {
            goto LABEL_46;
          }

          if (!self->_stepError)
          {
            if (!self->_stepDone)
            {
              goto LABEL_46;
            }

            if ([(NSData *)self->_pskData length])
            {
              v5 = 19;
              goto LABEL_39;
            }

LABEL_34:
            v5 = self->_runState + 1;
            goto LABEL_39;
          }

          goto LABEL_41;
        }

        if (runState == 13)
        {
          self->_runState = 14;
          [(SKConnection *)self _clientPairVerifyStart];
          goto LABEL_46;
        }

        if (runState == 14)
        {
          if (self->_stepError)
          {
            v5 = 15;
          }

          else
          {
LABEL_37:
            if (!self->_stepDone)
            {
              goto LABEL_46;
            }

LABEL_38:
            v5 = 20;
          }

LABEL_39:
          self->_runState = v5;
          goto LABEL_46;
        }

        if (runState != 15)
        {
          goto LABEL_46;
        }

        if (self->_reversePairing)
        {
          v5 = 17;
          goto LABEL_39;
        }

        self->_runState = 16;
        [(SKConnection *)self _clientPairSetupStart];
      }

LABEL_46:
      v7 = self->_runState;
      if (v7 == runState)
      {
        return;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_55;
          }

          ucat = self->_ucat;
          v7 = self->_runState;
        }

        v9 = "?";
        if (runState <= 0x1D)
        {
          v9 = off_279BB7C18[runState];
        }

        v10 = "?";
        if (v7 <= 0x1D)
        {
          v10 = off_279BB7C18[v7];
        }

        v12 = v9;
        v13 = v10;
        LogPrintF();
      }

LABEL_55:
      [(SKConnection *)self _updateExternalState:v12];
    }
  }
}

- (void)_updateExternalState
{
  state = self->_state;
  v3 = (self->_runState - 20) & 0xFFFFFFF7;
  v4 = v3 == 0;
  if (state == v4)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
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
  self->_state = v4;
  v7 = MEMORY[0x26676A4C0](self->_stateChangedHandler);
  if (v7)
  {
    v10 = v7;
    v7[2](v7, v8);
    v7 = v10;
  }
}

- (void)updatePasswordType:(int)type
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SKConnection_updatePasswordType___block_invoke;
  v4[3] = &unk_279BB7FA0;
  v4[4] = self;
  typeCopy = type;
  dispatch_async(dispatchQueue, v4);
}

void __35__SKConnection_updatePasswordType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((v1[52] & 1) == 0)
  {
    v5 = @"_pt";
    v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [v1 _sendFrameType:8 unencryptedObject:v3];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__SKConnection_tryPassword___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

int *__28__SKConnection_tryPassword___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 156) & 1) != 0 || (*(v2 + 159))
  {
    v3 = *(v2 + 72);
    v4 = v3;
    v9 = v3;
    if (v3)
    {
      v5 = [v3 tryPIN:*(a1 + 40)];
    }

    else
    {
      v5 = *(*(a1 + 32) + 144);
      if (*v5 > 90)
      {
        goto LABEL_6;
      }

      if (*v5 == -1)
      {
        v5 = _LogCategory_Initialize();
        v4 = 0;
        if (!v5)
        {
          goto LABEL_6;
        }

        v6 = *(*(a1 + 32) + 144);
      }

      v5 = LogPrintF();
    }

    v4 = v9;
LABEL_6:

    return MEMORY[0x2821F96F8](v5, v4);
  }

  result = *(v2 + 144);
  if (*result > 90)
  {
    return result;
  }

  if (*result == -1)
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

- (void)_run
{
  if (self->_clientMode)
  {
    [(SKConnection *)self _clientRun];
  }

  else
  {
    [(SKConnection *)self _serverRun];
  }
}

- (void)_pairVerifyInvalidate
{
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (void)_pairSetupInvalidate
{
  authThrottleTimer = self->_authThrottleTimer;
  if (authThrottleTimer)
  {
    v4 = authThrottleTimer;
    dispatch_source_cancel(v4);
    v5 = self->_authThrottleTimer;
    self->_authThrottleTimer = 0;
  }

  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;
}

- (id)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen error:(id *)error
{
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    v15 = pairSetupSession;
LABEL_4:
    v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:keyLen];
    if (-[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:](v15, "deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:", ptr, len, infoPtr, infoLen, keyLen, [v16 mutableBytes]))
    {
      if (error)
      {
        v20 = *MEMORY[0x277CCA590];
        NSErrorF_safe();
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v16;
    }

    goto LABEL_7;
  }

  v15 = self->_pairVerifySession;
  if (v15)
  {
    goto LABEL_4;
  }

  if (error)
  {
    v19 = *MEMORY[0x277CCA590];
    NSErrorF_safe();
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (void)_invalidated
{
  if (self->_invalidateDone || self->_bleConnection)
  {
    return;
  }

  [(SKConnection *)self _pairSetupInvalidate];
  [(SKConnection *)self _pairVerifyInvalidate];
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  v20 = MEMORY[0x26676A4C0](self->_invalidationHandler);
  authCompletionHandler = self->_authCompletionHandler;
  self->_authCompletionHandler = 0;

  authShowPasswordHandler = self->_authShowPasswordHandler;
  self->_authShowPasswordHandler = 0;

  authHidePasswordHandler = self->_authHidePasswordHandler;
  self->_authHidePasswordHandler = 0;

  authPromptHandler = self->_authPromptHandler;
  self->_authPromptHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairSetupConfigHandler = self->_pairSetupConfigHandler;
  self->_pairSetupConfigHandler = 0;

  receivedEventHandler = self->_receivedEventHandler;
  self->_receivedEventHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  sendDataHandler = self->_sendDataHandler;
  self->_sendDataHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  v17 = v20;
  self->_invalidateDone = 1;
  if (v20)
  {
    (*(v20 + 16))(v20);
    v17 = v20;
  }

  p_var0 = &self->_ucat->var0;
  if (*p_var0 <= 30)
  {
    if (*p_var0 == -1)
    {
      p_var0 = _LogCategory_Initialize();
      v17 = v20;
      if (!p_var0)
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    p_var0 = LogPrintF();
    v17 = v20;
  }

LABEL_12:

  MEMORY[0x2821F96F8](p_var0, v17);
}

- (void)_invalidateCore:(id)core
{
  v39 = *MEMORY[0x277D85DE8];
  coreCopy = core;
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v6 = startTimer;
    dispatch_source_cancel(v6);
    v7 = self->_startTimer;
    self->_startTimer = 0;
  }

  [(CBConnection *)self->_bleConnection invalidate];
  if (self->_showPasswordCalled)
  {
    self->_showPasswordCalled = 0;
    v8 = MEMORY[0x26676A4C0](self->_authHidePasswordHandler);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }
  }

  stepError = coreCopy;
  v31 = coreCopy;
  if (coreCopy || (stepError = self->_stepError) != 0)
  {
    v11 = stepError;
  }

  else
  {
    v28 = *MEMORY[0x277CCA590];
    v11 = NSErrorF_safe();
  }

  v12 = v11;
  [(SKConnection *)self _abortRequestsWithError:v11];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_sendArray;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        var0 = self->_ucat->var0;
        if (var0 <= 60)
        {
          if (var0 == -1)
          {
            ucat = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            v25 = self->_ucat;
          }

          requestID = [v17 requestID];
          eventID = requestID;
          if (!requestID)
          {
            eventID = [v17 eventID];
            v32 = eventID;
          }

          CUPrintNSError();
          v30 = v29 = eventID;
          LogPrintF();

          if (!requestID)
          {
          }
        }

LABEL_23:
        timer = [v17 timer];
        [v17 setTimer:0];
        if (timer)
        {
          dispatch_source_cancel(timer);
        }

        completion = [v17 completion];
        [v17 setCompletion:0];
        if (completion)
        {
          (completion)[2](completion, v12);
        }

        else
        {
          responseHandler = [v17 responseHandler];
          [v17 setResponseHandler:0];
          if (responseHandler)
          {
            (responseHandler)[2](responseHandler, 0, 0, v12);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v14 = v26;
    }

    while (v26);
  }

  [(NSMutableArray *)self->_sendArray removeAllObjects];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    v9 = errorCopy;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      v8 = CUPrintNSError();
      LogPrintF();
    }

LABEL_6:
    [(SKConnection *)self _invalidateCore:v9, v8];
    errorCopy = [(SKConnection *)self _invalidated];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SKConnection_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__243;
  v25 = __Block_byref_object_dispose__244;
  v26 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __40__SKConnection__activateWithCompletion___block_invoke;
  v17 = &unk_279BB8500;
  v20 = &v21;
  selfCopy = self;
  v5 = completionCopy;
  v19 = v5;
  v6 = MEMORY[0x26676A4C0](&v14);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    goto LABEL_14;
  }

  if (self->_blePeerDevice)
  {
    self->_clientMode = 1;
    goto LABEL_8;
  }

  bleConnection = self->_bleConnection;
  if (bleConnection)
  {
    self->_clientMode = 0;
    objc_storeStrong(&self->_requestable, bleConnection);
    goto LABEL_8;
  }

  if (!self->_sendDataHandler)
  {
LABEL_14:
    v9 = *MEMORY[0x277CCA590];
    v10 = NSErrorF_safe();
    v11 = v22[5];
    v22[5] = v10;

    goto LABEL_13;
  }

LABEL_8:
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    selfCopy2 = self;
    LogPrintF();
  }

LABEL_12:
  self->_activateCalled = 1;
  [(SKConnection *)self _run:selfCopy2];
  (*(v5 + 2))(v5, 0);
LABEL_13:
  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

uint64_t __40__SKConnection__activateWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 144);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 144);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = *(a1[5] + 16);

  return v8();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SKConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  [labelCopy UTF8String];

  LogCategoryReplaceF();
}

- (NSString)description
{
  v20 = 12;
  v3 = self->_label;
  v19 = 0;
  CUAppendF();
  v18 = 0;
  self->_clientMode;
  CUAppendF();
  v4 = v18;

  v17 = v4;
  if (!self->_conditionalPersistent)
  {
    self->_persistentPairing;
  }

  CUAppendF();
  v5 = v17;

  v16[2] = v5;
  self->_reversePairing;
  CUAppendF();
  v6 = v5;

  v16[1] = v6;
  xidLast = self->_xidLast;
  CUAppendF();
  v7 = v6;

  if (self->_bleConnection)
  {
    v16[0] = v7;
    v8 = v16;
  }

  else if (self->_blePeerDevice)
  {
    v15 = v7;
    v8 = &v15;
  }

  else
  {
    if (!self->_sendDataHandler)
    {
      goto LABEL_10;
    }

    v14 = v7;
    v8 = &v14;
  }

  CUAppendF();
  v9 = *v8;

  v7 = v9;
LABEL_10:
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_2877689A8;
  }

  v11 = v10;

  return v11;
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
  v4.super_class = SKConnection;
  [(SKConnection *)&v4 dealloc];
}

- (SKConnection)init
{
  v8.receiver = self;
  v8.super_class = SKConnection;
  v2 = [(SKConnection *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sendArray = v3->_sendArray;
    v3->_sendArray = v4;

    v3->_ucat = &gLogCategory_SKConnection;
    RandomBytes();
    v6 = v3;
  }

  return v3;
}

@end