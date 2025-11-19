@interface WFContextualActionRunDescriptor
- (WFContextualActionRunDescriptor)initWithAction:(id)a3 context:(id)a4;
- (WFContextualActionRunDescriptor)initWithCoder:(id)a3;
- (id)kind;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualActionRunDescriptor

- (id)kind
{
  v3 = [(WFContextualActionRunDescriptor *)self action];
  v4 = [v3 workflowRunKind];

  if (v4)
  {
    v5 = [(WFContextualActionRunDescriptor *)self action];
    v6 = [v5 workflowRunKind];
  }

  else
  {
    v6 = @"ContextualAction";
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualActionRunDescriptor *)self action];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(WFContextualActionRunDescriptor *)self context];
  [v4 encodeObject:v6 forKey:@"context"];
}

- (WFContextualActionRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];

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
    v8 = 0;
  }

  else
  {
    self = [(WFContextualActionRunDescriptor *)self initWithAction:v5 context:v6];
    v8 = self;
  }

  return v8;
}

- (WFContextualActionRunDescriptor)initWithAction:(id)a3 context:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v15.receiver = self;
  v15.super_class = WFContextualActionRunDescriptor;
  v10 = [(WFContextualActionRunDescriptor *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_action, a3);
    objc_storeStrong(&v11->_context, a4);
    v12 = v11;
  }

  return v11;
}

@end