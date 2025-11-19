@interface BTServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (void)_diagnosticControlShareAudioBanner;
- (void)audioRoutingRequest:(id)a3 responseHandler:(id)a4;
- (void)audioSessionActivate:(id)a3 completion:(id)a4;
- (void)diagnosticControl:(id)a3 completion:(id)a4;
- (void)diagnosticShow:(id)a3 completion:(id)a4;
- (void)shareAudioSessionActivate:(id)a3 completion:(id)a4;
- (void)showHIDConnectedBannerAperture:(id)a3 completion:(id)a4;
- (void)xpcConnectionInvalidated;
@end

@implementation BTServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDAC8(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = BTErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  v3 = self->_audioSession;
  if (v3)
  {
    if (dword_1002F76E0 < 31 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FDB18();
    }

    [(BTAudioSession *)v3 invalidate];
    audioSession = self->_audioSession;
    self->_audioSession = 0;
  }

  v5 = self->_shareAudioSession;
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    if (dword_1002F76E0 < 31)
    {
      if (dword_1002F76E0 != -1 || (v7 = _LogCategory_Initialize(), v6 = v9, v7))
      {
        sub_1001FDB18();
        v6 = v9;
      }
    }

    [(BTShareAudioSessionDaemon *)v6 invalidate];
    shareAudioSession = self->_shareAudioSession;
    self->_shareAudioSession = 0;

    v6 = v9;
  }

  _objc_release_x1(v5, v6);
}

- (void)audioRoutingRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDB58();
  }

  smartRoutingSession = self->_smartRoutingSession;
  if (!smartRoutingSession)
  {
    v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v10 = self->_smartRoutingSession;
    self->_smartRoutingSession = v9;

    smartRoutingSession = self->_smartRoutingSession;
    if (!smartRoutingSession)
    {
      v11 = objc_alloc_init(BTAudioRoutingResponse);
      v12 = NSErrorF();
      [v11 setError:v12];

      v7[2](v7, v11);
      smartRoutingSession = self->_smartRoutingSession;
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E3C30;
  v14[3] = &unk_1002BB7B8;
  v15 = v7;
  v13 = v7;
  [(BTSmartRoutingDaemon *)smartRoutingSession smartRoutingAudioRoutingRequest:v6 withResponseHandler:v14];
}

- (void)audioSessionActivate:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDB98();
  }

  if (!self->_smartRoutingSession)
  {
    v7 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    smartRoutingSession = self->_smartRoutingSession;
    self->_smartRoutingSession = v7;

    self->_smartRoutingSession;
  }

  v9 = NSErrorF();
  v6[2](v6, v9);
}

- (void)diagnosticControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000039F8;
  v28 = sub_1000038A8;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E40C4;
  v21[3] = &unk_1002B74D0;
  v23 = &v24;
  v7 = a4;
  v22 = v7;
  v8 = objc_retainBlock(v21);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    v19 = v6;
    LogPrintF();
  }

  v9 = (v25 + 5);
  obj = v25[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj, v19];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v12 = v11;
    if (!v11)
    {
      v18 = BTErrorF();
      goto LABEL_21;
    }

    if ([v11 caseInsensitiveCompare:@"FWCrashed"])
    {
      if ([v12 caseInsensitiveCompare:@"HIDLagDetected"])
      {
        if ([v12 caseInsensitiveCompare:@"IgnoreBTRestart"])
        {
          if (![v12 caseInsensitiveCompare:@"shNote"])
          {
            [(BTServicesXPCConnection *)self _diagnosticControlShareAudioBanner];
LABEL_20:
            (*(v7 + 2))(v7, &__NSDictionary0__struct, 0);
LABEL_21:

            goto LABEL_22;
          }

          if ([v12 caseInsensitiveCompare:@"HIDIntervalUpdated"])
          {
            v13 = +[BTIdentityDaemon sharedBTIdentityDaemon];
            v14 = [v13 diagnosticControl:v6 completion:v7];

            if ((v14 & 1) == 0)
            {
              v15 = BTErrorF();
              v16 = v25[5];
              v25[5] = v15;
            }

            goto LABEL_21;
          }

          v17 = +[BTServicesDaemon sharedBTServicesDaemon];
          [v17 _showHIDIntervalBannerIfEnabled:v6];
        }

        else
        {
          v17 = +[BTServicesDaemon sharedBTServicesDaemon];
          [v17 setIgnoreBTRestart:1];
        }
      }

      else
      {
        v17 = +[BTServicesDaemon sharedBTServicesDaemon];
        [v17 _showHIDLagBannerIfEnabled:v6];
      }
    }

    else
    {
      v17 = +[BTServicesDaemon sharedBTServicesDaemon];
      [v17 showCrashBannerIfNeeded:v6];
    }

    goto LABEL_20;
  }

LABEL_22:
  (v8[2])(v8);

  _Block_object_dispose(&v24, 8);
}

- (void)_diagnosticControlShareAudioBanner
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDBD8();
  }

  v3 = objc_alloc_init(CUUserNotificationSession);
  [v3 setBundleID:@"com.apple.ShareAudioNotifications"];
  [v3 setCategoryID:@"ShareAudioCategoryID"];
  [v3 setDispatchQueue:self->_dispatchQueue];
  [v3 setFlags:1];
  [v3 setTitleKey:@"Apple TV"];
  [v3 setBodyKey:@"SHARE_AUDIO_BODY_FORMAT"];
  [v3 setBodyArguments:&off_1002CC138];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E4328;
  v5[3] = &unk_1002BB768;
  v5[4] = v3;
  [v3 setActionHandler:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E43B4;
  v4[3] = &unk_1002B6880;
  v4[4] = v3;
  [v3 addActionWithIdentifier:@"ShareAudioActionIDConnect" title:@"SHARE_AUDIO_BUTTON" flags:0 handler:v4];
  [v3 activate];
}

- (void)diagnosticShow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000039F8;
  v25 = sub_1000038A8;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E46C8;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  v7 = a4;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    v15 = v6;
    LogPrintF();
  }

  v9 = (v22 + 5);
  obj = v22[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    daemon = self->_daemon;
    v16 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v12 = 0;

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"None\n";
    }

    v27 = @"_output";
    v28 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1, v16];
    (*(v7 + 2))(v7, v14, 0);
  }

  (v8[2])(v8);

  _Block_object_dispose(&v21, 8);
}

- (void)showHIDConnectedBannerAperture:(id)a3 completion:(id)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000039F8;
  v21 = sub_1000038A8;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E499C;
  v14[3] = &unk_1002B74D0;
  v16 = &v17;
  v7 = a4;
  v15 = v7;
  v8 = objc_retainBlock(v14);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    v12 = v6;
    LogPrintF();
  }

  v9 = (v18 + 5);
  obj = v18[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj, v12];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    v11 = +[BTServicesDaemon sharedBTServicesDaemon];
    [v11 _showHIDConnected:v6];

    (*(v7 + 2))(v7, 0);
  }

  (v8[2])(v8);

  _Block_object_dispose(&v17, 8);
}

- (void)shareAudioSessionActivate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000039F8;
  v28 = sub_1000038A8;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E4D78;
  v20[3] = &unk_1002B7120;
  v23 = &v24;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    v17 = v8;
    LogPrintF();
  }

  v11 = (v25 + 5);
  obj = v25[5];
  v12 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj, v17];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    if (self->_shareAudioSession)
    {
      v16 = NSErrorF();
      v13 = v25[5];
      v25[5] = v16;
    }

    else
    {
      v13 = objc_alloc_init(BTShareAudioSessionDaemon);
      objc_storeStrong(&self->_shareAudioSession, v13);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("BTShareAudioSessionDaemon", v14);
      [(BTShareAudioSessionDaemon *)v13 setDispatchQueue:v15];

      -[BTShareAudioSessionDaemon setMode:](v13, "setMode:", [v8 mode]);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000E4E44;
      v18[3] = &unk_1002BB790;
      v18[4] = self;
      v18[5] = v13;
      [(BTShareAudioSessionDaemon *)v13 setProgressHandler:v18];
      [(BTShareAudioSessionDaemon *)v13 activate];
      (*(v9 + 2))(v9, 0);
    }
  }

  (v10[2])(v10);

  _Block_object_dispose(&v24, 8);
}

@end