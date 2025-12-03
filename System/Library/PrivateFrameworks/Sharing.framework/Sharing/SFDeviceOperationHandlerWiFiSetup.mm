@interface SFDeviceOperationHandlerWiFiSetup
- (SFDeviceOperationHandlerWiFiSetup)init;
- (id)createWiFiRetryMetricEvent:(id)event duration:(double)duration channel:(int)channel isScan:(BOOL)scan;
- (id)createWiFiRetryMetricEventForIPAssign:(id)assign duration:(double)duration;
- (void)_activate;
- (void)_cleanupOldWiFiNetworks;
- (void)_completeError:(id)error;
- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler;
- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler;
- (void)_handleWiFiSetupRequest:(id)request responseHandler:(id)handler;
- (void)_run;
- (void)_runIP4AvailableStart;
- (void)_runReachabilityStart;
- (void)activate;
- (void)addRetryMetric:(id)metric;
- (void)invalidate;
@end

@implementation SFDeviceOperationHandlerWiFiSetup

- (SFDeviceOperationHandlerWiFiSetup)init
{
  v9.receiver = self;
  v9.super_class = SFDeviceOperationHandlerWiFiSetup;
  v2 = [(SFDeviceOperationHandlerWiFiSetup *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = objc_opt_new();
    wiFiRetryMetrics = v3->_wiFiRetryMetrics;
    v3->_wiFiRetryMetrics = v6;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

- (void)_activate
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = NSErrorWithOSStatusF();
    (*(v3 + 16))(v3, v4, 0, 0);

    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;

    v2 = *(a1 + 32);
  }

  [*(v2 + 8) invalidate];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;

  v9 = *(*(a1 + 32) + 32);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *(v11 + 32) = 0;
  }

  [*(*(a1 + 32) + 24) invalidate];
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  *(v13 + 24) = 0;

  [*(*(a1 + 32) + 48) invalidate];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = 0;

  [*(*(a1 + 32) + 280) deregisterRequestID:@"_ws"];
  v17 = *(a1 + 32);
  v18 = *(v17 + 280);
  *(v17 + 280) = 0;
}

- (void)_completeError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _completeError:?];
    }

    WiFiDisassociateAndForget();
  }

  else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _completeError:];
  }

  self->_operationType = 0;
  self->_state = 0;
  v4 = objc_opt_new();
  [v4 setObject:self->_wiFiRetryMetrics forKeyedSubscript:@"wifiRM"];
  if ([errorCopy code])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v4 setObject:v5 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [errorCopy domain];
  if (domain)
  {
    domain2 = [errorCopy domain];
    [v4 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v4 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v8 = [errorCopy description];
  if (v8)
  {
    v9 = [errorCopy description];
    [v4 setObject:v9 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v4 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize())
    {
      [SFDeviceOperationHandlerWiFiSetup _completeError:];
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _completeError:];
    }
  }

  v10 = objc_opt_new();
  wiFiRetryMetrics = self->_wiFiRetryMetrics;
  self->_wiFiRetryMetrics = v10;

  if (self->_responseHandler)
  {
    if (self->_isRetrySetup)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerWiFiSetup _completeError:];
      }

      v12 = *(self->_responseHandler + 2);
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerWiFiSetup _completeError:];
      }

      v12 = *(self->_responseHandler + 2);
    }

    v12();
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;
  }
}

- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  startCopy = start;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestStart:responseHandler:];
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
    v9 = objc_alloc_init(MEMORY[0x1E6999468]);
    bonjourAdvertiser = self->_bonjourAdvertiser;
    self->_bonjourAdvertiser = v9;

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDispatchQueue:self->_dispatchQueue];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDomain:@"local."];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setLabel:@"SFDeviceOperationWiFi"];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setName:v8];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setPort:9];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setServiceType:@"_bonjourtest._tcp"];
    v14 = @"rpBA";
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v11];

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser activate];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
  }

  else
  {
    v12 = NSErrorWithOSStatusF();
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestStart:responseHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, v12, 0, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler
{
  doneCopy = done;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestDone:responseHandler:];
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
}

- (void)_handleWiFiSetupRequest:(id)request responseHandler:(id)handler
{
  v30[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  if (self->_state)
  {
    [(SFDeviceOperationHandlerWiFiSetup *)&v29 _handleWiFiSetupRequest:v30 responseHandler:&v28];
    v21 = v28;
  }

  else
  {
    self->_wifiChannel = CFDictionaryGetInt64Ranged();
    self->_wifiDirected = CFDictionaryGetInt64() != 0;
    v8 = [requestCopy objectForKeyedSubscript:@"wifiEAPConfig"];
    wifiEAPConfig = self->_wifiEAPConfig;
    self->_wifiEAPConfig = v8;

    v10 = [requestCopy objectForKeyedSubscript:@"wifiEAPTE"];
    wifiEAPTrustExceptions = self->_wifiEAPTrustExceptions;
    self->_wifiEAPTrustExceptions = v10;

    self->_wifiHomeNetwork = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    wifiPassword = self->_wifiPassword;
    self->_wifiPassword = v12;

    CFDataGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    wifiPSK = self->_wifiPSK;
    self->_wifiPSK = v14;

    self->_wifiSkipReachbility = CFDictionaryGetInt64() != 0;
    self->_repairFlags = CFDictionaryGetInt64Ranged();
    self->_setupFlags = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    wifiSSID = self->_wifiSSID;
    self->_wifiSSID = v16;

    if (self->_wifiSSID)
    {
      self->_wiFiJoinLimit = CFDictionaryGetInt64Ranged();
      self->_wiFiScanLimit = CFDictionaryGetInt64Ranged();
      if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_7:
          self->_isRetrySetup = CFDictionaryGetInt64() != 0;
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_11;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_11:
              self->_operationType = CFDictionaryGetInt64Ranged();
              if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
              {
LABEL_19:
                v19 = _Block_copy(handlerCopy);
                responseHandler = self->_responseHandler;
                self->_responseHandler = v19;

                [(SFDeviceOperationHandlerWiFiSetup *)self _run];
                v21 = 0;
                goto LABEL_20;
              }

              if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_15;
                }

                operationType = self->_operationType;
              }

              LogPrintF();
LABEL_15:
              if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
              {
                v18 = self->_wifiSSID;
                self->_wifiPassword;
                self->_wifiPSK;
                self->_wifiHomeNetwork;
                wifiChannel = self->_wifiChannel;
                LogPrintF();
              }

              goto LABEL_19;
            }

            isRetrySetup = self->_isRetrySetup;
          }

          LogPrintF();
          goto LABEL_11;
        }

        wiFiScanLimit = self->_wiFiScanLimit;
      }

      wiFiJoinLimit = self->_wiFiJoinLimit;
      LogPrintF();
      goto LABEL_7;
    }

    v21 = NSErrorWithOSStatusF();
  }

  if (handlerCopy && v21)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:responseHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, v21, 0, 0);
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_run
{
  while (!self->_invalidateCalled)
  {
    state = self->_state;
    switch(state)
    {
      case 0:
        if (self->_responseHandler)
        {
          if (self->_wifiChannel < 1)
          {
            goto LABEL_58;
          }

          goto LABEL_5;
        }

        goto LABEL_61;
      case 3:
        stepError = self->_stepError;
        if (!stepError)
        {
          v12 = NSErrorWithOSStatusF();
          v13 = self->_stepError;
          self->_stepError = v12;

          stepError = self->_stepError;
        }

        selfCopy2 = self;
        goto LABEL_23;
      case 4:
        selfCopy2 = self;
        stepError = 0;
LABEL_23:
        [(SFDeviceOperationHandlerWiFiSetup *)selfCopy2 _completeError:stepError, v18, v19];
        goto LABEL_61;
      case 11:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke;
        v23[3] = &unk_1E788B198;
        v23[4] = self;
        v10 = v23;
        goto LABEL_36;
      case 12:
        if (self->_scanResult)
        {
          goto LABEL_34;
        }

        if (self->_stepDone)
        {
          currentWiFiScanChannelCount = self->_currentWiFiScanChannelCount;
          if (currentWiFiScanChannelCount >= self->_wiFiScanLimit)
          {
            goto LABEL_58;
          }

          self->_currentWiFiScanChannelCount = currentWiFiScanChannelCount + 1;
LABEL_5:
          v4 = 11;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v15 = 12;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 13:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_2;
        v22[3] = &unk_1E788B198;
        v22[4] = self;
        v10 = v22;
        goto LABEL_36;
      case 14:
        if (!self->_stepDone)
        {
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_61;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
          {
            v15 = 14;
            goto LABEL_71;
          }

          goto LABEL_72;
        }

        if (!self->_stepError)
        {
          goto LABEL_51;
        }

        currentWiFiJoinChannelCount = self->_currentWiFiJoinChannelCount;
        if (currentWiFiJoinChannelCount < self->_wiFiJoinLimit)
        {
          self->_currentWiFiJoinChannelCount = currentWiFiJoinChannelCount + 1;
LABEL_34:
          v4 = 13;
          goto LABEL_60;
        }

        goto LABEL_58;
      case 15:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_3;
        v21[3] = &unk_1E788B198;
        v21[4] = self;
        v10 = v21;
        goto LABEL_36;
      case 16:
        if (self->_scanResult)
        {
          goto LABEL_38;
        }

        if (self->_stepDone)
        {
          currentWiFiScanNoChannelCount = self->_currentWiFiScanNoChannelCount;
          if (currentWiFiScanNoChannelCount >= self->_wiFiScanLimit)
          {
            goto LABEL_59;
          }

          self->_currentWiFiScanNoChannelCount = currentWiFiScanNoChannelCount + 1;
LABEL_58:
          v4 = 15;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v15 = 16;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 17:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_4;
        block[3] = &unk_1E788B198;
        block[4] = self;
        v10 = block;
LABEL_36:
        dispatch_after(v8, dispatchQueue, v10);
        goto LABEL_61;
      case 18:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
            currentWiFiJoinNoChannelCount = self->_currentWiFiJoinNoChannelCount;
            if (currentWiFiJoinNoChannelCount >= self->_wiFiJoinLimit)
            {
              goto LABEL_59;
            }

            self->_currentWiFiJoinNoChannelCount = currentWiFiJoinNoChannelCount + 1;
LABEL_38:
            v4 = 17;
          }

          else
          {
LABEL_51:
            v4 = 19;
          }

          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v15 = 18;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 19:
        self->_state = 20;
        [(SFDeviceOperationHandlerWiFiSetup *)self _runIP4AvailableStart];
        goto LABEL_61;
      case 20:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
            goto LABEL_59;
          }

          v4 = 21;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v15 = 20;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 21:
        self->_state = 22;
        [(SFDeviceOperationHandlerWiFiSetup *)self _runReachabilityStart];
        goto LABEL_61;
      case 22:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
LABEL_59:
            v4 = 3;
          }

          else
          {
            v4 = 4;
          }

LABEL_60:
          self->_state = v4;
        }

        else
        {
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_61;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
          {
            v15 = 22;
LABEL_71:
            v18 = WiFiSetupStateToString(v15);
            LogPrintF();
            goto LABEL_61;
          }

LABEL_72:
          if (_LogCategory_Initialize())
          {
            v15 = self->_state;
            goto LABEL_71;
          }
        }

LABEL_61:
        if (self->_state == state)
        {
          return;
        }

        break;
      default:
        if (gLogCategory_SFDeviceOperationWiFiSetup > 90)
        {
          goto LABEL_61;
        }

        v11 = self->_state;
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          goto LABEL_19;
        }

        if (_LogCategory_Initialize())
        {
          v11 = self->_state;
LABEL_19:
          v18 = v11;
          v19 = WiFiSetupStateToString(v11);
          LogPrintF();
        }

        goto LABEL_61;
    }
  }
}

void __51__SFDeviceOperationHandlerWiFiSetup__runScanStart___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  v6 = *(a1 + 32);
  if (v6[16])
  {
LABEL_6:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A768];
    v9 = a2;
    v19 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v20[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v7 errorWithDomain:v8 code:v9 userInfo:v13];
    [v6 _runScanResults:a3 error:v14 channel:*(a1 + 40)];

    goto LABEL_6;
  }

  v16 = *(a1 + 40);
  v17 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 32);

  [v18 _runScanResults:a3 error:0 channel:v16];
}

uint64_t __51__SFDeviceOperationHandlerWiFiSetup__runJoinStart___block_invoke(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  mach_absolute_time();
  v4 = *(*(a1 + 32) + 224);
  result = UpTicksToSecondsF();
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v7 = v6;
    if (a2)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        v14 = *(a1 + 40);
        v15 = a2;
        LogPrintF();
      }
    }

    else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      __51__SFDeviceOperationHandlerWiFiSetup__runJoinStart___block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 76) = 1;
    v8 = NSErrorWithOSStatusF();
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    v11 = *(a1 + 32);
    v12 = [v11 createWiFiRetryMetricEvent:v11[10] duration:*(a1 + 40) channel:0 isScan:v7];
    [v11 addRetryMetric:v12];

    if (!a2 && (!_os_feature_enabled_impl() || SFDeviceClassCodeGet() != 4))
    {
      [*(a1 + 32) _cleanupOldWiFiNetworks];
    }

    v13 = *(a1 + 32);

    return [v13 _run];
  }

  return result;
}

- (void)_runIP4AvailableStart
{
  if (_os_feature_enabled_impl())
  {
    v3 = 60;
  }

  else
  {
    v3 = 10;
  }

  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_ipAssigned = 0;
  self->_ipAssignSecs = 0.0;
  self->_ipAssignStartTicks = mach_absolute_time();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  if (self->_ensureIP4Configured)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke;
    aBlock[3] = &unk_1E788DA50;
    aBlock[4] = self;
    aBlock[5] = &v25;
    v5 = _Block_copy(aBlock);
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    ip4Timeout = self->_ip4Timeout;
    self->_ip4Timeout = v6;

    dispatch_source_set_event_handler(self->_ip4Timeout, v5);
    SFDispatchTimerSet(self->_ip4Timeout, v3, -1.0, 0.0);
    dispatch_activate(self->_ip4Timeout);
    if (_os_feature_enabled_impl())
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v8 = nw_path_monitor_create_with_type(nw_interface_type_wifi);
      v9 = v26[5];
      v26[5] = v8;

      v10 = v26[5];
      if (!v10)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        self->_ipAssigned = 0;
        v5[2](v5);
        goto LABEL_30;
      }

      nw_path_monitor_set_queue(v10, self->_dispatchQueue);
      v11 = v26[5];
      update_handler[0] = MEMORY[0x1E69E9820];
      update_handler[1] = 3221225472;
      update_handler[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_2;
      update_handler[3] = &unk_1E788F648;
      update_handler[4] = self;
      v23 = v5;
      nw_path_monitor_set_update_handler(v11, update_handler);
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      nw_path_monitor_start(v26[5]);
      v16 = &v23;
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        v17 = v3;
        LogPrintF();
      }

      [(CUNetInterfaceMonitor *)self->_interfaceMonitor invalidate];
      v12 = objc_alloc_init(MEMORY[0x1E69994E0]);
      interfaceMonitor = self->_interfaceMonitor;
      self->_interfaceMonitor = v12;

      [(CUNetInterfaceMonitor *)self->_interfaceMonitor setDispatchQueue:self->_dispatchQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3;
      v20[3] = &unk_1E788B210;
      v20[4] = self;
      v14 = v5;
      v21 = v14;
      [(CUNetInterfaceMonitor *)self->_interfaceMonitor setPrimaryIPChangedHandler:v20];
      v15 = self->_interfaceMonitor;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4;
      v18[3] = &unk_1E788B210;
      v18[4] = self;
      v19 = v14;
      [(CUNetInterfaceMonitor *)v15 activateWithCompletion:v18];
      v16 = &v21;
    }

LABEL_30:
    goto LABEL_31;
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_stepDone = 1;
LABEL_31:
  _Block_object_dispose(&v25, 8);
}

void __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  mach_absolute_time();
  v6 = *(*(a1 + 32) + 248);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 256) = v7;
  if (_os_feature_enabled_impl())
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (v8)
    {
      nw_path_monitor_cancel(v8);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }
  }

  if (*(*(a1 + 32) + 88))
  {
    if (_os_feature_enabled_impl())
    {
      v11 = *(a1 + 32);
      v12 = [v11 createWiFiRetryMetricEventForIPAssign:0 duration:v11[32]];
      [v11 addRetryMetric:v12];
    }

    *(*(a1 + 32) + 40) = 1;
    *(*(a1 + 32) + 76) = 1;
    v13 = *(a1 + 32);

    [v13 _run];
  }

  else
  {
    v16 = NSErrorWithOSStatusF();
    if (_os_feature_enabled_impl())
    {
      v14 = *(a1 + 32);
      v15 = [v14 createWiFiRetryMetricEventForIPAssign:v16 duration:v14[32]];
      [v14 addRetryMetric:v15];
    }

    [*(a1 + 32) _completeError:v16];
  }
}

uint64_t __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_2(uint64_t a1, nw_path_t path)
{
  result = nw_path_get_status(path);
  if (result == 1)
  {
    *(*(a1 + 32) + 88) = 1;
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void *__58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3(void *result)
{
  v1 = result[4];
  if ((*(v1 + 16) & 1) == 0 && (*(v1 + 40) & 1) == 0)
  {
    v2 = result;
    LODWORD(v4) = 0;
    v3 = 0;
    result = *(v1 + 24);
    if (result)
    {
      result = [result primaryIPv4Addr];
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3_cold_1();
      }
    }

    if (v3 == 2)
    {
      *(v2[4] + 88) = 1;
      return (*(v2[5] + 16))();
    }
  }

  return result;
}

void *__58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4(uint64_t a1)
{
  LODWORD(v4) = 0;
  v3 = 0;
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = [result primaryIPv4Addr];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4_cold_1();
    }
  }

  if (v3 == 2)
  {
    *(*(a1 + 32) + 88) = 1;
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

- (void)_runReachabilityStart
{
  wifiSkipReachbility = self->_wifiSkipReachbility;
  if (self->_reachabilityEnabled)
  {
    if (!self->_wifiSkipReachbility)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerWiFiSetup _runReachabilityStart];
      }

      self->_stepDone = 0;
      stepError = self->_stepError;
      self->_stepError = 0;

      [(CUReachabilityMonitor *)self->_reachabilityMonitor invalidate];
      v5 = objc_alloc_init(MEMORY[0x1E6999510]);
      reachabilityMonitor = self->_reachabilityMonitor;
      self->_reachabilityMonitor = v5;

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setDispatchQueue:self->_dispatchQueue];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setTimeout:100.0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setCompletionHandler:v8];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor activate];
      return;
    }

    goto LABEL_8;
  }

  if (self->_wifiSkipReachbility)
  {
LABEL_8:
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _runReachabilityStart];
    }
  }

  if (!self->_reachabilityEnabled && gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _runReachabilityStart];
  }

  self->_stepDone = 1;
  v7 = self->_stepError;
  self->_stepError = 0;
}

void __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  v3 = v9;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    if (v9)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke_cold_1();
      }
    }

    else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke_cold_2();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    *(*(a1 + 32) + 76) = 1;
    v6 = v9;
    if (v9)
    {
      if ([v9 code] == -6748)
      {
        [*(*(a1 + 32) + 280) sharingSourceVersion];
      }

      v6 = NSErrorWithOSStatusF();
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    [*(a1 + 32) _run];
    v3 = v9;
  }
}

- (void)_cleanupOldWiFiNetworks
{
  networkName = [self networkName];
  v2 = CUPrintNSError();
  LogPrintF();
}

- (id)createWiFiRetryMetricEvent:(id)event duration:(double)duration channel:(int)channel isScan:(BOOL)scan
{
  scanCopy = scan;
  eventCopy = event;
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [v11 setObject:v12 forKeyedSubscript:@"wifiDN"];

  if ([eventCopy code])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "code")}];
    [v11 setObject:v13 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v11 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [eventCopy domain];
  if (domain)
  {
    domain2 = [eventCopy domain];
    [v11 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v11 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v16 = [eventCopy description];
  if (v16)
  {
    v17 = [eventCopy description];
    [v11 setObject:v17 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v11 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  v18 = 200;
  if (scanCopy)
  {
    v18 = 208;
  }

  v19 = 184;
  if (scanCopy)
  {
    v19 = 192;
    v20 = 168;
  }

  else
  {
    v20 = 176;
  }

  v21 = 3;
  if (scanCopy)
  {
    v21 = 1;
  }

  v22 = 2;
  if (scanCopy)
  {
    v22 = 0;
  }

  if (channel)
  {
    v18 = v19;
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(&self->super.isa + v18)];
  [v11 setObject:v24 forKeyedSubscript:@"wifiAT"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(&self->super.isa + v20)];
  [v11 setObject:v25 forKeyedSubscript:@"wifiLT"];

  v26 = [MEMORY[0x1E696AD98] numberWithInt:eventCopy == 0];
  [v11 setObject:v26 forKeyedSubscript:@"wifiSUCC"];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
  [v11 setObject:v27 forKeyedSubscript:@"wifiRT"];

  v28 = [v11 copy];

  return v28;
}

- (id)createWiFiRetryMetricEventForIPAssign:(id)assign duration:(double)duration
{
  assignCopy = assign;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [v6 setObject:v7 forKeyedSubscript:@"wifiDN"];

  if ([assignCopy code])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(assignCopy, "code")}];
    [v6 setObject:v8 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [assignCopy domain];
  if (domain)
  {
    domain2 = [assignCopy domain];
    [v6 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v6 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v11 = [assignCopy description];
  if (v11)
  {
    v12 = [assignCopy description];
    [v6 setObject:v12 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v6 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:assignCopy == 0];
  [v6 setObject:v13 forKeyedSubscript:@"wifiSUCC"];

  [v6 setObject:&unk_1F1D7CE80 forKeyedSubscript:@"wifiRT"];
  v14 = [v6 copy];

  return v14;
}

- (void)addRetryMetric:(id)metric
{
  metricCopy = metric;
  wiFiRetryMetrics = self->_wiFiRetryMetrics;
  v8 = metricCopy;
  if (!wiFiRetryMetrics)
  {
    v6 = objc_opt_new();
    v7 = self->_wiFiRetryMetrics;
    self->_wiFiRetryMetrics = v6;

    metricCopy = v8;
    wiFiRetryMetrics = self->_wiFiRetryMetrics;
  }

  [(NSMutableArray *)wiFiRetryMetrics addObject:metricCopy];
}

- (void)_handleWiFiSetupRequest:(uint64_t *)a3 responseHandler:.cold.1(void *a1, __CFString **a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *a1 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:1];
  *a3 = [v6 errorWithDomain:v7 code:-6721 userInfo:v11];
}

- (uint64_t)_runJoinStart:(uint64_t)a1 .cold.1(uint64_t a1)
{
  *(a1 + 112);
  *(a1 + 120);
  *(a1 + 136);
  *(a1 + 144);
  *(a1 + 128);
  v3 = *(a1 + 92);
  v2 = *(a1 + 152);
  return LogPrintF();
}

@end