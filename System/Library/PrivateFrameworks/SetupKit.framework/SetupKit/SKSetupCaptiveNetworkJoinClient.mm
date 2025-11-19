@interface SKSetupCaptiveNetworkJoinClient
- (BOOL)_runNetworkRelayPeerStart;
- (SKSetupCaptiveNetworkJoinClient)init;
- (void)_captiveProbeRequest;
- (void)_invalidate;
- (void)_networkRelayEnsureStopped;
- (void)_postEvent:(id)a3;
- (void)_run;
- (void)_runAWDLFoundDevice:(id)a3;
- (void)_runAWDLFoundTimerStart;
- (void)_runAWDLStart;
- (void)_runCaptiveNetworkLoginResponse:(id)a3;
- (void)_runCaptiveNetworkLoginStart;
- (void)_runNetworkRelaySelfStart;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceLinkTypeDidChange:(id)a3 linkType:(unsigned __int8)a4 linkSubtype:(unsigned __int8)a5;
- (void)deviceProxyServiceInterfaceNameDidChange:(id)a3 interfaceName:(id)a4;
@end

@implementation SKSetupCaptiveNetworkJoinClient

- (void)deviceProxyServiceInterfaceNameDidChange:(id)a3 interfaceName:(id)a4
{
  v18 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    v8 = v18;
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v13 = self->super._ucat;
      v8 = v18;
    }

    if ([v8 isConnected])
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    [v18 linkType];
    StringFromNRLinkType = createStringFromNRLinkType();
    [v18 linkSubtype];
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    [v18 proxyServiceInterfaceName];
    v17 = v16 = StringFromNRLinkSubtype;
    v14 = v9;
    v15 = StringFromNRLinkType;
    LogPrintF();
  }

LABEL_8:
  if ([v18 isConnected] && !self->_networkRelayProxyInterface && objc_msgSend(v6, "length"))
  {
    objc_storeStrong(&self->_networkRelayProxyInterface, a4);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
  }
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
  v4 = a4;
  v12 = a3;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  v6 = [v12 proxyServiceInterfaceName];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v10 = self->super._ucat;
    }

    [v12 linkType];
    StringFromNRLinkType = createStringFromNRLinkType();
    [v12 linkSubtype];
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    LogPrintF();
  }

LABEL_5:
  if (v4 && !self->_networkRelayProxyInterface && [v6 length])
  {
    objc_storeStrong(&self->_networkRelayProxyInterface, v6);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
  }
}

- (void)_runCaptiveNetworkLoginResponse:(id)a3
{
  v13 = a3;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (v4)
  {
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      if (v6)
      {
        v7 = self->_networkRelayProxyInterface;
        if (v7)
        {
          v8 = [[SKEventCaptiveNetworkPresent alloc] initWithCaptiveURL:v6 interfaceIdentifier:v7 ssid:v4];
          [(SKSetupBase *)self _reportEvent:v8];
          self->_captiveNetworkLoginDone = 1;
          [(SKSetupCaptiveNetworkJoinClient *)self _run];
        }

        else
        {
          v12 = *MEMORY[0x277CCA590];
          v8 = NSErrorF_safe();
          [(SKSetupBase *)self _completeWithError:v8];
        }
      }

      else
      {
        v11 = *MEMORY[0x277CCA590];
        v7 = NSErrorF_safe();
        [(SKSetupBase *)self _completeWithError:v7, v5];
      }
    }

    else
    {
      v10 = *MEMORY[0x277CCA590];
      v6 = NSErrorF_safe();
      [(SKSetupBase *)self _completeWithError:v6];
    }
  }

  else
  {
    v9 = *MEMORY[0x277CCA590];
    v5 = NSErrorF_safe();
    [(SKSetupBase *)self _completeWithError:v5];
  }
}

- (void)_runCaptiveNetworkLoginStart
{
  v9[1] = *MEMORY[0x277D85DE8];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_5:
  v8 = @"timeoutSeconds";
  v9[0] = &unk_28776E1C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SKSetupCaptiveNetworkJoinClient__runCaptiveNetworkLoginStart__block_invoke;
  v7[3] = &unk_279BB86A0;
  v7[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_cnLg" requestMessage:MEMORY[0x277CBEC10] options:v4 responseHandler:v7];

  v5 = *MEMORY[0x277D85DE8];
}

void __63__SKSetupCaptiveNetworkJoinClient__runCaptiveNetworkLoginStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = *(a1 + 32);
  v12 = *v11[18];
  v23 = v10;
  if (!v10 || v9)
  {
    if (v12 > 90)
    {
      goto LABEL_10;
    }

    if (v12 == -1)
    {
      v14 = _LogCategory_Initialize();
      v11 = *(a1 + 32);
      if (!v14)
      {
LABEL_10:
        if (v9)
        {
          [v11 _completeWithError:v9];
        }

        else
        {
          v15 = *MEMORY[0x277CCA590];
          v16 = NSErrorF_safe();
          [v11 _completeWithError:v16];
        }

        goto LABEL_16;
      }

      v18 = v11[18];
    }

    v22 = CUPrintNSError();
    LogPrintF();

    v11 = *(a1 + 32);
    goto LABEL_10;
  }

  v13 = v10;
  if (v12 <= 30)
  {
    if (v12 != -1)
    {
LABEL_5:
      v21 = CUPrintNSObjectOneLine();
      LogPrintF();

      [*(a1 + 32) _runCaptiveNetworkLoginResponse:{v23, v21}];
      goto LABEL_16;
    }

    v17 = _LogCategory_Initialize();
    v11 = *(a1 + 32);
    if (v17)
    {
      v19 = v11[18];
      goto LABEL_5;
    }

    v13 = v23;
  }

  [v11 _runCaptiveNetworkLoginResponse:{v13, v20}];
LABEL_16:
}

- (void)_runNetworkRelaySelfStart
{
  v58 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__596;
  v55 = __Block_byref_object_dispose__597;
  v56 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke;
  v50[3] = &unk_279BB8670;
  v50[4] = self;
  v50[5] = &v51;
  v3 = MEMORY[0x26676A4C0](v50, a2);
  v4 = self->_nrDeviceManager;
  if (!v4)
  {
    v4 = [MEMORY[0x277D2C9E0] copySharedDeviceManager];
    if (!v4)
    {
      v36 = *MEMORY[0x277CCA590];
      v37 = NSErrorF_safe();
      v4 = v52[5];
      v52[5] = v37;
      goto LABEL_27;
    }

    objc_storeStrong(&self->_nrDeviceManager, v4);
  }

  v5 = self->_nrDeviceIdentifier;
  if (v5)
  {
    var0 = self->super._ucat->var0;
    if (var0 < 31)
    {
      if (var0 == -1)
      {
        ucat = self->super._ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v41 = self->super._ucat;
      }

      v42 = [(NRDeviceIdentifier *)v5 nrDeviceIdentifier];
      LogPrintF();
    }

LABEL_9:
    [(NRDeviceManager *)v4 unregisterDevice:v5, v42];
    nrDeviceIdentifier = self->_nrDeviceIdentifier;
    self->_nrDeviceIdentifier = 0;
  }

  v9 = [MEMORY[0x277D2C9D0] newEphemeralDeviceIdentifier];
  if (!v9)
  {
    v23 = *MEMORY[0x277CCA590];
    v24 = NSErrorF_safe();
    v10 = v52[5];
    v52[5] = v24;
    goto LABEL_26;
  }

  objc_storeStrong(&self->_nrDeviceIdentifier, v9);
  v10 = objc_alloc_init(MEMORY[0x277D2CA20]);
  v11 = [(NSString *)self->_networkRelayPeerIPStr UTF8String];
  if (!v11)
  {
    v25 = *MEMORY[0x277CCA590];
    v26 = NSErrorF_safe();
    v27 = v52[5];
    v52[5] = v26;

    goto LABEL_26;
  }

  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v47 = 0;
  if (StringToSockAddr())
  {
    v28 = *MEMORY[0x277CCA590];
    v29 = NSErrorF_safe();
    v14 = v52[5];
    v52[5] = v29;
    goto LABEL_25;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v48 length:v47];
  [v10 setAwdlAddressData:v12];

  if ([(NSData *)self->super._pskData length])
  {
    [(NSData *)self->super._pskData bytes];
    [(NSData *)self->super._pskData length];
    v13 = *MEMORY[0x277D029A0];
    CryptoHKDF();
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v57 length:{32, v57}];
  }

  else
  {
    skCnx = self->super._skCnx;
    v16 = v52;
    obj = v52[5];
    v14 = [(SKConnection *)skCnx deriveKeyWithSaltPtr:"NetworkRelaySalt" saltLen:16 infoPtr:"NetworkRelayInfo" infoLen:16 keyLen:32 error:&obj];
    objc_storeStrong(v16 + 5, obj);
  }

  if (!v14)
  {
    v30 = v52;
    v31 = v52[5];
    if (v31)
    {
      v32 = v31;
      v17 = v30[5];
      v30[5] = v32;
    }

    else
    {
      v38 = *MEMORY[0x277CCA590];
      v39 = NSErrorF_safe();
      v17 = v52[5];
      v52[5] = v39;
    }

    goto LABEL_24;
  }

  [v10 setOutOfBandKey:v14];
  v17 = objc_alloc_init(MEMORY[0x277D2CA00]);
  [v17 setAllowedLinkTypes:&unk_28776E0C0];
  [v17 setAllowedLinkSubtypes:&unk_28776E0D8];
  [v17 setProxyCapability:2];
  v18 = [objc_alloc(MEMORY[0x277D2C9F0]) initWithDeviceIdentifier:self->_nrDeviceIdentifier delegate:self queue:self->super._dispatchQueue];
  if (!v18)
  {
    v33 = *MEMORY[0x277CCA590];
    v34 = NSErrorF_safe();
    v35 = v52[5];
    v52[5] = v34;

    goto LABEL_23;
  }

  objc_storeStrong(&self->_nrDeviceMonitor, v18);
  v19 = self->super._ucat->var0;
  if (v19 <= 30)
  {
    if (v19 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v40 = self->super._ucat;
    }

    v42 = v9;
    v43 = v11;
    LogPrintF();
  }

LABEL_22:
  dispatchQueue = self->super._dispatchQueue;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_87;
  v45[3] = &unk_279BB8370;
  v45[4] = self;
  [(NRDeviceManager *)v4 registerDevice:v9 properties:v10 operationalproperties:v17 queue:dispatchQueue completionBlock:v45, v42, v43];
  v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->super._dispatchQueue);
  objc_storeStrong(&self->_networkRelayTimer, v21);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_2;
  handler[3] = &unk_279BB8648;
  handler[4] = v21;
  handler[5] = self;
  dispatch_source_set_event_handler(v21, handler);
  CUDispatchTimerSet();
  dispatch_activate(v21);

LABEL_23:
LABEL_24:

LABEL_25:
LABEL_26:

LABEL_27:
  v3[2](v3);

  _Block_object_dispose(&v51, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke(uint64_t result)
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

  return [v3 _completeWithError:v7];
}

uint64_t __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_87(uint64_t a1, void *a2)
{
  v14 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  v3 = v14;
  v4 = *(a1 + 32);
  v5 = *v4[18];
  if (v14)
  {
    if (v5 <= 90)
    {
      if (v5 != -1)
      {
LABEL_4:
        v13 = CUPrintNSError();
        LogPrintF();

        v4 = [*(a1 + 32) _completeWithError:{v14, v13}];
LABEL_10:
        v3 = v14;
        goto LABEL_11;
      }

      v6 = v4[18];
      v7 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (v7)
      {
        v10 = v4[18];
        goto LABEL_4;
      }
    }

    v4 = [v4 _completeWithError:{v14, v12}];
    goto LABEL_10;
  }

  if (v5 > 30)
  {
    goto LABEL_11;
  }

  if (v5 != -1)
  {
LABEL_7:
    v4 = LogPrintF();
    goto LABEL_10;
  }

  v8 = v4[18];
  v4 = _LogCategory_Initialize();
  v3 = 0;
  if (v4)
  {
    v9 = *(*(a1 + 32) + 144);
    goto LABEL_7;
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v4, v3);
}

void __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[33];
  if (v1 == v3)
  {
    if (v1)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 264);
      *(v6 + 264) = 0;

      v2 = *(a1 + 40);
    }

    v8 = *MEMORY[0x277CCA590];
    v9 = NSErrorF_safe();
    [v2 _completeWithError:v9];
  }
}

- (BOOL)_runNetworkRelayPeerStart
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  if (CUGetInterfaceAddresses())
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    [(SKSetupBase *)self _completeWithError:v14];

    v4 = 0;
    goto LABEL_9;
  }

  v3 = SockAddrToString();
  v4 = v3 == 0;
  if (v3)
  {
    v15 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    [(SKSetupBase *)self _completeWithError:v6];
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
  v26 = @"_ip";
  v27 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v24 = @"timeoutSeconds";
  v25 = &unk_28776E1C8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v16 = self->super._ucat;
    }

    v17 = CUPrintNSObjectOneLine();
    LogPrintF();
  }

LABEL_7:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelayPeerStart__block_invoke;
  v18[3] = &unk_279BB7EB0;
  v18[4] = self;
  v19 = v5;
  v10 = v5;
  [(SKSetupBase *)self sendRequestID:@"_ntRl" requestMessage:v6 options:v7 responseHandler:v18];

LABEL_8:
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelayPeerStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = a2;
  v7 = a3;
  v8 = a4;
  if (v29 && !v8)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v10 = [v9 UTF8String];
    v11 = *(a1 + 32);
    if (!v10)
    {
      v21 = *MEMORY[0x277CCA590];
      v22 = NSErrorF_safe();
      [v11 _completeWithError:v22];

      goto LABEL_16;
    }

    objc_storeStrong(v11 + 31, v9);
    v12 = *(a1 + 32);
    v13 = *v12[18];
    if (v13 <= 30)
    {
      if (v13 != -1)
      {
LABEL_6:
        v26 = *(a1 + 40);
        LogPrintF();
        [*(a1 + 32) _run];
LABEL_16:

        goto LABEL_17;
      }

      v20 = _LogCategory_Initialize();
      v12 = *(a1 + 32);
      if (v20)
      {
        v24 = v12[18];
        goto LABEL_6;
      }
    }

    [v12 _run];
    goto LABEL_16;
  }

  v14 = *(a1 + 32);
  v15 = *v14[18];
  if (v15 <= 90)
  {
    if (v15 != -1)
    {
LABEL_9:
      v27 = CUPrintNSError();
      LogPrintF();

      v14 = *(a1 + 32);
      goto LABEL_11;
    }

    v16 = v14[18];
    v17 = _LogCategory_Initialize();
    v14 = *(a1 + 32);
    if (v17)
    {
      v23 = v14[18];
      goto LABEL_9;
    }
  }

LABEL_11:
  if (v8)
  {
    [v14 _completeWithError:v8];
  }

  else
  {
    v18 = *MEMORY[0x277CCA590];
    v19 = NSErrorF_safe();
    [v14 _completeWithError:v19];
  }

LABEL_17:
}

- (void)_runAWDLFoundDevice:(id)a3
{
  v15 = a3;
  v5 = [v15 name];
  awdlName = self->_awdlName;
  v7 = v5;
  v8 = awdlName;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_6;
  }

  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_15;
  }

  v10 = [(NSString *)v7 isEqual:v8];

  if (v10)
  {
LABEL_6:
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->super._ucat;
      }

      LogPrintF();
    }

LABEL_10:
    objc_storeStrong(&self->_awdlPeerDevice, a3);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
    goto LABEL_11;
  }

LABEL_15:
  v12 = self->super._ucat->var0;
  if (v12 > 30)
  {
    goto LABEL_11;
  }

  if (v12 != -1)
  {
    goto LABEL_17;
  }

  if (_LogCategory_Initialize())
  {
    v13 = self->super._ucat;
LABEL_17:
    LogPrintF();
  }

LABEL_11:
}

- (void)_runAWDLFoundTimerStart
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->super._dispatchQueue);
  awdlTimer = self->_awdlTimer;
  self->_awdlTimer = v3;
  v5 = v3;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SKSetupCaptiveNetworkJoinClient__runAWDLFoundTimerStart__block_invoke;
  v6[3] = &unk_279BB8648;
  v6[4] = v5;
  v6[5] = self;
  dispatch_source_set_event_handler(v5, v6);
  CUDispatchTimerSet();
  dispatch_activate(v5);
}

void __58__SKSetupCaptiveNetworkJoinClient__runAWDLFoundTimerStart__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[30];
  if (v1 == v3)
  {
    if (v1)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 240);
      *(v6 + 240) = 0;

      v2 = *(a1 + 40);
    }

    v8 = *MEMORY[0x277CCA590];
    v9 = NSErrorF_safe();
    [v2 _completeWithError:v9];
  }
}

- (void)_runAWDLStart
{
  v22[2] = *MEMORY[0x277D85DE8];
  [(CUBonjourBrowser *)self->_awdlBrowser invalidate];
  awdlPeerDevice = self->_awdlPeerDevice;
  self->_awdlPeerDevice = 0;

  v4 = objc_alloc_init(MEMORY[0x277D02848]);
  awdlBrowser = self->_awdlBrowser;
  self->_awdlBrowser = v4;

  [(CUBonjourBrowser *)v4 setChangeFlags:0xFFFFFFFFLL];
  [(CUBonjourBrowser *)v4 setDispatchQueue:self->super._dispatchQueue];
  [(CUBonjourBrowser *)v4 setDomain:@"local."];
  [(CUBonjourBrowser *)v4 setInterfaceName:@"awdl0"];
  [(CUBonjourBrowser *)v4 setServiceType:@"_setupkit._tcp"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke;
  v17[3] = &unk_279BB7E60;
  v17[4] = v4;
  v17[5] = self;
  [(CUBonjourBrowser *)v4 setDeviceFoundHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_2;
  v16[3] = &unk_279BB7E88;
  v16[4] = v4;
  v16[5] = self;
  [(CUBonjourBrowser *)v4 setDeviceChangedHandler:v16];
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
  [(CUBonjourBrowser *)v4 activate];
  *(v22 + 5) = 0;
  v22[0] = 0;
  RandomString();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
  objc_storeStrong(&self->_awdlName, v7);
  v8 = self->super._ucat->var0;
  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v13 = self->super._ucat;
    }

    v14 = v7;
    LogPrintF();
  }

LABEL_9:
  self->_awdlAdvertiserPeerStarted = 0;
  v20 = @"_nm";
  v21 = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v14}];
  v18 = @"timeoutSeconds";
  v19 = &unk_28776E1C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_3;
  v15[3] = &unk_279BB86A0;
  v15[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_awSt" requestMessage:v9 options:v10 responseHandler:v15];

  v11 = *MEMORY[0x277D85DE8];
}

void *__48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[27])
  {
    return [result _runAWDLFoundDevice:a2];
  }

  return result;
}

void *__48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[27])
  {
    return [result _runAWDLFoundDevice:a2];
  }

  return result;
}

void __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = **(v9 + 144);
  if (v20 && !v8)
  {
    if (v10 <= 30)
    {
      if (v10 == -1)
      {
        v15 = *(v9 + 144);
        v16 = _LogCategory_Initialize();
        v9 = *(a1 + 32);
        if (!v16)
        {
          goto LABEL_14;
        }

        v18 = *(v9 + 144);
      }

      LogPrintF();
      v9 = *(a1 + 32);
    }

LABEL_14:
    *(v9 + 210) = 1;
    [*(a1 + 32) _run];
    goto LABEL_15;
  }

  if (v10 <= 90)
  {
    if (v10 != -1)
    {
LABEL_8:
      v19 = CUPrintNSError();
      LogPrintF();

      v9 = *(a1 + 32);
      goto LABEL_10;
    }

    v11 = *(v9 + 144);
    v12 = _LogCategory_Initialize();
    v9 = *(a1 + 32);
    if (v12)
    {
      v17 = *(v9 + 144);
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v8)
  {
    [v9 _completeWithError:v8];
  }

  else
  {
    v13 = *MEMORY[0x277CCA590];
    v14 = NSErrorF_safe();
    [v9 _completeWithError:v14];
  }

LABEL_15:
}

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          runState = self->super._runState;
          switch(runState)
          {
            case 0:
              v4 = 11;
              goto LABEL_30;
            case 11:
              [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global_642];
              goto LABEL_28;
            case 12:
              v5 = [(SKConnection *)self->super._skCnx state];
              v4 = self->super._runState;
              if (v5 != 1)
              {
                break;
              }

              goto LABEL_29;
            case 13:
              [(SKSetupCaptiveNetworkJoinClient *)self _runAWDLStart];
              goto LABEL_28;
            case 14:
              if (self->_awdlAdvertiserPeerStarted)
              {
                v4 = 15;
                goto LABEL_30;
              }

              v4 = 14;
              break;
            case 15:
              [(SKSetupCaptiveNetworkJoinClient *)self _runAWDLFoundTimerStart];
              goto LABEL_28;
            case 16:
              if (!self->_awdlPeerDevice)
              {
                v4 = 16;
                break;
              }

              v6 = 240;
              awdlTimer = self->_awdlTimer;
              if (awdlTimer)
              {
                goto LABEL_27;
              }

              v4 = 17;
              goto LABEL_30;
            case 17:
              v8 = [(SKSetupCaptiveNetworkJoinClient *)self _runNetworkRelayPeerStart];
              v4 = self->super._runState;
              if (!v8)
              {
                break;
              }

              goto LABEL_29;
            case 18:
              if (self->_networkRelayPeerIPStr)
              {
                v4 = 19;
                goto LABEL_30;
              }

              v4 = 18;
              break;
            case 19:
              [(SKSetupCaptiveNetworkJoinClient *)self _runNetworkRelaySelfStart];
              goto LABEL_28;
            case 20:
              if (!self->_networkRelayProxyInterface)
              {
                v4 = 20;
                break;
              }

              v6 = 264;
              awdlTimer = self->_networkRelayTimer;
              if (awdlTimer)
              {
LABEL_27:
                v9 = awdlTimer;
                dispatch_source_cancel(v9);
                v10 = *(&self->super.super.isa + v6);
                *(&self->super.super.isa + v6) = 0;

LABEL_28:
                v4 = self->super._runState;
LABEL_29:
                ++v4;
              }

              else
              {
                v4 = 21;
              }

              goto LABEL_30;
            case 21:
              [(SKSetupCaptiveNetworkJoinClient *)self _runCaptiveNetworkLoginStart];
              goto LABEL_28;
            case 22:
              if (self->_captiveNetworkLoginDone)
              {
                v4 = 23;
                goto LABEL_30;
              }

              v4 = 22;
              break;
            case 23:
              if (self->_captiveNetworkProbingSuccess)
              {
                v4 = 24;
LABEL_30:
                self->super._runState = v4;
              }

              else
              {
                v4 = 23;
              }

              break;
            case 24:
              [(SKSetupBase *)self _completeWithError:0];
              v4 = self->super._runState;
              break;
            default:
              return;
          }

          if (v4 == runState)
          {
            return;
          }

          var0 = self->super._ucat->var0;
        }

        while (var0 > 30);
        if (var0 == -1)
        {
          break;
        }

LABEL_34:
        if ((0x1FFF8FFu >> runState))
        {
          v12 = off_279BB7ED0[runState];
        }

        if (v4 < 0x19 && ((0x1FFF8FFu >> v4) & 1) != 0)
        {
          v14 = off_279BB7ED0[v4];
        }

        LogPrintF();
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        v4 = self->super._runState;
        goto LABEL_34;
      }
    }
  }
}

- (void)_postEvent:(id)a3
{
  v4 = a3;
  if ([v4 eventType] != 201)
  {
    v8.receiver = self;
    v8.super_class = SKSetupCaptiveNetworkJoinClient;
    [(SKSetupBase *)&v8 _postEvent:v4];
    goto LABEL_8;
  }

  var0 = self->super._ucat->var0;
  if (var0 > 30)
  {
    goto LABEL_7;
  }

  if (var0 == -1)
  {
    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_4;
    }

LABEL_7:
    [(SKSetupCaptiveNetworkJoinClient *)self _captiveProbeRequest];
    goto LABEL_8;
  }

LABEL_4:
  LogPrintF();
  [(SKSetupCaptiveNetworkJoinClient *)self _captiveProbeRequest];
LABEL_8:
}

- (void)_networkRelayEnsureStopped
{
  [(CUBonjourBrowser *)self->_awdlBrowser invalidate];
  awdlBrowser = self->_awdlBrowser;
  self->_awdlBrowser = 0;

  awdlTimer = self->_awdlTimer;
  if (awdlTimer)
  {
    v5 = awdlTimer;
    dispatch_source_cancel(v5);
    v6 = self->_awdlTimer;
    self->_awdlTimer = 0;
  }

  networkRelayTimer = self->_networkRelayTimer;
  if (networkRelayTimer)
  {
    v8 = networkRelayTimer;
    dispatch_source_cancel(v8);
    v9 = self->_networkRelayTimer;
    self->_networkRelayTimer = 0;
  }

  v20 = self->_nrDeviceManager;
  v10 = self->_nrDeviceIdentifier;
  if (v20)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_11:
        v19 = [(NRDeviceIdentifier *)v10 nrDeviceIdentifier];
        LogPrintF();

        [(NRDeviceManager *)v20 unregisterDevice:v10, v19];
        goto LABEL_14;
      }

      ucat = self->super._ucat;
      if (_LogCategory_Initialize())
      {
        v17 = self->super._ucat;
        goto LABEL_11;
      }
    }

    [(NRDeviceManager *)v20 unregisterDevice:v10, v18];
  }

LABEL_14:
  nrDeviceIdentifier = self->_nrDeviceIdentifier;
  self->_nrDeviceIdentifier = 0;

  nrDeviceManager = self->_nrDeviceManager;
  self->_nrDeviceManager = 0;

  nrDeviceMonitor = self->_nrDeviceMonitor;
  self->_nrDeviceMonitor = 0;
}

- (void)_captiveProbeRequest
{
  v9[1] = *MEMORY[0x277D85DE8];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_5:
  v8 = @"timeoutSeconds";
  v9[0] = &unk_28776E1C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKSetupCaptiveNetworkJoinClient__captiveProbeRequest__block_invoke;
  v7[3] = &unk_279BB86A0;
  v7[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_cnPb" requestMessage:MEMORY[0x277CBEC10] options:v4 responseHandler:v7];

  v5 = *MEMORY[0x277D85DE8];
}

void __55__SKSetupCaptiveNetworkJoinClient__captiveProbeRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = *(a1 + 32);
  v12 = *v11[18];
  v23 = v10;
  if (!v10 || v9)
  {
    if (v12 > 90)
    {
      goto LABEL_10;
    }

    if (v12 == -1)
    {
      v14 = _LogCategory_Initialize();
      v11 = *(a1 + 32);
      if (!v14)
      {
LABEL_10:
        if (v9)
        {
          [v11 _completeWithError:v9];
        }

        else
        {
          v15 = *MEMORY[0x277CCA590];
          v16 = NSErrorF_safe();
          [v11 _completeWithError:v16];
        }

        goto LABEL_16;
      }

      v18 = v11[18];
    }

    v22 = CUPrintNSError();
    LogPrintF();

    v11 = *(a1 + 32);
    goto LABEL_10;
  }

  v13 = v10;
  if (v12 <= 30)
  {
    if (v12 != -1)
    {
LABEL_5:
      v21 = CUPrintNSObjectOneLine();
      LogPrintF();

      [*(a1 + 32) _captiveProbeResponse:{v23, v21}];
      goto LABEL_16;
    }

    v17 = _LogCategory_Initialize();
    v11 = *(a1 + 32);
    if (v17)
    {
      v19 = v11[18];
      goto LABEL_5;
    }

    v13 = v23;
  }

  [v11 _captiveProbeResponse:{v13, v20}];
LABEL_16:
}

- (void)_invalidate
{
  [(SKSetupCaptiveNetworkJoinClient *)self _networkRelayEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinClient;
  [(SKSetupBase *)&v3 _invalidate];
}

- (SKSetupCaptiveNetworkJoinClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupCaptiveNetworkJoinClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupCaptiveNetworkJoinClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end