@interface SFBluetoothPairingSession
- (SFBluetoothPairingSession)init;
- (int)_btEnsureStarted;
- (uint64_t)_activate;
- (uint64_t)_btDeletePairingAndRetry;
- (uint64_t)_btEnsureStarted;
- (void)_activate;
- (void)_btDeletePairingAndRetry;
- (void)_btEnsureStopped;
- (void)_invalidate;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFBluetoothPairingSession

- (SFBluetoothPairingSession)init
{
  v7.receiver = self;
  v7.super_class = SFBluetoothPairingSession;
  v2 = [(SFBluetoothPairingSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_ucat = &gLogCategory_SFBluetoothPairingSession;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [SFBLEScanner dealloc];
    goto LABEL_6;
  }

  if (self->_btSessionAttaching)
  {
LABEL_6:
    [SFBluetoothPairingSession dealloc];
    goto LABEL_7;
  }

  if (!self->_completionHandler)
  {
    v4.receiver = self;
    v4.super_class = SFBluetoothPairingSession;
    [(SFBluetoothPairingSession *)&v4 dealloc];
    return;
  }

LABEL_7:
  v2 = [SFBluetoothPairingSession dealloc];
  [(SFBluetoothPairingSession *)v2 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFBluetoothPairingSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  p_ucat = &self->_ucat;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v19 = *p_ucat;
    }

    v5 = "no";
    if (self->_guestMode)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    if (self->_disconnectOnly)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (self->_userNotInContacts)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (self->_temporaryManagedPairingMode)
    {
      v5 = "yes";
    }

    v25 = v8;
    v26 = v5;
    v23 = v6;
    v24 = v7;
    deviceAddress = self->_deviceAddress;
    guestAddress = self->_guestAddress;
    LogPrintF();
  }

LABEL_16:
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_transaction)
  {
    var4 = self->_ucat->var4;
    v10 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v10;

    if (!self->_transaction)
    {
      v12 = **p_ucat;
      if (v12 <= 60)
      {
        if (v12 != -1)
        {
LABEL_20:
          LogPrintF();
          goto LABEL_22;
        }

        if (_LogCategory_Initialize())
        {
          v20 = *p_ucat;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  if (self->_timeoutTimer)
  {
    goto LABEL_25;
  }

  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v13;

  v15 = self->_timeoutTimer;
  if (v15)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SFBluetoothPairingSession__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    SFDispatchTimerSet(self->_timeoutTimer, 15.0, -1.0, -10.0);
    dispatch_resume(self->_timeoutTimer);
LABEL_25:
    v16 = [objc_alloc(getWPClientClass()) initWithQueue:self->_dispatchQueue machName:0];
    wpClient = self->_wpClient;
    self->_wpClient = v16;

    [(WPClient *)self->_wpClient disableScanning];
    _btEnsureStarted = [(SFBluetoothPairingSession *)self _btEnsureStarted];
    if (!_btEnsureStarted)
    {
      return;
    }

    goto LABEL_26;
  }

  [(SFBluetoothPairingSession *)p_ucat _activate];
  _btEnsureStarted = v28;
LABEL_26:
  [(SFBluetoothPairingSession *)self _completed:_btEnsureStarted, deviceAddress, guestAddress, v23, v24, v25, v26];
}

uint64_t __38__SFBluetoothPairingSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[17];
  if (v3 <= 60)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v6 = v2[17];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v2 _completed:4294960574];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFBluetoothPairingSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
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
  self->_invalidateCalled = 1;

  [(SFBluetoothPairingSession *)self _completed:4294960573];
}

- (int)_btEnsureStarted
{
  v142 = *MEMORY[0x1E69E9840];
  self->_btStarted = 1;
  if (self->_btSessionAttaching || self->_btSession)
  {
    goto LABEL_3;
  }

  *&v127[0] = 0;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_41;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_41:
  *&v127[0] = _btSessionEventHandler_0;
  selfCopy = self;

  v21 = softLinkBTSessionAttachWithQueue_0(self->_ucat->var4, v127, selfCopy, selfCopy->_dispatchQueue);
  if (v21)
  {
    v22 = v21;
    CFRelease(selfCopy);
    Default = (v22 + 310000);
    v24 = self->_ucat->var0;
    if (v24 > 60)
    {
      goto LABEL_201;
    }

    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_201;
      }

      v26 = self->_ucat;
    }

    v115 = (v22 + 310000);
    goto LABEL_45;
  }

  self->_btSessionAttaching = 1;
LABEL_3:
  if (self->_btSessionAddedServiceCallback || !self->_btSession)
  {
    goto LABEL_14;
  }

  v3 = self->_ucat->var0;
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v82 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  v5 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
  if (v5)
  {
    Default = (v5 + 310000);
    v78 = self->_ucat->var0;
    if (v78 > 60)
    {
      goto LABEL_201;
    }

    if (v78 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_201;
      }

      v83 = self->_ucat;
    }

    v115 = Default;
    LogPrintF();
    goto LABEL_201;
  }

  self->_btSessionAddedServiceCallback = 1;
LABEL_14:
  p_btDevice = &self->_btDevice;
  if (self->_btDevice || !self->_btSession)
  {
    goto LABEL_15;
  }

  p_ucat = &self->_ucat;
  v10 = self->_ucat->var0;
  if (v10 <= 30)
  {
    if (v10 != -1)
    {
LABEL_26:
      LogPrintF();
      goto LABEL_28;
    }

    if (_LogCategory_Initialize())
    {
      v84 = *p_ucat;
      goto LABEL_26;
    }
  }

LABEL_28:
  deviceAddress = self->_deviceAddress;
  if (!deviceAddress)
  {
    [(SFBluetoothPairingSession *)&self->_ucat _btEnsureStarted];
    Default = LODWORD(v127[0]);
    goto LABEL_202;
  }

  v126 = 0;
  v125 = 0;
  uTF8String = [(NSString *)deviceAddress UTF8String];
  v13 = softLinkBTDeviceAddressFromString_0(uTF8String, &v125);
  if (v13)
  {
    Default = (v13 + 310000);
    v79 = (*p_ucat)->var0;
    if (v79 > 60)
    {
      goto LABEL_201;
    }

    if (v79 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_201;
      }

      v85 = *p_ucat;
    }

    v115 = self->_deviceAddress;
    goto LABEL_45;
  }

  v14 = softLinkBTDeviceFromAddress(self->_btSession, &v125, &self->_btDevice);
  if (v14)
  {
    Default = (v14 + 310000);
    v80 = (*p_ucat)->var0;
    if (v80 > 60)
    {
      goto LABEL_201;
    }

    if (v80 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_201;
      }

      v86 = *p_ucat;
    }

    v115 = self->_deviceAddress;
    v117 = Default;
    goto LABEL_45;
  }

  AddressString_0 = softLinkBTDeviceGetAddressString_0(self->_btDevice, self->_btAddrStr, 32);
  if (AddressString_0)
  {
    Default = (AddressString_0 + 310000);
    v81 = (*p_ucat)->var0;
    if (v81 > 60)
    {
      goto LABEL_201;
    }

    if (v81 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_201;
      }

      v114 = *p_ucat;
    }

    v115 = self->_deviceAddress;
    v117 = Default;
    goto LABEL_220;
  }

  guestAddress = self->_guestAddress;
  if (!guestAddress)
  {
    v124 = 0;
    PairingStatus_0 = softLinkBTDeviceGetPairingStatus_0(*p_btDevice, &v124);
    v19 = *p_ucat;
    if (PairingStatus_0)
    {
      if (*v19 > 60)
      {
        goto LABEL_59;
      }

      if (*v19 != -1 || (v27 = _LogCategory_Initialize(), v19 = *p_ucat, v27))
      {
        v115 = (PairingStatus_0 + 310000);
        LogPrintF();
        v19 = *p_ucat;
      }
    }

    if (*v19 <= 30)
    {
      if (*v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_59;
        }

        v96 = *p_ucat;
      }

      v28 = self->_deviceAddress;
      if (v124)
      {
        v29 = "already paired";
      }

      else
      {
        v29 = "not paired";
      }

      v115 = self->_deviceAddress;
      v117 = v29;
      LogPrintF();
    }

LABEL_59:
    if (!v124 || !self->_connectOnly)
    {
      goto LABEL_15;
    }

    v30 = (*p_ucat)->var0;
    if (v30 <= 30)
    {
      if (v30 != -1)
      {
LABEL_63:
        LogPrintF();
        goto LABEL_65;
      }

      if (_LogCategory_Initialize())
      {
        v101 = *p_ucat;
        goto LABEL_63;
      }
    }

LABEL_65:
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v132 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    memset(v127, 0, sizeof(v127));
    softLinkBTDeviceGetName_0(*p_btDevice, v127, 248);
    if (LOBYTE(v127[0]))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v127];
      name = self->_name;
      self->_name = v31;
    }

    v123 = 0;
    v122 = 0;
    softLinkBTDeviceGetDeviceId(self->_btDevice, &v123, &v122 + 4, &v122, &self->_deviceVersion);
    v121 = 0;
    Default = softLinkBTAccessoryManagerGetDefault(self->_btSession, &v121);
    if (Default)
    {
      v33 = (*p_ucat)->var0;
      if (v33 <= 60)
      {
        if (v33 != -1)
        {
LABEL_70:
          v115 = (Default + 310000);
          LogPrintF();
          goto LABEL_172;
        }

        if (_LogCategory_Initialize())
        {
          v109 = *p_ucat;
          goto LABEL_70;
        }
      }
    }

LABEL_172:
    if (!v121)
    {
      goto LABEL_200;
    }

    v120 = 0;
    FeatureCapability = softLinkBTAccessoryManagerGetFeatureCapability(v121, *p_btDevice, 1, &v120);
    if (!FeatureCapability)
    {
      v71 = v120 != 0;
      goto LABEL_183;
    }

    v69 = FeatureCapability;
    v70 = (*p_ucat)->var0;
    if (v70 <= 60)
    {
      if (v70 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_182;
        }

        v112 = *p_ucat;
      }

      v115 = (v69 + 310000);
      LogPrintF();
    }

LABEL_182:
    v71 = 0;
    v120 = 0;
LABEL_183:
    self->_inEarDetection = v71;
    v119 = 0;
    Default = softLinkBTAccessoryManagerGetFeatureCapability(v121, self->_btDevice, 26, &v119);
    if (!Default)
    {
      softwareVolume = v119 != 0;
      goto LABEL_190;
    }

    v72 = (*p_ucat)->var0;
    if (v72 <= 60)
    {
      if (v72 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_189;
        }

        v113 = *p_ucat;
      }

      v115 = (Default + 310000);
      LogPrintF();
    }

LABEL_189:
    softwareVolume = 0;
    v119 = 0;
LABEL_190:
    self->_softwareVolume = softwareVolume;
    v74 = self->_ucat->var0;
    if (v74 <= 30)
    {
      if (v74 != -1)
      {
LABEL_192:
        if (self->_inEarDetection)
        {
          v75 = "yes";
        }

        else
        {
          v75 = "no";
        }

        if (softwareVolume)
        {
          v76 = "yes";
        }

        else
        {
          v76 = "no";
        }

        v116 = v75;
        v118 = v76;
        LogPrintF();
        [(SFBluetoothPairingSession *)self _completed:0, v116, v118];
        goto LABEL_201;
      }

      if (_LogCategory_Initialize())
      {
        v110 = self->_ucat;
        softwareVolume = self->_softwareVolume;
        goto LABEL_192;
      }
    }

LABEL_200:
    [(SFBluetoothPairingSession *)self _completed:0, v115, v117];
    goto LABEL_201;
  }

  v17 = (*p_ucat)->var0;
  if (v17 <= 30)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v25 = self->_ucat;
      guestAddress = self->_guestAddress;
    }

    v115 = self->_deviceAddress;
    v117 = guestAddress;
    LogPrintF();
  }

LABEL_15:
  if (!self->_connectOnly && !self->_disconnectOnly && !self->_guestAddress && !self->_btPairingAgent && self->_btSession)
  {
    v7 = 0uLL;
    v128 = 0u;
    memset(v127, 0, sizeof(v127));
    v8 = self->_ucat->var0;
    if (v8 > 30)
    {
      goto LABEL_72;
    }

    if (v8 == -1)
    {
      v34 = _LogCategory_Initialize();
      v7 = 0uLL;
      if (!v34)
      {
LABEL_72:
        v128 = 0uLL;
        *(v127 + 8) = v7;
        *&v127[0] = _btPairingAgentStatusHandler;
        *(&v127[1] + 1) = _btPairingAgentUserConfirmationHandler;
        v35 = softLinkBTPairingAgentCreate(self->_btSession, v127, self, &self->_btPairingAgent);
        if (v35)
        {
          Default = (v35 + 310000);
          v91 = self->_ucat->var0;
          if (v91 > 60)
          {
            goto LABEL_201;
          }

          if (v91 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_201;
            }

            v104 = self->_ucat;
          }

          v115 = Default;
          goto LABEL_45;
        }

        v36 = self->_ucat->var0;
        if (v36 > 30)
        {
          goto LABEL_77;
        }

        if (v36 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_77;
          }

          v105 = self->_ucat;
        }

        LogPrintF();
LABEL_77:
        v37 = softLinkBTPairingAgentStart(self->_btPairingAgent);
        if (!v37)
        {
          goto LABEL_78;
        }

        Default = (v37 + 310000);
        v92 = self->_ucat->var0;
        if (v92 > 60)
        {
          goto LABEL_201;
        }

        if (v92 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_201;
          }

          v106 = self->_ucat;
        }

        v115 = Default;
LABEL_220:
        LogPrintF();
        goto LABEL_201;
      }

      v103 = self->_ucat;
    }

    LogPrintF();
    v7 = 0uLL;
    goto LABEL_72;
  }

LABEL_78:
  btDevice = self->_btDevice;
  if (self->_unpairOnly)
  {
    if (!btDevice || self->_btDisconnected)
    {
      goto LABEL_169;
    }

    v39 = self->_ucat->var0;
    if (v39 > 30)
    {
      goto LABEL_131;
    }

    if (v39 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_131:
        v48 = softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice);
        if (!v48)
        {
          goto LABEL_167;
        }

        v49 = v48;
        v50 = self->_ucat->var0;
        if (v50 > 60)
        {
          goto LABEL_167;
        }

        if (v50 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_167;
          }

          v51 = self->_ucat;
        }

        v115 = v49;
        v117 = (v49 + 310000);
LABEL_135:
        LogPrintF();
LABEL_167:
        self->_btDisconnected = 1;
        goto LABEL_168;
      }

      v90 = self->_ucat;
    }

    LogPrintF();
    goto LABEL_131;
  }

  if (btDevice)
  {
    if (!self->_btConfigured && self->_guestAddress || !self->_btConnecting && (self->_btPairingAgentStarted || self->_connectOnly))
    {
      if (self->_guestAddress)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConfigureLinkKey"))
        {
          v41 = self->_ucat->var0;
          if (v41 <= 30)
          {
            if (v41 == -1)
            {
              v54 = self->_ucat;
              if (!_LogCategory_Initialize())
              {
                goto LABEL_144;
              }

              v97 = self->_ucat;
            }

            v42 = self->_guestAddress;
            v43 = [(NSData *)self->_guestKey length:v115];
            v115 = v42;
            v117 = v43;
            LogPrintF();
          }

LABEL_144:
          v127[0] = 0uLL;
          if ([(NSData *)self->_guestKey length:v115]== 16)
          {
            v127[0] = *[(NSData *)self->_guestKey bytes];
            v55 = 0xFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }

          WORD2(v121) = 0;
          LODWORD(v121) = 0;
          uTF8String2 = [(NSString *)self->_guestAddress UTF8String];
          v57 = softLinkBTDeviceAddressFromString_0(uTF8String2, &v121);
          if (!v57)
          {
            v58 = softLinkBTDeviceConfigureLinkKey(*p_btDevice, &v121, v127, v55);
            if (!v58)
            {
              self->_btConfigured = 1;
LABEL_168:
              [(SFBluetoothPairingSession *)self _completed:0, v115, v117];
              goto LABEL_169;
            }

            Default = (v58 + 310000);
            v88 = self->_ucat->var0;
            if (v88 > 60)
            {
              goto LABEL_201;
            }

            if (v88 != -1)
            {
              goto LABEL_236;
            }

            if (_LogCategory_Initialize())
            {
              v99 = self->_ucat;
LABEL_236:
              v115 = Default;
              goto LABEL_45;
            }

LABEL_201:
            if (!Default)
            {
              goto LABEL_170;
            }

LABEL_202:
            v77 = self->_ucat->var0;
            if (v77 <= 60)
            {
              if (v77 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_206;
                }

                v93 = self->_ucat;
              }

              v115 = Default;
              LogPrintF();
            }

LABEL_206:
            [(SFBluetoothPairingSession *)self _completed:Default, v115, v117];
            goto LABEL_170;
          }

          Default = (v57 + 310000);
          v87 = self->_ucat->var0;
          if (v87 > 60)
          {
            goto LABEL_201;
          }

          if (v87 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_201;
            }

            v98 = self->_ucat;
          }

          v115 = self->_guestAddress;
LABEL_45:
          LogPrintF();
          goto LABEL_201;
        }
      }

      if (self->_guestMode)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v44 = self->_ucat->var0;
          if (v44 > 30)
          {
            goto LABEL_156;
          }

          if (v44 == -1)
          {
            v62 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
LABEL_156:
              v127[0] = 0uLL;
              if ([(NSData *)self->_guestKey length]== 16)
              {
                v127[0] = *[(NSData *)self->_guestKey bytes];
                if (self->_userNotInContacts)
                {
                  v63 = 4;
                }

                else
                {
                  v63 = 2;
                }
              }

              else
              {
                v63 = 1;
              }

              v64 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, v63, v127);
              if (v64)
              {
                [(SFBluetoothPairingSession *)v64 _btEnsureStarted:v127];
LABEL_247:
                Default = v121;
                goto LABEL_201;
              }

LABEL_180:
              LODWORD(Default) = 0;
              self->_btConnecting = 1;
              goto LABEL_170;
            }

            v102 = self->_ucat;
          }

          v115 = [(NSData *)self->_guestKey length:v115];
          LogPrintF();
          goto LABEL_156;
        }
      }

      if (self->_temporaryManagedPairingMode)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v45 = self->_ucat->var0;
          if (v45 > 30)
          {
            goto LABEL_164;
          }

          if (v45 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_164:
              v127[0] = 0uLL;
              v65 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 128, v127);
              if (!v65)
              {
                goto LABEL_180;
              }

LABEL_246:
              [(SFBluetoothPairingSession *)v65 _btEnsureStarted:v127];
              goto LABEL_247;
            }

            v107 = self->_ucat;
          }

          LogPrintF();
          goto LABEL_164;
        }
      }

      if (self->_aggregate)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v46 = self->_ucat->var0;
          if (v46 > 30)
          {
            goto LABEL_179;
          }

          if (v46 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_179:
              v127[0] = 0uLL;
              v65 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 0, v127);
              if (!v65)
              {
                goto LABEL_180;
              }

              goto LABEL_246;
            }

            v111 = self->_ucat;
          }

          LogPrintF();
          goto LABEL_179;
        }
      }

      v47 = self->_ucat->var0;
      if (v47 <= 30)
      {
        if (v47 != -1)
        {
LABEL_129:
          LogPrintF();
          goto LABEL_139;
        }

        if (_LogCategory_Initialize())
        {
          v94 = self->_ucat;
          goto LABEL_129;
        }
      }

LABEL_139:
      v52 = softLinkBTDeviceConnectServices(*p_btDevice, 4294959103);
      if (v52)
      {
        Default = (v52 + 310000);
        v53 = self->_ucat->var0;
        if (v53 > 60)
        {
          goto LABEL_201;
        }

        if (v53 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_201;
          }

          v95 = self->_ucat;
        }

        v115 = Default;
        goto LABEL_45;
      }

      goto LABEL_180;
    }

    if (self->_btDisconnected || !self->_disconnectOnly)
    {
      goto LABEL_169;
    }

    v40 = self->_ucat->var0;
    if (v40 <= 30)
    {
      if (v40 != -1)
      {
LABEL_92:
        LogPrintF();
        goto LABEL_151;
      }

      if (_LogCategory_Initialize())
      {
        v100 = self->_ucat;
        goto LABEL_92;
      }
    }

LABEL_151:
    v59 = softLinkBTDeviceDisconnect(*p_btDevice);
    if (!v59)
    {
      goto LABEL_167;
    }

    v60 = v59;
    v61 = self->_ucat->var0;
    if (v61 > 60)
    {
      goto LABEL_167;
    }

    if (v61 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_167;
      }

      v108 = self->_ucat;
    }

    v115 = v60;
    v117 = (v60 + 310000);
    goto LABEL_135;
  }

LABEL_169:
  LODWORD(Default) = 0;
LABEL_170:
  v66 = *MEMORY[0x1E69E9840];
  return Default;
}

- (void)_btEnsureStopped
{
  if (self->_btConnecting)
  {
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
    softLinkBTPairingAgentCancelPairing(self->_btPairingAgent);
    self->_btConnecting = 0;
  }

  if (!self->_btPairingAgentStarted)
  {
    goto LABEL_13;
  }

  v4 = self->_ucat->var0;
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v11 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  softLinkBTPairingAgentStop(self->_btPairingAgent);
  self->_btPairingAgentStarted = 0;
LABEL_13:
  if (!self->_btPairingAgent)
  {
    goto LABEL_19;
  }

  v5 = self->_ucat->var0;
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v8 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_18:
  softLinkBTPairingAgentDestroy(&self->_btPairingAgent);
  self->_btPairingAgent = 0;
LABEL_19:
  if (!self->_btSessionAddedServiceCallback)
  {
    goto LABEL_27;
  }

  if (self->_btSession)
  {
    v6 = self->_ucat->var0;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v12 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_25:
    softLinkBTServiceRemoveCallbacks(self->_btSession, _btServiceEventHandler);
  }

  self->_btSessionAddedServiceCallback = 0;
LABEL_27:
  if (self->_btSession)
  {
    v7 = self->_ucat->var0;
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v9 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_32:
    softLinkBTSessionDetachWithQueue_0(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btDevice = 0;
  self->_btStarted = 0;
}

- (void)_btDeletePairingAndRetry
{
  retryCount = self->_retryCount;
  if (retryCount < 3)
  {
    v5 = retryCount + 1;
    p_ucat = &self->_ucat;
    ucat = self->_ucat;
    self->_retryCount = v5;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v23 = self->_ucat;
        v5 = self->_retryCount;
      }

      v28 = v5;
      LogPrintF();
    }

LABEL_11:
    v10 = softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice);
    if (v10)
    {
      v11 = v10;
      var0 = (*p_ucat)->var0;
      if (var0 <= 60)
      {
        if (var0 != -1)
        {
LABEL_14:
          v28 = (v11 + 310000);
          LogPrintF();
          goto LABEL_16;
        }

        if (_LogCategory_Initialize())
        {
          v25 = *p_ucat;
          goto LABEL_14;
        }
      }
    }

LABEL_16:
    if (!self->_timeoutTimer)
    {
      goto LABEL_22;
    }

    v13 = (*p_ucat)->var0;
    if (v13 <= 50)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v26 = *p_ucat;
      }

      v28 = 15;
      LogPrintF();
    }

LABEL_21:
    SFDispatchTimerSet(self->_timeoutTimer, 15.0, -1.0, -10.0);
LABEL_22:
    v14 = self->_ucat->var0;
    if (!self->_btSession)
    {
      if (v14 > 90)
      {
        goto LABEL_31;
      }

      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_31:
          v15 = (*p_ucat)->var0;
          if (v15 <= 30)
          {
            if (v15 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_35;
              }

              v24 = *p_ucat;
            }

            LogPrintF();
          }

LABEL_35:
          retryTimer = self->_retryTimer;
          if (retryTimer)
          {
            v17 = retryTimer;
            dispatch_source_cancel(v17);
            v18 = self->_retryTimer;
            self->_retryTimer = 0;
          }

          v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
          v20 = self->_retryTimer;
          self->_retryTimer = v19;

          v21 = self->_retryTimer;
          if (v21)
          {
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __53__SFBluetoothPairingSession__btDeletePairingAndRetry__block_invoke;
            handler[3] = &unk_1E788B198;
            handler[4] = self;
            dispatch_source_set_event_handler(v21, handler);
            SFDispatchTimerSet(self->_retryTimer, 2.0, -1.0, -10.0);
            dispatch_resume(self->_retryTimer);
          }

          else
          {
            [(SFBluetoothPairingSession *)&self->_ucat _btDeletePairingAndRetry];
          }

          return;
        }

        v22 = *p_ucat;
      }

      LogPrintF();
      goto LABEL_31;
    }

    if (v14 <= 50)
    {
      if (v14 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v27 = *p_ucat;
      }

      LogPrintF();
    }

LABEL_30:
    [(SFBluetoothPairingSession *)self _btEnsureStopped];
    goto LABEL_31;
  }

  v4 = self->_ucat->var0;
  if (v4 <= 60)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v8 = self->_ucat;
      v9 = self->_retryCount;
      goto LABEL_4;
    }
  }
}

uint64_t __53__SFBluetoothPairingSession__btDeletePairingAndRetry__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = **(v6 + 136);
  if (*(v6 + 80))
  {
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v8 = _LogCategory_Initialize();
        v6 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_11;
        }

        v13 = *(v6 + 136);
      }

      LogPrintF();
      v6 = *(a1 + 32);
    }

LABEL_11:
    *(v6 + 96) = 1;
    v9 = *(a1 + 32);

    return [v9 _btEnsureStopped];
  }

  if (v7 <= 30)
  {
    if (v7 == -1)
    {
      v11 = _LogCategory_Initialize();
      v6 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_15;
      }

      v14 = *(v6 + 136);
    }

    LogPrintF();
    v6 = *(a1 + 32);
  }

LABEL_15:
  *(v6 + 96) = 0;
  v12 = *(a1 + 32);

  return [v12 _btEnsureStarted];
}

- (uint64_t)_activate
{
  result = OUTLINED_FUNCTION_1_13(self);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v9 = *self;
    }

    result = LogPrintF();
  }

LABEL_6:
  *a2 = -6729;
  return result;
}

- (uint64_t)_btEnsureStarted
{
  result = OUTLINED_FUNCTION_0_14(self, a2, a3, a4);
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v5;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v11 = *v10;
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_btDeletePairingAndRetry
{
  result = OUTLINED_FUNCTION_1_13(self);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *self;
    }

    return LogPrintF();
  }

  return result;
}

@end