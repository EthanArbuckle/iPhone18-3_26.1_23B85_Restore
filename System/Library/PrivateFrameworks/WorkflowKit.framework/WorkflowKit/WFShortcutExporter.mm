@interface WFShortcutExporter
- (WFShortcutExporter)initWithWorkflow:(id)a3 sharingOptions:(id)a4;
- (WFShortcutExporter)initWithWorkflowRecord:(id)a3;
@end

@implementation WFShortcutExporter

- (WFShortcutExporter)initWithWorkflowRecord:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFShortcutExporter;
  v6 = [(WFShortcutExporter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workflowRecord, a3);
    v8 = v7;
  }

  return v7;
}

- (WFShortcutExporter)initWithWorkflow:(id)a3 sharingOptions:(id)a4
{
  v5 = [a3 prepareForSharingWithOptions:a4];
  v6 = [(WFShortcutExporter *)self initWithWorkflowRecord:v5];

  return v6;
}

@end