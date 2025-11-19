@interface WFHarnessActionContext
- (WFHarnessActionContext)initWithIdentifier:(id)a3 indexInWorkflow:(unint64_t)a4;
@end

@implementation WFHarnessActionContext

- (WFHarnessActionContext)initWithIdentifier:(id)a3 indexInWorkflow:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFHarnessActionSelector.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v14.receiver = self;
  v14.super_class = WFHarnessActionContext;
  v8 = [(WFHarnessActionContext *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_indexInWorkflow = a4;
    v11 = v8;
  }

  return v8;
}

@end