@interface WFDialogPresentationManager
- (BOOL)hasPersistentState;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)queue_hasMoreDialogsToPresent;
- (BOOL)shouldShowStatus;
- (WFDialogPresentationManager)initWithListener:(id)listener notificationManager:(id)manager dialogAlertPresenter:(id)presenter screenOnObserver:(id)observer;
- (WFDialogPresentationManager)initWithNotificationManager:(id)manager;
- (WFDialogPresentationManagerDelegate)delegate;
- (void)acquireStatusPresenterAssertionIfNecessary;
- (void)activateRemoteAlertTiedToBundleIdentifier:(id)identifier;
- (void)activateStatusPresenter;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)beginConnection;
- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler;
- (void)cancelWorkflow;
- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dialogAlertPresenter:(id)presenter didConnectToAlert:(id)alert;
- (void)dialogAlertPresenterDidDeactivateAlert:(id)alert;
- (void)dialogAlertPresenterDidDisconnectFromAlert:(id)alert;
- (void)dialogAlertPresenterDidInvalidateAlert:(id)alert;
- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler;
- (void)handleRemovedIgnoredNotifications:(id)notifications;
- (void)logFinishDialogPresentationWithPresentedDialog:(id)dialog;
- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode context:(id)context;
- (void)queue_clearPersistentModeStateIfNecessary;
- (void)queue_connectedRemoteAlertDidDisconnect;
- (void)queue_deactivateRemoteAlertAndInvalidateConnection;
- (void)queue_presentNextDialog;
- (void)requestDismissalWithReason:(id)reason;
- (void)screenOnStateDidChange:(id)change;
- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
- (void)statusPresenterDidConnectToService:(id)service;
- (void)statusPresenterDidDisconnect;
- (void)trackDialogEventWithKey:(id)key request:(id)request presentationMode:(unint64_t)mode automationType:(id)type;
- (void)trackSuspendShortcutWithPresentedDialog:(id)dialog;
- (void)workflowStatusHostBeginConnection;
@end

@implementation WFDialogPresentationManager

- (WFDialogPresentationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)trackDialogEventWithKey:(id)key request:(id)request presentationMode:(unint64_t)mode automationType:(id)type
{
  v9 = MEMORY[0x277D7C8C8];
  typeCopy = type;
  requestCopy = request;
  keyCopy = key;
  v17 = objc_alloc_init(v9);
  [v17 setKey:keyCopy];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v17 setDialogType:v14];

  v15 = WFStringForDialogPresentationMode();
  [v17 setPresentationStyle:v15];

  dismissalReason = [(WFDialogPresentationManager *)self dismissalReason];
  [v17 setDismissalType:dismissalReason];

  [v17 setAutomationType:typeCopy];
  [v17 track];
}

- (void)logFinishDialogPresentationWithPresentedDialog:(id)dialog
{
  dialogCopy = dialog;
  request = [dialogCopy request];
  presentationMode = [dialogCopy presentationMode];
  context = [dialogCopy context];

  automationType = [context automationType];
  [(WFDialogPresentationManager *)self trackDialogEventWithKey:@"ShowDialogFinish" request:request presentationMode:presentationMode automationType:automationType];
}

- (void)trackSuspendShortcutWithPresentedDialog:(id)dialog
{
  v4 = MEMORY[0x277D7C930];
  dialogCopy = dialog;
  v8 = objc_alloc_init(v4);
  [v8 setKey:@"SuspendShortcutEvent"];
  [dialogCopy presentationMode];

  v6 = WFStringForDialogPresentationMode();
  [v8 setPresentationStyle:v6];

  dismissalReason = [(WFDialogPresentationManager *)self dismissalReason];
  [v8 setDismissalType:dismissalReason];

  [v8 track];
}

- (void)screenOnStateDidChange:(id)change
{
  changeCopy = change;
  queue = [(WFDialogPresentationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WFDialogPresentationManager_screenOnStateDidChange___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

void __54__WFDialogPresentationManager_screenOnStateDidChange___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) screenOn] & 1) == 0)
  {
    v2 = [*(a1 + 40) persistentRunningContext];

    if (v2)
    {
      [*(a1 + 40) queue_clearPersistentModeStateIfNecessary];
    }
  }

  v29 = [*(a1 + 40) remoteAlertPresenter];
  if (([v29 alertIsActive] & 1) != 0 && (objc_msgSend(*(a1 + 40), "presentedDialog"), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [*(a1 + 32) screenOn];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) queue_clearPersistentModeStateIfNecessary];
      v6 = [*(a1 + 40) presentedDialog];
      v7 = [*(a1 + 40) presentedDialog];
      v8 = [v7 context];
      v9 = [v8 allowsDialogNotifications];

      if (v9)
      {
        v10 = getWFDialogLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v31 = "[WFDialogPresentationManager screenOnStateDidChange:]_block_invoke";
          _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Converting presented dialog into a notification, since the screen locked.", buf, 0xCu);
        }

        v11 = *(a1 + 40);
        v12 = [v6 request];
        v13 = [v6 presentationMode];
        v14 = [v6 context];
        [v11 postNotificationWithRequest:v12 presentationMode:v13 context:v14];

        [*(a1 + 40) queue_deactivateRemoteAlertAndInvalidateConnection];
        v15 = *(a1 + 40);
        v16 = [v15 presentedDialog];
        [v15 trackSuspendShortcutWithPresentedDialog:v16];
      }

      else
      {
        v18 = [v6 context];
        v19 = [v18 isShortcutsApp];

        if (v19)
        {
          v20 = 3;
        }

        else
        {
          v21 = [v6 context];
          v22 = [v21 allowsDialogNotifications];

          if (v22)
          {
            v20 = 0;
          }

          else
          {
            v20 = 2;
          }
        }

        v23 = [*(a1 + 40) presentedDialog];
        v24 = [v23 completionHandler];

        if (v24)
        {
          v25 = [*(a1 + 40) presentedDialog];
          v26 = [v25 completionHandler];
          v27 = [objc_alloc(MEMORY[0x277D79F38]) initWithResponseCode:v20];
          (v26)[2](v26, v27);
        }

        [*(a1 + 40) setPresentedDialog:0];
        [*(a1 + 40) queue_deactivateRemoteAlertAndInvalidateConnection];
      }
    }

    v28 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];
  }
}

void __107__WFDialogPresentationManager_dismissPersistentChromeInDialog_success_customAttribution_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __107__WFDialogPresentationManager_dismissPersistentChromeInDialog_success_customAttribution_completionHandler___block_invoke_2;
  v4[3] = &unk_2788FF680;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

uint64_t __107__WFDialogPresentationManager_dismissPersistentChromeInDialog_success_customAttribution_completionHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFDialogPresentationManager dismissPersistentChromeInDialog:success:customAttribution:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Finished dismissing chrome after persistent mode completed", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) persistentPresentationQueue];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) queue_hasMoreDialogsToPresent];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 queue_presentNextDialog];
  }

  else
  {
    [v5 queue_deactivateRemoteAlertAndInvalidateConnection];
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completion:(id)completion
{
  successCopy = success;
  completionCopy = completion;
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__WFDialogPresentationManager_completePersistentModeWithSuccess_runningContext_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  block[4] = self;
  v13 = successCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = successCopy;
  dispatch_async(queue, block);
}

void __91__WFDialogPresentationManager_completePersistentModeWithSuccess_runningContext_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[WFDialogPresentationManager completePersistentModeWithSuccess:runningContext:completion:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Completing persistent mode", &v12, 0xCu);
  }

  v3 = [*(a1 + 32) shouldShowStatus];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 connectedStatusPresenter];

    if (v5)
    {
      [*(a1 + 32) acquireStatusPresenterAssertionIfNecessary];
      v6 = [*(a1 + 32) connectedStatusPresenter];
      [v6 workflowStatusWorkflowDidFinishWithSuccess:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
    }

    [*(a1 + 32) queue_clearPersistentModeStateIfNecessary];
  }

  else
  {
    v7 = [v4 persistentRunningAttribution];
    [*(a1 + 32) queue_clearPersistentModeStateIfNecessary];
    v8 = [*(a1 + 32) connectedRemoteAlert];

    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [*(a1 + 32) connectedRemoteAlert];
      [v9 dismissPersistentChromeInDialog:v10 success:objc_msgSend(*(a1 + 40) customAttribution:"BOOLValue") completionHandler:{v7, *(a1 + 48)}];
    }

    else
    {
      [*(a1 + 32) setPersistentRunningAttribution:v7];
      [*(a1 + 32) setCompletePersistentModeBlockAwaitingRemoteAlertReactivation:*(a1 + 48)];
      [*(a1 + 32) setCompletePersistentModeAwaitingRemoteAlertReactivationSuccess:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
      [*(a1 + 32) activateRemoteAlert];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler
{
  contextCopy = context;
  attributionCopy = attribution;
  handlerCopy = handler;
  queue = [(WFDialogPresentationManager *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__WFDialogPresentationManager_beginPersistentModeWithRunningContext_attribution_completionHandler___block_invoke;
  v15[3] = &unk_2788FF468;
  v15[4] = self;
  v16 = contextCopy;
  v17 = attributionCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = attributionCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

void __99__WFDialogPresentationManager_beginPersistentModeWithRunningContext_attribution_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) shouldShowStatus];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 statusPresenter];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) statusPresenter];
      if ([v6 alertIsActive])
      {
      }

      else
      {
        v14 = [*(a1 + 32) statusPresenter];
        v15 = [v14 alertIsLaunching];

        if ((v15 & 1) == 0)
        {
          v24 = [*(a1 + 32) contextsAwaitingStatusPresentation];
          [v24 addObject:*(a1 + 40)];

          v25 = [*(a1 + 32) attributionsAwaitingStatusPresentation];
          [v25 addObject:*(a1 + 48)];

          [*(a1 + 32) activateStatusPresenter];
          goto LABEL_24;
        }
      }
    }

    v16 = [*(a1 + 32) statusPresenter];
    if (v16)
    {
      v17 = v16;
      v18 = [*(a1 + 32) statusPresenter];
      if ([v18 alertIsActive])
      {
      }

      else
      {
        v19 = [*(a1 + 32) statusPresenter];
        v20 = [v19 alertIsLaunching];

        if (v20)
        {
          v21 = [*(a1 + 32) contextsAwaitingStatusPresentation];
          [v21 addObject:*(a1 + 40)];

          v22 = [*(a1 + 32) attributionsAwaitingStatusPresentation];
          [v22 addObject:*(a1 + 48)];
          goto LABEL_22;
        }
      }
    }

    v23 = [*(a1 + 32) connectedStatusPresenter];

    if (!v23)
    {
LABEL_24:
      (*(*(a1 + 56) + 16))();
      goto LABEL_25;
    }

    [*(a1 + 32) acquireStatusPresenterAssertionIfNecessary];
    v22 = [*(a1 + 32) connectedStatusPresenter];
    [v22 workflowStatusWorkflowWillBeginRunningWithAttribution:*(a1 + 48) context:*(a1 + 40)];
LABEL_22:

    goto LABEL_24;
  }

  v7 = [v3 persistentRunningContext];

  if (!v7)
  {
    [*(a1 + 32) setPersistentRunningContext:*(a1 + 40)];
    [*(a1 + 32) setPersistentRunningAttribution:*(a1 + 48)];
    v9 = [*(a1 + 32) remoteAlertPresenter];
    if (v9)
    {
      v10 = v9;
      v11 = [*(a1 + 32) remoteAlertPresenter];
      v12 = [v11 alertIsActive];

      if ((v12 & 1) == 0)
      {
        v13 = getWFDialogLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136315138;
          v28 = "[WFDialogPresentationManager beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke";
          _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Activating remote alert in persistent mode, because workflow started running", &v27, 0xCu);
        }

        [*(a1 + 32) activateRemoteAlert];
      }
    }

    goto LABEL_24;
  }

  v8 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v27 = 136315138;
    v28 = "[WFDialogPresentationManager beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke";
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Already showing persistent UI. Running multiple shortcuts in persistent mode, concurrently, is not supported. This should've been caught in the run coordinator before starting the shortcut run, this shortcut won't run properly.", &v27, 0xCu);
  }

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowStatus
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  hasSystemAperture = [currentDevice hasSystemAperture];

  return hasSystemAperture;
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  queue = [(WFDialogPresentationManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__WFDialogPresentationManager_assertion_didInvalidateWithError___block_invoke;
  v8[3] = &unk_2788FFFC0;
  v9 = assertionCopy;
  selfCopy = self;
  v7 = assertionCopy;
  dispatch_async(queue, v8);
}

uint64_t __64__WFDialogPresentationManager_assertion_didInvalidateWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setStatusPresenterAssertion:0];
}

- (void)acquireStatusPresenterAssertionIfNecessary
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WFDialogPresentationManager_acquireStatusPresenterAssertionIfNecessary__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __73__WFDialogPresentationManager_acquireStatusPresenterAssertionIfNecessary__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statusPresenterAssertion];
  v3 = [v2 isValid];

  if ((v3 & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277CC1E58]);
    v5 = *MEMORY[0x277D7A2F0];
    v18 = 0;
    v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:0 personaUniqueString:&stru_2845DDD10 error:&v18];
    v7 = v18;
    if (v6)
    {
      v8 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v6];
      v9 = [MEMORY[0x277D47008] targetWithProcessIdentity:v8];
      v10 = objc_alloc(MEMORY[0x277D46DB8]);
      v11 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.shortcuts" name:@"RunningBackground"];
      v19 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v13 = [v10 initWithExplanation:@"Shortcuts Status" target:v9 attributes:v12];

      [v13 addObserver:*(a1 + 32)];
      v17 = 0;
      LOBYTE(v12) = [v13 acquireWithError:&v17];
      v14 = v17;

      if ((v12 & 1) == 0)
      {
        v15 = getWFDialogLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v21 = "[WFDialogPresentationManager acquireStatusPresenterAssertionIfNecessary]_block_invoke";
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to acquire assertion for view service to present status: error: %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) setStatusPresenterAssertion:v13];
    }

    else
    {
      v8 = getWFDialogLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[WFDialogPresentationManager acquireStatusPresenterAssertionIfNecessary]_block_invoke";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Unable to find identity for view service, bailing assertion acquiring: %@", buf, 0x16u);
      }

      v14 = v7;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)statusPresenterDidDisconnect
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFDialogPresentationManager_statusPresenterDidDisconnect__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__WFDialogPresentationManager_statusPresenterDidDisconnect__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusPresenterAssertion];
  [v1 invalidate];
}

- (void)statusPresenterDidConnectToService:(id)service
{
  serviceCopy = service;
  queue = [(WFDialogPresentationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__WFDialogPresentationManager_statusPresenterDidConnectToService___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__WFDialogPresentationManager_statusPresenterDidConnectToService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) acquireStatusPresenterAssertionIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setConnectedStatusPresenter:v3];
}

- (void)workflowStatusHostBeginConnection
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WFDialogPresentationManager_workflowStatusHostBeginConnection__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__WFDialogPresentationManager_workflowStatusHostBeginConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextsAwaitingStatusPresentation];
  if ([v2 count])
  {
  }

  else
  {
    v3 = [*(a1 + 32) attributionsAwaitingStatusPresentation];
    v4 = [v3 count];

    if (!v4)
    {
      return;
    }
  }

  v5 = [*(a1 + 32) contextsAwaitingStatusPresentation];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [*(a1 + 32) contextsAwaitingStatusPresentation];
      v9 = [v8 objectAtIndex:v7];

      v10 = [*(a1 + 32) attributionsAwaitingStatusPresentation];
      v11 = [v10 objectAtIndex:v7];

      v12 = [*(a1 + 32) connectedStatusPresenter];
      [v12 workflowStatusWorkflowWillBeginRunningWithAttribution:v11 context:v9];

      ++v7;
      v13 = [*(a1 + 32) contextsAwaitingStatusPresentation];
      v14 = [v13 count];
    }

    while (v7 < v14);
  }

  v15 = [*(a1 + 32) contextsAwaitingStatusPresentation];
  [v15 removeAllObjects];

  v16 = [*(a1 + 32) attributionsAwaitingStatusPresentation];
  [v16 removeAllObjects];
}

- (void)dialogAlertPresenterDidInvalidateAlert:(id)alert
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WFDialogPresentationManager_dialogAlertPresenterDidInvalidateAlert___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__WFDialogPresentationManager_dialogAlertPresenterDidInvalidateAlert___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dismissalReason];

  if (!v2)
  {
    [*(a1 + 32) setDismissalReason:*MEMORY[0x277D7A7D8]];
  }

  v3 = [*(a1 + 32) presentedDialog];

  if (v3)
  {
    v4 = [*(a1 + 32) screenOnObserver];
    v5 = [v4 screenOn];

    if (v5)
    {
      v6 = [*(a1 + 32) presentedDialog];
      v7 = [v6 response];

      v8 = getWFDialogLogObject();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          v17 = 136315138;
          v18 = "[WFDialogPresentationManager dialogAlertPresenterDidInvalidateAlert:]_block_invoke";
          _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Cancelling workflow execution, since the remote alert was invalidated and the screen is still on", &v17, 0xCu);
        }

        [*(a1 + 32) cancelWorkflow];
      }

      else
      {
        if (v9)
        {
          v17 = 136315138;
          v18 = "[WFDialogPresentationManager dialogAlertPresenterDidInvalidateAlert:]_block_invoke";
          _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Sending cancelled dialog response, since the remote alert was invalidated and the screen is still on", &v17, 0xCu);
        }

        v10 = [*(a1 + 32) presentedDialog];
        v11 = [v10 completionHandler];
        v12 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
        (v11)[2](v11, v12);
      }
    }

    [*(a1 + 32) setPresentedDialog:0];
  }

  v13 = [*(a1 + 32) remoteAlertPresenter];
  [v13 deactivateAlert];

  [*(a1 + 32) queue_connectedRemoteAlertDidDisconnect];
  if ([*(a1 + 32) queue_hasMoreDialogsToPresent])
  {
    v14 = [*(a1 + 32) screenOnObserver];
    v15 = [v14 screenOn];

    if (v15)
    {
      [*(a1 + 32) activateRemoteAlert];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dialogAlertPresenterDidDeactivateAlert:(id)alert
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WFDialogPresentationManager_dialogAlertPresenterDidDeactivateAlert___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __70__WFDialogPresentationManager_dialogAlertPresenterDidDeactivateAlert___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) presentedDialog];
  v3 = [v2 context];
  v4 = [v3 allowsDialogNotifications];

  v5 = [*(a1 + 32) presentedDialog];
  v6 = v5;
  if (v4)
  {

    if (v6)
    {
      [*(a1 + 32) queue_clearPersistentModeStateIfNecessary];
      v7 = *(a1 + 32);
      v8 = [v7 presentedDialog];
      v9 = [v8 request];
      v10 = [*(a1 + 32) presentedDialog];
      v11 = [v10 presentationMode];
      v12 = [*(a1 + 32) presentedDialog];
      v13 = [v12 context];
      [v7 postNotificationWithRequest:v9 presentationMode:v11 context:v13];

      v14 = *(a1 + 32);
      v15 = [v14 presentedDialog];
      [v14 trackSuspendShortcutWithPresentedDialog:v15];
    }

    v16 = getWFDialogLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[WFDialogPresentationManager dialogAlertPresenterDidDeactivateAlert:]_block_invoke";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s dialogAlertPresenterDidDeactivateAlert", &v26, 0xCu);
    }
  }

  else
  {
    v17 = [v5 response];

    if (v17)
    {
      v18 = getWFDialogLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[WFDialogPresentationManager dialogAlertPresenterDidDeactivateAlert:]_block_invoke";
        _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEFAULT, "%s Cancelling workflow execution, since the remote alert was deactivated and we already sent a response", &v26, 0xCu);
      }

      [*(a1 + 32) cancelWorkflow];
    }

    else
    {
      v19 = [*(a1 + 32) presentedDialog];
      v20 = [v19 completionHandler];

      if (v20)
      {
        v21 = [*(a1 + 32) presentedDialog];
        v22 = [v21 completionHandler];
        v23 = [objc_alloc(MEMORY[0x277D79F38]) initWithResponseCode:3];
        (v22)[2](v22, v23);
      }
    }

    [*(a1 + 32) setPresentedDialog:0];
  }

  result = [*(a1 + 32) queue_deactivateRemoteAlertAndInvalidateConnection];
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dialogAlertPresenterDidDisconnectFromAlert:(id)alert
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFDialogPresentationManager_dialogAlertPresenterDidDisconnectFromAlert___block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __74__WFDialogPresentationManager_dialogAlertPresenterDidDisconnectFromAlert___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) presentedDialog];

  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[WFDialogPresentationManager dialogAlertPresenterDidDisconnectFromAlert:]_block_invoke";
      _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_ERROR, "%s Connection unexpectedly invalidated while a dialog was presented. Sending a cancelled response.", &v9, 0xCu);
    }

    v4 = [*(a1 + 32) presentedDialog];
    v5 = [v4 completionHandler];
    v6 = [objc_alloc(MEMORY[0x277D79F38]) initWithResponseCode:1];
    (v5)[2](v5, v6);

    [*(a1 + 32) setPresentedDialog:0];
  }

  result = [*(a1 + 32) queue_connectedRemoteAlertDidDisconnect];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dialogAlertPresenter:(id)presenter didConnectToAlert:(id)alert
{
  alertCopy = alert;
  queue = [(WFDialogPresentationManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__WFDialogPresentationManager_dialogAlertPresenter_didConnectToAlert___block_invoke;
  v8[3] = &unk_2788FFFC0;
  v8[4] = self;
  v9 = alertCopy;
  v7 = alertCopy;
  dispatch_async(queue, v8);
}

- (void)cancelWorkflow
{
  v17 = *MEMORY[0x277D85DE8];
  presentedDialog = [(WFDialogPresentationManager *)self presentedDialog];
  context = [presentedDialog context];

  if (context)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    connectedRunners = [(WFDialogPresentationManager *)self connectedRunners];
    v6 = [connectedRunners countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(connectedRunners);
          }

          remoteObjectProxy = [*(*(&v12 + 1) + 8 * v9) remoteObjectProxy];
          [remoteObjectProxy presenterRequestedWorkflowStopForContext:context];

          ++v9;
        }

        while (v7 != v9);
        v7 = [connectedRunners countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestDismissalWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(WFDialogPresentationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WFDialogPresentationManager_requestDismissalWithReason___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

uint64_t __58__WFDialogPresentationManager_requestDismissalWithReason___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D7A7E0];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *MEMORY[0x277D7A7E0];
  }

  [v3 setDismissalReason:v6];
  v7 = [*(a1 + 32) presentedDialog];

  if (v7)
  {
    v8 = getWFDialogLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[WFDialogPresentationManager requestDismissalWithReason:]_block_invoke";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Sending cancelled dialog response, since user cancelled the dialog", &v20, 0xCu);
    }

    v9 = [*(a1 + 32) presentedDialog];
    v10 = [v9 response];

    v11 = *(a1 + 32);
    if (v10)
    {
      [v11 cancelWorkflow];
    }

    else
    {
      v12 = [v11 presentedDialog];
      v13 = [v12 completionHandler];
      v14 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
      (v13)[2](v13, v14);

      [*(a1 + 32) setPresentedDialog:0];
    }
  }

  v15 = [*(a1 + 32) queue_hasMoreDialogsToPresent];
  v16 = getWFDialogLogObject();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v20 = 136315138;
      v21 = "[WFDialogPresentationManager requestDismissalWithReason:]_block_invoke";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s Presenting another dialog, even though the user cancelled the current one, since it's likely from another shortcut.", &v20, 0xCu);
    }

    result = [*(a1 + 32) queue_presentNextDialog];
  }

  else
  {
    if (v17)
    {
      v20 = 136315138;
      v21 = "[WFDialogPresentationManager requestDismissalWithReason:]_block_invoke";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s Dismissing the dialog, since the user cancelled.", &v20, 0xCu);
    }

    result = [*(a1 + 32) queue_deactivateRemoteAlertAndInvalidateConnection];
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)beginConnection
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFDialogPresentationManager_beginConnection__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__WFDialogPresentationManager_beginConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completePersistentModeBlockAwaitingRemoteAlertReactivation];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 completePersistentModeAwaitingRemoteAlertReactivationSuccess];
    v13 = [*(a1 + 32) completePersistentModeBlockAwaitingRemoteAlertReactivation];
    [*(a1 + 32) setCompletePersistentModeBlockAwaitingRemoteAlertReactivation:0];
    [*(a1 + 32) setCompletePersistentModeAwaitingRemoteAlertReactivationSuccess:0];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v7 = [*(a1 + 32) persistentRunningContext];
    [v5 completePersistentModeWithSuccess:v6 runningContext:v7 completion:v13];
  }

  else
  {
    v8 = [v3 persistentRunningContext];

    if (v8)
    {
      v9 = [*(a1 + 32) connectedRemoteAlert];
      v10 = [*(a1 + 32) persistentRunningContext];
      v11 = [*(a1 + 32) persistentRunningAttribution];
      [v9 preparePersistentChromeWithContext:v10 attribution:v11];
    }

    if ([*(a1 + 32) queue_hasMoreDialogsToPresent])
    {
      v12 = *(a1 + 32);

      [v12 queue_presentNextDialog];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue2 = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278900198;
  selfCopy = self;
  v15 = &v16;
  v13 = connectionCopy;
  v10 = connectionCopy;
  dispatch_sync(queue2, block);

  LOBYTE(connectionCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return connectionCopy;
}

void __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) valueForEntitlement:@"com.apple.shortcuts.dialogpresentation"];
  v3 = [v2 BOOLValue];

  v4 = getWFDialogLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[WFDialogPresentationManager listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Received incoming XPC connection", buf, 0xCu);
    }

    v6 = WFUIPresenterXPCInterface();
    [*(a1 + 32) setExportedInterface:v6];

    [*(a1 + 32) setExportedObject:*(a1 + 40)];
    v7 = WFUIPresenterHostXPCInterface();
    [*(a1 + 32) setRemoteObjectInterface:v7];

    v8 = *(a1 + 32);
    objc_initWeak(buf, *(a1 + 40));
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_207;
    v19[3] = &unk_2788FEA10;
    objc_copyWeak(&v21, buf);
    v9 = v8;
    v20 = v9;
    [*(a1 + 32) setInterruptionHandler:v19];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_2;
    v16 = &unk_2788FEA10;
    objc_copyWeak(&v18, buf);
    v10 = v9;
    v17 = v10;
    [*(a1 + 32) setInvalidationHandler:&v13];
    [*(a1 + 32) resume];
    v11 = [*(a1 + 40) connectedRunners];
    [v11 addObject:*(a1 + 32)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[WFDialogPresentationManager listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Rejecting incoming connection, since it is missing the com.apple.shortcuts.dialogpresentation entitlement", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_207(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v9 = "[WFDialogPresentationManager listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_ERROR, "%s XPC connection interrupted", buf, 0xCu);
  }

  v4 = [WeakRetained queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_208;
  v6[3] = &unk_2788FFFC0;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  dispatch_sync(v4, v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v9 = "[WFDialogPresentationManager listener:shouldAcceptNewConnection:]_block_invoke_2";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_ERROR, "%s XPC connection invalidated", buf, 0xCu);
  }

  v4 = [WeakRetained queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_209;
  v6[3] = &unk_2788FFFC0;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  dispatch_sync(v4, v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_209(uint64_t a1)
{
  v2 = [*(a1 + 32) connectedRunners];
  [v2 removeObject:*(a1 + 40)];
}

void __66__WFDialogPresentationManager_listener_shouldAcceptNewConnection___block_invoke_208(uint64_t a1)
{
  v2 = [*(a1 + 32) connectedRunners];
  [v2 removeObject:*(a1 + 40)];
}

- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode context:(id)context
{
  requestCopy = request;
  contextCopy = context;
  queue = [(WFDialogPresentationManager *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__WFDialogPresentationManager_postNotificationWithRequest_presentationMode_context___block_invoke;
  v13[3] = &unk_2788FE9E8;
  v14 = requestCopy;
  v15 = contextCopy;
  selfCopy = self;
  modeCopy = mode;
  v11 = contextCopy;
  v12 = requestCopy;
  dispatch_async(queue, v13);
}

void __84__WFDialogPresentationManager_postNotificationWithRequest_presentationMode_context___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v20 = "[WFDialogPresentationManager postNotificationWithRequest:presentationMode:context:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Posting notification for dialog request: %@", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 48) connectedRunners];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) remoteObjectProxy];
          [v9 presenterRequestedWorkflowPauseForContext:*(a1 + 40) dialogRequest:*(a1 + 32) completionHandler:&__block_literal_global_1695];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    if (*(a1 + 56) >= 3uLL)
    {
      v10 = 3;
    }

    else
    {
      v10 = *(a1 + 56);
    }

    v11 = [*(a1 + 48) notificationManager];
    [v11 postNotificationWithRequest:*(a1 + 32) presentationMode:v10 runningContext:*(a1 + 40)];
  }

  else
  {
    v11 = getWFDialogLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 32);
      *buf = 136315394;
      v20 = "[WFDialogPresentationManager postNotificationWithRequest:presentationMode:context:]_block_invoke";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_FAULT, "%s Attempting to post notification for request: %@ with no running context", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)activateStatusPresenter
{
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WFDialogPresentationManager_activateStatusPresenter__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__WFDialogPresentationManager_activateStatusPresenter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusPresenter];
  [v1 activateAlertInMainSceneOfApplicationWithBundleIdentifier:0];
}

- (void)activateRemoteAlertTiedToBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFDialogPresentationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__WFDialogPresentationManager_activateRemoteAlertTiedToBundleIdentifier___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

void __73__WFDialogPresentationManager_activateRemoteAlertTiedToBundleIdentifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) screenOnObserver];
  v3 = [v2 screenOn];

  if (v3)
  {
    v7 = [*(a1 + 32) remoteAlertPresenter];
    [v7 activateAlertInMainSceneOfApplicationWithBundleIdentifier:*(a1 + 40)];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = getWFDialogLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[WFDialogPresentationManager activateRemoteAlertTiedToBundleIdentifier:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Attempting to activate remote alert while the display is off, ignoring request", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)queue_clearPersistentModeStateIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  persistentRunningContext = [(WFDialogPresentationManager *)self persistentRunningContext];
  if (persistentRunningContext)
  {
  }

  else
  {
    persistentRunningAttribution = [(WFDialogPresentationManager *)self persistentRunningAttribution];

    if (!persistentRunningAttribution)
    {
      goto LABEL_7;
    }
  }

  v6 = getWFDialogLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    persistentRunningContext2 = [(WFDialogPresentationManager *)self persistentRunningContext];
    v10 = 136315394;
    v11 = "[WFDialogPresentationManager queue_clearPersistentModeStateIfNecessary]";
    v12 = 2112;
    v13 = persistentRunningContext2;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Clearing persistent state (%@)", &v10, 0x16u);
  }

  [(WFDialogPresentationManager *)self setPersistentRunningContext:0];
  [(WFDialogPresentationManager *)self setPersistentRunningAttribution:0];
  persistentPresentationQueue = [(WFDialogPresentationManager *)self persistentPresentationQueue];
  [persistentPresentationQueue removeAllObjects];

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)queue_deactivateRemoteAlertAndInvalidateConnection
{
  v9 = *MEMORY[0x277D85DE8];
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFDialogPresentationManager queue_deactivateRemoteAlertAndInvalidateConnection]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Deactivating remote alert, and invalidating the XPC connection.", &v7, 0xCu);
  }

  [(WFDialogPresentationManager *)self queue_connectedRemoteAlertDidDisconnect];
  remoteAlertPresenter = [(WFDialogPresentationManager *)self remoteAlertPresenter];
  [remoteAlertPresenter deactivateAlert];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)queue_presentNextDialog
{
  v28 = *MEMORY[0x277D85DE8];
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  persistentRunningContext = [(WFDialogPresentationManager *)self persistentRunningContext];
  v5 = persistentRunningContext == 0;

  v6 = getWFDialogLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315138;
      v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Dequeueing dialog from transient queue.", buf, 0xCu);
    }

    otherPresentationQueue = [(WFDialogPresentationManager *)self otherPresentationQueue];
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Dequeueing dialog from persistent queue.", buf, 0xCu);
    }

    otherPresentationQueue = [(WFDialogPresentationManager *)self persistentPresentationQueue];
  }

  v9 = otherPresentationQueue;
  if ([otherPresentationQueue count])
  {
    connectedRemoteAlert = [(WFDialogPresentationManager *)self connectedRemoteAlert];
    if (connectedRemoteAlert)
    {
      presentedDialog = [(WFDialogPresentationManager *)self presentedDialog];

      if (!presentedDialog)
      {
        firstObject = [v9 firstObject];
        [v9 removeObjectAtIndex:0];
        v17 = getWFDialogLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          request = [firstObject request];
          *buf = 136315394;
          v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
          v26 = 2112;
          v27 = request;
          _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Asking connected dialog to show request: %@", buf, 0x16u);
        }

        [(WFDialogPresentationManager *)self setPresentedDialog:firstObject];
        objc_initWeak(buf, self);
        request2 = [firstObject request];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __54__WFDialogPresentationManager_queue_presentNextDialog__block_invoke;
        v21[3] = &unk_2788FE9C0;
        objc_copyWeak(&v23, buf);
        v12 = firstObject;
        v22 = v12;
        [connectedRemoteAlert showDialogRequest:request2 completionHandler:v21];

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
        goto LABEL_21;
      }

      v12 = getWFDialogLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
        v13 = "%s Attempted to present a dialog while another dialog is still visible. Ignoring.";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_23103C000, v14, v15, v13, buf, 0xCu);
      }
    }

    else
    {
      v12 = getWFDialogLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
        v13 = "%s Unable to present any dialogs, since the UI process is not connected";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  connectedRemoteAlert = getWFDialogLogObject();
  if (os_log_type_enabled(connectedRemoteAlert, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[WFDialogPresentationManager queue_presentNextDialog]";
    _os_log_impl(&dword_23103C000, connectedRemoteAlert, OS_LOG_TYPE_DEFAULT, "%s Presentation queue is empty, so not presenting any dialogs.", buf, 0xCu);
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
}

void __54__WFDialogPresentationManager_queue_presentNextDialog__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WFDialogPresentationManager_queue_presentNextDialog__block_invoke_2;
  block[3] = &unk_2789000F8;
  v8 = v3;
  v9 = WeakRetained;
  v10 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

void __54__WFDialogPresentationManager_queue_presentNextDialog__block_invoke_2(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v13 = 136315394;
    v14 = "[WFDialogPresentationManager queue_presentNextDialog]_block_invoke_2";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Received response from presented dialog: %@", &v13, 0x16u);
  }

  if ([a1[4] shouldDismissDialogInTransientMode])
  {
    [a1[5] setPresentedDialog:0];
  }

  else
  {
    v4 = a1[4];
    v5 = [a1[5] presentedDialog];
    [v5 setResponse:v4];
  }

  v6 = [a1[6] completionHandler];
  (v6)[2](v6, a1[4]);

  v7 = [a1[5] persistentPresentationQueue];
  if ([v7 count])
  {

LABEL_9:
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[WFDialogPresentationManager queue_presentNextDialog]_block_invoke";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s There are more dialogs to present, so presenting the next one.", &v13, 0xCu);
    }

    [a1[5] queue_presentNextDialog];
    goto LABEL_12;
  }

  v8 = [a1[5] otherPresentationQueue];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_9;
  }

  if (([a1[4] isCancelled] & 1) == 0)
  {
    v12 = [a1[5] persistentRunningContext];
    if (v12)
    {

      goto LABEL_12;
    }

    if (![a1[4] shouldDismissDialogInTransientMode])
    {
      goto LABEL_12;
    }
  }

  [a1[5] queue_deactivateRemoteAlertAndInvalidateConnection];
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFDialogPresentationManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke;
  v8[3] = &unk_2788FF680;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

void __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 presentedDialog];
  [v2 logFinishDialogPresentationWithPresentedDialog:v3];

  [*(a1 + 32) setPresentedDialog:0];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_2;
  aBlock[3] = &unk_2788FF680;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v13 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) connectedRemoteAlert];

  if (v6)
  {
    v7 = [*(a1 + 32) connectedRemoteAlert];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_3;
    v11[3] = &unk_278900148;
    v11[4] = *(a1 + 32);
    [v7 dismissPresentedContentWithCompletionHandler:v11];

    v8 = [*(a1 + 32) contentDismissalCompletionHandlers];
    v9 = [v5 copy];
    v10 = _Block_copy(v9);
    [v8 addObject:v10];
  }

  else
  {
    v5[2](v5);
  }
}

void __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 presentationManager:*(a1 + 32) dismissPresentedContentWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_4;
  block[3] = &unk_278900148;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __90__WFDialogPresentationManager_dismissPresentedContentForRunningContext_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentRunningContext];

  if (!v2)
  {
    [*(a1 + 32) queue_deactivateRemoteAlertAndInvalidateConnection];
  }

  v3 = [*(a1 + 32) contentDismissalCompletionHandlers];
  v6 = [v3 firstObject];

  v4 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
    v5 = [*(a1 + 32) contentDismissalCompletionHandlers];
    [v5 removeObjectAtIndex:0];

    v4 = v6;
  }
}

- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  queue = [(WFDialogPresentationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__WFDialogPresentationManager_showDialogRequest_runningContext_completionHandler___block_invoke;
  block[3] = &unk_2788FF548;
  v20 = handlerCopy;
  v21 = a2;
  v17 = contextCopy;
  selfCopy = self;
  v19 = requestCopy;
  v13 = handlerCopy;
  v14 = requestCopy;
  v15 = contextCopy;
  dispatch_async(queue, block);
}

void __82__WFDialogPresentationManager_showDialogRequest_runningContext_completionHandler___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"WFDialogPresentationManager.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v2 = [*(a1 + 40) persistentRunningContext];
  v3 = [v2 isEqual:*(a1 + 32)];

  v4 = v3;
  [*(a1 + 40) setDismissalReason:0];
  [*(a1 + 40) logStartDialogPresentationWithRequest:*(a1 + 48) presentationMode:v3];
  if ([*(a1 + 32) allowsDialogNotifications] && (objc_msgSend(*(a1 + 40), "screenOnObserver"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "screenOn"), v5, (v6 & 1) == 0))
  {
    v17 = getWFDialogLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Screen is off, so posting dialog request as a notification.", buf, 0xCu);
    }

    [*(a1 + 40) setDismissalReason:*MEMORY[0x277D7A7D0]];
    [*(a1 + 40) logFinishDialogPresentationWithRequest:*(a1 + 48) presentationMode:v4 automationType:0];
    [*(a1 + 40) postNotificationWithRequest:*(a1 + 48) presentationMode:v4 context:*(a1 + 32)];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v4)
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 textFieldConfiguration];
          v10 = [v9 copy];

          [v10 setFocusImmediatelyWhenPresented:1];
          v11 = objc_alloc(MEMORY[0x277D79FE8]);
          v12 = [v8 message];
          v13 = [v8 attribution];
          v14 = [v8 prompt];
          v15 = [v8 parameterKey];
          v16 = [v11 initWithTextFieldConfiguration:v10 message:v12 attribution:v13 prompt:v14 parameterKey:v15];

          v7 = v16;
        }

        else
        {
          v10 = v8;
          v8 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v18 = *(a1 + 48);
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v18 requestBySettingFocusImmediatelyWhenPresented:1];

          v7 = v19;
        }
      }
    }

    v20 = [WFPresentedDialog alloc];
    v21 = *(a1 + 32);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __82__WFDialogPresentationManager_showDialogRequest_runningContext_completionHandler___block_invoke_194;
    v54[3] = &unk_2788FE998;
    v55 = *(a1 + 48);
    v53 = *(a1 + 32);
    v22 = v53.i64[0];
    v56 = vextq_s8(v53, v53, 8uLL);
    v57 = *(a1 + 56);
    v23 = [(WFPresentedDialog *)v20 initWithRequest:v7 presentationMode:v4 runningContext:v21 completionHandler:v54];
    v24 = getWFDialogLogObject();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v25)
      {
        v26 = *(a1 + 48);
        *buf = 136315394;
        v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke_2";
        v60 = 2112;
        v61 = v26;
        _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_DEFAULT, "%s Adding %@ to persistent presentation queue.", buf, 0x16u);
      }

      v27 = [*(a1 + 40) persistentPresentationQueue];
    }

    else
    {
      if (v25)
      {
        v28 = *(a1 + 48);
        *buf = 136315394;
        v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
        v60 = 2112;
        v61 = v28;
        _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_DEFAULT, "%s Adding %@ to transient presentation queue.", buf, 0x16u);
      }

      v27 = [*(a1 + 40) otherPresentationQueue];
    }

    v29 = v27;
    [v27 addObject:v23];

    v30 = [*(a1 + 40) remoteAlertPresenter];

    if (v30)
    {
      v31 = [*(a1 + 40) presentedDialog];
      if (v31)
      {
        v32 = v31;
        v33 = [*(a1 + 40) presentedDialog];
        v34 = [v33 response];
        v35 = [v34 shouldDismissDialogInTransientMode];

        if ((v35 & 1) == 0)
        {
          v36 = getWFDialogLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
            _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_DEFAULT, "%s There's a presented dialog. We are ignoring it and moving on because the presented dialog already has a response and shouldDismissDialogInTransientMode was NO, which means it was likely just waiting for a followup.", buf, 0xCu);
          }

          [*(a1 + 40) setPresentedDialog:0];
        }
      }

      v37 = *(a1 + 48);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v39 = [*(a1 + 40) remoteAlertPresenter];
      v40 = [v39 alertIsActive];

      if ((v40 & 1) == 0)
      {
        v41 = getWFDialogLogObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
          _os_log_impl(&dword_23103C000, v41, OS_LOG_TYPE_INFO, "%s No remote alert is active, so activating one.", buf, 0xCu);
        }

        if (isKindOfClass)
        {
          v42 = *(a1 + 48);
          if (v42)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          v45 = [v44 applicationBundleIdentifier];
          [*(a1 + 40) activateRemoteAlertTiedToBundleIdentifier:v45];
        }

        else
        {
          [*(a1 + 40) activateRemoteAlert];
        }
      }

      v46 = [*(a1 + 40) connectedRemoteAlert];
      if (v46)
      {
        v47 = v46;
        v48 = [*(a1 + 40) presentedDialog];
        if (v48)
        {
        }

        else
        {
          v49 = [*(a1 + 40) queue_hasMoreDialogsToPresent];

          if (v49)
          {
            v50 = getWFDialogLogObject();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v59 = "[WFDialogPresentationManager showDialogRequest:runningContext:completionHandler:]_block_invoke";
              _os_log_impl(&dword_23103C000, v50, OS_LOG_TYPE_INFO, "%s There is a connected remote alert, so asking it to present a dialog.", buf, 0xCu);
            }

            [*(a1 + 40) queue_presentNextDialog];
          }
        }
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __82__WFDialogPresentationManager_showDialogRequest_runningContext_completionHandler___block_invoke_194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v17 = v3;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v6 && v8)
  {
    v9 = [v6 configuration];
    v10 = [v9 workflowReference];
    if (v10)
    {
      v11 = [*(a1 + 40) delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [*(a1 + 40) delegate];
        v14 = *(a1 + 40);
        v15 = [v8 promptedStatesData];
        v16 = [v9 actionUUID];
        [v13 presentationManager:v14 updateSmartPromptStateData:v15 actionUUID:v16 context:*(a1 + 48) reference:v10];
      }
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (BOOL)hasPersistentState
{
  selfCopy = self;
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(WFDialogPresentationManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__WFDialogPresentationManager_hasPersistentState__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __49__WFDialogPresentationManager_hasPersistentState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentRunningContext];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)queue_hasMoreDialogsToPresent
{
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  persistentRunningContext = [(WFDialogPresentationManager *)self persistentRunningContext];
  if (persistentRunningContext)
  {
    [(WFDialogPresentationManager *)self persistentPresentationQueue];
  }

  else
  {
    [(WFDialogPresentationManager *)self otherPresentationQueue];
  }
  v5 = ;
  v6 = [v5 count];

  return v6 != 0;
}

- (void)queue_connectedRemoteAlertDidDisconnect
{
  v19 = *MEMORY[0x277D85DE8];
  queue = [(WFDialogPresentationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = getWFDialogLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[WFDialogPresentationManager queue_connectedRemoteAlertDidDisconnect]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Connected remote alert did disconnect", buf, 0xCu);
  }

  [(WFDialogPresentationManager *)self setConnectedRemoteAlert:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentDismissalCompletionHandlers = [(WFDialogPresentationManager *)self contentDismissalCompletionHandlers];
  v6 = [contentDismissalCompletionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(contentDismissalCompletionHandlers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10)
        {
          (*(v10 + 16))();
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [contentDismissalCompletionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedIgnoredNotifications:(id)notifications
{
  notificationsCopy = notifications;
  notificationManager = [(WFDialogPresentationManager *)self notificationManager];
  [notificationManager handleRemovedIgnoredNotifications:notificationsCopy];
}

- (void)dealloc
{
  [(WFScreenOnObserver *)self->_screenOnObserver stop];
  v3.receiver = self;
  v3.super_class = WFDialogPresentationManager;
  [(WFDialogPresentationManager *)&v3 dealloc];
}

- (WFDialogPresentationManager)initWithListener:(id)listener notificationManager:(id)manager dialogAlertPresenter:(id)presenter screenOnObserver:(id)observer
{
  listenerCopy = listener;
  managerCopy = manager;
  presenterCopy = presenter;
  observerCopy = observer;
  v37.receiver = self;
  v37.super_class = WFDialogPresentationManager;
  v15 = [(WFDialogPresentationManager *)&v37 init];
  if (v15)
  {
    [presenterCopy setDelegate:v15];
    objc_storeStrong(&v15->_remoteAlertPresenter, presenter);
    v16 = objc_opt_new();
    [v16 setStatusPresenterDelegate:v15];
    statusPresenter = v15->_statusPresenter;
    v15->_statusPresenter = v16;
    v36 = v16;

    v18 = objc_opt_new();
    contextsAwaitingStatusPresentation = v15->_contextsAwaitingStatusPresentation;
    v15->_contextsAwaitingStatusPresentation = v18;

    v20 = objc_opt_new();
    attributionsAwaitingStatusPresentation = v15->_attributionsAwaitingStatusPresentation;
    v15->_attributionsAwaitingStatusPresentation = v20;

    objc_storeStrong(&v15->_listener, listener);
    [(NSXPCListener *)v15->_listener setDelegate:v15];
    v22 = objc_opt_new();
    connectedRunners = v15->_connectedRunners;
    v15->_connectedRunners = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_USER_INITIATED, 0);
    v26 = dispatch_queue_create("com.apple.shortcuts.WFDialogPresentationManager", v25);
    queue = v15->_queue;
    v15->_queue = v26;

    v28 = objc_opt_new();
    persistentPresentationQueue = v15->_persistentPresentationQueue;
    v15->_persistentPresentationQueue = v28;

    v30 = objc_opt_new();
    otherPresentationQueue = v15->_otherPresentationQueue;
    v15->_otherPresentationQueue = v30;

    v32 = objc_opt_new();
    contentDismissalCompletionHandlers = v15->_contentDismissalCompletionHandlers;
    v15->_contentDismissalCompletionHandlers = v32;

    objc_storeStrong(&v15->_notificationManager, manager);
    objc_storeStrong(&v15->_screenOnObserver, observer);
    [(WFScreenOnObserver *)v15->_screenOnObserver setDelegate:v15];
    [(WFScreenOnObserver *)v15->_screenOnObserver start];

    v34 = v15;
  }

  return v15;
}

- (WFDialogPresentationManager)initWithNotificationManager:(id)manager
{
  v4 = MEMORY[0x277CCAE98];
  managerCopy = manager;
  v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.shortcuts.dialogpresentation"];
  v7 = objc_alloc_init(WFSpringBoardRemoteAlertPresenter);
  v8 = objc_alloc_init(MEMORY[0x277D7C848]);
  v9 = [(WFDialogPresentationManager *)self initWithListener:v6 notificationManager:managerCopy dialogAlertPresenter:v7 screenOnObserver:v8];

  v10 = v9;
  [v6 resume];

  return v10;
}

@end