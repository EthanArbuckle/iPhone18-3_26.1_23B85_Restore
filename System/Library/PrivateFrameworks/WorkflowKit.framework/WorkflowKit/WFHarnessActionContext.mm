@interface WFHarnessActionContext
- (WFHarnessActionContext)initWithIdentifier:(id)identifier indexInWorkflow:(unint64_t)workflow;
@end

@implementation WFHarnessActionContext

- (WFHarnessActionContext)initWithIdentifier:(id)identifier indexInWorkflow:(unint64_t)workflow
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v14.receiver = self;
  v14.super_class = WFHarnessActionContext;
  v8 = [(WFHarnessActionContext *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_indexInWorkflow = workflow;
    v11 = v8;
  }

  return v8;
}

@end