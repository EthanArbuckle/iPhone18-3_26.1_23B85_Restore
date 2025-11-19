@interface WFTriggerMetricsEmitter
+ (void)trackAddAutomationActionsWithWorkflow:(id)a3 workflowReference:(id)a4;
+ (void)trackAddAutomationWithWorkflowReference:(id)a3 triggerRecord:(id)a4;
+ (void)trackTriggeredAutomationWithConfiguredTrigger:(id)a3;
@end

@implementation WFTriggerMetricsEmitter

+ (void)trackTriggeredAutomationWithConfiguredTrigger:(id)a3
{
  v3 = a3;
  v7 = objc_alloc_init(WFTriggeredAutomationEvent);
  -[WFTriggeredAutomationEvent setRequiredRuntimeConfirmation:](v7, "setRequiredRuntimeConfirmation:", [v3 shouldPrompt]);
  v4 = [v3 trigger];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(WFTriggeredAutomationEvent *)v7 setTriggerType:v6];

  [(WFEvent *)v7 track];
}

+ (void)trackAddAutomationActionsWithWorkflow:(id)a3 workflowReference:(id)a4
{
  v5 = a4;
  v6 = [a3 actions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WFTriggerMetricsEmitter_trackAddAutomationActionsWithWorkflow_workflowReference___block_invoke;
  v8[3] = &unk_1E837DCF8;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __83__WFTriggerMetricsEmitter_trackAddAutomationActionsWithWorkflow_workflowReference___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_alloc_init(WFAddAutomationActionEvent);
  v6 = [*(a1 + 32) identifier];
  [(WFAddAutomationActionEvent *)v8 setShortcutIdentifier:v6];

  v7 = [v5 metricsIdentifier];

  [(WFAddAutomationActionEvent *)v8 setActionIdentifier:v7];
  [(WFAddAutomationActionEvent *)v8 setActionIndex:a3];
  [(WFEvent *)v8 track];
}

+ (void)trackAddAutomationWithWorkflowReference:(id)a3 triggerRecord:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = objc_alloc_init(WFAddAutomationEvent);
  -[WFAddAutomationEvent setActionCount:](v13, "setActionCount:", [v6 actionCount]);
  [(WFAddAutomationEvent *)v13 setSource:@"AutomationTab"];
  v7 = [v5 triggerData];
  v8 = [WFTrigger triggerWithSerializedData:v7];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(WFAddAutomationEvent *)v13 setTriggerType:v10];

  v11 = [v6 identifier];

  [(WFAddAutomationEvent *)v13 setShortcutIdentifier:v11];
  -[WFAddAutomationEvent setShowsNotification:](v13, "setShowsNotification:", [v5 shouldNotify]);
  v12 = [v5 shouldPrompt];

  [(WFAddAutomationEvent *)v13 setRequiresRuntimeConfirmation:v12];
  [(WFEvent *)v13 track];
}

@end