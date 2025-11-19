@interface BTShareAudioSessionDaemon
- (BTShareAudioSessionDaemon)init;
- (int)_runAdvertiser;
- (int)_runConfirm;
- (int)_runConnectGuestHeadphones;
- (int)_runFinish;
- (int)_runGuestiOSConnect;
- (int)_runGuestiOSPairSetupPublic;
- (int)_runGuestiOSShareAudio;
- (int)_runGuestiOSShareAudioConnect;
- (int)_runInit;
- (int)_runScannerNearbyInfo;
- (int)_runScannerProxPairing;
- (int)_runShareAudioServiceStart;
- (int)_runShowHeadphonesPairingInstructions;
- (int)_runWaitForConfigRequestOrProxTrigger;
- (int)_runWaitForConnectRequest;
- (int)_runWaitForGuestHeadphones;
- (int)_runWaitForGuestHeadphonesPairingMode;
- (int)_runWaitForProxTrigger;
- (void)_bleScannerNearbyInfoDeviceFound:(id)a3;
- (void)_bleScannerProxPairingDeviceFound:(id)a3;
- (void)_cleanup;
- (void)_invalidate;
- (void)_pickableRoutesChanged;
- (void)_pickableRoutesChanged:(id)a3;
- (void)_reportError:(id)a3;
- (void)_run;
- (void)_runDefault;
- (void)_runGuestiOSShareAudioConnectProcessResponse:(id)a3 error:(id)a4;
- (void)_runGuestiOSShareAudioConnectSendRequest;
- (void)_runGuestiOSShareAudioProcessResponse:(id)a3 error:(id)a4;
- (void)_runGuestiOSShareAudioSendRequest;
- (void)_runShareAudioServiceConfigRequest:(id)a3 responseHandler:(id)a4;
- (void)_runShareAudioServiceConfigResponse:(id)a3;
- (void)_runShareAudioServiceConnectRequest:(id)a3 responseHandler:(id)a4;
- (void)_runStory6TV;
- (void)_runStory6iOS;
- (void)activate;
- (void)invalidate;
- (void)userConfirmed:(BOOL)a3;
@end

@implementation BTShareAudioSessionDaemon

- (BTShareAudioSessionDaemon)init
{
  v6.receiver = self;
  v6.super_class = BTShareAudioSessionDaemon;
  v2 = [(BTShareAudioSessionDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E53EC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E54D8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(BTShareAudioSessionDaemon *)self _reportProgress:20];
    [(BTShareAudioSessionDaemon *)self _cleanup];
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE050();
    }
  }
}

- (void)_run
{
  mode = self->_mode;
  if (mode == 2)
  {
    [(BTShareAudioSessionDaemon *)self _runStory6TV];
  }

  else if (mode == 1)
  {
    [(BTShareAudioSessionDaemon *)self _runStory6iOS];
  }

  else
  {
    [(BTShareAudioSessionDaemon *)self _runDefault];
  }
}

- (int)_runInit
{
  if (!self->_initialized)
  {
    self->_prefHeadphoneTrigger = CFPrefs_GetInt64() != 0;
    self->_prefiOSTrigger = CFPrefs_GetInt64() != 0;
    Int64 = CFPrefs_GetInt64();
    if (Int64 == Int64)
    {
      v4 = Int64;
    }

    else
    {
      v4 = -1;
    }

    self->_prefOverrideColorCode = v4;
    v5 = CFPrefs_GetInt64();
    if (v5 == v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = -1;
    }

    self->_prefOverrideProductID = v6;
    v7 = CFPrefs_GetInt64();
    if ((v7 - 1000) < 0xFFFFFFFFFFFFF831 || v7 == 0)
    {
      v9 = -40;
    }

    else
    {
      v9 = v7;
    }

    self->_prefRSSIThreshold = v9;
    self->_prefRespectDeviceSupport = CFPrefs_GetInt64() == 0;
    if (!self->_preventProxCardsClient)
    {
      v10 = objc_alloc_init(SFClient);
      preventProxCardsClient = self->_preventProxCardsClient;
      self->_preventProxCardsClient = v10;

      [(SFClient *)self->_preventProxCardsClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
    }

    self->_initialized = 1;
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE06C(&self->_prefRSSIThreshold);
    }
  }

  return 4;
}

- (int)_runScannerProxPairing
{
  if (!self->_prefHeadphoneTrigger)
  {
    return 2;
  }

  v14[6] = v5;
  v14[7] = v4;
  v14[12] = v2;
  v14[13] = v3;
  if (self->_configRequestReceived || self->_triggeredDevice && self->_triggeredNeedsSetupDevice)
  {
    if (self->_bleProxPairingScanner)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE0CC();
      }

      [(SFDeviceDiscovery *)self->_bleProxPairingScanner invalidate];
      bleProxPairingScanner = self->_bleProxPairingScanner;
      self->_bleProxPairingScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!self->_bleProxPairingScanner)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE0B0();
      }

      v9 = objc_alloc_init(SFDeviceDiscovery);
      v10 = self->_bleProxPairingScanner;
      self->_bleProxPairingScanner = v9;
      v11 = v9;

      [(SFDeviceDiscovery *)v11 setChangeFlags:13];
      [(SFDeviceDiscovery *)v11 setDiscoveryFlags:2];
      [(SFDeviceDiscovery *)v11 setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceDiscovery *)v11 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v11 setScanRate:50];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000E59F8;
      v14[3] = &unk_1002B8428;
      v14[4] = v11;
      v14[5] = self;
      [(SFDeviceDiscovery *)v11 setDeviceFoundHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E5A14;
      v13[3] = &unk_1002B8450;
      v13[4] = v11;
      v13[5] = self;
      [(SFDeviceDiscovery *)v11 setDeviceChangedHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E5A30;
      v12[3] = &unk_1002B68A8;
      v12[4] = v11;
      v12[5] = self;
      [(SFDeviceDiscovery *)v11 activateWithCompletion:v12];
    }

    return 4;
  }
}

- (int)_runScannerNearbyInfo
{
  if (!self->_prefiOSTrigger)
  {
    return 2;
  }

  v15[6] = v5;
  v15[7] = v4;
  v15[12] = v2;
  v15[13] = v3;
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  if (self->_triggeredDevice)
  {
    if (bleNearbyInfoScanner)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE144();
      }

      [(SFDeviceDiscovery *)self->_bleNearbyInfoScanner invalidate];
      v8 = self->_bleNearbyInfoScanner;
      self->_bleNearbyInfoScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyInfoScanner)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE160();
      }

      v10 = objc_alloc_init(SFDeviceDiscovery);
      v11 = self->_bleNearbyInfoScanner;
      self->_bleNearbyInfoScanner = v10;
      v12 = v10;

      [(SFDeviceDiscovery *)v12 setChangeFlags:13];
      [(SFDeviceDiscovery *)v12 setDiscoveryFlags:1];
      [(SFDeviceDiscovery *)v12 setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceDiscovery *)v12 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v12 setScanRate:50];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000E5D54;
      v15[3] = &unk_1002B8428;
      v15[4] = v12;
      v15[5] = self;
      [(SFDeviceDiscovery *)v12 setDeviceFoundHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000E5D70;
      v14[3] = &unk_1002B8450;
      v14[4] = v12;
      v14[5] = self;
      [(SFDeviceDiscovery *)v12 setDeviceChangedHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E5D8C;
      v13[3] = &unk_1002B68A8;
      v13[4] = v12;
      v13[5] = self;
      [(SFDeviceDiscovery *)v12 activateWithCompletion:v13];
    }

    return 4;
  }
}

- (int)_runShareAudioServiceStart
{
  if (!self->_shareAudioService)
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE1D8();
    }

    v3 = objc_alloc_init(BTShareAudioService);
    shareAudioService = self->_shareAudioService;
    self->_shareAudioService = v3;
    v5 = v3;

    v6 = dispatch_queue_create("ShareAudioService", 0);
    [(BTShareAudioService *)v5 setDispatchQueue:v6];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E5FD8;
    v9[3] = &unk_1002BB870;
    v9[4] = v5;
    v9[5] = self;
    [(BTShareAudioService *)v5 setConfigRequestHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E6088;
    v8[3] = &unk_1002BB870;
    v8[4] = v5;
    v8[5] = self;
    [(BTShareAudioService *)v5 setConnectRequestHandler:v8];
    [(BTShareAudioService *)v5 activate];
  }

  return 4;
}

- (void)_runShareAudioServiceConfigRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003A08;
  v24 = sub_1000038B0;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E63E8;
  v17[3] = &unk_1002B74D0;
  v19 = &v20;
  v7 = a4;
  v18 = v7;
  v8 = objc_retainBlock(v17);
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_configResponseHandler)
  {
    v14 = BTErrorF();
    v9 = v21[5];
    v21[5] = v14;
  }

  else
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      objc_storeStrong(&self->_guestHeadphonesAddress, v9);
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      guestHeadphonesName = self->_guestHeadphonesName;
      self->_guestHeadphonesName = v10;

      self->_guestHeadphonesProductID = CFDictionaryGetInt64Ranged();
      v12 = objc_retainBlock(v7);
      configResponseHandler = self->_configResponseHandler;
      self->_configResponseHandler = v12;

      self->_configRequestReceived = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
      [(BTShareAudioSessionDaemon *)self _run];
    }

    else
    {
      v15 = BTErrorF();
      v16 = v21[5];
      v21[5] = v15;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v20, 8);
}

- (void)_runShareAudioServiceConfigResponse:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003A08;
  v15 = sub_1000038B0;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E66C4;
  v8[3] = &unk_1002B74D0;
  v10 = &v11;
  v3 = a3;
  v9 = v3;
  v4 = objc_retainBlock(v8);
  v5 = MGCopyAnswer();
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:@"btAd"];
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    (*(v3 + 2))(v3, 0, 0, v6);
  }

  else
  {
    v7 = BTErrorF();
    v6 = v12[5];
    v12[5] = v7;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v11, 8);
}

- (void)_runShareAudioServiceConnectRequest:(id)a3 responseHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FE1F4();
  }

  v7 = objc_retainBlock(v6);
  connectResponseHandler = self->_connectResponseHandler;
  self->_connectResponseHandler = v7;

  self->_connectRequestReceived = 1;
  [(BTShareAudioSessionDaemon *)self _run];
}

- (int)_runAdvertiser
{
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (self->_triggeredDevice)
  {
    if (bleNearbyActionAdvertiser)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE234();
      }

      [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
      v4 = self->_bleNearbyActionAdvertiser;
      self->_bleNearbyActionAdvertiser = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyActionAdvertiser)
    {
      DeviceClass = GestaltGetDeviceClass();
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE250();
      }

      v7 = objc_alloc_init(SFService);
      v8 = self->_bleNearbyActionAdvertiser;
      self->_bleNearbyActionAdvertiser = v7;
      v9 = v7;

      [(SFService *)v9 setAdvertiseRate:60];
      if (DeviceClass == 4)
      {
        v10 = 31;
      }

      else
      {
        v10 = 27;
      }

      [(SFService *)v9 setDeviceActionType:v10];
      [(SFService *)v9 setDispatchQueue:self->_dispatchQueue];
      [(SFService *)v9 setIdentifier:@"a5989962-d94b-4755-bbca-59ecf498ad2f"];
      [(SFService *)v9 setLabel:@"ShareAudio"];
      [(SFService *)v9 setNeedsSetup:1];
      [(SFService *)v9 setPairSetupDisabled:1];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000E69F8;
      v11[3] = &unk_1002B68A8;
      v11[4] = v9;
      v11[5] = self;
      [(SFService *)v9 activateWithCompletion:v11];
    }

    return 4;
  }
}

- (int)_runWaitForConfigRequestOrProxTrigger
{
  configRequestReceived = self->_configRequestReceived;
  result = 4;
  if (!configRequestReceived)
  {
    if (self->_triggeredDevice)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int)_runWaitForProxTrigger
{
  if (self->_triggeredDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runWaitForConnectRequest
{
  if (self->_connectRequestReceived)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConfirm
{
  confirmState = self->_confirmState;
  if (confirmState == 4)
  {
    v4 = objc_retainBlock(self->_configResponseHandler);
    configResponseHandler = self->_configResponseHandler;
    self->_configResponseHandler = 0;

    if (v4)
    {
      [(BTShareAudioSessionDaemon *)self _runShareAudioServiceConfigResponse:v4];
    }
  }

  else if (confirmState != 2)
  {
    if (confirmState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_confirmState;
          }

          v7 = self->_confirmState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE2C8(self);
      }

      self->_confirmState = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
    }
  }

  return self->_confirmState;
}

- (int)_runGuestiOSConnect
{
  guestiOSConnectState = self->_guestiOSConnectState;
  if (guestiOSConnectState != 4 && guestiOSConnectState != 2)
  {
    if (guestiOSConnectState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSConnectState;
          }

          v8 = self->_guestiOSConnectState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE30C();
      }

      self->_guestiOSConnectState = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:200];
      v5 = objc_alloc_init(SFSession);
      objc_storeStrong(&self->_guestiOSSession, v5);
      [v5 setDispatchQueue:self->_dispatchQueue];
      [v5 setLabel:@"ShareAudio"];
      darwinDevice = self->_darwinDevice;
      if (!darwinDevice)
      {
        darwinDevice = self->_triggeredDevice;
      }

      [v5 setPeerDevice:darwinDevice];
      [v5 setServiceIdentifier:@"com.apple.sharing.ShareAudio"];
      [v5 setSessionFlags:1];
      [v5 setStatusMonitor:self->_statusMonitor];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E6F2C;
      v13[3] = &unk_1002B68A8;
      v13[4] = v5;
      v13[5] = self;
      [v5 setErrorHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E7030;
      v12[3] = &unk_1002B6D18;
      v12[4] = v5;
      v12[5] = self;
      [v5 setInterruptionHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000E7088;
      v11[3] = &unk_1002B6D18;
      v11[4] = v5;
      v11[5] = self;
      [v5 setInvalidationHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000E70E0;
      v10[3] = &unk_1002B6D18;
      v10[4] = v5;
      v10[5] = self;
      [v5 setSessionStartedHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000E7170;
      v9[3] = &unk_1002B68A8;
      v9[4] = v5;
      v9[5] = self;
      [v5 activateWithCompletion:v9];
    }
  }

  return self->_guestiOSConnectState;
}

- (int)_runGuestiOSPairSetupPublic
{
  guestiOSPairSetupPublicState = self->_guestiOSPairSetupPublicState;
  if (guestiOSPairSetupPublicState != 4 && guestiOSPairSetupPublicState != 2)
  {
    if (guestiOSPairSetupPublicState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSPairSetupPublicState;
          }

          v7 = self->_guestiOSPairSetupPublicState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE418();
      }

      self->_guestiOSPairSetupPublicState = 1;
      v5 = self->_guestiOSSession;
      [(SFSession *)v5 setFixedPIN:@"public"];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E73C0;
      v8[3] = &unk_1002B68A8;
      v8[4] = v5;
      v8[5] = self;
      [(SFSession *)v5 pairSetupWithFlags:16 completion:v8];
    }
  }

  return self->_guestiOSPairSetupPublicState;
}

- (int)_runGuestiOSShareAudio
{
  guestiOSShareAudioState = self->_guestiOSShareAudioState;
  if (guestiOSShareAudioState != 4 && guestiOSShareAudioState != 2)
  {
    if (guestiOSShareAudioState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioState;
          }

          v6 = self->_guestiOSShareAudioState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_guestiOSShareAudioState = 1;
      [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioSendRequest];
    }
  }

  return self->_guestiOSShareAudioState;
}

- (void)_runGuestiOSShareAudioSendRequest
{
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FE490();
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CBDevice *)self->_cbDevice btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = MGCopyAnswer();
  if (v6)
  {
    v5 = v6;
LABEL_7:
    [v3 setObject:v5 forKeyedSubscript:@"btAd"];
    v7 = [(CBDevice *)self->_cbDevice name];
    if (v7 || (v7 = GestaltCopyAnswer()) != 0)
    {
      v8 = v7;
      [v3 setObject:v7 forKeyedSubscript:@"dname"];
    }

    v9 = [(CBDevice *)self->_cbDevice productID];
    if (v9)
    {
      v10 = [NSNumber numberWithUnsignedInt:v9];
      [v3 setObject:v10 forKeyedSubscript:@"productID"];
    }

    guestiOSSession = self->_guestiOSSession;
    dispatchQueue = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E77A4;
    v14[3] = &unk_1002B6D60;
    v14[4] = guestiOSSession;
    v14[5] = self;
    v14[6] = v3;
    v13 = guestiOSSession;
    [(SFSession *)v13 appleIDAddProof:v3 dispatchQueue:dispatchQueue completion:v14];

    goto LABEL_13;
  }

  if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FE4AC();
  }

  self->_guestiOSShareAudioState = 3;
  v5 = NSErrorF();
  [(BTShareAudioSessionDaemon *)self _reportError:v5];
LABEL_13:
}

- (void)_runGuestiOSShareAudioProcessResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  if (v9)
  {
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE54C();
    }

    self->_guestiOSShareAudioState = 3;
    [(BTShareAudioSessionDaemon *)self _reportError:v9];
  }

  else
  {
    if (v8)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE58C();
      }

      v10 = self->_guestiOSSession;
      dispatchQueue = self->_dispatchQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E7AF8;
      v13[3] = &unk_1002BB8C0;
      v14 = v10;
      v15 = self;
      v16 = v8;
      v12 = v10;
      [(SFSession *)v12 appleIDVerifyProof:v16 dispatchQueue:dispatchQueue completion:v13];
    }

    else
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE5CC();
      }

      self->_guestiOSShareAudioState = 3;
      v12 = NSErrorF();
      [(BTShareAudioSessionDaemon *)self _reportError:v12];
    }
  }
}

- (int)_runGuestiOSShareAudioConnect
{
  guestiOSShareAudioConnectState = self->_guestiOSShareAudioConnectState;
  if (guestiOSShareAudioConnectState != 4 && guestiOSShareAudioConnectState != 2)
  {
    if (guestiOSShareAudioConnectState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioConnectState;
          }

          v6 = self->_guestiOSShareAudioConnectState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_guestiOSShareAudioConnectState = 1;
      [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioConnectSendRequest];
    }
  }

  return self->_guestiOSShareAudioConnectState;
}

- (void)_runGuestiOSShareAudioConnectSendRequest
{
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FE6E8();
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  guestiOSSession = self->_guestiOSSession;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E7EBC;
  v6[3] = &unk_1002BB898;
  v6[4] = guestiOSSession;
  v6[5] = self;
  v5 = guestiOSSession;
  [(SFSession *)v5 sendRequestID:@"_shCn" options:0 request:v3 responseHandler:v6];
}

- (void)_runGuestiOSShareAudioConnectProcessResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE704();
    }

    self->_guestiOSShareAudioConnectState = 3;
    [(BTShareAudioSessionDaemon *)self _reportError:v6];
  }

  else
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE744();
    }

    self->_guestiOSShareAudioConnectState = 4;
    [(BTShareAudioSessionDaemon *)self _run];
  }
}

- (int)_runShowHeadphonesPairingInstructions
{
  result = self->_guestHeadphonesInstructionsState;
  if (!result)
  {
    if (!self->_triggeredNeedsSetupDevice)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE784(self);
      }

      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:120];
    }

    result = 4;
    self->_guestHeadphonesInstructionsState = 4;
  }

  return result;
}

- (int)_runWaitForGuestHeadphonesPairingMode
{
  if (self->_triggeredNeedsSetupDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConnectGuestHeadphones
{
  result = self->_guestHeadphonesConnectState;
  if (!result)
  {
    v4 = [(CBDevice *)self->_cbDevice btAddressData];
    if (v4)
    {
      v5 = [(CBDevice *)self->_cbDevice btAddressData];
      v6 = CUPrintNSDataAddress();
    }

    else
    {
      v6 = self->_guestHeadphonesAddress;
    }

    guestiOSSession = self->_guestiOSSession;
    if (guestiOSSession)
    {
      v8 = guestiOSSession;
    }

    else
    {
      v8 = [(BTShareAudioService *)self->_shareAudioService sfSession];
    }

    v9 = v8;
    v10 = [(SFSession *)v8 pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      guestDeviceAddress = self->_guestDeviceAddress;
      v14 = v10;
      v12 = v6;
      LogPrintF();
    }

    self->_guestHeadphonesConnectState = 1;
    [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:300, v12, guestDeviceAddress, v14];
    v11 = objc_alloc_init(BTBluetoothPairingSession);
    objc_storeStrong(&self->_guestHeadphonesPairingSession, v11);
    [v11 setDeviceAddress:v6];
    [v11 setDispatchQueue:self->_dispatchQueue];
    if (self->_triggerediOS || ![(SFDevice *)self->_triggeredDevice paired])
    {
      if (self->_guestDeviceAddress)
      {
        [v11 setGuestAddress:?];
      }

      [v11 setGuestKey:v10];
      [v11 setGuestMode:1];
      [v11 setGuestPermanent:self->_confirmPermanent];
      if (self->_triggerediOS && !self->_guestiOSContact || self->_mode == 1)
      {
        [v11 setUserNotInContacts:1];
      }
    }

    else
    {
      [v11 setAggregate:1];
      [v11 setConnectOnly:1];
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E82C0;
    v15[3] = &unk_1002B68A8;
    v15[4] = v11;
    v15[5] = self;
    [v11 setCompletionHandler:v15];
    [v11 activate];

    return self->_guestHeadphonesConnectState;
  }

  return result;
}

- (int)_runWaitForGuestHeadphones
{
  guestiOSWaitForRouteState = self->_guestiOSWaitForRouteState;
  if (guestiOSWaitForRouteState != 4 && guestiOSWaitForRouteState != 2)
  {
    if (guestiOSWaitForRouteState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSWaitForRouteState;
          }

          v9 = self->_guestiOSWaitForRouteState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE824(self);
      }

      self->_guestiOSWaitForRouteState = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgress:320];
      v5 = +[AVSystemController sharedAVSystemController];
      v6 = [NSArray arrayWithObject:AVSystemController_PickableRoutesDidChangeNotification];
      [v5 setAttribute:v6 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"_pickableRoutesChanged:" name:AVSystemController_PickableRoutesDidChangeNotification object:v5];
      self->_observingPickableRoutes = 1;
      [(BTShareAudioSessionDaemon *)self _pickableRoutesChanged];
    }
  }

  return self->_guestiOSWaitForRouteState;
}

- (int)_runFinish
{
  v3 = objc_retainBlock(self->_connectResponseHandler);
  if (v3)
  {
    if (dword_1002F7880 < 31 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE868();
    }

    (*(v3 + 2))(v3, 0, 0, &__NSDictionary0__struct);
    connectResponseHandler = self->_connectResponseHandler;
    self->_connectResponseHandler = 0;
  }

  v5 = self->_guestHeadphonesRouteUID;
  if (v5)
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE884();
    }

    v11 = @"mediaRouteID";
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(BTShareAudioSessionDaemon *)self _reportProgress:40 info:v6];
  }

  else
  {
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE8C4();
    }

    v9 = @"error";
    v6 = NSErrorWithOSStatusF();
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [(BTShareAudioSessionDaemon *)self _reportProgress:50 info:v7];
  }

  [(BTShareAudioSessionDaemon *)self _cleanup];
  return 4;
}

- (void)_cleanup
{
  v3 = objc_retainBlock(self->_configResponseHandler);
  if (v3)
  {
    v4 = BTErrorF();
    if (dword_1002F7880 < 91 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE8E0();
    }

    (*(v3 + 2))(v3, v4, 0, 0);
    configResponseHandler = self->_configResponseHandler;
    self->_configResponseHandler = 0;
  }

  v6 = objc_retainBlock(self->_connectResponseHandler);
  if (v6)
  {
    v7 = BTErrorF();
    if (dword_1002F7880 < 91 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE8E0();
    }

    (*(v6 + 2))(v6, v7, 0, 0);
    connectResponseHandler = self->_connectResponseHandler;
    self->_connectResponseHandler = 0;
  }

  [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  [(SFDeviceDiscovery *)self->_bleNearbyInfoScanner invalidate];
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  self->_bleNearbyInfoScanner = 0;

  [(SFDeviceDiscovery *)self->_bleProxPairingScanner invalidate];
  bleProxPairingScanner = self->_bleProxPairingScanner;
  self->_bleProxPairingScanner = 0;

  self->_guestHeadphonesConnectState = 0;
  guestHeadphonesAddress = self->_guestHeadphonesAddress;
  self->_guestHeadphonesAddress = 0;

  [(BTBluetoothPairingSession *)self->_guestHeadphonesPairingSession invalidate];
  guestHeadphonesPairingSession = self->_guestHeadphonesPairingSession;
  self->_guestHeadphonesPairingSession = 0;

  [(SFSession *)self->_guestiOSSession invalidate];
  guestiOSSession = self->_guestiOSSession;
  self->_guestiOSSession = 0;

  if (self->_observingPickableRoutes)
  {
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 removeObserver:self name:AVSystemController_PickableRoutesDidChangeNotification object:0];
    self->_observingPickableRoutes = 0;
  }

  [(SFClient *)self->_preventProxCardsClient invalidate];
  preventProxCardsClient = self->_preventProxCardsClient;
  self->_preventProxCardsClient = 0;

  [(BTShareAudioService *)self->_shareAudioService invalidate];
  shareAudioService = self->_shareAudioService;
  self->_shareAudioService = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  triggeredDevice = self->_triggeredDevice;
  self->_triggeredDevice = 0;

  triggeredNeedsSetupDevice = self->_triggeredNeedsSetupDevice;
  self->_triggeredNeedsSetupDevice = 0;

  self->_triggerediOS = 0;
}

- (void)_bleScannerNearbyInfoDeviceFound:(id)a3
{
  v5 = a3;
  if (!self->_triggeredDevice)
  {
    v8 = v5;
    if ([v5 paired])
    {
      sub_1001FEA2C();
    }

    else if (([v8 deviceFlags] & 0x800) != 0)
    {
      v6 = [v8 bleDevice];
      v7 = [v6 rssiEstimate];
      if (v7 < 0 && v7 >= self->_prefRSSIThreshold)
      {
        if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        objc_storeStrong(&self->_triggeredDevice, a3);
        self->_triggerediOS = 1;
        [(BTShareAudioSessionDaemon *)self _run];
      }

      else
      {
        sub_1001FE920(self);
      }
    }

    else
    {
      sub_1001FE9B4();
    }

    v5 = v8;
  }
}

- (void)_bleScannerProxPairingDeviceFound:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = v5;
  p_triggeredNeedsSetupDevice = &self->_triggeredNeedsSetupDevice;
  if (!self->_triggeredNeedsSetupDevice)
  {
    v8 = [v5 needsSetup];
    if ((v8 & 1) != 0 || !self->_triggeredDevice)
    {
      v9 = [v6 bleDevice];
      v10 = [v9 advertisementFields];

      if ((v8 & 1) == 0 && self->_prefRespectDeviceSupport && ([v6 deviceFlags] & 0x800) == 0)
      {
        sub_1001FEAA4();
        goto LABEL_46;
      }

      if ((CFDictionaryGetInt64Ranged() & 0x24) != 0)
      {
        sub_1001FEB1C();
        goto LABEL_46;
      }

      if (CFDictionaryGetInt64())
      {
        sub_1001FEB94();
        goto LABEL_46;
      }

      v11 = [v6 bleDevice];
      v12 = [v11 smoothedRSSI];
      v13 = v12;
      if ((v12 & 0x80000000) == 0)
      {
        sub_1001FEDD8();
        goto LABEL_45;
      }

      if (v8)
      {
        v14 = -60;
      }

      else
      {
        v14 = -45;
      }

      if (v14 > v12)
      {
        sub_1001FED48();
        goto LABEL_45;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      v16 = [v11 bluetoothAddress];
      v17 = v16;
      if (Int64Ranged && [v16 length] == 6)
      {
        v31 = v13;
        v32 = v8;
        v33 = v3;
        v34 = self;
        v36 = v10;
        v29 = [v17 bytes];
        v18 = NSPrintF();
        v35 = +[AVSystemController sharedAVSystemController];
        [v35 attributeForKey:AVSystemController_PickableRoutesAttribute];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = v40 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v38 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v37 + 1) + 8 * i);
              if (CFDictionaryGetInt64())
              {
                v25 = [v24 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteUID];
                if ([v25 rangeOfString:v18 options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (dword_1002F7880 <= 10 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001FEC0C();
                  }

                  v10 = v36;
                  goto LABEL_44;
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v10 = v36;
        v3 = v33;
        self = v34;
        v8 = v32;
        v13 = v31;
      }

      if ((v8 & 1) == 0 && ![v6 paired])
      {
        goto LABEL_34;
      }

      if (v17)
      {
        if ([v17 length] == 6)
        {
          v28 = [v17 bytes];
          v26 = NSPrintF();
          guestHeadphonesAddress = self->_guestHeadphonesAddress;
          self->_guestHeadphonesAddress = v26;

          if (v8)
          {
            if (!self->_triggeredDevice)
            {
              objc_storeStrong(&self->_triggeredDevice, v3);
            }

            goto LABEL_35;
          }

LABEL_34:
          p_triggeredNeedsSetupDevice = &self->_triggeredDevice;
LABEL_35:
          objc_storeStrong(p_triggeredNeedsSetupDevice, v3);
          if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(BTShareAudioSessionDaemon *)self _run:v13];
          }

          else
          {
            [(BTShareAudioSessionDaemon *)self _run:v28];
          }

          goto LABEL_44;
        }

        sub_1001FEC4C();
      }

      else
      {
        sub_1001FECCC();
      }

LABEL_44:

LABEL_45:
LABEL_46:
    }
  }
}

- (void)_pickableRoutesChanged:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8FEC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_pickableRoutesChanged
{
  if (self->_guestiOSWaitForRouteState == 1)
  {
    v3 = self->_guestHeadphonesAddress;
    if (v3)
    {
      v4 = +[AVSystemController sharedAVSystemController];
      [v4 attributeForKey:AVSystemController_PickableRoutesAttribute];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v15 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{AVSystemController_RouteDescriptionKey_RouteUID, v12}];
            if ([(NSString *)v10 rangeOfString:v3 options:1]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
              {
                sub_1001FEE74();
              }

              guestHeadphonesRouteUID = self->_guestHeadphonesRouteUID;
              self->_guestHeadphonesRouteUID = v10;

              self->_guestiOSWaitForRouteState = 4;
              [(BTShareAudioSessionDaemon *)self _run];
              goto LABEL_16;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

- (void)_reportError:(id)a3
{
  v4 = a3;
  if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FEEB4();
  }

  v8 = @"error";
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = objc_retainBlock(self->_progressHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 50, v5);
  }
}

- (void)userConfirmed:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E97EC;
  v4[3] = &unk_1002B67F0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)_runDefault
{
  if (!self->_invalidateCalled)
  {
    v3 = [(BTShareAudioSessionDaemon *)self _runInit];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(BTShareAudioSessionDaemon *)self _runScannerProxPairing];
      if (v5 == 4 || v5 == 2)
      {
        v7 = [(BTShareAudioSessionDaemon *)self _runScannerNearbyInfo];
        if (v7 == 4 || v7 == 2)
        {
          v9 = [(BTShareAudioSessionDaemon *)self _runAdvertiser];
          if (v9 == 4 || v9 == 2)
          {
            v11 = [(BTShareAudioSessionDaemon *)self _runWaitForProxTrigger];
            if (v11 == 4 || v11 == 2)
            {
              v13 = [(BTShareAudioSessionDaemon *)self _runConfirm];
              if (v13 == 4 || v13 == 2)
              {
                if (self->_triggerediOS)
                {
                  v15 = [(BTShareAudioSessionDaemon *)self _runGuestiOSConnect];
                  if (v15 != 4 && v15 != 2)
                  {
                    return;
                  }

                  v17 = [(BTShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
                  if (v17 != 4 && v17 != 2)
                  {
                    return;
                  }

                  v19 = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
                  if (v19 != 2 && v19 != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  v21 = [(BTShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (v21 != 4 && v21 != 2)
                  {
                    return;
                  }

                  v23 = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (v23 != 4 && v23 != 2)
                  {
                    return;
                  }
                }

                v25 = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (v25 == 4 || v25 == 2)
                {
                  v27 = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (v27 == 4 || v27 == 2)
                  {

                    [(BTShareAudioSessionDaemon *)self _runFinish];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runStory6iOS
{
  if (!self->_invalidateCalled)
  {
    v3 = [(BTShareAudioSessionDaemon *)self _runInit];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(BTShareAudioSessionDaemon *)self _runGuestiOSConnect];
      if (v5 == 4 || v5 == 2)
      {
        v7 = [(BTShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
        if (v7 == 4 || v7 == 2)
        {
          v9 = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
          if (v9 == 4 || v9 == 2)
          {
            v11 = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
            if (v11 == 4 || v11 == 2)
            {
              v13 = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioConnect];
              if (v13 == 4 || v13 == 2)
              {

                [(BTShareAudioSessionDaemon *)self _runFinish];
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runStory6TV
{
  if (!self->_invalidateCalled)
  {
    v3 = [(BTShareAudioSessionDaemon *)self _runInit];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(BTShareAudioSessionDaemon *)self _runScannerProxPairing];
      if (v5 == 4 || v5 == 2)
      {
        v7 = [(BTShareAudioSessionDaemon *)self _runShareAudioServiceStart];
        if (v7 == 4 || v7 == 2)
        {
          v9 = [(BTShareAudioSessionDaemon *)self _runAdvertiser];
          if (v9 == 4 || v9 == 2)
          {
            v11 = [(BTShareAudioSessionDaemon *)self _runWaitForConfigRequestOrProxTrigger];
            if (v11 == 4 || v11 == 2)
            {
              v13 = [(BTShareAudioSessionDaemon *)self _runConfirm];
              if (v13 == 4 || v13 == 2)
              {
                if (self->_configRequestReceived)
                {
                  v15 = [(BTShareAudioSessionDaemon *)self _runWaitForConnectRequest];
                  if (v15 != 2 && v15 != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  v17 = [(BTShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (v17 != 4 && v17 != 2)
                  {
                    return;
                  }

                  v19 = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (v19 != 4 && v19 != 2)
                  {
                    return;
                  }
                }

                v21 = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (v21 == 4 || v21 == 2)
                {
                  v23 = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (v23 == 4 || v23 == 2)
                  {

                    [(BTShareAudioSessionDaemon *)self _runFinish];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end