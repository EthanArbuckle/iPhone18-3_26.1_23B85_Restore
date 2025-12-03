@interface WFTriggerMetricsEmitter
+ (void)trackAddAutomationActionsWithWorkflow:(id)workflow workflowReference:(id)reference;
+ (void)trackAddAutomationWithWorkflowReference:(id)reference triggerRecord:(id)record;
+ (void)trackTriggeredAutomationWithConfiguredTrigger:(id)trigger;
@end

@implementation WFTriggerMetricsEmitter

+ (void)trackTriggeredAutomationWithConfiguredTrigger:(id)trigger
{
  triggerCopy = trigger;
  v7 = objc_alloc_init(WFTriggeredAutomationEvent);
  -[WFTriggeredAutomationEvent setRequiredRuntimeConfirmation:](v7, "setRequiredRuntimeConfirmation:", [triggerCopy shouldPrompt]);
  trigger = [triggerCopy trigger];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(WFTriggeredAutomationEvent *)v7 setTriggerType:v6];

  [(WFEvent *)v7 track];
}

+ (void)trackAddAutomationActionsWithWorkflow:(id)workflow workflowReference:(id)reference
{
  referenceCopy = reference;
  actions = [workflow actions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WFTriggerMetricsEmitter_trackAddAutomationActionsWithWorkflow_workflowReference___block_invoke;
  v8[3] = &unk_1E837DCF8;
  v9 = referenceCopy;
  v7 = referenceCopy;
  [actions enumerateObjectsUsingBlock:v8];
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

+ (void)trackAddAutomationWithWorkflowReference:(id)reference triggerRecord:(id)record
{
  recordCopy = record;
  referenceCopy = reference;
  v13 = objc_alloc_init(WFAddAutomationEvent);
  -[WFAddAutomationEvent setActionCount:](v13, "setActionCount:", [referenceCopy actionCount]);
  [(WFAddAutomationEvent *)v13 setSource:@"AutomationTab"];
  triggerData = [recordCopy triggerData];
  v8 = [WFTrigger triggerWithSerializedData:triggerData];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(WFAddAutomationEvent *)v13 setTriggerType:v10];

  identifier = [referenceCopy identifier];

  [(WFAddAutomationEvent *)v13 setShortcutIdentifier:identifier];
  -[WFAddAutomationEvent setShowsNotification:](v13, "setShowsNotification:", [recordCopy shouldNotify]);
  shouldPrompt = [recordCopy shouldPrompt];

  [(WFAddAutomationEvent *)v13 setRequiresRuntimeConfirmation:shouldPrompt];
  [(WFEvent *)v13 track];
}

@end