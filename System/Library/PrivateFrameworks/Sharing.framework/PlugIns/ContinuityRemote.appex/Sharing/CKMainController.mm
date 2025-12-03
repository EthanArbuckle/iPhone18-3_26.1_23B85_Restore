@interface CKMainController
- (void)_handleRemoteTextEvent:(id)event;
- (void)_textSessionDidBegin:(id)begin;
- (void)_textSessionDidEnd:(id)end;
- (void)_updateTextField:(id)field;
- (void)activateUILockTimer;
- (void)autoFillEnsureActive;
- (void)didReceiveNotification:(id)notification;
- (void)dismissWithDeferral;
- (void)keyboardEnsureActive;
- (void)refreshRTI;
- (void)showContinuityKeyboardUI;
- (void)showPickerUIWithURLString:(id)string bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName handler:(id)handler;
- (void)transitionToViewControllerWhenReady:(id)ready;
- (void)update;
@end

@implementation CKMainController

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [CRSessionInfo sessionInfoWithNotification:notificationCopy];
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_10000592C(v5);
  }

  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  Int64 = CFDictionaryGetInt64();
  if (v5)
  {
    objc_storeStrong(&self->_sessionInfo, v5);
    self->_testFlags = 0;
    deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
    if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000001"])
    {
      self->_testFlags |= 1u;
    }

    if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000002"])
    {
      self->_testFlags |= 2u;
    }

    v11 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
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

- (void)showPickerUIWithURLString:(id)string bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName handler:(id)handler
{
  stringCopy = string;
  dCopy = d;
  nameCopy = name;
  appNameCopy = appName;
  handlerCopy = handler;
  v17 = stringCopy;
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

  if (dCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteAppID:dCopy];
  }

  if (nameCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteLocalizedAppName:nameCopy];
  }

  if (appNameCopy)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteUnlocalizedAppName:appNameCopy];
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

- (void)transitionToViewControllerWhenReady:(id)ready
{
  readyCopy = ready;
  v8 = readyCopy;
  if (self->_uiLockActive)
  {
    if (gLogCategory_ContinuityKeyboard <= 30)
    {
      if (gLogCategory_ContinuityKeyboard != -1 || (v5 = _LogCategory_Initialize(), readyCopy = v8, v5))
      {
        sub_100005C64();
        readyCopy = v8;
      }
    }

    v6 = readyCopy;
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = v6;
  }

  else
  {
    CKTransitionToViewController(self->_vcNav, readyCopy, self);
    vcDeferred = self->_vcDeferred;
    self->_vcDeferred = 0;
  }
}

- (void)_handleRemoteTextEvent:(id)event
{
  eventCopy = event;
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v7 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }

  v8 = [eventCopy copy];
  cachedRTIData = self->_cachedRTIData;
  self->_cachedRTIData = v8;

  [(SFRemoteTextInputClient *)self->_rtiClient handleTextInputData:eventCopy];
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
  data = [v10 data];
  v14 = [v11 payloadWithData:data version:{objc_msgSend(v10, "version")}];

  if (!v14)
  {
    if (gLogCategory_ContinuityKeyboard <= 60 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
    {
      sub_100005C80();
    }

LABEL_24:
    v19 = 0;
    prompt = 0;
    v14 = 0;
    title = 0;
    goto LABEL_16;
  }

  documentTraits = [v14 documentTraits];
  prompt = [documentTraits prompt];

  documentTraits2 = [v14 documentTraits];
  title = [documentTraits2 title];

  if (!prompt)
  {
    v19 = 0;
LABEL_11:
    if (title)
    {
      v19 = [title copy];
    }

    goto LABEL_13;
  }

  v19 = [prompt copy];
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

- (void)_textSessionDidBegin:(id)begin
{
  [(CKMainController *)self _updateTextField:begin];
  dismissTimer = self->_dismissTimer;
  if (dismissTimer)
  {
    v6 = dismissTimer;
    dispatch_source_cancel(v6);
    v5 = self->_dismissTimer;
    self->_dismissTimer = 0;
  }
}

- (void)_textSessionDidEnd:(id)end
{
  endCopy = end;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005CD0();
  }

  [(CKMainController *)self dismissWithDeferral];
}

- (void)_updateTextField:(id)field
{
  fieldCopy = field;
  textField = [(CKKeyboardViewController *)self->_vcKeyboard textField];
  if (textField)
  {
    [textField setKeyboardType:{objc_msgSend(fieldCopy, "keyboardType")}];
    [textField setReturnKeyType:{objc_msgSend(fieldCopy, "returnKeyType")}];
    [textField setSecureTextEntry:{objc_msgSend(fieldCopy, "secureTextEntry")}];
    text = [fieldCopy text];
    [textField setText:text];

    prompt = [fieldCopy prompt];
    if (prompt)
    {
      [textField setPlaceholder:prompt];
    }

    else
    {
      title = [fieldCopy title];
      [textField setPlaceholder:title];
    }

    [textField becomeFirstResponder];
  }

  else
  {
    sub_100005CEC();
  }
}

- (void)autoFillEnsureActive
{
  deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
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
    selfCopy = self;
    v13 = v4;
    [v8 activateWithCompletion:v9];
  }
}

- (void)keyboardEnsureActive
{
  deviceIdentifier = [(CRSessionInfo *)self->_sessionInfo deviceIdentifier];
  v4 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
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

  if ([deviceIdentifier isEqualToString:@"00000000-0000-0000-0000-000000000001"])
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
  selfCopy = self;
  [(SFRemoteTextInputClient *)self->_rtiClient setEventHandler:v11];
  [(SFRemoteTextInputClient *)self->_rtiClient activate];

LABEL_11:
}

@end