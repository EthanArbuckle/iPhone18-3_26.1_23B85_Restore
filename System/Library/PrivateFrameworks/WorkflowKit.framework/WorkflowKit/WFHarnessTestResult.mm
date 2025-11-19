@interface WFHarnessTestResult
+ (id)failureWithReason:(id)a3;
+ (id)failureWithReason:(id)a3 filePath:(id)a4 line:(int64_t)a5;
+ (id)successWithOutput:(id)a3;
- (WFHarnessTestResult)initWithCoder:(id)a3;
- (WFHarnessTestResult)initWithFailure:(BOOL)a3 output:(id)a4 reason:(id)a5 failureFilePath:(id)a6 failureLine:(int64_t)a7;
- (id)description;
- (id)errorRepresentation;
- (void)encodeWithCoder:(id)a3;
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

  v7 = [(WFHarnessTestResult *)self failureReason];
  v8 = [v3 stringWithFormat:@"<%@: %p failed: %@, failureReason: %@>", v5, self, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:-[WFHarnessTestResult failed](self forKey:{"failed"), @"failed"}];
  v4 = [(WFHarnessTestResult *)self output];
  [v7 encodeObject:v4 forKey:@"output"];

  v5 = [(WFHarnessTestResult *)self failureReason];
  [v7 encodeObject:v5 forKey:@"failureReason"];

  v6 = [(WFHarnessTestResult *)self failureFilePath];
  [v7 encodeObject:v6 forKey:@"failureFilePath"];

  [v7 encodeInteger:-[WFHarnessTestResult failureLine](self forKey:{"failureLine"), @"failureLine"}];
}

- (WFHarnessTestResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"failed"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"output"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"failureReason"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"failureFilePath"];
  v9 = [v4 decodeIntegerForKey:@"failureLine"];

  v10 = [(WFHarnessTestResult *)self initWithFailure:v5 output:v6 reason:v7 failureFilePath:v8 failureLine:v9];
  return v10;
}

- (id)errorRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(WFHarnessTestResult *)self failed])
  {
    v3 = [(WFHarnessTestResult *)self failureReason];

    v4 = MEMORY[0x1E696ABC0];
    if (v3)
    {
      v14[0] = self;
      v5 = *MEMORY[0x1E696A578];
      v13[0] = @"WFHarnessTestErrorResult";
      v13[1] = v5;
      v6 = [(WFHarnessTestResult *)self failureReason];
      v14[1] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v8 = [v4 errorWithDomain:@"WFHarnessTestErrorDomain" code:1 userInfo:v7];
    }

    else
    {
      v11 = @"WFHarnessTestErrorResult";
      v12 = self;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v8 = [v4 errorWithDomain:@"WFHarnessTestErrorDomain" code:0 userInfo:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFHarnessTestResult)initWithFailure:(BOOL)a3 output:(id)a4 reason:(id)a5 failureFilePath:(id)a6 failureLine:(int64_t)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = WFHarnessTestResult;
  v16 = [(WFHarnessTestResult *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_failed = a3;
    objc_storeStrong(&v16->_output, a4);
    v18 = [v14 copy];
    failureReason = v17->_failureReason;
    v17->_failureReason = v18;

    v20 = [v15 copy];
    failureFilePath = v17->_failureFilePath;
    v17->_failureFilePath = v20;

    v17->_failureLine = a7;
    v22 = v17;
  }

  return v17;
}

+ (id)failureWithReason:(id)a3 filePath:(id)a4 line:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFHarnessTestResult.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"WFHarnessTestResult.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];

LABEL_3:
  v12 = [[WFHarnessTestResult alloc] initWithFailure:1 output:0 reason:v9 failureFilePath:v11 failureLine:a5];

  return v12;
}

+ (id)failureWithReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFHarnessTestResult.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];
  }

  v6 = [[WFHarnessTestResult alloc] initWithFailure:1 output:0 reason:v5 failureFilePath:0 failureLine:0];

  return v6;
}

+ (id)successWithOutput:(id)a3
{
  v3 = a3;
  v4 = [WFHarnessTestResult alloc];
  v5 = [objc_alloc(MEMORY[0x1E69E0E10]) initWithOutput:v3];

  v6 = [(WFHarnessTestResult *)v4 initWithFailure:0 output:v5 reason:0 failureFilePath:0 failureLine:0];

  return v6;
}

@end