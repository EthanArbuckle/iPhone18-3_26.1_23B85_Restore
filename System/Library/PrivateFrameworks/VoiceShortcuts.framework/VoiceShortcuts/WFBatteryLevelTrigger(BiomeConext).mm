@interface WFBatteryLevelTrigger(BiomeConext)
- (id)publisherWithScheduler:()BiomeConext;
- (void)shouldFireInResponseToEvent:()BiomeConext triggerIdentifier:completion:;
@end

@implementation WFBatteryLevelTrigger(BiomeConext)

- (void)shouldFireInResponseToEvent:()BiomeConext triggerIdentifier:completion:
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v35 = a4;
  v9 = a5;
  eventBody = [v8 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = eventBody;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__659;
  v41 = __Block_byref_object_dispose__660;
  v42 = 0;
  eventBody2 = BiomeLibrary();
  device = [eventBody2 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];
  v17 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:2 reversed:0];
  v18 = [batteryLevel publisherWithUseCase:@"SHORTCUTS_AUTOMATIONS" options:v17];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __95__WFBatteryLevelTrigger_BiomeConext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke_2;
  v36[3] = &unk_2788FE568;
  v36[4] = &v37;
  v19 = [v18 sinkWithCompletion:&__block_literal_global_218 receiveInput:v36];

  selection = [self selection];
  if (!selection)
  {
    [v12 batteryPercentage];
    v32 = v31 == [self level];
LABEL_17:
    v9[2](v9, v32);
    goto LABEL_24;
  }

  if (selection == 1)
  {
    [v12 batteryPercentage];
    v27 = v26;
    level = [self level];
    if (v27 <= level)
    {
      v30 = 0;
    }

    else
    {
      eventBody2 = [v38[5] eventBody];
      [eventBody2 batteryPercentage];
      v30 = v29 == [self level];
    }

    v9[2](v9, v30);
    if (v27 > level)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (selection != 2)
  {
    v33 = getWFTriggersLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v44 = "[WFBatteryLevelTrigger(BiomeConext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_FAULT, "%s Invalid case hit for WFBatteryLevelTrigger", buf, 0xCu);
    }

    v32 = 0;
    goto LABEL_17;
  }

  [v12 batteryPercentage];
  v22 = v21;
  level2 = [self level];
  if (v22 >= level2)
  {
    v25 = 0;
  }

  else
  {
    eventBody2 = [v38[5] eventBody];
    [eventBody2 batteryPercentage];
    v25 = v24 == [self level];
  }

  v9[2](v9, v25);
  if (v22 < level2)
  {
LABEL_23:
  }

LABEL_24:
  _Block_object_dispose(&v37, 8);

  v34 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeConext
{
  v3 = a3;
  v4 = BiomeLibrary();
  device = [v4 Device];
  power = [device Power];
  batteryLevel = [power BatteryLevel];

  dSLPublisher = [batteryLevel DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v3];

  return v9;
}

@end