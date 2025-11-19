@interface WFWifiTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFWifiTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventBody];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315394;
      v31 = "[WFWifiTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Received WiFi connection event %@ for trigger with setting", &v30, 0x16u);
    }

    v13 = [v11 starting];
    if (v13 != [a1 onConnect])
    {
      v14 = [v11 starting];
      if (v14 == [a1 onDisconnect])
      {
        goto LABEL_15;
      }
    }

    if ([a1 selection] == 1 && (objc_msgSend(a1, "selectedNetworks"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "SSID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "containsObject:", v16), v16, v15, (v17 & 1) == 0))
    {
LABEL_15:
      v10[2](v10, 0);
    }

    else
    {
      if ([a1 onConnect] && (objc_msgSend(a1, "runAfterConnectionInterruption") & 1) == 0)
      {
        v20 = [MEMORY[0x277D7C2F0] defaultDatabase];
        v21 = [v20 sortedRunEventsForTriggerID:v9];
        v22 = [v21 descriptors];
        v23 = [v22 firstObject];

        if (v23)
        {
          v24 = MEMORY[0x277CBEAA8];
          [v8 timestamp];
          v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
          v26 = [v23 date];
          [v25 timeIntervalSinceDate:v26];
          v28 = v27;

          v18 = v28 > 180.0;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }

      v10[2](v10, v18);
    }
  }

  else
  {

    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[WFWifiTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s No WiFi event received for trigger; not firing.", &v30, 0xCu);
    }

    v10[2](v10, 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 Wireless];
  v7 = [v6 WiFi];

  v8 = [v7 DSLPublisherWithUseCase:@"Automation.Trigger"];
  v9 = [v8 subscribeOn:v3];

  return v9;
}

@end