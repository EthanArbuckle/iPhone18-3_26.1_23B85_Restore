@interface WFWorkflowDataRunDescriptor
- (WFWorkflowDataRunDescriptor)initWithCoder:(id)coder;
- (WFWorkflowDataRunDescriptor)initWithWorkflowData:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowDataRunDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  workflowData = [(WFWorkflowDataRunDescriptor *)self workflowData];
  [coderCopy encodeObject:workflowData forKey:@"workflowData"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  workflowData = [(WFWorkflowDataRunDescriptor *)self workflowData];
  v7 = [v3 stringWithFormat:@"<%@: %p, data: %lu bytes>", v5, self, objc_msgSend(workflowData, "length")];

  return v7;
}

- (WFWorkflowDataRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowData"];

  if (v5)
  {
    self = [(WFWorkflowDataRunDescriptor *)self initWithWorkflowData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFWorkflowDataRunDescriptor)initWithWorkflowData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"workflowData"}];
  }

  v12.receiver = self;
  v12.super_class = WFWorkflowDataRunDescriptor;
  v6 = [(WFWorkflowDataRunDescriptor *)&v12 init];
  if (v6)
  {
    v7 = [dataCopy copy];
    workflowData = v6->_workflowData;
    v6->_workflowData = v7;

    v9 = v6;
  }

  return v6;
}

@end