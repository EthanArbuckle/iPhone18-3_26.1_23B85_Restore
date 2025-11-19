@interface WFUserFocusActivityTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFUserFocusActivityTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 eventBody];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = getWFTriggersLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 semanticModeIdentifier];
        v11 = [v8 mode];
        v12 = [v8 semanticModeIdentifier];
        v26 = [v8 starting];
        v13 = [a1 activityUniqueIdentifier];
        v14 = [a1 activitySemanticIdentifier];
        *buf = 136317186;
        v28 = "[WFUserFocusActivityTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        v29 = 2114;
        v30 = v10;
        v31 = 2114;
        v32 = v11;
        v33 = 2114;
        v34 = v12;
        v35 = 1024;
        v36 = v26;
        v37 = 2114;
        v38 = v13;
        v39 = 2114;
        v40 = v14;
        v41 = 1024;
        v42 = [a1 onEnable];
        v43 = 1024;
        v44 = [a1 onDisable];
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received change for Kettle mode (%{public}@) — incoming change (uuid: %{public}@, id: %{public}@, starting: %i), trigger (uuid: %{public}@, id: %{public}@, onEnable: %i, onDisable: %i)", buf, 0x50u);
      }

      v15 = [a1 activitySemanticIdentifier];

      if (v15)
      {
        v16 = [a1 activitySemanticIdentifier];
        v17 = [v8 semanticModeIdentifier];
        v18 = [v16 isEqualToString:v17];

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
        v21 = [a1 activityUniqueIdentifier];
        v22 = [v8 mode];
        v23 = [v21 isEqualToString:v22];

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

      if ([v8 starting] && (objc_msgSend(a1, "onEnable") & 1) != 0)
      {
        v24 = 1;
      }

      else if ([v8 starting])
      {
        v24 = 0;
      }

      else
      {
        v24 = [a1 onDisable];
      }

      v7[2](v7, v24);
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
  v5 = [v4 UserFocus];
  v6 = [v5 ComputedMode];

  v7 = [v6 DSLPublisherWithUseCase:@"Automation.Trigger"];
  v8 = [v7 subscribeOn:v3];

  return v8;
}

@end