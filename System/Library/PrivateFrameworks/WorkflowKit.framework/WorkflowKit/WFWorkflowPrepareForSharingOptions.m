@interface WFWorkflowPrepareForSharingOptions
- (WFWorkflowPrepareForSharingOptions)init;
@end

@implementation WFWorkflowPrepareForSharingOptions

- (WFWorkflowPrepareForSharingOptions)init
{
  v6.receiver = self;
  v6.super_class = WFWorkflowPrepareForSharingOptions;
  v2 = [(WFWorkflowPrepareForSharingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WFWorkflowPrepareForSharingOptions *)v2 setClearsImportQuestionData:1];
    v4 = v3;
  }

  return v3;
}

@end