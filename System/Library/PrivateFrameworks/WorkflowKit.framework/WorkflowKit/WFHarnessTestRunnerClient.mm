@interface WFHarnessTestRunnerClient
- (WFHarnessTestRunnerClient)initWithRunRequest:(id)a3;
- (id)description;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
@end

@implementation WFHarnessTestRunnerClient

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowRunnerClient *)self runRequest];
  v7 = [v3 stringWithFormat:@"<%@: %p, runRequest: %@>", v5, self, v6];

  return v7;
}

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 testResult];

  v11 = objc_opt_class();
  v12 = [v6 error];
  v13 = [v11 underlyingErrorIfRunnerError:v12];

  v14 = [(WFHarnessTestRunnerClient *)self testDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(WFHarnessTestRunnerClient *)self testDelegate];
    [v16 workflowRunnerClient:self didFinishRunningHarnessTestsWithResult:v10 error:v13];
  }

  else
  {
    v17 = getWFTestingLifecycleLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[WFHarnessTestRunnerClient handleWorkflowRunResult:completion:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s WFHarnessTestRunnerClient skipping callback because testDelegate does not respond to didFinishRunningHarnessTestsWithResult", &v19, 0xCu);
    }
  }

  v7[2](v7);

  v18 = *MEMORY[0x1E69E9840];
}

- (WFHarnessTestRunnerClient)initWithRunRequest:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunnerClient.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"runRequest"}];
  }

  v6 = [v5 testRunDescriptor];
  v12.receiver = self;
  v12.super_class = WFHarnessTestRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v12 initWithDescriptor:v6 runRequest:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

@end