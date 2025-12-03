@interface SFDeviceOperationCNJSetup
- (void)_complete:(id)_complete;
- (void)_handleCaptiveNetworkPresentEvent:(id)event;
- (void)_handleCompletedEventWithError:(id)error;
- (void)_showCaptiveSheet:(id)sheet;
- (void)_startClient;
- (void)activate;
- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)ltype result:(int64_t)result;
- (void)handleDismissal;
- (void)handleWebNavigationWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)scrapeCredentialsUsingPOSTMessage:(id)message loginURL:(id)l;
- (void)showWebSheet;
@end

@implementation SFDeviceOperationCNJSetup

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceOperationCNJSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceOperationCNJSetup_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceOperationCNJSetup_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 48) = mach_absolute_time();
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SFDeviceOperationCNJSetup_activate__block_invoke_2;
  v5[3] = &unk_1E788B548;
  v5[4] = v2;
  return [v3 sendRequestID:@"_cnj" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v5];
}

void __37__SFDeviceOperationCNJSetup_activate__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if ((v9[56] & 1) == 0)
  {
    if (v16)
    {
      v10 = v16;
LABEL_6:
      [v9 _complete:v10];
      goto LABEL_7;
    }

    v11 = [v8 objectForKeyedSubscript:@"done"];

    if (v11)
    {
      v9 = *(a1 + 32);
      v10 = 0;
      goto LABEL_6;
    }

    v12 = [v8 objectForKeyedSubscript:@"re"];
    if (v12)
    {
      v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      *(v14 + 120) = v13;
    }

    [*(a1 + 32) _startClient];
  }

LABEL_7:
}

- (void)_startClient
{
  v3 = objc_alloc_init(getSKDeviceClass());
  peerDevice = [(SFSession *)self->_sfSession peerDevice];
  identifier = [peerDevice identifier];
  uUIDString = [identifier UUIDString];
  [v3 setIdentifier:uUIDString];

  v7 = objc_alloc_init(getSKSetupCaptiveNetworkJoinClientClass());
  cnjClient = self->_cnjClient;
  self->_cnjClient = v7;

  [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient setPeerDevice:v3];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__SFDeviceOperationCNJSetup__startClient__block_invoke;
  v17[3] = &unk_1E788FD70;
  objc_copyWeak(&v18, &location);
  [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient setSendDataHandler:v17];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __41__SFDeviceOperationCNJSetup__startClient__block_invoke_2;
  v14 = &unk_1E788FD98;
  selfCopy = self;
  objc_copyWeak(&v16, &location);
  [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient setEventHandler:&v11];
  selfCopy = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"A2A772B2-84C1-447A-B978-5793FF08E513" keyLength:32, v11, v12, v13, v14, selfCopy];
  if (selfCopy)
  {
    [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient setPskData:selfCopy];
    [(SFSession *)self->_sfSession registerForExternalIO:self->_cnjClient];
    [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient activate];
  }

  else
  {
    v10 = NSErrorWithOSStatusF();
    [(SFDeviceOperationCNJSetup *)self _complete:v10];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __41__SFDeviceOperationCNJSetup__startClient__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained sfSession];
  [v4 sendExternalIO:v3];
}

void __41__SFDeviceOperationCNJSetup__startClient__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceOperationCNJSetup__startClient__block_invoke_2_cold_1();
  }

  v3 = [v6 eventType];
  if (v3 == 20)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [v6 error];
    [WeakRetained _handleCompletedEventWithError:v4];
  }

  else
  {
    if (v3 != 200)
    {
      goto LABEL_9;
    }

    *(*(a1 + 32) + 73) = 1;
    v4 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleCaptiveNetworkPresentEvent:v4];
  }

LABEL_9:
}

- (void)showWebSheet
{
  v1 = _Block_copy(*(self + 104));
  LogPrintF();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceOperationCNJSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__SFDeviceOperationCNJSetup_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __39__SFDeviceOperationCNJSetup_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 56) = 1;
  [*(a1 + 32) handleDismissal];
  [*(*(a1 + 32) + 80) deregisterRequestID:@"_cnjExtIO"];
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_handleCaptiveNetworkPresentEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (self->_promptForConfirmationHandler)
  {
    objc_storeStrong(&self->_cnjEvent, event);
    (*(self->_promptForConfirmationHandler + 2))();
  }

  else
  {
    [(SFDeviceOperationCNJSetup *)self _showCaptiveSheet:eventCopy];
  }
}

- (void)_complete:(id)_complete
{
  _completeCopy = _complete;
  if (!self->_invalidateCalled && self->_completionHandler)
  {
    v10 = _completeCopy;
    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    self->_metricTotalSeconds = v6;
    if (v10)
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 60)
      {
        if (gLogCategory_SFDeviceOperationCNJ == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          metricTotalSeconds = self->_metricTotalSeconds;
        }

        goto LABEL_9;
      }
    }

    else if (gLogCategory_SFDeviceOperationCNJ <= 30)
    {
      if (gLogCategory_SFDeviceOperationCNJ == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v9 = self->_metricTotalSeconds;
      }

LABEL_9:
      LogPrintF();
    }

LABEL_13:
    (*(self->_completionHandler + 2))(self->_completionHandler, v10);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    [(SFDeviceOperationCNJSetup *)self invalidate];
    _completeCopy = v10;
  }
}

- (void)_showCaptiveSheet:(id)sheet
{
  sheetCopy = sheet;
  if (gLogCategory_SFDeviceOperationCNJ <= 50 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationCNJSetup _showCaptiveSheet:];
  }

  view = [(UIViewController *)self->_presentingViewController view];
  window = [view window];

  if (window)
  {
    v6 = objc_alloc_init(getWSWebSheetViewControllerClass());
    webSheetViewController = self->_webSheetViewController;
    self->_webSheetViewController = v6;

    v8 = self->_webSheetViewController;
    captiveURL = [sheetCopy captiveURL];
    captiveSSID = [sheetCopy captiveSSID];
    captiveInterfaceIdentifier = [sheetCopy captiveInterfaceIdentifier];
    [(WSWebSheetViewController *)v8 startWithURL:captiveURL ssid:captiveSSID interface:captiveInterfaceIdentifier proxyConfiguration:0 showCancelMenu:0 delegate:self];

    [(WSWebSheetViewController *)self->_webSheetViewController setModalPresentationStyle:5];
    presentingViewController = self->_presentingViewController;
    v13 = self->_webSheetViewController;
    if (self->_isSetup)
    {
      [(UIViewController *)presentingViewController showViewController:v13 sender:0];
    }

    else
    {
      [(UIViewController *)presentingViewController presentViewController:v13 animated:1 completion:0];
    }

    self->_isShowingWebSheet = 1;
  }

  else
  {
    v14 = NSErrorWithOSStatusF();
    [(SFDeviceOperationCNJSetup *)self _complete:v14];
  }
}

- (void)_handleCompletedEventWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 301056 || objc_msgSend(errorCopy, "code") == -71133)
  {
    objc_storeStrong(&self->_captivePathError, error);
  }

  if (self->_isShowingWebSheet)
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCNJSetup _handleCompletedEventWithError:];
    }

    [(WSWebSheetViewController *)self->_webSheetViewController dismissViewController:0];
  }

  else
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 50 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCNJSetup _handleCompletedEventWithError:];
    }

    [(SFDeviceOperationCNJSetup *)self _complete:errorCopy];
  }
}

- (void)handleWebNavigationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_isShowingWebSheet)
  {
    v5 = handlerCopy;
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCNJSetup handleWebNavigationWithCompletionHandler:];
    }

    [(SKSetupCaptiveNetworkJoinClient *)self->_cnjClient postEventType:201];
    v5[2](v5, 4);
    handlerCopy = v5;
  }
}

- (void)handleDismissal
{
  if (self->_isShowingWebSheet)
  {
    self->_isShowingWebSheet = 0;
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCNJSetup handleDismissal];
    }

    presentedViewController = [(UIViewController *)self->_presentingViewController presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];

    if (self->_webSheetResult)
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationCNJSetup handleDismissal];
      }

      if (!self->_promptForConfirmationHandler || self->_isSetup)
      {
        v5 = NSErrorWithOSStatusF();
        [(SFDeviceOperationCNJSetup *)self _complete:v5];
      }
    }

    else
    {
      captivePathError = self->_captivePathError;

      [(SFDeviceOperationCNJSetup *)self _complete:captivePathError];
    }
  }
}

- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)ltype result:(int64_t)result
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationCNJSetup handleCompleteNotificationWithRedirectURLtype:result:];
  }

  self->_webSheetResult = result;
}

- (void)scrapeCredentialsUsingPOSTMessage:(id)message loginURL:(id)l
{
  messageCopy = message;
  lCopy = l;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationCNJSetup scrapeCredentialsUsingPOSTMessage:loginURL:];
  }
}

@end