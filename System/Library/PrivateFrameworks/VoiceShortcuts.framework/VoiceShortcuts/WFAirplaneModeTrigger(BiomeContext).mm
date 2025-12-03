@interface WFAirplaneModeTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFAirplaneModeTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  eventBody = [a3 eventBody];
  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[WFAirplaneModeTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v16 = 2112;
      v17 = eventBody;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received Airplane Mode connection event %@ for trigger with setting", &v14, 0x16u);
    }

    v10 = objc_opt_new();
    if ([self onEnable])
    {
      [v10 addObject:MEMORY[0x277CBEC38]];
    }

    if ([self onDisable])
    {
      [v10 addObject:MEMORY[0x277CBEC28]];
    }

    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventBody, "starting")}];
    v7[2](v7, [v10 containsObject:v11]);
  }

  else
  {

    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[WFAirplaneModeTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s No Airplane Mode event received for trigger; not firing.", &v14, 0xCu);
    }

    v7[2](v7, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  device = [v4 Device];
  wireless = [device Wireless];
  airplaneMode = [wireless AirplaneMode];

  dSLPublisher = [airplaneMode DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v3];

  return v9;
}

@end