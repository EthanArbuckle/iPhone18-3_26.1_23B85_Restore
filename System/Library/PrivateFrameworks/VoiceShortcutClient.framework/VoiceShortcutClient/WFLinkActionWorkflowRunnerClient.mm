@interface WFLinkActionWorkflowRunnerClient
- (BOOL)shouldUseRunnerInfrastructureForRequest:(id)a3 action:(id)a4;
- (WFLinkActionWorkflowRunnerClient)initWithLinkAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 runSource:(int64_t)a6 runSourceOverride:(id)a7 authenticationPolicy:(int64_t)a8;
- (unsigned)transcriptActionSourceForSurface:(unint64_t)a3;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation WFLinkActionWorkflowRunnerClient

- (void)finishWithError:(id)a3
{
  v11 = a3;
  v4 = [(WFWorkflowRunnerClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(WFWorkflowRunnerClient *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 workflowRunnerClient:self didFinishRunningWorkflowWithOutput:0 error:v11 cancelled:0];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    v9 = [(WFWorkflowRunnerClient *)self delegate];
    v7 = v9;
    if (v8)
    {
      [v9 workflowRunnerClient:self didFinishRunningWorkflowWithAllResults:0 error:v11 cancelled:0];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      v7 = [(WFWorkflowRunnerClient *)self delegate];
      [v7 workflowRunnerClient:self didFinishRunningWorkflowWithError:v11 cancelled:0];
    }
  }

LABEL_8:
}

- (void)start
{
  v3 = [(WFWorkflowRunnerClient *)self runRequest];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [v5 action];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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
    v9 = [v8 linkAction];
    v10 = [v5 actionContext];
    v11 = -[WFLinkActionWorkflowRunnerClient transcriptActionSourceForSurface:](self, "transcriptActionSourceForSurface:", [v10 surface]);

    v12 = [WFLinkActionExecutor alloc];
    v13 = [v8 appBundleIdentifier];
    v14 = [v8 extensionBundleIdentifier];
    v15 = [v8 authenticationPolicy];
    v16 = [(WFLinkActionWorkflowRunnerClient *)self linkRunnerClientRunSourceOverride];
    v30 = 0;
    v17 = [(WFLinkActionExecutor *)v12 initWithLinkAction:v9 appBundleIdentifier:v13 extensionBundleIdentifier:v14 authenticationPolicy:v15 source:v11 sourceOverride:v16 error:&v30];
    v18 = v30;

    if (v17)
    {
      v19 = [(WFLinkActionExecutor *)v17 metadata];
      v20 = [v19 systemProtocols];

      v21 = [MEMORY[0x1E69ACA48] sessionStartingProtocol];
      v22 = [v20 containsObject:v21];

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
        v25 = self;
        v26 = v8;
        v27 = v9;
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

- (BOOL)shouldUseRunnerInfrastructureForRequest:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v5 actionContext];
  if ([v7 surface] != 10)
  {
    v8 = [v5 actionContext];
    if ([v8 surface] == 11)
    {

      goto LABEL_5;
    }

    v10 = [v5 actionContext];
    v11 = [v10 surface];

    if (v11 == 18)
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

- (unsigned)transcriptActionSourceForSurface:(unint64_t)a3
{
  if (a3 - 2 > 0xE)
  {
    return 0;
  }

  else
  {
    return word_1B1F368F0[a3 - 2];
  }
}

- (WFLinkActionWorkflowRunnerClient)initWithLinkAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 runSource:(int64_t)a6 runSourceOverride:(id)a7 authenticationPolicy:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v36 = a7;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v18 = [WFLinkContextualAction alloc];
  if (a8 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = a8 == 1;
  }

  v20 = [(WFLinkContextualAction *)v18 initWithAction:v15 appBundleIdentifier:v16 extensionBundleIdentifier:v17 authenticationPolicy:v19];
  v21 = [WFContextualActionContext alloc];
  if (a6 > 9)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_1B1F368A0[a6];
  }

  v23 = [(WFContextualActionContext *)v21 initWithSurface:v22];
  v24 = [[WFContextualActionRunDescriptor alloc] initWithAction:v20 context:v23];
  v25 = [[WFContextualActionRunRequest alloc] initWithAction:v20 actionContext:v23];
  v26 = v15;
  if ([(WFContextualActionContext *)v23 surface]== 10 || [(WFContextualActionContext *)v23 surface]== 11)
  {
    v27 = v17;
    v28 = 3;
  }

  else
  {
    v27 = v17;
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
  self->_linkRunnerClientRunSource = a6;
  linkRunnerClientRunSourceOverride = self->_linkRunnerClientRunSourceOverride;
  self->_linkRunnerClientRunSourceOverride = v36;
  v30 = v36;

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