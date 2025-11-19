@interface WFSuspendedDialogRestoration
- (BOOL)presenterShouldShowRequest:(id)a3 runningContext:(id)a4 withCompletionHandler:(id)a5;
- (BOOL)shortcutsAppIsForegroundInLayout:(id)a3;
- (WFSuspendedDialogRestoration)initWithUserInterfacePresenter:(id)a3;
- (void)beginObservingApplicationState;
- (void)presenterDidReceiveSuspendedResponseForRequest:(id)a3 runningContext:(id)a4 withCompletionHandler:(id)a5;
- (void)reset;
- (void)stopObservingApplicationState;
@end

@implementation WFSuspendedDialogRestoration

- (void)presenterDidReceiveSuspendedResponseForRequest:(id)a3 runningContext:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v8 = a4;
  [(WFSuspendedDialogRestoration *)self setSuspendedRequest:a3];
  [(WFSuspendedDialogRestoration *)self setSuspendedRunningContext:v8];

  [(WFSuspendedDialogRestoration *)self setSuspendedRequestCompletion:v9];
}

- (BOOL)presenterShouldShowRequest:(id)a3 runningContext:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WFSuspendedDialogRestoration *)self reset];
  if (![v9 isShortcutsApp])
  {
    goto LABEL_7;
  }

  v11 = [(WFSuspendedDialogRestoration *)self layoutMonitor];

  if (v11)
  {
    [(WFSuspendedDialogRestoration *)self stopObservingApplicationState];
  }

  [(WFSuspendedDialogRestoration *)self beginObservingApplicationState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFSuspendedDialogRestoration *)self setSuspendedRequest:v8];
    [(WFSuspendedDialogRestoration *)self setSuspendedRunningContext:v9];
    [(WFSuspendedDialogRestoration *)self setSuspendedRequestCompletion:v10];
  }

  v12 = [(WFSuspendedDialogRestoration *)self screenOnObserver];
  v13 = [v12 screenOn];

  if ((v13 & 1) == 0)
  {
    [(WFSuspendedDialogRestoration *)self setScreenDidTurnOffDuringActiveRequest:1];
    v14 = 0;
  }

  else
  {
LABEL_7:
    v14 = 1;
  }

  return v14;
}

- (BOOL)shortcutsAppIsForegroundInLayout:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [a3 elements];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    v8 = *MEMORY[0x1E699F8A0];
    v9 = *MEMORY[0x1E69E0FB0];
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v8];

      if (v13)
      {
        break;
      }

      if ([v11 isUIApplicationElement])
      {
        v14 = [v11 bundleIdentifier];
        v15 = [v14 isEqualToString:v9];

        v6 |= v15;
      }

      if (v5 == ++v10)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  v6 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)reset
{
  [(WFSuspendedDialogRestoration *)self setScreenDidTurnOffDuringActiveRequest:0];
  [(WFSuspendedDialogRestoration *)self setShortcutsAppDidBackgroundDuringActiveRequest:0];
  [(WFSuspendedDialogRestoration *)self setSuspendedRequest:0];
  [(WFSuspendedDialogRestoration *)self setSuspendedRunningContext:0];

  [(WFSuspendedDialogRestoration *)self setSuspendedRequestCompletion:0];
}

- (void)stopObservingApplicationState
{
  v3 = [(WFSuspendedDialogRestoration *)self layoutMonitor];
  [v3 invalidate];

  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;
}

- (void)beginObservingApplicationState
{
  v3 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__WFSuspendedDialogRestoration_beginObservingApplicationState__block_invoke;
  v6[3] = &unk_1E837F8C0;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v3];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v4;
}

void __62__WFSuspendedDialogRestoration_beginObservingApplicationState__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[WFSuspendedDialogRestoration beginObservingApplicationState]_block_invoke";
      v37 = 2112;
      *v38 = v8;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Transitioned to layout: %@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) screenOnObserver];
    v12 = [v11 screenOn];

    if (([*(a1 + 32) screenDidTurnOffDuringActiveRequest] & 1) == 0 && (v12 & 1) == 0)
    {
      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[WFSuspendedDialogRestoration beginObservingApplicationState]_block_invoke";
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Screen did turn off during active request", buf, 0xCu);
      }

      [*(a1 + 32) setScreenDidTurnOffDuringActiveRequest:1];
    }

    v14 = [*(a1 + 32) shortcutsAppIsForegroundInLayout:v8];
    if (([*(a1 + 32) shortcutsAppDidBackgroundDuringActiveRequest] & 1) == 0 && (v14 & 1) == 0)
    {
      v15 = getWFDialogLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[WFSuspendedDialogRestoration beginObservingApplicationState]_block_invoke";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Shortcuts app did background during active request", buf, 0xCu);
      }

      [*(a1 + 32) setShortcutsAppDidBackgroundDuringActiveRequest:1];
    }

    if ([*(a1 + 32) screenDidTurnOffDuringActiveRequest])
    {
      v16 = 1;
    }

    else
    {
      v16 = [*(a1 + 32) shortcutsAppDidBackgroundDuringActiveRequest];
    }

    v17 = getWFDialogLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v14;
      v19 = v8;
      v20 = v12;
      v21 = v9;
      v22 = v7;
      v23 = [*(a1 + 32) screenDidTurnOffDuringActiveRequest];
      v24 = [*(a1 + 32) shortcutsAppDidBackgroundDuringActiveRequest];
      [*(a1 + 32) suspendedRequest];
      v25 = v34 = v16;
      *buf = 136316418;
      v36 = "[WFSuspendedDialogRestoration beginObservingApplicationState]_block_invoke";
      v37 = 1024;
      *v38 = v23;
      v7 = v22;
      v9 = v21;
      v12 = v20;
      v8 = v19;
      v14 = v18;
      *&v38[4] = 1024;
      *&v38[6] = v24;
      v39 = 1024;
      v40 = v12;
      v41 = 1024;
      v42 = v18;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Deciding if we should bring back the dialog: screenDidTurnOff: %i, appDidBackground: %i, displayIsOn: %i, shortcutsAppIsVisible: %i, suspended request: %@", buf, 0x2Eu);

      v16 = v34;
    }

    if ((v12 & v14 & v16) == 1)
    {
      v26 = [*(a1 + 32) suspendedRequest];

      if (v26)
      {
        v27 = getWFDialogLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [*(a1 + 32) suspendedRequest];
          *buf = 136315394;
          v36 = "[WFSuspendedDialogRestoration beginObservingApplicationState]_block_invoke";
          v37 = 2112;
          *v38 = v28;
          _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_DEFAULT, "%s Bringing back suspended dialog: %@", buf, 0x16u);
        }

        v29 = [*(a1 + 32) presenter];
        v30 = [*(a1 + 32) suspendedRequest];
        v31 = [*(a1 + 32) suspendedRunningContext];
        v32 = [*(a1 + 32) suspendedRequestCompletion];
        [v29 showDialogRequest:v30 runningContext:v31 completionHandler:v32];
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (WFSuspendedDialogRestoration)initWithUserInterfacePresenter:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WFSuspendedDialogRestoration;
  v6 = [(WFSuspendedDialogRestoration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, a3);
    v8 = objc_alloc_init(WFScreenOnObserver);
    screenOnObserver = v7->_screenOnObserver;
    v7->_screenOnObserver = v8;

    [(WFScreenOnObserver *)v7->_screenOnObserver start];
    *&v7->_screenDidTurnOffDuringActiveRequest = 0;
    v10 = v7;
  }

  return v7;
}

@end