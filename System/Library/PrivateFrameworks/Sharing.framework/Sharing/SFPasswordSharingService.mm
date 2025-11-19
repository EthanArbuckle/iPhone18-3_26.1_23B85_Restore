@interface SFPasswordSharingService
+ (unsigned)passwordSharingAvailability;
- (BOOL)__activateCalled;
- (BOOL)__invalidateCalled;
- (BOOL)disabledViaConfig;
- (SFPasswordSharingService)init;
- (SFPasswordSharingServiceDelegate)delegate;
- (id)messageForDisplayName:(id)a3 deviceName:(id)a4 info:(id)a5;
- (int)_runServiceStart;
- (uint64_t)_sendPasswordReceived;
- (void)_cleanup;
- (void)_handleReceivedPassword:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleUserNotificationResponse:(int)a3;
- (void)_passInfoToDelegate:(id)a3;
- (void)_promptUserWithInfo:(id)a3 message:(id)a4;
- (void)_receivedObject:(id)a3 flags:(unsigned int)a4;
- (void)_run;
- (void)_sendPasswordReceived;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFPasswordSharingService

+ (unsigned)passwordSharingAvailability
{
  v2 = dispatch_queue_create("com.apple.Sharing.wpsClientQueue", 0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v4 = objc_alloc_init(SFClient);
  [(SFClient *)v4 setDispatchQueue:v2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke;
  v9[3] = &unk_1E7890260;
  v11 = &v17;
  v12 = &v13;
  v5 = v3;
  v10 = v5;
  [(SFClient *)v4 wifiPasswordSharingAvailabilityWithCompletion:v9];
  v6 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v5, v6);
  [(SFClient *)v4 invalidate];
  if (v14[3])
  {
    if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = 1;
    *(v18 + 6) = 1;
  }

  else
  {
    v7 = *(v18 + 6);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v6 = v5;
  if (v5 && gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __55__SFPasswordSharingService_passwordSharingAvailability__block_invoke_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (SFPasswordSharingService)init
{
  v7.receiver = self;
  v7.super_class = SFPasswordSharingService;
  v2 = [(SFPasswordSharingService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_shareTime = -1.0;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFPasswordSharingService *)v3 _cleanup];
  }

  else
  {
    [(SFPasswordSharingService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFPasswordSharingService;
    [(SFPasswordSharingService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  promptedInfo = self->_promptedInfo;
  self->_promptedInfo = 0;

  self->_serviceState = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFPasswordSharingService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__SFPasswordSharingService_activate__block_invoke(uint64_t a1)
{
  Int64 = CFPrefs_GetInt64();
  result = [*(a1 + 32) disabledViaConfig];
  if (!Int64 || (result & 1) != 0)
  {
    if (gLogCategory_SFPasswordSharingService <= 50)
    {
      if (gLogCategory_SFPasswordSharingService != -1)
      {
        return __36__SFPasswordSharingService_activate__block_invoke_cold_2();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __36__SFPasswordSharingService_activate__block_invoke_cold_2();
      }
    }
  }

  else
  {
    if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      __36__SFPasswordSharingService_activate__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 8) = 1;
    return [*(a1 + 32) _run];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFPasswordSharingService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__SFPasswordSharingService_invalidate__block_invoke(uint64_t a1)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(v2 + 64) * 1000.0);
  v18[0] = @"_cat";
  v18[1] = @"_op";
  v19[0] = @"PasswordSharing";
  v19[1] = @"ServiceInvalidate";
  v18[2] = @"serviceState";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 48)];
  v19[2] = v4;
  v18[3] = @"durationMS";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v19[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  SFDashboardLogJSON(v6);

  v16[0] = @"serviceState";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 48)];
  v16[1] = @"durationMS";
  v17[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  SFMetricsLog(@"com.apple.sharing.PasswordSharingServiceInvalidate", v9);

  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __38__SFPasswordSharingService_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  result = [*(a1 + 32) _cleanup];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)_runServiceStart
{
  result = self->_serviceState;
  if (!result)
  {
    if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingService _runServiceStart];
    }

    self->_serviceState = 1;
    [(SFService *)self->_service invalidate];
    v4 = objc_alloc_init(SFService);
    service = self->_service;
    self->_service = v4;

    [(SFService *)self->_service setAdvertiseRate:50];
    [(SFService *)self->_service setDeviceActionType:8];
    [(SFService *)self->_service setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_service setFixedPIN:@"9zfCcnJgD*sK&h7h7Xa1z*IU^2U%zKTg"];
    [(SFService *)self->_service setIdentifier:@"com.apple.sharing.PasswordSharing"];
    [(SFService *)self->_service setLabel:@"SFPasswordSharingService"];
    [(SFService *)self->_service setNeedsSetup:1];
    [(SFService *)self->_service setRequestSSID:self->_networkName];
    [(SFService *)self->_service setSessionFlags:20];
    [(SFService *)self->_service setInterruptionHandler:&__block_literal_global_60];
    [(SFService *)self->_service setInvalidationHandler:&__block_literal_global_176_0];
    [(SFService *)self->_service setPeerDisconnectedHandler:&__block_literal_global_180];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_4;
    v12[3] = &unk_1E788FAA0;
    v12[4] = self;
    [(SFService *)self->_service setReceivedObjectHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_5;
    v11[3] = &unk_1E788CA68;
    v11[4] = self;
    [(SFService *)self->_service setSessionStartedHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_6;
    v10[3] = &unk_1E788CA90;
    v10[4] = self;
    [(SFService *)self->_service setSessionEndedHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_7;
    v9[3] = &unk_1E788CA68;
    v9[4] = self;
    [(SFService *)self->_service setSessionSecuredHandler:v9];
    v6 = self->_service;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__SFPasswordSharingService__runServiceStart__block_invoke_8;
    v8[3] = &unk_1E788B238;
    v8[4] = self;
    [(SFService *)v6 activateWithCompletion:v8];
    result = self->_serviceState;
  }

  if (result == 4)
  {
    return 4;
  }

  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    if (gLogCategory_SFPasswordSharingService != -1 || (v7 = _LogCategory_Initialize(), result = self->_serviceState, v7))
    {
      LogPrintF();
      return self->_serviceState;
    }
  }

  return result;
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke()
{
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __44__SFPasswordSharingService__runServiceStart__block_invoke_cold_1();
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_2()
{
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __44__SFPasswordSharingService__runServiceStart__block_invoke_2_cold_1();
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    __44__SFPasswordSharingService__runServiceStart__block_invoke_6_cold_1(v10);
  }

  v6 = *(*(a1 + 32) + 24);
  v7 = [v10 peer];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_SFPasswordSharingService <= 30)
  {
    v9 = v3;
    if (gLogCategory_SFPasswordSharingService != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      __44__SFPasswordSharingService__runServiceStart__block_invoke_7_cold_1(v4);
      v4 = v9;
    }
  }

  if (!*(*(a1 + 32) + 24))
  {
    v10 = v4;
    v6 = [v4 peer];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v4 = v10;
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      __44__SFPasswordSharingService__runServiceStart__block_invoke_8_cold_2();
    }

    *(*(a1 + 32) + 48) = 4;
    [*(a1 + 32) _run];
    goto LABEL_10;
  }

  if (gLogCategory_SFPasswordSharingService <= 90)
  {
    v6 = v3;
    if (gLogCategory_SFPasswordSharingService != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __44__SFPasswordSharingService__runServiceStart__block_invoke_8_cold_1();
LABEL_10:
      v4 = v6;
    }
  }
}

- (void)_handleReceivedPassword:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _handleReceivedPassword:?];
  }

  [(NSDate *)self->_shareClock timeIntervalSinceNow];
  v6 = v5;
  [(NSDate *)self->_shareClock timeIntervalSinceNow];
  if (v6 < 0.0)
  {
    v7 = -v7;
  }

  self->_shareTime = v7;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = NSDictionaryGetNSNumber();
  if (v8 && v9)
  {
    v11 = objc_alloc_init(SFPasswordSharingInfo);
    [(SFPasswordSharingInfo *)v11 setChannel:v10];
    [(SFPasswordSharingInfo *)v11 setNetworkName:v8];
    [(SFPasswordSharingInfo *)v11 setPsk:v9];
    [(SFPasswordSharingService *)self _sendPasswordReceived];
    [(SFPasswordSharingService *)self _passInfoToDelegate:v11];
  }

  else
  {
    if (gLogCategory_SFPasswordSharingService <= 90 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingService _handleReceivedPassword:];
    }

    [(SFPasswordSharingService *)self _sendPasswordDeclinedWithError:4294960554];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionStarted:(id)a3
{
  v8 = a3;
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _handleSessionStarted:v8];
  }

  v4 = [MEMORY[0x1E695DF00] date];
  shareClock = self->_shareClock;
  self->_shareClock = v4;

  if (!self->_peer)
  {
    v6 = [v8 peer];
    peer = self->_peer;
    self->_peer = v6;
  }
}

- (void)_handleUserNotificationResponse:(int)a3
{
  if (a3 == 2)
  {
    [(SFPasswordSharingService *)self _sendPasswordDeclinedWithError:4294960573];
  }

  else if (a3 == 1)
  {
    [(SFPasswordSharingService *)self _passInfoToDelegate:self->_promptedInfo];
    promptedInfo = self->_promptedInfo;
    self->_promptedInfo = 0;
  }

  [(SFUserAlert *)self->_notification invalidate];
  notification = self->_notification;
  self->_notification = 0;
}

- (void)_receivedObject:(id)a3 flags:(unsigned int)a4
{
  v5 = a3;
  v7 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFPasswordSharingService <= 50 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _receivedObject:Int64Ranged flags:?];
  }

  if (Int64Ranged == 5)
  {
    [(SFPasswordSharingService *)self _handleReceivedPassword:v5];
  }

  else if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _receivedObject:Int64Ranged flags:?];
  }
}

- (void)_sendPasswordReceived
{
  if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

- (void)_passInfoToDelegate:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
    {
      [SFPasswordSharingService _passInfoToDelegate:];
    }

    [WeakRetained service:self receivedNetworkInfo:v5];
  }
}

- (void)_promptUserWithInfo:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SFIsGreenTeaDevice();
  v9 = @"PASSWORD_ACCEPT_PROMPT_TITLE";
  if (v8)
  {
    v9 = @"PASSWORD_ACCEPT_PROMPT_TITLE_WLAN";
  }

  v10 = v9;
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService _promptUserWithInfo:message:];
  }

  [(SFUserAlert *)self->_notification invalidate];
  v11 = objc_alloc_init(SFUserAlert);
  notification = self->_notification;
  self->_notification = v11;

  v13 = SFLocalizedStringForKey(@"PASSWORD_ACCEPT_PROMPT_OTHER_BUTTON");
  [(SFUserAlert *)self->_notification setAlternateButtonTitle:v13];

  v14 = SFLocalizedStringForKey(@"PASSWORD_ACCEPT_PROMPT_DEFAULT_BUTTON");
  [(SFUserAlert *)self->_notification setDefaultButtonTitle:v14];

  [(SFUserAlert *)self->_notification setDispatchQueue:self->_dispatchQueue];
  [(SFUserAlert *)self->_notification setMessage:v7];

  v15 = SFLocalizedStringForKey(v10);
  [(SFUserAlert *)self->_notification setTitle:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__SFPasswordSharingService__promptUserWithInfo_message___block_invoke;
  v18[3] = &unk_1E788CB60;
  v18[4] = self;
  [(SFUserAlert *)self->_notification setResponseHandler:v18];
  promptedInfo = self->_promptedInfo;
  self->_promptedInfo = v6;
  v17 = v6;

  [(SFUserAlert *)self->_notification present];
}

- (BOOL)disabledViaConfig
{
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService disabledViaConfig];
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isPasswordProximityAutoFillRequestingAllowed];

  if ((v3 & 1) == 0 && gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService disabledViaConfig];
  }

  return v3 ^ 1;
}

- (id)messageForDisplayName:(id)a3 deviceName:(id)a4 info:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (SFIsGreenTeaDevice())
    {
      v10 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_WLAN";
    }

    else
    {
      v10 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = SFLocalizedStringForKey(v10);
    v13 = [v9 networkName];
    [v11 stringWithFormat:v12, v7, v13];
  }

  else
  {
    v14 = SFIsGreenTeaDevice();
    v15 = MEMORY[0x1E696AEC0];
    if (v8)
    {
      if (v14)
      {
        v16 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_DEVICE_WLAN";
      }

      else
      {
        v16 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_DEVICE";
      }

      v12 = SFLocalizedStringForKey(v16);
      v13 = [v9 networkName];
      [v15 stringWithFormat:v12, v8, v13];
    }

    else
    {
      if (v14)
      {
        v17 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_GENERIC_WLAN";
      }

      else
      {
        v17 = @"PASSWORD_ACCEPT_PROMPT_MESSAGE_GENERIC";
      }

      v12 = SFLocalizedStringForKey(v17);
      v13 = [v9 networkName];
      [v15 stringWithFormat:v12, v13, v20];
    }
  }
  v18 = ;

  return v18;
}

- (BOOL)__activateCalled
{
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService __activateCalled];
  }

  return self->_activateCalled;
}

- (BOOL)__invalidateCalled
{
  if (gLogCategory_SFPasswordSharingService <= 30 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    [SFPasswordSharingService __invalidateCalled];
  }

  return self->_invalidateCalled;
}

- (SFPasswordSharingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {

    [(SFPasswordSharingService *)self _runServiceStart];
  }
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_6_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __44__SFPasswordSharingService__runServiceStart__block_invoke_7_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (void)_handleReceivedPassword:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 56)];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (uint64_t)_receivedObject:(uint64_t)result flags:(unsigned int *)a2 .cold.1(uint64_t result, unsigned int *a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a2;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 <= 6u)
  {
    v2 = off_1E7890280[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_receivedObject:(unsigned __int8)a1 flags:(char)a2 .cold.3(unsigned __int8 a1, char a2)
{
  if (a1 <= 6u)
  {
    v2 = off_1E7890280[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_sendPasswordReceived
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16();
    }
  }

  return result;
}

- (uint64_t)_sendPasswordDeclinedWithError:(uint64_t)result .cold.2(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16();
    }
  }

  return result;
}

- (void)_sendPasswordDeclinedWithError:.cold.3()
{
  if (gLogCategory_SFPasswordSharingService <= 60 && (gLogCategory_SFPasswordSharingService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

@end