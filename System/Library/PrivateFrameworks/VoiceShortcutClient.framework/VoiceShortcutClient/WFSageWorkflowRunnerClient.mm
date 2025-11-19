@interface WFSageWorkflowRunnerClient
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WFSageWorkflowRunnerClient)initWithClientIdentifier:(id)a3 siriSessionID:(id)a4 locale:(id)a5 runSource:(id)a6;
- (id)createRunningContextFromRequestIfNecessary:(id)a3 descriptor:(id)a4;
- (void)completeStepExecutionForActionIdentifier:(id)a3 serializedVariable:(id)a4 executionResultMetadata:(id)a5 error:(id)a6;
- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4;
- (void)forTestingOnly_simulateXPCInterruption;
- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4;
- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6;
- (void)outOfProcessWorkflowController:(id)a3 didStartFromWorkflowReference:(id)a4 dialogAttribution:(id)a5;
- (void)performDialogRequest:(id)a3 completionHandler:(id)a4;
- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)performSiriRequest:(id)a3 completionHandler:(id)a4;
- (void)resolveContent:(id)a3 completionHandler:(id)a4;
- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5;
- (void)start;
- (void)startWithCompletionHandler:(id)a3;
- (void)stepWithEncodedToolInvocation:(id)a3 completionHandler:(id)a4;
- (void)stop;
- (void)transformAction:(id)a3 completionHandler:(id)a4;
@end

@implementation WFSageWorkflowRunnerClient

- (void)start
{
  v3 = [(WFSageWorkflowRunnerClient *)self dialogRequestListener];
  [v3 resume];

  v4.receiver = self;
  v4.super_class = WFSageWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 start];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFSageWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  v3 = [(WFSageWorkflowRunnerClient *)self dialogRequestListener];
  [v3 invalidate];
}

- (void)performDialogRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[WFDialogResponse alloc] initWithResponseCode:4];
  v9 = [(WFWorkflowRunnerClient *)self delegate];

  if (v9 && ([(WFWorkflowRunnerClient *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    v12 = [(WFWorkflowRunnerClient *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__WFSageWorkflowRunnerClient_performDialogRequest_completionHandler___block_invoke;
    block[3] = &unk_1E7B01F90;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(v12, block);
  }

  else
  {
    (*(v7 + 2))(v7, v8);
  }
}

void __69__WFSageWorkflowRunnerClient_performDialogRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 workflowRunnerClient:*(a1 + 32) postedDialogRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)performSiriRequest:(id)a3 completionHandler:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315138;
    v11 = "[WFSageWorkflowRunnerClient performSiriRequest:completionHandler:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_FAULT, "%s Sage workflow runner client should not receive siri action requests, ignoring.", &v10, 0xCu);
  }

  v6 = [WFSiriActionResponse alloc];
  v7 = [MEMORY[0x1E696ABC0] wfSiriExecutionRequiresShortcutsJrError];
  v8 = [(WFSiriActionResponse *)v6 initWithError:v7];

  v4[2](v4, v8);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = WFExternalUIPresenterXPCInterface();
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)completeStepExecutionForActionIdentifier:(id)a3 serializedVariable:(id)a4 executionResultMetadata:(id)a5 error:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(WFSageWorkflowRunnerClient *)self stepCompletionBlock];

  if (v13)
  {
    if ([v12 wf_isCancelledStepError])
    {

      v11 = 0;
      v10 = 0;
    }

    os_unfair_lock_lock(&self->_stepLock);
    v14 = [(WFSageWorkflowRunnerClient *)self stepCompletionBlock];
    (v14)[2](v14, v15, v10, v11, v12);

    [(WFSageWorkflowRunnerClient *)self setStepCompletionBlock:0];
    os_unfair_lock_unlock(&self->_stepLock);
  }
}

- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6
{
  v16 = a4;
  v7 = [v16 error];

  v8 = v16;
  if (v7)
  {
    v9 = [v16 error];
    [(WFSageWorkflowRunnerClient *)self completeStepExecutionForActionIdentifier:0 serializedVariable:0 executionResultMetadata:0 error:v9];
    v10 = [v9 domain];
    if ([v10 isEqualToString:WFOutOfProcessWorkflowControllerErrorDomain])
    {
      v11 = [v9 code];

      if (v11 != 4)
      {
        goto LABEL_8;
      }

      v12 = [(WFWorkflowRunnerClient *)self delegate];
      if (!v12)
      {
        goto LABEL_8;
      }

      v13 = v12;
      v14 = [(WFWorkflowRunnerClient *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }

      v10 = [(WFWorkflowRunnerClient *)self delegate];
      [v10 workflowRunnerClient:self postedEvent:1];
    }

LABEL_8:
    v8 = v16;
  }
}

- (void)outOfProcessWorkflowController:(id)a3 didStartFromWorkflowReference:(id)a4 dialogAttribution:(id)a5
{
  v7 = [(WFSageWorkflowRunnerClient *)self startCompletionBlock:a3];

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:152 description:{@"Unexpected callback, did you call -startWithCompletionHandler?"}];
  }

  v8 = [(WFSageWorkflowRunnerClient *)self startCompletionBlock];
  v8[2]();

  [(WFSageWorkflowRunnerClient *)self setStartCompletionBlock:0];
}

- (id)createRunningContextFromRequestIfNecessary:(id)a3 descriptor:(id)a4
{
  v11.receiver = self;
  v11.super_class = WFSageWorkflowRunnerClient;
  v5 = [(WFWorkflowRunnerClient *)&v11 createRunningContextFromRequestIfNecessary:a3 descriptor:a4];
  v6 = [(WFSageWorkflowRunnerClient *)self siriSessionID];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(WFSageWorkflowRunnerClient *)self siriSessionID];
    v9 = [v5 copyWithCustomIdentity:v8];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)forTestingOnly_simulateXPCInterruption
{
  v2 = [(WFWorkflowRunnerClient *)self workflowController];
  [v2 forTestingOnly_simulateXPCInterruption];
}

- (void)fetchDisplayValueForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFWorkflowRunnerClient *)self workflowController];
  [v8 fetchDisplayValueForRequest:v7 completionHandler:v6];
}

- (void)performQuery:(id)a3 inValueSet:(id)a4 toolInvocation:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(WFWorkflowRunnerClient *)self workflowController];
  [v17 performQuery:v16 inValueSet:v15 toolInvocation:v14 options:v13 completionHandler:v12];
}

- (void)transformAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFWorkflowRunnerClient *)self workflowController];
  [v8 transformAction:v7 completionHandler:v6];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:108 description:@"Please call -start before calling this method"];
  }

  v14 = [(WFWorkflowRunnerClient *)self workflowController];
  [v14 resolveDeferredValueFromEncodedStorage:v11 withResolutionRequest:v10 completionHandler:v9];
}

- (void)extractVariableContentFromEncodedReference:(id)a3 withResolutionRequest:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:103 description:@"Please call -start before calling this method"];
  }

  v14 = [(WFWorkflowRunnerClient *)self workflowController];
  [v14 extractVariableContentFromEncodedReference:v11 withResolutionRequest:v10 completionHandler:v9];
}

- (void)resolveContent:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:97 description:@"Please call -start before calling this method"];
  }

  v11 = [(WFWorkflowRunnerClient *)self workflowController];
  [v11 resolveContent:v8 completionHandler:v7];
}

- (void)injectContentAsVariable:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:92 description:@"Please call -start before calling this method"];
  }

  v11 = [(WFWorkflowRunnerClient *)self workflowController];
  [v11 injectContentAsVariable:v8 completionHandler:v7];
}

- (void)stepWithEncodedToolInvocation:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:72 description:@"Please call -start before calling this method"];
  }

  os_unfair_lock_lock(&self->_stepLock);
  v10 = [v7 copy];

  [(WFSageWorkflowRunnerClient *)self setStepCompletionBlock:v10];
  os_unfair_lock_unlock(&self->_stepLock);
  v12 = [(WFWorkflowRunnerClient *)self workflowController];
  [v12 runToolWithInvocation:v8];
}

- (void)startWithCompletionHandler:(id)a3
{
  [(WFSageWorkflowRunnerClient *)self setStartCompletionBlock:a3];

  [(WFSageWorkflowRunnerClient *)self start];
}

- (WFSageWorkflowRunnerClient)initWithClientIdentifier:(id)a3 siriSessionID:(id)a4 locale:(id)a5 runSource:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E696B0D8] anonymousListener];
  [(NSXPCListener *)v13 setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = v13;
  v15 = v13;

  v16 = [[WFSageWorkflowRunRequest alloc] initWithInput:0 presentationMode:0 locale:v10];
  [(WFWorkflowRunRequest *)v16 setRunSource:v9];

  v17 = [(NSXPCListener *)v15 endpoint];
  [(WFWorkflowRunRequest *)v16 setRemoteDialogPresenterEndpoint:v17];

  self->_stepLock._os_unfair_lock_opaque = 0;
  v22.receiver = self;
  v22.super_class = WFSageWorkflowRunnerClient;
  v18 = [(WFWorkflowRunnerClient *)&v22 initWithDescriptor:v12 runRequest:v16];

  v19 = v18;
  v20 = [v11 copy];

  [(WFSageWorkflowRunnerClient *)v19 setSiriSessionID:v20];
  return v19;
}

@end