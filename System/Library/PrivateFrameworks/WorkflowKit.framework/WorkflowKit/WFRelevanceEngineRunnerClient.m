@interface WFRelevanceEngineRunnerClient
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WFRelevanceEngineRunnerClient)initWithIntent:(id)a3 delegateQueue:(id)a4;
- (id)intentExecutorIntentResponseFromError:(id)a3;
- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation WFRelevanceEngineRunnerClient

- (id)intentExecutorIntentResponseFromError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:@"WFIntentExecutorErrorDomain"];

    v8 = [v5 userInfo];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 objectForKeyedSubscript:@"WFIntentExecutorIntentResponseErrorKey"];

      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v15 = v11;
    }

    else
    {
      v13 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v10 = v14;

      v15 = [(WFRelevanceEngineRunnerClient *)self intentExecutorIntentResponseFromError:v10];
    }

    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 wfUnsupportedUserInterfaceError];
  (*(a4 + 2))(v6, MEMORY[0x1E695E118], v7);
}

- (void)showDialogRequest:(id)a3 runningContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  if (!v11)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 interaction];
    v13 = [v12 intentResponse];

    v14 = [v11 promptForDisplay];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke;
    aBlock[3] = &unk_1E837F4E8;
    v37 = v10;
    v15 = _Block_copy(aBlock);
    v16 = [(WFWorkflowRunnerClient *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(WFWorkflowRunnerClient *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_2;
      block[3] = &unk_1E837F510;
      block[4] = self;
      v33 = v13;
      v34 = v14;
      v35 = v15;
      dispatch_async(v18, block);
    }

    else
    {
      v15[2](v15);
    }

    goto LABEL_13;
  }

  v19 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:

    v26 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithResponseCode:4];
    (*(v10 + 2))(v10, v26, 0);

    goto LABEL_13;
  }

  v20 = [v19 interaction];
  v21 = [v20 intentResponse];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_3;
  v30[3] = &unk_1E837F4E8;
  v31 = v10;
  v22 = _Block_copy(v30);
  v23 = [(WFWorkflowRunnerClient *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(WFWorkflowRunnerClient *)self delegateQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_4;
    v27[3] = &unk_1E837ECE0;
    v27[4] = self;
    v28 = v21;
    v29 = v22;
    dispatch_async(v25, v27);
  }

  else
  {
    v22[2](v22);
  }

LABEL_13:
}

void __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x1E69E0A20]) initWithInteractionResponseCode:1];
  (*(v1 + 16))(v1, v2, 0);
}

void __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 relevanceEngineRunnerClient:*(a1 + 32) didReceiveConfirmResponse:*(a1 + 40) prompt:*(a1 + 48) proceedHandler:*(a1 + 56)];
}

void __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x1E69E0B28]) initWithInteractionResponseCode:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 relevanceEngineRunnerClient:*(a1 + 32) didReceiveHandleResponse:*(a1 + 40) proceedHandler:*(a1 + 48)];
}

- (void)dismissPresentedContentForRunningContext:(id)a3 completionHandler:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = getWFRelevanceEngineLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFRelevanceEngineRunnerClient dismissPresentedContentForRunningContext:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s dismissPresentedContentForRunningContext:completionHandler called", &v7, 0xCu);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = WFUIPresenterXPCInterface();
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];
  v7 = getWFRelevanceEngineLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFRelevanceEngineRunnerClient listener:shouldAcceptNewConnection:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Accepted connection from BackgroundShortcutRunner, connection = %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 error];
  v9 = [(WFRelevanceEngineRunnerClient *)self intentExecutorIntentResponseFromError:v8];
  if (v9)
  {
    v10 = [v8 userInfo];
    v11 = [v10 mutableCopy];

    [v11 setObject:v9 forKeyedSubscript:@"WFRelevanceEngineRunnerClientIntentResponseErrorKey"];
    v12 = MEMORY[0x1E696ABC0];
    v13 = [v8 domain];
    v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v8 userInfo:{"code"), v11}];

    v8 = v14;
  }

  v15 = [v6 resultBySettingError:v8];
  v16.receiver = self;
  v16.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v16 handleWorkflowRunResult:v15 completion:v7];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  v3 = [(WFRelevanceEngineRunnerClient *)self dialogRequestListener];
  [v3 invalidate];
}

- (void)start
{
  v3 = [(WFRelevanceEngineRunnerClient *)self dialogRequestListener];
  [v3 resume];

  v4.receiver = self;
  v4.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 start];
}

- (WFRelevanceEngineRunnerClient)initWithIntent:(id)a3 delegateQueue:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_alloc(MEMORY[0x1E69E0DE8]);
      v12 = [v10 workflow];
      v13 = [v12 vocabularyIdentifier];
      v14 = [v10 workflow];
      v15 = [v14 spokenPhrase];
      v16 = [v11 initWithIdentifier:v13 name:v15];

      goto LABEL_6;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFRelevanceEngineRunnerClient.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v18 = objc_alloc(MEMORY[0x1E69E0B30]);
  v12 = [objc_alloc(MEMORY[0x1E696EA38]) initWithIntent:v8];
  v16 = [v18 initWithShortcut:v12];
  v10 = 0;
LABEL_6:

  v19 = [MEMORY[0x1E696B0D8] anonymousListener];
  [v19 setDelegate:self];
  v20 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v20 setRunSource:*MEMORY[0x1E69E1430]];
  v21 = [v19 endpoint];
  [v20 setRemoteDialogPresenterEndpoint:v21];

  [v20 setAllowsDialogNotifications:0];
  v26.receiver = self;
  v26.super_class = WFRelevanceEngineRunnerClient;
  v22 = [(WFWorkflowRunnerClient *)&v26 initWithDescriptor:v16 runRequest:v20 delegateQueue:v9];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_intent, a3);
    objc_storeStrong(&v23->_dialogRequestListener, v19);
    v24 = v23;
  }

  return v23;
}

@end