@interface SRLEPipe
- (SRLEPipe)init;
- (void)_pipeCleanup;
- (void)_pipeDone;
- (void)_pipeEnsureStarted;
- (void)_pipeEnsureStopped;
- (void)_pipeReceivedRouteRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_pipeRequestCompleted:(id)a3 error:(id)a4;
- (void)_runPipeStates;
- (void)activateWithDispatch:(id)a3;
- (void)invalidate;
- (void)pipeConnectionComplete:(id)a3 andWxHeadset:(id)a4 isSender:(BOOL)a5;
- (void)pipeRequestResponse:(id)a3 error:(id)a4;
- (void)pipeSendRouteRequestToSFDevice:(id)a3 andWxHeadset:(id)a4 newPipe:(BOOL)a5 connectionResult:(id)a6 completion:(id)a7;
@end

@implementation SRLEPipe

- (SRLEPipe)init
{
  v6.receiver = self;
  v6.super_class = SRLEPipe;
  v2 = [(SRLEPipe *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)activateWithDispatch:(id)a3
{
  objc_storeStrong(&self->_dispatchQueue, a3);

  [(SRLEPipe *)self _pipeEnsureStarted];
}

- (void)invalidate
{
  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F83E8();
  }

  self->_invalidateCalled = 1;

  [(SRLEPipe *)self _pipeCleanup];
}

- (void)_runPipeStates
{
  if (!self->_invalidateCalled)
  {
    state = self->_state;
    switch(state)
    {
      case 12:
        if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F8404(self);
        }

        [(SRLEPipe *)self _pipeCleanup];
        break;
      case 11:
        if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F8448();
        }

        [(SRLEPipe *)self _pipeDone];
        break;
      case 10:
        self->_state = 11;
        break;
    }

    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      self->_state;
      LogPrintF();
    }
  }
}

- (void)_pipeEnsureStarted
{
  v3 = self->_pipeResponder;
  if (!v3)
  {
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8464();
    }

    v3 = objc_alloc_init(RPCompanionLinkClient);
    pipeResponder = self->_pipeResponder;
    self->_pipeResponder = v3;

    [(RPCompanionLinkClient *)v3 setControlFlags:[(RPCompanionLinkClient *)v3 controlFlags]| 2];
    [(RPCompanionLinkClient *)v3 setDispatchQueue:self->_dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CB17C;
    v6[3] = &unk_1002B6A38;
    v6[4] = self;
    [(RPCompanionLinkClient *)v3 activateWithCompletion:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CB218;
    v5[3] = &unk_1002BAFE0;
    v5[4] = self;
    [(RPCompanionLinkClient *)v3 registerRequestID:@"com.apple.SmartRoutingRequest" options:0 handler:v5];
  }
}

- (void)_pipeEnsureStopped
{
  if (self->_pipeResponder)
  {
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F84C0();
    }

    [(RPCompanionLinkClient *)self->_pipeResponder invalidate];
    pipeResponder = self->_pipeResponder;
    self->_pipeResponder = 0;
  }

  [(SRLEPipe *)self _pipeCleanup];
  client = self->_client;
  if (client)
  {
    self->_client = 0;
  }
}

- (void)_pipeCleanup
{
  inCompletion = self->_inCompletion;
  if (inCompletion)
  {
    if (self->_inError)
    {
      inCompletion[2](self->_inCompletion);
    }

    else
    {
      v4 = NSErrorF();
      (inCompletion[2])(inCompletion, v4);
    }

    v5 = self->_inCompletion;
    self->_inCompletion = 0;
  }

  self->_invalidateCalled = 0;
  senderIDS = self->_senderIDS;
  if (senderIDS)
  {
    self->_senderIDS = 0;
  }

  self->_score = 0;
  client = self->_client;
  if (client)
  {
    [(RPCompanionLinkClient *)client invalidate];
    v8 = self->_client;
    self->_client = 0;
  }
}

- (void)pipeConnectionComplete:(id)a3 andWxHeadset:(id)a4 isSender:(BOOL)a5
{
  v29 = a5;
  v7 = a4;
  if (a3)
  {
    v8 = 12;
  }

  else
  {
    v8 = 11;
  }

  v30 = self;
  self->_state = v8;
  v9 = a3;
  v10 = CUPrintNSError();
  v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v12 = [v11 pipePendingRequest];
  v13 = [v12 timer];

  if (v13)
  {
    dispatch_source_cancel(v13);
  }

  v14 = [v11 pipePendingRequest];
  [v14 setTimer:0];

  [v11 setPipePendingRequest:0];
  [v11 _setTipiElectionInProgress:0];
  [v11 _setTipiElectionReceivedLePipe:&stru_1002C1358];
  [v11 _startTipiSetupTicks];
  if (!a3)
  {
    [v11 _setIsFirstConnentionAfterSREnable:0 forDevice:v7];
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = &stru_1002C1358;
  }

  v16 = v15;
  v17 = [v11 _getWxFWVersion:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1002C1358;
  }

  v20 = v19;

  v21 = [v11 _getWxProductID:v16];
  v31[0] = @"pipeError";
  v31[1] = @"pipeError2";
  v32[0] = v10;
  v32[1] = v10;
  v31[2] = @"pipeErrorCode";
  v28 = v10;
  v22 = [v9 code];

  v23 = [NSNumber numberWithInteger:v22];
  v32[2] = v23;
  v32[3] = v20;
  v31[3] = @"wxBuildVersion";
  v31[4] = @"wxPD";
  v24 = [NSNumber numberWithUnsignedInt:v21];
  v32[4] = v24;
  v31[5] = @"isSender";
  v25 = [NSNumber numberWithBool:v29];
  v32[5] = v25;
  v31[6] = @"isSender2";
  v26 = [NSNumber numberWithBool:v29];
  v32[6] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];

  CUMetricsLogEx();
  [(SRLEPipe *)v30 _runPipeStates];
}

- (void)pipeSendRouteRequestToSFDevice:(id)a3 andWxHeadset:(id)a4 newPipe:(BOOL)a5 connectionResult:(id)a6 completion:(id)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a4;
  v32 = a6;
  v15 = a7;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = v9;
  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = v16;
  if (v9)
  {
    v18 = objc_alloc_init(RPCompanionLinkDevice);
    [v18 setIdentifier:v13];
    inError = self->_inError;
    self->_inError = 0;

    v20 = objc_retainBlock(v15);
    inCompletion = self->_inCompletion;
    self->_inCompletion = v20;

    objc_storeStrong(&self->_senderIDS, a3);
    v22 = objc_alloc_init(RPCompanionLinkClient);
    objc_storeStrong(&self->_client, v22);
    [v22 setControlFlags:{objc_msgSend(v22, "controlFlags") | 0x600100}];
    [v22 setDestinationDevice:v18];
    [v22 setDispatchQueue:self->_dispatchQueue];
    if (objc_opt_respondsToSelector())
    {
      [v22 setBleClientUseCase:18];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000CBB54;
    v40[3] = &unk_1002B68A8;
    v40[4] = self;
    v23 = v14;
    v41 = v23;
    [v22 activateWithCompletion:v40];
    self->_state = 10;
    v24 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v25 = [v24 _myBluetoothAddressString];
    [v17 setObject:v25 forKeyedSubscript:@"btAddress"];

    v26 = GestaltCopyAnswer();
    [v17 setObject:v26 forKeyedSubscript:@"btName"];

    v27 = [NSNumber numberWithUnsignedInt:arc4random()];
    [v17 setObject:v27 forKeyedSubscript:@"btXID"];

    [v17 setObject:v23 forKeyedSubscript:@"wxAddress"];
    [v17 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
  }

  else
  {
    [v16 setObject:v32 forKeyedSubscript:@"btConnectionResult"];
    [v17 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
    [v17 setObject:v14 forKeyedSubscript:@"wxAddress"];
  }

  v28 = self->_client;
  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = mach_absolute_time();
  v44 = RPOptionTimeoutSeconds;
  v45 = &off_1002CB8B8;
  v29 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000CBBE4;
  v33[3] = &unk_1002BB008;
  v30 = v13;
  v34 = v30;
  v35 = self;
  v31 = v14;
  v36 = v31;
  v37 = v39;
  v38 = v42;
  [(RPCompanionLinkClient *)v28 sendRequestID:@"com.apple.SmartRoutingRequest" request:v17 options:v29 responseHandler:v33];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v42, 8);
}

- (void)_pipeReceivedRouteRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  CFStringGetTypeID();
  v74 = v8;
  v10 = CFDictionaryGetTypedValue();
  v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v12 = [v11 pipePendingRequest];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [v11 pipePendingRequest];
  v14 = [v13 senderIDS];
  v15 = [v14 isEqualToString:v10];

  if (v15)
  {
LABEL_3:
    v16 = objc_alloc_init(SRPipeRequest);
    v17 = NSDictionaryGetNSNumber();
    [(SRPipeRequest *)v16 setBtXID:v17];

    [(SRPipeRequest *)v16 setRequest:v7];
    [(SRPipeRequest *)v16 setResponseHandler:v9];
    [(SRPipeRequest *)v16 setSenderIDS:v10];
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = sub_1000039A8;
    v100 = sub_100003880;
    v101 = 0;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000CCC9C;
    v90[3] = &unk_1002BB030;
    v95 = &v96;
    v18 = v10;
    v91 = v18;
    v19 = v7;
    v92 = v19;
    v93 = self;
    v94 = v16;
    v20 = objc_retainBlock(v90);
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      v55 = v18;
      v58 = v19;
      LogPrintF();
    }

    [v11 _powerLogSmartIncomingConnection];
    v21 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v22 = [v21 _isForceRejectPipe];

    if (v22)
    {
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v23 = NSErrorF();
      v24 = v97[5];
      v97[5] = v23;
      goto LABEL_57;
    }

    CFStringGetTypeID();
    v71 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v72 = CFDictionaryGetTypedValue();
    v73 = [v19 objectForKey:@"version"];
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      v56 = v73;
      LogPrintF();
    }

    [(SRPipeRequest *)v16 setVersion:v73, v56];
    [v73 doubleValue];
    if (v25 >= 1.2)
    {
      if (v71)
      {
        v26 = [v11 pipePendingRequest];
        v27 = v26 == 0;

        if (!v27)
        {
          v28 = [v11 pipePendingRequest];
          v29 = [v28 progressStarted];

          if (v29)
          {
            v30 = [v11 pipePendingRequest];
            [v30 setProgressStarted:0];

            [v11 _setTipiElectionInProgress:0];
            [v11 _setTipiElectionReceivedLePipe:&stru_1002C1358];
            [(SRLEPipe *)self _pipeRequestCompleted:v16 error:0];
            if ([v71 isEqual:@"connectionResultError"])
            {
              if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
              {
                v57 = v73;
                LogPrintF();
              }

              v48 = [v11 pipePendingRequest];
              v67 = [v48 wxAddress];

              v49 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
              v50 = NSErrorF();
              [v49 _updateOtherTipiDevice:v67 otherAddress:0 otherName:0 otherVersion:0 withResult:v50];

              v65 = NSErrorF();
              [(SRLEPipe *)self pipeConnectionComplete:v65 andWxHeadset:v67 isSender:0];

LABEL_55:
              goto LABEL_56;
            }

            [(SRLEPipe *)self pipeConnectionComplete:0 andWxHeadset:v72 isSender:0];
            [v11 _sendAudioCategoryViaWx:v72];
            v45 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            [v45 _updateOtherTipiBuildVersion:v72];

            v68 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            [v68 _notifyOtherTipiDeviceTipiScoreChanged:0 andNewScore:0];
          }

LABEL_56:

          v24 = v71;
LABEL_57:

          (v20[2])(v20);
          _Block_object_dispose(&v96, 8);

          goto LABEL_58;
        }
      }
    }

    v31 = [v11 pipePendingRequest];

    if (v31)
    {
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v33 = [v11 pipePendingRequest];
      v34 = [v33 timer];

      if (v34)
      {
        dispatch_source_cancel(v34);
      }

      v35 = [v11 pipePendingRequest];
      [v35 setTimer:0];

      [v11 setPipePendingRequest:0];
    }

    CFStringGetTypeID();
    v67 = CFDictionaryGetTypedValue();
    if (v67)
    {
      CFStringGetTypeID();
      v64 = CFDictionaryGetTypedValue();
      if (!v64 || [v11 _isUSBPluggedIn:v72])
      {
        v52 = NSErrorF();
        v70 = v97[5];
        v97[5] = v52;
      }

      else
      {
        v69 = [v11 _verifyWxConnectedBTAddress:v72 withVersion:v73];
        v36 = [v69 identifier];
        v37 = [v36 isEqualToString:@"FF:FF:FF:FF:FF:FF"];

        if (v37)
        {
          v38 = NSErrorF();
          v39 = v97[5];
          v97[5] = v38;
        }

        else
        {
          v40 = [v69 btAddressData];
          v63 = CUPrintNSDataAddress();

          if ([v11 _verifyWxConnectedRouted:v63])
          {
            v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
            [(SRPipeRequest *)v16 setTimer:v41];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_1000CCD64;
            handler[3] = &unk_1002BB058;
            v84 = v18;
            v85 = v19;
            v86 = self;
            v87 = v16;
            v88 = v11;
            v42 = v69;
            v89 = v42;
            dispatch_source_set_event_handler(v41, handler);
            CUDispatchTimerSet();
            dispatch_activate(v41);
            [(SRPipeRequest *)v16 setWxAddress:v63];
            v60 = v41;
            v43 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            v62 = [v43 _myBluetoothAddressString];

            if (v62)
            {
              v102[0] = v62;
              v102[1] = v67;
              v44 = [NSArray arrayWithObjects:v102 count:2];
              if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
              {
                v57 = v42;
                v59 = v44;
                LogPrintF();
              }

              [v11 setPipePendingRequest:{v16, v57, v59}];
              [v11 _setTipiElectionInProgress:1];
              [v11 _setTipiElectionReceivedLePipe:v63];
              [(SRPipeRequest *)v16 setProgressStarted:1];
              [v11 _startTipiSetupTicks];
              v46 = [v42 btAddressData];
              v47 = CUPrintNSDataAddress();
              [v11 _updateOtherTipiDevice:v47 otherAddress:v67 otherName:v64 otherVersion:v73 withResult:0];

              v76[0] = _NSConcreteStackBlock;
              v76[1] = 3221225472;
              v76[2] = sub_1000CCE84;
              v76[3] = &unk_1002BB080;
              v77 = v72;
              v78 = v44;
              v79 = v11;
              v80 = v42;
              v81 = self;
              v82 = v16;
              [v11 _updateAccessoryID:v80 connectionDeviceAddresses:v44 completion:v76];
            }

            else
            {
              v54 = NSErrorF();
              v44 = v97[5];
              v97[5] = v54;
            }
          }

          else
          {
            v53 = NSErrorF();
            v61 = v97[5];
            v97[5] = v53;
          }

          v39 = v63;
        }
      }
    }

    else
    {
      v51 = NSErrorF();
      v66 = v97[5];
      v97[5] = v51;
    }

    goto LABEL_55;
  }

  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8538(v11);
  }

  v32 = NSErrorF();
  (*(v9 + 2))(v9, 0, 0, v32);

LABEL_58:
}

- (void)_pipeRequestCompleted:(id)a3 error:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = v6;
  if (v5)
  {
    v8 = @"NO";
  }

  else
  {
    v8 = @"YES";
  }

  [v6 setObject:v8 forKeyedSubscript:@"connectionResultACK"];
  v9 = [v15 wxAddress];
  [v7 setObject:v9 forKeyedSubscript:@"wxAddress"];

  [v7 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
  v10 = [v15 btXID];
  [v7 setObject:v10 forKeyedSubscript:@"btXID"];

  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F865C(v15);
  }

  v11 = [v15 responseHandler];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v7, 0, v5);
  }

  [v15 setResponseHandler:0];
  v13 = [v15 timer];
  v14 = v13;
  if (v13)
  {
    dispatch_source_cancel(v13);
  }

  [v15 setTimer:0];
}

- (void)pipeRequestResponse:(id)a3 error:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v6)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F86F4(v18);
    }

    v7 = [v18 responseHandler];
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v6);
    }

    [v18 setResponseHandler:0];
    v9 = [v18 timer];
    v10 = v9;
    if (v9)
    {
      dispatch_source_cancel(v9);
    }

    [v18 setTimer:0];
    v11 = [v18 wxAddress];
    [(SRLEPipe *)self pipeConnectionComplete:v6 andWxHeadset:v11 isSender:0];
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v12 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v13 = [v12 _myBluetoothAddressString];
    [v10 setObject:v13 forKeyedSubscript:@"btAddress"];

    v14 = GestaltCopyAnswer();
    [v10 setObject:v14 forKeyedSubscript:@"btName"];

    [v10 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
    v15 = [v18 btXID];
    [v10 setObject:v15 forKeyedSubscript:@"btXID"];

    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8780(v18);
    }

    v16 = [v18 responseHandler];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16, v10, 0, 0);
    }

    [v18 setResponseHandler:0];
  }
}

- (void)_pipeDone
{
  inCompletion = self->_inCompletion;
  if (inCompletion)
  {
    inCompletion[2](inCompletion, 0);
    v4 = self->_inCompletion;
    self->_inCompletion = 0;
  }

  [(SRLEPipe *)self _pipeCleanup];
}

@end