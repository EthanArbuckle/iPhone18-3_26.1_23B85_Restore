@interface WFWorkflowDataRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFWorkflowDataRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v7 = a5;
  v8 = [WFWorkflowFile alloc];
  workflowData = [self workflowData];
  v19 = 0;
  v10 = [(WFWorkflowFile *)v8 initWithFileData:workflowData name:0 error:&v19];
  v11 = v19;

  if (v10)
  {
    v18 = v11;
    v12 = [(WFWorkflowFile *)v10 recordRepresentationWithError:&v18];
    v13 = v18;

    if (v12)
    {
      v17 = v13;
      v14 = [[WFWorkflow alloc] initWithRecord:v12 reference:0 storageProvider:0 migrateIfNecessary:1 environment:a3 error:&v17];
      v11 = v17;

      if (v14)
      {
        v15 = v14;
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = v11;
      }

      v7[2](v7, v15, v16);
    }

    else
    {
      v7[2](v7, 0, v13);
      v11 = v13;
    }
  }

  else
  {
    v7[2](v7, 0, v11);
  }
}

@end