@interface WFHomeWorkflowRunDescriptor
- (WFHomeWorkflowRunDescriptor)initWithCoder:(id)a3;
- (WFHomeWorkflowRunDescriptor)initWithHomeWorkflow:(id)a3;
- (id)description;
- (id)workflowFileDataWithDatabase:(id)a3 error:(id *)a4;
- (void)createWorkflowWithEnvironment:(int64_t)a3 database:(id)a4 completionHandler:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHomeWorkflowRunDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFHomeWorkflowRunDescriptor;
  v4 = a3;
  [(WFHomeWorkflowRunDescriptor *)&v7 encodeWithCoder:v4];
  v5 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow:v7.receiver];
  v6 = [v5 data];
  [v4 encodeObject:v6 forKey:@"homeWorkflow"];
}

- (WFHomeWorkflowRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFHomeWorkflowRunDescriptor;
  v5 = [(WFHomeWorkflowRunDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeWorkflow"];
    v7 = [[WFHomeWorkflow alloc] initWithData:v6];
    homeWorkflow = v5->_homeWorkflow;
    v5->_homeWorkflow = v7;

    v9 = v5;
  }

  return v5;
}

- (WFHomeWorkflowRunDescriptor)initWithHomeWorkflow:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFHomeWorkflowRunDescriptor;
  v6 = [(WFHomeWorkflowRunDescriptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeWorkflow, a3);
    v8 = v7;
  }

  return v7;
}

- (id)workflowFileDataWithDatabase:(id)a3 error:(id *)a4
{
  v4 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow:a3];
  v5 = [v4 data];

  return v5;
}

- (void)createWorkflowWithEnvironment:(int64_t)a3 database:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [WFWorkflowFile alloc];
  v9 = [(WFHomeWorkflowRunDescriptor *)self homeWorkflow];
  v10 = [v9 data];
  v19 = 0;
  v11 = [(WFWorkflowFile *)v8 initWithFileData:v10 name:0 error:&v19];
  v12 = v19;

  if (v11)
  {
    v18 = v12;
    v13 = [(WFWorkflowFile *)v11 recordRepresentationWithError:&v18];
    v14 = v18;

    if (v13)
    {
      v17 = v14;
      v15 = [[WFWorkflow alloc] initWithRecord:v13 reference:0 storageProvider:0 migrateIfNecessary:1 environment:a3 error:&v17];
      v16 = v17;

      v7[2](v7, v15, v16);
      v14 = v16;
    }

    else
    {
      v7[2](v7, 0, v14);
    }

    v12 = v14;
  }

  else
  {
    v7[2](v7, 0, v12);
  }
}

@end