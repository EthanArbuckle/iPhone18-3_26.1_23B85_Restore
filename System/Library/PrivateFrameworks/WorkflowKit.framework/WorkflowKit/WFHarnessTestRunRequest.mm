@interface WFHarnessTestRunRequest
- (WFHarnessTestRunRequest)initWithCoder:(id)a3;
- (WFHarnessTestRunRequest)initWithTestBundleURL:(id)a3 xcTestClass:(id)a4 xcTestMethodName:(id)a5 testIdentifier:(id)a6 automationType:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)getInputWithCompletionHandler:(id)a3;
@end

@implementation WFHarnessTestRunRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor xcTestClass];
  v7 = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor xcTestMethodName];
  v8 = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor testIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@, testIdentifier: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFHarnessTestRunRequest;
  v4 = a3;
  [(WFWorkflowRunRequest *)&v6 encodeWithCoder:v4];
  v5 = [(WFHarnessTestRunRequest *)self testRunDescriptor:v6.receiver];
  [v4 encodeObject:v5 forKey:@"testRunDescriptor"];
}

- (WFHarnessTestRunRequest)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testRunDescriptor"];
  if (!v5)
  {
    v8 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[WFHarnessTestRunRequest initWithCoder:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Trying to deserialize a test run request, but there's no run descriptor attached to it. No idea what test case this request wants to run, failing.", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = WFHarnessTestRunRequest;
  v6 = [(WFWorkflowRunRequest *)&v11 initWithCoder:v4];
  if (v6)
  {
    v7 = v5;
    self = *(v6 + 17);
    *(v6 + 17) = v7;
LABEL_7:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)getInputWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFHarnessTestRunRequest *)self testRunDescriptor];
  v11 = 0;
  v6 = [v5 loadTestCaseWithError:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = [v6 input];
    v4[2](v4, v8, 0);

    v4 = v8;
  }

  else
  {
    v9 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFHarnessTestRunRequest getInputWithCompletionHandler:]";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Can't load harness test case when getting shortcut input: %@", buf, 0x16u);
    }

    (v4)[2](v4, 0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (WFHarnessTestRunRequest)initWithTestBundleURL:(id)a3 xcTestClass:(id)a4 xcTestMethodName:(id)a5 testIdentifier:(id)a6 automationType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(WFWorkflowRunRequest *)self initWithInput:0 presentationMode:3];
  if (v17)
  {
    v18 = [[WFHarnessTestRunDescriptor alloc] initWithTestBundleURL:v12 xcTestClass:v13 xcTestMethodName:v14 testIdentifier:v15];
    testRunDescriptor = v17->_testRunDescriptor;
    v17->_testRunDescriptor = v18;

    v20 = [v16 copy];
    [(WFWorkflowRunRequest *)v17 setAutomationType:v20];

    [(WFWorkflowRunRequest *)v17 setOutputBehavior:2];
    v21 = v17;
  }

  return v17;
}

@end