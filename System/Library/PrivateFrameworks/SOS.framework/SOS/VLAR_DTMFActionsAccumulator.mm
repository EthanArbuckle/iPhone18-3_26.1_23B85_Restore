@interface VLAR_DTMFActionsAccumulator
- (VLAR_DTMFActionsAccumulator)init;
- (id)analyticsDataDict;
- (void)noteDTMFAction:(unint64_t)action;
@end

@implementation VLAR_DTMFActionsAccumulator

- (VLAR_DTMFActionsAccumulator)init
{
  v6.receiver = self;
  v6.super_class = VLAR_DTMFActionsAccumulator;
  v2 = [(VLAR_DTMFActionsAccumulator *)&v6 init];
  if (v2)
  {
    v3 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFAction"];
    actionsAccumulator = v2->_actionsAccumulator;
    v2->_actionsAccumulator = v3;
  }

  return v2;
}

- (void)noteDTMFAction:(unint64_t)action
{
  actionsAccumulator = self->_actionsAccumulator;
  if (action <= 299)
  {
    switch(action)
    {
      case 0uLL:
        v4 = @"None";
        goto LABEL_6;
      case 0x64uLL:
        v4 = @"StopWithConfirmation";
        goto LABEL_6;
      case 0xC8uLL:
        v4 = @"Repeat";
        goto LABEL_6;
    }

LABEL_15:
    v4 = @"Unknown";
    goto LABEL_6;
  }

  if (action > 4999)
  {
    if (action == 5000)
    {
      v4 = @"Resume";
      goto LABEL_6;
    }

    if (action == 10000)
    {
      v4 = @"Ignored";
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (action == 300)
  {
    v4 = @"StopSilent";
    goto LABEL_6;
  }

  if (action != 400)
  {
    goto LABEL_15;
  }

  v4 = @"Reminder";
LABEL_6:
  [(SOSAnalyticsEventAccumulator *)actionsAccumulator noteEvent:v4];
}

- (id)analyticsDataDict
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"AllEventsKey";
  v13[1] = @"KnownEventsKey";
  v14[0] = @"nDTMFActions_Total";
  v14[1] = @"nDTMFActions_Known";
  v13[2] = @"UnknownEventsKey";
  v14[2] = @"nDTMFActions_Unknown";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v4 = [(SOSAnalyticsEventAccumulator *)self->_actionsAccumulator analyticsDataDictForAccumulatedKeys:&unk_2875D2CB0 outputKeyPrefix:@"nDTMFAction_" summaryKeysDict:v3];
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"nDTMFActions_Known"];
  integerValue = [v6 integerValue];
  v8 = [v4 objectForKeyedSubscript:@"nDTMFAction_Ignored"];
  v9 = integerValue - [v8 integerValue];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v5 setObject:v10 forKeyedSubscript:@"nDTMFActions_Acted"];

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

@end