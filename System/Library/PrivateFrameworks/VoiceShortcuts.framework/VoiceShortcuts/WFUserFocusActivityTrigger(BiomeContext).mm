@interface WFUserFocusActivityTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFUserFocusActivityTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a5;
  eventBody = [a3 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = getWFTriggersLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        semanticModeIdentifier = [eventBody semanticModeIdentifier];
        mode = [eventBody mode];
        semanticModeIdentifier2 = [eventBody semanticModeIdentifier];
        starting = [eventBody starting];
        activityUniqueIdentifier = [self activityUniqueIdentifier];
        activitySemanticIdentifier = [self activitySemanticIdentifier];
        *buf = 136317186;
        v28 = "[WFUserFocusActivityTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        v29 = 2114;
        v30 = semanticModeIdentifier;
        v31 = 2114;
        v32 = mode;
        v33 = 2114;
        v34 = semanticModeIdentifier2;
        v35 = 1024;
        v36 = starting;
        v37 = 2114;
        v38 = activityUniqueIdentifier;
        v39 = 2114;
        v40 = activitySemanticIdentifier;
        v41 = 1024;
        onEnable = [self onEnable];
        v43 = 1024;
        onDisable = [self onDisable];
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received change for Kettle mode (%{public}@) — incoming change (uuid: %{public}@, id: %{public}@, starting: %i), trigger (uuid: %{public}@, id: %{public}@, onEnable: %i, onDisable: %i)", buf, 0x50u);
      }

      activitySemanticIdentifier2 = [self activitySemanticIdentifier];

      if (activitySemanticIdentifier2)
      {
        activitySemanticIdentifier3 = [self activitySemanticIdentifier];
        semanticModeIdentifier3 = [eventBody semanticModeIdentifier];
        v18 = [activitySemanticIdentifier3 isEqualToString:semanticModeIdentifier3];

        if ((v18 & 1) == 0)
        {
          v19 = getWFTriggersLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v28 = "[WFUserFocusActivityTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
            v20 = "%s Received Kettle mode change, but the semantic mode identifier didn't match the trigger's semantic mode identifier, not firing";
LABEL_18:
            _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else
      {
        activityUniqueIdentifier2 = [self activityUniqueIdentifier];
        mode2 = [eventBody mode];
        v23 = [activityUniqueIdentifier2 isEqualToString:mode2];

        if ((v23 & 1) == 0)
        {
          v19 = getWFTriggersLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v28 = "[WFUserFocusActivityTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
            v20 = "%s Received Kettle mode change and the trigger has no semantic mode identifier. The unique identifier didn't match the trigger's unique identifier, not firing";
            goto LABEL_18;
          }

LABEL_19:

          v7[2](v7, 0);
LABEL_22:

          goto LABEL_23;
        }
      }

      if ([eventBody starting] && (objc_msgSend(self, "onEnable") & 1) != 0)
      {
        onDisable2 = 1;
      }

      else if ([eventBody starting])
      {
        onDisable2 = 0;
      }

      else
      {
        onDisable2 = [self onDisable];
      }

      v7[2](v7, onDisable2);
      goto LABEL_22;
    }
  }

  v7[2](v7, 0);
LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  userFocus = [v4 UserFocus];
  computedMode = [userFocus ComputedMode];

  v7 = [computedMode DSLPublisherWithUseCase:@"Automation.Trigger"];
  v8 = [v7 subscribeOn:v3];

  return v8;
}

@end