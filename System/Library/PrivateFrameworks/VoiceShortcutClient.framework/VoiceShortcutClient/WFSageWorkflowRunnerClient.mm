@interface WFSageWorkflowRunnerClient
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WFSageWorkflowRunnerClient)initWithClientIdentifier:(id)identifier siriSessionID:(id)d locale:(id)locale runSource:(id)source;
- (id)createRunningContextFromRequestIfNecessary:(id)necessary descriptor:(id)descriptor;
- (void)completeStepExecutionForActionIdentifier:(id)identifier serializedVariable:(id)variable executionResultMetadata:(id)metadata error:(id)error;
- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler;
- (void)forTestingOnly_simulateXPCInterruption;
- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler;
- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency;
- (void)outOfProcessWorkflowController:(id)controller didStartFromWorkflowReference:(id)reference dialogAttribution:(id)attribution;
- (void)performDialogRequest:(id)request completionHandler:(id)handler;
- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler;
- (void)performSiriRequest:(id)request completionHandler:(id)handler;
- (void)resolveContent:(id)content completionHandler:(id)handler;
- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler;
- (void)start;
- (void)startWithCompletionHandler:(id)handler;
- (void)stepWithEncodedToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)stop;
- (void)transformAction:(id)action completionHandler:(id)handler;
@end

@implementation WFSageWorkflowRunnerClient

- (void)start
{
  dialogRequestListener = [(WFSageWorkflowRunnerClient *)self dialogRequestListener];
  [dialogRequestListener resume];

  v4.receiver = self;
  v4.super_class = WFSageWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 start];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFSageWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  dialogRequestListener = [(WFSageWorkflowRunnerClient *)self dialogRequestListener];
  [dialogRequestListener invalidate];
}

- (void)performDialogRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [[WFDialogResponse alloc] initWithResponseCode:4];
  delegate = [(WFWorkflowRunnerClient *)self delegate];

  if (delegate && ([(WFWorkflowRunnerClient *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    delegateQueue = [(WFWorkflowRunnerClient *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__WFSageWorkflowRunnerClient_performDialogRequest_completionHandler___block_invoke;
    block[3] = &unk_1E7B01F90;
    block[4] = self;
    v14 = requestCopy;
    v15 = handlerCopy;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v8);
  }
}

void __69__WFSageWorkflowRunnerClient_performDialogRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 workflowRunnerClient:*(a1 + 32) postedDialogRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)performSiriRequest:(id)request completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315138;
    v11 = "[WFSageWorkflowRunnerClient performSiriRequest:completionHandler:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_FAULT, "%s Sage workflow runner client should not receive siri action requests, ignoring.", &v10, 0xCu);
  }

  v6 = [WFSiriActionResponse alloc];
  wfSiriExecutionRequiresShortcutsJrError = [MEMORY[0x1E696ABC0] wfSiriExecutionRequiresShortcutsJrError];
  v8 = [(WFSiriActionResponse *)v6 initWithError:wfSiriExecutionRequiresShortcutsJrError];

  handlerCopy[2](handlerCopy, v8);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = WFExternalUIPresenterXPCInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)completeStepExecutionForActionIdentifier:(id)identifier serializedVariable:(id)variable executionResultMetadata:(id)metadata error:(id)error
{
  identifierCopy = identifier;
  variableCopy = variable;
  metadataCopy = metadata;
  errorCopy = error;
  stepCompletionBlock = [(WFSageWorkflowRunnerClient *)self stepCompletionBlock];

  if (stepCompletionBlock)
  {
    if ([errorCopy wf_isCancelledStepError])
    {

      metadataCopy = 0;
      variableCopy = 0;
    }

    os_unfair_lock_lock(&self->_stepLock);
    stepCompletionBlock2 = [(WFSageWorkflowRunnerClient *)self stepCompletionBlock];
    (stepCompletionBlock2)[2](stepCompletionBlock2, identifierCopy, variableCopy, metadataCopy, errorCopy);

    [(WFSageWorkflowRunnerClient *)self setStepCompletionBlock:0];
    os_unfair_lock_unlock(&self->_stepLock);
  }
}

- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency
{
  resultCopy = result;
  error = [resultCopy error];

  v8 = resultCopy;
  if (error)
  {
    error2 = [resultCopy error];
    [(WFSageWorkflowRunnerClient *)self completeStepExecutionForActionIdentifier:0 serializedVariable:0 executionResultMetadata:0 error:error2];
    domain = [error2 domain];
    if ([domain isEqualToString:WFOutOfProcessWorkflowControllerErrorDomain])
    {
      code = [error2 code];

      if (code != 4)
      {
        goto LABEL_8;
      }

      delegate = [(WFWorkflowRunnerClient *)self delegate];
      if (!delegate)
      {
        goto LABEL_8;
      }

      v13 = delegate;
      delegate2 = [(WFWorkflowRunnerClient *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }

      domain = [(WFWorkflowRunnerClient *)self delegate];
      [domain workflowRunnerClient:self postedEvent:1];
    }

LABEL_8:
    v8 = resultCopy;
  }
}

- (void)outOfProcessWorkflowController:(id)controller didStartFromWorkflowReference:(id)reference dialogAttribution:(id)attribution
{
  v7 = [(WFSageWorkflowRunnerClient *)self startCompletionBlock:controller];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:152 description:{@"Unexpected callback, did you call -startWithCompletionHandler?"}];
  }

  startCompletionBlock = [(WFSageWorkflowRunnerClient *)self startCompletionBlock];
  startCompletionBlock[2]();

  [(WFSageWorkflowRunnerClient *)self setStartCompletionBlock:0];
}

- (id)createRunningContextFromRequestIfNecessary:(id)necessary descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = WFSageWorkflowRunnerClient;
  v5 = [(WFWorkflowRunnerClient *)&v11 createRunningContextFromRequestIfNecessary:necessary descriptor:descriptor];
  siriSessionID = [(WFSageWorkflowRunnerClient *)self siriSessionID];
  v7 = [siriSessionID length];

  if (v7)
  {
    siriSessionID2 = [(WFSageWorkflowRunnerClient *)self siriSessionID];
    v9 = [v5 copyWithCustomIdentity:siriSessionID2];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)forTestingOnly_simulateXPCInterruption
{
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController forTestingOnly_simulateXPCInterruption];
}

- (void)fetchDisplayValueForRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController fetchDisplayValueForRequest:requestCopy completionHandler:handlerCopy];
}

- (void)performQuery:(id)query inValueSet:(id)set toolInvocation:(id)invocation options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  invocationCopy = invocation;
  setCopy = set;
  queryCopy = query;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController performQuery:queryCopy inValueSet:setCopy toolInvocation:invocationCopy options:optionsCopy completionHandler:handlerCopy];
}

- (void)transformAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController transformAction:actionCopy completionHandler:handlerCopy];
}

- (void)resolveDeferredValueFromEncodedStorage:(id)storage withResolutionRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  storageCopy = storage;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:108 description:@"Please call -start before calling this method"];
  }

  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController2 resolveDeferredValueFromEncodedStorage:storageCopy withResolutionRequest:requestCopy completionHandler:handlerCopy];
}

- (void)extractVariableContentFromEncodedReference:(id)reference withResolutionRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  referenceCopy = reference;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:103 description:@"Please call -start before calling this method"];
  }

  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController2 extractVariableContentFromEncodedReference:referenceCopy withResolutionRequest:requestCopy completionHandler:handlerCopy];
}

- (void)resolveContent:(id)content completionHandler:(id)handler
{
  handlerCopy = handler;
  contentCopy = content;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:97 description:@"Please call -start before calling this method"];
  }

  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController2 resolveContent:contentCopy completionHandler:handlerCopy];
}

- (void)injectContentAsVariable:(id)variable completionHandler:(id)handler
{
  handlerCopy = handler;
  variableCopy = variable;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:92 description:@"Please call -start before calling this method"];
  }

  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController2 injectContentAsVariable:variableCopy completionHandler:handlerCopy];
}

- (void)stepWithEncodedToolInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:72 description:@"Please call -start before calling this method"];
  }

  os_unfair_lock_lock(&self->_stepLock);
  v10 = [handlerCopy copy];

  [(WFSageWorkflowRunnerClient *)self setStepCompletionBlock:v10];
  os_unfair_lock_unlock(&self->_stepLock);
  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [workflowController2 runToolWithInvocation:invocationCopy];
}

- (void)startWithCompletionHandler:(id)handler
{
  [(WFSageWorkflowRunnerClient *)self setStartCompletionBlock:handler];

  [(WFSageWorkflowRunnerClient *)self start];
}

- (WFSageWorkflowRunnerClient)initWithClientIdentifier:(id)identifier siriSessionID:(id)d locale:(id)locale runSource:(id)source
{
  sourceCopy = source;
  localeCopy = locale;
  dCopy = d;
  v12 = objc_opt_new();
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [(NSXPCListener *)anonymousListener setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = anonymousListener;
  v15 = anonymousListener;

  v16 = [[WFSageWorkflowRunRequest alloc] initWithInput:0 presentationMode:0 locale:localeCopy];
  [(WFWorkflowRunRequest *)v16 setRunSource:sourceCopy];

  endpoint = [(NSXPCListener *)v15 endpoint];
  [(WFWorkflowRunRequest *)v16 setRemoteDialogPresenterEndpoint:endpoint];

  self->_stepLock._os_unfair_lock_opaque = 0;
  v22.receiver = self;
  v22.super_class = WFSageWorkflowRunnerClient;
  v18 = [(WFWorkflowRunnerClient *)&v22 initWithDescriptor:v12 runRequest:v16];

  v19 = v18;
  v20 = [dCopy copy];

  [(WFSageWorkflowRunnerClient *)v19 setSiriSessionID:v20];
  return v19;
}

@end