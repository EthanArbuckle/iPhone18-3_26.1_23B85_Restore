@interface WFUIPresenter
+ (WFUIPresenter)defaultPresenter;
- (BOOL)showWebPage:(id)a3 completionHandler:(id)a4;
- (WFUIPresenter)initWithConnection:(id)a3;
- (WFUIPresenterDelegate)delegate;
- (void)applicationWillLaunchInForegroundForRunningContext:(id)a3 isLastAction:(id)a4;
- (void)beginPersistentModeWithRunningContext:(id)a3 attribution:(id)a4 completionHandler:(id)a5;
- (void)completePersistentModeWithSuccess:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4;
- (void)pauseDialogPresentationForDuration:(id)a3 withCompletionHandler:(id)a4;
- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4;
- (void)presenterRequestedWorkflowPauseForContext:(id)a3 dialogRequest:(id)a4 completionHandler:(id)a5;
- (void)presenterRequestedWorkflowStopForContext:(id)a3;
- (void)resumeDialogPresentationWithCompletionHandler:(id)a3;
- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)updateAttribution:(id)a3 runningContext:(id)a4;
- (void)updateRunViewSource:(id)a3;
@end

@implementation WFUIPresenter

- (WFUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presenterRequestedUpdatedRunViewSource:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFUIPresenter *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFUIPresenter *)self delegate];
    [v9 presenterRequestedUpdatedRunViewSource:v10 completionHandler:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)presenterRequestedWorkflowPauseForContext:(id)a3 dialogRequest:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WFUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(WFUIPresenter *)self delegate];
    [v12 presenterRequestedWorkflowPauseForContext:v13 dialogRequest:v8];
  }

  v9[2](v9, 0);
}

- (void)presenterRequestedWorkflowStopForContext:(id)a3
{
  v7 = a3;
  v4 = [(WFUIPresenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFUIPresenter *)self delegate];
    [v6 presenterRequestedWorkflowStopForContext:v7];
  }
}

- (BOOL)showWebPage:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFUIPresenter *)self connection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WFUIPresenter *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__WFUIPresenter_showWebPage_completionHandler___block_invoke;
    v19[3] = &unk_1E837BE38;
    v11 = v7;
    v20 = v11;
    v12 = [v10 synchronousPresenterWithErrorHandler:v19];

    v13 = v12 != 0;
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __47__WFUIPresenter_showWebPage_completionHandler___block_invoke_2;
      v17[3] = &unk_1E83758B0;
      v18 = v11;
      [v12 openURL:v6 completionHandler:v17];
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

- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFUIPresenter *)self connection];
  v9 = [v8 isConnected];

  if (v9)
  {
    v10 = [(WFUIPresenter *)self connection];
    v11 = [v10 presenterWithErrorHandler:&__block_literal_global_210];

    if (v11)
    {
      v12 = [(WFUIPresenter *)self delegate];
      if (v12)
      {
        v13 = v12;
        v14 = [(WFUIPresenter *)self delegate];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [(WFUIPresenter *)self delegate];
          [v16 presenterWillDismissPresentedContent];
        }
      }

      [v11 dismissPresentedContentForRunningContext:v6 completionHandler:v7];
    }

    else
    {
      v18 = WFRunnerFailureErrorMessage(0);
      v7[2](v7, v18);
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

    v7[2](v7, 0);
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

- (void)applicationWillLaunchInForegroundForRunningContext:(id)a3 isLastAction:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFUIPresenter *)self connection];
  v9 = [v8 presenterWithErrorHandler:&__block_literal_global_208];

  if (v9)
  {
    [v9 applicationWillLaunchInForegroundForRunningContext:v6 isLastAction:v7];
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

- (void)updateAttribution:(id)a3 runningContext:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFUIPresenter *)self connection];
  v9 = [v8 presenterWithErrorHandler:&__block_literal_global_206];

  if (v9)
  {
    [v9 updateAttribution:v6 runningContext:v7];
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

- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFUIPresenter *)self connection];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke;
  v36[3] = &unk_1E837BE38;
  v12 = v10;
  v37 = v12;
  v13 = [v11 presenterWithErrorHandler:v36];

  if (!v13)
  {
    v25 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithResponseCode:1];
    (*(v12 + 2))(v12, v25, 0);
LABEL_15:

    goto LABEL_16;
  }

  v14 = [(WFUIPresenter *)self delegate];
  if (v14)
  {
    v15 = v14;
    v16 = [(WFUIPresenter *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(WFUIPresenter *)self delegate];
      v19 = [v18 presenterShouldShowRequest:v8 runningContext:v9 withCompletionHandler:v12];

      if ((v19 & 1) == 0)
      {
        v20 = [(WFUIPresenter *)self delegate];
        if (v20)
        {
          v21 = v20;
          v22 = [(WFUIPresenter *)self delegate];
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = getWFDialogLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v39 = "[WFUIPresenter showDialogRequest:runningContext:completionHandler:]";
              v40 = 2112;
              v41 = v9;
              _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s Workflow (%@) is running from the app and the display is off, we need to suspend the request before we pass it to the presenter", buf, 0x16u);
            }

            v25 = [(WFUIPresenter *)self delegate];
            [v25 presenterDidReceiveSuspendedResponseForRequest:v8 runningContext:v9 withCompletionHandler:v12];
            goto LABEL_15;
          }
        }
      }
    }
  }

  v26 = [(WFUIPresenter *)self delegate];
  if (v26)
  {
    v27 = v26;
    v28 = [(WFUIPresenter *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = [(WFUIPresenter *)self delegate];
      [v30 presenterWillShowRequest:v8 runningContext:v9];
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__WFUIPresenter_showDialogRequest_runningContext_completionHandler___block_invoke_203;
  v32[3] = &unk_1E8373318;
  v32[4] = self;
  v33 = v8;
  v34 = v9;
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

- (void)updateRunViewSource:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFUIPresenter *)self connection];
  v6 = [v5 presenterWithErrorHandler:&__block_literal_global_195];

  if (v6)
  {
    [v6 updateRunViewSource:v4];
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

- (void)completePersistentModeWithSuccess:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  currentPersistentRunningContextIdentifier = self->_currentPersistentRunningContextIdentifier;
  self->_currentPersistentRunningContextIdentifier = 0;

  v11 = [(WFUIPresenter *)self connection];
  v12 = [v11 presenterWithErrorHandler:&__block_literal_global_193];

  if (v12)
  {
    [v12 completePersistentModeWithSuccess:v14 runningContext:v8 completionHandler:v9];
  }

  else
  {
    v13 = WFRunnerFailureErrorMessage(0);
    v9[2](v9, v13);
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

- (void)beginPersistentModeWithRunningContext:(id)a3 attribution:(id)a4 completionHandler:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v16 identifier];
  v11 = [v10 copy];
  currentPersistentRunningContextIdentifier = self->_currentPersistentRunningContextIdentifier;
  self->_currentPersistentRunningContextIdentifier = v11;

  v13 = [(WFUIPresenter *)self connection];
  v14 = [v13 presenterWithErrorHandler:&__block_literal_global_191];

  if (v14)
  {
    [v14 beginPersistentModeWithRunningContext:v16 attribution:v8 completionHandler:v9];
  }

  else
  {
    v15 = WFRunnerFailureErrorMessage(0);
    v9[2](v9, v15);
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

- (void)resumeDialogPresentationWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(WFUIPresenter *)self connection];
  v5 = [v4 presenterWithErrorHandler:&__block_literal_global_189];

  if (v5)
  {
    [v5 resumeDialogPresentationWithCompletionHandler:v7];
  }

  else
  {
    v6 = WFRunnerFailureErrorMessage(0);
    v7[2](v7, v6);
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

- (void)pauseDialogPresentationForDuration:(id)a3 withCompletionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFUIPresenter *)self connection];
  v8 = [v7 presenterWithErrorHandler:&__block_literal_global_659];

  if (v8)
  {
    [v8 pauseDialogPresentationForDuration:v10 withCompletionHandler:v6];
  }

  else
  {
    v9 = WFRunnerFailureErrorMessage(0);
    v6[2](v6, v9);
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

- (WFUIPresenter)initWithConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFUIPresenter.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v11.receiver = self;
  v11.super_class = WFUIPresenter;
  v7 = [(WFUIPresenter *)&v11 init];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 setHost:v7];
    }

    objc_storeStrong(&v7->_connection, a3);
    v8 = v7;
  }

  return v7;
}

+ (WFUIPresenter)defaultPresenter
{
  v2 = [a1 alloc];
  v3 = objc_opt_new();
  v4 = [v2 initWithConnection:v3];

  return v4;
}

@end