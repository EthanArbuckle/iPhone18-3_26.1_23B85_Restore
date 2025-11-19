@interface BTShareAudioService
- (BTShareAudioService)init;
- (void)_handleSessionEnded:(id)a3 error:(id)a4;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleShareAudioPairingCompleted:(id)a3 error:(id)a4;
- (void)_handleShareAudioRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleShareAudioSearchTimeout;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
@end

@implementation BTShareAudioService

- (BTShareAudioService)init
{
  v6.receiver = self;
  v6.super_class = BTShareAudioService;
  v2 = [(BTShareAudioService *)&v6 init];
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
  block[2] = sub_10007D470;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D54C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(BTShareAudioService *)self _handleSessionEnded:self->_sfSession error:0];
    configRequestHandler = self->_configRequestHandler;
    self->_configRequestHandler = 0;

    connectRequestHandler = self->_connectRequestHandler;
    self->_connectRequestHandler = 0;

    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    if (dword_1002F6AD8 <= 30 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EF254();
    }
  }
}

- (void)_sfServiceStart
{
  if (dword_1002F6AD8 <= 30 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EF270();
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
  [(SFService *)v5 setServiceType:21];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D848;
  v8[3] = &unk_1002B9550;
  v8[4] = v5;
  v8[5] = self;
  [(SFService *)v5 setSessionStartedHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D864;
  v7[3] = &unk_1002B9578;
  v7[4] = v5;
  v7[5] = self;
  [(SFService *)v5 setSessionEndedHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007D884;
  v6[3] = &unk_1002B68A8;
  v6[4] = v5;
  v6[5] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    sub_1001EF2E8(dword_1002F6AD8, &self->_sfSession, sfSession, v5);
  }

  else
  {
    if (dword_1002F6AD8 <= 30 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EF3B4(v5);
    }

    [v5 setStatusMonitor:self->_statusMonitor];
    objc_storeStrong(&self->_sfSession, a3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007DB2C;
    v9[3] = &unk_1002B95A0;
    v9[4] = self;
    [v5 registerRequestID:@"_shAu" options:&off_1002CBE00 handler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007DB34;
    v8[3] = &unk_1002B95A0;
    v8[4] = self;
    [v5 registerRequestID:@"_shCf" options:&off_1002CBE28 handler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007DC44;
    v7[3] = &unk_1002B95A0;
    v7[4] = self;
    [v5 registerRequestID:@"_shCn" options:&off_1002CBE50 handler:v7];
  }
}

- (void)_handleSessionEnded:(id)a3 error:(id)a4
{
  v19 = a3;
  v6 = a4;
  sfSession = self->_sfSession;
  if (sfSession == v19)
  {
    if (v19)
    {
      if (dword_1002F6AD8 <= 30)
      {
        if (dword_1002F6AD8 != -1 || (v8 = _LogCategory_Initialize(), sfSession = self->_sfSession, v8))
        {
          v17 = [(SFSession *)sfSession peer];
          v18 = v6;
          LogPrintF();

          sfSession = self->_sfSession;
        }
      }
    }

    self->_sfSession = 0;

    [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
    pairingSession = self->_pairingSession;
    self->_pairingSession = 0;

    searchTimer = self->_searchTimer;
    if (searchTimer)
    {
      v11 = searchTimer;
      dispatch_source_cancel(v11);
      v12 = self->_searchTimer;
      self->_searchTimer = 0;
    }

    [(CUBluetoothClient *)self->_searchBTClient invalidate:v17];
    searchBTClient = self->_searchBTClient;
    self->_searchBTClient = 0;

    v14 = objc_retainBlock(self->_responseHandler);
    if (v14)
    {
      v15 = NSErrorF();
      if (dword_1002F6AD8 < 91 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EF448();
      }

      (*(v14 + 2))(v14, v15, 0, 0);
      responseHandler = self->_responseHandler;
      self->_responseHandler = 0;
    }
  }
}

- (void)_handleShareAudioRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6AD8 <= 30 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EF488();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003938;
  v23 = sub_100003848;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007E178;
  v16[3] = &unk_1002B74D0;
  v18 = &v19;
  v8 = v7;
  v17 = v8;
  v9 = objc_retainBlock(v16);
  if (self->_responseHandler)
  {
    v13 = NSErrorF();
    v14 = v20[5];
    v20[5] = v13;
  }

  else
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      objc_storeStrong(&self->_guestDeviceAddress, v10);
      v11 = objc_retainBlock(v8);
      responseHandler = self->_responseHandler;
      self->_responseHandler = v11;
    }

    else
    {
      v15 = NSErrorF();
      responseHandler = v20[5];
      v20[5] = v15;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v19, 8);
}

- (void)_handleShareAudioPairingCompleted:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SFBluetoothPairingSession *)self->_pairingSession invalidate];
  pairingSession = self->_pairingSession;
  self->_pairingSession = 0;

  v9 = objc_retainBlock(self->_responseHandler);
  if (v9)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    if (v7)
    {
      if (dword_1002F6AD8 <= 90 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EF4C8();
      }

      (*(v9 + 2))(v9, v7, 0, 0);
    }

    else
    {
      v11 = self->_sfSession;
      if (v11)
      {
        v12 = objc_alloc_init(NSMutableDictionary);
        v13 = [v6 colorCodeBest];
        if (v13)
        {
          v14 = [NSNumber numberWithUnsignedChar:v13];
          [v12 setObject:v14 forKeyedSubscript:@"colorCode"];
        }

        v15 = [v6 productID];
        if (v15)
        {
          v16 = [NSNumber numberWithUnsignedInt:v15];
          [v12 setObject:v16 forKeyedSubscript:@"productID"];
        }

        dispatchQueue = self->_dispatchQueue;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10007E4A4;
        v19[3] = &unk_1002B95C8;
        v19[4] = v11;
        v19[5] = self;
        v19[6] = v12;
        v19[7] = v9;
        [(SFSession *)v11 appleIDAddProof:v12 dispatchQueue:dispatchQueue completion:v19];
      }

      else
      {
        v18 = SFErrorF();
        if (dword_1002F6AD8 <= 90 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EF4C8();
        }

        (*(v9 + 2))(v9, v18, 0, 0);
      }
    }
  }
}

- (void)_handleShareAudioSearchTimeout
{
  if (dword_1002F6AD8 <= 90 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EF58C();
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

  v7 = objc_retainBlock(self->_responseHandler);
  if (v7)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;
    v10 = v7;

    v9 = NSErrorF();
    (*(v10 + 2))(v10, v9, 0, 0);

    v7 = v10;
  }
}

@end