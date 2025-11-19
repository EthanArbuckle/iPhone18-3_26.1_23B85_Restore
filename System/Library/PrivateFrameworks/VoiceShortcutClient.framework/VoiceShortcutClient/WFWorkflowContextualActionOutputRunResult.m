@interface WFWorkflowContextualActionOutputRunResult
- (WFWorkflowContextualActionOutputRunResult)initWithCoder:(id)a3;
- (WFWorkflowContextualActionOutputRunResult)initWithOutput:(id)a3 files:(id)a4 runError:(id)a5 reversalState:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowContextualActionOutputRunResult

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFWorkflowContextualActionOutputRunResult;
  v4 = a3;
  [(WFWorkflowOutputRunResult *)&v7 encodeWithCoder:v4];
  v5 = [(WFWorkflowContextualActionOutputRunResult *)self files:v7.receiver];
  [v4 encodeObject:v5 forKey:@"files"];

  v6 = [(WFWorkflowContextualActionOutputRunResult *)self reversalState];
  [v4 encodeObject:v6 forKey:@"reversalState"];
}

- (WFWorkflowContextualActionOutputRunResult)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFWorkflowContextualActionOutputRunResult;
  v5 = [(WFWorkflowOutputRunResult *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"files"];
    files = v5->_files;
    v5->_files = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reversalState"];
    reversalState = v5->_reversalState;
    v5->_reversalState = v11;

    v13 = v5;
  }

  return v5;
}

- (WFWorkflowContextualActionOutputRunResult)initWithOutput:(id)a3 files:(id)a4 runError:(id)a5 reversalState:(id)a6
{
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = WFWorkflowContextualActionOutputRunResult;
  v13 = [(WFWorkflowOutputRunResult *)&v19 initWithOutput:a3 runError:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_files, a4);
    v15 = [v12 copy];
    reversalState = v14->_reversalState;
    v14->_reversalState = v15;

    v17 = v14;
  }

  return v14;
}

@end