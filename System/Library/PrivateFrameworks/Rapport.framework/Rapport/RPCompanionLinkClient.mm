@interface RPCompanionLinkClient
- (BOOL)shouldReportDevice:(id)device toXPCConnectionWithLaunchInstanceID:(id)d outReason:(id *)reason;
- (NSArray)activeDevices;
- (RPCompanionLinkClient)init;
- (RPCompanionLinkClient)initWithCoder:(id)coder;
- (RPCompanionLinkClient)initWithUserProvider:(id)provider;
- (RPCompanionLinkDevice)activePersonalCompanion;
- (id)_XPCConnectionWithMachServiceName:(id)name options:(unint64_t)options;
- (id)_clientError:(id)error;
- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)_ensureXPCStarted;
- (id)activateAssertionID:(id)d destinationID:(id)iD options:(id)options completion:(id)completion;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidateAssertion:(id)assertion;
- (void)_invalidated;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_lostAllDevices;
- (void)_registerEventID:(id)d options:(id)options reregister:(BOOL)reregister;
- (void)_registerProfileID:(id)d reregister:(BOOL)reregister completion:(id)completion;
- (void)_registerRequestID:(id)d options:(id)options reregister:(BOOL)reregister;
- (void)_registerRequestIDOnQueue:(id)queue options:(id)options handler:(id)handler;
- (void)_reregisterAssertions;
- (void)_reregisterEvents;
- (void)_reregisterProfileIDs;
- (void)_reregisterRequests;
- (void)_startNWActivity:(unsigned int)activity options:(id)options result:(id)result;
- (void)activateWithCompletion:(id)completion;
- (void)companionLinkAuthCompleted:(id)completed;
- (void)companionLinkFoundDevice:(id)device;
- (void)companionLinkHandleDisconnect;
- (void)companionLinkLocalDeviceUpdated:(id)updated;
- (void)companionLinkLostDevice:(id)device;
- (void)companionLinkReceivedEventID:(id)d event:(id)event options:(id)options;
- (void)companionLinkReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)companionLinkUpdateClientState:(id)state;
- (void)companionLinkUpdateErrorFlags:(unint64_t)flags;
- (void)createDeviceToEndpointMappingForDevice:(id)device completion:(id)completion;
- (void)deregisterEventID:(id)d;
- (void)deregisterProfileID:(id)d completion:(id)completion;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)launchAppWithBundleID:(id)d destinationID:(id)iD completion:(id)completion;
- (void)launchAppWithURL:(id)l destinationID:(id)d completion:(id)completion;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerProfileID:(id)d completion:(id)completion;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)removeLocalDeviceAsContextCollectorWithCompletion:(id)completion;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)setBleScreenOffRescanInterval:(int64_t)interval;
- (void)setBleScreenOffScanRate:(unsigned int)rate;
- (void)setControlFlags:(unint64_t)flags;
- (void)setDeviceFilter:(id)filter;
- (void)setLocalDeviceAsContextCollectorWithCompletion:(id)completion;
- (void)setServiceType:(id)type;
- (void)setSiriInfo:(id)info;
- (void)setUseCase:(unsigned int)case;
- (void)triggerEnhancedDiscoveryForReason:(id)reason useCase:(unsigned int)case completion:(id)completion;
- (void)tryPassword:(id)password;
@end

@implementation RPCompanionLinkClient

- (RPCompanionLinkClient)init
{
  v3 = objc_alloc_init(RPSignedInUserProvider);
  v4 = [(RPCompanionLinkClient *)self initWithUserProvider:v3];

  return v4;
}

- (id)description
{
  controlFlags = self->_controlFlags;
  flags = self->_flags;
  clientID = self->_clientID;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  appID = self->_appID;
  if (appID)
  {
    v39 = v3;
    clientID = appID;
    NSAppendPrintF();
    v6 = v39;

    v4 = v6;
  }

  if (self->_bleClientUseCase)
  {
    clientID = self->_bleClientUseCase;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if (self->_useCase)
  {
    clientID = self->_useCase;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  cloudServiceID = self->_cloudServiceID;
  if (cloudServiceID)
  {
    clientID = cloudServiceID;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  if (self->_rssiThreshold)
  {
    clientID = self->_rssiThreshold;
    NSAppendPrintF();
    v11 = v4;

    v4 = v11;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    clientID = serviceType;
    NSAppendPrintF();
    v13 = v4;

    v4 = v13;
  }

  allowedMACAddresses = self->_allowedMACAddresses;
  if (allowedMACAddresses)
  {
    v15 = allowedMACAddresses;
    [(NSArray *)v15 count:clientID];
    NSAppendPrintF();
    v16 = v4;

    v4 = v16;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    if (passwordType <= 0xB)
    {
      v18 = off_1E7C93818[passwordType - 1];
    }

    NSAppendPrintF();
    v19 = v4;

    v4 = v19;
  }

  pairingInfo = self->_pairingInfo;
  if (pairingInfo)
  {
    v21 = pairingInfo;
    [(NSData *)v21 length];
    NSAppendPrintF();
    v22 = v4;

    v4 = v22;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    v34 = pairSetupACL;
    NSAppendPrintF();
    v24 = v4;

    v4 = v24;
  }

  if (self->_usingOnDemandConnection)
  {
    NSAppendPrintF();
    v25 = v4;

    v4 = v25;
  }

  self->_destinationDevice;
  NSAppendPrintF();
  v26 = v4;

  if (self->_bleScreenOffRescanInterval)
  {
    bleScreenOffRescanInterval = self->_bleScreenOffRescanInterval;
    NSAppendPrintF();
    v27 = v26;

    v26 = v27;
  }

  if (self->_bleScreenOffScanRate)
  {
    NSAppendPrintF();
    v29 = v26;

    v26 = v29;
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    v36 = deviceFilter;
    NSAppendPrintF();
    v31 = v26;

    v26 = v31;
  }

  return v26;
}

- (id)_ensureXPCStarted
{
  if (self->_daemonCnx)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (self->_invalidateCalled)
  {
    v2 = RPErrorF();
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__RPCompanionLinkClient__ensureXPCStarted__block_invoke;
  aBlock[3] = &unk_1E7C92CE8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__RPCompanionLinkClient__ensureXPCStarted__block_invoke_2;
  v9[3] = &unk_1E7C92CE8;
  v9[4] = self;
  v5 = _Block_copy(v9);
  if ([(RPSignedInUserProvider *)self->_userProvider supportsMultipleUsers]&& self->_targetUserSession)
  {
    if (![(RPSignedInUserProvider *)self->_userProvider signedInUserID])
    {
      if (gLogCategory_CLinkClient <= 50 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
      {
        [RPCompanionLinkClient _ensureXPCStarted];
      }

      v2 = RPErrorF();
      goto LABEL_15;
    }

    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _ensureXPCStarted];
    }
  }

  v6 = [(RPCompanionLinkClient *)self _connectionWithClient:self queue:self->_dispatchQueue userProvider:self->_userProvider interruptionHandler:v4 invalidationHandler:v5];
  daemonCnx = self->_daemonCnx;
  self->_daemonCnx = v6;

  if (gLogCategory_CLinkClient <= 10 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _ensureXPCStarted];
  }

  v2 = 0;
LABEL_15:

LABEL_16:

  return v2;
}

- (NSArray)activeDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceDictionary = selfCopy->_deviceDictionary;
  if (deviceDictionary)
  {
    allValues = [(NSMutableDictionary *)deviceDictionary allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

uint64_t __35__RPCompanionLinkClient_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __35__RPCompanionLinkClient_invalidate__block_invoke_cold_1(v2);
    }

    [*(*v2 + 40) invalidate];
    v3 = *v2;

    return [v3 _invalidated];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPCompanionLinkClient_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_CLinkClient <= 60 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _invalidated];
    }

    if (!self->_daemonCnx)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      [(NSMutableSet *)self->_assertions removeAllObjects];
      [(NSMutableDictionary *)self->_eventRegistrations removeAllObjects];
      [(NSMutableDictionary *)self->_requestRegistrations removeAllObjects];
      authCompletionHandler = self->_authCompletionHandler;
      self->_authCompletionHandler = 0;

      deviceFoundHandler = self->_deviceFoundHandler;
      self->_deviceFoundHandler = 0;

      deviceLostHandler = self->_deviceLostHandler;
      self->_deviceLostHandler = 0;

      deviceChangedHandler = self->_deviceChangedHandler;
      self->_deviceChangedHandler = 0;

      disconnectHandler = self->_disconnectHandler;
      self->_disconnectHandler = 0;

      errorFlagsChangedHandler = self->_errorFlagsChangedHandler;
      self->_errorFlagsChangedHandler = 0;

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      v11 = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      localDeviceUpdatedHandler = self->_localDeviceUpdatedHandler;
      self->_localDeviceUpdatedHandler = 0;

      showPasswordHandler = self->_showPasswordHandler;
      self->_showPasswordHandler = 0;

      hidePasswordHandler = self->_hidePasswordHandler;
      self->_hidePasswordHandler = 0;

      promptForPasswordHandler = self->_promptForPasswordHandler;
      self->_promptForPasswordHandler = 0;

      stateUpdatedHandler = self->_stateUpdatedHandler;
      self->_stateUpdatedHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
      {
        [RPCompanionLinkClient _invalidated];
      }
    }
  }
}

uint64_t __42__RPCompanionLinkClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (RPCompanionLinkClient)initWithUserProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = RPCompanionLinkClient;
  v6 = [(RPCompanionLinkClient *)&v9 init];
  if (v6)
  {
    if (gRPCompanionLinkClientIDOnce != -1)
    {
      [RPCompanionLinkClient initWithUserProvider:];
    }

    v6->_clientID = atomic_fetch_add(&gRPCompanionLinkClientIDNext, 1u) + 1;
    v6->_controlFlags = 36;
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x1E69E96A0]);
    objc_storeStrong(&v6->_userProvider, provider);
    v7 = v6;
  }

  return v6;
}

uint64_t __46__RPCompanionLinkClient_initWithUserProvider___block_invoke()
{
  result = RandomBytes();
  gRPCompanionLinkClientIDNext = word_1ED7E5102 << 16;
  return result;
}

- (RPCompanionLinkClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = RPCompanionLinkClient;
  v5 = [(RPCompanionLinkClient *)&v27 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    if ([v8 containsValueForKey:@"agdt"])
    {
      [v8 decodeDoubleForKey:@"agdt"];
      v6->_awdlGuestDiscoveryTimeout = v9;
    }

    v10 = v8;
    if ([v10 containsValueForKey:@"bleCUC"])
    {
      v6->_bleClientUseCase = [v10 decodeIntegerForKey:@"bleCUC"];
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"bleScnOffIntvl"])
    {
      v6->_bleScreenOffRescanInterval = [v11 decodeIntegerForKey:@"bleScnOffIntvl"];
    }

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_bleScreenOffScanRate = v28;
    }

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_clientID = v28;
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v13 decodeInt64ForKey:@"cFl"];
    }

    v14 = objc_opt_self();
    NSDecodeNSArrayOfClassIfPresent();

    v15 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    if ([v17 containsValueForKey:@"esp"])
    {
      v6->_encodeSensitiveProperties = [v17 decodeBoolForKey:@"esp"];
    }

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_flags = v28;
    }

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v28;
    }

    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v28;
    }

    v20 = v19;
    if ([v20 containsValueForKey:@"reAcC"])
    {
      v6->_reactivateCalled = [v20 decodeBoolForKey:@"reAcC"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"rssiTh"])
    {
      v6->_rssiThreshold = [v21 decodeIntegerForKey:@"rssiTh"];
    }

    v22 = v21;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v23 = v22;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v28 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_useCase = v28;
    }

    v24 = v23;
    if ([v24 containsValueForKey:@"uOnd"])
    {
      v6->_usingOnDemandConnection = [v24 decodeBoolForKey:@"uOnd"];
    }

    v25 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowedMACAddresses = self->_allowedMACAddresses;
  if (allowedMACAddresses)
  {
    [coderCopy encodeObject:allowedMACAddresses forKey:@"MAcAddrs"];
  }

  appID = self->_appID;
  if (appID)
  {
    [coderCopy encodeObject:appID forKey:@"appID"];
  }

  if (self->_awdlGuestDiscoveryTimeout != 0.0)
  {
    [coderCopy encodeDouble:@"agdt" forKey:?];
  }

  bleClientUseCase = self->_bleClientUseCase;
  if (bleClientUseCase)
  {
    [coderCopy encodeInteger:bleClientUseCase forKey:@"bleCUC"];
  }

  bleScreenOffRescanInterval = self->_bleScreenOffRescanInterval;
  if (bleScreenOffRescanInterval)
  {
    [coderCopy encodeInteger:bleScreenOffRescanInterval forKey:@"bleScnOffIntvl"];
  }

  bleScreenOffScanRate = self->_bleScreenOffScanRate;
  if (bleScreenOffScanRate)
  {
    [coderCopy encodeInt64:bleScreenOffScanRate forKey:@"bleScnOffScnRt"];
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [coderCopy encodeInt64:clientID forKey:@"cid"];
  }

  cloudServiceID = self->_cloudServiceID;
  if (cloudServiceID)
  {
    [coderCopy encodeObject:cloudServiceID forKey:@"clSI"];
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    [coderCopy encodeInt64:controlFlags forKey:@"cFl"];
  }

  identifier = [(RPEndpoint *)self->_destinationDevice identifier];
  if (identifier || ([(RPCompanionLinkDevice *)self->_destinationDevice publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = identifier;
    [coderCopy encodeObject:identifier forKey:@"ddID"];
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    [coderCopy encodeObject:deviceFilter forKey:@"dFtr"];
  }

  ipAddress = [(RPEndpoint *)self->_destinationDevice ipAddress];
  if (ipAddress)
  {
    [coderCopy encodeObject:ipAddress forKey:@"ddIP"];
  }

  if (self->_encodeSensitiveProperties)
  {
    [coderCopy encodeBool:1 forKey:@"esp"];
  }

  flags = self->_flags;
  v17 = coderCopy;
  if (flags)
  {
    [coderCopy encodeInt64:flags forKey:@"flags"];
    v17 = coderCopy;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [coderCopy encodeInt64:internalAuthFlags forKey:@"iaf"];
    v17 = coderCopy;
  }

  pairingInfo = self->_pairingInfo;
  if (pairingInfo)
  {
    [coderCopy encodeObject:pairingInfo forKey:@"pairI"];
    v17 = coderCopy;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    [coderCopy encodeObject:pairSetupACL forKey:@"acl"];
    v17 = coderCopy;
  }

  password = self->_password;
  if (password)
  {
    [coderCopy encodeObject:password forKey:@"pw"];
    v17 = coderCopy;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [coderCopy encodeInteger:passwordType forKey:@"pwTy"];
    v17 = coderCopy;
  }

  if (self->_reactivateCalled)
  {
    [coderCopy encodeBool:1 forKey:@"reAcC"];
    v17 = coderCopy;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    [coderCopy encodeInteger:rssiThreshold forKey:@"rssiTh"];
    v17 = coderCopy;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [coderCopy encodeObject:serviceType forKey:@"st"];
    v17 = coderCopy;
  }

  siriInfo = self->_siriInfo;
  if (siriInfo)
  {
    [coderCopy encodeObject:siriInfo forKey:@"siriInfo"];
    v17 = coderCopy;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    [coderCopy encodeInt64:useCase forKey:@"useCase"];
    v17 = coderCopy;
  }

  if (self->_usingOnDemandConnection)
  {
    [coderCopy encodeBool:1 forKey:@"uOnd"];
    v17 = coderCopy;
  }
}

- (void)setBleScreenOffRescanInterval:(int64_t)interval
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__RPCompanionLinkClient_setBleScreenOffRescanInterval___block_invoke;
  v3[3] = &unk_1E7C934B0;
  v3[4] = self;
  v3[5] = interval;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v3];
}

- (void)setBleScreenOffScanRate:(unsigned int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__RPCompanionLinkClient_setBleScreenOffScanRate___block_invoke;
  v3[3] = &unk_1E7C934D8;
  v3[4] = self;
  rateCopy = rate;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v3];
}

- (void)setControlFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__RPCompanionLinkClient_setControlFlags___block_invoke;
  v3[3] = &unk_1E7C934B0;
  v3[4] = self;
  v3[5] = flags;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v3];
}

- (void)setDeviceFilter:(id)filter
{
  filterCopy = filter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__RPCompanionLinkClient_setDeviceFilter___block_invoke;
  v6[3] = &unk_1E7C92D80;
  v6[4] = self;
  v7 = filterCopy;
  v5 = filterCopy;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v6];
}

- (void)setSiriInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__RPCompanionLinkClient_setSiriInfo___block_invoke;
  v6[3] = &unk_1E7C92D80;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v6];
}

- (void)setServiceType:(id)type
{
  typeCopy = type;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__RPCompanionLinkClient_setServiceType___block_invoke;
  v6[3] = &unk_1E7C92D80;
  v6[4] = self;
  v7 = typeCopy;
  v5 = typeCopy;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v6];
}

- (void)setUseCase:(unsigned int)case
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__RPCompanionLinkClient_setUseCase___block_invoke;
  v3[3] = &unk_1E7C934D8;
  v3[4] = self;
  caseCopy = case;
  [(RPCompanionLinkClient *)self _invokeBlockActivateSafe:v3];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__RPCompanionLinkClient_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E7C92E20;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

uint64_t __48__RPCompanionLinkClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 168))
  {
    *(v1 + 136) |= 8u;
    v1 = *(a1 + 32);
  }

  if (*(v1 + 184))
  {
    *(v1 + 136) |= 1u;
    v1 = *(a1 + 32);
  }

  if (*(v1 + 192))
  {
    *(v1 + 136) |= 2u;
    v1 = *(a1 + 32);
  }

  if (*(v1 + 200))
  {
    *(v1 + 136) |= 4u;
    v1 = *(a1 + 32);
  }

  return [v1 _activateWithCompletion:*(a1 + 40) reactivate:0];
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _activateWithCompletion:? reactivate:?];
    }

    self->_reactivateCalled = 1;
  }

  else if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _activateWithCompletion:? reactivate:?];
  }

  _ensureXPCStarted = [(RPCompanionLinkClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _ensureXPCStarted);
    }
  }

  else
  {
    daemonCnx = self->_daemonCnx;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke;
    v14[3] = &unk_1E7C93500;
    v14[4] = self;
    v16 = reactivateCopy;
    v9 = completionCopy;
    v15 = v9;
    v10 = [(RPDaemonConnection *)daemonCnx remoteObjectProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2;
    v11[3] = &unk_1E7C93528;
    v11[4] = self;
    v13 = reactivateCopy;
    v12 = v9;
    [v10 companionLinkActivateClient:self completion:v11];
  }
}

void __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v7 = v3;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
LABEL_14:
        __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1)
    {
      goto LABEL_14;
    }

    v5 = _LogCategory_Initialize();
    v3 = v7;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
    v3 = v7;
  }
}

void __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v5 = (a1 + 32);
  v18 = a3;
  v20 = [*(a1 + 32) _clientError:?];
  if (v20)
  {
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_CLinkClient <= 60 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
      {
        __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2_cold_2();
      }
    }

    else if (gLogCategory_CLinkClient <= 60 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2_cold_1();
    }
  }

  else
  {
    obj = *v5;
    objc_sync_enter(obj);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v10 identifier];
          if (v11 || ([v10 publicIdentifier], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            if (!*(*v5 + 6))
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v13 = *(*v5 + 6);
              *(*v5 + 6) = v12;
            }

            v14 = objc_autoreleasePoolPush();
            if ((*(*v5 + 254) & 4) == 0)
            {
              [v10 setSiriInfo:0];
            }

            objc_autoreleasePoolPop(v14);
            [*(*v5 + 6) setObject:v10 forKeyedSubscript:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    objc_sync_exit(obj);
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
      {
        __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2_cold_4((a1 + 32));
      }
    }

    else if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __60__RPCompanionLinkClient__activateWithCompletion_reactivate___block_invoke_2_cold_3((a1 + 32));
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v20);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_XPCConnectionWithMachServiceName:(id)name options:(unint64_t)options
{
  v5 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v7 = [[v5 alloc] initWithMachServiceName:nameCopy options:options];

  return v7;
}

- (id)_clientError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
    if ([errorCopy code] == 4099)
    {
      v6 = v5;
      if (self->_invalidateCalled)
      {
        clientID = self->_clientID;
        v6 = RPErrorF();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  providerCopy = provider;
  invalidationHandlerCopy = invalidationHandler;
  handlerCopy = handler;
  queueCopy = queue;
  clientCopy = client;
  v13 = [(RPCompanionLinkClient *)self _XPCConnectionWithMachServiceName:@"com.apple.CompanionLink" options:0];
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v14 initWithObjects:{v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
  [v23 setClasses:v22 forSelector:sel_companionLinkReceivedEventID_event_options_ argumentIndex:1 ofReply:0];
  [v23 setClasses:v22 forSelector:sel_companionLinkReceivedRequestID_request_options_responseHandler_ argumentIndex:1 ofReply:0];
  [v23 setClasses:v22 forSelector:sel_companionLinkReceivedRequestID_request_options_responseHandler_ argumentIndex:0 ofReply:1];
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  [v24 setClasses:v27 forSelector:sel_companionLinkActivateClient_completion_ argumentIndex:0 ofReply:1];
  [v24 setClasses:v22 forSelector:sel_companionLinkSendEventID_event_destinationID_options_nwActivityToken_completion_ argumentIndex:1 ofReply:0];
  [v24 setClasses:v22 forSelector:sel_companionLinkSendRequestID_request_destinationID_options_nwActivityToken_responseHandler_ argumentIndex:1 ofReply:0];
  [v24 setClasses:v22 forSelector:sel_companionLinkSendRequestID_request_destinationID_options_nwActivityToken_responseHandler_ argumentIndex:0 ofReply:1];
  [v13 setExportedInterface:v23];
  [v13 setExportedObject:clientCopy];

  [v13 setInterruptionHandler:handlerCopy];
  [v13 setInvalidationHandler:invalidationHandlerCopy];

  [v13 setRemoteObjectInterface:v24];
  [v13 _setQueue:queueCopy];

  if (self->_targetUserSession && [providerCopy supportsMultipleUsers] && objc_msgSend(providerCopy, "signedInUserID"))
  {
    [v13 _setTargetUserIdentifier:{objc_msgSend(providerCopy, "signedInUserID")}];
  }

  [v13 resume];
  v28 = [[RPCompanionLinkClientDaemonConnection_XPC alloc] initWithConnection:v13];

  return v28;
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__RPCompanionLinkClient__invokeBlockActivateSafe___block_invoke;
    v7[3] = &unk_1E7C93550;
    v7[4] = selfCopy;
    v8 = safeCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

void __50__RPCompanionLinkClient__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 companionLinkUpdateClient:*(a1 + 32)];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CLinkClient <= 50 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _interrupted];
  }

  [(RPCompanionLinkClient *)self _lostAllDevices];
  if (self->_activateCalled)
  {
    [(RPCompanionLinkClient *)self _activateWithCompletion:0 reactivate:1];
  }

  [(RPCompanionLinkClient *)self _reregisterAssertions];
  [(RPCompanionLinkClient *)self _reregisterEvents];
  [(RPCompanionLinkClient *)self _reregisterRequests];
  [(RPCompanionLinkClient *)self _reregisterProfileIDs];
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (id)activateAssertionID:(id)d destinationID:(id)iD options:(id)options completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  v12 = objc_alloc_init(RPCompanionLinkAssertion);
  [(RPCompanionLinkAssertion *)v12 setAssertionID:dCopy];

  [(RPCompanionLinkAssertion *)v12 setClient:self];
  [(RPCompanionLinkAssertion *)v12 setDestinationID:iDCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(RPCompanionLinkAssertion *)v12 setIdentifier:uUIDString];

  if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient activateAssertionID:destinationID:options:completion:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__RPCompanionLinkClient_activateAssertionID_destinationID_options_completion___block_invoke;
  block[3] = &unk_1E7C93578;
  block[4] = self;
  v16 = v12;
  v22 = v16;
  v23 = completionCopy;
  v17 = completionCopy;
  dispatch_async(dispatchQueue, block);
  v18 = v23;
  v19 = v16;

  return v16;
}

void __78__RPCompanionLinkClient_activateAssertionID_destinationID_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = [*(a1 + 32) _ensureXPCStarted];
  if (v6)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = v6;
    (*(v7 + 16))();
  }

  else
  {
    v9 = 0;
    v8 = [*(*(a1 + 32) + 40) remoteObjectProxy];
    [v8 companionLinkActivateAssertion:*(a1 + 40) completion:*(a1 + 48)];
  }

  v6 = v9;
LABEL_8:
}

- (void)_invalidateAssertion:(id)assertion
{
  assertionCopy = assertion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPCompanionLinkClient__invalidateAssertion___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = assertionCopy;
  v6 = assertionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__RPCompanionLinkClient__invalidateAssertion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 companionLinkInvalidateAssertion:*(a1 + 40)];
}

- (void)_reregisterAssertions
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_assertions count]&& gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _reregisterAssertions];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_assertions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        _ensureXPCStarted = [(RPCompanionLinkClient *)self _ensureXPCStarted];
        if (_ensureXPCStarted)
        {
          v11 = _ensureXPCStarted;
          if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
          {
            [RPCompanionLinkClient _reregisterAssertions];
          }

          goto LABEL_18;
        }

        remoteObjectProxy = [(RPDaemonConnection *)self->_daemonCnx remoteObjectProxy];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __46__RPCompanionLinkClient__reregisterAssertions__block_invoke;
        v13[3] = &unk_1E7C92D10;
        v13[4] = self;
        v13[5] = v8;
        [remoteObjectProxy companionLinkActivateAssertion:v8 completion:v13];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

void __46__RPCompanionLinkClient__reregisterAssertions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v4 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    v6 = v3;
    if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __46__RPCompanionLinkClient__reregisterAssertions__block_invoke_cold_1(a1);
      v4 = v6;
    }
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__RPCompanionLinkClient_tryPassword___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

void __37__RPCompanionLinkClient_tryPassword___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v2 companionLinkTryPassword:*(a1 + 40)];
}

- (void)companionLinkAuthCompleted:(id)completed
{
  completedCopy = completed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _Block_copy(self->_authCompletionHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, completedCopy);
  }

  else if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient companionLinkAuthCompleted:];
  }
}

- (RPCompanionLinkDevice)activePersonalCompanion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  deviceDictionary = selfCopy->_deviceDictionary;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__RPCompanionLinkClient_activePersonalCompanion__block_invoke;
  v6[3] = &unk_1E7C935A0;
  v6[4] = &v7;
  [(NSMutableDictionary *)deviceDictionary enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  objc_sync_exit(selfCopy);

  return v4;
}

void __48__RPCompanionLinkClient_activePersonalCompanion__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 isPersonal])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)companionLinkFoundDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [deviceCopy identifier];
  if (identifier || ([deviceCopy publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (!selfCopy->_deviceDictionary)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      deviceDictionary = selfCopy->_deviceDictionary;
      selfCopy->_deviceDictionary = v6;
    }

    v8 = objc_autoreleasePoolPush();
    if ((selfCopy->_controlFlags & 0x4000000000000) == 0)
    {
      [deviceCopy setSiriInfo:0];
    }

    objc_autoreleasePoolPop(v8);
    [(NSMutableDictionary *)selfCopy->_deviceDictionary setObject:deviceCopy forKeyedSubscript:identifier];

    objc_sync_exit(selfCopy);
    deviceFoundHandler = selfCopy->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      deviceFoundHandler[2](deviceFoundHandler, deviceCopy);
      goto LABEL_15;
    }

    if (selfCopy->_appID && gLogCategory_CLinkClient <= 40)
    {
      if (gLogCategory_CLinkClient != -1)
      {
LABEL_12:
        LogPrintF();
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        appID = selfCopy->_appID;
        goto LABEL_12;
      }
    }
  }

  else
  {
    objc_sync_exit(selfCopy);
  }

LABEL_15:
}

- (void)companionLinkLostDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [deviceCopy identifier];
  if (identifier || ([deviceCopy publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(NSMutableDictionary *)selfCopy->_deviceDictionary setObject:0 forKeyedSubscript:identifier];

    objc_sync_exit(selfCopy);
    deviceLostHandler = selfCopy->_deviceLostHandler;
    v7 = deviceCopy;
    if (!deviceLostHandler)
    {
      goto LABEL_7;
    }

    deviceLostHandler[2](deviceLostHandler, deviceCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }

  v7 = deviceCopy;
LABEL_7:
}

- (void)companionLinkLocalDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPCompanionLinkClient *)self setLocalDevice:updatedCopy];
  v4 = objc_autoreleasePoolPush();
  if ((self->_controlFlags & 0x4000000000000) == 0)
  {
    [updatedCopy setSiriInfo:0];
  }

  objc_autoreleasePoolPop(v4);
  localDeviceUpdatedHandler = self->_localDeviceUpdatedHandler;
  v6 = updatedCopy;
  if (localDeviceUpdatedHandler)
  {
    localDeviceUpdatedHandler[2](localDeviceUpdatedHandler, updatedCopy);
    v6 = updatedCopy;
  }
}

- (void)_lostAllDevices
{
  v19 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _lostAllDevices];
  }

  deviceLostHandler = self->_deviceLostHandler;
  obj = self;
  objc_sync_enter(obj);
  deviceDictionary = obj->_deviceDictionary;
  if (deviceLostHandler)
  {
    allValues = [(NSMutableDictionary *)deviceDictionary allValues];
    [(NSMutableDictionary *)obj->_deviceDictionary removeAllObjects];
    objc_sync_exit(obj);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = allValues;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = self->_deviceLostHandler;
          if (v10)
          {
            v10[2](v10, *(*(&v14 + 1) + 8 * i));
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(NSMutableDictionary *)deviceDictionary removeAllObjects];
    objc_sync_exit(obj);
    v12 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)shouldReportDevice:(id)device toXPCConnectionWithLaunchInstanceID:(id)d outReason:(id *)reason
{
  deviceCopy = device;
  dCopy = d;
  if ([deviceCopy flags] & 1) == 0 || (self->_flags)
  {
    if (([deviceCopy flags] & 0x2000) != 0)
    {
      if ((self->_flags & 0x2000) == 0)
      {
        LOBYTE(v10) = 0;
        if (reason)
        {
          v11 = @"deviceFlag.homeHubDevice";
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      launchInstanceID = [deviceCopy launchInstanceID];
      v17 = [dCopy isEqual:launchInstanceID];

      if (v17)
      {
        LOBYTE(v10) = 0;
        if (reason)
        {
          v11 = @"deviceFlag.homeHubDevice.launchInstanceIDMatches";
          goto LABEL_50;
        }

        goto LABEL_51;
      }
    }

    if (dCopy)
    {
      v12 = self->_controlFlags | ((self->_flags & 1) << 10) | 0x4000000000;
    }

    else
    {
      v12 = self->_controlFlags | ((self->_flags & 1) << 10);
    }

    statusFlags = [deviceCopy statusFlags];
    flags = [deviceCopy flags];
    v15 = statusFlags | 0x200080000;
    if ((flags & 0x40) == 0)
    {
      v15 = statusFlags;
    }

    if (!(v12 & 0x400 | v15 & 0x80000) && ((v15 & 0x4000) == 0 || (v12 & 0x1000) == 0) && ((v15 & 0x20000) == 0 || (v12 & 0x100000) == 0) && ((v15 & 0x8000) == 0 || (v12 & 0x2000) == 0) && ((v15 & 0x2000000000) == 0 || (v12 & 0x100000000000) == 0) && ((v15 & 0x4000000000) == 0 || (v12 & 0x200000000000) == 0) && ((v15 & 0x2000) == 0 || (v12 & 0x800) == 0) && ((v15 & 0x1000000000) == 0 || (v12 & 0x80000000000) == 0))
    {
      LOBYTE(v10) = 0;
      if (!reason)
      {
        goto LABEL_51;
      }

      v11 = @"missingFlag.trustCircle";
      goto LABEL_50;
    }

    if ((v15 & 0x80000000) != 0 || (v12 & 0x1000000000000) == 0)
    {
      if ((v15 & 0x200000) != 0 && (v12 & 0x4000000) != 0)
      {
        LOBYTE(v10) = 1;
        if (reason)
        {
          v11 = @"containsFlag.RPControlFlagsAppSignIn";
          goto LABEL_50;
        }
      }

      else if ((v12 & v15 & 8) != 0)
      {
        LOBYTE(v10) = 1;
        if (reason)
        {
          v11 = @"containsFlag.RPControlFlagsAWDL";
          goto LABEL_50;
        }
      }

      else if ((v12 & v15 & 2) != 0)
      {
        LOBYTE(v10) = 1;
        if (reason)
        {
          v11 = @"containsFlag.RPControlFlagsBLE";
          goto LABEL_50;
        }
      }

      else if ((v15 & 1) != 0 && (v12 & 0x20) != 0)
      {
        LOBYTE(v10) = 1;
        if (reason)
        {
          v11 = @"containsFlag.RPControlFlagsBTPipe";
          goto LABEL_50;
        }
      }

      else
      {
        if ((v15 & 0x100000) != 0 && (v12 & 0x800000) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsCloud";
          goto LABEL_50;
        }

        if ((v15 & 0x8000000) != 0 && (v12 & 0x100000000) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsFitness";
          goto LABEL_50;
        }

        if ((v15 & 0x10000000) != 0 && (v12 & 0x400000000) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsHomeHubDevice";
          goto LABEL_50;
        }

        if ((v15 & 0x200000000) != 0 && (v12 & 0x4000000000) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsLaunchInstance";
          goto LABEL_50;
        }

        if ((v12 & v15 & 4) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsInfraWiFi";
          goto LABEL_50;
        }

        if ((v12 & v15 & 0x10) != 0)
        {
          LOBYTE(v10) = 1;
          if (!reason)
          {
            goto LABEL_51;
          }

          v11 = @"containsFlag.RPControlFlagsNAN";
          goto LABEL_50;
        }

        v10 = (v12 >> 37) & 1 & (v15 >> 30);
        v11 = @"statusControlFlagMismatch";
        if (v10)
        {
          v11 = @"containsFlag.RPControlFlagsCompanionAuthentication";
        }

        if (reason)
        {
LABEL_50:
          *reason = v11;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      if (reason)
      {
        v11 = @"missingFlag.RPStatusFlagsAWDLPairingMode";
        goto LABEL_50;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    if (reason)
    {
      v11 = @"deviceFlag.unauthenticated";
      goto LABEL_50;
    }
  }

LABEL_51:

  return v10 & 1;
}

- (void)companionLinkUpdateErrorFlags:(unint64_t)flags
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_errorFlags == flags)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_errorFlags = flags;
    objc_sync_exit(obj);

    dispatchQueue = obj->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__RPCompanionLinkClient_companionLinkUpdateErrorFlags___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = obj;
    dispatch_async(dispatchQueue, block);
  }
}

void __55__RPCompanionLinkClient_companionLinkUpdateErrorFlags___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 288));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)companionLinkUpdateClientState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  usingOnDemandConnection = selfCopy->_usingOnDemandConnection;
  if (usingOnDemandConnection == [stateCopy usingOnDemandConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_usingOnDemandConnection = [stateCopy usingOnDemandConnection];
    objc_sync_exit(selfCopy);

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPCompanionLinkClient_companionLinkUpdateClientState___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }
}

void __56__RPCompanionLinkClient_companionLinkUpdateClientState___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 368));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__RPCompanionLinkClient_registerEventID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = dCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __57__RPCompanionLinkClient_registerEventID_options_handler___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(RPEventRegistration);
  [(RPEventRegistration *)v6 setEventID:*(a1 + 32)];
  [(RPEventRegistration *)v6 setOptions:*(a1 + 40)];
  [(RPEventRegistration *)v6 setHandler:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 48);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 48) + 56);
  }

  [v2 setObject:v6 forKeyedSubscript:*(a1 + 32)];
  [*(a1 + 48) _registerEventID:*(a1 + 32) options:*(a1 + 40) reregister:0];
}

- (void)_registerEventID:(id)d options:(id)options reregister:(BOOL)reregister
{
  reregisterCopy = reregister;
  dCopy = d;
  optionsCopy = options;
  if (reregisterCopy)
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      [RPCompanionLinkClient _registerEventID:options:reregister:];
    }
  }

  else if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  _ensureXPCStarted = [(RPCompanionLinkClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _registerEventID:options:reregister:];
    }
  }

  else
  {
    daemonCnx = self->_daemonCnx;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__RPCompanionLinkClient__registerEventID_options_reregister___block_invoke;
    v17[3] = &unk_1E7C935F0;
    v17[4] = self;
    v19 = reregisterCopy;
    v12 = dCopy;
    v18 = v12;
    v13 = [(RPDaemonConnection *)daemonCnx remoteObjectProxyWithErrorHandler:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__RPCompanionLinkClient__registerEventID_options_reregister___block_invoke_2;
    v14[3] = &unk_1E7C935F0;
    v14[4] = self;
    v16 = reregisterCopy;
    v15 = v12;
    [v13 companionLinkRegisterEventID:v15 options:optionsCopy completion:v14];
  }
}

void __61__RPCompanionLinkClient__registerEventID_options_reregister___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v8 = v3, v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
LABEL_7:
        v7 = v3;
        v6 = *(a1 + 40);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v5 = _LogCategory_Initialize();
    v3 = v9;
    if (v5)
    {
      goto LABEL_7;
    }
  }
}

void __61__RPCompanionLinkClient__registerEventID_options_reregister___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _clientError:v3];
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_CLinkClient > 60 || gLogCategory_CLinkClient == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }
    }

    else if (gLogCategory_CLinkClient > 60 || gLogCategory_CLinkClient == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 40);
    LogPrintF();
LABEL_14:

    goto LABEL_15;
  }

  if (v4[48])
  {
    v6 = v4[34];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__RPCompanionLinkClient__registerEventID_options_reregister___block_invoke_3;
    block[3] = &unk_1E7C92D80;
    block[4] = v4;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }

LABEL_15:
}

- (void)_reregisterEvents
{
  if ([(NSMutableDictionary *)self->_eventRegistrations count]&& gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _reregisterEvents];
  }

  eventRegistrations = self->_eventRegistrations;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__RPCompanionLinkClient__reregisterEvents__block_invoke;
  v4[3] = &unk_1E7C93618;
  v4[4] = self;
  [(NSMutableDictionary *)eventRegistrations enumerateKeysAndObjectsUsingBlock:v4];
}

void __42__RPCompanionLinkClient__reregisterEvents__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v4 eventID];
  v5 = [v4 options];

  [v3 _registerEventID:v6 options:v5 reregister:1];
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__RPCompanionLinkClient_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

void __43__RPCompanionLinkClient_deregisterEventID___block_invoke(uint64_t a1)
{
  if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __43__RPCompanionLinkClient_deregisterEventID___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 40) + 56) setObject:0 forKeyedSubscript:*(a1 + 32)];
  v2 = [*(a1 + 40) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __43__RPCompanionLinkClient_deregisterEventID___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__RPCompanionLinkClient_deregisterEventID___block_invoke_2;
    v10[3] = &unk_1E7C92D10;
    v10[4] = v4;
    v11 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__RPCompanionLinkClient_deregisterEventID___block_invoke_3;
    v8[3] = &unk_1E7C92D10;
    v7 = *(a1 + 32);
    v9 = vextq_s8(v7, v7, 8uLL);
    [v6 companionLinkDeregisterEventID:v7.i64[0] completion:v8];
  }
}

void __43__RPCompanionLinkClient_deregisterEventID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v4 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    v7 = v3;
    if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      v6 = *(a1 + 40);
      LogPrintF();
      v4 = v7;
    }
  }
}

void __43__RPCompanionLinkClient_deregisterEventID___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _clientError:a2];
    v4 = v3;
    if (gLogCategory_CLinkClient <= 60)
    {
      v7 = v3;
      if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        v6 = *(a1 + 40);
        LogPrintF();
        v4 = v7;
      }
    }
  }
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke;
  v37[3] = &unk_1E7C93640;
  v37[4] = &v44;
  v37[5] = &v38;
  [(RPCompanionLinkClient *)self _startNWActivity:1 options:optionsCopy result:v37];
  v17 = [RPNWActivityUtils tokenForActivity:v45[5]];
  v18 = [v39[5] valueForKey:@"highPriority"];
  [v18 BOOLValue];

  v19 = v39[5];
  if (!CFDictionaryGetInt64())
  {
    v20 = dCopy;
    if ([v20 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v20, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v20, "isEqual:", @"_hidT") & 1) != 0 || (objc_msgSend(v20, "isEqual:", @"_laData"))
    {
    }

    else
    {
      v28 = [v20 isEqual:@"_siA"];

      if (!v28)
      {
        v21 = 30;
        goto LABEL_8;
      }
    }
  }

  v21 = 10;
LABEL_8:
  if (v21 >= gLogCategory_CLinkClient && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [eventCopy count];
    LogPrintF();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_2;
  block[3] = &unk_1E7C93690;
  block[4] = self;
  v30 = dCopy;
  v31 = iDCopy;
  v32 = eventCopy;
  v35 = &v44;
  v36 = &v38;
  v33 = v17;
  v34 = completionCopy;
  v23 = v17;
  v24 = eventCopy;
  v25 = iDCopy;
  v26 = dCopy;
  v27 = completionCopy;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    [RPNWActivityUtils failActivity:*(*(*(a1 + 80) + 8) + 40) error:v2];
    v3 = *(a1 + 72);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_3;
    v21[3] = &unk_1E7C93668;
    v21[4] = v5;
    v22 = v4;
    v23 = *(a1 + 48);
    v15 = *(a1 + 72);
    v7 = v15;
    v24 = v15;
    v8 = [v6 remoteObjectProxyWithErrorHandler:v21];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(*(*(a1 + 88) + 8) + 40);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_4;
    v17[3] = &unk_1E7C93668;
    v17[4] = *(a1 + 32);
    v18 = v9;
    v19 = *(a1 + 48);
    v16 = *(a1 + 72);
    v14 = v16;
    v20 = v16;
    [v8 companionLinkSendEventID:v18 event:v12 destinationID:v10 options:v11 nwActivityToken:v13 completion:v17];
  }
}

void __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v6 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
    {
      __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_3_cold_1(a1);
      v3 = v6;
    }
  }

  [RPNWActivityUtils failActivity:*(*(*(a1 + 64) + 8) + 40) error:v3];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __76__RPCompanionLinkClient_sendEventID_event_destinationID_options_completion___block_invoke_4_cold_1(a1);
        v4 = v9;
      }
    }

    [RPNWActivityUtils failActivity:*(*(*(a1 + 64) + 8) + 40) error:v4];
  }

  else
  {
    v6 = *(*(*(a1 + 64) + 8) + 40);
    nw_activity_complete_with_reason();
  }

  v7 = *(a1 + 56);
  v8 = v9;
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
    v8 = v9;
  }
}

- (void)companionLinkReceivedEventID:(id)d event:(id)event options:(id)options
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:dCopy];
  handler = [v10 handler];

  if (handler)
  {
    (handler)[2](handler, eventCopy, optionsCopy);
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:@"*"];
    handler = [v12 handler];

    if (!handler)
    {
      goto LABEL_9;
    }

    if (optionsCopy)
    {
      v13 = [optionsCopy mutableCopy];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v13;
    [v13 setObject:dCopy forKeyedSubscript:@"eventID"];
    (handler)[2](handler, eventCopy, v14);
  }

LABEL_9:
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__RPCompanionLinkClient_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C92F38;
  v15[4] = self;
  v16 = dCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_registerRequestIDOnQueue:(id)queue options:(id)options handler:(id)handler
{
  queueCopy = queue;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = objc_alloc_init(RPRequestRegistration);
  [(RPRequestRegistration *)v10 setRequestID:queueCopy];
  [(RPRequestRegistration *)v10 setOptions:optionsCopy];
  [(RPRequestRegistration *)v10 setHandler:handlerCopy];

  requestRegistrations = self->_requestRegistrations;
  if (!requestRegistrations)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_requestRegistrations;
    self->_requestRegistrations = v12;

    requestRegistrations = self->_requestRegistrations;
  }

  [(NSMutableDictionary *)requestRegistrations setObject:v10 forKeyedSubscript:queueCopy];
  [(RPCompanionLinkClient *)self _registerRequestID:queueCopy options:optionsCopy reregister:0];
}

- (void)_registerRequestID:(id)d options:(id)options reregister:(BOOL)reregister
{
  reregisterCopy = reregister;
  dCopy = d;
  optionsCopy = options;
  if (reregisterCopy)
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      [RPCompanionLinkClient _registerRequestID:options:reregister:];
    }
  }

  else if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  _ensureXPCStarted = [(RPCompanionLinkClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _registerRequestID:options:reregister:];
    }
  }

  else
  {
    daemonCnx = self->_daemonCnx;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__RPCompanionLinkClient__registerRequestID_options_reregister___block_invoke;
    v17[3] = &unk_1E7C935F0;
    v17[4] = self;
    v19 = reregisterCopy;
    v12 = dCopy;
    v18 = v12;
    v13 = [(RPDaemonConnection *)daemonCnx remoteObjectProxyWithErrorHandler:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__RPCompanionLinkClient__registerRequestID_options_reregister___block_invoke_2;
    v14[3] = &unk_1E7C935F0;
    v14[4] = self;
    v16 = reregisterCopy;
    v15 = v12;
    [v13 companionLinkRegisterRequestID:v15 options:optionsCopy completion:v14];
  }
}

void __63__RPCompanionLinkClient__registerRequestID_options_reregister___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v8 = v3, v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
LABEL_7:
        v7 = v3;
        v6 = *(a1 + 40);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v5 = _LogCategory_Initialize();
    v3 = v9;
    if (v5)
    {
      goto LABEL_7;
    }
  }
}

void __63__RPCompanionLinkClient__registerRequestID_options_reregister___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _clientError:v3];
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_CLinkClient > 60 || gLogCategory_CLinkClient == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }
    }

    else if (gLogCategory_CLinkClient > 60 || gLogCategory_CLinkClient == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 40);
    LogPrintF();
LABEL_14:

    goto LABEL_15;
  }

  if (v4[47])
  {
    v6 = v4[34];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__RPCompanionLinkClient__registerRequestID_options_reregister___block_invoke_3;
    block[3] = &unk_1E7C92D80;
    block[4] = v4;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }

LABEL_15:
}

- (void)_reregisterRequests
{
  if ([(NSMutableDictionary *)self->_requestRegistrations count]&& gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _reregisterRequests];
  }

  requestRegistrations = self->_requestRegistrations;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__RPCompanionLinkClient__reregisterRequests__block_invoke;
  v4[3] = &unk_1E7C936B8;
  v4[4] = self;
  [(NSMutableDictionary *)requestRegistrations enumerateKeysAndObjectsUsingBlock:v4];
}

void __44__RPCompanionLinkClient__reregisterRequests__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v4 requestID];
  v5 = [v4 options];

  [v3 _registerRequestID:v6 options:v5 reregister:1];
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__RPCompanionLinkClient_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__RPCompanionLinkClient_deregisterRequestID___block_invoke(uint64_t a1)
{
  if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 40) + 80) setObject:0 forKeyedSubscript:*(a1 + 32)];
  v2 = [*(a1 + 40) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_2;
    v10[3] = &unk_1E7C92D10;
    v10[4] = v4;
    v11 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_3;
    v8[3] = &unk_1E7C92D10;
    v7 = *(a1 + 32);
    v9 = vextq_s8(v7, v7, 8uLL);
    [v6 companionLinkDeregisterRequestID:v7.i64[0] completion:v8];
  }
}

void __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v4 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    v7 = v3;
    if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      v6 = *(a1 + 40);
      LogPrintF();
      v4 = v7;
    }
  }
}

void __45__RPCompanionLinkClient_deregisterRequestID___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      v7 = v3;
      if (gLogCategory_CLinkClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        v6 = *(a1 + 40);
        LogPrintF();
        v4 = v7;
      }
    }
  }
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__0;
  v34[4] = __Block_byref_object_dispose__0;
  v35 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  v33[3] = &unk_1E7C93640;
  v33[4] = &v36;
  v33[5] = v34;
  [(RPCompanionLinkClient *)self _startNWActivity:2 options:optionsCopy result:v33];
  v17 = [RPNWActivityUtils tokenForActivity:v37[5]];
  dispatchQueue = self->_dispatchQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
  v24[3] = &unk_1E7C93708;
  v25 = dCopy;
  v26 = requestCopy;
  v27 = iDCopy;
  selfCopy = self;
  v31 = v34;
  v32 = &v36;
  v29 = v17;
  v30 = handlerCopy;
  v19 = v17;
  v20 = handlerCopy;
  v21 = iDCopy;
  v22 = requestCopy;
  v23 = dCopy;
  dispatch_async(dispatchQueue, v24);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

void __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 80) + 8) + 40) valueForKey:@"highPriority"];
  [v2 BOOLValue];

  v3 = *(*(*(a1 + 80) + 8) + 40);
  Int64 = CFDictionaryGetInt64();
  v5 = *(a1 + 32);
  v6 = v5;
  if (Int64)
  {
    v7 = 10;
  }

  else if ([v5 isEqual:@"_ftSm"])
  {
    v7 = 9;
  }

  else
  {
    v7 = 9;
    if (([v6 isEqual:@"_ftLg"] & 1) == 0)
    {
      if ([v6 isEqual:@"_ftRs"])
      {
        v7 = 9;
      }

      else
      {
        v7 = 30;
      }
    }
  }

  if (v7 >= gLogCategory_CLinkClient && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_2_cold_1((a1 + 32), a1);
  }

  v8 = [*(a1 + 56) _ensureXPCStarted];
  if (v8)
  {
    [RPNWActivityUtils failActivity:*(*(*(a1 + 88) + 8) + 40) error:v8];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v10 = *(v9 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_3;
    v26[3] = &unk_1E7C93668;
    v26[4] = v9;
    v27 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 88);
    v28 = v11;
    v30 = v12;
    v29 = *(a1 + 72);
    v13 = [v10 remoteObjectProxyWithErrorHandler:v26];
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(*(*(a1 + 80) + 8) + 40);
    v17 = *(a1 + 64);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_4;
    v21[3] = &unk_1E7C936E0;
    v18 = *(a1 + 48);
    v21[4] = *(a1 + 56);
    v22 = v14;
    v19 = *(a1 + 48);
    v20 = *(a1 + 88);
    v23 = v19;
    v25 = v20;
    v24 = *(a1 + 72);
    [v13 companionLinkSendRequestID:v22 request:v15 destinationID:v18 options:v16 nwActivityToken:v17 responseHandler:v21];
  }
}

void __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v5 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_3_cold_1(a1);
      v3 = v5;
    }
  }

  [RPNWActivityUtils failActivity:*(*(*(a1 + 64) + 8) + 40) error:v3];
  (*(*(a1 + 56) + 16))();
}

void __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 _clientError:a4];
  v14 = v10;
  if (v10)
  {
    v11 = v10;
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v12 = _LogCategory_Initialize(), v11 = v14, v12))
      {
        __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_4_cold_1(a1);
        v11 = v14;
      }
    }

    [RPNWActivityUtils failActivity:*(*(a1[8] + 8) + 40) error:v11];
  }

  else
  {
    v13 = *(*(a1[8] + 8) + 40);
    nw_activity_complete_with_reason();
  }

  (*(a1[7] + 16))();
}

- (void)companionLinkReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  Int64 = CFDictionaryGetInt64();
  v15 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:dCopy];
  handler = [v15 handler];

  if (handler)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke;
    v18[3] = &unk_1E7C93758;
    v18[4] = self;
    v19 = dCopy;
    v21 = Int64 != 0;
    v20 = handlerCopy;
    (handler)[2](handler, requestCopy, optionsCopy, v18);
  }

  else
  {
    v17 = RPErrorF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);
  }
}

void __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 272);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke_2;
  v16[3] = &unk_1E7C93730;
  v11 = *(a1 + 40);
  v22 = *(a1 + 56);
  v17 = v11;
  v18 = v7;
  v12 = *(a1 + 48);
  v20 = v9;
  v21 = v12;
  v19 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v10, v16);
}

uint64_t __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = v4;
  if (v3)
  {
    v6 = 10;
  }

  else if ([v4 isEqual:@"_ftSm"])
  {
    v6 = 9;
  }

  else
  {
    v6 = 9;
    if (([v5 isEqual:@"_ftLg"] & 1) == 0)
    {
      if ([v5 isEqual:@"_ftRs"])
      {
        v6 = 9;
      }

      else
      {
        v6 = 30;
      }
    }
  }

  if (v6 >= gLogCategory_CLinkClient && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke_2_cold_1(v2, a1);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 64) + 16);

  return v10();
}

- (void)companionLinkHandleDisconnect
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__RPCompanionLinkClient_companionLinkHandleDisconnect__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __54__RPCompanionLinkClient_companionLinkHandleDisconnect__block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 176));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)launchAppWithBundleID:(id)d destinationID:(id)iD completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v17 = @"_bundleID";
  v18[0] = d;
  v9 = MEMORY[0x1E695DF20];
  iDCopy = iD;
  dCopy = d;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__RPCompanionLinkClient_launchAppWithBundleID_destinationID_completion___block_invoke;
  v15[3] = &unk_1E7C93780;
  v16 = completionCopy;
  v13 = completionCopy;
  [(RPCompanionLinkClient *)self sendRequestID:@"_launchApp" request:v12 destinationID:iDCopy options:0 responseHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __72__RPCompanionLinkClient_launchAppWithBundleID_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)launchAppWithURL:(id)l destinationID:(id)d completion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16 = @"_urlS";
  dCopy = d;
  absoluteString = [l absoluteString];
  v17[0] = absoluteString;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__RPCompanionLinkClient_launchAppWithURL_destinationID_completion___block_invoke;
  v14[3] = &unk_1E7C93780;
  v15 = completionCopy;
  v12 = completionCopy;
  [(RPCompanionLinkClient *)self sendRequestID:@"_launchApp" request:v11 destinationID:dCopy options:0 responseHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __67__RPCompanionLinkClient_launchAppWithURL_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)triggerEnhancedDiscoveryForReason:(id)reason useCase:(unsigned int)case completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke;
  v13[3] = &unk_1E7C92DD0;
  v14 = reasonCopy;
  v15 = completionCopy;
  caseCopy = case;
  v13[4] = self;
  v11 = reasonCopy;
  v12 = completionCopy;
  dispatch_async(dispatchQueue, v13);
}

void __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (!v2)
  {
    v4 = *(a1 + 56);
    v5 = v4;
    if (!v4)
    {
      v5 = *(*(a1 + 32) + 104);
    }

    if (gLogCategory_CLinkClient > 30)
    {
      goto LABEL_18;
    }

    if (gLogCategory_CLinkClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_18:
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = *(v8 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke_2;
        v16[3] = &unk_1E7C937A8;
        v16[4] = v8;
        v17 = v7;
        v18 = *(a1 + 48);
        v10 = [v9 remoteObjectProxyWithErrorHandler:v16];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke_3;
        v13[3] = &unk_1E7C937A8;
        v11 = *(a1 + 40);
        v13[4] = *(a1 + 32);
        v14 = v11;
        v15 = *(a1 + 48);
        [v10 companionLinkTriggerEnhancedDiscovery:v14 useCase:v5 completion:v13];

        goto LABEL_19;
      }

      LODWORD(v4) = *(a1 + 56);
    }

    v6 = *(a1 + 40);
    if (v4 < 0x20000)
    {
      switch(v4)
      {
        case 65536:
        case 65537:
        case 65538:
        case 65539:
        case 65540:
        case 65541:
        case 65542:
        case 65543:
        case 65544:
        case 65545:
        case 65546:
        case 65547:
        case 65548:
        case 65549:
        case 65550:
        case 65551:
        case 65552:
        case 65553:
        case 65554:
        case 65555:
        case 65556:
        case 65557:
        case 65558:
        case 65559:
        case 65560:
        case 65561:
        case 65562:
        case 65563:
        case 65564:
        case 65565:
        case 65566:
        case 65567:
          break;
        default:
          JUMPOUT(0);
      }
    }

    v12 = *(a1 + 40);
    LogPrintF();
    goto LABEL_18;
  }

  if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke_cold_1();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

LABEL_19:
}

void __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v6 = *(a1 + 40);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

void __78__RPCompanionLinkClient_triggerEnhancedDiscoveryForReason_useCase_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v6 = *(a1 + 40);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

- (void)createDeviceToEndpointMappingForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = deviceCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = deviceCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke_cold_1();
    }

    v3 = a1[6];
    if (v3)
    {
      v3[2](v3, 0, v2);
    }
  }

  else
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = v5[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke_2;
    v13[3] = &unk_1E7C937A8;
    v13[4] = v5;
    v14 = v4;
    v15 = a1[6];
    v7 = [v6 remoteObjectProxyWithErrorHandler:v13];
    v8 = [a1[5] identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke_3;
    v10[3] = &unk_1E7C937D0;
    v9 = a1[5];
    v10[4] = a1[4];
    v11 = v9;
    v12 = a1[6];
    [v7 companionLinkCreateDeviceToEndpointMappingForDeviceID:v8 completion:v10];
  }
}

uint64_t __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _clientError:a2];
  if (v6 && gLogCategory_CLinkClient <= 60 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 40);
    LogPrintF();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v6);
  }

  return MEMORY[0x1EEE66BE0]();
}

void __75__RPCompanionLinkClient_createDeviceToEndpointMappingForDevice_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _clientError:a3];
  if (v5 && gLogCategory_CLinkClient <= 60 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 40);
    LogPrintF();
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

- (void)setLocalDeviceAsContextCollectorWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_1();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_2(v2);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_2;
    v12[3] = &unk_1E7C93470;
    v12[4] = v6;
    v13 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_3;
    v10[3] = &unk_1E7C93470;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 companionLinkSetLocalDeviceAsContextCollector:v10];
  }
}

void __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_2_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_3_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

- (void)removeLocalDeviceAsContextCollectorWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_1();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_2(v2);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_2;
    v12[3] = &unk_1E7C93470;
    v12[4] = v6;
    v13 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_3;
    v10[3] = &unk_1E7C93470;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v8 companionLinkRemoveLocalDeviceAsContextCollector:v10];
  }
}

void __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_2_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_3_cold_1();
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

- (void)_startNWActivity:(unsigned int)activity options:(id)options result:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  v7 = nw_activity_create();
  if (optionsCopy)
  {
    v8 = [optionsCopy mutableCopy];
    v9 = [v8 objectForKeyedSubscript:@"nwActivity"];
    if (v9)
    {
      nw_activity_set_parent_activity();
      [v8 removeObjectForKey:@"nwActivity"];
    }
  }

  else
  {
    v8 = 0;
  }

  nw_activity_activate();
  resultCopy[2](resultCopy, v7, v8);
}

- (void)registerProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__RPCompanionLinkClient_registerProfileID_completion___block_invoke;
  block[3] = &unk_1E7C93578;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __54__RPCompanionLinkClient_registerProfileID_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v4 = a1[4];
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(a1[4] + 72);
  }

  [v2 addObject:a1[5]];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];

  return [v6 _registerProfileID:v7 reregister:0 completion:v8];
}

- (void)_registerProfileID:(id)d reregister:(BOOL)reregister completion:(id)completion
{
  reregisterCopy = reregister;
  dCopy = d;
  completionCopy = completion;
  if (reregisterCopy)
  {
    if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      [RPCompanionLinkClient _registerProfileID:reregister:completion:];
    }
  }

  else if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  _ensureXPCStarted = [(RPCompanionLinkClient *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_CLinkClient <= 90 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
    {
      [RPCompanionLinkClient _registerProfileID:reregister:completion:];
    }
  }

  else
  {
    daemonCnx = self->_daemonCnx;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__RPCompanionLinkClient__registerProfileID_reregister_completion___block_invoke;
    v19[3] = &unk_1E7C937F8;
    v19[4] = self;
    v22 = reregisterCopy;
    v12 = dCopy;
    v20 = v12;
    v13 = completionCopy;
    v21 = v13;
    v14 = [(RPDaemonConnection *)daemonCnx remoteObjectProxyWithErrorHandler:v19];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__RPCompanionLinkClient__registerProfileID_reregister_completion___block_invoke_2;
    v15[3] = &unk_1E7C937F8;
    v15[4] = self;
    v18 = reregisterCopy;
    v16 = v12;
    v17 = v13;
    [v14 companionLinkRegisterProfileID:v16 completion:v15];
  }
}

void __66__RPCompanionLinkClient__registerProfileID_reregister_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v8 = v3;
  if (*(a1 + 56) == 1)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
LABEL_7:
        v7 = *(a1 + 40);
        LogPrintF();
        v3 = v8;
      }
    }
  }

  else if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1)
    {
      goto LABEL_7;
    }

    v5 = _LogCategory_Initialize();
    v3 = v8;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
    v3 = v8;
  }
}

void __66__RPCompanionLinkClient__registerProfileID_reregister_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v8 = v3;
  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      if (gLogCategory_CLinkClient <= 60)
      {
        if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
        {
LABEL_8:
          v7 = *(a1 + 40);
          LogPrintF();
          v3 = v8;
        }
      }
    }

    else if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1)
      {
        goto LABEL_8;
      }

      v5 = _LogCategory_Initialize();
      v3 = v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
    v3 = v8;
  }
}

- (void)_reregisterProfileIDs
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableOrderedSet *)self->_registeredProfileIDs count]&& gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    [RPCompanionLinkClient _reregisterProfileIDs];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_registeredProfileIDs;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(RPCompanionLinkClient *)self _registerProfileID:*(*(&v9 + 1) + 8 * i) reregister:1 completion:0, v9];
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deregisterProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke;
  block[3] = &unk_1E7C93578;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_CLinkClient <= 30 && (gLogCategory_CLinkClient != -1 || _LogCategory_Initialize()))
  {
    __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 40) + 72) removeObject:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke_2;
    v12[3] = &unk_1E7C937A8;
    v12[4] = v2;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke_3;
    v9[3] = &unk_1E7C937A8;
    v8 = *(a1 + 32);
    v5 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = *(a1 + 48);
    [v4 companionLinkDeregisterProfileID:v5 completion:v9];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v7 = v3;
  if (gLogCategory_CLinkClient <= 60)
  {
    if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      v6 = *(a1 + 40);
      LogPrintF();
      v3 = v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

void __56__RPCompanionLinkClient_deregisterProfileID_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _clientError:a2];
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_CLinkClient <= 60)
    {
      if (gLogCategory_CLinkClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v6 = *(a1 + 40);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

void __46__RPCompanionLinkClient__reregisterAssertions__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) assertionID];
  LogPrintF();
}

uint64_t __85__RPCompanionLinkClient_sendRequestID_request_destinationID_options_responseHandler___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  [*(a2 + 40) count];
  v5 = *(a2 + 48);
  return LogPrintF();
}

uint64_t __88__RPCompanionLinkClient_companionLinkReceivedRequestID_request_options_responseHandler___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  [*(a2 + 40) count];
  return LogPrintF();
}

void __72__RPCompanionLinkClient_setLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(*a1 + 344) idsDeviceIdentifier];
  LogPrintF();
}

void __75__RPCompanionLinkClient_removeLocalDeviceAsContextCollectorWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(*a1 + 344) idsDeviceIdentifier];
  LogPrintF();
}

@end