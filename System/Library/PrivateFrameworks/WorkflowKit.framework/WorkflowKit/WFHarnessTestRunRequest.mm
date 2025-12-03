@interface WFHarnessTestRunRequest
- (WFHarnessTestRunRequest)initWithCoder:(id)coder;
- (WFHarnessTestRunRequest)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier automationType:(id)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)getInputWithCompletionHandler:(id)handler;
@end

@implementation WFHarnessTestRunRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  xcTestClass = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor xcTestClass];
  xcTestMethodName = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor xcTestMethodName];
  testIdentifier = [(WFHarnessTestRunDescriptor *)self->_testRunDescriptor testIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@, testIdentifier: %@>", v5, self, xcTestClass, xcTestMethodName, testIdentifier];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFHarnessTestRunRequest;
  coderCopy = coder;
  [(WFWorkflowRunRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFHarnessTestRunRequest *)self testRunDescriptor:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"testRunDescriptor"];
}

- (WFHarnessTestRunRequest)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testRunDescriptor"];
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
  v6 = [(WFWorkflowRunRequest *)&v11 initWithCoder:coderCopy];
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

- (void)getInputWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  testRunDescriptor = [(WFHarnessTestRunRequest *)self testRunDescriptor];
  v11 = 0;
  v6 = [testRunDescriptor loadTestCaseWithError:&v11];
  v7 = v11;

  if (v6)
  {
    input = [v6 input];
    handlerCopy[2](handlerCopy, input, 0);

    handlerCopy = input;
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

    (handlerCopy)[2](handlerCopy, 0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (WFHarnessTestRunRequest)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier automationType:(id)type
{
  lCopy = l;
  classCopy = class;
  nameCopy = name;
  identifierCopy = identifier;
  typeCopy = type;
  v17 = [(WFWorkflowRunRequest *)self initWithInput:0 presentationMode:3];
  if (v17)
  {
    v18 = [[WFHarnessTestRunDescriptor alloc] initWithTestBundleURL:lCopy xcTestClass:classCopy xcTestMethodName:nameCopy testIdentifier:identifierCopy];
    testRunDescriptor = v17->_testRunDescriptor;
    v17->_testRunDescriptor = v18;

    v20 = [typeCopy copy];
    [(WFWorkflowRunRequest *)v17 setAutomationType:v20];

    [(WFWorkflowRunRequest *)v17 setOutputBehavior:2];
    v21 = v17;
  }

  return v17;
}

@end