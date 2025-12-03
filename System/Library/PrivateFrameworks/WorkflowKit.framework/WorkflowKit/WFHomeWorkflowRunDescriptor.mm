@interface WFHomeWorkflowRunDescriptor
- (WFHomeWorkflowRunDescriptor)initWithCoder:(id)coder;
- (WFHomeWorkflowRunDescriptor)initWithHomeWorkflow:(id)workflow;
- (id)description;
- (id)workflowFileDataWithDatabase:(id)database error:(id *)error;
- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHomeWorkflowRunDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  homeWorkflow = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, homeWorkflow];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFHomeWorkflowRunDescriptor;
  coderCopy = coder;
  [(WFHomeWorkflowRunDescriptor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow:v7.receiver];
  data = [v5 data];
  [coderCopy encodeObject:data forKey:@"homeWorkflow"];
}

- (WFHomeWorkflowRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFHomeWorkflowRunDescriptor;
  v5 = [(WFHomeWorkflowRunDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeWorkflow"];
    v7 = [[WFHomeWorkflow alloc] initWithData:v6];
    homeWorkflow = v5->_homeWorkflow;
    v5->_homeWorkflow = v7;

    v9 = v5;
  }

  return v5;
}

- (WFHomeWorkflowRunDescriptor)initWithHomeWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v10.receiver = self;
  v10.super_class = WFHomeWorkflowRunDescriptor;
  v6 = [(WFHomeWorkflowRunDescriptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeWorkflow, workflow);
    v8 = v7;
  }

  return v7;
}

- (id)workflowFileDataWithDatabase:(id)database error:(id *)error
{
  v4 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow:database];
  data = [v4 data];

  return data;
}

- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [WFWorkflowFile alloc];
  homeWorkflow = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow];
  data = [homeWorkflow data];
  v19 = 0;
  v11 = [(WFWorkflowFile *)v8 initWithFileData:data name:0 error:&v19];
  v12 = v19;

  if (v11)
  {
    v18 = v12;
    v13 = [(WFWorkflowFile *)v11 recordRepresentationWithError:&v18];
    v14 = v18;

    if (v13)
    {
      v17 = v14;
      v15 = [[WFWorkflow alloc] initWithRecord:v13 reference:0 storageProvider:0 migrateIfNecessary:1 environment:environment error:&v17];
      v16 = v17;

      handlerCopy[2](handlerCopy, v15, v16);
      v14 = v16;
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, v14);
    }

    v12 = v14;
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v12);
  }
}

@end