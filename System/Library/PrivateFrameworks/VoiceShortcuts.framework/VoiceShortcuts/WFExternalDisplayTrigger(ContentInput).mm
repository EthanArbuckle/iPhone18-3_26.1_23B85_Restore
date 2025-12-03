@interface WFExternalDisplayTrigger(ContentInput)
- (id)contentCollectionWithEventInfo:()ContentInput;
- (void)eventInfoForEvent:()ContentInput completion:;
@end

@implementation WFExternalDisplayTrigger(ContentInput)

- (id)contentCollectionWithEventInfo:()ContentInput
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFC390];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 objectForKeyedSubscript:@"UniqueId"];
  v7 = [v4 objectForKeyedSubscript:@"WFDeviceName"];
  v8 = [v4 objectForKeyedSubscript:@"ProductName"];

  v9 = [v5 initWithDisplayUUID:v6 deviceName:v7 name:v8];
  v10 = [MEMORY[0x277CFC398] itemWithObject:v9];
  v11 = MEMORY[0x277CFC2E0];
  v16[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v11 collectionWithItems:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)eventInfoForEvent:()ContentInput completion:
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  eventBody = [a3 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceName = [eventBody deviceName];
      productName = [eventBody productName];
      uniqueId = [eventBody uniqueId];
      v10 = uniqueId;
      v11 = 0;
      if (deviceName && productName && uniqueId)
      {
        v18[0] = @"WFDeviceName";
        v18[1] = @"ProductName";
        v19[0] = deviceName;
        v19[1] = productName;
        v18[2] = @"UniqueId";
        v19[2] = uniqueId;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
        v11 = v12;
        v13 = eventBody;
LABEL_16:
        v5[2](v5, v12);

        goto LABEL_17;
      }

      v13 = eventBody;
LABEL_13:
      v16 = getWFTriggersLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v21 = "[WFExternalDisplayTrigger(ContentInput) eventInfoForEvent:completion:]";
        v22 = 2112;
        v23 = eventBody;
        v24 = 2112;
        v25 = deviceName;
        v26 = 2112;
        v27 = productName;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to create event info for display event due to nil property. Event:<%@>, deviceName: %@, productName: %@, uniqueId: %@", buf, 0x34u);
      }

      v12 = 0;
      goto LABEL_16;
    }

    v14 = eventBody;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v14;

      v10 = 0;
      productName = 0;
      deviceName = 0;
      v13 = 0;
      goto LABEL_13;
    }
  }

  v15 = getWFTriggersLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFExternalDisplayTrigger(ContentInput) eventInfoForEvent:completion:]";
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not create display event — no event info output", buf, 0xCu);
  }

  v5[2](v5, 0);
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

@end