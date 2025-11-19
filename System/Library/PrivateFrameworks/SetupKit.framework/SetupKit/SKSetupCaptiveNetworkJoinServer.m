@interface SKSetupCaptiveNetworkJoinServer
+ (void)resetWithCompletionHandler:(id)a3;
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupCaptiveNetworkJoinServer)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerAcceptConnecton:(id)a3;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_captiveDetectedNotificationUpdate:(BOOL)a3;
- (void)_captiveNetworkIPAssign:(id)a3;
- (void)_captiveNetworkLoginInfo:(id)a3 cookie:(unsigned int)a4 responseHandler:(id)a5;
- (void)_captiveNetworkLoginRequest:(id)a3 responseHandler:(id)a4;
- (void)_captiveNetworkProbeEnsureStopped;
- (void)_captiveNetworkProbeRequest:(id)a3 responseHandler:(id)a4;
- (void)_cfuEnsuredStarted;
- (void)_cfuEnsuredStopped;
- (void)_connectionEnded:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_networkRelayAWDLStartRequest:(id)a3 responseHandler:(id)a4;
- (void)_networkRelayDeviceEnsureStopped;
- (void)_networkRelaySetupRequest:(id)a3 responseHandler:(id)a4;
- (void)_oobEnsureStarted;
- (void)_run;
- (void)_runDefault;
- (void)dealloc;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5;
- (void)deviceProxyServiceInterfaceNameDidChange:(id)a3 interfaceName:(id)a4;
@end

@implementation SKSetupCaptiveNetworkJoinServer

- (void)_captiveNetworkIPAssign:(id)a3
{
  v6 = a3;
  var0 = self->super._ucat->var0;
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
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6[2](v6, 0);
}

- (void)_oobEnsureStarted
{
  if (!self->super._skCnx)
  {
    v4 = objc_alloc_init(SKConnection);
    [(SKConnection *)v4 setSendDataHandler:self->super._sendDataHandler];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v4 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_203];
  }
}

- (void)_captiveDetectedNotificationUpdate:(BOOL)a3
{
  v3 = a3;
  var0 = self->super._ucat->var0;
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
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  captiveDetectedNotifyToken = self->_captiveDetectedNotifyToken;
  if (v3)
  {
    if (captiveDetectedNotifyToken == -1)
    {
      notify_register_check("com.apple.coreutils.captive-network-state", &self->_captiveDetectedNotifyToken);
      captiveDetectedNotifyToken = self->_captiveDetectedNotifyToken;
    }

    notify_set_state(captiveDetectedNotifyToken, 1uLL);

    notify_post("com.apple.coreutils.captive-network-state");
  }

  else if (captiveDetectedNotifyToken != -1)
  {
    notify_set_state(captiveDetectedNotifyToken, 0);
    notify_post("com.apple.coreutils.captive-network-state");
    notify_cancel(self->_captiveDetectedNotifyToken);
    self->_captiveDetectedNotifyToken = -1;
  }
}

- (void)deviceProxyServiceInterfaceNameDidChange:(id)a3 interfaceName:(id)a4
{
  v12 = a3;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    v6 = v12;
    if (var0 != -1)
    {
LABEL_3:
      [v6 isConnected];
      [v12 linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      [v12 linkSubtype];
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      v11 = [v12 proxyServiceInterfaceName];
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v10 = self->super._ucat;
      v6 = v12;
      goto LABEL_3;
    }
  }

LABEL_5:
}

- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v8 = self->super._ucat;
    }

    StringFromNRLinkType = createStringFromNRLinkType();
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    LogPrintF();
  }
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v11 = a3;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  v5 = [v11 proxyServiceInterfaceName];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      [v11 linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      [v11 linkSubtype];
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
}

- (void)_networkRelaySetupRequest:(id)a3 responseHandler:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v6 = a4;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__85;
  v68 = __Block_byref_object_dispose__86;
  v69 = 0;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke;
  v61[3] = &unk_279BB8500;
  v63 = &v64;
  v61[4] = self;
  v7 = v6;
  v62 = v7;
  v51 = MEMORY[0x26676A4C0](v61);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v48 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v45 = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  v10 = [CFDictionaryGetTypedValue() UTF8String];
  if (!v10)
  {
    v29 = *MEMORY[0x277CCA590];
    v30 = NSErrorF_safe();
    [(SKSetupBase *)self _completeWithError:v30];

    goto LABEL_35;
  }

  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v58 = 0;
  if (StringToSockAddr() || (memset(&obj[1], 0, 24), v57 = 0, CUGetInterfaceAddresses()))
  {
    v31 = *MEMORY[0x277CCA590];
    v32 = NSErrorF_safe();
    v33 = v65[5];
    v65[5] = v32;

    goto LABEL_35;
  }

  if (SockAddrToString())
  {
    v34 = *MEMORY[0x277CCA590];
    v35 = NSErrorF_safe();
    v53 = v65[5];
    v65[5] = v35;

    goto LABEL_35;
  }

  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:v73];
  v11 = self->_nrDeviceManager;
  if (!v11)
  {
    v11 = [MEMORY[0x277D2C9E0] copySharedDeviceManager];
    if (!v11)
    {
      v41 = *MEMORY[0x277CCA590];
      v42 = NSErrorF_safe();
      v11 = v65[5];
      v65[5] = v42;
      goto LABEL_34;
    }

    objc_storeStrong(&self->_nrDeviceManager, v11);
  }

  v12 = self->_nrDeviceIdentifier;
  if (v12)
  {
    v13 = self->super._ucat->var0;
    if (v13 < 31)
    {
      if (v13 == -1)
      {
        v14 = self->super._ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v47 = self->super._ucat;
      }

      v48 = [(NRDeviceIdentifier *)v12 nrDeviceIdentifier];
      LogPrintF();
    }

LABEL_17:
    [(NRDeviceManager *)v11 unregisterDevice:v12, v48];
    nrDeviceIdentifier = self->_nrDeviceIdentifier;
    self->_nrDeviceIdentifier = 0;
  }

  v16 = [MEMORY[0x277D2C9D0] newEphemeralDeviceIdentifier];
  if (!v16)
  {
    v36 = *MEMORY[0x277CCA590];
    v37 = NSErrorF_safe();
    v17 = v65[5];
    v65[5] = v37;
    goto LABEL_33;
  }

  objc_storeStrong(&self->_nrDeviceIdentifier, v16);
  v17 = objc_alloc_init(MEMORY[0x277D2CA20]);
  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v59 length:v58];
  [v17 setAwdlAddressData:v18];

  if ([(NSData *)self->super._pskData length])
  {
    [(NSData *)self->super._pskData bytes];
    [(NSData *)self->super._pskData length];
    v19 = *MEMORY[0x277D029A0];
    CryptoHKDF();
    v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v72 length:{32, v72}];
  }

  else
  {
    skCnx = self->super._skCnx;
    v22 = v65 + 5;
    obj[0] = v65[5];
    v20 = [(SKConnection *)skCnx deriveKeyWithSaltPtr:"NetworkRelaySalt" saltLen:16 infoPtr:"NetworkRelayInfo" infoLen:16 keyLen:32 error:obj];
    objc_storeStrong(v22, obj[0]);
  }

  if (!v20)
  {
    v38 = v65;
    v39 = v65[5];
    if (v39)
    {
      v40 = v39;
      v23 = v38[5];
      v38[5] = v40;
    }

    else
    {
      v43 = *MEMORY[0x277CCA590];
      v44 = NSErrorF_safe();
      v23 = v65[5];
      v65[5] = v44;
    }

    goto LABEL_32;
  }

  [v17 setOutOfBandKey:v20];
  v23 = objc_alloc_init(MEMORY[0x277D2CA00]);
  [v23 setAllowedLinkTypes:&unk_28776E090];
  [v23 setAllowedLinkSubtypes:&unk_28776E0A8];
  [v23 setProxyCapability:1];
  if (objc_opt_respondsToSelector())
  {
    [v23 setProxyProviderRequiresWiFi:1];
  }

  v24 = self->_nrDeviceMonitor;
  if (!v24)
  {
    v24 = [objc_alloc(MEMORY[0x277D2C9F0]) initWithDeviceIdentifier:v16 delegate:self queue:self->super._dispatchQueue];
    objc_storeStrong(&self->_nrDeviceMonitor, v24);
  }

  v25 = self->super._ucat->var0;
  if (v25 <= 30)
  {
    if (v25 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      v46 = self->super._ucat;
    }

    v49 = v52;
    v50 = v10;
    v48 = v16;
    LogPrintF();
  }

LABEL_31:
  dispatchQueue = self->super._dispatchQueue;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke_192;
  v55[3] = &unk_279BB8370;
  v55[4] = self;
  [(NRDeviceManager *)v11 registerDevice:v16 properties:v17 operationalproperties:v23 queue:dispatchQueue completionBlock:v55, v48, v49, v50];
  v70 = @"_ip";
  v71 = v52;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  (*(v7 + 2))(v7, v27, 0, 0, &__block_literal_global_196);

LABEL_32:
LABEL_33:

LABEL_34:
LABEL_35:
  v51[2](v51);

  _Block_object_dispose(&v64, 8);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke(void *a1)
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
  v7 = *(a1[5] + 16);
  v8 = *(*(v2 + 8) + 40);

  return v7();
}

void __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 144);
  v9 = v3;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = CUPrintNSError();
      LogPrintF();

      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v4 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(*(v4 + 32));
  [*(a1 + 32) _run];
}

- (void)_networkRelayAWDLStartRequest:(id)a3 responseHandler:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__85;
  v29 = __Block_byref_object_dispose__86;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__SKSetupCaptiveNetworkJoinServer__networkRelayAWDLStartRequest_responseHandler___block_invoke;
  v22[3] = &unk_279BB8500;
  v24 = &v25;
  v22[4] = self;
  v8 = v7;
  v23 = v8;
  v9 = MEMORY[0x26676A4C0](v22);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v21 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v19 = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12)
  {
    v17 = *MEMORY[0x277CCA590];
    v18 = NSErrorF_safe();
    v13 = v26[5];
    v26[5] = v18;
    goto LABEL_11;
  }

  v13 = objc_alloc_init(MEMORY[0x277D02840]);
  objc_storeStrong(&self->_awdlAdvertiser, v13);
  [v13 setAdvertiseFlags:2048];
  [v13 setDispatchQueue:self->super._dispatchQueue];
  [v13 setDomain:@"local."];
  [v13 setInterfaceName:@"awdl0"];
  [v13 setName:v12];
  [v13 setPort:1234];
  [v13 setServiceType:@"_setupkit._tcp"];
  v31 = @"rpBA";
  v32[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v13 setTxtDictionary:v14];

  v15 = self->super._ucat->var0;
  if (v15 <= 30)
  {
    if (v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v20 = self->super._ucat;
    }

    v21 = v12;
    LogPrintF();
  }

LABEL_10:
  [v13 activate];
  (*(v8 + 2))(v8, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_154);
LABEL_11:

  v9[2](v9);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __81__SKSetupCaptiveNetworkJoinServer__networkRelayAWDLStartRequest_responseHandler___block_invoke(void *a1)
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
  v7 = *(a1[5] + 16);
  v8 = *(*(v2 + 8) + 40);

  return v7();
}

- (void)_networkRelayDeviceEnsureStopped
{
  v16 = self->_nrDeviceManager;
  v3 = self->_nrDeviceIdentifier;
  if (v16)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_7:
        v15 = [(NRDeviceIdentifier *)v3 nrDeviceIdentifier];
        LogPrintF();

        [(NRDeviceManager *)v16 unregisterDevice:v3, v15];
        goto LABEL_10;
      }

      ucat = self->super._ucat;
      if (_LogCategory_Initialize())
      {
        v13 = self->super._ucat;
        goto LABEL_7;
      }
    }

    [(NRDeviceManager *)v16 unregisterDevice:v3, v14];
  }

LABEL_10:
  nrDeviceIdentifier = self->_nrDeviceIdentifier;
  self->_nrDeviceIdentifier = 0;

  nrDeviceManager = self->_nrDeviceManager;
  self->_nrDeviceManager = 0;

  nrDeviceMonitor = self->_nrDeviceMonitor;
  self->_nrDeviceMonitor = 0;

  if (self->_awdlAdvertiser)
  {
    v10 = self->super._ucat->var0;
    if (v10 <= 30)
    {
      if (v10 != -1)
      {
LABEL_13:
        LogPrintF();
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v12 = self->super._ucat;
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  [(CUBonjourAdvertiser *)self->_awdlAdvertiser invalidate];
  awdlAdvertiser = self->_awdlAdvertiser;
  self->_awdlAdvertiser = 0;
}

- (void)_cfuEnsuredStopped
{
  if (self->_mode == 1 && GestaltGetDeviceClass() != 7)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    cfuController = self->_cfuController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStopped__block_invoke;
    v8[3] = &unk_279BB7A50;
    v8[4] = cfuController;
    v4 = cfuController;
    [(FLFollowUpController *)v4 clearPendingFollowUpItemsWithUniqueIdentifiers:&unk_28776E078 completion:v8];
  }

  if (self->_cfuController)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->super._ucat;
      }

      LogPrintF();
    }
  }

LABEL_13:
  v6 = self->_cfuController;
  self->_cfuController = 0;
}

uint64_t __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStopped__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30)
  {
    v7 = v3;
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = CUPrintNSError();
      LogPrintF_safe();

      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_cfuEnsuredStarted
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (self->_cfuController)
  {
    goto LABEL_11;
  }

  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_6:
  v4 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:@"com.apple.SetupKit"];
  cfuController = self->_cfuController;
  self->_cfuController = v4;

  v6 = objc_alloc_init(getFLFollowUpItemClass());
  v7 = v6;
  if (v6)
  {
    [v6 setUniqueIdentifier:@"com.apple.SetupKit.followup.captive-portal"];
    v8 = getFLGroupIdentifierDevice();
    [v7 setGroupIdentifier:v8];

    v9 = SKLocalizedString(@"CNJ_CFU_TITLE");
    [v7 setTitle:v9];

    v10 = objc_alloc_init(getFLFollowUpActionClass());
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=Network&cfuAction=launchCaptive&activate=true"];
      [v10 setUrl:v11];

      v16[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v7 setActions:v12];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStarted__block_invoke;
      v15[3] = &unk_279BB7A50;
      v15[4] = self;
      [(FLFollowUpController *)v4 postFollowUpItem:v7 completion:v15];
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStarted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = **(*(a1 + 32) + 144);
  if (v6 <= 30)
  {
    v10 = v4;
    if (v6 != -1)
    {
LABEL_3:
      v9 = CUPrintNSError();
      LogPrintF();

      v5 = v10;
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v5 = v10;
    if (v4)
    {
      v7 = *(*(a1 + 32) + 144);
      goto LABEL_3;
    }
  }

LABEL_5:

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t __78__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeResult_responseHandler___block_invoke(uint64_t result)
{
  if (!*(result + 40))
  {
    return [*(result + 32) _reportEventType:202];
  }

  return result;
}

- (void)_captiveNetworkProbeRequest:(id)a3 responseHandler:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__85;
  v34 = __Block_byref_object_dispose__86;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeRequest_responseHandler___block_invoke;
  v27[3] = &unk_279BB8500;
  v29 = &v30;
  v27[4] = self;
  v8 = v7;
  v28 = v8;
  v9 = MEMORY[0x26676A4C0](v27);
  var0 = self->super._ucat->var0;
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
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (!self->_captiveNetworkWebSheetActive)
  {
    if (CFPrefs_GetInt64())
    {
      v17 = 301056;
    }

    else if (self->_captiveNetworkWebSheetCompleted)
    {
      v17 = 0;
    }

    else
    {
      v17 = 4294960551;
    }

    v18 = self->super._ucat->var0;
    if (v18 > 30)
    {
      goto LABEL_19;
    }

    if (v18 == -1)
    {
      v19 = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v25 = self->super._ucat;
    }

    v26 = CUPrintErrorCode();
    LogPrintF();

LABEL_19:
    v36 = @"_cnPR";
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{v17, v26}];
    v37[0] = v20;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    (*(v8 + 2))(v8, v11, 0, 0, &__block_literal_global_109);
    goto LABEL_20;
  }

  v11 = self->_captiveNetworkInterfaceName;
  if (v11)
  {
    v12 = objc_alloc_init(SKCaptiveContext);
    [(SKCaptiveContext *)v12 setResponseHandler:v8];
    [(SKCaptiveContext *)v12 setServer:self];
    v13 = v12;
    if (!CNProberCreate())
    {

      v14 = *MEMORY[0x277CCA590];
      v15 = NSErrorF_safe();
      v16 = v31[5];
      v31[5] = v15;
    }
  }

  else
  {
    v22 = *MEMORY[0x277CCA590];
    v23 = NSErrorF_safe();
    v13 = v31[5];
    v31[5] = v23;
  }

LABEL_20:
  v9[2](v9);

  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __79__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeRequest_responseHandler___block_invoke(void *a1)
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
  v7 = *(a1[5] + 16);
  v8 = *(*(v2 + 8) + 40);

  return v7();
}

- (void)_captiveNetworkProbeEnsureStopped
{
  if (self->_captiveNetworkWebSheetActive)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF();
    }

LABEL_6:
    captiveNetworkCookie = self->_captiveNetworkCookie;
    CNWebsheetNotifyComplete();
    self->_captiveNetworkWebSheetActive = 0;
  }
}

- (void)_captiveNetworkLoginInfo:(id)a3 cookie:(unsigned int)a4 responseHandler:(id)a5
{
  v42[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__85;
  v39 = __Block_byref_object_dispose__86;
  v40 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__SKSetupCaptiveNetworkJoinServer__captiveNetworkLoginInfo_cookie_responseHandler___block_invoke;
  v32[3] = &unk_279BB8500;
  v34 = &v35;
  v32[4] = self;
  v10 = v9;
  v33 = v10;
  v11 = MEMORY[0x26676A4C0](v32);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v31 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v30 = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v8)
  {
    v14 = *MEMORY[0x277CF8000];
    CFStringGetTypeID();
    v15 = CFDictionaryGetTypedValue();
    if (v15)
    {
      v16 = *MEMORY[0x277CF7FF8];
      CFStringGetTypeID();
      v17 = CFDictionaryGetTypedValue();
      if (v17)
      {
        v18 = *MEMORY[0x277CF7FE8];
        CFStringGetTypeID();
        v19 = CFDictionaryGetTypedValue();
        if (v19)
        {
          self->_captiveNetworkCookie = a4;
          objc_storeStrong(&self->_captiveNetworkInterfaceName, v19);
          self->_captiveNetworkWebSheetActive = 1;
          v41[0] = @"_cnSS";
          v41[1] = @"_cnUR";
          v42[0] = v17;
          v42[1] = v15;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
          (*(v10 + 2))(v10, v20, 0, 0, &__block_literal_global_94);
        }

        else
        {
          v28 = *MEMORY[0x277CCA590];
          v29 = NSErrorF_safe();
          v20 = v36[5];
          v36[5] = v29;
        }
      }

      else
      {
        v26 = *MEMORY[0x277CCA590];
        v27 = NSErrorF_safe();
        v19 = v36[5];
        v36[5] = v27;
      }
    }

    else
    {
      v24 = *MEMORY[0x277CCA590];
      v25 = NSErrorF_safe();
      v17 = v36[5];
      v36[5] = v25;
    }
  }

  else
  {
    v22 = *MEMORY[0x277CCA590];
    v23 = NSErrorF_safe();
    v15 = v36[5];
    v36[5] = v23;
  }

  v11[2](v11);
  _Block_object_dispose(&v35, 8);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __83__SKSetupCaptiveNetworkJoinServer__captiveNetworkLoginInfo_cookie_responseHandler___block_invoke(void *a1)
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
  v7 = *(a1[5] + 16);
  v8 = *(*(v2 + 8) + 40);

  return v7();
}

- (void)_captiveNetworkLoginRequest:(id)a3 responseHandler:(id)a4
{
  v17 = a3;
  v6 = a4;
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v16 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->super._ucat;
    if (_LogCategory_Initialize())
    {
      v14 = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = objc_alloc_init(SKCaptiveContext);
  [(SKCaptiveContext *)v9 setResponseHandler:v6];
  [(SKCaptiveContext *)v9 setServer:self];
  v10 = v9;
  if (MEMORY[0x266769E70](_captiveNetworkLoginCallback, v10))
  {
    goto LABEL_11;
  }

  v11 = self->super._ucat->var0;
  if (v11 <= 90)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v15 = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_10:

  v12 = *MEMORY[0x277CCA590];
  v13 = NSErrorF_safe();
  (*(v6 + 2))(v6, 0, 0, v13, &__block_literal_global_76);

LABEL_11:
}

- (void)_connectionEnded:(id)a3
{
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveNetworkProbeEnsureStopped];

  [(SKSetupCaptiveNetworkJoinServer *)self _networkRelayDeviceEnsureStopped];
}

- (void)_bleServerAcceptConnecton:(id)a3
{
  v12 = a3;
  v4 = self->super._skCnx;
  if (v4)
  {
    v5 = v4;
    var0 = self->super._ucat->var0;
    if (var0 <= 90)
    {
      v7 = v12;
      if (var0 != -1)
      {
LABEL_4:
        v10 = v7;
        LogPrintF();
        [v12 invalidate];
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        v7 = v12;
        goto LABEL_4;
      }
    }

    [v12 invalidate];
  }

  else
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:v12];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v5 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_95];
  }

LABEL_8:
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBServer *)self->_bleServer invalidate];
  bleServer = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE090]);
    bleServer = self->_bleServer;
    self->_bleServer = v3;

    [(CBServer *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBServer *)v3 setBleListenPSM:130];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke;
    v9[3] = &unk_279BB8180;
    v9[4] = v3;
    v9[5] = self;
    [(CBServer *)v3 setAcceptHandler:v9];
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      v7 = v3;
      LogPrintF();
    }

LABEL_6:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke_2;
    v8[3] = &unk_279BB8838;
    v8[4] = v3;
    v8[5] = self;
    [(CBServer *)v3 activateWithCompletion:v8, v7];
  }
}

void __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != *(v6 + 216))
  {
    v7 = *MEMORY[0x277CCA590];
    v8 = NSErrorF_safe();
    v5[2](v5, v8);

    goto LABEL_9;
  }

  v9 = **(v6 + 144);
  v10 = v15;
  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      v11 = *(v6 + 144);
      v12 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v12)
      {
        v10 = v15;
        goto LABEL_8;
      }

      v13 = *(v6 + 144);
      v10 = v15;
    }

    v14 = v10;
    LogPrintF();
    v10 = v15;
    v6 = *(a1 + 40);
  }

LABEL_8:
  [v6 _bleServerAcceptConnecton:{v10, v14}];
  [*(a1 + 40) _run];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 216))
  {
    v6 = **(v4 + 144);
    v15 = v3;
    if (v3)
    {
      if (v6 <= 90)
      {
        if (v6 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v10 = *(*(a1 + 40) + 144);
        }

        v13 = CUPrintNSError();
        LogPrintF();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 216);
      *(v7 + 216) = 0;

      goto LABEL_13;
    }

    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_8:
        v14 = v5;
        LogPrintF();
        v4 = [*(a1 + 40) _run];
LABEL_13:
        v3 = v15;
        goto LABEL_14;
      }

      v9 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (v9)
      {
        v11 = *(v4 + 144);
        v5 = *(a1 + 32);
        goto LABEL_8;
      }
    }

    v4 = [v4 _run];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_bleAdvertiserEnsureStopped
{
  bleAdvertiser = self->_bleAdvertiser;
  if (bleAdvertiser)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        v9 = bleAdvertiser;
        LogPrintF();
        bleAdvertiser = self->_bleAdvertiser;
        goto LABEL_6;
      }

      ucat = self->super._ucat;
      v6 = _LogCategory_Initialize();
      bleAdvertiser = self->_bleAdvertiser;
      if (v6)
      {
        v8 = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v7 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  if (!self->_bleAdvertiser)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v3;

    [(CBAdvertiser *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBAdvertiser *)v3 setNearbyActionFlags:64];
    [(CBAdvertiser *)v3 setNearbyActionType:39];
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      v7 = v3;
      LogPrintF();
    }

LABEL_6:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__SKSetupCaptiveNetworkJoinServer__bleAdvertiserEnsureStarted__block_invoke;
    v8[3] = &unk_279BB8838;
    v8[4] = v3;
    v8[5] = self;
    [(CBAdvertiser *)v3 activateWithCompletion:v8, v7];
  }
}

uint64_t __62__SKSetupCaptiveNetworkJoinServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 208))
  {
    v12 = v3;
    if (!v3)
    {
      v4 = [v4 _run];
LABEL_9:
      v3 = v12;
      goto LABEL_10;
    }

    v5 = **(v4 + 144);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        v6 = *(v4 + 144);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v9 = *(*(a1 + 40) + 144);
      }

      v11 = CUPrintNSError();
      LogPrintF();
    }

LABEL_8:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 208);
    *(v7 + 208) = 0;

    goto LABEL_9;
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  v3 = [(CBServer *)self->_bleServer bleListeningPSM];
  if (v3)
  {
    LOBYTE(v3) = [(SKConnection *)self->super._skCnx state]!= 1 && GestaltGetDeviceClass() != 7;
  }

  return v3;
}

- (void)_runDefault
{
  if (self->super._sendDataHandler)
  {
    [(SKSetupCaptiveNetworkJoinServer *)self _oobEnsureStarted];
  }

  else
  {
    [(SKSetupCaptiveNetworkJoinServer *)self _bleServerEnsureStarted];
  }

  if ([(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserShouldRun])
  {

    [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {

    [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStopped];
  }
}

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    mode = self->_mode;
    if (mode == 2)
    {

      [(SKSetupCaptiveNetworkJoinServer *)self _runUserRequest];
    }

    else if (mode == 1)
    {

      [(SKSetupCaptiveNetworkJoinServer *)self _runDetected];
    }

    else
    {
      if (mode)
      {
        var0 = self->super._ucat->var0;
        if (var0 > 90)
        {
          return;
        }

        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return;
          }

          ucat = self->super._ucat;
          v6 = self->_mode;
        }

        LogPrintF();
        return;
      }

      [(SKSetupCaptiveNetworkJoinServer *)self _runDefault];
    }
  }
}

- (void)_invalidated
{
  if (!self->_cfuController)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = SKSetupCaptiveNetworkJoinServer;
    [(SKSetupBase *)&v4 _invalidated];
  }
}

- (void)_invalidate
{
  [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _bleServerEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveDetectedNotificationUpdate:0];
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveNetworkProbeEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _cfuEnsuredStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _networkRelayDeviceEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activate
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke;
  v11[3] = &unk_279BB7A28;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_2;
  v10[3] = &unk_279BB8370;
  v10[4] = self;
  [(SKSetupBase *)self registerRequestID:@"_awSt" options:0 requestHandler:v11 completionHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_3;
  v9[3] = &unk_279BB7A28;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_4;
  v8[3] = &unk_279BB8370;
  v8[4] = self;
  [(SKSetupBase *)self registerRequestID:@"_cnPb" options:0 requestHandler:v9 completionHandler:v8];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_5;
  v7[3] = &unk_279BB7A28;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_6;
  v6[3] = &unk_279BB8370;
  [(SKSetupBase *)self registerRequestID:@"_ntRl" options:0 requestHandler:v7 completionHandler:v6];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_7;
  v5[3] = &unk_279BB7A28;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_8;
  v4[3] = &unk_279BB8370;
  [(SKSetupBase *)self registerRequestID:@"_cnLg" options:0 requestHandler:v5 completionHandler:v4];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 _activate];
}

uint64_t __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _completeWithError:a2];
  }

  return result;
}

uint64_t __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _completeWithError:a2];
  }

  return result;
}

uint64_t __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_6(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _completeWithError:a2];
  }

  return result;
}

uint64_t __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _completeWithError:a2];
  }

  return result;
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

  mode = self->_mode;
  if (mode > 2)
  {
    v6 = @"?";
  }

  else
  {
    v6 = off_279BB7A98[mode];
  }

  v15 = v6;
  CUAppendF();
  v7 = v4;

  v8 = [(SKSetupBase *)self pskData];
  v9 = v8;
  if (v8)
  {
    [v8 length];
    CUAppendF();
    v10 = v7;

    v7 = v10;
  }

  v11 = &stru_2877689A8;
  if (v7)
  {
    v11 = v7;
  }

  v12 = v11;

  return v12;
}

- (void)dealloc
{
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveDetectedNotificationUpdate:0];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 dealloc];
}

- (SKSetupCaptiveNetworkJoinServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupCaptiveNetworkJoinServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupCaptiveNetworkJoinServer];
  v3 = v2;
  if (v2)
  {
    v2->_captiveDetectedNotifyToken = -1;
    v2->super._setupType = 2;
    v4 = v2;
  }

  return v3;
}

+ (void)resetWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:@"com.apple.SetupKit"];
  if (v4)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__SKSetupCaptiveNetworkJoinServer_resetWithCompletionHandler___block_invoke;
    v7[3] = &unk_279BB7A00;
    v9 = v3;
    v8 = v4;
    [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:&unk_28776E060 completion:v7];
  }

  else
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 90 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (v3)
    {
      v5 = *MEMORY[0x277CCA590];
      v6 = NSErrorF_safe();
      (*(v3 + 2))(v3, v6);
    }
  }
}

uint64_t __62__SKSetupCaptiveNetworkJoinServer_resetWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = v4;
  if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      v8 = CUPrintNSError();
      LogPrintF_safe();

      v4 = v9;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v9);
    v4 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v4);
}

@end