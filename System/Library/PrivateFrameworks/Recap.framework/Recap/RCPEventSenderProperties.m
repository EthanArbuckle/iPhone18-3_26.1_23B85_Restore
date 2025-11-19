@interface RCPEventSenderProperties
+ (BOOL)_isMouseSender:(id)a3;
+ (id)_cachedPropertiesOrCacheIfNeeded:(id)a3 senderID:(unint64_t)a4;
+ (id)_senderWithProperties:(id)a3 senderID:(unint64_t)a4;
+ (id)crownSender;
+ (id)gamepadSender;
+ (id)globalPositionSender;
+ (id)keyboardSender;
+ (id)keyboardSenderForDisplayUUID:(id)a3;
+ (id)mouseSender;
+ (id)naturalInputCollectionSender;
+ (id)pencilDigitizerSender;
+ (id)phoneButtonSender;
+ (id)senderFromIOHIDService:(__IOHIDServiceClient *)a3;
+ (id)senderWithProperties:(id)a3 senderID:(unint64_t)a4;
+ (id)supplyMissingStandardProperties:(id)a3 senderID:(unint64_t)a4;
+ (id)touchScreenDigitizerSender;
+ (id)touchScreenDigitizerSenderForDisplayUUID:(id)a3;
+ (id)trackpadSender;
+ (id)tvRemoteSender;
- (RCPEventSenderProperties)initWithCoder:(id)a3;
- (RCPEventSenderProperties)senderPropertiesWithDisplayUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCPEventSenderProperties

+ (id)touchScreenDigitizerSender
{
  if (touchScreenDigitizerSender_onceToken != -1)
  {
    +[RCPEventSenderProperties touchScreenDigitizerSender];
  }

  v3 = touchScreenDigitizerSender_sender;

  return v3;
}

uint64_t __54__RCPEventSenderProperties_touchScreenDigitizerSender__block_invoke()
{
  touchScreenDigitizerSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426B50];

  return MEMORY[0x2821F96F8]();
}

- (RCPEventSenderProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  v6 = [v4 decodeInt64ForKey:@"senderID"];

  v7 = [objc_opt_class() senderWithProperties:v5 senderID:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  properties = self->_properties;
  v5 = a3;
  [v5 encodeObject:properties forKey:@"properties"];
  [v5 encodeInt64:self->_senderID forKey:@"senderID"];
}

+ (id)_cachedPropertiesOrCacheIfNeeded:(id)a3 senderID:(unint64_t)a4
{
  v5 = [a3 copy];
  if (_cachedPropertiesOrCacheIfNeeded_senderID__onceToken != -1)
  {
    +[RCPEventSenderProperties _cachedPropertiesOrCacheIfNeeded:senderID:];
  }

  v6 = [_cachedPropertiesOrCacheIfNeeded_senderID__cache objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [RCPEventSenderProperties _senderWithProperties:v5 senderID:a4];
    [_cachedPropertiesOrCacheIfNeeded_senderID__cache setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

uint64_t __70__RCPEventSenderProperties__cachedPropertiesOrCacheIfNeeded_senderID___block_invoke()
{
  _cachedPropertiesOrCacheIfNeeded_senderID__cache = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)supplyMissingStandardProperties:(id)a3 senderID:(unint64_t)a4
{
  v50[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (supplyMissingStandardProperties_senderID__onceToken != -1)
  {
    +[RCPEventSenderProperties supplyMissingStandardProperties:senderID:];
  }

  v6 = [supplyMissingStandardProperties_senderID__defaultProperties mutableCopy];
  [v6 addEntriesFromDictionary:v5];
  v7 = [v6 objectForKeyedSubscript:@"PrimaryUsagePage"];

  if (!v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"page"];
    if (v8)
    {
      [v6 setObject:v8 forKeyedSubscript:@"PrimaryUsagePage"];
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"PrimaryUsage"];

  if (!v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"usage"];
    if (v10)
    {
      [v6 setObject:v10 forKeyedSubscript:@"PrimaryUsage"];
    }
  }

  v11 = [v6 objectForKeyedSubscript:@"DeviceUsagePairs"];

  if (!v11)
  {
    v12 = [v6 objectForKeyedSubscript:@"usagePairs"];
    if (v12)
    {
      v37 = a4;
      v38 = v5;
      v13 = [MEMORY[0x277CBEB18] array];
      v14 = [v6 objectForKeyedSubscript:@"PrimaryUsagePage"];
      v36 = v6;
      [v6 objectForKeyedSubscript:@"PrimaryUsage"];
      v49[0] = @"DeviceUsagePage";
      v33 = v49[1] = @"DeviceUsage";
      v34 = v14;
      v50[0] = v14;
      v50[1] = v33;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      [v13 addObject:v15];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = v12;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v39 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"page"];
            v23 = [v21 objectForKeyedSubscript:@"usage"];
            v46[0] = @"DeviceUsagePage";
            v46[1] = @"DeviceUsage";
            v47[0] = v22;
            v47[1] = v23;
            v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
            [v13 addObject:v24];
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v18);
      }

      v6 = v36;
      [v36 setObject:v13 forKeyedSubscript:@"DeviceUsagePairs"];
      a4 = v37;
      v5 = v38;
      v25 = v34;
      v12 = v35;
      v26 = v33;
    }

    else
    {
      v13 = [v6 objectForKeyedSubscript:@"PrimaryUsagePage"];
      v27 = [v6 objectForKeyedSubscript:@"PrimaryUsage"];
      v25 = v27;
      if (!v13 || !v27)
      {
        goto LABEL_25;
      }

      v43[0] = @"DeviceUsagePage";
      v43[1] = @"DeviceUsage";
      v44[0] = v13;
      v44[1] = v27;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v45 = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v6 setObject:v28 forKeyedSubscript:@"DeviceUsagePairs"];
    }

LABEL_25:
  }

  v29 = [v6 objectForKeyedSubscript:@"LocationID"];

  if (!v29)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"recap-bus-%d", supplyMissingStandardProperties_senderID__deviceCount];
    [v6 setObject:v30 forKeyedSubscript:@"LocationID"];

    ++supplyMissingStandardProperties_senderID__deviceCount;
  }

  if (a4)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    [v6 setObject:v31 forKeyedSubscript:@"recapSenderID"];
  }

  return v6;
}

void __69__RCPEventSenderProperties_supplyMissingStandardProperties_senderID___block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"Transport";
  v2[1] = @"Authenticated";
  v3[0] = @"Recap";
  v3[1] = MEMORY[0x277CBEC38];
  v2[2] = @"VendorID";
  v2[3] = @"ProductID";
  v3[2] = &unk_287426778;
  v3[3] = &unk_287426778;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = supplyMissingStandardProperties_senderID__defaultProperties;
  supplyMissingStandardProperties_senderID__defaultProperties = v0;
}

+ (id)senderFromIOHIDService:(__IOHIDServiceClient *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = IOHIDServiceClientGetRegistryID(a3);
  v5 = [v4 unsignedLongLongValue];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  if (senderFromIOHIDService__onceToken != -1)
  {
    +[RCPEventSenderProperties senderFromIOHIDService:];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = senderFromIOHIDService__persistentPropertyKeys;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = IOHIDServiceClientCopyProperty(a3, v12);
        if (v13)
        {
          v14 = v13;
          [v6 setObject:v13 forKey:v12];
          CFRelease(v14);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [a1 senderWithProperties:v6 senderID:v5];

  return v15;
}

void __51__RCPEventSenderProperties_senderFromIOHIDService___block_invoke()
{
  v0 = senderFromIOHIDService__persistentPropertyKeys;
  senderFromIOHIDService__persistentPropertyKeys = &unk_287426B08;
}

+ (BOOL)_isMouseSender:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [a3 objectForKey:@"DeviceUsagePairs"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"DeviceUsagePage", v13}];
        v10 = [v8 objectForKeyedSubscript:@"DeviceUsage"];
        if ([v9 intValue] == 1 && objc_msgSend(v10, "intValue") == 2)
        {

          v11 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)_senderWithProperties:(id)a3 senderID:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(RCPEventSenderProperties);
  v8 = [v6 copy];
  properties = v7->_properties;
  v7->_properties = v8;

  v7->_senderID = a4;
  LOBYTE(a4) = [a1 _isMouseSender:v6];

  v7->_sendsMousePointerEvents = a4;

  return v7;
}

+ (id)senderWithProperties:(id)a3 senderID:(unint64_t)a4
{
  v6 = a3;
  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_117];
  v7 = [a1 supplyMissingStandardProperties:v6 senderID:a4];

  v8 = [a1 _cachedPropertiesOrCacheIfNeeded:v7 senderID:a4];

  return v8;
}

+ (id)touchScreenDigitizerSenderForDisplayUUID:(id)a3
{
  v4 = a3;
  if (touchScreenDigitizerSenderForDisplayUUID__onceToken != -1)
  {
    +[RCPEventSenderProperties touchScreenDigitizerSenderForDisplayUUID:];
  }

  v5 = [touchScreenDigitizerSenderForDisplayUUID__touchScreenDigitizerSenders objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [a1 touchScreenDigitizerSender];
    v7 = [v6 properties];
    v8 = [v7 mutableCopy];

    [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Built-In"];
    [v8 setObject:v4 forKeyedSubscript:@"displayUUID"];
    v5 = [RCPEventSenderProperties senderWithProperties:v8];
    [touchScreenDigitizerSenderForDisplayUUID__touchScreenDigitizerSenders setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

uint64_t __69__RCPEventSenderProperties_touchScreenDigitizerSenderForDisplayUUID___block_invoke()
{
  touchScreenDigitizerSenderForDisplayUUID__touchScreenDigitizerSenders = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)pencilDigitizerSender
{
  if (pencilDigitizerSender_onceToken != -1)
  {
    +[RCPEventSenderProperties pencilDigitizerSender];
  }

  v3 = pencilDigitizerSender_sender;

  return v3;
}

uint64_t __49__RCPEventSenderProperties_pencilDigitizerSender__block_invoke()
{
  pencilDigitizerSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426B78];

  return MEMORY[0x2821F96F8]();
}

+ (id)mouseSender
{
  if (mouseSender_onceToken != -1)
  {
    +[RCPEventSenderProperties mouseSender];
  }

  v3 = mouseSender_sender;

  return v3;
}

uint64_t __39__RCPEventSenderProperties_mouseSender__block_invoke()
{
  mouseSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426BF0];

  return MEMORY[0x2821F96F8]();
}

+ (id)trackpadSender
{
  if (trackpadSender_onceToken != -1)
  {
    +[RCPEventSenderProperties trackpadSender];
  }

  v3 = trackpadSender_sender;

  return v3;
}

uint64_t __42__RCPEventSenderProperties_trackpadSender__block_invoke()
{
  trackpadSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426CB8];

  return MEMORY[0x2821F96F8]();
}

+ (id)gamepadSender
{
  if (gamepadSender_onceToken != -1)
  {
    +[RCPEventSenderProperties gamepadSender];
  }

  v3 = gamepadSender_sender;

  return v3;
}

uint64_t __41__RCPEventSenderProperties_gamepadSender__block_invoke()
{
  gamepadSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426CE0];

  return MEMORY[0x2821F96F8]();
}

+ (id)tvRemoteSender
{
  if (tvRemoteSender_onceToken != -1)
  {
    +[RCPEventSenderProperties tvRemoteSender];
  }

  v3 = tvRemoteSender_sender;

  return v3;
}

void __42__RCPEventSenderProperties_tvRemoteSender__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"PrimaryUsagePage";
  v3[1] = @"PrimaryUsage";
  v4[0] = &unk_287426790;
  v4[1] = &unk_2874268E0;
  v3[2] = @"Authenticated";
  v3[3] = @"Built-In";
  v4[2] = MEMORY[0x277CBEC38];
  v4[3] = MEMORY[0x277CBEC28];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [RCPEventSenderProperties senderWithProperties:v0];
  v2 = tvRemoteSender_sender;
  tvRemoteSender_sender = v1;
}

+ (id)keyboardSender
{
  if (keyboardSender_onceToken != -1)
  {
    +[RCPEventSenderProperties keyboardSender];
  }

  v3 = keyboardSender_sender;

  return v3;
}

void __42__RCPEventSenderProperties_keyboardSender__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"PrimaryUsagePage";
  v3[1] = @"PrimaryUsage";
  v4[0] = &unk_287426808;
  v4[1] = &unk_2874268F8;
  v3[2] = @"Authenticated";
  v4[2] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = [RCPEventSenderProperties senderWithProperties:v0];
  v2 = keyboardSender_sender;
  keyboardSender_sender = v1;
}

+ (id)keyboardSenderForDisplayUUID:(id)a3
{
  v4 = a3;
  if (keyboardSenderForDisplayUUID__onceToken != -1)
  {
    +[RCPEventSenderProperties keyboardSenderForDisplayUUID:];
  }

  v5 = [keyboardSenderForDisplayUUID__keyboardSenders objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [a1 keyboardSender];
    v7 = [v6 properties];
    v8 = [v7 mutableCopy];

    [v8 setObject:v4 forKeyedSubscript:@"displayUUID"];
    v5 = [RCPEventSenderProperties senderWithProperties:v8];
    [keyboardSenderForDisplayUUID__keyboardSenders setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

uint64_t __57__RCPEventSenderProperties_keyboardSenderForDisplayUUID___block_invoke()
{
  keyboardSenderForDisplayUUID__keyboardSenders = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)naturalInputCollectionSender
{
  if (naturalInputCollectionSender_onceToken != -1)
  {
    +[RCPEventSenderProperties naturalInputCollectionSender];
  }

  v3 = naturalInputCollectionSender_sender;

  return v3;
}

uint64_t __56__RCPEventSenderProperties_naturalInputCollectionSender__block_invoke()
{
  naturalInputCollectionSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426D08];

  return MEMORY[0x2821F96F8]();
}

+ (id)globalPositionSender
{
  if (globalPositionSender_onceToken != -1)
  {
    +[RCPEventSenderProperties globalPositionSender];
  }

  v3 = globalPositionSender_sender;

  return v3;
}

uint64_t __48__RCPEventSenderProperties_globalPositionSender__block_invoke()
{
  globalPositionSender_sender = [RCPEventSenderProperties senderWithProperties:&unk_287426D30];

  return MEMORY[0x2821F96F8]();
}

+ (id)crownSender
{
  if (crownSender_onceToken != -1)
  {
    +[RCPEventSenderProperties crownSender];
  }

  v3 = crownSender_sender;

  return v3;
}

void __39__RCPEventSenderProperties_crownSender__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"PrimaryUsagePage";
  v3[1] = @"PrimaryUsage";
  v4[0] = &unk_287426970;
  v4[1] = &unk_287426808;
  v3[2] = @"Authenticated";
  v3[3] = @"Built-In";
  v4[2] = MEMORY[0x277CBEC38];
  v4[3] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [RCPEventSenderProperties senderWithProperties:v0];
  v2 = crownSender_sender;
  crownSender_sender = v1;
}

+ (id)phoneButtonSender
{
  if (phoneButtonSender_onceToken != -1)
  {
    +[RCPEventSenderProperties phoneButtonSender];
  }

  v3 = phoneButtonSender_sender;

  return v3;
}

void __45__RCPEventSenderProperties_phoneButtonSender__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"PrimaryUsagePage";
  v3[1] = @"PrimaryUsage";
  v4[0] = &unk_287426988;
  v4[1] = &unk_287426808;
  v3[2] = @"Authenticated";
  v3[3] = @"Built-In";
  v4[2] = MEMORY[0x277CBEC38];
  v4[3] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [RCPEventSenderProperties senderWithProperties:v0];
  v2 = phoneButtonSender_sender;
  phoneButtonSender_sender = v1;
}

- (RCPEventSenderProperties)senderPropertiesWithDisplayUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCPEventSenderProperties *)self properties];
  v6 = [v5 mutableCopy];

  [v6 setObject:v4 forKeyedSubscript:@"displayUUID"];
  v7 = [RCPEventSenderProperties senderWithProperties:v6];

  return v7;
}

@end