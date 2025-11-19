@interface WFSiriWorkflowRunnerClient
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WFSiriWorkflowRunnerClient)initWithAutoShortcutIdentifier:(id)a3 phrase:(id)a4 runSource:(int64_t)a5 action:(id)a6 metadata:(id)a7;
- (WFSiriWorkflowRunnerClient)initWithPausedShortcutData:(id)a3 runSource:(int64_t)a4 options:(id)a5;
- (WFSiriWorkflowRunnerClient)initWithRunDescriptor:(id)a3 runSource:(int64_t)a4 options:(id)a5;
- (WFSiriWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 runSource:(int64_t)a4 options:(id)a5;
- (WFSiriWorkflowRunnerClient)initWithWorkflowName:(id)a3 runSource:(int64_t)a4 options:(id)a5;
- (id)pauseRunningShortcut;
- (id)workflowRunSourceForSiriRunSource:(int64_t)a3;
- (int64_t)deviceIdiomForCurrentDevice;
- (int64_t)deviceIdiomFromRunSource:(int64_t)a3;
- (void)didFinishActionWithIdentifier:(id)a3;
- (void)didStartActionWithIdentifier:(id)a3;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
- (void)performDialogRequest:(id)a3 completionHandler:(id)a4;
- (void)performSiriRequest:(id)a3 completionHandler:(id)a4;
- (void)start;
- (void)stop;
- (void)willBeginExecutingShortcutStep:(id)a3;
- (void)willBeginExecutingShortcutWithActionCount:(id)a3;
@end

@implementation WFSiriWorkflowRunnerClient

- (int64_t)deviceIdiomForCurrentDevice
{
  v2 = +[WFDevice currentDevice];
  v3 = [v2 idiom];

  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B1F36840[v3];
  }
}

- (int64_t)deviceIdiomFromRunSource:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = 3;
    if (a3 != 4)
    {
      v4 = 0;
    }

    if (a3 == 3)
    {
      return 5;
    }

    else
    {
      return v4;
    }
  }

  else if (a3 == 1)
  {
    return [(WFSiriWorkflowRunnerClient *)self deviceIdiomForCurrentDevice];
  }

  else if (a3 == 2)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)workflowRunSourceForSiriRunSource:(int64_t)a3
{
  v4 = @"siri-unknown";
  v5 = @"siri-unknown";
  if ((a3 - 1) <= 3)
  {
    v4 = *off_1E7B00550[a3 - 1];
  }

  return v4;
}

- (void)didFinishActionWithIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(WFWorkflowRunnerClient *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFWorkflowRunnerClient *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WFWorkflowRunnerClient *)self delegate];
      [v8 workflowRunnerClient:self didFinishActionWithIdentifier:v9];
    }
  }
}

- (void)didStartActionWithIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(WFWorkflowRunnerClient *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFWorkflowRunnerClient *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WFWorkflowRunnerClient *)self delegate];
      [v8 workflowRunnerClient:self didStartActionWithIdentifier:v9];
    }
  }
}

- (void)performDialogRequest:(id)a3 completionHandler:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315138;
    v9 = "[WFSiriWorkflowRunnerClient performDialogRequest:completionHandler:]";
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_FAULT, "%s Siri workflow runner client should not present, attempting to punch out", &v8, 0xCu);
  }

  v6 = [[WFDialogResponse alloc] initWithResponseCode:4];
  v4[2](v4, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performSiriRequest:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflowRunnerClient *)self delegate];
  if (v8 && (v9 = v8, [(WFWorkflowRunnerClient *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(WFWorkflowRunnerClient *)self delegate];
    [v12 workflowRunnerClient:self performSiriRequest:v6 completionHandler:v7];

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
    v15 = [MEMORY[0x1E696ABC0] wfSiriExecutionRequiresShortcutsJrError];
    v16 = [(WFSiriActionResponse *)v14 initWithError:v15];

    v7[2](v7, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)willBeginExecutingShortcutStep:(id)a3
{
  v4 = [a3 unsignedIntValue];
  siriExecutionMetrics = self->_siriExecutionMetrics;

  [(WFSiriExecutionMetrics *)siriExecutionMetrics setCurrentShortcutStep:v4];
}

- (void)willBeginExecutingShortcutWithActionCount:(id)a3
{
  v4 = [a3 unsignedIntValue];
  siriExecutionMetrics = self->_siriExecutionMetrics;

  [(WFSiriExecutionMetrics *)siriExecutionMetrics setShortcutActionCount:v4];
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

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = WFSiriWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 handleWorkflowRunResult:a3 completion:a4];
}

- (id)pauseRunningShortcut
{
  [(WFWorkflowRunnerClient *)self pause];
  v3 = [WFPausedShortcutData alloc];
  v4 = [(WFWorkflowRunnerClient *)self context];
  v5 = [(WFWorkflowRunnerClient *)self descriptor];
  v6 = [(WFPausedShortcutData *)v3 initWithContext:v4 descriptor:v5];

  return v6;
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = WFSiriWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v4 stop];
  v3 = [(WFSiriWorkflowRunnerClient *)self dialogRequestListener];
  [v3 invalidate];
}

- (void)start
{
  v3 = [(WFSiriWorkflowRunnerClient *)self dialogRequestListener];
  [v3 resume];

  v4 = [(WFSiriWorkflowRunnerClient *)self pausedData];

  if (v4)
  {
    v8 = self;
    v5 = &selRef_resume;
    v6 = &v8;
  }

  else
  {
    v7 = self;
    v5 = &selRef_start;
    v6 = &v7;
  }

  v6[1] = WFSiriWorkflowRunnerClient;
  objc_msgSendSuper2(v6, *v5, v7);
}

- (WFSiriWorkflowRunnerClient)initWithPausedShortcutData:(id)a3 runSource:(int64_t)a4 options:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E696B0D8];
  v10 = a5;
  v11 = [v9 anonymousListener];
  [(NSXPCListener *)v11 setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = v11;
  v13 = v11;

  pausedData = self->_pausedData;
  self->_pausedData = v8;
  v15 = v8;

  v16 = [(WFPausedShortcutData *)v15 context];
  [(WFWorkflowRunnerClient *)self setContext:v16];

  v17 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:v10];
  v18 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:a4];
  [(WFWorkflowRunRequest *)v17 setRunSource:v18];

  v19 = [(NSXPCListener *)v13 endpoint];
  [(WFWorkflowRunRequest *)v17 setRemoteDialogPresenterEndpoint:v19];

  v20 = [(WFPausedShortcutData *)v15 descriptor];
  v23.receiver = self;
  v23.super_class = WFSiriWorkflowRunnerClient;
  v21 = [(WFWorkflowRunnerClient *)&v23 initWithDescriptor:v20 runRequest:v17];

  return v21;
}

- (WFSiriWorkflowRunnerClient)initWithAutoShortcutIdentifier:(id)a3 phrase:(id)a4 runSource:(int64_t)a5 action:(id)a6 metadata:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[WFLinkActionRunDescriptor alloc] initWithIdentifier:v15 name:v14 action:v13 metadata:v12 isAutoShortcut:1];

  v17 = [MEMORY[0x1E696B0D8] anonymousListener];
  [(NSXPCListener *)v17 setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = v17;
  v19 = v17;

  v20 = [[WFSiriWorkflowRunnerClientOptions alloc] initWithAirPlayRouteIDs:0 executionContext:2 originatingDeviceIDSIdentifier:0 originatingDeviceRapportEffectiveIdentifier:0 originatingDeviceRapportMediaSystemIdentifier:0 isOwnedByCurrentUser:0];
  [(WFSiriWorkflowRunnerClientOptions *)v20 setCurrentDeviceIdiom:[(WFSiriWorkflowRunnerClient *)self deviceIdiomFromRunSource:a5]];
  v21 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:v20];
  v22 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:a5];
  [(WFWorkflowRunRequest *)v21 setRunSource:v22];

  v23 = [(NSXPCListener *)v19 endpoint];
  [(WFWorkflowRunRequest *)v21 setRemoteDialogPresenterEndpoint:v23];

  [(WFWorkflowRunRequest *)v21 setAllowsDialogNotifications:0];
  v24 = objc_alloc_init(WFSiriExecutionMetrics);
  siriExecutionMetrics = self->_siriExecutionMetrics;
  self->_siriExecutionMetrics = v24;

  v28.receiver = self;
  v28.super_class = WFSiriWorkflowRunnerClient;
  v26 = [(WFWorkflowRunnerClient *)&v28 initWithDescriptor:v16 runRequest:v21];

  return v26;
}

- (WFSiriWorkflowRunnerClient)initWithRunDescriptor:(id)a3 runSource:(int64_t)a4 options:(id)a5
{
  v8 = MEMORY[0x1E696B0D8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 anonymousListener];
  [(NSXPCListener *)v11 setDelegate:self];
  dialogRequestListener = self->_dialogRequestListener;
  self->_dialogRequestListener = v11;
  v13 = v11;

  [v9 setCurrentDeviceIdiom:{-[WFSiriWorkflowRunnerClient deviceIdiomFromRunSource:](self, "deviceIdiomFromRunSource:", a4)}];
  v14 = [[WFSiriWorkflowRunRequest alloc] initWithOptions:v9];

  v15 = [(WFSiriWorkflowRunnerClient *)self workflowRunSourceForSiriRunSource:a4];
  [(WFWorkflowRunRequest *)v14 setRunSource:v15];

  v16 = [(NSXPCListener *)v13 endpoint];
  [(WFWorkflowRunRequest *)v14 setRemoteDialogPresenterEndpoint:v16];

  [(WFWorkflowRunRequest *)v14 setAllowsDialogNotifications:0];
  v17 = objc_alloc_init(WFSiriExecutionMetrics);
  siriExecutionMetrics = self->_siriExecutionMetrics;
  self->_siriExecutionMetrics = v17;

  v21.receiver = self;
  v21.super_class = WFSiriWorkflowRunnerClient;
  v19 = [(WFWorkflowRunnerClient *)&v21 initWithDescriptor:v10 runRequest:v14];

  return v19;
}

- (WFSiriWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3 runSource:(int64_t)a4 options:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v9];

  v11 = [(WFSiriWorkflowRunnerClient *)self initWithRunDescriptor:v10 runSource:a4 options:v8];
  return v11;
}

- (WFSiriWorkflowRunnerClient)initWithWorkflowName:(id)a3 runSource:(int64_t)a4 options:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithName:v9];

  v11 = [(WFSiriWorkflowRunnerClient *)self initWithRunDescriptor:v10 runSource:a4 options:v8];
  return v11;
}

@end