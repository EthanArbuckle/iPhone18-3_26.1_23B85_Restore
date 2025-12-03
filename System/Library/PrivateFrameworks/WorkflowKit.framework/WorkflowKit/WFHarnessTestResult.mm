@interface WFHarnessTestResult
+ (id)failureWithReason:(id)reason;
+ (id)failureWithReason:(id)reason filePath:(id)path line:(int64_t)line;
+ (id)successWithOutput:(id)output;
- (WFHarnessTestResult)initWithCoder:(id)coder;
- (WFHarnessTestResult)initWithFailure:(BOOL)failure output:(id)output reason:(id)reason failureFilePath:(id)path failureLine:(int64_t)line;
- (id)description;
- (id)errorRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHarnessTestResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(WFHarnessTestResult *)self failed])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  failureReason = [(WFHarnessTestResult *)self failureReason];
  v8 = [v3 stringWithFormat:@"<%@: %p failed: %@, failureReason: %@>", v5, self, v6, failureReason];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[WFHarnessTestResult failed](self forKey:{"failed"), @"failed"}];
  output = [(WFHarnessTestResult *)self output];
  [coderCopy encodeObject:output forKey:@"output"];

  failureReason = [(WFHarnessTestResult *)self failureReason];
  [coderCopy encodeObject:failureReason forKey:@"failureReason"];

  failureFilePath = [(WFHarnessTestResult *)self failureFilePath];
  [coderCopy encodeObject:failureFilePath forKey:@"failureFilePath"];

  [coderCopy encodeInteger:-[WFHarnessTestResult failureLine](self forKey:{"failureLine"), @"failureLine"}];
}

- (WFHarnessTestResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"failed"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"output"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"failureReason"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"failureFilePath"];
  v9 = [coderCopy decodeIntegerForKey:@"failureLine"];

  v10 = [(WFHarnessTestResult *)self initWithFailure:v5 output:v6 reason:v7 failureFilePath:v8 failureLine:v9];
  return v10;
}

- (id)errorRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(WFHarnessTestResult *)self failed])
  {
    failureReason = [(WFHarnessTestResult *)self failureReason];

    v4 = MEMORY[0x1E696ABC0];
    if (failureReason)
    {
      v14[0] = self;
      v5 = *MEMORY[0x1E696A578];
      v13[0] = @"WFHarnessTestErrorResult";
      v13[1] = v5;
      failureReason2 = [(WFHarnessTestResult *)self failureReason];
      v14[1] = failureReason2;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v8 = [v4 errorWithDomain:@"WFHarnessTestErrorDomain" code:1 userInfo:v7];
    }

    else
    {
      v11 = @"WFHarnessTestErrorResult";
      selfCopy = self;
      failureReason2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&selfCopy forKeys:&v11 count:1];
      v8 = [v4 errorWithDomain:@"WFHarnessTestErrorDomain" code:0 userInfo:failureReason2];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFHarnessTestResult)initWithFailure:(BOOL)failure output:(id)output reason:(id)reason failureFilePath:(id)path failureLine:(int64_t)line
{
  outputCopy = output;
  reasonCopy = reason;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = WFHarnessTestResult;
  v16 = [(WFHarnessTestResult *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_failed = failure;
    objc_storeStrong(&v16->_output, output);
    v18 = [reasonCopy copy];
    failureReason = v17->_failureReason;
    v17->_failureReason = v18;

    v20 = [pathCopy copy];
    failureFilePath = v17->_failureFilePath;
    v17->_failureFilePath = v20;

    v17->_failureLine = line;
    v22 = v17;
  }

  return v17;
}

+ (id)failureWithReason:(id)reason filePath:(id)path line:(int64_t)line
{
  reasonCopy = reason;
  pathCopy = path;
  v11 = pathCopy;
  if (reasonCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestResult.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessTestResult.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];

LABEL_3:
  v12 = [[WFHarnessTestResult alloc] initWithFailure:1 output:0 reason:reasonCopy failureFilePath:v11 failureLine:line];

  return v12;
}

+ (id)failureWithReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestResult.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];
  }

  v6 = [[WFHarnessTestResult alloc] initWithFailure:1 output:0 reason:reasonCopy failureFilePath:0 failureLine:0];

  return v6;
}

+ (id)successWithOutput:(id)output
{
  outputCopy = output;
  v4 = [WFHarnessTestResult alloc];
  v5 = [objc_alloc(MEMORY[0x1E69E0E10]) initWithOutput:outputCopy];

  v6 = [(WFHarnessTestResult *)v4 initWithFailure:0 output:v5 reason:0 failureFilePath:0 failureLine:0];

  return v6;
}

@end