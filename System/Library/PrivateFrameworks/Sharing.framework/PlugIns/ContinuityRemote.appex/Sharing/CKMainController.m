@interface CKMainController
- (void)_handleRemoteTextEvent:(id)a3;
- (void)_textSessionDidBegin:(id)a3;
- (void)_textSessionDidEnd:(id)a3;
- (void)_updateTextField:(id)a3;
- (void)activateUILockTimer;
- (void)autoFillEnsureActive;
- (void)didReceiveNotification:(id)a3;
- (void)dismissWithDeferral;
- (void)keyboardEnsureActive;
- (void)refreshRTI;
- (void)showContinuityKeyboardUI;
- (void)showPickerUIWithURLString:(id)a3 bundleID:(id)a4 localizedAppName:(id)a5 unlocalizedAppName:(id)a6 handler:(id)a7;
- (void)transitionToViewControllerWhenReady:(id)a3;
- (void)update;
@end

@implementation CKMainController

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [CRSessionInfo sessionInfoWithNotification:v4];
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_10000592C(v5);
  }

  v6 = [v4 request];
  v7 = [v6 content];
  v8 = [v7 userInfo];

  Int64 = CFDictionaryGetInt64();
  if (v5)
  {
    objc_storeStrong(&self->_sessionInfo, v5);
    self->_testFlags = 0;
    v10 = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
    if ([v10 isEqualToString:@"00000000-0000-0000-0000-000000000001"])
    {
      self->_testFlags |= 1u;
    }

    if ([v10 isEqualToString:@"00000000-0000-0000-0000-000000000002"])
    {
      self->_testFlags |= 2u;
    }

    v11 = [[NSUUID alloc] initWithUUIDString:v10];
    v12 = v11;
    if (!v11)
    {
      v12 = +[NSUUID UUID];
    }

    objc_storeStrong(&self->_deviceID, v12);
    if (!v11)
    {
    }
  }

  else if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005988();
  }

  if (Int64)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  self->_displayMode = v13;
  [(CKMainController *)self update];
}

- (void)dismissWithDeferral
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_1000059C8();
  }

  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v4 = dismissTimer;
    dispatch_source_cancel(v4);
    v5 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v7 = self->_dismissTimer;
  self->_dismissTimer = v6;

  v8 = self->_dismissTimer;
  v9 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
  v10 = self->_dismissTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000219C;
  handler[3] = &unk_10000C2C0;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_dismissTimer);
}

- (void)update
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005A00(self);
  }

  displayMode = self->_displayMode;
  if (displayMode == 2)
  {

    [(CKMainController *)self keyboardEnsureActive];
  }

  else
  {
    if (displayMode != 1)
    {
      if (gLogCategory_ContinuityKeyboard > 60)
      {
        return;
      }

      if (gLogCategory_ContinuityKeyboard == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v4 = self->_displayMode;
      }

      LogPrintF();
      return;
    }

    [(CKMainController *)self autoFillEnsureActive];
  }
}

- (void)refreshRTI
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005B9C();
  }

  rtiClient = self->_rtiClient;
  cachedRTIData = self->_cachedRTIData;

  [(SFRemoteTextInputClient *)rtiClient handleTextInputData:cachedRTIData];
}

- (void)activateUILockTimer
{
  if (!self->_uiLockTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    uiLockTimer = self->_uiLockTimer;
    self->_uiLockTimer = v3;

    v5 = self->_uiLockTimer;
    v6 = dispatch_time(0, 400000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    v7 = self->_uiLockTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002A24;
    handler[3] = &unk_10000C2C0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_uiLockTimer);
  }
}

- (void)showContinuityKeyboardUI
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005BD4();
  }

  vcKeyboard = self->_vcKeyboard;
  if (!vcKeyboard)
  {
    v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Keyboard"];
    v5 = self->_vcKeyboard;
    self->_vcKeyboard = v4;

    [(CKBaseViewController *)self->_vcKeyboard setMainController:self];
    vcKeyboard = self->_vcKeyboard;
  }

  [(CKMainController *)self transitionToViewControllerWhenReady:vcKeyboard];
}

- (void)showPickerUIWithURLString:(id)a3 bundleID:(id)a4 localizedAppName:(id)a5 unlocalizedAppName:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v12;
  if (v17)
  {
    v18 = [NSURL URLWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v19 = qword_100011EF0;
  v29 = qword_100011EF0;
  if (!qword_100011EF0)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100004A30;
    v25[3] = &unk_10000C568;
    v25[4] = &v26;
    sub_100004A30(v25);
    v19 = v27[3];
  }

  v20 = v19;
  _Block_object_dispose(&v26, 8);
  v21 = objc_alloc_init(v19);
  vcPicker = self->_vcPicker;
  self->_vcPicker = v21;

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setDelegate:self];
  if (v18)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setWebViewURL:v18];
  }

  if (v13)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteAppID:v13];
  }

  if (v14)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteLocalizedAppName:v14];
  }

  if (v15)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteUnlocalizedAppName:v15];
  }

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setAuthenticationGracePeriod:45.0];
  v23 = self->_vcPicker;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100002DF8;
  v24[3] = &unk_10000C478;
  v24[4] = self;
  [(_SFAppAutoFillPasswordViewController *)v23 authenticateToPresentInPopover:0 completion:v24];
}

- (void)transitionToViewControllerWhenReady:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_uiLockActive)
  {
    if (gLogCategory_ContinuityKeyboard <= 30)
    {
      if (gLogCategory_ContinuityKeyboard != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
      {
        sub_100005C64();
        v4 = v8;
      }
    }

    v6 = v4;
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = v6;
  }

  else
  {
    CKTransitionToViewController(self->_vcNav, v4, self);
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = 0;
  }
}

- (void)_handleRemoteTextEvent:(id)a3
{
  v4 = a3;
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v7 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }

  v8 = [v4 copy];
  cachedRTIData = self->_cachedRTIData;
  self->_cachedRTIData = v8;

  [(SFRemoteTextInputClient *)self->_rtiClient handleTextInputData:v4];
  v10 = SFRTIDataPayloadForData();
  if (!v10)
  {
    if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      sub_100005CB4();
    }

    goto LABEL_24;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v11 = qword_100011F00;
  v25 = qword_100011F00;
  if (!qword_100011F00)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004BE8;
    v21[3] = &unk_10000C568;
    v21[4] = &v22;
    sub_100004BE8(v21);
    v11 = v23[3];
  }

  v12 = v11;
  _Block_object_dispose(&v22, 8);
  v13 = [v10 data];
  v14 = [v11 payloadWithData:v13 version:{objc_msgSend(v10, "version")}];

  if (!v14)
  {
    if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      sub_100005C80();
    }

LABEL_24:
    v19 = 0;
    v16 = 0;
    v14 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v15 = [v14 documentTraits];
  v16 = [v15 prompt];

  v17 = [v14 documentTraits];
  v18 = [v17 title];

  if (!v16)
  {
    v19 = 0;
LABEL_11:
    if (v18)
    {
      v19 = [v18 copy];
    }

    goto LABEL_13;
  }

  v19 = [v16 copy];
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v19)
  {
    vcKeyboard = self->_vcKeyboard;
    if (vcKeyboard)
    {
      [(CKKeyboardViewController *)vcKeyboard updatePrompt:v19];
    }
  }

LABEL_16:
}

- (void)_textSessionDidBegin:(id)a3
{
  [(CKMainController *)self _updateTextField:a3];
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v5 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }
}

- (void)_textSessionDidEnd:(id)a3
{
  v4 = a3;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005CD0();
  }

  [(CKMainController *)self dismissWithDeferral];
}

- (void)_updateTextField:(id)a3
{
  v8 = a3;
  v4 = [(CKKeyboardViewController *)self->_vcKeyboard textField];
  if (v4)
  {
    [v4 setKeyboardType:{objc_msgSend(v8, "keyboardType")}];
    [v4 setReturnKeyType:{objc_msgSend(v8, "returnKeyType")}];
    [v4 setSecureTextEntry:{objc_msgSend(v8, "secureTextEntry")}];
    v5 = [v8 text];
    [v4 setText:v5];

    v6 = [v8 prompt];
    if (v6)
    {
      [v4 setPlaceholder:v6];
    }

    else
    {
      v7 = [v8 title];
      [v4 setPlaceholder:v7];
    }

    [v4 becomeFirstResponder];
  }

  else
  {
    sub_100005CEC();
  }
}

- (void)autoFillEnsureActive
{
  v3 = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:v3];
  if (!self->_rafHelper)
  {
    v5 = objc_alloc_init(SFRemoteAutoFillSessionHelper);
    rafHelper = self->_rafHelper;
    self->_rafHelper = v5;

    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setInterruptionHandler:&stru_10000C300];
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setInvalidationHandler:&stru_10000C320];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002428;
    v16[3] = &unk_10000C2C0;
    v16[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setDismissUserNotificationHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002430;
    v15[3] = &unk_10000C370;
    v15[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setPairingResponseHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000025CC;
    v14[3] = &unk_10000C398;
    v14[4] = self;
    [(SFRemoteAutoFillSessionHelper *)self->_rafHelper setPromptForPINHandler:v14];
    v7 = self->_rafHelper;
    sub_100004F60();
    v10 = sub_1000025DC;
    v11 = &unk_10000C3C0;
    v12 = self;
    v13 = v4;
    [v8 activateWithCompletion:v9];
  }
}

- (void)keyboardEnsureActive
{
  v3 = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:v3];
  v5 = v4;
  if (self->_riSession)
  {
    goto LABEL_11;
  }

  if (!self->_sessionInfo)
  {
    if (gLogCategory_ContinuityKeyboard > 10 || gLogCategory_ContinuityKeyboard == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

LABEL_17:
    LogPrintF();
    goto LABEL_11;
  }

  if (!v4)
  {
    if (gLogCategory_ContinuityKeyboard > 60 || gLogCategory_ContinuityKeyboard == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ([v3 isEqualToString:@"00000000-0000-0000-0000-000000000001"])
  {
    self->_testFlags |= 4u;
  }

  v6 = objc_alloc_init(SFDevice);
  [v6 setIdentifier:v5];
  v7 = objc_alloc_init(SFRemoteInteractionSession);
  riSession = self->_riSession;
  self->_riSession = v7;

  [(SFRemoteInteractionSession *)self->_riSession setPeerDevice:v6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002670;
  v18[3] = &unk_10000C3E8;
  v18[4] = self;
  [(SFRemoteInteractionSession *)self->_riSession setRemoteTextEventHandler:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000026E0;
  v17[3] = &unk_10000C410;
  v17[4] = self;
  [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidBegin:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002750;
  v16[3] = &unk_10000C410;
  v16[4] = self;
  [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidEnd:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000275C;
  v15[3] = &unk_10000C410;
  v15[4] = self;
  [(SFRemoteInteractionSession *)self->_riSession setTextSessionDidChange:v15];
  [(SFRemoteInteractionSession *)self->_riSession activateWithCompletion:&stru_10000C450];
  v9 = objc_alloc_init(SFRemoteTextInputClient);
  rtiClient = self->_rtiClient;
  self->_rtiClient = v9;

  sub_100004F60();
  v12 = sub_100002818;
  v13 = &unk_10000C3E8;
  v14 = self;
  [(SFRemoteTextInputClient *)self->_rtiClient setEventHandler:v11];
  [(SFRemoteTextInputClient *)self->_rtiClient activate];

LABEL_11:
}

@end