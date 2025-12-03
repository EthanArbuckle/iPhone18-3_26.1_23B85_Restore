@interface WFWorkflowRunnerClient
+ (id)underlyingErrorIfRunnerError:(id)error;
- (BOOL)isRunning;
- (WFRunnerPrewarmManager)prewarmManager;
- (WFWorkflowRunnerClient)initWithDescriptor:(id)descriptor runRequest:(id)request delegateQueue:(id)queue;
- (WFWorkflowRunnerClientDelegate)delegate;
- (id)createRunningContextFromRequestIfNecessary:(id)necessary descriptor:(id)descriptor;
- (id)createWorkflowControllerWithContext:(id)context;
- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion;
- (void)autoreleaseSelf;
- (void)beginObservingProgressForWorkflowWithRunningContext:(id)context;
- (void)dispatchWorkflowResultHandlingWithResult:(id)result;
- (void)handleWorkflowDidStart:(id)start;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency;
- (void)outOfProcessWorkflowController:(id)controller didRequestUpdatedRunViewSource:(id)source completionHandler:(id)handler;
- (void)pause;
- (void)prewarmRunner;
- (void)resume;
- (void)setRunViewSource:(id)source;
- (void)start;
- (void)stop;
- (void)stopObservingRunProgress;
- (void)updateRunViewSource:(id)source;
@end

@implementation WFWorkflowRunnerClient

- (void)start
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = [(WFWorkflowRunnerClient *)self descriptor];
    runRequest = [(WFWorkflowRunnerClient *)self runRequest];
    *buf = 136315906;
    v30 = "[WFWorkflowRunnerClient start]";
    v31 = 2112;
    selfCopy = self;
    v33 = 2112;
    v34 = descriptor;
    v35 = 2112;
    v36 = runRequest;
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting shortcut run from client: %@, descriptor: %@, request: %@", buf, 0x2Au);
  }

  if ([(WFWorkflowRunnerClient *)self isRunning])
  {
    [(WFWorkflowRunnerClient *)self stop];
  }

  runRequest2 = [(WFWorkflowRunnerClient *)self runRequest];
  descriptor2 = [(WFWorkflowRunnerClient *)self descriptor];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __31__WFWorkflowRunnerClient_start__block_invoke;
  v28[3] = &unk_1E7AFFB50;
  v28[4] = self;
  v8 = [(WFWorkflowRunnerClient *)self runWorkflowWithRequest:runRequest2 descriptor:descriptor2 completion:v28];
  [(WFWorkflowRunnerClient *)self setContext:v8];

  descriptor3 = [(WFWorkflowRunnerClient *)self descriptor];
  if (descriptor3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = descriptor3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = getWFVoiceShortcutClientLogObject();
  context = [(WFWorkflowRunnerClient *)self context];
  identifier = [context identifier];
  v15 = [identifier hash];

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    identifier2 = [v11 identifier];
    v17 = identifier2;
    if (identifier2)
    {
      v18 = identifier2;
    }

    else
    {
      v18 = @"none";
    }

    name = [v11 name];
    v20 = name;
    if (name)
    {
      v21 = name;
    }

    else
    {
      v21 = &stru_1F28FBBB8;
    }

    runRequest3 = [(WFWorkflowRunnerClient *)self runRequest];
    runSource = [runRequest3 runSource];
    v24 = runSource;
    v25 = @"unknown";
    *buf = 138412802;
    v30 = v18;
    if (runSource)
    {
      v25 = runSource;
    }

    v31 = 2112;
    selfCopy = v21;
    v33 = 2112;
    v34 = v25;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RunWorkflow", "WorkflowID=%{signpost.description:attribute}@,WorkflowName=%{signpost.description:attribute}@,RunSource=%{signpost.description:attribute}@", buf, 0x20u);
  }

  context2 = [(WFWorkflowRunnerClient *)self context];
  [(WFWorkflowRunnerClient *)self beginObservingProgressForWorkflowWithRunningContext:context2];

  [(WFWorkflowRunnerClient *)self retainSelf];
  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunning
{
  progressSubscriber = [(WFWorkflowRunnerClient *)self progressSubscriber];
  v3 = progressSubscriber != 0;

  return v3;
}

- (WFRunnerPrewarmManager)prewarmManager
{
  prewarmManager = self->_prewarmManager;
  if (!prewarmManager)
  {
    v4 = +[WFRunnerPrewarmManager sharedManager];
    v5 = self->_prewarmManager;
    self->_prewarmManager = v4;

    prewarmManager = self->_prewarmManager;
  }

  return prewarmManager;
}

- (void)stop
{
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (workflowController)
  {
    workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
    [workflowController2 stop];

    [(WFWorkflowRunnerClient *)self autoreleaseSelf];
  }
}

- (void)autoreleaseSelf
{
  p_strongSelf = &self->_strongSelf;
  strongSelf = self->_strongSelf;
  v4 = strongSelf;
  objc_storeStrong(p_strongSelf, strongSelf);
  v5 = *p_strongSelf;
  *p_strongSelf = 0;
}

- (WFWorkflowRunnerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)outOfProcessWorkflowController:(id)controller didRequestUpdatedRunViewSource:(id)source completionHandler:(id)handler
{
  handlerCopy = handler;
  sourceCopy = source;
  runViewSource = [(WFWorkflowRunnerClient *)self runViewSource];
  v9 = [runViewSource isEqual:sourceCopy];

  if (v9)
  {
    runViewSource2 = [(WFWorkflowRunnerClient *)self runViewSource];
    [runViewSource2 refresh];

    runViewSource3 = [(WFWorkflowRunnerClient *)self runViewSource];
    handlerCopy[2](handlerCopy, runViewSource3, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency
{
  [(WFWorkflowRunnerClient *)self dispatchWorkflowResultHandlingWithResult:result];

  [(WFWorkflowRunnerClient *)self autoreleaseSelf];
}

- (void)stopObservingRunProgress
{
  context = [(WFWorkflowRunnerClient *)self context];
  progressSubscriber = [(WFWorkflowRunnerClient *)self progressSubscriber];
  [context removeProgressSubscriber:progressSubscriber];

  [(WFWorkflowRunnerClient *)self setProgressSubscriber:0];
}

- (void)beginObservingProgressForWorkflowWithRunningContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WFWorkflowRunnerClient_beginObservingProgressForWorkflowWithRunningContext___block_invoke;
  aBlock[3] = &unk_1E7AFFC18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [contextCopy addProgressSubscriberUsingPublishingHandler:v6];
  [(WFWorkflowRunnerClient *)self setProgressSubscriber:v7];
}

void *__78__WFWorkflowRunnerClient_beginObservingProgressForWorkflowWithRunningContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WFWorkflowRunnerClient_beginObservingProgressForWorkflowWithRunningContext___block_invoke_2;
  v7[3] = &unk_1E7B02180;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  return &__block_literal_global_608;
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  completionCopy = completion;
  v8 = objc_opt_class();
  error = [resultCopy error];
  v10 = [v8 underlyingErrorIfRunnerError:error];

  if (_os_feature_enabled_impl())
  {
    delegate = [(WFWorkflowRunnerClient *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = resultCopy;
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v13 hasOutputs])
        {
          v14 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            delegate2 = [(WFWorkflowRunnerClient *)self delegate];
            *buf = 136315394;
            v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
            v49 = 2112;
            v50 = delegate2;
            _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Preparing result with outputs for client (%@)", buf, 0x16u);
          }

          v16 = dispatch_get_global_queue(25, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke;
          block[3] = &unk_1E7B024B0;
          v13 = v13;
          v43 = v13;
          selfCopy = self;
          v45 = v10;
          v46 = completionCopy;
          dispatch_async(v16, block);

          delegate4 = v43;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {

        v13 = 0;
      }

      v34 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        delegate3 = [(WFWorkflowRunnerClient *)self delegate];
        *buf = 136315394;
        v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
        v49 = 2112;
        v50 = delegate3;
        _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEBUG, "%s Preparing result without output for client (%@)", buf, 0x16u);
      }

      delegate4 = [(WFWorkflowRunnerClient *)self delegate];
      [delegate4 workflowRunnerClient:self didFinishRunningWorkflowWithAllResults:0 error:v10 cancelled:{objc_msgSend(v13, "isCancelled")}];
      goto LABEL_30;
    }
  }

  delegate5 = [(WFWorkflowRunnerClient *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    delegate6 = [(WFWorkflowRunnerClient *)self delegate];
    v26 = objc_opt_respondsToSelector();

    v27 = getWFVoiceShortcutClientLogObject();
    delegate8 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        delegate7 = [(WFWorkflowRunnerClient *)self delegate];
        *buf = 136315394;
        v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
        v49 = 2112;
        v50 = delegate7;
      }

      delegate8 = [(WFWorkflowRunnerClient *)self delegate];
      -[NSObject workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled:](delegate8, "workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled:", self, v10, [resultCopy isCancelled]);
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      delegate9 = [(WFWorkflowRunnerClient *)self delegate];
      *buf = 136315394;
      v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
      v49 = 2112;
      v50 = delegate9;
      _os_log_impl(&dword_1B1DE3000, delegate8, OS_LOG_TYPE_ERROR, "%s Workflow finished running, but client (%@) does not respond to -workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled: or workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v20 = resultCopy;
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v30 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      delegate10 = [(WFWorkflowRunnerClient *)self delegate];
      *buf = 136315394;
      v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
      v49 = 2112;
      v50 = delegate10;
      _os_log_impl(&dword_1B1DE3000, v30, OS_LOG_TYPE_DEBUG, "%s Delivering workflow run result to client: %@", buf, 0x16u);
    }

    delegate11 = [(WFWorkflowRunnerClient *)self delegate];
    [delegate11 workflowRunnerClient:self didFinishRunningWorkflowWithOutput:0 error:v10 cancelled:{objc_msgSend(v20, "isCancelled")}];

LABEL_25:
    completionCopy[2](completionCopy);
    goto LABEL_31;
  }

  v21 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    delegate12 = [(WFWorkflowRunnerClient *)self delegate];
    *buf = 136315394;
    v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
    v49 = 2112;
    v50 = delegate12;
    _os_log_impl(&dword_1B1DE3000, v21, OS_LOG_TYPE_DEBUG, "%s Preparing output for client (%@)", buf, 0x16u);
  }

  v23 = dispatch_get_global_queue(25, 0);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_98;
  v37[3] = &unk_1E7B024B0;
  v38 = v20;
  selfCopy2 = self;
  v40 = v10;
  v41 = completionCopy;
  v24 = v20;
  dispatch_async(v23, v37);

LABEL_31:
  v36 = *MEMORY[0x1E69E9840];
}

void __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_2;
  v8[3] = &unk_1E7AFFBA0;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getActionOutputsWithCompletionHandler:v8];
}

void __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_2_99;
  v8[3] = &unk_1E7AFFBF0;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getOutputWithCompletionHandler:v8];
}

void __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_2_99(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegateQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_3_100;
  v11[3] = &unk_1E7AFFBC8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_3_100(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) delegate];
    v8 = 136315394;
    v9 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]_block_invoke_3";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_DEFAULT, "%s Delivering workflow run result to client: %@", &v8, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = *(a1 + 56);
  }

  [v4 workflowRunnerClient:*(a1 + 32) didFinishRunningWorkflowWithOutput:*(a1 + 40) error:v5 cancelled:{objc_msgSend(*(a1 + 64), "isCancelled")}];

  result = (*(*(a1 + 72) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_3;
  block[3] = &unk_1E7AFFB78;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) delegate];
    v7 = 136315394;
    v8 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]_block_invoke_3";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B1DE3000, v2, OS_LOG_TYPE_DEFAULT, "%s Delivering workflow run result to client: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 workflowRunnerClient:*(a1 + 32) didFinishRunningWorkflowWithAllResults:*(a1 + 40) error:*(a1 + 48) cancelled:{objc_msgSend(*(a1 + 56), "isCancelled")}];

  result = (*(*(a1 + 64) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleWorkflowDidStart:(id)start
{
  startCopy = start;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFWorkflowRunnerClient *)self delegate];
    [delegate2 workflowRunnerClient:self didStartRunningWorkflowWithProgress:startCopy];
  }
}

- (void)dispatchWorkflowResultHandlingWithResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    delegate = [(WFWorkflowRunnerClient *)self delegate];
    *buf = 136315394;
    v17 = "[WFWorkflowRunnerClient dispatchWorkflowResultHandlingWithResult:]";
    v18 = 2112;
    v19 = delegate;
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEBUG, "%s Workflow finished running, preparing to deliver result to client: %@", buf, 0x16u);
  }

  v7 = getWFVoiceShortcutClientLogObject();
  context = [(WFWorkflowRunnerClient *)self context];
  identifier = [context identifier];
  v10 = [identifier hash];

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v7, OS_SIGNPOST_INTERVAL_END, v10, "RunWorkflow", "", buf, 2u);
  }

  delegateQueue = [(WFWorkflowRunnerClient *)self delegateQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__WFWorkflowRunnerClient_dispatchWorkflowResultHandlingWithResult___block_invoke;
  v14[3] = &unk_1E7B02180;
  v14[4] = self;
  v15 = resultCopy;
  v12 = resultCopy;
  dispatch_async(delegateQueue, v14);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __67__WFWorkflowRunnerClient_dispatchWorkflowResultHandlingWithResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__WFWorkflowRunnerClient_dispatchWorkflowResultHandlingWithResult___block_invoke_2;
  v4[3] = &unk_1E7B02158;
  v4[4] = v2;
  return [v2 handleWorkflowRunResult:v1 completion:v4];
}

- (id)runWorkflowWithRequest:(id)request descriptor:(id)descriptor completion:(id)completion
{
  completion = [(WFWorkflowRunnerClient *)self createRunningContextFromRequestIfNecessary:request descriptor:descriptor, completion];
  v7 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:completion];
  prewarmManager = [(WFWorkflowRunnerClient *)self prewarmManager];

  if (prewarmManager)
  {
    prewarmManager2 = [(WFWorkflowRunnerClient *)self prewarmManager];
    [prewarmManager2 reset];
  }

  descriptor = [(WFWorkflowRunnerClient *)self descriptor];
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  v17 = 0;
  v12 = [v7 runWorkflowWithDescriptor:descriptor request:runRequest error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = completion;
  }

  else
  {
    v15 = [[WFWorkflowRunResult alloc] initWithError:v13];
    [(WFWorkflowRunnerClient *)self dispatchWorkflowResultHandlingWithResult:v15];

    v14 = 0;
  }

  return v14;
}

- (id)createRunningContextFromRequestIfNecessary:(id)necessary descriptor:(id)descriptor
{
  necessaryCopy = necessary;
  descriptorCopy = descriptor;
  context = [(WFWorkflowRunnerClient *)self context];

  if (context)
  {
    context2 = [(WFWorkflowRunnerClient *)self context];
  }

  else
  {
    v10 = [WFWorkflowRunningContext alloc];
    descriptor = [(WFWorkflowRunnerClient *)self descriptor];
    if (descriptor)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = descriptor;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    identifier = [v13 identifier];

    context2 = [(WFWorkflowRunningContext *)v10 initWithWorkflowIdentifier:identifier];
    -[WFWorkflowRunningContext setAllowsDialogNotifications:](context2, "setAllowsDialogNotifications:", [necessaryCopy allowsDialogNotifications]);
    runSource = [necessaryCopy runSource];
    [(WFWorkflowRunningContext *)context2 setRunSource:runSource];

    kind = [descriptorCopy kind];
    [(WFWorkflowRunningContext *)context2 setRunKind:kind];

    -[WFWorkflowRunningContext setOutputBehavior:](context2, "setOutputBehavior:", [necessaryCopy outputBehavior]);
    runViewSource = [necessaryCopy runViewSource];
    [(WFWorkflowRunningContext *)context2 setRunViewSource:runViewSource];

    -[WFWorkflowRunningContext setStepwise:](context2, "setStepwise:", [necessaryCopy isStepwise]);
    -[WFWorkflowRunningContext setShouldForwardDialogRequests:](context2, "setShouldForwardDialogRequests:", [necessaryCopy handlesDialogRequests]);
    -[WFWorkflowRunningContext setShouldForwardSiriActionRequests:](context2, "setShouldForwardSiriActionRequests:", [necessaryCopy handlesSiriActionRequests]);
    -[WFWorkflowRunningContext setRunningInPersistentMode:](context2, "setRunningInPersistentMode:", [necessaryCopy presentationMode] == 1);
    v18 = necessaryCopy;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    locale = [v20 locale];

    [(WFWorkflowRunningContext *)context2 setLocale:locale];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(WFWorkflowRunningContext *)context2 setOriginatingBundleIdentifier:bundleIdentifier];

    [(WFWorkflowRunnerClient *)self setContext:context2];
  }

  return context2;
}

- (id)createWorkflowControllerWithContext:(id)context
{
  contextCopy = context;
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 3;
  }

  else
  {
    runSource = [runRequest runSource];
    IsSpotlight = WFRunSourceIsSpotlight(runSource);

    if (IsSpotlight)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  presentationMode = [runRequest presentationMode];
  if (presentationMode > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1B1F36828[presentationMode];
  }

  v11 = [WFOutOfProcessWorkflowController alloc];
  prewarmManager = [(WFWorkflowRunnerClient *)self prewarmManager];
  connection = [prewarmManager connection];
  v14 = [(WFOutOfProcessWorkflowController *)v11 initWithEnvironment:v6 runningContext:contextCopy presentationMode:v10 existingConnection:connection];

  [(WFOutOfProcessWorkflowController *)v14 setDelegate:self];
  [(WFWorkflowRunnerClient *)self setWorkflowController:v14];

  return v14;
}

- (void)setRunViewSource:(id)source
{
  sourceCopy = source;
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  [runRequest setRunViewSource:sourceCopy];

  runViewSource = self->_runViewSource;
  self->_runViewSource = sourceCopy;
}

- (void)updateRunViewSource:(id)source
{
  sourceCopy = source;
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];
  object = [sourceCopy object];
  [workflowController updateRunViewSource:object];

  object2 = [sourceCopy object];

  [(WFWorkflowRunnerClient *)self setRunViewSource:object2];
}

- (void)prewarmRunner
{
  context = [(WFWorkflowRunnerClient *)self context];

  if (!context)
  {
    runRequest = [(WFWorkflowRunnerClient *)self runRequest];
    descriptor = [(WFWorkflowRunnerClient *)self descriptor];
    v6 = [(WFWorkflowRunnerClient *)self createRunningContextFromRequestIfNecessary:runRequest descriptor:descriptor];
  }

  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (!workflowController)
  {
    context2 = [(WFWorkflowRunnerClient *)self context];
    v9 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:context2];
  }

  prewarmManager = [(WFWorkflowRunnerClient *)self prewarmManager];
  workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
  [prewarmManager prewarmRunnerWithHostIfNecessary:workflowController2];
}

- (void)pause
{
  workflowController = [(WFWorkflowRunnerClient *)self workflowController];

  if (workflowController)
  {
    workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
    [workflowController2 pauseWorkflowAndWriteStateToDisk];
  }
}

- (void)resume
{
  context = [(WFWorkflowRunnerClient *)self context];

  if (context)
  {
    workflowController = [(WFWorkflowRunnerClient *)self workflowController];

    if (!workflowController)
    {
      context2 = [(WFWorkflowRunnerClient *)self context];
      v6 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:context2];
      [(WFWorkflowRunnerClient *)self setWorkflowController:v6];
    }

    workflowController2 = [(WFWorkflowRunnerClient *)self workflowController];
    runRequest = [(WFWorkflowRunnerClient *)self runRequest];
    [workflowController2 resumeRunningWithRequest:runRequest error:0];

    [(WFWorkflowRunnerClient *)self retainSelf];
  }
}

- (WFWorkflowRunnerClient)initWithDescriptor:(id)descriptor runRequest:(id)request delegateQueue:(id)queue
{
  descriptorCopy = descriptor;
  requestCopy = request;
  queueCopy = queue;
  if (descriptorCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"request"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = WFWorkflowRunnerClient;
  v13 = [(WFWorkflowRunnerClient *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_descriptor, descriptor);
    objc_storeStrong(&v14->_runRequest, request);
    if (queueCopy)
    {
      v15 = queueCopy;
      delegateQueue = v14->_delegateQueue;
      v14->_delegateQueue = v15;
    }

    else
    {
      delegateQueue = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v17 = dispatch_queue_create("com.apple.shortcuts.WFWorkflowRunnerClient", delegateQueue);
      v18 = v14->_delegateQueue;
      v14->_delegateQueue = v17;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel_updateRunViewSource_ name:@"WFWorkflowRunViewSourceUpdatedNotification" object:0];

    v20 = v14;
  }

  return v14;
}

+ (id)underlyingErrorIfRunnerError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"WFBackgroundShortcutRunnerErrorDomain"])
  {
    userInfo = [errorCopy userInfo];
    v6 = *MEMORY[0x1E696AA08];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      userInfo2 = [errorCopy userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:v6];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = errorCopy;
LABEL_6:

  return v9;
}

@end