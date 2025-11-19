@interface WFWorkflowRunnerClient
+ (id)underlyingErrorIfRunnerError:(id)a3;
- (BOOL)isRunning;
- (WFRunnerPrewarmManager)prewarmManager;
- (WFWorkflowRunnerClient)initWithDescriptor:(id)a3 runRequest:(id)a4 delegateQueue:(id)a5;
- (WFWorkflowRunnerClientDelegate)delegate;
- (id)createRunningContextFromRequestIfNecessary:(id)a3 descriptor:(id)a4;
- (id)createWorkflowControllerWithContext:(id)a3;
- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5;
- (void)autoreleaseSelf;
- (void)beginObservingProgressForWorkflowWithRunningContext:(id)a3;
- (void)dispatchWorkflowResultHandlingWithResult:(id)a3;
- (void)handleWorkflowDidStart:(id)a3;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6;
- (void)outOfProcessWorkflowController:(id)a3 didRequestUpdatedRunViewSource:(id)a4 completionHandler:(id)a5;
- (void)pause;
- (void)prewarmRunner;
- (void)resume;
- (void)setRunViewSource:(id)a3;
- (void)start;
- (void)stop;
- (void)stopObservingRunProgress;
- (void)updateRunViewSource:(id)a3;
@end

@implementation WFWorkflowRunnerClient

- (void)start
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WFWorkflowRunnerClient *)self descriptor];
    v5 = [(WFWorkflowRunnerClient *)self runRequest];
    *buf = 136315906;
    v30 = "[WFWorkflowRunnerClient start]";
    v31 = 2112;
    v32 = self;
    v33 = 2112;
    v34 = v4;
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting shortcut run from client: %@, descriptor: %@, request: %@", buf, 0x2Au);
  }

  if ([(WFWorkflowRunnerClient *)self isRunning])
  {
    [(WFWorkflowRunnerClient *)self stop];
  }

  v6 = [(WFWorkflowRunnerClient *)self runRequest];
  v7 = [(WFWorkflowRunnerClient *)self descriptor];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __31__WFWorkflowRunnerClient_start__block_invoke;
  v28[3] = &unk_1E7AFFB50;
  v28[4] = self;
  v8 = [(WFWorkflowRunnerClient *)self runWorkflowWithRequest:v6 descriptor:v7 completion:v28];
  [(WFWorkflowRunnerClient *)self setContext:v8];

  v9 = [(WFWorkflowRunnerClient *)self descriptor];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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
  v13 = [(WFWorkflowRunnerClient *)self context];
  v14 = [v13 identifier];
  v15 = [v14 hash];

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v16 = [v11 identifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = @"none";
    }

    v19 = [v11 name];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1F28FBBB8;
    }

    v22 = [(WFWorkflowRunnerClient *)self runRequest];
    v23 = [v22 runSource];
    v24 = v23;
    v25 = @"unknown";
    *buf = 138412802;
    v30 = v18;
    if (v23)
    {
      v25 = v23;
    }

    v31 = 2112;
    v32 = v21;
    v33 = 2112;
    v34 = v25;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RunWorkflow", "WorkflowID=%{signpost.description:attribute}@,WorkflowName=%{signpost.description:attribute}@,RunSource=%{signpost.description:attribute}@", buf, 0x20u);
  }

  v26 = [(WFWorkflowRunnerClient *)self context];
  [(WFWorkflowRunnerClient *)self beginObservingProgressForWorkflowWithRunningContext:v26];

  [(WFWorkflowRunnerClient *)self retainSelf];
  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunning
{
  v2 = [(WFWorkflowRunnerClient *)self progressSubscriber];
  v3 = v2 != 0;

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
  v3 = [(WFWorkflowRunnerClient *)self workflowController];

  if (v3)
  {
    v4 = [(WFWorkflowRunnerClient *)self workflowController];
    [v4 stop];

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

- (void)outOfProcessWorkflowController:(id)a3 didRequestUpdatedRunViewSource:(id)a4 completionHandler:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = [(WFWorkflowRunnerClient *)self runViewSource];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    v10 = [(WFWorkflowRunnerClient *)self runViewSource];
    [v10 refresh];

    v11 = [(WFWorkflowRunnerClient *)self runViewSource];
    v12[2](v12, v11, 0);
  }

  else
  {
    v12[2](v12, 0, 0);
  }
}

- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6
{
  [(WFWorkflowRunnerClient *)self dispatchWorkflowResultHandlingWithResult:a4];

  [(WFWorkflowRunnerClient *)self autoreleaseSelf];
}

- (void)stopObservingRunProgress
{
  v3 = [(WFWorkflowRunnerClient *)self context];
  v4 = [(WFWorkflowRunnerClient *)self progressSubscriber];
  [v3 removeProgressSubscriber:v4];

  [(WFWorkflowRunnerClient *)self setProgressSubscriber:0];
}

- (void)beginObservingProgressForWorkflowWithRunningContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WFWorkflowRunnerClient_beginObservingProgressForWorkflowWithRunningContext___block_invoke;
  aBlock[3] = &unk_1E7AFFC18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [v5 addProgressSubscriberUsingPublishingHandler:v6];
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

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 error];
  v10 = [v8 underlyingErrorIfRunnerError:v9];

  if (_os_feature_enabled_impl())
  {
    v11 = [(WFWorkflowRunnerClient *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = v6;
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v13 hasOutputs])
        {
          v14 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [(WFWorkflowRunnerClient *)self delegate];
            *buf = 136315394;
            v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
            v49 = 2112;
            v50 = v15;
            _os_log_impl(&dword_1B1DE3000, v14, OS_LOG_TYPE_DEBUG, "%s Preparing result with outputs for client (%@)", buf, 0x16u);
          }

          v16 = dispatch_get_global_queue(25, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke;
          block[3] = &unk_1E7B024B0;
          v13 = v13;
          v43 = v13;
          v44 = self;
          v45 = v10;
          v46 = v7;
          dispatch_async(v16, block);

          v17 = v43;
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
        v35 = [(WFWorkflowRunnerClient *)self delegate];
        *buf = 136315394;
        v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
        v49 = 2112;
        v50 = v35;
        _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEBUG, "%s Preparing result without output for client (%@)", buf, 0x16u);
      }

      v17 = [(WFWorkflowRunnerClient *)self delegate];
      [v17 workflowRunnerClient:self didFinishRunningWorkflowWithAllResults:0 error:v10 cancelled:{objc_msgSend(v13, "isCancelled")}];
      goto LABEL_30;
    }
  }

  v18 = [(WFWorkflowRunnerClient *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if ((v19 & 1) == 0)
  {
    v25 = [(WFWorkflowRunnerClient *)self delegate];
    v26 = objc_opt_respondsToSelector();

    v27 = getWFVoiceShortcutClientLogObject();
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = [(WFWorkflowRunnerClient *)self delegate];
        *buf = 136315394;
        v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
        v49 = 2112;
        v50 = v29;
      }

      v28 = [(WFWorkflowRunnerClient *)self delegate];
      -[NSObject workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled:](v28, "workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled:", self, v10, [v6 isCancelled]);
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = [(WFWorkflowRunnerClient *)self delegate];
      *buf = 136315394;
      v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
      v49 = 2112;
      v50 = v33;
      _os_log_impl(&dword_1B1DE3000, v28, OS_LOG_TYPE_ERROR, "%s Workflow finished running, but client (%@) does not respond to -workflowRunnerClient:didFinishRunningWorkflowWithError:cancelled: or workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v20 = v6;
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v30 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = [(WFWorkflowRunnerClient *)self delegate];
      *buf = 136315394;
      v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
      v49 = 2112;
      v50 = v31;
      _os_log_impl(&dword_1B1DE3000, v30, OS_LOG_TYPE_DEBUG, "%s Delivering workflow run result to client: %@", buf, 0x16u);
    }

    v32 = [(WFWorkflowRunnerClient *)self delegate];
    [v32 workflowRunnerClient:self didFinishRunningWorkflowWithOutput:0 error:v10 cancelled:{objc_msgSend(v20, "isCancelled")}];

LABEL_25:
    v7[2](v7);
    goto LABEL_31;
  }

  v21 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [(WFWorkflowRunnerClient *)self delegate];
    *buf = 136315394;
    v48 = "[WFWorkflowRunnerClient handleWorkflowRunResult:completion:]";
    v49 = 2112;
    v50 = v22;
    _os_log_impl(&dword_1B1DE3000, v21, OS_LOG_TYPE_DEBUG, "%s Preparing output for client (%@)", buf, 0x16u);
  }

  v23 = dispatch_get_global_queue(25, 0);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61__WFWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke_98;
  v37[3] = &unk_1E7B024B0;
  v38 = v20;
  v39 = self;
  v40 = v10;
  v41 = v7;
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

- (void)handleWorkflowDidStart:(id)a3
{
  v7 = a3;
  v4 = [(WFWorkflowRunnerClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWorkflowRunnerClient *)self delegate];
    [v6 workflowRunnerClient:self didStartRunningWorkflowWithProgress:v7];
  }
}

- (void)dispatchWorkflowResultHandlingWithResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(WFWorkflowRunnerClient *)self delegate];
    *buf = 136315394;
    v17 = "[WFWorkflowRunnerClient dispatchWorkflowResultHandlingWithResult:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEBUG, "%s Workflow finished running, preparing to deliver result to client: %@", buf, 0x16u);
  }

  v7 = getWFVoiceShortcutClientLogObject();
  v8 = [(WFWorkflowRunnerClient *)self context];
  v9 = [v8 identifier];
  v10 = [v9 hash];

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v7, OS_SIGNPOST_INTERVAL_END, v10, "RunWorkflow", "", buf, 2u);
  }

  v11 = [(WFWorkflowRunnerClient *)self delegateQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__WFWorkflowRunnerClient_dispatchWorkflowResultHandlingWithResult___block_invoke;
  v14[3] = &unk_1E7B02180;
  v14[4] = self;
  v15 = v4;
  v12 = v4;
  dispatch_async(v11, v14);

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

- (id)runWorkflowWithRequest:(id)a3 descriptor:(id)a4 completion:(id)a5
{
  v6 = [(WFWorkflowRunnerClient *)self createRunningContextFromRequestIfNecessary:a3 descriptor:a4, a5];
  v7 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v6];
  v8 = [(WFWorkflowRunnerClient *)self prewarmManager];

  if (v8)
  {
    v9 = [(WFWorkflowRunnerClient *)self prewarmManager];
    [v9 reset];
  }

  v10 = [(WFWorkflowRunnerClient *)self descriptor];
  v11 = [(WFWorkflowRunnerClient *)self runRequest];
  v17 = 0;
  v12 = [v7 runWorkflowWithDescriptor:v10 request:v11 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = v6;
  }

  else
  {
    v15 = [[WFWorkflowRunResult alloc] initWithError:v13];
    [(WFWorkflowRunnerClient *)self dispatchWorkflowResultHandlingWithResult:v15];

    v14 = 0;
  }

  return v14;
}

- (id)createRunningContextFromRequestIfNecessary:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflowRunnerClient *)self context];

  if (v8)
  {
    v9 = [(WFWorkflowRunnerClient *)self context];
  }

  else
  {
    v10 = [WFWorkflowRunningContext alloc];
    v11 = [(WFWorkflowRunnerClient *)self descriptor];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
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

    v14 = [v13 identifier];

    v9 = [(WFWorkflowRunningContext *)v10 initWithWorkflowIdentifier:v14];
    -[WFWorkflowRunningContext setAllowsDialogNotifications:](v9, "setAllowsDialogNotifications:", [v6 allowsDialogNotifications]);
    v15 = [v6 runSource];
    [(WFWorkflowRunningContext *)v9 setRunSource:v15];

    v16 = [v7 kind];
    [(WFWorkflowRunningContext *)v9 setRunKind:v16];

    -[WFWorkflowRunningContext setOutputBehavior:](v9, "setOutputBehavior:", [v6 outputBehavior]);
    v17 = [v6 runViewSource];
    [(WFWorkflowRunningContext *)v9 setRunViewSource:v17];

    -[WFWorkflowRunningContext setStepwise:](v9, "setStepwise:", [v6 isStepwise]);
    -[WFWorkflowRunningContext setShouldForwardDialogRequests:](v9, "setShouldForwardDialogRequests:", [v6 handlesDialogRequests]);
    -[WFWorkflowRunningContext setShouldForwardSiriActionRequests:](v9, "setShouldForwardSiriActionRequests:", [v6 handlesSiriActionRequests]);
    -[WFWorkflowRunningContext setRunningInPersistentMode:](v9, "setRunningInPersistentMode:", [v6 presentationMode] == 1);
    v18 = v6;
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

    v21 = [v20 locale];

    [(WFWorkflowRunningContext *)v9 setLocale:v21];
    v22 = [MEMORY[0x1E696AAE8] mainBundle];
    v23 = [v22 bundleIdentifier];
    [(WFWorkflowRunningContext *)v9 setOriginatingBundleIdentifier:v23];

    [(WFWorkflowRunnerClient *)self setContext:v9];
  }

  return v9;
}

- (id)createWorkflowControllerWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowRunnerClient *)self runRequest];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 3;
  }

  else
  {
    v7 = [v5 runSource];
    IsSpotlight = WFRunSourceIsSpotlight(v7);

    if (IsSpotlight)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = [v5 presentationMode];
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1B1F36828[v9];
  }

  v11 = [WFOutOfProcessWorkflowController alloc];
  v12 = [(WFWorkflowRunnerClient *)self prewarmManager];
  v13 = [v12 connection];
  v14 = [(WFOutOfProcessWorkflowController *)v11 initWithEnvironment:v6 runningContext:v4 presentationMode:v10 existingConnection:v13];

  [(WFOutOfProcessWorkflowController *)v14 setDelegate:self];
  [(WFWorkflowRunnerClient *)self setWorkflowController:v14];

  return v14;
}

- (void)setRunViewSource:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowRunnerClient *)self runRequest];
  [v5 setRunViewSource:v4];

  runViewSource = self->_runViewSource;
  self->_runViewSource = v4;
}

- (void)updateRunViewSource:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowRunnerClient *)self workflowController];
  v6 = [v4 object];
  [v5 updateRunViewSource:v6];

  v7 = [v4 object];

  [(WFWorkflowRunnerClient *)self setRunViewSource:v7];
}

- (void)prewarmRunner
{
  v3 = [(WFWorkflowRunnerClient *)self context];

  if (!v3)
  {
    v4 = [(WFWorkflowRunnerClient *)self runRequest];
    v5 = [(WFWorkflowRunnerClient *)self descriptor];
    v6 = [(WFWorkflowRunnerClient *)self createRunningContextFromRequestIfNecessary:v4 descriptor:v5];
  }

  v7 = [(WFWorkflowRunnerClient *)self workflowController];

  if (!v7)
  {
    v8 = [(WFWorkflowRunnerClient *)self context];
    v9 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v8];
  }

  v11 = [(WFWorkflowRunnerClient *)self prewarmManager];
  v10 = [(WFWorkflowRunnerClient *)self workflowController];
  [v11 prewarmRunnerWithHostIfNecessary:v10];
}

- (void)pause
{
  v3 = [(WFWorkflowRunnerClient *)self workflowController];

  if (v3)
  {
    v4 = [(WFWorkflowRunnerClient *)self workflowController];
    [v4 pauseWorkflowAndWriteStateToDisk];
  }
}

- (void)resume
{
  v3 = [(WFWorkflowRunnerClient *)self context];

  if (v3)
  {
    v4 = [(WFWorkflowRunnerClient *)self workflowController];

    if (!v4)
    {
      v5 = [(WFWorkflowRunnerClient *)self context];
      v6 = [(WFWorkflowRunnerClient *)self createWorkflowControllerWithContext:v5];
      [(WFWorkflowRunnerClient *)self setWorkflowController:v6];
    }

    v7 = [(WFWorkflowRunnerClient *)self workflowController];
    v8 = [(WFWorkflowRunnerClient *)self runRequest];
    [v7 resumeRunningWithRequest:v8 error:0];

    [(WFWorkflowRunnerClient *)self retainSelf];
  }
}

- (WFWorkflowRunnerClient)initWithDescriptor:(id)a3 runRequest:(id)a4 delegateQueue:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunnerClient.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"request"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = WFWorkflowRunnerClient;
  v13 = [(WFWorkflowRunnerClient *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_descriptor, a3);
    objc_storeStrong(&v14->_runRequest, a4);
    if (v12)
    {
      v15 = v12;
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

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v14 selector:sel_updateRunViewSource_ name:@"WFWorkflowRunViewSourceUpdatedNotification" object:0];

    v20 = v14;
  }

  return v14;
}

+ (id)underlyingErrorIfRunnerError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"WFBackgroundShortcutRunnerErrorDomain"])
  {
    v5 = [v3 userInfo];
    v6 = *MEMORY[0x1E696AA08];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKeyedSubscript:v6];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = v3;
LABEL_6:

  return v9;
}

@end