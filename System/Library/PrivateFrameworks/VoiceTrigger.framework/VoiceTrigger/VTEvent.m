@interface VTEvent
+ (id)eventFromURL:(id)a3;
+ (int64_t)eventTypeFromURL:(id)a3;
- (VTEvent)initWithEventLogURL:(id)a3;
- (id)_buildTriggerContent;
- (id)_buildTriggerDetail;
- (id)_getFloatStringFromVTEventWithKey:(id)a3 decimal:(BOOL)a4;
- (id)_packAudioContent:(id)a3 filepath:(id)a4;
- (id)_packAudioURLFromVTEventInfo:(id)a3 key:(id)a4;
- (id)_packBooleanFromVTEventInfo:(id)a3 key:(id)a4;
- (id)_packStringContent:(id)a3 value:(id)a4;
- (id)_packStringFromVTEventInfo:(id)a3 key:(id)a4;
- (id)eventTrackerDictionary;
- (id)timestampString;
- (void)_readJsonFile:(id)a3;
@end

@implementation VTEvent

- (id)_packStringFromVTEventInfo:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_voiceTriggerEventInfo;
  v9 = [(NSDictionary *)v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(NSDictionary *)v8 objectForKey:v7];
    v11 = [(VTEvent *)self _packStringContent:v6 value:v10];
  }

  else
  {
    v11 = [(VTEvent *)self _packStringContent:v6 value:&stru_28370C9A8];
  }

  return v11;
}

- (id)_packBooleanFromVTEventInfo:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_voiceTriggerEventInfo;
  v9 = [(NSDictionary *)v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(NSDictionary *)v8 objectForKey:v7];
    v11 = [v10 BOOLValue];
    v12 = @"False";
    if (v11)
    {
      v12 = @"True";
    }

    v13 = v12;

    v14 = [(VTEvent *)self _packStringContent:v6 value:v13];
  }

  else
  {
    v14 = [(VTEvent *)self _packStringContent:v6 value:&stru_28370C9A8];
  }

  return v14;
}

- (id)_getFloatStringFromVTEventWithKey:(id)a3 decimal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_voiceTriggerEventInfo;
  v8 = [(NSDictionary *)v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(NSDictionary *)v7 objectForKey:v6];
    [v9 floatValue];
    v11 = v10;

    if (v4)
    {
      v12 = @"%.2f";
    }

    else
    {
      v12 = @"%.0f";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v12, v11];
  }

  else
  {
    v13 = &stru_28370C9A8;
  }

  return v13;
}

- (id)_packAudioURLFromVTEventInfo:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_voiceTriggerEventInfo;
  v9 = [(NSDictionary *)v8 objectForKey:v7];

  if (v9)
  {
    v10 = [(NSDictionary *)v8 objectForKey:v7];
    v11 = [(VTEvent *)self _packAudioContent:v6 filepath:v10];
  }

  else
  {
    v11 = [(VTEvent *)self _packAudioContent:v6 filepath:&stru_28370C9A8];
  }

  return v11;
}

- (id)_packStringContent:(id)a3 value:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v10[1] = @"name";
  v11[0] = @"plain";
  v11[1] = a3;
  v10[2] = @"value";
  v11[2] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)_packAudioContent:(id)a3 filepath:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v10[1] = @"name";
  v11[0] = @"audio";
  v11[1] = a3;
  v10[2] = @"value";
  v11[2] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)_buildTriggerDetail
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self timestampString];
  v5 = [(VTEvent *)self _packStringContent:@"DateTime" value:v4];
  [v3 addObject:v5];

  voiceTriggerEventInfo = self->_voiceTriggerEventInfo;
  if (voiceTriggerEventInfo)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [(NSDictionary *)voiceTriggerEventInfo allKeys];
    v8 = [v7 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [(NSDictionary *)self->_voiceTriggerEventInfo objectForKey:v14];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [MEMORY[0x277CCAC80] scannerWithString:v15];
            if ([v16 scanInt:0] && objc_msgSend(v16, "isAtEnd"))
            {
              v17 = self;
              v18 = v14;
              v19 = 0;
              goto LABEL_31;
            }

            if ([v16 scanFloat:0] && objc_msgSend(v16, "isAtEnd"))
            {
              v17 = self;
              v18 = v14;
              v19 = 1;
LABEL_31:
              v13 = [(VTEvent *)v17 _getFloatStringFromVTEventWithKey:v18 decimal:v19];
              v29 = [(VTEvent *)self _packStringContent:v14 value:v13];
              [v3 addObject:v29];
            }

            else
            {
              v13 = [(VTEvent *)self _packStringFromVTEventInfo:v14 key:v14];
              [v3 addObject:v13];
            }

LABEL_8:
            goto LABEL_9;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 objCType];
            if (*v20 == 99 && !v20[1] || (v21 = [v15 objCType], *v21 == 105) && !v21[1] || (v22 = objc_msgSend(v15, "objCType"), *v22 == 115) && !v22[1] || (v23 = objc_msgSend(v15, "objCType"), *v23 == 113) && !v23[1] || (v24 = objc_msgSend(v15, "objCType"), *v24 == 113) && !v24[1])
            {
              v25 = self;
              v26 = v14;
              v27 = v14;
              v28 = @"%.0f";
            }

            else
            {
              v25 = self;
              v26 = v14;
              v27 = v14;
              v28 = @"%.2f";
            }

            v16 = [(VTEvent *)v25 _packNumberFomVTEventInfo:v26 key:v27 format:v28];
            [v3 addObject:v16];
            goto LABEL_8;
          }

LABEL_9:
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }
  }

  return v3;
}

- (id)_buildTriggerContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self _packAudioURLFromVTEventInfo:@"Audio Play" key:@"captureFilePath"];
  [v3 addObject:v4];

  v5 = [(VTEvent *)self _getFloatStringFromVTEventWithKey:@"triggerScore" decimal:1];
  v6 = [(VTEvent *)self _packStringContent:@"Trigger Score" value:v5];
  [v3 addObject:v6];

  v7 = [(VTEvent *)self _getFloatStringFromVTEventWithKey:@"effectiveThreshold" decimal:1];
  v8 = [(VTEvent *)self _packStringContent:@"Trigger Threshold" value:v7];
  [v3 addObject:v8];

  v9 = [(VTEvent *)self _getFloatStringFromVTEventWithKey:@"satScore" decimal:1];
  v10 = [(VTEvent *)self _packStringContent:@"SAT Score" value:v9];
  [v3 addObject:v10];

  v11 = [(VTEvent *)self _getFloatStringFromVTEventWithKey:@"satThreshold" decimal:1];
  v12 = [(VTEvent *)self _packStringContent:@"SAT Threshold" value:v11];
  [v3 addObject:v12];

  return v3;
}

- (id)eventTrackerDictionary
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"title";
  v3 = [(VTEvent *)self _buildTitle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"???";
  }

  v15[0] = v5;
  v14[1] = @"content";
  v6 = [(VTEvent *)self _buildContent];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"???";
  }

  v15[1] = v8;
  v14[2] = @"detail";
  v9 = [(VTEvent *)self _buildDetail];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"???";
  }

  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)timestampString
{
  v2 = [(VTEvent *)self jsonFileName];
  v3 = &stru_28370C9A8;
  v4 = [v2 stringByReplacingOccurrencesOfString:@"-almost.json" withString:&stru_28370C9A8];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"-rejected.json" withString:&stru_28370C9A8];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"-triggered.json" withString:&stru_28370C9A8];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"-prepare.json" withString:&stru_28370C9A8];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"-corrupted.json" withString:&stru_28370C9A8];

  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v9 setLocale:v10];

  [v9 setDateFormat:@"yyyyMMdd-HHmmss"];
  v11 = [v9 dateFromString:v8];
  if (v11)
  {
    [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = [v9 stringFromDate:v11];
  }

  return v3;
}

- (void)_readJsonFile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v11 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11];
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
      voiceTriggerEventInfo = self->_voiceTriggerEventInfo;
      self->_voiceTriggerEventInfo = v9;
    }

    v4 = v11;
  }
}

- (VTEvent)initWithEventLogURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VTEvent;
  v6 = [(VTEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_jsonFileUrl, a3);
    [(VTEvent *)v7 _readJsonFile:v5];
  }

  return v7;
}

+ (int64_t)eventTypeFromURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  if ([v3 hasSuffix:@"-almost.json"])
  {
    v4 = 2;
  }

  else if ([v3 hasSuffix:@"-rejected.json"])
  {
    v4 = 3;
  }

  else if ([v3 hasSuffix:@"-triggered.json"])
  {
    v4 = 1;
  }

  else if ([v3 hasSuffix:@"-prepare.json"])
  {
    v4 = 4;
  }

  else if ([v3 hasSuffix:@"-corrupted.json"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)eventFromURL:(id)a3
{
  v3 = a3;
  v4 = [VTEvent eventTypeFromURL:v3];
  if ((v4 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(*off_2784ECC18[v4 - 1]) initWithEventLogURL:v3];
  }

  return v5;
}

@end