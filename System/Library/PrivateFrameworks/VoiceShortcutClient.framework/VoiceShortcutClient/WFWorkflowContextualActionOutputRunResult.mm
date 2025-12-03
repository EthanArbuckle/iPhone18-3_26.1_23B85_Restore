@interface WFWorkflowContextualActionOutputRunResult
- (WFWorkflowContextualActionOutputRunResult)initWithCoder:(id)coder;
- (WFWorkflowContextualActionOutputRunResult)initWithOutput:(id)output files:(id)files runError:(id)error reversalState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowContextualActionOutputRunResult

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFWorkflowContextualActionOutputRunResult;
  coderCopy = coder;
  [(WFWorkflowOutputRunResult *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFWorkflowContextualActionOutputRunResult *)self files:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"files"];

  reversalState = [(WFWorkflowContextualActionOutputRunResult *)self reversalState];
  [coderCopy encodeObject:reversalState forKey:@"reversalState"];
}

- (WFWorkflowContextualActionOutputRunResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WFWorkflowContextualActionOutputRunResult;
  v5 = [(WFWorkflowOutputRunResult *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"files"];
    files = v5->_files;
    v5->_files = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reversalState"];
    reversalState = v5->_reversalState;
    v5->_reversalState = v11;

    v13 = v5;
  }

  return v5;
}

- (WFWorkflowContextualActionOutputRunResult)initWithOutput:(id)output files:(id)files runError:(id)error reversalState:(id)state
{
  filesCopy = files;
  stateCopy = state;
  v19.receiver = self;
  v19.super_class = WFWorkflowContextualActionOutputRunResult;
  v13 = [(WFWorkflowOutputRunResult *)&v19 initWithOutput:output runError:error];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_files, files);
    v15 = [stateCopy copy];
    reversalState = v14->_reversalState;
    v14->_reversalState = v15;

    v17 = v14;
  }

  return v14;
}

@end