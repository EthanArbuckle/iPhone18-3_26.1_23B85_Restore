@interface WFSiriWorkflowRunnerClient
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WFSiriWorkflowRunnerClient)initWithAutoShortcutIdentifier:(id)identifier phrase:(id)phrase runSource:(int64_t)source action:(id)action metadata:(id)metadata;
- (WFSiriWorkflowRunnerClient)initWithPausedShortcutData:(id)data runSource:(int64_t)source options:(id)options;
- (WFSiriWorkflowRunnerClient)initWithRunDescriptor:(id)descriptor runSource:(int64_t)source options:(id)options;
- (WFSiriWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier runSource:(int64_t)source options:(id)options;
- (WFSiriWorkflowRunnerClient)initWithWorkflowName:(id)name runSource:(int64_t)source options:(id)options;
- (id)pauseRunningShortcut;
- (id)workflowRunSourceForSiriRunSource:(int64_t)source;
- (int64_t)deviceIdiomForCurrentDevice;
- (int64_t)deviceIdiomFromRunSource:(int64_t)source;
- (void)didFinishActionWithIdentifier:(id)identifier;
- (void)didStartActionWithIdentifier:(id)identifier;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)performDialogRequest:(id)request completionHandler:(id)handler;
- (void)performSiriRequest:(id)request completionHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)willBeginExecutingShortcutStep:(id)step;
- (void)willBeginExecutingShortcutWithActionCount:(id)count;
@end

@implementation WFSiriWorkflowRunnerClient

- (int64_t)deviceIdiomForCurrentDevice
{
  v2 = +[WFDevice currentDevice];
  idiom = [v2 idiom];

  if (idiom > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B1F36840[idiom];
  }
}

- (int64_t)deviceIdiomFromRunSource:(int64_t)source
{
  if (source > 2)
  {
    v4 = 3;
    if (source != 4)
    {
      v4 = 0;
    }

    if (source == 3)
    {
      return 5;
    }

    else
    {
      return v4;
    }
  }

  else if (source == 1)
  {
    return [(WFSiriWorkflowRunnerClient *)self deviceIdiomForCurrentDevice];
  }

  else if (source == 2)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)workflowRunSourceForSiriRunSource:(int64_t)source
{
  v4 = @"siri-unknown";
  v5 = @"siri-unknown";
  if ((source - 1) <= 3)
  {
    v4 = *off_1E7B00550[source - 1];
  }

  return v4;
}

- (void)didFinishActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(WFWorkflowRunnerClient *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(WFWorkflowRunnerClient *)self delegate];
      [delegate3 workflowRunnerClient:self didFinishActionWithIdentifier:identifierCopy];
    }
  }
}

- (void)didStartActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(WFWorkflowRunnerClient *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(WFWorkflowRunnerClient *)self delegate];
      [delegate3 workflowRunnerClient:self didStartActionWithIdentifier:identifierCopy];
    }
  }
}

- (void)performDialogRequest:(id)request completionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315138;
    v9 = "[WFSiriWorkflowRunnerClient performDialogRequest:completionHandler:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_FAULT, "%s Siri workflow runner client should not present, attempting to punch out", &v8, 0xCu);
  }

  v6 = [[WFDialogResponse alloc] initWithResponseCode:4];
  handlerCopy[2](handlerCopy, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performSiriRequest:(id)request completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  if (delegate && (v9 = delegate, [(WFWorkflowRunnerClient *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate2 = [(WFWorkflowRunnerClient *)self delegate];
    [delegate2 workflowRunnerClient:self performSiriRequest:requestCopy completionHandler:handlerCopy];

    [(WFSiriExecutionMetrics *)self->_siriExecutionMetrics setSiriInteractionCount:[(WFSiriExecutionMetrics *)self->_siriExecutionMetrics siriInteractionCount]+ 1];
  }

  else
  {
    v13 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "[WFSiriWorkflowRunnerClient performSiriRequest:completionHandler:]";
      _os_log_impl(&dword_1B1DE3000, v13, OS_LOG_TYPE_FAULT, "%s Siri delegate not present, attempting to punch out", &v18, 0xCu);
    }

    v14 = [WFSiriActionResponse alloc];
    wfSiriExecutionRequiresShortcutsJrError = [MEMORY[0x1E696ABC0] wfSiriExecutionRequiresShortcutsJrError];
    v16 = [(WFSiriActionResponse *)v14 initWithError:wfSiriExecutionRequiresShortcutsJrError];

    handlerCopy[2](handlerCopy, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)willBeginExecutingShortcutStep:(id)step
{
  unsignedIntValue = [step unsignedIntValue];
  siriExecutionMetrics = self->_siriExecutionMetrics;

  [(WFSiriExecutionMetrics *)siriExecutionMetrics setCurrentShortcutStep:unsignedIntValue];
}

- (void)willBeginExecutingShortcutWithActionCount:(id)count
{
  unsignedIntValue = [count unsignedIntValue];
  siriExecutionMetrics = self->_siriExecutionMetrics;

  [(WFSiriExecutionMetrics *)siriExecutionMetrics setShortcutActionCount:unsignedIntValue];
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

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = WFSiriWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 handleWorkflowRunResult:result completion:completion];
}

- (id)pauseRunningShortcut
{
  [(WFWorkflowRunnerClient *)self pause];
  v3 = [WFPausedShortcutData alloc];
  context = [(WFWorkflowRunnerClient *)self context];
  descriptor = [(WFWorkflowRunnerClient *)self descriptor];
  v6 = [(WFPausedShortcutData *)v3 initWithContext:context descriptor:descriptor];

  return v6;
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFSiriWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  dialogRequestListener = [(WFSiriWorkflowRunnerClient *)self dialogRequestListener];
  [dialogRequestListener invalidate];
}

- (void)start
{
  dialogRequestListener = [(WFSiriWorkflowRunnerClient *)self dialogRequestListener];
  [dialogRequestListener resume];

  pausedData = [(WFSiriWorkflowRunnerClient *)self pausedData];

  if (pausedData)
  {
    selfCopy = self;
    v5 = &selRef_resume;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_start;
    v6 = &selfCopy2;
  }

  v6[1] = WFSiriWorkflowRunnerClient;
  objc_msgSendSuper2(v6, *v5, selfCopy2);
}

- (WFSiriWorkflowRunnerClient)initWithPausedShortcutData:(id)data runSource:(int64_t)source options:(id)options
{
  dataCopy = data;
  v9 = MEMORY[0x1E696B0D8];
  optionsCopy = options;
  anonymousListener = [v9 anonymousListener];
  [(NSXPCListener *)anonymousListener setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = anonymousListener;
  v13 = anonymousListener;

  pausedData = self->_pausedData;
  self->_pausedData = dataCopy;
  v15 = dataCopy;

  context = [(WFPausedShortcutData *)v15 context];
  [(WFWorkflowRunnerClient *)self setContext:context];

  v17 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:optionsCopy];
  v18 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:source];
  [(WFWorkflowRunRequest *)v17 setRunSource:v18];

  endpoint = [(NSXPCListener *)v13 endpoint];
  [(WFWorkflowRunRequest *)v17 setRemoteDialogPresenterEndpoint:endpoint];

  descriptor = [(WFPausedShortcutData *)v15 descriptor];
  v23.receiver = self;
  v23.super_class = WFSiriWorkflowRunnerClient;
  v21 = [(WFWorkflowRunnerClient *)&v23 initWithDescriptor:descriptor runRequest:v17];

  return v21;
}

- (WFSiriWorkflowRunnerClient)initWithAutoShortcutIdentifier:(id)identifier phrase:(id)phrase runSource:(int64_t)source action:(id)action metadata:(id)metadata
{
  metadataCopy = metadata;
  actionCopy = action;
  phraseCopy = phrase;
  identifierCopy = identifier;
  v16 = [[WFLinkActionRunDescriptor alloc] initWithIdentifier:identifierCopy name:phraseCopy action:actionCopy metadata:metadataCopy isAutoShortcut:1];

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [(NSXPCListener *)anonymousListener setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = anonymousListener;
  v19 = anonymousListener;

  v20 = [[WFSiriWorkflowRunnerClientOptions alloc] initWithAirPlayRouteIDs:0 executionContext:2 originatingDeviceIDSIdentifier:0 originatingDeviceRapportEffectiveIdentifier:0 originatingDeviceRapportMediaSystemIdentifier:0 isOwnedByCurrentUser:0];
  [(WFSiriWorkflowRunnerClientOptions *)v20 setCurrentDeviceIdiom:[(WFSiriWorkflowRunnerClient *)self deviceIdiomFromRunSource:source]];
  v21 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:v20];
  v22 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:source];
  [(WFWorkflowRunRequest *)v21 setRunSource:v22];

  endpoint = [(NSXPCListener *)v19 endpoint];
  [(WFWorkflowRunRequest *)v21 setRemoteDialogPresenterEndpoint:endpoint];

  [(WFWorkflowRunRequest *)v21 setAllowsDialogNotifications:0];
  v24 = objc_alloc_init(WFSiriExecutionMetrics);
  siriExecutionMetrics = self->_siriExecutionMetrics;
  self->_siriExecutionMetrics = v24;

  v28.receiver = self;
  v28.super_class = WFSiriWorkflowRunnerClient;
  v26 = [(WFWorkflowRunnerClient *)&v28 initWithDescriptor:v16 runRequest:v21];

  return v26;
}

- (WFSiriWorkflowRunnerClient)initWithRunDescriptor:(id)descriptor runSource:(int64_t)source options:(id)options
{
  v8 = MEMORY[0x1E696B0D8];
  optionsCopy = options;
  descriptorCopy = descriptor;
  anonymousListener = [v8 anonymousListener];
  [(NSXPCListener *)anonymousListener setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = anonymousListener;
  v13 = anonymousListener;

  [optionsCopy setCurrentDeviceIdiom:{-[WFSiriWorkflowRunnerClient deviceIdiomFromRunSource:](self, "deviceIdiomFromRunSource:", source)}];
  v14 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:optionsCopy];

  v15 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:source];
  [(WFWorkflowRunRequest *)v14 setRunSource:v15];

  endpoint = [(NSXPCListener *)v13 endpoint];
  [(WFWorkflowRunRequest *)v14 setRemoteDialogPresenterEndpoint:endpoint];

  [(WFWorkflowRunRequest *)v14 setAllowsDialogNotifications:0];
  v17 = objc_alloc_init(WFSiriExecutionMetrics);
  siriExecutionMetrics = self->_siriExecutionMetrics;
  self->_siriExecutionMetrics = v17;

  v21.receiver = self;
  v21.super_class = WFSiriWorkflowRunnerClient;
  v19 = [(WFWorkflowRunnerClient *)&v21 initWithDescriptor:descriptorCopy runRequest:v14];

  return v19;
}

- (WFSiriWorkflowRunnerClient)initWithWorkflowIdentifier:(id)identifier runSource:(int64_t)source options:(id)options
{
  optionsCopy = options;
  identifierCopy = identifier;
  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:identifierCopy];

  v11 = [(WFSiriWorkflowRunnerClient *)self initWithRunDescriptor:v10 runSource:source options:optionsCopy];
  return v11;
}

- (WFSiriWorkflowRunnerClient)initWithWorkflowName:(id)name runSource:(int64_t)source options:(id)options
{
  optionsCopy = options;
  nameCopy = name;
  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithName:nameCopy];

  v11 = [(WFSiriWorkflowRunnerClient *)self initWithRunDescriptor:v10 runSource:source options:optionsCopy];
  return v11;
}

@end