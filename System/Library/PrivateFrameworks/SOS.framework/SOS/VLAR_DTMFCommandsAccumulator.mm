@interface VLAR_DTMFCommandsAccumulator
- (VLAR_DTMFCommandsAccumulator)init;
- (id)_stringFromDTMFCommand:(unint64_t)a3 withPlaybackState:(unint64_t)a4;
- (id)analyticsDataDict;
- (id)reportedCommands;
- (void)noteDidReceiveDTMFCommand:(unint64_t)a3 withPlaybackState:(unint64_t)a4;
@end

@implementation VLAR_DTMFCommandsAccumulator

- (VLAR_DTMFCommandsAccumulator)init
{
  v8.receiver = self;
  v8.super_class = VLAR_DTMFCommandsAccumulator;
  v2 = [(VLAR_DTMFCommandsAccumulator *)&v8 init];
  if (v2)
  {
    v3 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFCommand"];
    commandsAccumulator = v2->_commandsAccumulator;
    v2->_commandsAccumulator = v3;

    v5 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFCommand-PlaybackState"];
    commandsWithPlaybackStateAccumulator = v2->_commandsWithPlaybackStateAccumulator;
    v2->_commandsWithPlaybackStateAccumulator = v5;
  }

  return v2;
}

- (id)_stringFromDTMFCommand:(unint64_t)a3 withPlaybackState:(unint64_t)a4
{
  if (a3 <= 199)
  {
    if (!a3)
    {
      v4 = @"None";
      goto LABEL_13;
    }

    if (a3 == 100)
    {
      v4 = @"Stop";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xC8uLL:
        v4 = @"Repeat";
        goto LABEL_13;
      case 0x1388uLL:
        v4 = @"Resume";
        goto LABEL_13;
      case 0x2710uLL:
        v4 = @"Unhandled";
        goto LABEL_13;
    }
  }

  v4 = @"Unknown";
LABEL_13:
  v5 = @"NotStarted";
  v6 = @"Responding";
  v7 = @"Repeating";
  if (a4 != 400)
  {
    v7 = @"NotStarted";
  }

  if (a4 != 300)
  {
    v6 = v7;
  }

  if (a4 == 200)
  {
    v5 = @"Stopped";
  }

  if (a4 == 100)
  {
    v5 = @"InitialLoop";
  }

  if (a4 > 299)
  {
    v5 = v6;
  }

  return [(__CFString *)v4 stringByAppendingFormat:@"-%@", v5];
}

- (void)noteDidReceiveDTMFCommand:(unint64_t)a3 withPlaybackState:(unint64_t)a4
{
  commandsAccumulator = self->_commandsAccumulator;
  if (a3 <= 199)
  {
    if (!a3)
    {
      v8 = @"None";
      goto LABEL_13;
    }

    if (a3 == 100)
    {
      v8 = @"Stop";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xC8uLL:
        v8 = @"Repeat";
        goto LABEL_13;
      case 0x1388uLL:
        v8 = @"Resume";
        goto LABEL_13;
      case 0x2710uLL:
        v8 = @"Unhandled";
        goto LABEL_13;
    }
  }

  v8 = @"Unknown";
LABEL_13:
  [(SOSAnalyticsEventAccumulator *)commandsAccumulator noteEvent:v8];
  commandsWithPlaybackStateAccumulator = self->_commandsWithPlaybackStateAccumulator;
  v10 = [(VLAR_DTMFCommandsAccumulator *)self _stringFromDTMFCommand:a3 withPlaybackState:a4];
  [(SOSAnalyticsEventAccumulator *)commandsWithPlaybackStateAccumulator noteEvent:v10];
}

- (id)reportedCommands
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.demo.allowResume" defaultValue:0])
  {
    v2 = [&unk_2875D2C80 arrayByAddingObject:&unk_2875D2B00];
  }

  else
  {
    v2 = &unk_2875D2C80;
  }

  return v2;
}

- (id)analyticsDataDict
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(VLAR_DTMFCommandsAccumulator *)self reportedCommands];
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_2875D2C98, "count") * objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v29 + 1) + 8 * i) unsignedIntegerValue];
        v9 = v8;
        if (v8 <= 199)
        {
          v10 = @"None";
          if (!v8)
          {
            goto LABEL_17;
          }

          if (v8 == 100)
          {
            v10 = @"Stop";
            goto LABEL_17;
          }
        }

        else
        {
          switch(v8)
          {
            case 200:
              v10 = @"Repeat";
              goto LABEL_17;
            case 5000:
              v10 = @"Resume";
              goto LABEL_17;
            case 10000:
              v10 = @"Unhandled";
              goto LABEL_17;
          }
        }

        v10 = @"Unknown";
LABEL_17:
        [v24 addObject:v10];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [&unk_2875D2C98 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(&unk_2875D2C98);
              }

              v15 = -[VLAR_DTMFCommandsAccumulator _stringFromDTMFCommand:withPlaybackState:](self, "_stringFromDTMFCommand:withPlaybackState:", v9, [*(*(&v25 + 1) + 8 * j) unsignedIntegerValue]);
              [v4 addObject:v15];
            }

            v12 = [&unk_2875D2C98 countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v6);
  }

  v33[0] = @"AllEventsKey";
  v33[1] = @"KnownEventsKey";
  v34[0] = @"nDTMFCommands_Total";
  v34[1] = @"nDTMFCommands_Known";
  v33[2] = @"UnknownEventsKey";
  v34[2] = @"nDTMFCommands_Unknown";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v17 = [(SOSAnalyticsEventAccumulator *)self->_commandsAccumulator analyticsDataDictForAccumulatedKeys:v24 outputKeyPrefix:@"nDTMFCommand_" summaryKeysDict:0];
  v18 = [(SOSAnalyticsEventAccumulator *)self->_commandsWithPlaybackStateAccumulator analyticsDataDictForAccumulatedKeys:v4 outputKeyPrefix:@"nDTMFCommand_" summaryKeysDict:v16];
  v19 = [v17 mutableCopy];
  [v19 addEntriesFromDictionary:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end