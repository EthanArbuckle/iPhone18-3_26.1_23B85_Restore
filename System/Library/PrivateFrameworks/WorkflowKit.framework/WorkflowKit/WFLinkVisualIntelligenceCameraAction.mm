@interface WFLinkVisualIntelligenceCameraAction
- (BOOL)visibleForUse:(int64_t)use;
- (id)icon;
- (id)localizedNameWithContext:(id)context;
- (id)requiredResources;
- (id)staccatoNameOverride;
- (void)prepareToProcessWithCompletionHandler:(id)handler;
@end

@implementation WFLinkVisualIntelligenceCameraAction

- (BOOL)visibleForUse:(int64_t)use
{
  v13 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  isChineseRegionDevice = [currentDevice isChineseRegionDevice];

  if (isChineseRegionDevice)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[WFLinkVisualIntelligenceCameraAction visibleForUse:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Visual Intelligence Camera action is not visible due to feature flag disablement", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFLinkVisualIntelligenceCameraAction;
    result = [(WFAppIntentExecutionAction *)&v10 visibleForUse:use];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)prepareToProcessWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  runningDelegate = [(WFAction *)self runningDelegate];
  v6 = [runningDelegate currentRunningContextForAction:self];
  runSource = [v6 runSource];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  resourceManager = [(WFAction *)self resourceManager];
  v9 = [resourceManager resourceObjectsOfClass:objc_opt_class()];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) configureWithRunSource:runSource];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15.receiver = self;
  v15.super_class = WFLinkVisualIntelligenceCameraAction;
  [(WFAction *)&v15 prepareToProcessWithCompletionHandler:handlerCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)requiredResources
{
  v6.receiver = self;
  v6.super_class = WFLinkVisualIntelligenceCameraAction;
  requiredResources = [(WFAction *)&v6 requiredResources];
  v3 = [requiredResources mutableCopy];

  v4 = objc_alloc_init(_TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource);
  [v3 addObject:v4];

  return v3;
}

- (id)staccatoNameOverride
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v6.receiver = self;
  v6.super_class = WFLinkVisualIntelligenceCameraAction;
  v4 = [(WFLinkAction *)&v6 localizedNameWithContext:defaultLocalizationContext];

  return v4;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0B60]);
  v3 = MEMORY[0x1E69E0B58];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.WorkflowKit"];
  v5 = [v3 imageNamed:@"Visual Intelligence Icon" inBundle:v4];
  v6 = [v2 initWithImage:v5];

  return v6;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkVisualIntelligenceCameraAction - Action Name", @"Open Visual Intelligence");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end