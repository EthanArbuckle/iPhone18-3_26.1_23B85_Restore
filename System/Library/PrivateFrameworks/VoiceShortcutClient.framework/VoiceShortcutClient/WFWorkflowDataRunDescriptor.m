@interface WFWorkflowDataRunDescriptor
- (WFWorkflowDataRunDescriptor)initWithCoder:(id)a3;
- (WFWorkflowDataRunDescriptor)initWithWorkflowData:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowDataRunDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowDataRunDescriptor *)self workflowData];
  [v4 encodeObject:v5 forKey:@"workflowData"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowDataRunDescriptor *)self workflowData];
  v7 = [v3 stringWithFormat:@"<%@: %p, data: %lu bytes>", v5, self, objc_msgSend(v6, "length")];

  return v7;
}

- (WFWorkflowDataRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowData"];

  if (v5)
  {
    self = [(WFWorkflowDataRunDescriptor *)self initWithWorkflowData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFWorkflowDataRunDescriptor)initWithWorkflowData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"workflowData"}];
  }

  v12.receiver = self;
  v12.super_class = WFWorkflowDataRunDescriptor;
  v6 = [(WFWorkflowDataRunDescriptor *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    workflowData = v6->_workflowData;
    v6->_workflowData = v7;

    v9 = v6;
  }

  return v6;
}

@end