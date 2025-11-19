@interface SFShareAudioService
- (SFShareAudioService)init;
- (void)_handleSessionEnded:(id)a3 error:(id)a4;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleShareAudioFoundDevice:(id)a3;
- (void)_handleShareAudioPairingCompleted:(id)a3 error:(id)a4;
- (void)_handleShareAudioRequest2:(id)a3 contact:(id)a4 responseHandler:(id)a5;
- (void)_handleShareAudioRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleShareAudioResponse:(int)a3 error:(id)a4;
- (void)_handleShareAudioSearchTimeout;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
@end

@implementation SFShareAudioService

- (SFShareAudioService)init
{
  v8.receiver = self;
  v8.super_class = SFShareAudioService;
  v2 = [(SFShareAudioService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFShareAudioService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __31__SFShareAudioService_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    __31__SFShareAudioService_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFShareAudioService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__SFShareAudioService_invalidate__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 24) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __33__SFShareAudioService_invalidate__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 24) = 1;
    v3 = *(v2 + 32);

    return [v3 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFShareAudioService *)self _handleSessionEnded:self->_sfSession error:0];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioService _invalidate];
    }
  }
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _sfServiceStart];
  }

  [(SFService *)self->_sfService invalidate];
  v3 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v3;
  v5 = v3;

  [(SFService *)v5 setDispatchQueue:self->_dispatchQueue];
  [(SFService *)v5 setFixedPIN:@"public"];
  [(SFService *)v5 setIdentifier:@"com.apple.sharing.ShareAudio"];
  [(SFService *)v5 setLabel:@"ShareAudio"];
  [(SFService *)v5 setSessionFlags:2305];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFShareAudioService__sfServiceStart__block_invoke;
  v8[3] = &unk_1E78910A8;
  v8[4] = v5;
  v8[5] = self;
  [(SFService *)v5 setSessionStartedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SFShareAudioService__sfServiceStart__block_invoke_2;
  v7[3] = &unk_1E78910D0;
  v7[4] = v5;
  v7[5] = self;
  [(SFService *)v5 setSessionEndedHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SFShareAudioService__sfServiceStart__block_invoke_3;
  v6[3] = &unk_1E788B520;
  v6[4] = v5;
  v6[5] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

void *__38__SFShareAudioService__sfServiceStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[7])
  {
    return [result _handleSessionStarted:a2];
  }

  return result;
}

void *__38__SFShareAudioService__sfServiceStart__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[7])
  {
    return [result _handleSessionEnded:a2 error:a3];
  }

  return result;
}

void __38__SFShareAudioService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 56))
  {
    if (v3)
    {
      v8 = v3;
      if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        __38__SFShareAudioService__sfServiceStart__block_invoke_3_cold_1();
      }

      [*(*(a1 + 40) + 56) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 56);
      *(v5 + 56) = 0;

      goto LABEL_7;
    }

    if (gLogCategory_SFShareAudioService <= 30)
    {
      v8 = 0;
      if (gLogCategory_SFShareAudioService != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        __38__SFShareAudioService__sfServiceStart__block_invoke_3_cold_2();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFShareAudioService _handleSessionStarted:sfSession, v5];
  }

  else
  {
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioService _handleSessionStarted:v5];
    }

    [v5 setStatusMonitor:self->_statusMonitor];
    objc_storeStrong(&self->_sfSession, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__SFShareAudioService__handleSessionStarted___block_invoke;
    v7[3] = &unk_1E788B4F8;
    v7[4] = self;
    [v5 registerRequestID:@"_shAu" options:&unk_1F1D7D768 handler:v7];
  }
}

- (void)_handleSessionEnded:(id)a3 error:(id)a4
{
  v21 = a3;
  v6 = a4;
  sfSession = self->_sfSession;
  if (sfSession == v21)
  {
    if (v21)
    {
      if (gLogCategory_SFShareAudioService <= 30)
      {
        if (gLogCategory_SFShareAudioService != -1 || (v8 = _LogCategory_Initialize(), sfSession = self->_sfSession, v8))
        {
          v19 = [(SFSession *)sfSession peer];
          v20 = v6;
          LogPrintF();

          sfSession = self->_sfSession;
        }
      }
    }

    self->_sfSession = 0;

    [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
    pairingSession = self->_pairingSession;
    self->_pairingSession = 0;

    [(SFProxCardSessionClient *)self->_proxCardSessionClient invalidate];
    proxCardSessionClient = self->_proxCardSessionClient;
    self->_proxCardSessionClient = 0;

    searchTimer = self->_searchTimer;
    if (searchTimer)
    {
      v12 = searchTimer;
      dispatch_source_cancel(v12);
      v13 = self->_searchTimer;
      self->_searchTimer = 0;
    }

    [(CUBluetoothClient *)self->_searchBTClient invalidate:v19];
    searchBTClient = self->_searchBTClient;
    self->_searchBTClient = 0;

    v15 = _Block_copy(self->_responseHandler);
    if (v15)
    {
      v16 = *MEMORY[0x1E696A768];
      v17 = NSErrorF();
      if (gLogCategory_SFShareAudioService < 91 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioService _handleSessionEnded:error:];
      }

      (*(v15 + 2))(v15, v17, 0, 0);
      responseHandler = self->_responseHandler;
      self->_responseHandler = 0;
    }
  }
}

- (void)_handleShareAudioRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioRequest:responseHandler:];
  }

  sfSession = self->_sfSession;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E78910F8;
  v13[4] = sfSession;
  v13[5] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  v12 = sfSession;
  [(SFSession *)v12 appleIDVerifyProof:v11 dispatchQueue:dispatchQueue completion:v13];
}

void __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 64))
  {
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke_cold_1(v6);
    }

    [*(a1 + 40) _handleShareAudioRequest2:*(a1 + 48) contact:v6 responseHandler:*(a1 + 56)];
  }
}

- (void)_handleShareAudioRequest2:(id)a3 contact:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__18;
  v38 = __Block_byref_object_dispose__18;
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7891120;
  v33 = &v34;
  v11 = v10;
  v32 = v11;
  v12 = _Block_copy(aBlock);
  if (self->_responseHandler)
  {
    v22 = *MEMORY[0x1E696A768];
    v23 = NSErrorF();
    v24 = v35[5];
    v35[5] = v23;
  }

  else
  {
    v30 = 0;
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    if (v13)
    {
      objc_storeStrong(&self->_guestDeviceAddress, v13);
      v14 = _Block_copy(v11);
      responseHandler = self->_responseHandler;
      self->_responseHandler = v14;

      if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [(SFProxCardSessionClient *)self->_proxCardSessionClient invalidate];
      v16 = objc_alloc_init(SFProxCardSessionClient);
      objc_storeStrong(&self->_proxCardSessionClient, v16);
      [(SFProxCardSessionClient *)v16 setDelegate:self];
      [(SFProxCardSessionClient *)v16 setDispatchQueue:self->_dispatchQueue];
      [(SFProxCardSessionClient *)v16 setViewControllerClassName:@"ShareAudioAcceptMainController"];
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFStringGetTypeID();
      [v17 setObject:CFDictionaryGetTypedValue() forKeyedSubscript:@"deviceName"];
      v18 = v9;
      if (v18)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x2050000000;
        v19 = getCNContactFormatterClass_softClass;
        v44 = getCNContactFormatterClass_softClass;
        if (!getCNContactFormatterClass_softClass)
        {
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __getCNContactFormatterClass_block_invoke;
          v40[3] = &unk_1E788A938;
          v40[4] = &v41;
          __getCNContactFormatterClass_block_invoke(v40);
          v19 = v42[3];
        }

        v20 = v19;
        _Block_object_dispose(&v41, 8);
        v21 = [v19 stringFromContact:v18 style:0];
        [v17 setObject:v21 forKeyedSubscript:@"username"];
      }

      [(SFProxCardSessionClient *)v16 setUserInfo:v17];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2;
      v29[3] = &unk_1E788B520;
      v29[4] = v16;
      v29[5] = self;
      [(SFProxCardSessionClient *)v16 setErrorHandler:v29];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3;
      v28[3] = &unk_1E788A658;
      v28[4] = v16;
      v28[5] = self;
      [(SFProxCardSessionClient *)v16 setInvalidationHandler:v28];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4;
      v27[3] = &unk_1E788B520;
      v27[4] = v16;
      v27[5] = self;
      [(SFProxCardSessionClient *)v16 activateWithCompletion:v27];
    }

    else
    {
      v25 = *MEMORY[0x1E696A768];
      v26 = NSErrorF();
      v16 = v35[5];
      v35[5] = v26;
    }
  }

  v12[2](v12);

  _Block_object_dispose(&v34, 8);
}

uint64_t __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_SFShareAudioService <= 90)
  {
    if (gLogCategory_SFShareAudioService == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v8 = v3;
    if (gLogCategory_SFShareAudioService <= 90)
    {
      if (gLogCategory_SFShareAudioService != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
      {
        __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_2_cold_1();
        v4 = v8;
      }
    }

    v6 = *(a1 + 40);
    if (v4)
    {
      [v6 _handleShareAudioResponse:0 error:v8];
    }

    else
    {
      v7 = SFErrorF();
      [v6 _handleShareAudioResponse:0 error:v7];
    }

    v4 = v8;
  }
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_3_cold_1();
    }

    v3 = *(a1 + 40);
    v4 = SFErrorF();
    [v3 _handleShareAudioResponse:0 error:v4];
  }
}

void __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 40))
  {
    v6 = v3;
    if (gLogCategory_SFShareAudioService > 30 || gLogCategory_SFShareAudioService == -1 && (v5 = _LogCategory_Initialize(), v4 = v6, !v5))
    {
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    __73__SFShareAudioService__handleShareAudioRequest2_contact_responseHandler___block_invoke_4_cold_1();
    v4 = v6;
    if (v6)
    {
LABEL_6:
      [*(a1 + 40) _handleShareAudioResponse:0 error:v6];
      v4 = v6;
    }
  }

LABEL_7:
}

- (void)_handleShareAudioResponse:(int)a3 error:(id)a4
{
  v6 = a4;
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioResponse:a3 error:?];
  }

  if (a3 == 2)
  {
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    searchTimer = self->_searchTimer;
    self->_searchTimer = v7;

    v9 = self->_searchTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v10 = self->_searchTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_searchTimer);
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioService _handleShareAudioResponse:error:];
    }

    v11 = objc_alloc_init(MEMORY[0x1E6999460]);
    searchBTClient = self->_searchBTClient;
    self->_searchBTClient = v11;
    v13 = v11;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke_2;
    v16[3] = &unk_1E7891148;
    v16[4] = v13;
    v16[5] = self;
    [(CUBluetoothClient *)v13 setDeviceConnectedHandler:v16];
    [(CUBluetoothClient *)v13 activate];
  }

  else
  {
    v13 = _Block_copy(self->_responseHandler);
    if (v13)
    {
      responseHandler = self->_responseHandler;
      self->_responseHandler = 0;

      if (v6)
      {
        (*(v13 + 2))(v13, v6, 0, 0);
      }

      else
      {
        v15 = SFErrorF();
        (*(v13 + 2))(v13, v15, 0, 0);
      }
    }
  }
}

void __55__SFShareAudioService__handleShareAudioResponse_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 72))
  {
    v6 = v3;
    v5 = [v3 deviceFlags];
    v4 = v6;
    if (v5)
    {
      [*(a1 + 40) _handleShareAudioFoundDevice:v6];
      v4 = v6;
    }
  }
}

- (void)_handleShareAudioFoundDevice:(id)a3
{
  v4 = a3;
  searchTimer = self->_searchTimer;
  if (searchTimer)
  {
    v6 = searchTimer;
    dispatch_source_cancel(v6);
    v7 = self->_searchTimer;
    self->_searchTimer = 0;
  }

  [(CUBluetoothClient *)self->_searchBTClient invalidate];
  searchBTClient = self->_searchBTClient;
  self->_searchBTClient = 0;

  v9 = [v4 addressString];
  objc_storeStrong(&self->_headphonesAddress, v9);
  v10 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
  if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    guestDeviceAddress = self->_guestDeviceAddress;
    LogPrintF();
  }

  v11 = objc_alloc_init(SFBluetoothPairingSession);
  pairingSession = self->_pairingSession;
  self->_pairingSession = v11;
  v13 = v11;

  [(SFBluetoothPairingSession *)v13 setDeviceAddress:v9];
  [(SFBluetoothPairingSession *)v13 setGuestAddress:self->_guestDeviceAddress];
  [(SFBluetoothPairingSession *)v13 setGuestKey:v10];
  [(SFBluetoothPairingSession *)v13 setGuestMode:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__SFShareAudioService__handleShareAudioFoundDevice___block_invoke;
  v16[3] = &unk_1E7891170;
  v16[4] = v13;
  v16[5] = self;
  v17 = v4;
  v14 = v4;
  [(SFBluetoothPairingSession *)v13 setCompletionHandler:v16];
  [(SFBluetoothPairingSession *)v13 activate];
}

uint64_t __52__SFShareAudioService__handleShareAudioFoundDevice___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == *(*(result + 40) + 32))
  {
    return [*(result + 40) _handleShareAudioPairingCompleted:*(result + 48) error:a2];
  }

  return result;
}

- (void)_handleShareAudioPairingCompleted:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
  pairingSession = self->_pairingSession;
  self->_pairingSession = 0;

  v9 = _Block_copy(self->_responseHandler);
  if (v9)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    if (v7)
    {
      if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioService _handleShareAudioPairingCompleted:error:];
      }

      (*(v9 + 2))(v9, v7, 0, 0);
    }

    else
    {
      v11 = self->_sfSession;
      if (v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = [v6 colorCode];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
          [v12 setObject:v14 forKeyedSubscript:@"colorCode"];
        }

        v15 = [v6 productIdentifier];
        if (v15)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
          [v12 setObject:v16 forKeyedSubscript:@"productID"];
        }

        dispatchQueue = self->_dispatchQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke;
        v19[3] = &unk_1E7891198;
        v19[4] = v11;
        v19[5] = self;
        v19[6] = v12;
        v19[7] = v9;
        [(SFSession *)v11 appleIDAddProof:v12 dispatchQueue:dispatchQueue completion:v19];
      }

      else
      {
        v18 = SFErrorF();
        if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
        {
          [SFShareAudioService _handleShareAudioPairingCompleted:error:];
        }

        (*(v9 + 2))(v9, v18, 0, 0);
      }
    }
  }
}

void __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 64))
  {
    v5 = v3;
    if (v3 && gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke_cold_1();
    }

    [*(a1 + 48) setObject:*(*(a1 + 40) + 16) forKeyedSubscript:@"btAd"];
    if (gLogCategory_SFShareAudioService <= 30 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
    {
      __63__SFShareAudioService__handleShareAudioPairingCompleted_error___block_invoke_cold_2((a1 + 48));
    }

    v4 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
    v3 = v5;
  }
}

- (void)_handleShareAudioSearchTimeout
{
  if (gLogCategory_SFShareAudioService <= 90 && (gLogCategory_SFShareAudioService != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioService _handleShareAudioSearchTimeout];
  }

  searchTimer = self->_searchTimer;
  if (searchTimer)
  {
    v4 = searchTimer;
    dispatch_source_cancel(v4);
    v5 = self->_searchTimer;
    self->_searchTimer = 0;
  }

  [(CUBluetoothClient *)self->_searchBTClient invalidate];
  searchBTClient = self->_searchBTClient;
  self->_searchBTClient = 0;

  v7 = _Block_copy(self->_responseHandler);
  if (v7)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;
    v11 = v7;

    v9 = *MEMORY[0x1E696A768];
    v10 = NSErrorF();
    (*(v11 + 2))(v11, v10, 0, 0);

    v7 = v11;
  }
}

- (void)_handleSessionStarted:(void *)a3 .cold.1(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v6 = [a4 peer];
    LogPrintF();
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __64__SFShareAudioService__handleShareAudioRequest_responseHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (uint64_t)_handleShareAudioResponse:(unsigned int)a1 error:.cold.1(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = off_1E78911D0[a1];
  }

  return LogPrintF();
}

- (uint64_t)xpcPerformAction:(unsigned int)a1 completion:.cold.1(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = off_1E78911D0[a1];
  }

  return LogPrintF();
}

@end