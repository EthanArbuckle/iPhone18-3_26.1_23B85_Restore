@interface WFHarnessTestRunnerClient
- (WFHarnessTestRunnerClient)initWithRunRequest:(id)request;
- (id)description;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
@end

@implementation WFHarnessTestRunnerClient

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  v7 = [v3 stringWithFormat:@"<%@: %p, runRequest: %@>", v5, self, runRequest];

  return v7;
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  completionCopy = completion;
  if (resultCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = resultCopy;
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
  testResult = [v9 testResult];

  v11 = objc_opt_class();
  error = [resultCopy error];
  v13 = [v11 underlyingErrorIfRunnerError:error];

  testDelegate = [(WFHarnessTestRunnerClient *)self testDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    testDelegate2 = [(WFHarnessTestRunnerClient *)self testDelegate];
    [testDelegate2 workflowRunnerClient:self didFinishRunningHarnessTestsWithResult:testResult error:v13];
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

  completionCopy[2](completionCopy);

  v18 = *MEMORY[0x1E69E9840];
}

- (WFHarnessTestRunnerClient)initWithRunRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunnerClient.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"runRequest"}];
  }

  testRunDescriptor = [requestCopy testRunDescriptor];
  v12.receiver = self;
  v12.super_class = WFHarnessTestRunnerClient;
  v7 = [(WFWorkflowRunnerClient *)&v12 initWithDescriptor:testRunDescriptor runRequest:requestCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

@end