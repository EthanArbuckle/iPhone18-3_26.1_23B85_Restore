@interface SFService
- (SFService)init;
- (SFService)initWithCoder:(id)a3;
- (id)description;
- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6 peer:(id)a7;
- (void)_activateWithCompletion:(id)a3;
- (void)_activated;
- (void)_cleanup;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_performActivateSafeChange:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)clearEncryptionInfoForPeer:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)a3 peer:(id)a4;
- (void)pairSetupWithFlags:(unsigned int)a3 peer:(id)a4;
- (void)sendEvent:(id)a3;
- (void)sendRequest:(id)a3;
- (void)sendResponse:(id)a3;
- (void)sendToPeer:(id)a3 flags:(unsigned int)a4 object:(id)a5;
- (void)sendToPeer:(id)a3 type:(unsigned __int8)a4 data:(id)a5;
- (void)serviceError:(id)a3;
- (void)servicePeerDisconnected:(id)a3 error:(id)a4;
- (void)serviceReceivedEvent:(id)a3;
- (void)serviceReceivedRequest:(id)a3;
- (void)serviceReceivedResponse:(id)a3;
- (void)serviceSessionFailed:(id)a3 error:(id)a4;
- (void)setAdvertiseRate:(int64_t)a3;
- (void)setAutoUnlockEnabled:(BOOL)a3;
- (void)setAutoUnlockWatch:(BOOL)a3;
- (void)setDeviceActionType:(unsigned __int8)a3;
- (void)setDuetSync:(BOOL)a3;
- (void)setHasProblem:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setNeedsAWDL:(BOOL)a3;
- (void)setNeedsKeyboard:(BOOL)a3;
- (void)setNeedsSetup:(BOOL)a3;
- (void)setPayloadDovePeace2:(unsigned __int8)a3;
- (void)setProblemFlags:(unint64_t)a3;
- (void)setTargetAuthTag:(id)a3;
- (void)setWakeDevice:(BOOL)a3;
- (void)setWatchLocked:(BOOL)a3;
- (void)updateWithService:(id)a3;
@end

@implementation SFService

- (id)description
{
  v31[1] = 0;
  NSAppendPrintF();
  v3 = 0;
  serviceType = self->_serviceType;
  if (self->_serviceType)
  {
    v31[0] = v3;
    SFNearbyBLEServiceTypeToString(serviceType);
    v5 = v31;
  }

  else
  {
    if (!self->_identifier)
    {
      goto LABEL_6;
    }

    v30 = v3;
    v5 = &v30;
  }

  NSAppendPrintF();
  v6 = *v5;

  v3 = v6;
LABEL_6:
  if (self->_invalidateCalled)
  {
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  if (self->_advertiseRate)
  {
    NSAppendPrintF();
    v9 = v3;

    v3 = v9;
  }

  authTagOverride = self->_authTagOverride;
  if (authTagOverride)
  {
    v26 = authTagOverride;
    NSAppendPrintF();
    v11 = v3;

    v3 = v11;
  }

  if (self->_autoUnlockEnabled)
  {
    NSAppendPrintF();
    v12 = v3;

    v3 = v12;
  }

  if (self->_autoUnlockWatch)
  {
    NSAppendPrintF();
    v13 = v3;

    v3 = v13;
  }

  if (self->_deviceActionType)
  {
    SFDeviceActionTypeToString(self->_deviceActionType);
    NSAppendPrintF();
    v14 = v3;

    v3 = v14;
  }

  if (self->_duetSync)
  {
    NSAppendPrintF();
    v15 = v3;

    v3 = v15;
  }

  if (self->_needsAWDL)
  {
    NSAppendPrintF();
    v16 = v3;

    v3 = v16;
  }

  if (self->_needsKeyboard)
  {
    NSAppendPrintF();
    v17 = v3;

    v3 = v17;
  }

  if (self->_needsSetup)
  {
    SFDeviceActionTypeToString(self->_deviceActionType);
    NSAppendPrintF();
    v18 = v3;

    v3 = v18;
  }

  if (self->_overrideScreenOff)
  {
    NSAppendPrintF();
    v19 = v3;

    v3 = v19;
  }

  if (self->_requestSSID)
  {
    requestSSID = self->_requestSSID;
    NSAppendPrintF();
    v20 = v3;

    v3 = v20;
  }

  if (self->_sessionFlags)
  {
    sessionFlags = self->_sessionFlags;
    NSAppendPrintF();
    v21 = v3;

    v3 = v21;
  }

  targetAuthTag = self->_targetAuthTag;
  if (targetAuthTag)
  {
    v29 = targetAuthTag;
    NSAppendPrintF();
    v23 = v3;

    v3 = v23;
  }

  if (self->_watchLocked)
  {
    NSAppendPrintF();
    v24 = v3;

    v3 = v24;
  }

  return v3;
}

- (SFService)init
{
  v7.receiver = self;
  v7.super_class = SFService;
  v2 = [(SFService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_ucatCore = &gLogCategory_SFServiceCore;
    v3->_ucatCrypto = &gLogCategory_SFServiceCrypto;
  }

  return v3;
}

- (SFService)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SFService;
  v5 = [(SFService *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v6->_ucatCore = &gLogCategory_SFServiceCore;
    v6->_ucatCrypto = &gLogCategory_SFServiceCrypto;
    if ([v4 containsValueForKey:@"advR"])
    {
      v6->_advertiseRate = [v4 decodeIntegerForKey:@"advR"];
    }

    v9 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v9 containsValueForKey:@"auE"])
    {
      v6->_autoUnlockEnabled = [v9 decodeBoolForKey:@"auE"];
    }

    if ([v9 containsValueForKey:@"auW"])
    {
      v6->_autoUnlockWatch = [v9 decodeBoolForKey:@"auW"];
    }

    if ([v9 containsValueForKey:@"dat"])
    {
      v6->_deviceActionType = [v9 decodeIntegerForKey:@"dat"];
    }

    if ([v9 containsValueForKey:@"dp2"])
    {
      v6->_payloadDovePeace2 = [v9 decodeIntForKey:@"dp2"];
    }

    if ([v9 containsValueForKey:@"deviceClassCode"])
    {
      v6->_deviceClassCode = [v9 decodeIntegerForKey:@"deviceClassCode"];
    }

    if ([v9 containsValueForKey:@"deviceColorCode"])
    {
      v6->_deviceColorCode = [v9 decodeIntegerForKey:@"deviceColorCode"];
    }

    if ([v9 containsValueForKey:@"deviceModelCode"])
    {
      v6->_deviceModelCode = [v9 decodeIntegerForKey:@"deviceModelCode"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"ds"])
    {
      v6->_duetSync = [v10 decodeBoolForKey:@"ds"];
    }

    if ([v10 containsValueForKey:@"prob"])
    {
      v6->_hasProblem = [v10 decodeBoolForKey:@"prob"];
    }

    if ([v10 containsValueForKey:@"ident"])
    {
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v6->_identifier;
      v6->_identifier = v11;
    }

    v13 = v10;
    if ([v13 containsValueForKey:@"awdl"])
    {
      v6->_needsAWDL = [v13 decodeBoolForKey:@"awdl"];
    }

    if ([v13 containsValueForKey:@"kb"])
    {
      v6->_needsKeyboard = [v13 decodeBoolForKey:@"kb"];
    }

    if ([v13 containsValueForKey:@"setup"])
    {
      v6->_needsSetup = [v13 decodeBoolForKey:@"setup"];
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"oso"])
    {
      v6->_overrideScreenOff = [v14 decodeBoolForKey:@"oso"];
    }

    v15 = v14;
    if ([v15 containsValueForKey:@"pf"])
    {
      v6->_problemFlags = [v15 decodeInt64ForKey:@"pf"];
    }

    if ([v15 containsValueForKey:@"st"])
    {
      v16 = [v15 decodeIntegerForKey:@"st"];
      v6->_serviceType = v16;
      if (v16 >= 0x100)
      {
        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D940];
        v19 = _NSMethodExceptionProem();
        [v17 raise:v18 format:{@"%@: service type out-of-range: %ld", v19, v16}];
      }
    }

    v20 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v20 containsValueForKey:@"svid"])
    {
      v21 = [v20 decodeObjectOfClass:objc_opt_class() forKey:@"svid"];
      serviceUUID = v6->_serviceUUID;
      v6->_serviceUUID = v21;
    }

    v27 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_sessionFlags = v27;
    }

    if ([v20 containsValueForKey:@"wake"])
    {
      v6->_wakeDevice = [v20 decodeBoolForKey:@"wake"];
    }

    v23 = v20;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v23 containsValueForKey:@"wl"])
    {
      v6->_watchLocked = [v23 decodeBoolForKey:@"wl"];
    }

    v24 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  advertiseRate = self->_advertiseRate;
  v13 = v4;
  if (advertiseRate)
  {
    [v4 encodeInteger:advertiseRate forKey:@"advR"];
    v4 = v13;
  }

  authTagOverride = self->_authTagOverride;
  if (authTagOverride)
  {
    [v13 encodeObject:authTagOverride forKey:@"ato"];
    v4 = v13;
  }

  if (self->_autoUnlockEnabled)
  {
    [v13 encodeBool:1 forKey:@"auE"];
    v4 = v13;
  }

  if (self->_autoUnlockWatch)
  {
    [v13 encodeBool:1 forKey:@"auW"];
    v4 = v13;
  }

  if (self->_deviceActionType)
  {
    [v13 encodeInteger:? forKey:?];
    v4 = v13;
  }

  if (self->_payloadDovePeace2)
  {
    [v13 encodeInt:? forKey:?];
    v4 = v13;
  }

  if (self->_deviceClassCode)
  {
    [v13 encodeInteger:? forKey:?];
    v4 = v13;
  }

  if (self->_deviceColorCode)
  {
    [v13 encodeInteger:? forKey:?];
    v4 = v13;
  }

  if (self->_deviceModelCode)
  {
    [v13 encodeInteger:? forKey:?];
    v4 = v13;
  }

  if (self->_duetSync)
  {
    [v13 encodeBool:1 forKey:@"ds"];
    v4 = v13;
  }

  if (self->_hasProblem)
  {
    [v13 encodeBool:1 forKey:@"prob"];
    v4 = v13;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v13 encodeObject:identifier forKey:@"ident"];
    v4 = v13;
  }

  if (self->_needsAWDL)
  {
    [v13 encodeBool:1 forKey:@"awdl"];
    v4 = v13;
  }

  if (self->_needsKeyboard)
  {
    [v13 encodeBool:1 forKey:@"kb"];
    v4 = v13;
  }

  if (self->_needsSetup)
  {
    [v13 encodeBool:1 forKey:@"setup"];
    v4 = v13;
  }

  if (self->_overrideScreenOff)
  {
    [v13 encodeBool:1 forKey:@"oso"];
    v4 = v13;
  }

  problemFlags = self->_problemFlags;
  if (problemFlags)
  {
    [v13 encodeInt64:problemFlags forKey:@"pf"];
    v4 = v13;
  }

  requestSSID = self->_requestSSID;
  if (requestSSID)
  {
    [v13 encodeObject:requestSSID forKey:@"rSSID"];
    v4 = v13;
  }

  if (self->_serviceType)
  {
    [v13 encodeInteger:? forKey:?];
    v4 = v13;
  }

  serviceUUID = self->_serviceUUID;
  if (serviceUUID)
  {
    [v13 encodeObject:serviceUUID forKey:@"svid"];
    v4 = v13;
  }

  sessionFlags = self->_sessionFlags;
  if (sessionFlags)
  {
    [v13 encodeInteger:sessionFlags forKey:@"seFl"];
    v4 = v13;
  }

  targetAuthTag = self->_targetAuthTag;
  if (targetAuthTag)
  {
    [v13 encodeObject:targetAuthTag forKey:@"tATag"];
    v4 = v13;
  }

  if (self->_wakeDevice)
  {
    [v13 encodeBool:1 forKey:@"wake"];
    v4 = v13;
  }

  if (self->_watchLocked)
  {
    [v13 encodeBool:1 forKey:@"wl"];
    v4 = v13;
  }
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v5 = [SFRemoteAutoFillService dealloc];
    [(SFService *)v5 _cleanup];
  }

  else
  {
    [(SFService *)self _cleanup];
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
    v7.super_class = SFService;
    [(SFService *)&v7 dealloc];
  }
}

- (void)_cleanup
{
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  eventMessageHandler = self->_eventMessageHandler;
  self->_eventMessageHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairSetupCompletionHandler = self->_pairSetupCompletionHandler;
  self->_pairSetupCompletionHandler = 0;

  peerDisconnectedHandler = self->_peerDisconnectedHandler;
  self->_peerDisconnectedHandler = 0;

  receivedFramePeerHandler = self->_receivedFramePeerHandler;
  self->_receivedFramePeerHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;

  requestMessageHandler = self->_requestMessageHandler;
  self->_requestMessageHandler = 0;

  responseMessageInternalHandler = self->_responseMessageInternalHandler;
  self->_responseMessageInternalHandler = 0;

  sessionStartedHandler = self->_sessionStartedHandler;
  self->_sessionStartedHandler = 0;

  sessionEndedHandler = self->_sessionEndedHandler;
  self->_sessionEndedHandler = 0;

  sessionSecuredHandler = self->_sessionSecuredHandler;
  self->_sessionSecuredHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  showPINHandlerEx = self->_showPINHandlerEx;
  self->_showPINHandlerEx = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (void)setAdvertiseRate:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SFService_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setAutoUnlockEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFService_setAutoUnlockEnabled___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setAutoUnlockWatch:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SFService_setAutoUnlockWatch___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setDeviceActionType:(unsigned __int8)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFService_setDeviceActionType___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setPayloadDovePeace2:(unsigned __int8)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFService_setPayloadDovePeace2___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setDuetSync:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__SFService_setDuetSync___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)clearEncryptionInfoForPeer:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:a3];
  [v3 clearEncryptionInfo];
}

- (void)setHasProblem:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setHasProblem___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsAWDL:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__SFService_setNeedsAWDL___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsKeyboard:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SFService_setNeedsKeyboard___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setNeedsSetup:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setNeedsSetup___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setProblemFlags:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__SFService_setProblemFlags___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setTargetAuthTag:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SFService_setTargetAuthTag___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFService *)self _performActivateSafeChange:v6];
}

- (void)setWakeDevice:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFService_setWakeDevice___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)setWatchLocked:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__SFService_setWatchLocked___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  v4 = a3;
  [(SFService *)self _performActivateSafeChange:v3];
}

- (void)updateWithService:(id)a3
{
  v6 = a3;
  if ([v6 advertiseRate])
  {
    self->_advertiseRate = [v6 advertiseRate];
  }

  self->_autoUnlockEnabled = [v6 autoUnlockEnabled];
  self->_autoUnlockWatch = [v6 autoUnlockWatch];
  self->_deviceActionType = [v6 deviceActionType];
  self->_payloadDovePeace2 = [v6 payloadDovePeace2];
  self->_duetSync = [v6 duetSync];
  self->_hasProblem = [v6 hasProblem];
  self->_needsAWDL = [v6 needsAWDL];
  self->_needsKeyboard = [v6 needsKeyboard];
  self->_needsSetup = [v6 needsSetup];
  self->_problemFlags = [v6 problemFlags];
  self->_wakeDevice = [v6 wakeDevice];
  self->_watchLocked = [v6 watchLocked];
  v4 = [v6 targetAuthTag];
  targetAuthTag = self->_targetAuthTag;
  self->_targetAuthTag = v4;
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
  v8[2] = __36__SFService_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v35 = 0;
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
  if (self->_invalidateCalled)
  {
    v9 = 0;
    v21 = 4294960572;
  }

  else
  {
    v9 = self->_identifier;
    if (v9)
    {
      serviceType = self->_serviceType;
      if (!self->_serviceType)
      {
        serviceType = SFServiceIdentifierToType(v9);
        self->_serviceType = serviceType;
      }

      if (self->_serviceUUID)
      {
        goto LABEL_35;
      }

      v11 = SFServiceTypeToUUID(serviceType);
      serviceUUID = self->_serviceUUID;
      self->_serviceUUID = v11;

      if (self->_serviceUUID || (SFServiceIdentifierToUUID(v9, &v35), v13 = objc_claimAutoreleasedReturnValue(), v14 = self->_serviceUUID, self->_serviceUUID = v13, v14, self->_serviceUUID))
      {
LABEL_35:
        if (!self->_requestQueue)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          requestQueue = self->_requestQueue;
          self->_requestQueue = v15;
        }

        [(SFService *)self _ensureXPCStarted];
        self->_activateInProgress = 1;
        xpcCnx = self->_xpcCnx;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __37__SFService__activateWithCompletion___block_invoke;
        v33[3] = &unk_1E788BF88;
        v33[4] = self;
        v18 = v6;
        v34 = v18;
        v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v33];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __37__SFService__activateWithCompletion___block_invoke_2;
        v31[3] = &unk_1E788BF88;
        v31[4] = self;
        v32 = v18;
        [v19 serviceActivate:self completion:v31];

        v35 = 0;
        goto LABEL_15;
      }

      v21 = 4294960588;
    }

    else
    {
      v21 = 4294960551;
    }
  }

  v35 = v21;
  v22 = self->_ucatCore->var0;
  if (v22 <= 60)
  {
    if (v22 != -1)
    {
LABEL_21:
      v30 = v21;
      LogPrintF();
      goto LABEL_23;
    }

    if (_LogCategory_Initialize())
    {
      v29 = self->_ucatCore;
      v21 = v35;
      goto LABEL_21;
    }
  }

LABEL_23:
  if (v6)
  {
    v23 = v35;
    if (v35)
    {
      v24 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v25;
      v26 = @"?";
      if (v25)
      {
        v26 = v25;
      }

      v38[0] = v26;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:{1, v30}];
      v27 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:v23 userInfo:v4];
    }

    else
    {
      v27 = 0;
    }

    (*(v6 + 2))(v6, v27);
    if (v23)
    {
    }
  }

LABEL_15:

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
}

void __37__SFService__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  if ((*(v4 + 11) & 1) == 0)
  {
    v5 = **(v4 + 32);
    if (v5 <= 60)
    {
      v9 = v3;
      if (v5 != -1)
      {
LABEL_4:
        LogPrintF();
        v3 = v9;
        goto LABEL_6;
      }

      v6 = _LogCategory_Initialize();
      v3 = v9;
      if (v6)
      {
        v8 = *(*(a1 + 32) + 32);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = v3;
    (*(v7 + 16))(v7);
    v3 = v10;
  }
}

void __37__SFService__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  v9 = v3;
  if (!v3)
  {
    [v4 _activated];
    goto LABEL_7;
  }

  if ((*(v4 + 11) & 1) == 0)
  {
    v5 = **(v4 + 32);
    if (v5 <= 60)
    {
      if (v5 != -1)
      {
LABEL_5:
        LogPrintF();
LABEL_7:
        v3 = v9;
        goto LABEL_8;
      }

      v7 = _LogCategory_Initialize();
      v3 = v9;
      if (v7)
      {
        v8 = *(*(a1 + 32) + 32);
        goto LABEL_5;
      }
    }
  }

LABEL_8:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v9);
    v3 = v9;
  }
}

- (void)_activated
{
  self->_activateCompleted = 1;
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucatCore = self->_ucatCore;
    }

    LogPrintF();
  }
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
    v12[2] = __30__SFService__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E788B198;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__SFService__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEF00];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
    var0 = self->_ucatCore->var0;
    if (var0 <= 10)
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
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    [(SFService *)self _ensureXPCStarted];
    self->_activateInProgress = 1;
    xpcCnx = self->_xpcCnx;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __25__SFService__interrupted__block_invoke;
    v12[3] = &unk_1E788B238;
    v12[4] = self;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __25__SFService__interrupted__block_invoke_2;
    v11[3] = &unk_1E788B238;
    v11[4] = self;
    [v8 serviceActivate:self completion:v11];

    os_activity_scope_leave(&state);
  }
}

void __25__SFService__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  if (v3)
  {
    v4 = **(*(a1 + 32) + 32);
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
        v6 = *(*(a1 + 32) + 32);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

void __25__SFService__interrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 9) = 0;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v8 = 0;
    [v4 _activated];
    goto LABEL_6;
  }

  v5 = *v4[4];
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
    v7 = *(*(a1 + 32) + 32);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__SFService_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 11))
  {
    return;
  }

  *(v1 + 11) = 1;
  v3 = *(a1 + 32);
  v4 = **(v3 + 32);
  if (v4 <= 30)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      v3 = *(a1 + 32);
      goto LABEL_6;
    }

    v5 = *(v3 + 32);
    v6 = _LogCategory_Initialize();
    v3 = *(a1 + 32);
    if (v6)
    {
      v9 = *(v3 + 32);
      goto LABEL_4;
    }
  }

LABEL_6:
  if (*(v3 + 80))
  {
    [*(v3 + 80) invalidate];
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = 0;
  }

  else
  {

    [v3 _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
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
  [(NSMutableDictionary *)self->_requestQueue enumerateKeysAndObjectsUsingBlock:&__block_literal_global_65];
  [(NSMutableDictionary *)self->_requestQueue removeAllObjects];
  requestQueue = self->_requestQueue;
  self->_requestQueue = 0;

  sessions = self->_sessions;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25__SFService__invalidated__block_invoke_2;
  v11[3] = &unk_1E788F430;
  v11[4] = self;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v11];
  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  v6 = self->_sessions;
  self->_sessions = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFService *)self _cleanup];
  self->_invalidateDone = 1;
  v8 = self->_ucatCore->var0;
  if (v8 <= 30)
  {
    if (v8 != -1)
    {
LABEL_11:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v9 = self->_ucatCore;
      goto LABEL_11;
    }
  }
}

void __25__SFService__invalidated__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 responseHandler];

  if (v4)
  {
    v5 = [v3 responseHandler];
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v14 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6723 userInfo:v11];
    (v5)[2](v5, v12, 0);
  }

  [v3 invalidate];

  v13 = *MEMORY[0x1E69E9840];
}

void __25__SFService__invalidated__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 272);
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v14 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6723 userInfo:v11];
    (*(v5 + 16))(v5, v4, v12);
  }

  [v4 invalidate];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_performActivateSafeChange:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activateCalled)
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    dispatchQueue = v5->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__SFService__performActivateSafeChange___block_invoke;
    v8[3] = &unk_1E788B318;
    v8[4] = v5;
    v9 = v4;
    dispatch_async(dispatchQueue, v8);

    os_activity_scope_leave(&state);
  }

  else
  {
    v4[2](v4);
  }

  objc_sync_exit(v5);
}

void __40__SFService__performActivateSafeChange___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 80) remoteObjectProxy];
  [v2 serviceUpdate:*(a1 + 32)];
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [v4 setIdentifier:v5];

  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__SFService_sendEvent___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);
}

void __23__SFService_sendEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendEvent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 80) remoteObjectProxy];
    [v4 serviceSendEvent:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = **(v2 + 32);
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
      v6 = *(*(a1 + 32) + 32);
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
  block[2] = __25__SFService_sendRequest___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(dispatchQueue, block);
}

void __25__SFService_sendRequest___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(a1[4] + 80) remoteObjectProxy];
    [v4 serviceSendRequest:a1[5]];

    [*(a1[4] + 16) setObject:a1[5] forKeyedSubscript:a1[6]];
    os_activity_scope_leave(&state);

    return;
  }

  v5 = **(v2 + 32);
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
      v6 = *(a1[4] + 32);
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
    block[2] = __26__SFService_sendResponse___block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v10 = v4;
    v7 = v4;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v8 = FatalErrorF();
    __26__SFService_sendResponse___block_invoke(v8);
  }
}

void __26__SFService_sendResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFService/serviceSendResponse", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [*(*(a1 + 32) + 80) remoteObjectProxy];
    [v4 serviceSendResponse:*(a1 + 40)];

    os_activity_scope_leave(&state);
    return;
  }

  v5 = **(v2 + 32);
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
      v6 = *(*(a1 + 32) + 32);
      goto LABEL_5;
    }
  }
}

- (void)sendToPeer:(id)a3 flags:(unsigned int)a4 object:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  if (v6)
  {
    v11 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v12 = __37__SFService_sendToPeer_flags_object___block_invoke;
  }

  else
  {
    v11 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v12 = __37__SFService_sendToPeer_flags_object___block_invoke_2;
  }

  v11[2] = v12;
  v11[3] = &unk_1E788BD88;
  v11[4] = self;
  v13 = v8;
  v11[5] = v13;
  v14 = v9;
  v11[6] = v14;
  dispatch_async(dispatchQueue, v11);
}

void __37__SFService_sendToPeer_flags_object___block_invoke(void *a1)
{
  v2 = (a1 + 4);
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v4 = v3;
  if (v3)
  {
    [v3 sendEncryptedObject:a1[6]];
  }

  else
  {
    __37__SFService_sendToPeer_flags_object___block_invoke_cold_1(v2);
  }
}

void __37__SFService_sendToPeer_flags_object___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v6 = v2;
  if (v2)
  {
    LOBYTE(v3) = [v2 sessionFlags];
  }

  else
  {
    v3 = *(*(a1 + 32) + 116);
  }

  v4 = *(a1 + 32);
  if ((v3 & 2) != 0)
  {
    v5 = 29;
  }

  else
  {
    v5 = 5;
  }

  [*(a1 + 32) _sendToPeer:*(a1 + 40) type:v5 unencryptedObject:*(a1 + 48)];
}

- (void)sendToPeer:(id)a3 type:(unsigned __int8)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__SFService_sendToPeer_type_data___block_invoke;
  v13[3] = &unk_1E788F3E0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)pairSetupWithFlags:(unsigned int)a3 peer:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFService_pairSetupWithFlags_peer___block_invoke;
  block[3] = &unk_1E788EC90;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void __37__SFService_pairSetupWithFlags_peer___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 pairSetupWithFlags:*(a1 + 48)];
  }

  else
  {
    __37__SFService_pairSetupWithFlags_peer___block_invoke_cold_1(v2);
  }
}

- (void)pairSetupTryPIN:(id)a3 peer:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFService_pairSetupTryPIN_peer___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __34__SFService_pairSetupTryPIN_peer___block_invoke(void *a1)
{
  v2 = (a1 + 4);
  v3 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v4 = v3;
  if (v3)
  {
    [v3 tryPIN:a1[6]];
  }

  else
  {
    __34__SFService_pairSetupTryPIN_peer___block_invoke_cold_1(v2);
  }
}

- (void)serviceError:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v5);
  }
}

- (void)servicePeerDisconnected:(id)a3 error:(id)a4
{
  v16 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucatCore = self->_ucatCore;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v12 = self->_ucatCore;
    }

    v14 = SFNearbyBLEServiceTypeToString(self->_serviceType);
    v15 = v6;
    v13 = v16;
    LogPrintF();
  }

LABEL_7:
  [(NSMutableDictionary *)self->_sessions removeObjectForKey:v16, v13, v14, v15];
  [v8 invalidate];
  sessionEndedHandler = self->_sessionEndedHandler;
  if (sessionEndedHandler)
  {
    sessionEndedHandler[2](sessionEndedHandler, v8, v6);
  }

LABEL_10:
}

- (void)serviceReceivedEvent:(id)a3
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

- (void)serviceReceivedRequest:(id)a3
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

- (void)serviceReceivedResponse:(id)a3
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
    [SFService serviceReceivedResponse:?];
  }
}

- (void)serviceSessionFailed:(id)a3 error:(id)a4
{
  v15 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [v15 peer];
  var0 = self->_ucatCore->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v13 = SFNearbyBLEServiceTypeToString(self->_serviceType);
      v14 = v6;
      v12 = v7;
      LogPrintF();
      goto LABEL_5;
    }

    ucatCore = self->_ucatCore;
    if (_LogCategory_Initialize())
    {
      v11 = self->_ucatCore;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v7)
  {
    [(NSMutableDictionary *)self->_sessions removeObjectForKey:v7];
  }

  [v15 invalidate];
  sessionEndedHandler = self->_sessionEndedHandler;
  if (sessionEndedHandler)
  {
    sessionEndedHandler[2](sessionEndedHandler, v15, v6);
  }
}

- (int)setEncryptionReadKey:(const char *)a3 readKeyLen:(unint64_t)a4 writeKey:(const char *)a5 writeKeyLen:(unint64_t)a6 peer:(id)a7
{
  OUTLINED_FUNCTION_7_2();
  v13 = [*(v11 + 24) objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 setEncryptionReadKey:v10 readKeyLen:v9 writeKey:v8 writeKeyLen:v7];
  }

  else
  {
    v15 = -6727;
  }

  return v15;
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

uint64_t __37__SFService_sendToPeer_flags_object___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    v8 = *v1;
    return LogPrintF();
  }

  return result;
}

- (void)_sendToPeer:type:unencryptedObject:.cold.1()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_2_17(*(v2 + 32));
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = *(v1 + 32);
    }

    LogPrintF();
  }

LABEL_6:
}

- (uint64_t)_sendToPeer:(uint64_t)a3 type:(void *)a4 unencryptedObject:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_2_17(*(a1 + 32));
  if (v10 ^ v11 | v9)
  {
    v12 = v7;
    if (v8 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v13 = *(a1 + 32);
    }

    v14 = *v12;
    result = LogPrintF();
  }

LABEL_6:
  *a4 = 0;
  return result;
}

uint64_t __37__SFService_pairSetupWithFlags_peer___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    v8 = *v1;
    return LogPrintF();
  }

  return result;
}

uint64_t __34__SFService_pairSetupTryPIN_peer___block_invoke_cold_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_19(a1);
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_5_7();
    if (v4)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *(*v2 + 32);
    }

    v8 = *v1;
    return LogPrintF();
  }

  return result;
}

- (int)serviceReceivedResponse:(int *)a1 .cold.1(int **a1)
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