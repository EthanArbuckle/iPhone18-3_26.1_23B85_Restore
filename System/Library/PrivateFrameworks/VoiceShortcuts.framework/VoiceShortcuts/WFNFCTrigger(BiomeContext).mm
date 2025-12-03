@interface WFNFCTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFNFCTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a5;
  eventBody = [a3 eventBody];
  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[WFNFCTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v20 = 2112;
      v21 = eventBody;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received NFC connection event %@ for trigger with setting", &v18, 0x16u);
    }

    tagID = [eventBody tagID];
    tagIdentifier = [self tagIdentifier];
    v12 = tagID;
    v13 = tagIdentifier;
    v14 = v13;
    if (v12 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (v12 && v13)
      {
        v15 = [v12 isEqualToString:v13];
      }
    }

    v7[2](v7, v15);
  }

  else
  {

    v16 = getWFTriggersLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[WFNFCTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s No NFC event received for trigger; not firing.", &v18, 0xCu);
    }

    v7[2](v7, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  device = [v4 Device];
  wireless = [device Wireless];
  nFCTag = [wireless NFCTag];

  dSLPublisher = [nFCTag DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v3];

  return v9;
}

@end