@interface WFShortcutExporter
- (WFShortcutExporter)initWithWorkflow:(id)workflow sharingOptions:(id)options;
- (WFShortcutExporter)initWithWorkflowRecord:(id)record;
@end

@implementation WFShortcutExporter

- (WFShortcutExporter)initWithWorkflowRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = WFShortcutExporter;
  v6 = [(WFShortcutExporter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowRecord, record);
    v8 = v7;
  }

  return v7;
}

- (WFShortcutExporter)initWithWorkflow:(id)workflow sharingOptions:(id)options
{
  v5 = [workflow prepareForSharingWithOptions:options];
  v6 = [(WFShortcutExporter *)self initWithWorkflowRecord:v5];

  return v6;
}

@end