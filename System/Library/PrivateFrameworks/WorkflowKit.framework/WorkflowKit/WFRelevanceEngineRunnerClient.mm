@interface WFRelevanceEngineRunnerClient
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WFRelevanceEngineRunnerClient)initWithIntent:(id)intent delegateQueue:(id)queue;
- (id)intentExecutorIntentResponseFromError:(id)error;
- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation WFRelevanceEngineRunnerClient

- (id)intentExecutorIntentResponseFromError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"WFIntentExecutorErrorDomain"];

    userInfo = [v5 userInfo];
    v9 = userInfo;
    if (v7)
    {
      v10 = [userInfo objectForKeyedSubscript:@"WFIntentExecutorIntentResponseErrorKey"];

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
      v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

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

- (void)openURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  wfUnsupportedUserInterfaceError = [v5 wfUnsupportedUserInterfaceError];
  (*(handler + 2))(handlerCopy, MEMORY[0x1E695E118], wfUnsupportedUserInterfaceError);
}

- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  v11 = requestCopy;
  if (!v11)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interaction = [v11 interaction];
    intentResponse = [interaction intentResponse];

    promptForDisplay = [v11 promptForDisplay];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke;
    aBlock[3] = &unk_1E837F4E8;
    v37 = handlerCopy;
    v15 = _Block_copy(aBlock);
    delegate = [(WFWorkflowRunnerClient *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegateQueue = [(WFWorkflowRunnerClient *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_2;
      block[3] = &unk_1E837F510;
      block[4] = self;
      v33 = intentResponse;
      v34 = promptForDisplay;
      v35 = v15;
      dispatch_async(delegateQueue, block);
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
    (*(handlerCopy + 2))(handlerCopy, v26, 0);

    goto LABEL_13;
  }

  interaction2 = [v19 interaction];
  intentResponse2 = [interaction2 intentResponse];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_3;
  v30[3] = &unk_1E837F4E8;
  v31 = handlerCopy;
  v22 = _Block_copy(v30);
  delegate2 = [(WFWorkflowRunnerClient *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegateQueue2 = [(WFWorkflowRunnerClient *)self delegateQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__WFRelevanceEngineRunnerClient_showDialogRequest_runningContext_completionHandler___block_invoke_4;
    v27[3] = &unk_1E837ECE0;
    v27[4] = self;
    v28 = intentResponse2;
    v29 = v22;
    dispatch_async(delegateQueue2, v27);
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

- (void)dismissPresentedContentForRunningContext:(id)context completionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFRelevanceEngineLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[WFRelevanceEngineRunnerClient dismissPresentedContentForRunningContext:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s dismissPresentedContentForRunningContext:completionHandler called", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = WFUIPresenterXPCInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v7 = getWFRelevanceEngineLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[WFRelevanceEngineRunnerClient listener:shouldAcceptNewConnection:]";
    v12 = 2112;
    v13 = connectionCopy;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Accepted connection from BackgroundShortcutRunner, connection = %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  error = [resultCopy error];
  v9 = [(WFRelevanceEngineRunnerClient *)self intentExecutorIntentResponseFromError:error];
  if (v9)
  {
    userInfo = [error userInfo];
    v11 = [userInfo mutableCopy];

    [v11 setObject:v9 forKeyedSubscript:@"WFRelevanceEngineRunnerClientIntentResponseErrorKey"];
    v12 = MEMORY[0x1E696ABC0];
    domain = [error domain];
    v14 = [v12 errorWithDomain:domain code:objc_msgSend(error userInfo:{"code"), v11}];

    error = v14;
  }

  v15 = [resultCopy resultBySettingError:error];
  v16.receiver = self;
  v16.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v16 handleWorkflowRunResult:v15 completion:completionCopy];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  dialogRequestListener = [(WFRelevanceEngineRunnerClient *)self dialogRequestListener];
  [dialogRequestListener invalidate];
}

- (void)start
{
  dialogRequestListener = [(WFRelevanceEngineRunnerClient *)self dialogRequestListener];
  [dialogRequestListener resume];

  v4.receiver = self;
  v4.super_class = WFRelevanceEngineRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 start];
}

- (WFRelevanceEngineRunnerClient)initWithIntent:(id)intent delegateQueue:(id)queue
{
  intentCopy = intent;
  queueCopy = queue;
  if (intentCopy)
  {
    v10 = intentCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_alloc(MEMORY[0x1E69E0DE8]);
      workflow = [v10 workflow];
      vocabularyIdentifier = [workflow vocabularyIdentifier];
      workflow2 = [v10 workflow];
      spokenPhrase = [workflow2 spokenPhrase];
      v16 = [v11 initWithIdentifier:vocabularyIdentifier name:spokenPhrase];

      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRelevanceEngineRunnerClient.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v18 = objc_alloc(MEMORY[0x1E69E0B30]);
  workflow = [objc_alloc(MEMORY[0x1E696EA38]) initWithIntent:intentCopy];
  v16 = [v18 initWithShortcut:workflow];
  v10 = 0;
LABEL_6:

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [anonymousListener setDelegate:self];
  v20 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v20 setRunSource:*MEMORY[0x1E69E1430]];
  endpoint = [anonymousListener endpoint];
  [v20 setRemoteDialogPresenterEndpoint:endpoint];

  [v20 setAllowsDialogNotifications:0];
  v26.receiver = self;
  v26.super_class = WFRelevanceEngineRunnerClient;
  v22 = [(WFWorkflowRunnerClient *)&v26 initWithDescriptor:v16 runRequest:v20 delegateQueue:queueCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_intent, intent);
    objc_storeStrong(&v23->_dialogRequestListener, anonymousListener);
    v24 = v23;
  }

  return v23;
}

@end