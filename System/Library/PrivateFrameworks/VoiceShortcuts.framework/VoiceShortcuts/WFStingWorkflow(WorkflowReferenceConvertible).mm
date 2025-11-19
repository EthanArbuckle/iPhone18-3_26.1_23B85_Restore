@interface WFStingWorkflow(WorkflowReferenceConvertible)
+ (void)getObjectsFromReferences:()WorkflowReferenceConvertible databaseProvider:completion:;
@end

@implementation WFStingWorkflow(WorkflowReferenceConvertible)

+ (void)getObjectsFromReferences:()WorkflowReferenceConvertible databaseProvider:completion:
{
  v6 = a5;
  v7 = [a3 if_map:&__block_literal_global_207];
  v6[2](v6, v7, 0);
}

@end