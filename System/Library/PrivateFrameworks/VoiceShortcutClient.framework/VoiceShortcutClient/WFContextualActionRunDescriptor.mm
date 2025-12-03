@interface WFContextualActionRunDescriptor
- (WFContextualActionRunDescriptor)initWithAction:(id)action context:(id)context;
- (WFContextualActionRunDescriptor)initWithCoder:(id)coder;
- (id)kind;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionRunDescriptor

- (id)kind
{
  action = [(WFContextualActionRunDescriptor *)self action];
  workflowRunKind = [action workflowRunKind];

  if (workflowRunKind)
  {
    action2 = [(WFContextualActionRunDescriptor *)self action];
    workflowRunKind2 = [action2 workflowRunKind];
  }

  else
  {
    workflowRunKind2 = @"ContextualAction";
  }

  return workflowRunKind2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(WFContextualActionRunDescriptor *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  context = [(WFContextualActionRunDescriptor *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (WFContextualActionRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFContextualActionRunDescriptor *)self initWithAction:v5 context:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFContextualActionRunDescriptor)initWithAction:(id)action context:(id)context
{
  actionCopy = action;
  contextCopy = context;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v15.receiver = self;
  v15.super_class = WFContextualActionRunDescriptor;
  v10 = [(WFContextualActionRunDescriptor *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_action, action);
    objc_storeStrong(&v11->_context, context);
    v12 = v11;
  }

  return v11;
}

@end