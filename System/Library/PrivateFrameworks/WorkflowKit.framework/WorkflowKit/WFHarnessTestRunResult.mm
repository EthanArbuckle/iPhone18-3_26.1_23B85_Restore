@interface WFHarnessTestRunResult
- (WFHarnessTestRunResult)initWithCoder:(id)coder;
- (WFHarnessTestRunResult)initWithTestResult:(id)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHarnessTestRunResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFHarnessTestRunResult;
  v4 = [(WFWorkflowRunResult *)&v8 description];
  testResult = [(WFHarnessTestRunResult *)self testResult];
  v6 = [v3 stringWithFormat:@"<%@, testResult: %@>", v4, testResult];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFHarnessTestRunResult;
  coderCopy = coder;
  [(WFWorkflowRunResult *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFHarnessTestRunResult *)self testResult:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"testResult"];
}

- (WFHarnessTestRunResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFHarnessTestRunResult;
  v5 = [(WFWorkflowRunResult *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testResult"];
    testResult = v5->_testResult;
    v5->_testResult = v6;

    v8 = v5;
  }

  return v5;
}

- (WFHarnessTestRunResult)initWithTestResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunResult.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"testResult"}];
  }

  v12.receiver = self;
  v12.super_class = WFHarnessTestRunResult;
  v7 = [(WFWorkflowRunResult *)&v12 initWithError:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_testResult, result);
    v9 = v8;
  }

  return v8;
}

@end