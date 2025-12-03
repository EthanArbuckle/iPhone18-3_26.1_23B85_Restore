@interface WFUIPresenter
+ (WFUIPresenter)defaultPresenter;
- (BOOL)showWebPage:(id)page completionHandler:(id)handler;
- (WFUIPresenter)initWithConnection:(id)connection;
- (WFUIPresenterDelegate)delegate;
- (void)applicationWillLaunchInForegroundForRunningContext:(id)context isLastAction:(id)action;
- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler;
- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completionHandler:(id)handler;
- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler;
- (void)pauseDialogPresentationForDuration:(id)duration withCompletionHandler:(id)handler;
- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler;
- (void)presenterRequestedWorkflowPauseForContext:(id)context dialogRequest:(id)request completionHandler:(id)handler;
- (void)presenterRequestedWorkflowStopForContext:(id)context;
- (void)resumeDialogPresentationWithCompletionHandler:(id)handler;
- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
- (void)updateAttribution:(id)attribution runningContext:(id)context;
- (void)updateRunViewSource:(id)source;
@end

@implementation WFUIPresenter

- (WFUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presenterRequestedUpdatedRunViewSource:(id)source completionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  delegate = [(WFUIPresenter *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFUIPresenter *)self delegate];
    [delegate2 presenterRequestedUpdatedRunViewSource:sourceCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)presenterRequestedWorkflowPauseForContext:(id)context dialogRequest:(id)request completionHandler:(id)handler
{
  contextCopy = context;
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(WFUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(WFUIPresenter *)self delegate];
    [delegate2 presenterRequestedWorkflowPauseForContext:contextCopy dialogRequest:requestCopy];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)presenterRequestedWorkflowStopForContext:(id)context
{
  contextCopy = context;
  delegate = [(WFUIPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFUIPresenter *)self delegate];
    [delegate2 presenterRequestedWorkflowStopForContext:contextCopy];
  }
}

- (BOOL)showWebPage:(id)page completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  handlerCopy = handler;
  connection = [(WFUIPresenter *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    connection2 = [(WFUIPresenter *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__WFUIPresenter_showWebPage_completionHandler___block_invoke;
    v19[3] = &unk_1E837BE38;
    v11 = handlerCopy;
    v20 = v11;
    v12 = [connection2 synchronousPresenterWithErrorHandler:v19];

    v13 = v12 != 0;
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __47__WFUIPresenter_showWebPage_completionHandler___block_invoke_2;
      v17[3] = &unk_1E83758B0;
      v18 = v11;
      [v12 openURL:pageCopy completionHandler:v17];
    }

    v14 = v20;
  }

  else
  {
    v14 = getWFDialogLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[WFUIPresenter showWebPage:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Unable to show web page, because the presenter does not offer a synchronous presenter", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void __47__WFUIPresenter_showWebPage_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  connection = [(WFUIPresenter *)self connection];
  isConnected = [connection isConnected];

  if (isConnected)
  {
    connection2 = [(WFUIPresenter *)self connection];
    v11 = [connection2 presenterWithErrorHandler:&__block_literal_global_210];

    if (v11)
    {
      delegate = [(WFUIPresenter *)self delegate];
      if (delegate)
      {
        v13 = delegate;
        delegate2 = [(WFUIPresenter *)self delegate];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          delegate3 = [(WFUIPresenter *)self delegate];
          [delegate3 presenterWillDismissPresentedContent];
        }
      }

      [v11 dismissPresentedContentForRunningContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      v18 = WFRunnerFailureErrorMessage(0);
      handlerCopy[2](handlerCopy, v18);
    }
  }

  else
  {
    v17 = getWFDialogLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[WFUIPresenter dismissPresentedContentForRunningContext:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Not reaching out to UI for dismissal, this shortcut hasn't presented any UI", &v20, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __76__WFUIPresenter_dismissPresentedContentForRunningContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter dismissPresentedContentForRunningContext:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to dismiss presented content: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)applicationWillLaunchInForegroundForRunningContext:(id)context isLastAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  actionCopy = action;
  connection = [(WFUIPresenter *)self connection];
  v9 = [connection presenterWithErrorHandler:&__block_literal_global_208];

  if (v9)
  {
    [v9 applicationWillLaunchInForegroundForRunningContext:contextCopy isLastAction:actionCopy];
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[WFUIPresenter applicationWillLaunchInForegroundForRunningContext:isLastAction:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Did not get a UI presenter to update the run view source.", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __81__WFUIPresenter_applicationWillLaunchInForegroundForRunningContext_isLastAction___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter applicationWillLaunchInForegroundForRunningContext:isLastAction:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (beginPersistentModeWithRunningContext): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateAttribution:(id)attribution runningContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  contextCopy = context;
  connection = [(WFUIPresenter *)self connection];
  v9 = [connection presenterWithErrorHandler:&__block_literal_global_206];

  if (v9)
  {
    [v9 updateAttribution:attributionCopy runningContext:contextCopy];
  }

  else
  {
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[WFUIPresenter updateAttribution:runningContext:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Did not get a UI presenter to update the run view source.", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __50__WFUIPresenter_updateAttribution_runningContext___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter updateAttribution:runningContext:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (beginPersistentModeWithRunningContext): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  connection = [(WFUIPresenter *)self connection];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke;
  v36[3] = &unk_1E837BE38;
  v12 = handlerCopy;
  v37 = v12;
  v13 = [connection presenterWithErrorHandler:v36];

  if (!v13)
  {
    delegate6 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithResponseCode:1];
    (*(v12 + 2))(v12, delegate6, 0);
LABEL_15:

    goto LABEL_16;
  }

  delegate = [(WFUIPresenter *)self delegate];
  if (delegate)
  {
    v15 = delegate;
    delegate2 = [(WFUIPresenter *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate3 = [(WFUIPresenter *)self delegate];
      v19 = [delegate3 presenterShouldShowRequest:requestCopy runningContext:contextCopy withCompletionHandler:v12];

      if ((v19 & 1) == 0)
      {
        delegate4 = [(WFUIPresenter *)self delegate];
        if (delegate4)
        {
          v21 = delegate4;
          delegate5 = [(WFUIPresenter *)self delegate];
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = getWFDialogLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v39 = "[WFUIPresenter showDialogRequest:runningContext:completionHandler:]";
              v40 = 2112;
              v41 = contextCopy;
              _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s Workflow (%@) is running from the app and the display is off, we need to suspend the request before we pass it to the presenter", buf, 0x16u);
            }

            delegate6 = [(WFUIPresenter *)self delegate];
            [delegate6 presenterDidReceiveSuspendedResponseForRequest:requestCopy runningContext:contextCopy withCompletionHandler:v12];
            goto LABEL_15;
          }
        }
      }
    }
  }

  delegate7 = [(WFUIPresenter *)self delegate];
  if (delegate7)
  {
    v27 = delegate7;
    delegate8 = [(WFUIPresenter *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      delegate9 = [(WFUIPresenter *)self delegate];
      [delegate9 presenterWillShowRequest:requestCopy runningContext:contextCopy];
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke_203;
  v32[3] = &unk_1E8373318;
  v32[4] = self;
  v33 = requestCopy;
  v34 = contextCopy;
  v35 = v12;
  [v13 showDialogRequest:v33 runningContext:v34 completionHandler:v32];

LABEL_16:
  v31 = *MEMORY[0x1E69E9840];
}

void __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFDialogLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFUIPresenter showDialogRequest:runningContext:completionHandler:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (showDialogRequest): %@", &v8, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithResponseCode:1];
  (*(v5 + 16))(v5, v6, v3);

  v7 = *MEMORY[0x1E69E9840];
}

void __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke_203(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 responseCode] == 3)
  {
    v7 = [*(a1 + 32) delegate];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [*(a1 + 32) delegate];
        [v11 presenterDidReceiveSuspendedResponseForRequest:*(a1 + 40) runningContext:*(a1 + 48) withCompletionHandler:*(a1 + 56)];
LABEL_12:
      }
    }
  }

  else
  {
    if (!v5)
    {
      v13 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[WFUIPresenter showDialogRequest:runningContext:completionHandler:]_block_invoke";
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Show dialog request failed with error: %@", &v16, 0x16u);
      }

      v14 = *(a1 + 56);
      v11 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithResponseCode:1];
      (*(v14 + 16))(v14, v11, v6);
      goto LABEL_12;
    }

    v12 = getWFDialogLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[WFUIPresenter showDialogRequest:runningContext:completionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Received dialog response: %@", &v16, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateRunViewSource:(id)source
{
  v11 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  connection = [(WFUIPresenter *)self connection];
  v6 = [connection presenterWithErrorHandler:&__block_literal_global_195];

  if (v6)
  {
    [v6 updateRunViewSource:sourceCopy];
  }

  else
  {
    v7 = getWFDialogLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[WFUIPresenter updateRunViewSource:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Did not get a UI presenter to update the run view source.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __37__WFUIPresenter_updateRunViewSource___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter updateRunViewSource:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (beginPersistentModeWithRunningContext): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)completePersistentModeWithSuccess:(id)success runningContext:(id)context completionHandler:(id)handler
{
  successCopy = success;
  contextCopy = context;
  handlerCopy = handler;
  currentPersistentRunningContextIdentifier = self->_currentPersistentRunningContextIdentifier;
  self->_currentPersistentRunningContextIdentifier = 0;

  connection = [(WFUIPresenter *)self connection];
  v12 = [connection presenterWithErrorHandler:&__block_literal_global_193];

  if (v12)
  {
    [v12 completePersistentModeWithSuccess:successCopy runningContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = WFRunnerFailureErrorMessage(0);
    handlerCopy[2](handlerCopy, v13);
  }
}

void __84__WFUIPresenter_completePersistentModeWithSuccess_runningContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter completePersistentModeWithSuccess:runningContext:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (completePersistentModeWithSuccess): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)beginPersistentModeWithRunningContext:(id)context attribution:(id)attribution completionHandler:(id)handler
{
  contextCopy = context;
  attributionCopy = attribution;
  handlerCopy = handler;
  identifier = [contextCopy identifier];
  v11 = [identifier copy];
  currentPersistentRunningContextIdentifier = self->_currentPersistentRunningContextIdentifier;
  self->_currentPersistentRunningContextIdentifier = v11;

  connection = [(WFUIPresenter *)self connection];
  v14 = [connection presenterWithErrorHandler:&__block_literal_global_191];

  if (v14)
  {
    [v14 beginPersistentModeWithRunningContext:contextCopy attribution:attributionCopy completionHandler:handlerCopy];
  }

  else
  {
    v15 = WFRunnerFailureErrorMessage(0);
    handlerCopy[2](handlerCopy, v15);
  }
}

void __85__WFUIPresenter_beginPersistentModeWithRunningContext_attribution_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter beginPersistentModeWithRunningContext:attribution:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (beginPersistentModeWithRunningContext): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)resumeDialogPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(WFUIPresenter *)self connection];
  v5 = [connection presenterWithErrorHandler:&__block_literal_global_189];

  if (v5)
  {
    [v5 resumeDialogPresentationWithCompletionHandler:handlerCopy];
  }

  else
  {
    v6 = WFRunnerFailureErrorMessage(0);
    handlerCopy[2](handlerCopy, v6);
  }
}

void __63__WFUIPresenter_resumeDialogPresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter resumeDialogPresentationWithCompletionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (resumeDialogPresentation): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)pauseDialogPresentationForDuration:(id)duration withCompletionHandler:(id)handler
{
  durationCopy = duration;
  handlerCopy = handler;
  connection = [(WFUIPresenter *)self connection];
  v8 = [connection presenterWithErrorHandler:&__block_literal_global_659];

  if (v8)
  {
    [v8 pauseDialogPresentationForDuration:durationCopy withCompletionHandler:handlerCopy];
  }

  else
  {
    v9 = WFRunnerFailureErrorMessage(0);
    handlerCopy[2](handlerCopy, v9);
  }
}

void __74__WFUIPresenter_pauseDialogPresentationForDuration_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFDialogLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFUIPresenter pauseDialogPresentationForDuration:withCompletionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Presenter connection failed with error (pauseDialogPresentation): %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (WFUIPresenter)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUIPresenter.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v11.receiver = self;
  v11.super_class = WFUIPresenter;
  v7 = [(WFUIPresenter *)&v11 init];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [connectionCopy setHost:v7];
    }

    objc_storeStrong(&v7->_connection, connection);
    v8 = v7;
  }

  return v7;
}

+ (WFUIPresenter)defaultPresenter
{
  v2 = [self alloc];
  v3 = objc_opt_new();
  v4 = [v2 initWithConnection:v3];

  return v4;
}

@end