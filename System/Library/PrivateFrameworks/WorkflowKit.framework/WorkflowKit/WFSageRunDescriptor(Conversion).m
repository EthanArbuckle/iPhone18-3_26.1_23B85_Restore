@interface WFSageRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
@end

@implementation WFSageRunDescriptor(Conversion)

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v6 = a5;
  v7 = [WFWorkflow alloc];
  v8 = objc_opt_new();
  v9 = [(WFWorkflow *)v7 initWithRecord:v8 reference:0 storageProvider:0 migrateIfNecessary:0 environment:a3 error:0];

  v6[2](v6, v9, 0);
}

@end