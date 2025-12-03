@interface WFLinkActionWorkflowRunnerClient
- (BOOL)shouldUseRunnerInfrastructureForRequest:(id)request action:(id)action;
- (WFLinkActionWorkflowRunnerClient)initWithLinkAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier runSource:(int64_t)source runSourceOverride:(id)override authenticationPolicy:(int64_t)policy;
- (unsigned)transcriptActionSourceForSurface:(unint64_t)surface;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation WFLinkActionWorkflowRunnerClient

- (void)finishWithError:(id)error
{
  errorCopy = error;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  delegate2 = [(WFWorkflowRunnerClient *)self delegate];
  delegate4 = delegate2;
  if (v5)
  {
    [delegate2 workflowRunnerClient:self didFinishRunningWorkflowWithOutput:0 error:errorCopy cancelled:0];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    delegate3 = [(WFWorkflowRunnerClient *)self delegate];
    delegate4 = delegate3;
    if (v8)
    {
      [delegate3 workflowRunnerClient:self didFinishRunningWorkflowWithAllResults:0 error:errorCopy cancelled:0];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      delegate4 = [(WFWorkflowRunnerClient *)self delegate];
      [delegate4 workflowRunnerClient:self didFinishRunningWorkflowWithError:errorCopy cancelled:0];
    }
  }

LABEL_8:
}

- (void)start
{
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  if (runRequest)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = runRequest;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  action = [v5 action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = action;
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

  if ([(WFLinkActionWorkflowRunnerClient *)self shouldUseRunnerInfrastructureForRequest:v5 action:v8])
  {
    v31.receiver = self;
    v31.super_class = WFLinkActionWorkflowRunnerClient;
    [(WFWorkflowRunnerClient *)&v31 start];
  }

  else
  {
    linkAction = [v8 linkAction];
    actionContext = [v5 actionContext];
    v11 = -[WFLinkActionWorkflowRunnerClient transcriptActionSourceForSurface:](self, "transcriptActionSourceForSurface:", [actionContext surface]);

    v12 = [WFLinkActionExecutor alloc];
    appBundleIdentifier = [v8 appBundleIdentifier];
    extensionBundleIdentifier = [v8 extensionBundleIdentifier];
    authenticationPolicy = [v8 authenticationPolicy];
    linkRunnerClientRunSourceOverride = [(WFLinkActionWorkflowRunnerClient *)self linkRunnerClientRunSourceOverride];
    v30 = 0;
    v17 = [(WFLinkActionExecutor *)v12 initWithLinkAction:linkAction appBundleIdentifier:appBundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier authenticationPolicy:authenticationPolicy source:v11 sourceOverride:linkRunnerClientRunSourceOverride error:&v30];
    v18 = v30;

    if (v17)
    {
      metadata = [(WFLinkActionExecutor *)v17 metadata];
      systemProtocols = [metadata systemProtocols];

      sessionStartingProtocol = [MEMORY[0x1E69ACA48] sessionStartingProtocol];
      v22 = [systemProtocols containsObject:sessionStartingProtocol];

      if (v22)
      {
        v29.receiver = self;
        v29.super_class = WFLinkActionWorkflowRunnerClient;
        [(WFWorkflowRunnerClient *)&v29 start];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __41__WFLinkActionWorkflowRunnerClient_start__block_invoke;
        v23[3] = &unk_1E7B00EA0;
        v24 = v17;
        selfCopy = self;
        v26 = v8;
        v27 = linkAction;
        v28 = v5;
        [(WFLinkActionExecutor *)v24 performWithCompletionHandler:v23];
      }
    }

    else
    {
      [(WFLinkActionWorkflowRunnerClient *)self finishWithError:v18];
    }
  }
}

void __41__WFLinkActionWorkflowRunnerClient_start__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[5] finishWithError:v3];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__WFLinkActionWorkflowRunnerClient_start__block_invoke_2;
  v12 = &unk_1E7B00E78;
  v13 = a1[6];
  v14 = a1[7];
  v4 = v3;
  v15 = v4;
  v16 = a1[8];
  v5 = &v9;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v21 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v17[3] = &unk_1E7B02C60;
    v17[4] = &v18;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(v17);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    v6(@"com.apple.shortcuts.RunActionFinish", v5);
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_AnalyticsSendEventLazy(const NSString *__strong, NSDictionary<NSString *, NSObject *> *(^__strong)(void))"}];
    [v7 handleFailureInFunction:v8 file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:26 description:{@"%s", dlerror(), v9, v10, v11, v12, v13, v14, v15}];

    __break(1u);
  }
}

id __41__WFLinkActionWorkflowRunnerClient_start__block_invoke_2(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"actionIdentifier";
  v2 = [*(a1 + 32) appBundleIdentifier];
  v11[0] = v2;
  v3 = [*(a1 + 40) identifier];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v13[0] = v5;
  v12[1] = @"completed";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48) == 0];
  v13[1] = v6;
  v12[2] = @"runSource";
  v7 = [*(a1 + 56) runSource];
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)shouldUseRunnerInfrastructureForRequest:(id)request action:(id)action
{
  requestCopy = request;
  actionCopy = action;
  if (!actionCopy)
  {
    goto LABEL_8;
  }

  actionContext = [requestCopy actionContext];
  if ([actionContext surface] != 10)
  {
    actionContext2 = [requestCopy actionContext];
    if ([actionContext2 surface] == 11)
    {

      goto LABEL_5;
    }

    actionContext3 = [requestCopy actionContext];
    surface = [actionContext3 surface];

    if (surface == 18)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

LABEL_5:

LABEL_6:
  v9 = 0;
LABEL_9:

  return v9;
}

- (unsigned)transcriptActionSourceForSurface:(unint64_t)surface
{
  if (surface - 2 > 0xE)
  {
    return 0;
  }

  else
  {
    return word_1B1F368F0[surface - 2];
  }
}

- (WFLinkActionWorkflowRunnerClient)initWithLinkAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier runSource:(int64_t)source runSourceOverride:(id)override authenticationPolicy:(int64_t)policy
{
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  overrideCopy = override;
  if (actionCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v18 = [WFLinkContextualAction alloc];
  if (policy == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = policy == 1;
  }

  v20 = [(WFLinkContextualAction *)v18 initWithAction:actionCopy appBundleIdentifier:identifierCopy extensionBundleIdentifier:bundleIdentifierCopy authenticationPolicy:v19];
  v21 = [WFContextualActionContext alloc];
  if (source > 9)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_1B1F368A0[source];
  }

  v23 = [(WFContextualActionContext *)v21 initWithSurface:v22];
  v24 = [[WFContextualActionRunDescriptor alloc] initWithAction:v20 context:v23];
  v25 = [[WFContextualActionRunRequest alloc] initWithAction:v20 actionContext:v23];
  v26 = actionCopy;
  if ([(WFContextualActionContext *)v23 surface]== 10 || [(WFContextualActionContext *)v23 surface]== 11)
  {
    v27 = bundleIdentifierCopy;
    v28 = 3;
  }

  else
  {
    v27 = bundleIdentifierCopy;
    if ([(WFContextualActionContext *)v23 surface]== 18)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }
  }

  [(WFWorkflowRunRequest *)v25 setPresentationMode:v28];
  self->_linkRunnerClientRunSource = source;
  linkRunnerClientRunSourceOverride = self->_linkRunnerClientRunSourceOverride;
  self->_linkRunnerClientRunSourceOverride = overrideCopy;
  v30 = overrideCopy;

  v37.receiver = self;
  v37.super_class = WFLinkActionWorkflowRunnerClient;
  v31 = [(WFWorkflowRunnerClient *)&v37 initWithDescriptor:v24 runRequest:v25];

  if (v31)
  {
    v32 = v31;
  }

  return v31;
}

@end